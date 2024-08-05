{% if products and pages.is_last %}
	<div class="last-page" style="display:none;"></div>
{% endif %}
{% for product in products %}   
    {% include 'snipplets/grid/item.tpl' %}
{% endfor %}

{# TODO: Pasar formal codigo #}
<script>
	document.addEventListener('click', function (event) {

		// If the clicked element doesn't have the right selector, bail
		if (!event.target.matches('.click-me')) return;

		// Don't follow the link
		event.preventDefault();

		// Log the clicked element in the console
		alert(event.explicitOriginalTarget.dataset.nombre);

	}, false);

	// $("a").on("click", function (productJs) {
	// 	productJs.preventDefault();
	// 	alert(this.dataset.nombre);

	// });
</script>