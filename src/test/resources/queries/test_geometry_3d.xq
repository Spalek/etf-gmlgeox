import module namespace ggeo = 'de.interactive_instruments.etf.bsxm.GmlGeoX';

declare namespace gml = 'http://www.opengis.net/gml/3.2';
declare namespace ii = 'http://www.interactive-instruments.de/test';

let $members := db:open("GmlGeoXUnitTestDB")//ii:member

let $geometries := $members/*
return
 <test_3d>
  <validationtest>
   {
    for $geom in $geometries
    let $vr := ggeo:validateAndReport($geom)
    return
     <test
      id='{$geom/@gml:id}'>
      <isValid>{
        if (xs:boolean($vr/ggeo:isValid)) then
         'true'
        else
         'false'
       }</isValid>
      <result>{
        $vr/ggeo:result/text()
       }</result>
      <messages>
       {
        for $msg in $vr/ggeo:message
        return
         <message>
          <type>{
            $msg/data(@type)
           }</type>
          <text>{
            $msg/text()
           }</text>
         </message>
       }
      </messages>
     </test>
   }
  </validationtest>
  <relationshiptest>
   {
    let $geom1 := $geometries[@gml:id = 'Point_1']
    let $geom2 := $geometries[@gml:id = 'Curve_1']
    let $ggeogeom1 := ggeo:getOrCacheGeometry($geometries[@gml:id = 'Point_1'])
    let $ggeogeom2 := ggeo:getOrCacheGeometry($geometries[@gml:id = 'Curve_1'])
    return
    <tests>
     <test_nodenode
      geom1='{$geom1/@gml:id}'
      geom2='{$geom2/@gml:id}'>
      <intersects>
       {ggeo:intersects($geom1, $geom2)}
      </intersects>
     </test_nodenode>
     <test_geomgeom
      geom1='{$geom1/@gml:id}'
      geom2='{$geom2/@gml:id}'>
      <intersects>
       {ggeo:intersectsGeomGeom($ggeogeom1, $ggeogeom2)}
      </intersects>
     </test_geomgeom>
     </tests>
   }
  </relationshiptest>
  <relationshiptest>
   {
    let $geom1 := $geometries[@gml:id = 'Point_2']
    let $geom2 := $geometries//*[@gml:id = 'Curve_S1']
    let $ggeogeom1 := ggeo:getOrCacheGeometry($geometries[@gml:id = 'Point_2'])
    let $ggeogeom2 := ggeo:getOrCacheGeometry($geometries//*[@gml:id = 'Curve_S1'])
    return
    <tests>
     <test_nodenode
      geom1='{$geom1/@gml:id}'
      geom2='{$geom2/@gml:id}'>
      <intersects>
       {ggeo:intersects($geom1, $geom2)}
      </intersects>
     </test_nodenode>
     <test_geomgeom
      geom1='{$geom1/@gml:id}'
      geom2='{$geom2/@gml:id}'>
      <intersects>
       {ggeo:intersectsGeomGeom($ggeogeom1, $ggeogeom2)}
      </intersects>
     </test_geomgeom>
     </tests>     
   }
  </relationshiptest>
 </test_3d>
