{% for category in categories %}
    {% if category.handle == category_handle %}
        {% set category_name = category.name %}
        <div class="home-category-name right-line">
            <div class="home-category-name-item font-small">{{ category_name }}</div>
        </div>
    {% endif %}
    {% include 'snipplets/home/home-categories-name.tpl' with { 'categories' : category.subcategories } %}
{% endfor %}