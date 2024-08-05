<div class="row nosotros_seccion1_bg align-items-center">
	<div class="col-12 col-md-8">
		<div class="row gap-3 pt-5">
			{% if settings.nosotros_seccion1_titulo %}
				<div class="col-12 px-2">
					<h2 class="h6 mb-4 nosotros-text-color">{{ settings.nosotros_seccion1_titulo }}</h2>
				</div>
			{% endif %}
			{% if settings.nosotros_seccion1_texto %}
				<div class="col-12 px-2 text_nosotros_size">
					{{ settings.nosotros_seccion1_texto }}
				</div>
			{% endif %}
		</div>

	</div>
	<div class="col-12 col-md-4 p-5 text-center">
		{% if "nosotros1.jpg" | has_custom_image %}
			<img style="width: 100%" src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ "nosotros1.jpg" | static_url }}" class="lazyload" alt="Seccion nosotros"/>
		{% endif %}
	</div>
</div>
<div class="row nosotros_seccion2_bg align-items-center pb-5">
	{% if settings.nosotros_seccion2_titulo %}
		<div class="col-12 col-md-6 px-2 pt-4">
			<h2 class="subtitlenosotros mb-4 nosotros-text2-color">{{ settings.nosotros_seccion2_titulo }}</h2>
		</div>
		<div class="col-12 col-md-6 px-2 pt-4"></div>
	{% endif %}
	{% if "nosotros2.jpg" | has_custom_image %}
		<div class="col-12 col-md-4 px-5 text-center">
			<img style="width: 80%" src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ "nosotros2.jpg" | static_url }}" class="lazyload" alt="Seccion nosotros"/>
		</div>
	{% endif %}
	{% if settings.nosotros_seccion2_texto_p1 %}
		<div class="col-12 col-md-8 px-2 text_nosotros_size nosotros-text2-color">
			{{ settings.nosotros_seccion2_texto_p1 }}
		</div>
	{% endif %}

	{% if settings.nosotros_seccion2_texto_p2 %}
		<div class="col-12 col-md-8 px-2 text_nosotros_size nosotros-text2-color">
			{{ settings.nosotros_seccion2_texto_p2 }}
		</div>
	{% endif %}

	{% if "nosotros3.jpg" | has_custom_image %}
		<div class="col-12 col-md-4 px-5 text-center">
			<img style="width: 80%" src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ "nosotros3.jpg" | static_url }}" class="lazyload" alt="Seccion nosotros"/>
		</div>
	{% endif %}
</div>

<div class="row nosotros_seccion1_bg align-items-center py-5">
	<div class="col-12">
		{% include "snipplets/home/home-instafeed.tpl" %}
	</div>
</div>
