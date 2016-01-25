<?php 
/**
 * @author susana morcuende
 */
require LIB_PATH.'BaseController.php';
require MODELS_PATH.'Hotel.php';
require MODELS_PATH.'AccommodationModel.php';

class AccommodationController extends BaseController
{
	
	/**
	 * SHOW all hotels/Apartments in a list
	 */
	public function listAll($post_busqueda)
	{
		//En el objeto accommodation unimos hoteles + apartamentos
		$list_all = new AccommodationModel();
		//Hoteles
		$hoteles = $list_all->getHotels($post_busqueda);
		//Apartamentos
		$apartamentos = $list_all->getApartments($post_busqueda);
		
		//array hoteles5999..........
		$hoteles_string = array();
		foreach ($hoteles as $key=>$value)
		{
			$hoteles_string[$key] = 'Hotel '.$value['name'].', categoria '.$value['category'].' estrellas, '.$value['room_type'];
		}
		
		//array apartamentos
		$apartamentos_string = array();
		foreach ($apartamentos as $key=>$value)
		{
			if($value['available']==0){$available='no disponible';}else{$available='disponible';};
			
			$apartamentos_string[$key] = 'Apto. '.$value['name'].', capacidad para '.$value['apartment_type'].', '.$available;
		}
		
		$hoteles_apartamentos = array_merge($hoteles_string, $apartamentos_string);
		
		return $hoteles_apartamentos ;
	}	
	
	/**
	 * view
	 */
	public function viewListAll()
	{
		return $this->ReturnView("accommodation_list.php");	
	}
}
  ?>