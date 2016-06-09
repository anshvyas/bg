<?php
require_once ("../config/config.php");
$filter=new LocationFilter();
$filter->init();
class LocationFilter{

	protected $response;
	protected $dbhost;
	protected $dbuser;
	protected $dbname;
	protected $dbpasswd;

			function _construct()
			{
				$response=array();
			}

	function init(){

				
		if(isset($_GET['customer_lat'])&&isset($_GET['customer_lng'])&&!empty($_GET['customer_lat'])&&!empty($_GET['customer_lng'])){

				$dbhost=DBHOST;
				$dbuser=DBUSER;
				$dbname=DBNAME;
				$dbpasswd=DBPASSWORD;

			try{
				
				// init database connection handler
				$DBH=new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpasswd);
				$DBH->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );

				$list=$this->getSellers($DBH);

				$response['status']="success";
				$response['list']=$list;
				$DBH=null;
				echo json_encode($response);
			}

			catch(PDOException $e){

				$response['status']="error";
				$response['message']=$e->getMessage();
				$DBH=null;
				echo json_encode($response);
			}
			
		}

		else{
			
			$response['status']="error";
			$response['message']="Invalid Data!!!!";
			echo json_encode($response);
		}

	}

	function getSellers($DBH){
		$stmt=$DBH->prepare("SELECT seller_id,latitude,longitude FROM sellers");
		$stmt->execute();

		$stmt->setFetchMode(PDO::FETCH_ASSOC);
		$sellers=$stmt->fetchAll();

		return $sellers;

		}
		
}
?>