/**
 * Copyright 2010-2019 interactive instruments GmbH
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package de.interactive_instruments.etf.bsxm;

import org.basex.query.value.node.ANode;
import org.basex.util.Token;
import org.basex.util.hash.TokenIntMap;
import org.deegree.cs.CRSCodeType;
import org.deegree.cs.coordinatesystems.ICRS;
import org.deegree.cs.persistence.CRSManager;
import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import de.interactive_instruments.SUtils;

/**
 * Command to determine the SRS
 *
 * @author Jon Herrmann ( herrmann aT interactive-instruments doT de )
 */
final public class SrsLookup {
    // Byte comparison
    private static final byte[] srsNameB = "srsName".getBytes();
    private static final byte[] boundedByB = "boundedBy".getBytes();
    private static final byte[] envelopeB = "Envelope".getBytes();
    private final String standardSRS;
    private final ICRS standardDeegreeSRS;

    SrsLookup(final String standardSRS) {
        if (SUtils.isNullOrEmpty(standardSRS)) {
            this.standardSRS = null;
            this.standardDeegreeSRS = null;
        } else {
            this.standardSRS = standardSRS;
            this.standardDeegreeSRS = CRSManager.get("default").getCRSByCode(CRSCodeType.valueOf(standardSRS));
        }
    }

    @Contract(pure = true)
    String getStandardSRS() {
        return standardSRS;
    }

    @Nullable
    public ICRS getSrs(final ANode geometryNode) {
        if (standardDeegreeSRS != null) {
            return standardDeegreeSRS;
        } else {
            final String defaultSrsName = determineSrsName(geometryNode);
            if (defaultSrsName != null) {
                return CRSManager.getCRSRef(defaultSrsName);
            } else {
                return null;
            }
        }
    }

    @Nullable
    String determineSrsName(@NotNull final ANode geometryNode) {
        final byte[] srsDirect = geometryNode.attribute(srsNameB);
        if (srsDirect != null) {
            return Token.string(srsDirect);
        } else if (this.standardSRS != null) {
            return this.standardSRS;
        } else {
            // Check in the index if it contains a srs attribute.
            if (geometryNode.data() != null) {
                // query the index (side effect: a non-existing index will be created)
                final int index = geometryNode.data().attrNames.index(srsNameB);
                final TokenIntMap values = geometryNode.data().attrNames.stats(index).values;
                if (values == null || values.size() == 0) {
                    // we will never find one
                    return null;
                } else if (values.size() == 1) {
                    // the index contains exactly one value, which can be used
                    return Token.string(values.key(1));
                }
            }
            // Traverse the ancestor nodes. The following time-consuming steps should be avoided
            // by setting the default srs.
            for (final ANode ancestor : geometryNode.ancestor()) {
                final byte[] srs = ancestor.attribute(srsNameB);
                if (srs != null) {
                    return Token.string(srs);
                }
            }
            for (final ANode ancestor : geometryNode.ancestor()) {
                for (final ANode ancestorChild : ancestor.children()) {
                    if (Token.eq(boundedByB, Token.local(ancestorChild.name()))) {
                        for (final ANode boundedByChild : ancestorChild.children()) {
                            if (Token.eq(envelopeB, Token.local(boundedByChild.name()))) {
                                final byte[] srs = boundedByChild.attribute(srsNameB);
                                if (srs != null) {
                                    return Token.string(srs);
                                }
                            }
                        }
                    }
                }
            }
            return null;
        }
    }
}
