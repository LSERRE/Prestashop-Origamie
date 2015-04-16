<!-- Subcategories -->
<div id="subcategories">
	<p class="subcategory-heading">Les catégorigamis</p>
	<ul class="clearfix">
	{foreach from=$categories item=category}
		<li>
			<a class="subcategory-name {if $category['id_category'] == $current_cat_id} active {/if}" href="{$link->getCategoryLink($category.id_category, $category.link_rewrite)|escape:'html':'UTF-8'}">{$category.name|truncate:25:'...'|escape:'html':'UTF-8'}</a>
		</li>
	{/foreach}
	</ul>
</div>