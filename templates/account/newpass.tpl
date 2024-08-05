{% embed "snipplets/page-header.tpl" with {container: true} %}
    {% block page_header_text %}{{ (customer.password ? 'Cambiar contraseña' : 'Activar cuenta') | translate }}{% endblock page_header_text %}
{% endembed %}

<section class="account-page top-line bottom-line">
    <div class="container-fluid p-0">
        <div class="row no-gutters">
            <div class="col-md-5 right-line-md">
                {% if failure %}
                    <div class="alert alert-danger">{{ 'Las contraseñas no coinciden.' | translate }}</div>
                {% endif %}

                {% embed "snipplets/forms/form.tpl" with{form_id: 'newpass-form', submit_custom_class: 'btn-block', submit_text: (customer.password ? 'Cambiar contraseña' : 'Activar cuenta')  | translate } %}
                    {% block form_body %}

                        {# Password input #}

                        {% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_for: 'password', input_name: 'password', input_id: 'password', input_label_text: 'Contraseña' | translate } %}
                        {% endembed %}

                        {# Password confirm input #}

                        {% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_for: 'password_confirm', input_name: 'password_confirm', input_id: 'password_confirm', input_label_text: 'Confirmar contraseña' | translate } %}
                        {% endembed %}
                        
                    {% endblock %}
                {% endembed %}
            </div>
        </div>
    </div>
</section>