<ul class="list {% if footer %}font-small p-3 bottom-line no-line-md{% else %}p-3{% endif %}">
	{% if store.whatsapp %}
		<li class="{% if footer %}footer-menu-item{% else %}mb-2{% endif %}">
			<a href="{{ store.whatsapp }}" class="{% if btn_link %}btn{% else %}contact{% endif %}-link">
				{% if with_icons %}
					{% include "snipplets/svg/whatsapp.tpl" with {svg_custom_class: "icon-inline mr-1 font-body"} %}
				{% endif %}
				{{ store.whatsapp |trim('https://wa.me/') }}
			</a>
		</li>
	{% endif %}
	{% if store.phone %}
		<li class="{% if footer %}footer-menu-item{% else %}mb-2{% endif %}">
			<a href="tel:{{ store.phone }}" class="{% if btn_link %}btn{% else %}contact{% endif %}-link">
				{% if with_icons %}
					{% include "snipplets/svg/phone.tpl" with {svg_custom_class: "icon-inline mr-1 font-body"} %}
				{% endif %}
				{{ store.phone }}
			</a>
		</li>
	{% endif %}
	{% if store.email %}
		<li class="{% if footer %}footer-menu-item{% else %}mb-2{% endif %}">
			<a href="mailto:{{ store.email }}" class="{% if btn_link %}btn{% else %}contact{% endif %}-link">
				{% if with_icons %}
					{% include "snipplets/svg/email.tpl" with {svg_custom_class: "icon-inline mr-1 font-body"} %}
				{% endif %}
				{{ store.email }}
			</a>
		</li>
	{% endif %}
	{% if store.address and not is_order_cancellation %}
		<li class="{% if footer %}footer-menu-item{% else %}mb-2{% endif %}">
			{% if with_icons %}
				{% include "snipplets/svg/map-marker-alt.tpl" with {svg_custom_class: "icon-inline mr-1 font-body"} %}
			{% endif %}
			{{ store.address }}
		</li>
	{% endif %}
	{% if store.blog %}
		<li class="{% if footer %}footer-menu-item{% else %}mb-2{% endif %}">
			<a target="_blank" href="{{ store.blog }}" class="{% if btn_link %}btn{% else %}contact{% endif %}-link">
				{% if with_icons %}
					{% include "snipplets/svg/comments.tpl" with {svg_custom_class: "icon-inline mr-1 font-body"} %}
				{% endif %}
				{{ "¡Visitá nuestro Blog!" | translate }}
			</a>
		</li>
	{% endif %}
</ul>