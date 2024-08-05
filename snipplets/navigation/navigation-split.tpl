{% set limit = limit_loop  %}
{% set posicion = posicion_loop | default("start") %}
{% set home = is_home | default(false) %}

{% if home %}
	{% for item in navigation %}
		{% if loop.index <= limit and posicion == "start" %}
			<div class="col-4 my-1">
				<a href="{{ item.url | default('#') }}" class="{{ item.current ? 'selected' : '' }}" {% if item.url | is_external %} target="_blank" {% endif %}>{{ item.name }}</a>
			</div>
		{% elseif loop.index >= limit and posicion == "end"%}
			<div class="col-4 my-1">
				<a href="{{ item.url | default('#') }}" class="{{ item.current ? 'selected' : '' }}" {% if item.url | is_external %} target="_blank" {% endif %}>{{ item.name }}</a>
			</div>
		{% endif %}
	{% endfor %}

{% else %}
	{% for item in navigation %}
		<div class="col-4 my-2">
			<a href="{{ item.url | default('#') }}" class="{{ item.current ? 'selected' : '' }}" {% if item.url | is_external %} target="_blank" {% endif %}>{{ item.name }}</a>
		</div>
	{% endfor %}
{% endif %}
