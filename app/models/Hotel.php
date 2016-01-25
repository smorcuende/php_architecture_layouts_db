<?php 
/**
 * @author susana morcuende
 *
 */
class Hotel
{    
	private $id;
	private $name_hotel;
	private $category;
	//room
	private $room_type;
	
	public function getIdHotel() {return $this->id;}
	
	public function getNameHotel() {return $this->name_hotel;}
	public function setNameHotel($name_hotel){$this->name_hotel = $name_hotel;}
	
	public function getCategory() {return $this->category;}
	public function setCategory($category){$this->category = $category;}
	
	public function getRoomType() {return $this->room_type;}
}
?>