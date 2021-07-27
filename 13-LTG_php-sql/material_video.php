<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
header('content-type: application/json; charset=utf-8');


include 'conn.php';
//recibe valores externo en formato json
$data = file_get_contents('php://input');

if(!$data){
  echo "No hay datos";
}else{
  //conversion a array
  $data = json_decode($data, true);
  //asignacion de datos en variables
  $id = $data['id'];
  $grado = $data['grd'];

  $q = "SELECT recursos.*,asignatura.nombre as asignatura, grado.nombre_full as grado, grado.colortext, grado.icon, nivel.nombre as nivel, bloque.nombre as bloque, bloque.descripcion_b, tipo_recurso.nombre as tipo FROM recursos 
  INNER JOIN nivel ON nivel.id = recursos.id_f_nivel
  INNER JOIN grado ON grado.id = recursos.id_f_grado
  INNER JOIN asignatura ON asignatura.id = recursos.id_f_asignatura
  INNER JOIN tipo_recurso ON tipo_recurso.id = recursos.id_f_tipo
  INNER JOIN bloque ON bloque.id = recursos.id_f_bloque
  where recursos.id = $id and recursos.id_f_grado = $grado" ;
  
  $conn	=	conecta_bd();
  if ($result = mysqli_query($conn,$q)) {
    while($row = $result->fetch_array(MYSQLI_ASSOC)) {
      $myArray = $row;
    }
  }
  //para mostrar en navegador
  $arbol_php = json_encode($myArray);
  //para guardar en archivo json
  $jsonencoded = json_encode($myArray,JSON_UNESCAPED_UNICODE);
  $data = str_replace("\\/", "/", $jsonencoded);
  echo $data;
}
	

?>