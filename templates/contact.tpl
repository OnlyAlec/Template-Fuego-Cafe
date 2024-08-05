
<section class="section-contactanos bottom-line" data-store="contactanos-message">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-12 col-md-6 px-2 d-flex align-items-center">
					{% if "contactanos.jpg" | has_custom_image %}
					<img style="width: 100%;" src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ "contactanos.jpg" | static_url }}" class="lazyload" alt="Seccion contactanos"/>
					{% endif %}
				</div>
				<div class="col-12 col-md-6">
					<div class="row gap-3 pt-5">
						{% if settings.data_contactanos_titulo %}
						<div class="col-12 px-2">
							<h2 class="h6 mb-4">{{ settings.data_contactanos_titulo }}</h2>
						</div>
						{% endif %}
						<div class="col-12 px-2">
							<div class="row mx-3 align-items-center">
								{% if settings.data_contactanos_whatsapp %}
								{% set numerowhatapp = settings.data_contactanos_whatsapp %}
								<div class="col-3 col-md-2 text_contactanos_size text-center">
									<svg xmlns="http://www.w3.org/2000/svg" class="icon_contactanos_whatsapp icon_contactanos_color" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#currentColor" d="M380.9 97.1C339 55.1 283.2 32 223.9 32c-122.4 0-222 99.6-222 222 0 39.1 10.2 77.3 29.6 111L0 480l117.7-30.9c32.4 17.7 68.9 27 106.1 27h.1c122.3 0 224.1-99.6 224.1-222 0-59.3-25.2-115-67.1-157zm-157 341.6c-33.2 0-65.7-8.9-94-25.7l-6.7-4-69.8 18.3L72 359.2l-4.4-7c-18.5-29.4-28.2-63.3-28.2-98.2 0-101.7 82.8-184.5 184.6-184.5 49.3 0 95.6 19.2 130.4 54.1 34.8 34.9 56.2 81.2 56.1 130.5 0 101.8-84.9 184.6-186.6 184.6zm101.2-138.2c-5.5-2.8-32.8-16.2-37.9-18-5.1-1.9-8.8-2.8-12.5 2.8-3.7 5.6-14.3 18-17.6 21.8-3.2 3.7-6.5 4.2-12 1.4-32.6-16.3-54-29.1-75.5-66-5.7-9.8 5.7-9.1 16.3-30.3 1.8-3.7 .9-6.9-.5-9.7-1.4-2.8-12.5-30.1-17.1-41.2-4.5-10.8-9.1-9.3-12.5-9.5-3.2-.2-6.9-.2-10.6-.2-3.7 0-9.7 1.4-14.8 6.9-5.1 5.6-19.4 19-19.4 46.3 0 27.3 19.9 53.7 22.6 57.4 2.8 3.7 39.1 59.7 94.8 83.8 35.2 15.2 49 16.5 66.6 13.9 10.7-1.6 32.8-13.4 37.4-26.4 4.6-13 4.6-24.1 3.2-26.4-1.3-2.5-5-3.9-10.5-6.6z"/></svg>
								</div>
								<div class="col-9 col-md-10 pl-0 text_contactanos_size">
									<a href="https://wa.me/{{ numerowhatapp }}">
									{{ settings.data_contactanos_whatsapp }}
									</a>
								</div>
								{% endif %}
								
								{% if settings.data_contactanos_email %}
								<div class="col-3 col-md-2 text_contactanos_size text-center">
									<svg xmlns="http://www.w3.org/2000/svg" class="icon_contactanos_email icon_contactanos_color" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#currentColor" d="M502.3 190.8c3.9-3.1 9.7-.2 9.7 4.7V400c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V195.6c0-5 5.7-7.8 9.7-4.7 22.4 17.4 52.1 39.5 154.1 113.6 21.1 15.4 56.7 47.8 92.2 47.6 35.7 .3 72-32.8 92.3-47.6 102-74.1 131.6-96.3 154-113.7zM256 320c23.2 .4 56.6-29.2 73.4-41.4 132.7-96.3 142.8-104.7 173.4-128.7 5.8-4.5 9.2-11.5 9.2-18.9v-19c0-26.5-21.5-48-48-48H48C21.5 64 0 85.5 0 112v19c0 7.4 3.4 14.3 9.2 18.9 30.6 23.9 40.7 32.4 173.4 128.7 16.8 12.2 50.2 41.8 73.4 41.4z"/></svg>
								</div>
								<div class="col-9 col-md-10 pl-0 text_contactanos_size">
									<a href="mailto:{{ settings.data_contactanos_email }}">
									{{ settings.data_contactanos_email }}
									</a>
								</div>
								{% endif %}
								
								{% if settings.data_contactanos_dirección %}
								<div class="col-3 col-md-2 text_contactanos_size text-center">
									<svg xmlns="http://www.w3.org/2000/svg" class="icon_contactanos_direccion icon_contactanos_color" viewBox="0 0 576 512"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#currentColor" d="M0 117.7v346.3c0 11.3 11.4 19.1 21.9 14.9L160 416V32L20.1 88A32 32 0 0 0 0 117.7zM192 416l192 64V96L192 32v384zM554.1 33.2L416 96v384l139.9-56A32 32 0 0 0 576 394.3V48c0-11.3-11.4-19.1-21.9-14.9z"/></svg>
								</div>
								<div class="col-9 col-md-10 pl-0 text_contactanos_size">
									{{ settings.data_contactanos_dirección }}
								</div>
								{% endif %}
							</div>
						</div>
					</div>
					
				</div>
				{% if settings.data_contactanos_mapa %}
				<div class="col-12 py-5">
					<iframe class="maps-contactanos" src="{{ settings.data_contactanos_mapa }}" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
				{% endif %}
			</div>
			
		</div>
	</div>
</section>