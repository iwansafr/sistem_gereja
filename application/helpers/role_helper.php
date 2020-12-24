<?php

function role_is($rolename = '')
{
	$return = false;
	$role   = @$_SESSION[base_url().'_logged_in']['role'];
	if(!empty($role))
	{
		if(strtolower($role)==strtolower($rolename))
		{
			$return = true;
		}
	}
	return $return;
}

function is_logged_in()
{
	$return = false;
	$role   = @$_SESSION[base_url().'_logged_in']['role'];
	if(!empty($role))
	{
		$return = true;
	}
	return $return;
}