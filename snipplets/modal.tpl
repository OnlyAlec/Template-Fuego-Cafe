{# /*============================================================================
  #Modal
==============================================================================*/

#Properties
    // ID
    // Position - Top, Right, Bottom, Left
    // Transition - Slide and Fade
    // Width - Full and Box
    // modal_form_action - For modals that has a form

#Head
    // Block - modal_head
#Body
    // Block - modal_body
#Footer
    // Block - modal_footer

#}

{% set modal_overlay = modal_overlay | default(true) %}

<div id="{{ modal_id }}" class="js-modal modal modal-{{ modal_class }} modal-{{modal_position}} transition-{{modal_transition}} modal-{{modal_width}} transition-soft" style="display: none;">
    {% if modal_form_action %}
    <form action="{{ modal_form_action }}" method="post" class="{{ modal_form_class }}">
    {% endif %}
    {% if modal_header %}
        <div class="js-modal-close modal-header">
            <span class="modal-close {{ modal_close_class }}">
                {% include "snipplets/svg/times.tpl" with {svg_custom_class: "icon-inline svg-icon-text"} %}
            </span>
            {% block modal_head %}{% endblock %}
        </div>
    {% else %}
        <span class="js-modal-close modal-close no-header {{ modal_close_class }}">
            {% include "snipplets/svg/times.tpl" with {svg_custom_class: "icon-inline icon-2x svg-icon-text"} %}
        </span>
    {% endif %}
    <div class="modal-body">
        {% block modal_body %}{% endblock %}
    </div>
    {% if modal_footer %}
        <div class="modal-footer d-md-block">
            {% block modal_foot %}{% endblock %}
        </div>
    {% endif %}
    {% if modal_form_action %}
    </form>
    {% endif %}
</div>