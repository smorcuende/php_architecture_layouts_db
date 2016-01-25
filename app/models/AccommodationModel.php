<?php 
require LIB_PATH.'DbConnection.php';


class AccommodationModel
{
	private $db_connection;
	
    public function __construct()
    {
    	$this->db_connection = DbConnection::getInstance();
    }
	
    /**
     * Select hotels from db
     */
    public function getHotels($post_busqueda)
    {
    	$result = $this->db_connection->query('SELECT h.name, h.category, rt.room_type FROM hotels h 
    					LEFT JOIN hotel_room hr ON h.id=hr.id_hotel 
    					LEFT JOIN room_types rt ON hr.id_room_type=rt.id 
                        WHERE h.name like "%'.$post_busqueda.'%"
    					GROUP BY h.id, rt.id'
    	);
    	 
    	return $result;
    }
    
    /**
     * Select apartments from db
     */
    public function getApartments($post_busqueda)
    {
    	$result = $this->db_connection->query('SELECT a.name, t.apartment_type, aat.available FROM apartments a
    				LEFT JOIN apartment_apartment_type aat ON a.id=aat.id_apartment
                    LEFT JOIN apartment_types t ON aat.id_apartment_type=t.id
    				WHERE a.name like "%'.$post_busqueda.'%"
    				GROUP BY a.id, t.id'
    	);
    
    	return $result;
    }
}
  ?>