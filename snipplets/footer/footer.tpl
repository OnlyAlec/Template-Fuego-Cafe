{% set has_social = settings.footer_social and settings.footer_social is not empty %}
{% set has_text = settings.footer_text and settings.footer_text is not empty %}
{% set has_logo = "footer_logo.png" | has_custom_image %}


<footer class="js-footer js-hide-footer-while-scrolling display-when-content-ready overflow-none" data-store="footer">
	<div class="container-fluid p-0">
		<div class="footer-own row justify-content-center align-items-center text-center">
			<div class="col-12 col-md-3 m-3">
				<div class="row footer-link">
					{% include "snipplets/navigation/navigation-split.tpl" %}
				</div>
			</div>

			<div class="col-12 col-md-3 m-3">
				<img src="{{ 'static/images/empty-placeholder.png' | static_url }}" data-src="{{ "footer_logo.png" | static_url }}" alt="Logo Footer" class="lazyload" style="max-width:300px; max-height:70px">
			</div>

			<div class="col-12 col-md-3 m-3">
				{% if has_social %}
					{% set gallery_social = settings.footer_social %}
					<div class="row mx-3 social-icons align-content-center justify-content-around ">
						{% for icon in gallery_social %}
							<a {% if icon.link %} href="{{icon.link}}" {% else %} href="#" {% endif %}>
								<img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{icon.image | static_url}}" class="lazyload" alt="Icono Social {{loop.index}}"/>
							</a>
						{% endfor %}
					</div>
				{% endif %}
			</div>
			{% if has_text %}
				<div class="col-12 m-4">
					{{settings.footer_text}}
				</div>
			{% endif %}

			<div class="js-footer-powered-by col-md-auto p-md-3 px-3 pb-3">
				{{ new_powered_by_link }}
			</div>
		</div>
	</div>
</footer>
