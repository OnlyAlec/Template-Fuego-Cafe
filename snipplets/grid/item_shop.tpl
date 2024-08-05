{% set item_img_srcset = product.featured_image %}
{% set item_img_alt = product.featured_image.alt %}

{% set description_array = [] %}
{% set details_array = [] %}
{% set space = " " %}

{% set name_var = product.name | replace(space, "") %}
{% set name_dash_var = product.name | replace(dash, " ") | replace(space, "-") %}
{% set id_name = "shop-modal-" ~ name_var  %}

{% set section_array = product.description | striptags | convert_encoding('UTF-8', 'HTML-ENTITIES')
| split("---") %}
{% for section in section_array %}
    {% set description_array = description_array | merge([section]) %}
{% endfor %}



<div id="{{name_dash_var}}" class="col-12">
	<div class="row gap-md-5 justify-content-center">
		<div class="col-12 col-md-8">
			<div class="row page-shop-main p-5 gap-3">
				<div class="col-12 page-shop-title">{{product.name}}</div>
				<div class="col-12 page-shop-info">
					<strong>{{description_array[0]}}</strong>
					<br>
					{{description_array[1]}}
				</div>
				<div class="col-12">
					<div class="row">
						<div class="col-12 col-md-6 page-shop-info">{{product.price | money}}</div>
						<div class="col-12 col-md-6" style="text-align: right !important;">
							<a class="product-btn js-quickshop-modal-open js-modal-open js-fullscreen-modal-open" data-toggle="#shop-modal-{{name_var}}" data-modal-url="modal-fullscreen-quickshop">Detalles</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-12 col-md-3 d-flex align-items-center justify-content-center page-shop-secondary">
			<img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset="{{ item_img_srcset | product_image_url('medium')}}" alt="{{ item_img_alt }}" class="lazyload">
		</div>
	</div>
</div>
