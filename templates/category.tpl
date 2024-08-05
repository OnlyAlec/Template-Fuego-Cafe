{% set title_page = settings.page_shop_title %}
{% set leyend_text = settings.page_shop_leyend %}
{% set sections_products = sections.primary.products %}

{% if title_page %}
	<section>
		<div class="page-shop-hero">
			{{title_page}}
		</div>
	</section>
{% endif %}
<section class="section-shop py-5">
	<div class="container">
		<div class="row gap-3">
			<div class="col-12 page-shop-text">
				<hr>
				<p>{{leyend_text}}</p>
				<hr>
			</div>
			{% for product in sections_products %}
				{% include 'snipplets/grid/item_shop.tpl' %}
				{% include 'snipplets/shop/shop_modal.tpl'with {item: product} %}
			{% endfor %}
		</div>
	</div>
</section>