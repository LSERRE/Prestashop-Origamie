<?php

if (!defined('_PS_VERSION_'))
	exit;

class BlockPackPack extends Module {
	public function __construct()
	{
		$this->name = 'blockpackpack';
		$this->tab = 'Products';
		$this->version = 1.0;
		$this->author = 'Louis Serre';
		$this->need_instance = 0;

		parent::__construct();

		$this->displayName = $this->l('Module pack');
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
			Db::getInstance()->Execute('DELETE FROM `'._DB_PREFIX_.'blockpackpack`');
		parent::uninstall();
	}

	public function hookdisplayHomeTabContent($params)
	{
		global $smarty;

		$category = new Category(Configuration::get('PACK_CATEGORY'), (int)Context::getContext()->language->id);

		$products = $category->getProducts((int)Context::getContext()->language->id, 1, 3);

		$this->smarty->assign(
			array(
				'products' => $products,
				'categoryName' => $category->name
			)
		);

		return $this->display(__FILE__, 'blockpackpack.tpl');
	}

	public function getContent()
	{
		$output = '';
		$errors = array();
		if (Tools::isSubmit('submitDisplayPack'))
		{
			$category = Tools::getValue('PACK_CATEGORY');
			if (!Validate::isInt($category) || $category <= 0)
				$errors[] = $this->l('Invalid id');

			if (isset($errors) && count($errors))
				$output = $this->displayError(implode('<br />', $errors));
			else
			{
				Configuration::updateValue('PACK_CATEGORY', (int)$category);
				Tools::clearCache(Context::getContext()->smarty, $this->getTemplatePath('blockpack.tpl'));
				$output = $this->displayConfirmation($this->l('Your settings have been updated.'));
			}
		}

		return $output.$this->renderForm();
	}

	public function renderForm()
	{
		$fields_form = array(
			'form' => array(
				'legend' => array(
					'title' => $this->l('Settings'),
					'icon' => 'icon-cogs'
				),
				'description' => $this->l('Pour ajouter des produits dans le Pack Home ajoutez les produits dans une catégorie et indiquez l\'id de la catégorie.'),
				'input' => array(
					array(
						'type' => 'text',
						'label' => $this->l('Id Categorie'),
						'name' => 'PACK_CATEGORY',
						'class' => 'fixed-width-xs',
						'desc' => $this->l('Indiquez l\'id de la catégorie.'),
					)
				),
				'submit' => array(
					'title' => $this->l('Save'),
				)
			),
		);

		$helper = new HelperForm();
		$helper->show_toolbar = false;
		$helper->table = $this->table;
		$lang = new Language((int)Configuration::get('PS_LANG_DEFAULT'));
		$helper->default_form_language = $lang->id;
		$helper->allow_employee_form_lang = Configuration::get('PS_BO_ALLOW_EMPLOYEE_FORM_LANG') ? Configuration::get('PS_BO_ALLOW_EMPLOYEE_FORM_LANG') : 0;
		$this->fields_form = array();
		$helper->id = (int)Tools::getValue('id_carrier');
		$helper->identifier = $this->identifier;
		$helper->submit_action = 'submitDisplayPack';
		$helper->currentIndex = $this->context->link->getAdminLink('AdminModules', false).'&configure='.$this->name.'&tab_module='.$this->tab.'&module_name='.$this->name;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->tpl_vars = array(
			'fields_value' => $this->getConfigFieldsValues(),
			'languages' => $this->context->controller->getLanguages(),
			'id_language' => $this->context->language->id
		);

		return $helper->generateForm(array($fields_form));
	}

	public function getConfigFieldsValues()
	{
		return array(
			'PACK_CATEGORY' => Tools::getValue('PACK_CATEGORY', (int)Configuration::get('PACK_CATEGORY'))
		);
	}

}

?>