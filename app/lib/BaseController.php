<?php

abstract class BaseController {
	protected function ReturnView($view) {
		 
		$path = TEMPLATES_PATH. $view;
		 
		if (file_exists($path) == false)
		{
			trigger_error ('Template `' . $path . '` does not exist.', E_USER_NOTICE);
			return false;
		}
		
		return($path);
	}
}


?>