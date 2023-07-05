<?php
    class Employee{
    // Connection
    private $conn;
    // Table
    private $db_table = "Employee";
    // Columns
    public $id;
    public $namaruangan;
    public $peminjam;
    public $keterangan;
    public $waktupinjam;
    public $selesaipinjam;
    // Db connection
    public function __construct($db){
        $this->conn = $db;
        }
        // GET ALL
        public function getEmployees(){
            $sqlQuery = "SELECT id, namaruangan, peminjam, keterangan, waktupinjam, selesaipinjam FROM "
            . $this->db_table . "";
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->execute();
            return $stmt;
        }
        // CREATE
        public function createEmployee(){
            $sqlQuery = "INSERT INTO
            ". $this->db_table ."
            SET
            namaruangan = :namaruangan, 
            peminjam = :peminjam, 
            keterangan = :keterangan, 
            waktupinjam = :waktupinjam, 
            selesaipinjam = :selesaipinjam";
            $stmt = $this->conn->prepare($sqlQuery);
            // sanitize
            $this->namaruangan=htmlspecialchars(strip_tags($this->namaruangan));
            $this->peminjam=htmlspecialchars(strip_tags($this->peminjam));
            $this->keterangan=htmlspecialchars(strip_tags($this->keterangan));
            $this->waktupinjam=htmlspecialchars(strip_tags($this->waktupinjam));
            $this->selesaipinjam=htmlspecialchars(strip_tags($this->selesaipinjam));
            // bind data
            $stmt->bindParam(":namaruangan", $this->namaruangan);
            $stmt->bindParam(":peminjam", $this->peminjam);
            $stmt->bindParam(":keterangan", $this->keterangan);
            $stmt->bindParam(":waktupinjam", $this->waktupinjam);
            $stmt->bindParam(":selesaipinjam", $this->selesaipinjam);
            if($stmt->execute()){
            return true;
            }
            return false;
        }
        // READ single
        public function getSingleEmployee(){
            $sqlQuery = "SELECT
            id, 
            namaruangan, 
            peminjam, 
            keterangan, 
            waktupinjam, 
            selesaipinjam
            FROM
            ". $this->db_table ."
            WHERE 
            id = ?
            LIMIT 0,1";
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->bindParam(1, $this->id);
            $stmt->execute();
            $dataRow = $stmt->fetch(PDO::FETCH_ASSOC);
            $this->namaruangan = $dataRow['namaruangan'];
            $this->peminjam = $dataRow['peminjam'];
            $this->keterangan = $dataRow['keterangan'];
            $this->waktupinjam = $dataRow['waktupinjam'];
            $this->selesaipinjam = $dataRow['selesaipinjam'];
        } 
        // UPDATE
        public function updateEmployee(){
            $sqlQuery = "UPDATE
            ". $this->db_table ."
            SET
            namaruangan = :namaruangan, 
            peminjam = :peminjam, 
            keterangan = :keterangan, 
            waktupinjam = :waktupinjam, 
            selesaipinjam = :selesaipinjam
            WHERE 
            id = :id";
            $stmt = $this->conn->prepare($sqlQuery);
            $this->namaruangan=htmlspecialchars(strip_tags($this->namaruangan));
            $this->peminjam=htmlspecialchars(strip_tags($this->peminjam));
            $this->keterangan=htmlspecialchars(strip_tags($this->keterangan));
            $this->waktupinjam=htmlspecialchars(strip_tags($this->waktupinjam));
            $this->selesaipinjam=htmlspecialchars(strip_tags($this->selesaipinjam));
            $this->id=htmlspecialchars(strip_tags($this->id));
            // bind data
            $stmt->bindParam(":namaruangan", $this->namaruangan);
            $stmt->bindParam(":peminjam", $this->peminjam);
            $stmt->bindParam(":keterangan", $this->keterangan);
            $stmt->bindParam(":waktupinjam", $this->waktupinjam);
            $stmt->bindParam(":selesaipinjam", $this->selesaipinjam);
            $stmt->bindParam(":id", $this->id);
            if($stmt->execute()){
            return true;
            }
            return false;
        }
        // DELETE
        function deleteEmployee(){
            $sqlQuery = "DELETE FROM " . $this->db_table . " WHERE id = ?";
            $stmt = $this->conn->prepare($sqlQuery);
            $this->id=htmlspecialchars(strip_tags($this->id));
            $stmt->bindParam(1, $this->id);
            if($stmt->execute()){
            return true;
            }
            return false;
        }
    }
?>
