{# Product quantity #}
        
<div class="col-5">
    {% embed "snipplets/forms/form-input.tpl" with{
    type_number: true, input_value: '1',
    input_name: 'quantity' ~ item.id, 
    input_custom_class: 'js-quantity-input', 
    input_label: false, 
    input_append_content: true, 
    input_group_custom_class: 'js-quantity form-quantity', 
    form_control_container_custom_class: 'col',
    form_data_component: 'product.adding-amount',
    form_control_quantity: true,
    input_min: '1',
    data_component: 'adding-amount.value',
    input_aria_label: 'Cambiar cantidad' | translate } %}
        {% block input_prepend_content %}
        <div class="form-row m-0 align-items-center right-line" data-component="product.quantity">
            <span class="js-quantity-down form-quantity-icon icon-48px right-line my-neg-1" data-component="product.quantity.minus">
                {% include "snipplets/svg/minus.tpl" with {svg_custom_class: "icon-inline"} %}
            </span>
        {% endblock input_prepend_content %}
        {% block input_append_content %}
            <span class="js-quantity-up form-quantity-icon icon-48px left-line my-neg-1" data-component="product.quantity.plus">
                {% include "snipplets/svg/plus.tpl" with {svg_custom_class: "icon-inline"} %}
            </span>
        </div>
        {% endblock input_append_content %}
    {% endembed %}
    {% if settings.product_stock %}
        <div class="font-small py-2 text-center">
            <span class="js-product-stock">{{ product.selected_or_first_available_variant.stock }}</span> {{ "en stock" | translate }}
        </div>
    {% endif %}
</div>