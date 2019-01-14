import module namespace ggeo = 'de.interactive_instruments.etf.bsxm.GmlGeoX';

declare namespace gml = 'http://www.opengis.net/gml/3.2';
declare namespace ii = 'http://www.interactive-instruments.de/test';

let $members := db:open("GmlGeoXUnitTestDB")//ii:member

let $geometries := $members/*
return
 <test_union>  
  <relationshiptest>
   {
    let $geom1 := $geometries[@gml:id = 'MS.2']
    let $geom2 := $geometries[@gml:id = 'MS.4']
    let $geom3 := $geometries[@gml:id = 'MS.5']
    let $union := ggeo:unionNodes(($geom1,$geom2,$geom3))
    let $isEmpty := ggeo:isEmpty($union)
    return
    <tests>
     <test
      geoms='{concat($geom1/@gml:id,' ',$geom2/@gml:id,' ',$geom3/@gml:id)}'>
      <isEmpty>
       {$isEmpty}
      </isEmpty>
     </test>    
     </tests>
   }
  </relationshiptest>
 </test_union>
