{# /*============================================================================
  #Item grid
==============================================================================*/

#Properties

#Slide Item

#}

{% set slide_item = slide_item | default(false) %}

{% if template == 'home'%}
    {% set columns_desktop = section_columns_desktop %}
    {% set columns_mobile = section_columns_mobile %}
{% else %}
    {% set columns_desktop = settings.grid_columns_desktop %}
    {% set columns_mobile = settings.grid_columns_mobile %}
{% endif %}

{% if slide_item %}
    <div class="swiper-slide h-auto">
{% endif %}
<div class="{% if slide_item %} js-item-slide p-0 h-100{% endif %}{% if not slide_item %} col-{% if columns_mobile == 1 %}12{% else %}6{% endif %} col-md-{% if columns_desktop == 2 %}6{% elseif columns_desktop == 3 %}4{% else %}3{% endif %}{% endif %} item-product right-line bottom-line">
    <div class="item{% if slide_item %} mb-0{% endif %} {{ item_class }}">
        <div class="item-image bottom-line">
            <div class="position-relative">
                <a href="{{ store.url }}/product/example" title="{{ "Producto de ejemplo" | translate }}">
                    {% if help_item_1 %}
                        {% include "snipplets/svg/help/help-product-1.tpl" %}
                    {% elseif help_item_2 %}
                        {% include "snipplets/svg/help/help-product-2.tpl" %}
                    {% elseif help_item_3 %}
                        {% include "snipplets/svg/help/help-product-3.tpl" %}
                    {% elseif help_item_4 %}
                        {% include "snipplets/svg/help/help-product-4.tpl" %}
                    {% elseif help_item_5 %}
                        {% include "snipplets/svg/help/help-product-5.tpl" %}
                    {% elseif help_item_6 %}
                        {% include "snipplets/svg/help/help-product-6.tpl" %}
                    {% elseif help_item_7 %}
                        {% include "snipplets/svg/help/help-product-7.tpl" %}
                    {% elseif help_item_8 %}
                        {% include "snipplets/svg/help/help-product-8.tpl" %}
                    {% endif %}
                </a>
            </div>
            {% if help_item_1 %}
                <div class="labels">
                    <div class="label label-accent">{{ "-20%" | translate }}</div>
                </div>
            {% elseif help_item_2 %}
                <div class="labels">
                    <div class="label label-top">{{ "Envío gratis" | translate }}</div>
                </div>
            {% elseif help_item_3 %}
                <div class="labels">
                    <div class="label label-accent">{{ "-35%" | translate }}</div>
                </div>
            {% elseif help_item_7 %}
                <div class="labels">
                    <div class="label label-accent">{{ "-20%" | translate }}</div>
                </div>
            {% endif %}
        </div>
        <div class="item-description">
            <a href="{{ store.url }}/product/example" title="{{ "Producto de ejemplo" | translate }}" class="item-link">
                <div class="px-3 p-2 my-1 bottom-line">
                    <div class="item-name mb-2">{{ "Producto de ejemplo" | translate }}</div>
                </div>
                <div class="item-price-container px-3 p-2">
                    {% if help_item_1 %}
                        {% if store.country == 'BR' %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"9600" | money }}
                            </span>
                            <span id="compare_price_display" class="js-compare-price-display price-compare">
                                {{"120000" | money }}
                            </span>
                        {% else %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"96000" | money }}
                            </span>
                            <span id="compare_price_display" class="js-compare-price-display price-compare">
                                {{"1200000" | money }}
                            </span>
                        {% endif %}
                    {% elseif help_item_2 %}
                        {% if store.country == 'BR' %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"68000" | money }}
                            </span>
                        {% else %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"680000" | money }}
                            </span>
                        {% endif %}
                    {% elseif help_item_3 %}
                        {% if store.country == 'BR' %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"18200" | money }}
                            </span>
                            <span id="compare_price_display" class="js-compare-price-display price-compare">
                                {{"28000" | money }}
                            </span>
                        {% else %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"182000" | money }}
                            </span>
                            <span id="compare_price_display" class="js-compare-price-display price-compare">
                                {{"280000" | money }}
                            </span>
                        {% endif %}
                    {% elseif help_item_4 %}
                        {% if store.country == 'BR' %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"32000" | money }}
                            </span>
                        {% else %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"320000" | money }}
                            </span>
                        {% endif %}
                    {% elseif help_item_5 %}
                        {% if store.country == 'BR' %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"24900" | money }}
                            </span>
                        {% else %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"249000" | money }}
                            </span>
                        {% endif %}
                    {% elseif help_item_6 %}
                        {% if store.country == 'BR' %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"42000" | money }}
                            </span>
                        {% else %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"420000" | money }}
                            </span>
                        {% endif %}
                    {% elseif help_item_7 %}
                        {% if store.country == 'BR' %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"36800" | money }}
                            </span>
                            <span id="compare_price_display" class="js-compare-price-display price-compare">
                                {{"46000" | money }}
                            </span>
                        {% else %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"368000" | money }}
                            </span>
                            <span id="compare_price_display" class="js-compare-price-display price-compare">
                                {{"460000" | money }}
                            </span>
                        {% endif %}
                    {% elseif help_item_8 %}
                        {% if store.country == 'BR' %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"12200" | money }}
                            </span>
                        {% else %}
                            <span id="price_display" class="js-price-display item-price font-weight-bold">
                                {{"122000" | money }}
                            </span>
                        {% endif %}
                    {% endif %}
                </div>
            </a>
        </div>
    </div>
</div>
{% if slide_item %}
    </div>
{% endif %}