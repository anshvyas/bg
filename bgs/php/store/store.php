<?php
require_once ("../config/config.php");
$store=new Store();
$store->init();

class Store{

	

	function init(){

		$response=[];

		if(isset($_COOKIE['mySellers']) && !empty($_COOKIE['mySellers'])){

				$sellers=json_decode($_COOKIE['mySellers']);

				$dbhost=DBHOST;
				$dbuser=DBUSER;
				$dbname=DBNAME;
				$dbpasswd=DBPASSWORD;

			try{
				
				// init database connection handler
				$DBH=new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpasswd);
				$DBH->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );

				$meals=$this->viewMeals($DBH,$sellers);

				$response['status']="success";
				$response["meals"]=$meals['meals'];
				$response['count']=$meals['count'];
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



	function viewMeals($DBH,$sellers){
		
		$meals=[];
		$result=[];
		$query="SELECT meals.seller_id,name,meal_id,meal_name,meal_image,quantity,cost,avail_flag FROM meals join sellers ON sellers.seller_id=meals.seller_id WHERE meals.seller_id= :seller_id";
		$stmt=$DBH->prepare($query);
		$stmt->setFetchMode(PDO::FETCH_ASSOC);

		$ct=0;
		$ct_no_obj=0;
		foreach ($sellers as $id) {
			# code...
			$stmt->bindParam(":seller_id",$id);
			$stmt->execute();
			$ct_no_obj+=$stmt->rowCount();
			$meals[$ct]=$stmt->fetchAll();
			++$ct;
		}
		$result['meals']=$meals;
		$result['count']=$ct_no_obj;
		return $result;
		
		
	}



}
?>