(:~
 :
 : ---------------------------------------
 : GmlGeoX XQuery Function Library Facade
 : ---------------------------------------
 :
 : Copyright (C) 2018 interactive instruments GmbH
 :
 : Licensed under the EUPL, Version 1.2 or - as soon they will be approved by
 : the European Commission - subsequent versions of the EUPL (the "Licence");
 : You may not use this work except in compliance with the Licence.
 : You may obtain a copy of the Licence at:
 :
 : https://joinup.ec.europa.eu/software/page/eupl
 :
 : Unless required by applicable law or agreed to in writing, software
 : distributed under the Licence is distributed on an "AS IS" basis,
 : WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 : See the Licence for the specific language governing permissions and
 : limitations under the Licence.
 :
 : @see     https://jonherrmann.github.io/etf-topox/Developer_documentation.html (will be changed in future releases)
 : @author  Jon Herrmann ( herrmann aT interactive-instruments doT de )
 :
 :)
module namespace geox = 'https://modules.etf-validator.net/geox/1';

import module namespace java = 'java:de.interactive_instruments.etf.bsxm.GmlGeoX';

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $databaseName
 : @return as empty-sequence()
 :)
declare function geox:init($databaseName as xs:string) as empty-sequence() {
    java:init($databaseName)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $databaseName
 : @param $configurationDirectoryPathName
 : @return as empty-sequence()
 :)
declare function geox:init($databaseName as xs:string, $configurationDirectoryPathName as xs:string) as empty-sequence() {
    java:init($databaseName, $configurationDirectoryPathName)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom
 : @return as xs:string
 :)
declare function geox:toWKT($geom as item()) as xs:string {
    java:toWKT($geom)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom
 : @return as item()*
 :)
declare function geox:flattenAllGeometryCollections($geom as item()) as item()* {
    java:flattenAllGeometryCollections($geom)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom
 : @param $minAngle
 : @param $maxAngle
 : @return as item()*
 :)
declare function geox:directionChanges($geom as item(), $minAngle as item(), $maxAngle as item()) as item()* {
    java:directionChanges($geom, $minAngle, $maxAngle)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom
 : @param $limitAngle
 : @return as item()*
 :)
declare function geox:directionChangesGreaterThanLimit($geom as item(), $limitAngle as item()) as item()* {
    java:directionChangesGreaterThanLimit($geom, $limitAngle)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $node
 : @return as xs:string
 :)
declare function geox:validate($node as element()) as xs:string {
    java:validate($node)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $node
 : @param $testMask
 : @return as xs:string
 :)
declare function geox:validate($node as element(), $testMask as xs:string) as xs:string {
    java:validate($node, $testMask)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $node
 : @return as element()
 :)
declare function geox:validateAndReport($node as element()) as element() {
    java:validateAndReport($node)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $node
 : @param $testMask
 : @return as element()
 :)
declare function geox:validateAndReport($node as element(), $testMask as xs:string) as element() {
    java:validateAndReport($node, $testMask)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:contains($geom1 as element(), $geom2 as element()) as xs:boolean {
    java:contains($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $arg1
 : @param $arg2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:contains($arg1 as element()*, $arg2 as element()*, $matchAll as xs:boolean) as xs:boolean {
    java:contains($arg1, $arg2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:containsGeomGeom($geom1 as item(), $geom2 as item()) as xs:boolean {
    java:containsGeomGeom($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:containsGeomGeom($geom1 as item(), $geom2 as item(), $matchAll as xs:boolean) as xs:boolean {
    java:containsGeomGeom($geom1, $geom2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:crosses($geom1 as element(), $geom2 as element()) as xs:boolean {
    java:crosses($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $arg1
 : @param $arg2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:crosses($arg1 as element()*, $arg2 as element()*, $matchAll as xs:boolean) as xs:boolean {
    java:crosses($arg1, $arg2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:crossesGeomGeom($geom1 as item(), $geom2 as item()) as xs:boolean {
    java:crossesGeomGeom($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:crossesGeomGeom($geom1 as item(), $geom2 as item(), $matchAll as xs:boolean) as xs:boolean {
    java:crossesGeomGeom($geom1, $geom2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:equals($geom1 as element(), $geom2 as element()) as xs:boolean {
    java:equals($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $arg1
 : @param $arg2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:equals($arg1 as element()*, $arg2 as element()*, $matchAll as xs:boolean) as xs:boolean {
    java:equals($arg1, $arg2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:equalsGeomGeom($geom1 as item(), $geom2 as item()) as xs:boolean {
    java:equalsGeomGeom($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:equalsGeomGeom($geom1 as item(), $geom2 as item(), $matchAll as xs:boolean) as xs:boolean {
    java:equalsGeomGeom($geom1, $geom2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:intersects($geom1 as element(), $geom2 as element()) as xs:boolean {
    java:intersects($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $arg1
 : @param $arg2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:intersects($arg1 as element()*, $arg2 as element()*, $matchAll as xs:boolean) as xs:boolean {
    java:intersects($arg1, $arg2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:intersectsGeomGeom($geom1 as item(), $geom2 as item()) as xs:boolean {
    java:intersectsGeomGeom($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:intersectsGeomGeom($geom1 as item(), $geom2 as item(), $matchAll as xs:boolean) as xs:boolean {
    java:intersectsGeomGeom($geom1, $geom2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geometryNode
 : @return as xs:string
 :)
declare function geox:determineSrsName($geometryNode as element()) as xs:string {
    java:determineSrsName($geometryNode)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geometryComponentNode
 : @return as xs:string
 :)
declare function geox:determineSrsNameForGeometryComponent($geometryComponentNode as element()) as xs:string {
    java:determineSrsNameForGeometryComponent($geometryComponentNode)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $v
 : @return as item()
 :)
declare function geox:parseGeometry($v as element()*) as item() {
    java:parseGeometry($v)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:isDisjoint($geom1 as element(), $geom2 as element()) as xs:boolean {
    java:isDisjoint($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $arg1
 : @param $arg2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:isDisjoint($arg1 as element()*, $arg2 as element()*, $matchAll as xs:boolean) as xs:boolean {
    java:isDisjoint($arg1, $arg2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:isDisjointGeomGeom($geom1 as item(), $geom2 as item()) as xs:boolean {
    java:isDisjointGeomGeom($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:isDisjointGeomGeom($geom1 as item(), $geom2 as item(), $matchAll as xs:boolean) as xs:boolean {
    java:isDisjointGeomGeom($geom1, $geom2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:isWithin($geom1 as element(), $geom2 as element()) as xs:boolean {
    java:isWithin($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $arg1
 : @param $arg2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:isWithin($arg1 as element()*, $arg2 as element()*, $matchAll as xs:boolean) as xs:boolean {
    java:isWithin($arg1, $arg2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:isWithinGeomGeom($geom1 as item(), $geom2 as item()) as xs:boolean {
    java:isWithinGeomGeom($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:isWithinGeomGeom($geom1 as item(), $geom2 as item(), $matchAll as xs:boolean) as xs:boolean {
    java:isWithinGeomGeom($geom1, $geom2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:overlaps($geom1 as element(), $geom2 as element()) as xs:boolean {
    java:overlaps($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $arg1
 : @param $arg2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:overlaps($arg1 as element()*, $arg2 as element()*, $matchAll as xs:boolean) as xs:boolean {
    java:overlaps($arg1, $arg2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:overlapsGeomGeom($geom1 as item(), $geom2 as item()) as xs:boolean {
    java:overlapsGeomGeom($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:overlapsGeomGeom($geom1 as item(), $geom2 as item(), $matchAll as xs:boolean) as xs:boolean {
    java:overlapsGeomGeom($geom1, $geom2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:touches($geom1 as element(), $geom2 as element()) as xs:boolean {
    java:touches($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $arg1
 : @param $arg2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:touches($arg1 as element()*, $arg2 as element()*, $matchAll as xs:boolean) as xs:boolean {
    java:touches($arg1, $arg2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @return as xs:boolean
 :)
declare function geox:touchesGeomGeom($geom1 as item(), $geom2 as item()) as xs:boolean {
    java:touchesGeomGeom($geom1, $geom2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:touchesGeomGeom($geom1 as item(), $geom2 as item(), $matchAll as xs:boolean) as xs:boolean {
    java:touchesGeomGeom($geom1, $geom2, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $gmlGeometry
 : @return as empty-sequence()
 :)
declare function geox:registerGmlGeometry($gmlGeometry as xs:string) as empty-sequence() {
    java:registerGmlGeometry($gmlGeometry)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $srsName
 : @return as empty-sequence()
 :)
declare function geox:setStandardSRS($srsName as xs:string) as empty-sequence() {
    java:setStandardSRS($srsName)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $maxNumPoints
 : @return as empty-sequence()
 :)
declare function geox:setMaxNumPointsForInterpolation($maxNumPoints as xs:int) as empty-sequence() {
    java:setMaxNumPointsForInterpolation($maxNumPoints)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $maxError
 : @return as empty-sequence()
 :)
declare function geox:setMaxErrorForInterpolation($maxError as xs:double) as empty-sequence() {
    java:setMaxErrorForInterpolation($maxError)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $nodeName
 : @return as empty-sequence()
 :)
declare function geox:unregisterGmlGeometry($nodeName as xs:string) as empty-sequence() {
    java:unregisterGmlGeometry($nodeName)
};

(:~
 : AUTO-GENERATED-COMMENT
 :

 : @return as empty-sequence()
 :)
declare function geox:unregisterAllGmlGeometries() as empty-sequence() {
    java:unregisterAllGmlGeometries()
};

(:~
 : AUTO-GENERATED-COMMENT
 :

 : @return as xs:string
 :)
declare function geox:registeredGmlGeometries() as xs:string {
    java:registeredGmlGeometries()
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $arg
 : @return as item()
 :)
declare function geox:unionGeom($arg as item()*) as item() {
    java:unionGeom($arg)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $val
 : @return as item()
 :)
declare function geox:union($val as element()*) as item() {
    java:union($val)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom
 : @return as xs:boolean
 :)
declare function geox:isEmptyGeom($geom as item()) as xs:boolean {
    java:isEmptyGeom($geom)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $arcStringNode
 : @return as item()*
 :)
declare function geox:checkSecondControlPointInMiddleThirdOfArc($arcStringNode as element()) {
    java:checkSecondControlPointInMiddleThirdOfArc($arcStringNode)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $circleNode
 : @param $minSeparationInDegree
 : @return as item()*
 :)
declare function geox:checkMinimumSeparationOfCircleControlPoints($circleNode as element(), $minSeparationInDegree as item()) as item()* {
    java:checkMinimumSeparationOfCircleControlPoints($circleNode, $minSeparationInDegree)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom
 : @return as xs:boolean
 :)
declare function geox:isClosedGeom($geom as item()) as xs:boolean {
    java:isClosedGeom($geom)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom
 : @return as xs:boolean
 :)
declare function geox:isClosed($geom as element()) as xs:boolean {
    java:isClosed($geom)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom
 : @param $onlyCheckCurveGeometries
 : @return as xs:boolean
 :)
declare function geox:isClosedGeom($geom as item(), $onlyCheckCurveGeometries as xs:boolean) as xs:boolean {
    java:isClosedGeom($geom, $onlyCheckCurveGeometries)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geomNode
 : @param $onlyCheckCurveGeometries
 : @return as xs:boolean
 :)
declare function geox:isClosed($geomNode as element(), $onlyCheckCurveGeometries as xs:boolean) as xs:boolean {
    java:isClosed($geomNode, $onlyCheckCurveGeometries)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geometryNode
 : @return as item()
 :)
declare function geox:holes($geometryNode as element()) as item()? {
    java:holes($geometryNode)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom
 : @return as item()
 :)
declare function geox:holesGeom($geom as item()) as item()? {
    java:holesGeom($geom)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom
 : @return as item()
 :)
declare function geox:holesAsGeometryCollection($geom as item()) as item()? {
    java:holesAsGeometryCollection($geom)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geometryNode
 : @return as xs:boolean
 :)
declare function geox:isValid($geometryNode as element()) as xs:boolean {
    java:isValid($geometryNode)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $arg1
 : @param $arg2
 : @param $intersectionPattern
 : @return as xs:boolean
 :)
declare function geox:relate($arg1 as element(), $arg2 as element(), $intersectionPattern as xs:string) as xs:boolean {
    java:relate($arg1, $arg2, $intersectionPattern)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $value1
 : @param $value2
 : @param $intersectionPattern
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:relate($value1 as element()*, $value2 as element()*, $intersectionPattern as xs:string, $matchAll as xs:boolean) as xs:boolean {
    java:relate($value1, $value2, $intersectionPattern, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @param $intersectionPattern
 : @return as xs:boolean
 :)
declare function geox:relateGeomGeom($geom1 as item(), $geom2 as item(), $intersectionPattern as xs:string) as xs:boolean {
    java:relateGeomGeom($geom1, $geom2, $intersectionPattern)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom1
 : @param $geom2
 : @param $intersectionPattern
 : @param $matchAll
 : @return as xs:boolean
 :)
declare function geox:relateGeomGeom($geom1 as item(), $geom2 as item(), $intersectionPattern as xs:string, $matchAll as xs:boolean) as xs:boolean {
    java:relateGeomGeom($geom1, $geom2, $intersectionPattern, $matchAll)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geometry1
 : @param $geometry2
 : @return as item()
 :)
declare function geox:intersection($geometry1 as element(), $geometry2 as element()) as item()? {
    java:intersection($geometry1, $geometry2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geometry1
 : @param $geometry2
 : @return as item()
 :)
declare function geox:intersectionGeomGeom($geometry1 as item(), $geometry2 as item()) as item()? {
    java:intersectionGeomGeom($geometry1, $geometry2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geometry1
 : @param $geometry2
 : @return as item()
 :)
declare function geox:difference($geometry1 as element(), $geometry2 as element()) as item()? {
    java:difference($geometry1, $geometry2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geometryNode
 : @return as item()
 :)
declare function geox:boundary($geometryNode as element()) as item() {
    java:boundary($geometryNode)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geometry
 : @return as item()
 :)
declare function geox:boundaryGeom($geometry as item()) as item() {
    java:boundaryGeom($geometry)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geometry1
 : @param $geometry2
 : @return as item()
 :)
declare function geox:differenceGeomGeom($geometry1 as item(), $geometry2 as item()) as item()? {
    java:differenceGeomGeom($geometry1, $geometry2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geometryNode
 : @return as item()*
 :)
declare function geox:envelope($geometryNode as element()) as item()* {
    java:envelope($geometryNode)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geometry
 : @return as item()*
 :)
declare function geox:envelopeGeom($geometry as item()) as item()* {
    java:envelopeGeom($geometry)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geomNode
 : @return as item()*
 :)
declare function geox:curveEndPoints($geomNode as element()) as item()* {
    java:curveEndPoints($geomNode)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $minx
 : @param $miny
 : @param $maxx
 : @param $maxy
 : @return as element()*
 :)
declare function geox:search($minx as item(), $miny as item(), $maxx as item(), $maxy as item()) as element()* {
    java:search($minx, $miny, $maxx, $maxy)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $indexName
 : @param $minx
 : @param $miny
 : @param $maxx
 : @param $maxy
 : @return as element()*
 :)
declare function geox:search($indexName as xs:string, $minx as item(), $miny as item(), $maxx as item(), $maxy as item()) as element()* {
    java:search($indexName, $minx, $miny, $maxx, $maxy)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geometryNode
 : @return as element()*
 :)
declare function geox:search($geometryNode as element()) as element()* {
    java:search($geometryNode)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $indexName
 : @param $geometryNode
 : @return as element()*
 :)
declare function geox:search($indexName as xs:string, $geometryNode as element()) as element()* {
    java:search($indexName, $geometryNode)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom
 : @return as element()*
 :)
declare function geox:searchGeom($geom as item()) as element()* {
    java:searchGeom($geom)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $indexName
 : @param $geom
 : @return as element()*
 :)
declare function geox:searchGeom($indexName as xs:string, $geom as item()) as element()* {
    java:searchGeom($indexName, $geom)
};

(:~
 : AUTO-GENERATED-COMMENT
 :

 : @return as element()*
 :)
declare function geox:search() as element()* {
    java:search()
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $indexName
 : @return as element()*
 :)
declare function geox:searchInIndex($indexName as xs:string) as element()* {
    java:searchInIndex($indexName)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $size
 : @return as empty-sequence()
 :)
declare function geox:cacheSize($size as item()) as empty-sequence() {
    java:cacheSize($size)
};

(:~
 : AUTO-GENERATED-COMMENT
 :

 : @return as xs:int
 :)
declare function geox:getCacheSize() as xs:int {
    java:getCacheSize()
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $node
 : @param $geometry
 : @return as empty-sequence()
 :)
declare function geox:index($node as element(), $geometry as element()) as empty-sequence() {
    java:index($node, $geometry)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $indexName
 : @return as empty-sequence()
 :)
declare function geox:removeIndex($indexName as xs:string) as empty-sequence() {
    java:removeIndex($indexName)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $indexName
 : @param $node
 : @param $geometry
 : @return as empty-sequence()
 :)
declare function geox:index($indexName as xs:string, $node as element(), $geometry as element()) as empty-sequence() {
    java:index($indexName, $node, $geometry)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $point
 : @param $geometry
 : @return as xs:boolean
 :)
declare function geox:pointCoordInGeometryCoords($point as item(), $geometry as item()) as xs:boolean {
    java:pointCoordInGeometryCoords($point, $geometry)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geomNode
 : @param $otherGeomsNodes
 : @param $minMatchesPerCurve
 : @return as item()
 :)
declare function geox:curveUnmatchedByIdenticalCurvesMin($geomNode as element(), $otherGeomsNodes as element()*, $minMatchesPerCurve as xs:int) as item()? {
    java:curveUnmatchedByIdenticalCurvesMin($geomNode, $otherGeomsNodes, $minMatchesPerCurve)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geomNode
 : @param $otherGeomsNodes
 : @param $maxMatchesPerCurve
 : @return as item()
 :)
declare function geox:curveUnmatchedByIdenticalCurvesMax($geomNode as element(), $otherGeomsNodes as element()*, $maxMatchesPerCurve as xs:int) as item()? {
    java:curveUnmatchedByIdenticalCurvesMax($geomNode, $otherGeomsNodes, $maxMatchesPerCurve)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geomNode
 : @param $otherGeomNodes
 : @return as item()
 :)
declare function geox:determineIncompleteCoverageByIdenticalCurveComponents($geomNode as element(), $otherGeomNodes as element()*) as item()? {
    java:determineIncompleteCoverageByIdenticalCurveComponents($geomNode, $otherGeomNodes)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geomNode1
 : @param $geomNode2
 : @return as item()
 :)
declare function geox:determineInteriorIntersectionOfCurveComponents($geomNode1 as element(), $geomNode2 as element()) as item()? {
    java:determineInteriorIntersectionOfCurveComponents($geomNode1, $geomNode2)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geomNode
 : @return as item()
 :)
declare function geox:getOrCacheGeometry($geomNode as element()) as item()? {
    java:getOrCacheGeometry($geomNode)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $node
 : @param $geometry
 : @return as empty-sequence()
 :)
declare function geox:prepareSpatialIndex($node as element(), $geometry as element()) as empty-sequence() {
    java:prepareSpatialIndex($node, $geometry)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $indexName
 : @param $node
 : @param $geometry
 : @return as empty-sequence()
 :)
declare function geox:prepareSpatialIndex($indexName as xs:string, $node as element(), $geometry as element()) as empty-sequence() {
    java:prepareSpatialIndex($indexName, $node, $geometry)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $indexName
 : @param $node
 : @param $geometry
 : @return as empty-sequence()
 :)
declare function geox:prepareDefaultAndSpecificSpatialIndex($indexName as xs:string, $node as element(), $geometry as element()) as empty-sequence() {
    java:prepareDefaultAndSpecificSpatialIndex($indexName, $node, $geometry)
};

(:~
 : AUTO-GENERATED-COMMENT
 :

 : @return as empty-sequence()
 :)
declare function geox:buildSpatialIndex() as empty-sequence() {
    java:buildSpatialIndex()
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $indexName
 : @return as empty-sequence()
 :)
declare function geox:buildSpatialIndex($indexName as xs:string) as empty-sequence() {
    java:buildSpatialIndex($indexName)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $geom
 : @return as xs:string*
 :)
declare function geox:georefFromGeom($geom as item()) as xs:string* {
    java:georefFromGeom($geom)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $coord
 : @return as xs:string*
 :)
declare function geox:georefFromCoord($coord as item()) as xs:string* {
    java:georefFromCoord($coord)
};

(:~
 : AUTO-GENERATED-COMMENT
 :

 : @return as xs:string
 :)
declare function geox:detailedVersion() as xs:string {
    java:detailedVersion()
};

(:~
 : AUTO-GENERATED-COMMENT
 :

 : @return as item()
 :)
declare function geox:getModuleInstance() as item() {
    java:getModuleInstance()
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $out
 : @return as empty-sequence()
 :)
declare function geox:writeExternal($out) {
    java:writeExternal($out)
};

(:~
 : AUTO-GENERATED-COMMENT
 :
 : @param $in
 : @return as empty-sequence()
 :)
declare function geox:readExternal($in) {
    java:readExternal($in)
};
