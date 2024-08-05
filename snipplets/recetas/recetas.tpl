{% set has_methods = settings.imagenes_receta and not settings.imagenes_receta is empty %}
{% set box_title = settings.page_recetas_box_title %}
{% set box_info = settings.page_recetas_box_info %}
{% set methods_info = [] %}
{% set icons_title = [] %}

{% if has_methods %}
	{% set gallery_icons = settings.imagenes_receta %}
	{% for method in gallery_icons %}
		{% set setting_index_title = "page_recetas_method" ~ loop.index ~ "_title" %}
		{% set setting_index_content = "page_recetas_method" ~ loop.index ~ "_content" %}
		{% set setting_index_video = "page_recetas_method" ~ loop.index ~ "_video" %}
		{% set methods_info = methods_info | merge([{title: attribute(settings, setting_index_title), content: attribute(settings, setting_index_content), video: attribute(settings, setting_index_video)}]) %}
	{% endfor %}
{% endif %}

{% if template == 'home'%}
	<section class="{{class_section}}-home pb-5">
		<div class="container">
			<div class="row d-flex align-items-center justify-content-center" style="padding-bottom: 50px;">
				<p class="col-12 col-md-7 title">{{settings.data_receta_title}}</p>

				{% if "receta_icon.jpg" | has_custom_image %}
					<img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ "receta_icon.jpg" | static_url }}" class="lazyload icon-superior" alt="Icono superior de Contactanos"/>
				{% endif %}
			</div>
			<div class="row gap-3 d-flex flex-wrap justify-content-center">
				{% set gallery_icons = settings.imagenes_receta %}
				{% for icon in gallery_icons %}
					<div class="col-6 col-md-3 p-3 icon-methods">
						<a {% if icon.link %} href="{{icon.link}}#{{icon.title}}" {% else %} href="#" {% endif %}>
							<img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{icon.image | static_url}}" class="lazyload" alt="Icono de metodo {{loop.index}}"/>
						</a>
					</div>
					{% if loop.index == 4 %}
					<div class="w-100"></div>
					{% endif %}
				{% endfor %}
			</div>
		</section>
	</div>
{% else %}
	<div class="row gap-3 gap-lg-5 justify-content-center">
		<div class="col-12 mt-5">
			<div class="row align-items-center">
				<h2 class="m-0 col-9 col-md-10">{{ settings.page_recetas_title }}</h2>
				<a href="https://fuegoycafe.mx/recetas/" class="col-3 col-md-2 text-center">
					<svg id="receta-help" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 66 60" fill="none" style="width: 100%; height: 100%; max-width: 66px; max-height: 66px;">
						<g clip-path="url(#clip0_480_158)">
							<path
								d="M33.0422 0.454529C50.969 0.454529 65.5006 13.682 65.5006 30C65.5006 46.3179 50.969 59.5454 33.0422 59.5454C15.1154 59.5454 0.583832 46.3179 0.583832 30C0.583832 13.682 15.1154 0.454529 33.0422 0.454529ZM33.0422 41.8182C32.1814 41.8182 31.3558 42.1294 30.7471 42.6835C30.1383 43.2376 29.7964 43.9891 29.7964 44.7727C29.7964 45.5563 30.1383 46.3078 30.7471 46.8619C31.3558 47.416 32.1814 47.7273 33.0422 47.7273C33.9031 47.7273 34.7287 47.416 35.3374 46.8619C35.9461 46.3078 36.2881 45.5563 36.2881 44.7727C36.2881 43.9891 35.9461 43.2376 35.3374 42.6835C34.7287 42.1294 33.9031 41.8182 33.0422 41.8182ZM33.0422 13.75C29.9216 13.75 26.9289 14.8784 24.7223 16.8869C22.5157 18.8955 21.2761 21.6197 21.2761 24.4602C21.2761 25.2438 21.618 25.9953 22.2267 26.5494C22.8354 27.1035 23.661 27.4148 24.5219 27.4148C25.3827 27.4148 26.2083 27.1035 26.817 26.5494C27.4258 25.9953 27.7677 25.2438 27.7677 24.4602C27.7688 23.5887 28.0304 22.7339 28.5246 21.9875C29.0188 21.2411 29.7268 20.6312 30.5728 20.2232C31.4188 19.8151 32.3708 19.6244 33.3268 19.6715C34.2829 19.7185 35.2068 20.0015 35.9995 20.4901C36.7923 20.9787 37.424 21.6546 37.8269 22.4451C38.2298 23.2357 38.3887 24.1111 38.2866 24.9777C38.1845 25.8442 37.8252 26.669 37.2473 27.3638C36.6693 28.0586 35.8945 28.5971 35.0059 28.9216C32.8118 29.7193 29.7964 31.7638 29.7964 35.1704V35.9091C29.7964 36.6927 30.1383 37.4442 30.7471 37.9982C31.3558 38.5523 32.1814 38.8636 33.0422 38.8636C33.9031 38.8636 34.7287 38.5523 35.3374 37.9982C35.9461 37.4442 36.2881 36.6927 36.2881 35.9091C36.2881 35.1882 36.4503 34.8277 37.1352 34.5204L37.4176 34.4023C39.952 33.4742 42.0528 31.7726 43.3599 29.5891C44.6669 27.4055 45.0989 24.8762 44.5816 22.4345C44.0643 19.9929 42.63 17.7911 40.5247 16.2066C38.4193 14.6221 35.774 13.7536 33.0422 13.75Z"
								fill="{{ settings.page_recetas_accent }}" />
						</g>
						<defs>
							<clipPath id="clip0_480_158">
								<rect width="65.9155" height="60" fill="white" transform="translate(0.0844727)" />
							</clipPath>
						</defs>
					</svg>
				</a>
			</div>
		</div>
		{% if has_methods %}
		<div class="col-12">
			<div class="row gap-3 gap-lg-5 justify-content-center">
				{% set gallery_icons = settings.imagenes_receta %}
				{% for icon in gallery_icons %}
					{% set icons_title = icons_title | merge([icon.title]) %}
					<div id="{{icon.title}}" class="col-5 col-md-2 col-lg-1 p-3 text-center icon-methods" style="border: 6px solid {{settings.page_recetas_fg}};">
						<a {% if icon.link %} href="{{icon.link}}#{{icon.title}}" {% else %} href="#" {% endif %}>
							<img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{icon.image | static_url}}" class="lazyload" alt="Icono de metodo {{loop.index}}"
							style="filter: saturate(100%) brightness(0%);"/>
						</a>
						<h3>{{icon.title}}</h3>
					</div>
				{% endfor %}
			</div>	
		</div>
		{% endif %}
		{% if box_title and box_info %}
			<div id="box-main" class="col-12 box-content px-5">
				<div class="row text-center gap-3">
					<h3 class="col-12">{{ box_title }}</h3>
					<p class="col-12">{{ box_info }}</p>
				</div>
			</div>
			{% if has_methods %}
				{% for method in methods_info %}
					<div id="box-{{icons_title[loop.index - 1]}}" class="col-12 box-content-alt px-5" style="display: none;">
						<div class="row text-center gap-3">
							<h3 class="col-12">{{method.title}}</h3>
							<p class="col-12">{{method.content}}</p>
						</div>
					</div>
				{% endfor %}
			{% endif %}
			
		{% endif %}
		<hr class="col-12">
		{% if has_methods %}
			{% for method in methods_info %}
				<div id="video-{{icons_title[loop.index - 1]}}" class="col-12 box-video" style="display: none;">
					<iframe src="{{method.video | replace("watch?v=", "embed/")}}" title="FuegoyCafé - Video de Receta" frameBorder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						allowFullScreen>
					</iframe>
				</div>
			{% endfor %}
		{% endif %}
	</div>
{% endif %}