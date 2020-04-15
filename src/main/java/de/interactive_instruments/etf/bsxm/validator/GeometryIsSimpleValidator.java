/**
 * Copyright 2010-2020 interactive instruments GmbH
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
package de.interactive_instruments.etf.bsxm.validator;

import com.vividsolutions.jts.geom.Coordinate;
import com.vividsolutions.jts.geom.Geometry;
import com.vividsolutions.jts.operation.IsSimpleOp;

/**
 *
 * @author Johannes Echterhoff (echterhoff at interactive-instruments dot de)
 */
public class GeometryIsSimpleValidator implements Validator {

    @Override
    public int getId() {
        return 3;
    }

    @Override
    public void validate(final ElementContext elementContext, final ValidationResult result) {
        final Geometry jtsGeom = elementContext.getJtsGeometry(result);
        if (jtsGeom == null) {
            result.failSilently();
            return;
        }
        final IsSimpleOp op = new IsSimpleOp(jtsGeom);
        final boolean valid = op.isSimple();
        if (!valid) {
            final Coordinate nonSimpleLocation = op.getNonSimpleLocation();
            if (nonSimpleLocation != null) {
                result.addError(elementContext,
                        Message.translate("gmlgeox.validation.geometry.not.simple.intersection"), null,
                        nonSimpleLocation);
            } else {
                result.addError(elementContext,
                        Message.translate("gmlgeox.validation.geometry.not.simple"));
            }
        }
    }
}
