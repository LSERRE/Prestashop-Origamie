<?php

if (!defined('_PS_VERSION_'))
	exit;

class BlockProductsCategories extends Module {
	public function __construct()
	{
		$this->name = 'blockproductscategories';
		$this->tab = 'Products';
		$this->version = 1.0;
		$this->author = 'Louis Serre';
		$this->need_instance = 0;

		parent::__construct();

		$this->displayName = $this->l('Module Products Categories');
		$this->description = $this->l('Display Products Categories');
	}

	public function install()
	{
		return parent::install() && $this->registerHook('displayCategoryList');
	}

	public function uninstall()
	{
		if (!parent::uninstall())
			Db::getInstance()->Execute('DELETE FROM `'._DB_PREFIX_.'blockproductscategories`');
		parent::uninstall();
	}

	public function hookdisplayCategoryList()
	{
	    global $cookie; global $smarty;
	    $category = new Category(12);
	    $current_cat_id = Tools::getValue('id_category');
	    $categories = $category->getSubCategories($this->context->language->id);
	    $smarty->assign('categories',$categories);
	    if(isset($current_cat_id)){
	    	 $smarty->assign('current_cat_id',$current_cat_id);
	    }
	    return $this->display(__FILE__, 'blockproductscategories.tpl');
	}

}

?>