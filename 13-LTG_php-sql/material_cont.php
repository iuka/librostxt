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
  $grd = $data['grado'];
  //$grd = 6;

  $q = "SELECT  recursos.id_f_nivel, recursos.id_f_grado, recursos.id_f_asignatura, asignatura.nombre as grd  FROM recursos
INNER JOIN grado ON grado.id = recursos.id_f_grado 
INNER JOIN asignatura ON asignatura.id = recursos.id_f_asignatura
WHERE id_f_tipo != 1 and id_f_grado = $grd
GROUP BY id_f_asignatura
  " ;


  
  $conn	=	conecta_bd();
  if ($result = mysqli_query($conn,$q)) {
    while($row = $result->fetch_array(MYSQLI_ASSOC)) {
      //agrega atributo cont a array row
      $row['cont'] = [];
      //descarga todo row en myarray
      $myArray[] = $row;
      
    }
  }
  
  //var_dump($myArray);
  foreach ($myArray as $key => $value) {
    //var_dump($value['id_f_asignatura']);
    if ($result = mysqli_query($conn,consulta2($value['id_f_nivel'], $value['id_f_grado'], $value['id_f_asignatura']))) {
      while($res = $result->fetch_array(MYSQLI_ASSOC)) {
        $tempo [] = $res;
      }
    }
    $myArray[$key]['cont'] = $tempo;
    $tempo = [];
  }

  //var_dump($myArray);

  //para mostrar en navegador
  $arbol_php = json_encode($myArray);
  //para guardar en archivo json
  $jsonencoded = json_encode($myArray,JSON_UNESCAPED_UNICODE);
  $data = str_replace("\\/", "/", $jsonencoded);
  echo $data;

  
  }
	
  function consulta2($nivel, $grado, $asignatura){
    return "SELECT  recursos.id, recursos.nombre, recursos.imagen_pre, recursos.id_f_tipo, recursos.url, recursos.descripcion, recursos.descarga, tipo_recurso.nombre as tipo ,tipo_recurso.icon  FROM recursos
    INNER JOIN grado ON grado.id = recursos.id_f_grado 
    INNER JOIN asignatura ON asignatura.id = recursos.id_f_asignatura
    INNER JOIN tipo_recurso ON recursos.id_f_tipo = tipo_recurso.id
    WHERE id_f_tipo != 1 AND id_f_nivel = $nivel AND id_f_grado = $grado AND id_f_asignatura = $asignatura
    ORDER BY rand()
    ";

  }
  
?>