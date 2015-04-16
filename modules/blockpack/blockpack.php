<?php

if (!defined('_PS_VERSION_'))
	exit;

class BlockPack extends Module {
	public function __construct()
	{
		$this->name = 'blockpack';
		$this->tab = 'Products';
		$this->version = 1.0;
		$this->author = 'Louis Serre';
		$this->need_instance = 0;

		parent::__construct();

		$this->displayName = $this->l('Module Pack');
		$this->description = $this->l('Display pack');
	}

	public function install()
	{
		if (parent::install() == false)
			return false;
		return true;
	}

	public function uninstall()
	{
		if (!parent::uninstall())
			Db::getInstance()->Execute('DELETE FROM `'._DB_PREFIX_.'blockpack`');
		parent::uninstall();
	}

	public function hookdisplayHomeTabContent($params)
	{
		global $smarty;
		return $this->display(__FILE__, 'blockpack.tpl');
	}

}

?>