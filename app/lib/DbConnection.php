<?php 
/**
 * @author susana morcuende
 * Connect to db
 */

class DbConnection extends mysqli
{
	private static $instance = null ;
	
	private function __construct($host, $user, $password, $database){
		parent::__construct($host, $user, $password, $database);
	}
	
	/**
	 * Singleton method
	 * @return DbConnection
	 */
	public static function getInstance(){
		if (self::$instance == null){
			self::$instance = new self(DB_HOST, DB_USER, DB_PASS, DB_NAME);
		}
		return self::$instance ;
	}
	
}
?>