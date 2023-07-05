<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
    
    include_once '../../config/peminjamanRuangan/database.php';
    include_once '../../models/peminjamanRuangan/employees.php';
    
    $database = new Database();
    $db = $database->getConnection();
    
    $item = new Employee($db);
    
    $data = json_decode(file_get_contents("php://input"));
    
    $item->id = $data->id;
    
    // employee values
    $item->namaruangan = $data->namaruangan;
    $item->peminjam = $data->peminjam;
    $item->keterangan = $data->keterangan;
    $item->waktupinjam = $data->waktupinjam;
    $item->selesaipinjam = $data->selesaipinjam;
    
    if($item->updateEmployee()){
        echo json_encode(['message'=>'Employee updated successfully.']);
    } else{
        echo json_encode(['message'=>'Employee could not be updated.']);
    }
?>