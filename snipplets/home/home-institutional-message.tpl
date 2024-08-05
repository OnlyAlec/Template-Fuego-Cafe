{% set var = value %}

{% if settings.institutional_message or settings.institutional_text %}
	<section class="section-institutional-home bottom-line" data-store="home-institutional-message">
		<div class="container">
			<div class="row{% if settings.institutional_align == 'center' %} text-center{% endif %} justify-content-center">
				<div class="col-md-12">
					{% if settings.institutional_message %}
						<h2 class="h6 mb-4 color-institucion">
							{{ settings.institutional_message }}
						</h2>
					{% endif %}
					{% if settings.institutional_text %}
						<p class="mb-4 institutional_text" style="font-size: {{settings.institucional_size}}">{{ settings.institutional_text }}</p>
					{% endif %}
					{% if settings.institutional_button and settings.institutional_link %}
						<a href="{{ settings.institutional_link }}" class="btn btn-link d-inline-block">{{ settings.institutional_button }}</a>
					{% endif %}
				</div>
			</div>
			<div class="row" style="margin-top: 50px;">
				{% if settings.institutional_col1_message and settings.institutional_col1_title %}
					<div class="col-12 col-md-4">
						<p class="institutional-col-message" style="font-size: {{settings.institucional_col_message_size}}">
							{{ settings.institutional_col1_message }}
						</p>
						<br>
						<p class="institutional-col-title">
							{{ settings.institutional_col1_title }}
						</p>
					</div>
				{% endif %}
				{% if settings.institutional_col2_message and settings.institutional_col2_title %}
					<div class="col-12 col-md-4">
						<p class="institutional-col-message" style="font-size: {{settings.institucional_col_message_size}}">
							{{ settings.institutional_col2_message }}
						</p>
						<br>
						<p class="institutional-col-title">
							{{ settings.institutional_col2_title }}
						</p>
					</div>
				{% endif %}
				{% if settings.institutional_col3_message and settings.institutional_col3_title %}
					<div class="col-12 col-md-4">
						<p class="institutional-col-message" style="font-size: {{settings.institucional_col_message_size}}">
							{{ settings.institutional_col3_message }}
						</p>
						<br>
						<p class="institutional-col-title">
							{{ settings.institutional_col3_title }}
						</p>
					</div>
				{% endif %}

			</div>
		</div>
	</section>
{% endif %}
