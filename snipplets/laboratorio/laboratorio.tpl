<div class="row pb-5">
	{% if "laboratorio.jpg" | has_custom_image %}
	<div class="col-12 px-0">
		<img style="width: 100%; max-height: 620px; overflow: hidden;" src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ "laboratorio.jpg" | static_url }}" class="lazyload" alt="Seccion laboratorio"/>
	</div>
	{% endif %}
	
	{% if settings.titulo_laboratorio %}
	<div class="col-12 p-3">
		<div class="col-12 px-0">
			<h2 class="h6 mb-4 laboratorio-text-color">{{ settings.titulo_laboratorio }}</h2>
		</div>
	</div>
	{% endif %}
	
	{% if settings.parrafo_laboratorio %}
	<div class="col-12 py-2 px-5 laboratorio-text-color text_laboratorio_size text-center">
		{{ settings.parrafo_laboratorio }}
	</div>
	{% endif %}
	
	{% if "laboratorio2.jpg" | has_custom_image %}
	<div class="col-12 py-3 text-center">
		<img style="width: 70%; max-width: 970px" src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ "laboratorio2.jpg" | static_url }}" class="lazyload" alt="Seccion laboratorio imagen central"/>
	</div>
	{% endif %}
	<div class="col-12 col-md-6 py-2 laboratorio-text-color text_laboratorio_size ">
		<div class="laboratorio-text-color text-center pb-5" style=" font-weight: bold;">
			{{ settings.parrafo2_laboratorio_titulo }}
		</div>
		<div class="text-center" style="text-align: justify !important;">
			{{ settings.parrafo2_laboratorio }}
		</div>
	</div>
	<div class="col-12 col-md-6 py-2 laboratorio-text-color text_laboratorio_size">
		<div class="laboratorio-text-color text-center pb-5" style=" font-weight: bold;">
			{{ settings.parrafo3_laboratorio_titulo }}
		</div>
		<div class="text-center" style="text-align: justify !important;">
			{{ settings.parrafo3_laboratorio }}
		</div>
	</div>
	
</div>