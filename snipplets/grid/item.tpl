{% set item_img_srcset = product.featured_image %}
{% set item_img_alt = product.featured_image.alt %}
{% set item_col = settings.sm_shop_col %}

{% set description_array = [] %}
{% set space = " " %}
{% set dash = "-" %}
{% set name_var = product.name | replace(space, "") %}
{% set name_dash_var = product.name | replace(dash, " ") | replace(space, "-") %}

{% set section_array = product.description | striptags | convert_encoding('UTF-8', 'HTML-ENTITIES') | split("---") %}

{% if item_col == 2 %}
    {% set column_item = "col-md-6" %}
{% elseif item_col == 3 %}
    {% set column_item = "col-md-4" %}
{% else %}
    {% set column_item = "col-md-3" %}
{% endif %}

{% for section in section_array %}
    {% set description_array = description_array | merge([section]) %}
{% endfor %}


<div class="item col-12 {{column_item}}" data-product-type="list" data-product-id="{{ product.id }}" data-store="product-item-{{ product.id }}" data-component="product-list-item" data-component-value="{{ product.id }}" data-transition="scale-out-image">
	<div class="row product {% if loop.index % 2 == 0 %} product-bg-alt {% else %}product-bg {% endif %} text-center align-items-center">
		<div class="col-12 col-md-5">
			<img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset="{{ item_img_srcset | product_image_url('medium')}}" alt="{{ item_img_alt }}" class="lazyload h-100 w-100" style="max-height: 200px; max-width: 150px;">
		</div>
		<div class="col-12 col-md-7 py-2 ">
			<h2>{{product.name}}</h2>
		</div>
		<div class="col-12 pb-2">
			<strong>{{description_array[0]}}</strong>
		</div>
		<div class="col-6 product-price">
			{{product.price | money}}
		</div>
		<div class="col-6">
        {% if product.has_stock %}
			<div>
				<a href="https://fuegoycafe.mx/productos#{{name_dash_var}}" class="product-btn">Ver más</a>
			</div>
        {% else %}
			<div>
				<a href="#" class="product-btn-nostock">Sin Stock</a>
			</div>
            
        {% endif %}
        
		</div>
	</div>
	{% include 'snipplets/labels.tpl' %}
	{# Structured data to provide information for Google about the product content #}
	<div>
		{{ component('structured-data', {'item': true}) }}
	</div>
</div>
