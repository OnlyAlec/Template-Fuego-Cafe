{# /*============================================================================
  #Form
==============================================================================*/

#Properties
 
    // id
    // action
    // custom_class for custom CSS classes
    // Cancel if cancel button is needed
#}

<form id="{{ form_id }}" action="{{ form_action }}" method="post" class="js-form form {{ form_custom_class }}" {% if data_store %}data-store="{{ data_store }}"{% endif %}>
    {% block form_body %}
    {% endblock%}
    {% if cancel %}
        <a href="#" class="{{ cancel_custom_class }} btn btn-default">{{ cancel_text }}</a>
    {% endif %}
    <button class="btn btn-primary btn-big {{ submit_custom_class }}" type="submit" value="{{ submit_text }}" name="{{ submit_name }}" {{ submit_prop }}>
        {{ submit_text }}
        <span class="js-form-spinner" style="display:none;">{% include "snipplets/svg/spinner-third.tpl" with {svg_custom_class: "icon-inline icon-spin ml-3"} %}</span>
    </button>
</form>
