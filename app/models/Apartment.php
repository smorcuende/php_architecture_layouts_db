<?php 
/**
 * @author susana morcuende
 *
 */
class Apartment
{    
	private $id;
	private $name_apto;
	//type
	private $apartment_type;
	
	public function getIdApto() {return $this->id;}
	
	public function getNameApto() {return $this->name_apto;}
	public function setNameApto($name_apto){$this->name_apto = $name_apto;}
	
	public function getApartmentType() {return $this->apartment_type;}
}
?>