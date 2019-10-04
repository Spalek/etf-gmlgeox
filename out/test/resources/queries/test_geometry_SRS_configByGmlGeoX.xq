import module namespace ggeo = 'de.interactive_instruments.etf.bsxm.GmlGeoX';

declare namespace gml = 'http://www.opengis.net/gml/3.2';
declare namespace ii = 'http://www.interactive-instruments.de/test';

let $members := db:open("GmlGeoXUnitTestDB-000")//ii:member

let $init := ggeo:init('GmlGeoXUnitTestDB-000')

let $geometries := $members/*
return
 <test_SRS>
  <validationtest>
   {
    for $geom in $geometries
    let $vr := ggeo:validateAndReport($geom)
    return
     <test
      id='{$geom/@gml:id}'>
      <valid>{
        if (xs:boolean($vr/ggeo:valid)) then
         'true'
        else
         'false'
       }</valid>
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
    let $geom1 := $geometries[@gml:id = 'Curve_1']
    let $geom2 := $geometries[@gml:id = 'Curve_2']
    return
     <test
      geom1='{$geom1/@gml:id}'
      geom2='{$geom2/@gml:id}'>
      <intersects>
       {ggeo:intersects($geom1, $geom2)}
      </intersects>
     </test>
   }
  </relationshiptest>
 </test_SRS>
