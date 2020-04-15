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

import java.util.List;

import org.deegree.geometry.Geometry;
import org.deegree.geometry.composite.CompositeGeometry;
import org.deegree.geometry.multi.MultiGeometry;
import org.deegree.geometry.multi.MultiSolid;
import org.deegree.geometry.primitive.Solid;
import org.deegree.geometry.primitive.Surface;
import org.deegree.geometry.primitive.patches.SurfacePatch;

import de.interactive_instruments.etf.bsxm.UnsupportedGeometryTypeException;

/**
 *
 * @author Johannes Echterhoff (echterhoff at interactive-instruments dot de)
 */
public class PolygonPatchConnectivityValidator implements Validator {

    @Override
    public int getId() {
        return 1;
    }

    @Override
    public void validate(final ElementContext elementContext, final ValidationResult result) {
        final com.vividsolutions.jts.geom.Geometry jtsGeom = elementContext.getJtsGeometry(result);
        if (jtsGeom == null) {
            result.failSilently();
            return;
        }
        checkConnectivityOfPolygonPatches(elementContext, result, elementContext.deegreeGeom, jtsGeom);
    }

    /**
     * Checks that multiple polygon patches within a surface are connected.
     * <p>
     * The test is implemented as follows: Each polygon patch is converted into a JTS Polygon. Then the union of all
     * polygons is created. If the union geometry is a JTS Polygon then the surface is connected - otherwise it is not.
     * <p>
     * Checks:
     * <ul>
     * <li>Surface (including PolyhedralSurface, CompositeSurface, and OrientableSurface)</li>
     * <li>Only PolygonPatch is allowed as surface patch - all surfaces that contain a different type of surface patch are
     * ignored.</li>
     * <li>The elements of multi and composite geometries (except Multi- and CompositeSolids).</li>
     * </ul>
     * Does NOT check the surfaces within solids!
     *
     * @return <code>true</code> if the given geometry is a connected surface, a point, a curve, multi- or composite
     *         geometry that only consists of these geometry types, else <code>false</code>. Thus, <code>false</code> will
     *         be returned whenever a solid is encountered and if a surface is not connected.
     */
    private boolean checkConnectivityOfPolygonPatches(final ElementContext elementContext, final ValidationResult result,
            final Geometry deegreeGeometry, final com.vividsolutions.jts.geom.Geometry jtsGeometry) {
        if (deegreeGeometry instanceof Surface) {
            final Surface s = (Surface) deegreeGeometry;
            final List<? extends SurfacePatch> sps = s.getPatches();
            if (sps.size() <= 1) {
                // not multiple patches -> nothing to check
                return true;
            } else {
                if (jtsGeometry instanceof com.vividsolutions.jts.geom.Polygon) {
                    return true;
                } else {
                    result.addError(elementContext, Message.translate(
                            "gmlgeox.validation.geometry.surfacepatchesnotconnected"));
                    return false;
                }
            }
        } else if (deegreeGeometry instanceof MultiSolid || deegreeGeometry instanceof Solid) {
            return false;
        } else if (deegreeGeometry instanceof MultiGeometry
                || deegreeGeometry instanceof CompositeGeometry) {
            final List l = (List) deegreeGeometry;
            for (Object o : l) {
                final Geometry g = (Geometry) o;
                try {
                    if (!checkConnectivityOfPolygonPatches(elementContext, result, g,
                            elementContext.jtsTransformer.toJTSGeometry(g))) {
                        return false;
                    }
                } catch (final UnsupportedGeometryTypeException e) {
                    // ignore unsupported geometry -> TODO why?
                    // result.addError(elementContext, Message.translate("gmlgeox.validation.geometry.unsupportedgeometrytype",
                    // e.getMessage()));
                    return true;
                }
            }
            return true;

        } else {
            return true;
        }
    }
}
