{% set description_array = [] %}
{% set details_array = [] %}
{% set options_array = [] %}
{% set prices_array = [] %}
{% set space = " " %}

{% set name_var = product.name | replace(space, "") %}
{% set id_name = "shop-modal-" ~ name_var  %}

{% set section_array = product.description | striptags | convert_encoding('UTF-8', 'HTML-ENTITIES')
| split("---") %}

{% for section in section_array %}
	{% set description_array = description_array | merge([section]) %}
{% endfor %}


{% set section_details_array = description_array[2] | split("#") %}
{% for details in section_details_array %}
	{% set details_array = details_array | merge([details]) %}
{% endfor %}

{% for variation in product.variations %}
    {% for option in variation.options %}
        {% set options_array = options_array | merge([option]) %}
    {% endfor %}
{% endfor %}



{% embed "snipplets/modal.tpl" with{modal_id: id_name, modal_position: 'bottom', modal_transition: 'slide', modal_header: false, modal_footer: false, modal_width: 'centered', modal_class: 'centered-medium shop-modal-product', modal_close_class: 'invert mt-2 mr-3'} %}
	{% block modal_body %}
		<div class="row px-4 align-items-center">
			<div class="col-12">
				<div class="row align-items-center">
					<div class="col-6 col-md-8 shop-modal-title">
						{{product.name}}
					</div>
					{% set prices_array = [] %}
					{% for option in options_array %}
						{% set found = false %}
						{% for variations in product.variants_object %}
							{% if option.name == variations.option0 and found == false %}
								{% set prices_array = prices_array | merge([{money: variations.price_short, optionName: option.name}]) %}
								{% set found = true %}
							{% endif %}
						{% endfor %}
						
					{% endfor %}
					{% for price in prices_array %}
						<div id="price_{{ name_var }}_{{ price.optionName }}" class="col-6 col-md-4 text-end shop-modal-mini-description" {% if loop.index != 1%} style="display: none;" {% endif %}>
							{{price.money}}
						</div>
					{% endfor %}
				</div>
			</div>
			<div class="col-12">
				<div class="row">
					<div class="col-4 shop-modal-subtitle">Origen:</div>
					<div class="col-8 text-end shop-modal-description">{{details_array[0]}}</div>
				</div>
			</div>
			<div class="col-12">
				<div class="row">
					<div class="col-4 shop-modal-subtitle">Finca:</div>
					<div class="col-8 text-end shop-modal-description">{{details_array[1]}}</div>
				</div>
			</div>
			<div class="col-12">
				<div class="row">
					<div class="col-4 shop-modal-subtitle">Cosecha:</div>
					<div class="col-8 text-end shop-modal-description">{{details_array[2]}}</div>
				</div>
			</div>
			<div class="col-12">
				<div class="row">
					<div class="col-4 shop-modal-subtitle">Altura:</div>
					<div class="col-8 text-end shop-modal-description">{{details_array[3]}}</div>
				</div>
			</div>
			<div class="col-12">
				<div class="row align-items-center ">
					<div class="col-4 shop-modal-subtitle">Puntación SCA:</div>
					<div class="col-8 text-end shop-modal-description">{{details_array[4]}}</div>
				</div>
			</div>
			<div class="col-12">
				<div class="row">
					<div class="col-4 shop-modal-subtitle">Tamaño:</div>
					<div class="col-8 text-end shop-modal-description">
                        {% for option in options_array %}
							{% set condition = "g" in option.name %}
							{% if condition == 1 %}
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="inlineRadioOptions-{{name_var}}" id="inlineRadio{{loop.index}}-{{name_var}}" value="{{ option.name }}" data-option="{{ option.id }}" data-variation-id="{{ variation.id }}" {% if loop.index == 1 %} checked {% endif %}>
									<label class="form-check-label" for="inlineRadio{{loop.index}}-{{name_var}}">{{ option.name }}</label>
								</div>
							{% endif %}
                        {% endfor %}
                    </div>
				</div>
			</div>
			<div class="col-12">
				<div class="row">
					<div class="col-4 shop-modal-subtitle">Molido:</div>
					<div class="col-8 text-end shop-modal-description">
						{% for option in options_array %}
							{% set condition = "g" in option.name %}
							{% if condition != 1 %}
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="inlineRadioOptionsMolido-{{name_var}}" id="inlineRadio{{loop.index}}-{{name_var}}" value="{{ option.name }}" data-option="{{ option.id }}" data-variation-id="{{ variation.id }}" {% if loop.index == 1 %} checked {% endif %}>
									<label class="form-check-label" for="inlineRadio{{loop.index}}-{{name_var}}">{{ option.name }}</label>
								</div>
							{% endif %}
						{% endfor %}
					</div>
				</div>
			</div>

			<div class="col-12 text-end mt-4">
				<div>
					<a href="#" class="product-btn js-modal-close">Cerrar</a>
				</div>
			</div>
		</div>
	{% endblock %}
{% endembed %}
