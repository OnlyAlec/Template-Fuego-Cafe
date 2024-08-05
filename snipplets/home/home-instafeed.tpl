{% if settings.show_instafeed and store.instagram and store.hasInstagramToken() %}
    <section class="section-instafeed-home overflow-none" data-store="home-instagram-feed">
        <div class="container p-0">
            <div class="row no-gutters bottom-line">
                {% set instuser = store.instagram|split('/')|last %}
                <div class="col-md-4 right-line-md bottom-line bottom-no-line-md instafeed-column mb-neg-1 nosotros_seccion2_bg p-5 rounded-top rounded-md-left">
                    <a target="_blank" href="{{ store.instagram }}" class="mb-0" aria-label="{{ 'Instagram de' | translate }} {{ store.name }}">
                        <div class="p-3 h-100 text-center">
                            <div class="instafeed-title">
                                <img src="//dcdn.mitiendanube.com/stores/003/585/583/themes/uyuni/slide-1705563703198-4951846216-58614d199cfc278395492c5b2ea2d2351705563701.png?3761070813" data-src="//dcdn.mitiendanube.com/stores/003/585/583/themes/uyuni/slide-1705563703198-4951846216-58614d199cfc278395492c5b2ea2d2351705563701.png?3761070813" class=" lazyloaded" alt="Icono Social 1" >

                                <p class="text_nosotros_size nosotros-text2-color mt-3 mb-0">¡Síguenos en Instagram!</p>
                                
                                <h2 class="mb-0 text_nosotros_size nosotros-text2-color">@{{ instuser }}</h2>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-8 mb-neg-1">
                    {% if store.hasInstagramToken() %}
                        <div class="js-ig-success row no-gutters mx-neg-1"
                            data-ig-feed
                            data-ig-items-count="6"
                            data-ig-item-class="col-6 col-md-4 right-line bottom-line"
                            data-ig-link-class="instafeed-link"
                            data-ig-image-class="instafeed-img fade-in"
                            data-ig-aria-label="{{ 'Publicación de Instagram de' | translate }} {{ store.name }}"
                            style="display: none;">
                        </div>
                    {% endif %}
                </div>
            </div>
        </div>
    </section>
{% endif %}