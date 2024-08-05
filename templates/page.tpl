{% set clase_seccion = "" %}

{% if page.name | lower == "nosotros" %}
	{% set clase_seccion = "section-nosotros" %}
{% elseif  page.name | lower == "recetas" %}
	{% set clase_seccion = "section-recetas" %}
{% elseif  page.name | lower == "laboratorio" %}
	{% set clase_seccion = "section-laboratorio" %}
{% else %}
	{% set clase_seccion = "user-content" %}
{% endif %}

<section class="{{clase_seccion}}">
	<div class="container-fluid">
		{% if page.name | lower == "nosotros" %}
			{#  **** Snipplets Nosotros ****  #}
			{% include "snipplets/nosotros/nosotros.tpl" with {class_section: clase_seccion}%}
		{% elseif  page.name | lower == "recetas" %}
			{#  **** Snipplets Recetas ****  #}
			{% include "snipplets/recetas/recetas.tpl" %}
		{% elseif  page.name | lower == "laboratorio" %}
			{#  **** Snipplets Laboratorio ****  #}
			{% include "snipplets/laboratorio/laboratorio.tpl" %}
		{% else %}
			<div class="row">
				<div class="col-md-8">
					{{ page.content }}
				</div>
			</div>
		{% endif %}
	</div>
</section>
