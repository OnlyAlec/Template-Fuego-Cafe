{#/*============================================================================
style.css

    -This file contains all the theme non critical styles wich will be loaded asynchronously
    -Rest of styling can be found in:
        -static/css/style-colors.scss.tpl --> For color and font styles related to config/settings.txt
        -static/css/style-colors.critical.tpl --> For critical CSS rendered inline before the rest of the site

==============================================================================*/#}

{#/*============================================================================
  Table of Contents

  #Components
    // Margin and Padding
    // Mixins and variables
    // Animations
    // Buttons
    // Chips
    // Forms
    // Alerts and notifications
    // Progress bar
    // Modals
    // Tables
    // Tabs
    // Cards
    // Captcha
  #Header and nav
    // Header
    // Nav
    // Utilities
    // Search
  #Footer
    // Nav
    // Social
    // Legal
  #Home page
    // Instafeed
    // Banners
    // Brands
    // Informative banners
    // Newsletter
    // Placeholder
  #Product grid
    // Filters
  #Product detail
  	// Image
  	// Form and info
  #Cart detail
    // Table
    // Totals
  #Contact page
  #Media queries
    // Min width 768px
    //// Components
    //// Footer
  #Critical path utilities

==============================================================================*/#}

{# /* // Margin and Padding */ #}

%section-margin {
  margin-bottom: 40px;
}
%element-margin {
  margin-bottom: 35px;
}
%element-margin-small {
  margin-bottom: 15px;
}
%section-margin-invert {
  margin-top: -70px;
}

{# /* // Mixins and variables */ #}

{# This mixin adds browser prefixes to a CSS property #}

@mixin prefix($property, $value, $prefixes: ()) {
  @each $prefix in $prefixes {
    #{'-' + $prefix + '-' + $property}: $value;
  }
  #{$property}: $value;
}

@mixin keyframes($name) {
  @-webkit-keyframes #{$name} {
    @content; 
  }
  @-moz-keyframes #{$name} {
    @content;
  }
  @-ms-keyframes #{$name} {
    @content;
  }
  @keyframes #{$name} {
    @content;
  } 
}

%border-radius-small {
  border-radius: 10px;
}

{# /* // Animations */ #}

.transition-soft {
  @include prefix(transition, all 0.3s ease, webkit ms moz o);
}

.transition-up {
    position: relative;
    top: -8px;
    @include prefix(transition, all 0.5s ease, webkit ms moz o);
    z-index: 10;
    pointer-events: none; 
    &-active {
      top: 0;
      opacity: 1; 
      z-index: 100;
      pointer-events: all; 
    }
}

.fade-in-vertical {
  transition: all .5s cubic-bezier(.16,.68,.43,.99);
  transition-delay: .3s;
  @include prefix(transform, translate(0, 40%), webkit ms moz o);
  &.visible {
    @include prefix(transform, translate(0, 0%), webkit ms moz o);
    opacity: 1;
  }
}

{# /* // Buttons */ #}

.btn-transition {
  position: relative;
  overflow: hidden; 
  .transition-container {
    position: absolute;
    top: 50%;
    left: 0;
    width: 100%;
    opacity: 0;
    text-align: center;
    @include prefix(transition, all 0.5s ease, webkit ms moz o);
    pointer-events: none;
    cursor: not-allowed;
    transform: translateY(-50%);
    &.active {
      opacity: 1;
    }
  }
  &.item-btn-quickshop .transition-icon {
    margin: -6px 0 0 -3px;
  }
} 

{# /* // Chips */ #}

.chip {
  position: relative;
  float: left;
  padding: 8px 35px 8px 15px;
  font-size: 12px;
  text-transform: uppercase;
  white-space: normal;
  word-break: break-word;
  line-height: 18px;
  @include prefix(transition, all 0.4s ease, webkit ms moz o);
  &-remove-icon{
    position: absolute;
    top: 50%;
    right: 8px;
    display: inline-block;
    width: 23px;
    height: 23px;
    margin-top: -1px;
    padding: 4px 6px 3px 6px;
    transform: translateY(-50%);
  }
  &:focus {
    outline: 0;
  }
  &:hover {
    opacity: 0.6;
  }
}

{# /* // Forms */ #}

.form-group .form-label{
  float: left;
  width: 100%;
}

.form-quantity-icon {
  cursor: pointer;
}

.radio-button{
  margin-bottom: 0;
  -webkit-tap-highlight-color: rgba(0,0,0,0);
  cursor: pointer;
  &.disabled{
    opacity: 0.6;
    cursor: not-allowed;
    input[type="radio"] {
      cursor: not-allowed;
    }
  }
  &-container {
    display: inline-block;
    width: 100%;
  }
  &-content{
    position: relative;
  }
  &-icons-container{
    position: absolute;
  }
  &-icon{
    width: 16px;
    height: 16px;
  }
  .radio-button-content .unchecked{
    display: block;
  }
  .radio-button-content .checked{
    position: absolute;
    top: 8px;
    left: 8px;
    width: 0;
    height: 0;      
    @include prefix(transform, translate(-50%,-50%), webkit ms moz o);
    @include prefix(transition, all 0.2s , webkit ms moz o);
  }
  input[type="radio"]:checked +,
  &.selected{
    .radio-button-content .checked {
      width: 8px;
      height: 8px;
    }  
  }
  &-label{
    padding-left: 25px;
    font-size: 12px;
  }
}

.checkbox-container {
  padding: 0;
}

.input-clear-content {
  position: absolute;
  right: 8px;
  bottom: 4px;
  width: 25px;
  height: 40px;
  padding: 4px;
  cursor: pointer;
  &-ios {
    bottom: 5px;
  }
  &:before {
    display: block;
    margin: 6px 1px 0 4px;
  }
}

.form-select {
  padding-right: 30px;
  
  &:focus{
    outline:0;
  }
  &::-ms-expand {
    display: none;
  }
}

{# /* Disabled controls */ #}

input,
select,
textarea,
button{
  &[disabled],
  &[disabled]:hover,
  &[readonly],
  &[readonly]:hover{
    background-color: #DDD;
    cursor: not-allowed; 
  }
}

.list .radio-button-icons-container {
  display: none;
}

.list .radio-button-label {
  padding: 0;
}

{# /* // Alerts and notifications */ #}

.alert {
  clear: both;
  padding: 8px 10px;
  border-top: var(--border-solid);
  font-size: 12px;
}

.notification-hidden{
  transition: all .2s cubic-bezier(.16,.68,.43,.99);
  @include prefix(transform, translate(110%, 0), webkit ms moz o);
  pointer-events: none;
}
.notification-visible{
  transition: all .2s cubic-bezier(.16,.68,.43,.99);
  opacity: 1;
  @include prefix(transform, translate(0, 0), webkit ms moz o);
}

.notification-cart-container {
  left: initial;
  width: 320px;
  &.notification-fixed {
    width: 100%;
  }
  .notification-cart {
    padding: 0 30px 0 0;
  }
}

.notification-img {
  width: 75px;
  height: 75px;
  overflow: hidden;
}
.notification-close {
  position: absolute;
  top: 9px;
  right: 3px;
  z-index: 1;
  font-size: 10px;
  cursor: pointer;
}

{# /* // Progress bar */ #}

.bar-progress {
  position: relative;
  height: 9px;
  .bar-progress-active {
    height: 8px;
    width: 0%;
  }
}

.ship-free-rest-message {
  position: relative;
  height: 48px;
  .ship-free-rest-text {
    position: absolute;
    top: -5px;
    width: 100%;
    text-align: center;  
    line-height: 48px;
    opacity: 0;
  }
  &.success .bar-progress-success {
    top: 0;
    opacity: 1;
  }
  &.amount .bar-progress-amount {
    top: 0;
    opacity: 1;
  }
  &.condition .bar-progress-condition {
    top: 0;
    opacity: 1;
  }
}

{# /* // Modals */ #}
.modal {
  position: fixed;
  top: 0;
  display: block;
  width: 100%;
  height: 100%;
  -webkit-overflow-scrolling: touch;
  overflow-y: auto;
  @include prefix(transition, all .3s ease-in-out, webkit ms moz o);
  z-index: 20000;
  &-transition-fast {
    @include prefix(transition, all .05s ease-in-out, webkit ms moz o);
  }
  &-zindex-top{
    z-index: 20001;
  }
  &-img-full{
    max-width: 100%;
    max-height: 190px;
  }
  &-header{
    width: 100%;
    padding: 0;
    font-size: var(--font-base);
    text-align: left;
    text-transform: uppercase;
    cursor: pointer;
    &-no-title {
      text-align: right;
    }
  }
  &-floating-close {
    position: sticky;
    top: 0;
    right: 20px;
    z-index: 1;
    width: auto;
    margin: 20px 10px -50px 0;
    padding: 0 5px 5px 10px;
    float: right;
  }
  &-body {
    padding: 20px;
  }
  &-footer{
    margin-bottom: 10px;
    padding: 15px;
    clear: both;
  }
  &-with-fixed-footer {
    display: flex;
    flex-direction: column;
    height: 100%;
    .modal-scrollable-area {
      height: 100%;
      overflow: auto;
    }
  }
  &-flex-column {
    display: flex;
    flex-direction: column;
  }
  &-full {
    width: 100%;
  }
  &-docked-md{
    width: 100%;
  }
  &-docked-small{
    width: 80%;
  }
  &-top{
    top: -100%;
  }
  &-fade{
    top: initial;
    bottom: -5%;
    opacity: 0;
  }
  &-bottom{
    top: 100%;
    left: 0;
  }
  &-left{
    left: -100%;
  }
  &-right{
    right: -100%;
  }
  &-centered{
    height: 90%;
    width: 90%;
    &-small{
      width: 90%;
      height: auto;
      left: 50%;
      @include prefix(transform, translate(-50%, 0%), webkit ms moz o);
      .modal-body{
        min-height: 150px;
        max-height: 400px;
      }
    }
  }
  &.modal-show{
    opacity: 1;
  }
  &-top.modal-show,
  &-bottom.modal-show {
    top: 50%;
    transform: translateY(-50%);
  }
  &-left.modal-show,
  &-left-xs.modal-show {
    left: 0;
  }
  &-right.modal-show {
    right: 0;
  }
  &-centered.modal-show {
    left: 50%;
    transform: translate(-50% , -50%);
  }
  &-centered-md.modal-show {
    left: initial;
    transform: none;
    &.modal-bottom {
      top: 50%;
      transform: translateY(-50%);
    }
  }
  &-fade.modal-show{
    bottom: 0;
    opacity: 1;
  }
  &-close,
  &-back { 
    width: 50px;
    height: 50px;
    display: inline-block;
    padding: 15px;
    font-size: 16px;
    text-align: center;
    // Cursor pointer added to JS is triggered on IOS
    cursor: pointer;
  }
  &-bottom-sheet {
    top: initial;
    bottom: -100%;
    width: 100%;
    height: auto;
    transform: none;
    &.modal-show {
      top: initial;
      bottom: 0;
      left: 0;
      height: auto;
      transform: none;
    }
  }
  .tab-group{
    margin:  0 -20px 30px 0;
  }
  &-overflow-none {
    overflow: hidden;
  }
  &-scrollable {
    width: 100%;
    height: 100%;
    overflow-y: auto;
    overflow-x: hidden;
  }
}

.modal-overlay{
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 10000;
  // Cursor pointer added to JS is triggered on IOS
  cursor: pointer;
  &.modal-zindex-top{
    z-index: 20000;
  }
}

{# /* // Tables */ #}

.table{
  width: 100%;
  border-collapse: collapse;
  border-spacing: 0;
  thead{
    th{
      padding: 8px;
      &:first-of-type{
        padding-left: 0;
      }
    }
  }
  td{
    padding: 8px;
    text-align: left;
  }
}

{# /* // Tabs */ #}


.tab-group{
  padding: 0;
  overflow-x: scroll;
  white-space: nowrap;
  .tab{
    display: inline-flex;
    float: none;
    margin-right: 10px;
    &-link{
      float: left;
      padding: 10px;
      font-size: 10px;
      text-align: center;
      text-transform: uppercase;
      letter-spacing: 1px;
    }
  }
}

.tab-panel:not(.active){
  display: none;
}
.tab-panel.active{
  display: block;
}

{# /* // Cards */ #}

.card {
	position: relative;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-direction: column;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-clip: border-box;
  &-collapse {
    height: 54.5px;
    padding: 0;
    overflow: hidden;
    @include prefix(transition, all 0.3s ease, webkit ms moz o);
    cursor: pointer;
    &-toggle {
      position: absolute;
      top: 7px;
      right: 8px;
      padding: 10px;
      @include prefix(transition, all 0.3s ease, webkit ms moz o);
      &.active {
        transform: rotate(90deg);
      }
    }
    &.active {
      height: 100%;
    }
  }
}

.card-body {
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	padding: 15px;
}

.card-header {
	padding: 16px 15px;
	margin-bottom: 0;
  &-collapse {
    padding-right: 50px;
    position: relative;
  }
}

.card-footer {
	padding: 15px;
}

{# /* // Captcha */ #}

.g-recaptcha > div {
  margin: 0 auto;
}

.grecaptcha-badge {
  bottom: 100px !important;
}

{#/*============================================================================
  #Header and nav
==============================================================================*/#}

{# /* // Header */ #}

.head-main {
  a {
    cursor: pointer;
  }
  &.head-transparent-on-section.head-transparent-contrast:not(:hover) {
    .utility-icon-absolute {
      transition: none;
    }
  }
  {% if settings.head_transparent_contrast_options and "logo-transparent.jpg" | has_custom_image %}
    &.head-transparent-on-section:hover {
      .logo-img {
        opacity: 1;
      }
      .logo-header-transparent {
        opacity: 0;
      }
    }
  {% endif %}
}

{# /* // Nav */ #}

.modal-nav-hamburger {
  flex: 1;
  .nav-list {
    margin: 0;
    padding: 0;
    list-style: none;
  }
  .nav-item {
    display: block;
    padding: 0;
  }
  .nav-list-link {
    display: flex;
    padding: 15px;
    font-size: 14px;
    text-transform: uppercase;
    line-height: initial;
  }
  .nav-list-arrow {
    position: absolute;
    top: 0;
    right: 0;
    height: 100%;
    padding: 15px 20px;
    font-size: 14px;
    cursor: pointer;
  }
  .item-with-subitems {
    position: relative;
    .nav-list-link {
      padding-right: 70px;
    }
  }
  .nav-list-panel {
    position: fixed;
    top: 0;
    right: 0;
    z-index: 9;
    width: 100%;
    height: 100%;
    padding: 0 0 100px 0;
    list-style: none;
    overflow-y: auto;
    @include prefix(transition, all .4s ease-in-out, webkit ms moz o);
    &-left{
      left: -100%;
    }
    &-right{
      right: -100%;
    }
    &-left.nav-list-panel-show {
      left: 0;
    }
    &-right.nav-list-panel-show {
      right: 0;
    }
    &-bottom-hide {
      top: 100%;
    }
  }
  .nav-body {
    display: flex;
    flex-direction: column;
    padding: 0 0 100px 0;
  }

  .nav-primary {
    flex: 1;
  }

  .footer-menu-link {
    text-transform: uppercase;
    letter-spacing: 1px;
  }
}

.nav-list-link {
  position: relative;
}


.desktop-dropdown::-webkit-scrollbar {
  width: 5px;
}

.desktop-list-subitems {
  padding: 20px 15px;
  text-align: left;
  -webkit-column-count: 6;  
  -webkit-column-gap: 20px;   
  -moz-column-count: 6;   
  -moz-column-gap: 20px;
  column-count: 6;  
  column-gap: 20px;  
  .nav-item {
    display: block;
    margin: 0;
    padding: 0;
    -webkit-column-break-inside: avoid;
    break-inside: avoid;
    .nav-list-link {
      margin-bottom: 10px;
      font-size: var(--font-small);
      text-transform: uppercase;
      text-decoration: underline;
    }
    .list-subitems {
      padding: 0;
      margin: 0 0 30px 0;
      .nav-item {
        .nav-list-link {
          margin-bottom: 5px;
          text-transform: none;
          text-decoration: none;
        }
        .list-subitems {
          margin: 0 0 0 8px;
          .nav-list-link {
            padding: 0px 0 0 10px;
            line-height: 15px;
            font-size: var(--font-small);
          }
        }
      }
    }
  }
  .nav-list-link {
    display: block;
    margin-bottom: 10px;
    line-height: 20px;
  }
}

.nav-dropdown-content:hover,
.nav-dropdown:hover .nav-dropdown-content,
.nav-desktop-list:hover .nav-main-item.selected .nav-dropdown-content {
  visibility: visible;
  opacity: 1;
  transition-delay: 0s;
}

.nav-categories-container {
  position: relative;
}
.nav-categories-container:after,
.nav-categories-container:before {
  position: absolute;
  display: block;
  height: 100%;
  width: 20px;
  left: 0;
  top: 0;
  content: "";
}
.nav-categories-container:after {
  right: 0;
  left: auto;
  transform: rotate(180deg);
}
    
{# /* // Search */ #}

.search-input[type="search"]::-webkit-search-cancel-button {
  -webkit-appearance:none
}

.search-suggest {
  position: absolute;
  z-index: 99999;
  width: 100%;
  max-height: calc(100vh - 250px);
  overflow-y: auto;
  overflow-x: hidden;
  .search-suggest-list {
    margin: 0 0 10px 0;
    padding: 0;
  }
  .search-suggest-text {
    font-size: var(--font-small);
  }
  .search-suggest-item {
    padding: 0;
    text-align: left;
    list-style: none;
    .search-suggest-text,
    .search-suggest-name {
      margin-bottom: 2px;
      line-height: 18px;
    }
  }
  .search-suggest-image-container {
    width: 70px;
    height: 70px;
    overflow: hidden;
    img {
      position: absolute;
      top: 50%;
      left: 50%;
      z-index: 9;
      width: 100%;
      height: 100%;
      transform: translate(-50%, -50%);
      object-fit: cover;
    } 
  }
}

.search-mobile-row .search-suggest {
  top: calc(100% + 1px);
  border-top: none;
  border-right: none;
  border-left: none;
}

{#/*============================================================================
  #Footer
==============================================================================*/#}

footer {
  &.section-footer-home {
    @extend %section-margin-invert;
  }
  .newsletter {
    position: relative;
    width: 100%;
  }
}

{# /* // Nav */ #}

.footer-menu {
  &-item{
    display: block;
    margin-bottom: 20px;
  }
  &-link{
    display: block;
  }
}

{# /* // Social */ #}

.social-icon {
  font-size: 12px;
  line-height: 46px;
  text-align: center;
}

{# /* // Legal */ #}

.footer-payments-shipping-logos img {
    width: auto;
    max-height: 20px;
    margin: 5px;
}

.powered-by-text {
  display: inline-block;
}

.powered-by-logo {
  position: relative;
  top: 50%;
  left: 50%;
  width: 125px;
  margin-top: 2px;
  transform: translate(-50%, -50%);
}

.copyright {
  padding-top: 15px;
}

.footer-logo {
  display: inline-block;
  margin-right: 15px;
  img {
    max-height: 50px;
  }
  &:last-child {
    margin: 0;
  }
}    
   
{#/*============================================================================
  #Home Page
==============================================================================*/#}

{# /* // Instafeed */ #}

.instafeed-column {
  position: relative;
  z-index: 9;
}

.instafeed-title {
  position: relative;
  top: 50%;
  transform: translateY(-50%);
}

.instafeed-link {
  position: relative;
  display: block;
  padding-top: 100%;
  overflow: hidden;
  &:hover,
  &:focus {
    .instafeed-img{
      @include prefix(transform, scale(1.03), webkit ms moz o);
    }
    .instafeed-info {
      opacity: 1;
    }
  }
  .instafeed-img {
    position: absolute;
    top: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    @include prefix(transition, all 0.8s ease, webkit ms moz o);
  }
  .instafeed-info {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    padding: 0;
    text-align: center;
    opacity: 0;
    @include prefix(transition, all 0.8s ease, webkit ms moz o);
    .instafeed-info-item {
      display: inline-block;
      margin-top: 45%;
    }
  }
}


{# /* // Banners */ #}

.textbanner {
  .textbanner-image-effect,
  .textbanner-text {
    @include prefix(transition, all 0.3s ease, webkit ms moz o);
  }
  &:hover img.textbanner-image-effect,
  &:focus img.textbanner-image-effect {
    @include prefix(transform, scale(1.05), webkit ms moz o);
  }
}

{# /* // Brands */ #}

.swiper-brands {
  line-height: 110px;
}

.brand-image {
  display: inline-block;
  max-width: 100%;
  max-height: 60px;
  vertical-align: middle;
  @include prefix(transition, all 0.8s ease, webkit ms moz o);
  &:hover {
    opacity: 0.5;
  }
}

{# /* // Testimonials */ #}

.testimonials-image {
  position: relative;
  display: block;
  width: 110px;
  height: 110px;
  text-align: center;
  overflow: hidden;
  &-background {
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: 9;
    width: 100%;
    height: 100%;
    transform: translate(-50%, -50%);
    object-fit: cover;
  }
}


{# /* // Informative banners */ #}

.service-item-image {
  display: inline-block;
  max-width: 50px;
  max-height: 50px;
}

{# /* // Newsletter */ #}

.section-newsletter-home {
  padding-top: 100%;
  .newsletter {
    position: absolute;
    bottom: 0;
    z-index: 9;
    width: 100%;
  }
}

.newsletter {
  form {
    position: relative;
    .newsletter-btn {
      position: absolute;
      top: 0;
      right: 30px;
      width: 15px;
      height: 40px;
      text-indent: -99999px;
      &.btn {
        z-index: 9;
      }
      &-spinner {
        padding: 14px 0;
      }
    }
  } 
  &-home-image {
    position: absolute;
    top: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
}

{# /* // Placeholder */ #}

.placeholder-overlay {
    position: absolute;
    top: 0;
    left: 0;
    z-index: 9;
    width: 100%;
    height: 100%;  
}

.placeholder-info {
  position: relative;
  top: 50%;
  left: 50%;
  width: 330px;
  padding: 30px 25px;
  text-align: center;
  line-height: 18px;
  transform: translate(-50%, -50%);
  box-sizing: border-box;
  .placeholder-description {
    margin: 20px 0;
  }
  .placeholder-button {
    padding: 8px 15px;
  }
}

{#/*============================================================================
  #Product Grid
==============================================================================*/#}

{# /* // Filters */ #}

.category-controls.is-sticky {
  margin-top: 2px;
  h1 {
    font-size: 14px;
    @include prefix(transition, all 0.3s ease, webkit ms moz o);
  }
  .category-controls .category-name,
  .btn-filters {
    padding: 10px 15px;
  }

  .filters-badge {
    top: 0;
  }
}

.filter-title {
  margin: 0;
  padding: 15px;
  text-align: center;
  text-transform: uppercase;
}

.filters-container {
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  margin: 0;
  padding: 0;
  list-style: none;
  .filter-item {
    width: 50%;
  }
  .btn-more-filters {
    width: 100%;
    padding: 15px;
    text-align: center;
  }
}

.filters-overlay {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 30000;
  width: 100%;
  height: 100%;
  .filters-updating-message {
    position: absolute;
    top: 50%;
    left: 50%;
    width: 80%;
    text-align: center;
    @include prefix(transform, translate(-50%, -50%), webkit ms moz o);
  }
}

.price-filter-container {
  .form-group {
    display: flex;
  }
  .form-label {
    display: flex;
    flex: none;
    width: auto;
    align-items: center;
    padding: 15px;
    text-transform: uppercase;
  }
  .filter-input-price-container {
    position: relative;
    display: flex;
    flex: 1;
    height: 50px;
    width: 50%;
    vertical-align: sub;
    .filter-input-price {
      flex: 1;
      width: 100%;
      padding-right: 32px;
      &.form-control-ios {
        padding-right: 10px;
      }
    }
  }
  .btn-price-filter {
    flex: none;
    padding: 25px;
    line-height: 2px;
    border-radius: 0;
  }
}

.item-image:hover img {
  @include prefix(transform, translateX(-50%) scale(1.05)!important, webkit ms moz o);
}

.item-actions .alert {
  position: absolute;
  right: 0;
  bottom: 100%;
  z-index: 1;
  width: 140px;
  text-align: center;
}

.modal-quickshop .alert-warning {
  position: absolute;
  top: calc(-100% - 1px);
  text-align: center;
}

.quickshop-image {
  position: absolute;
  width: auto;
  height: 100%;
  max-height: 90vh;
  &-container {
    position: relative;
    max-height: 90vh;
    overflow: hidden;
  }
}

{#/*============================================================================
  #Product detail
==============================================================================*/#}

.section-fb-comments {
  @extend %section-margin;
}

{# /* // Image */ #}

.fancybox__container .has-inline .fancybox__content {
  width: 100%;
  height: calc(100% - 20px);
  padding: 0;
  @include prefix(transform, translateY(20px), webkit ms moz o);
  background: transparent;
  .fancybox-close-small {
    {# Hardcoded neutral color to match non iframe fancybox modal #}
    color: #ccc!important;
  }
}

.fancybox__container .fancybox__slide.has-inline::before {
  display: none
}

.fancybox-toolbar {
  opacity: 1!important;
  visibility: visible!important;
  .fancybox-button {
    display: none!important;
    &.fancybox-button--close{
      display: block!important;
    }
  }
}

.fancybox-close-small {
  display: none!important;
}

.carousel{position:relative;box-sizing:border-box}.carousel *,.carousel *:before,.carousel *:after{box-sizing:inherit}.carousel.is-draggable{cursor:move;cursor:grab}.carousel.is-dragging{cursor:move;cursor:grabbing}.carousel__viewport{position:relative;overflow:hidden;max-width:100%;max-height:100%}.carousel__track{display:flex}.carousel__slide{flex:0 0 auto;width:var(--carousel-slide-width, 60%);max-width:100%;padding:1rem;position:relative;overflow-x:hidden;overflow-y:auto;overscroll-behavior:contain}.has-dots{margin-bottom:calc(0.5rem + 22px)}.carousel__dots{margin:0 auto;padding:0;position:absolute;top:calc(100% + 0.5rem);left:0;right:0;display:flex;justify-content:center;list-style:none;user-select:none}.carousel__dots .carousel__dot{margin:0;padding:0;display:block;position:relative;width:22px;height:22px;cursor:pointer}.carousel__dots .carousel__dot:after{content:"";width:8px;height:8px;border-radius:50%;position:absolute;top:50%;left:50%;transform:translate(-50%, -50%);background-color:currentColor;opacity:.25;transition:opacity .15s ease-in-out}.carousel__dots .carousel__dot.is-selected:after{opacity:1}.carousel__button{width:var(--carousel-button-width, 48px);height:var(--carousel-button-height, 48px);padding:0;border:0;display:flex;justify-content:center;align-items:center;pointer-events:all;cursor:pointer;color:var(--carousel-button-color, currentColor);background:var(--carousel-button-bg, transparent);border-radius:var(--carousel-button-border-radius, 50%);box-shadow:var(--carousel-button-shadow, none);transition:opacity .15s ease}.carousel__button.is-prev,.carousel__button.is-next{position:absolute;top:50%;transform:translateY(-50%)}.carousel__button.is-prev{left:10px}.carousel__button.is-next{right:10px}.carousel__button[disabled]{cursor:default;opacity:.3}.carousel__button svg{width:var(--carousel-button-svg-width, 50%);height:var(--carousel-button-svg-height, 50%);fill:none;stroke:currentColor;stroke-width:var(--carousel-button-svg-stroke-width, 1.5);stroke-linejoin:bevel;stroke-linecap:round;filter:var(--carousel-button-svg-filter, none);pointer-events:none}html.with-fancybox{scroll-behavior:auto}body.compensate-for-scrollbar{overflow:hidden !important;touch-action:none}.fancybox__container{position:fixed;top:0;left:0;bottom:0;right:0;direction:ltr;margin:0;padding:env(safe-area-inset-top, 0px) env(safe-area-inset-right, 0px) env(safe-area-inset-bottom, 0px) env(safe-area-inset-left, 0px);box-sizing:border-box;display:flex;flex-direction:column;color:var(--fancybox-color, #fff);-webkit-tap-highlight-color:rgba(0,0,0,0);overflow:hidden;z-index:1050;outline:none;transform-origin:top left;--carousel-button-width: 48px;--carousel-button-height: 48px;--carousel-button-svg-width: 24px;--carousel-button-svg-height: 24px;--carousel-button-svg-stroke-width: 2.5;--carousel-button-svg-filter: drop-shadow(1px 1px 1px rgba(0, 0, 0, 0.4))}.fancybox__container *,.fancybox__container *::before,.fancybox__container *::after{box-sizing:inherit}.fancybox__container :focus{outline:none}body:not(.is-using-mouse) .fancybox__container :focus{box-shadow:0 0 0 1px #fff,0 0 0 2px var(--fancybox-accent-color, rgba(1, 210, 232, 0.94))}@media all and (min-width: 1024px){.fancybox__container{--carousel-button-width:48px;--carousel-button-height:48px;--carousel-button-svg-width:27px;--carousel-button-svg-height:27px}}.fancybox__backdrop{position:absolute;top:0;right:0;bottom:0;left:0;z-index:-1;background:var(--fancybox-bg, rgba(24, 24, 27, 0.92))}.fancybox__carousel{position:relative;flex:1 1 auto;min-height:0;height:100%;z-index:10}.fancybox__carousel.has-dots{margin-bottom:calc(0.5rem + 22px)}.fancybox__viewport{position:relative;width:100%;height:100%;overflow:visible;cursor:default}.fancybox__track{display:flex;height:100%}.fancybox__slide{flex:0 0 auto;width:100%;max-width:100%;margin:0;padding:48px 8px 8px 8px;position:relative;overscroll-behavior:contain;display:flex;flex-direction:column;outline:0;overflow:auto;--carousel-button-width: 36px;--carousel-button-height: 36px;--carousel-button-svg-width: 22px;--carousel-button-svg-height: 22px}.fancybox__slide::before,.fancybox__slide::after{content:"";flex:0 0 0;margin:auto}@media all and (min-width: 1024px){.fancybox__slide{padding:64px 100px}}.fancybox__content{margin:0 env(safe-area-inset-right, 0px) 0 env(safe-area-inset-left, 0px);padding:36px;color:var(--fancybox-content-color, #374151);background:var(--fancybox-content-bg, #fff);position:relative;align-self:center;display:flex;flex-direction:column;z-index:20}.fancybox__content :focus:not(.carousel__button.is-close){outline:thin dotted;box-shadow:none}.fancybox__caption{align-self:center;max-width:100%;margin:0;padding:1rem 0 0 0;line-height:1.375;color:var(--fancybox-color, currentColor);visibility:visible;cursor:auto;flex-shrink:0;overflow-wrap:anywhere}.is-loading .fancybox__caption{visibility:hidden}.fancybox__container>.carousel__dots{top:100%;color:var(--fancybox-color, #fff)}.fancybox__nav .carousel__button{z-index:40}.fancybox__nav .carousel__button.is-next{right:8px}@media all and (min-width: 1024px){.fancybox__nav .carousel__button.is-next{right:40px}}.fancybox__nav .carousel__button.is-prev{left:8px}@media all and (min-width: 1024px){.fancybox__nav .carousel__button.is-prev{left:40px}}.carousel__button.is-close{position:absolute;top:8px;right:8px;top:calc(env(safe-area-inset-top, 0px) + 8px);right:calc(env(safe-area-inset-right, 0px) + 8px);z-index:40}@media all and (min-width: 1024px){.carousel__button.is-close{right:40px}}.fancybox__content>.carousel__button.is-close{position:absolute;top:-40px;right:0;color:var(--fancybox-color, #fff)}.fancybox__no-click,.fancybox__no-click button{pointer-events:none}.fancybox__spinner{position:absolute;top:50%;left:50%;transform:translate(-50%, -50%);width:50px;height:50px;color:var(--fancybox-color, currentColor)}.fancybox__slide .fancybox__spinner{cursor:pointer;z-index:1053}.fancybox__spinner svg{animation:fancybox-rotate 2s linear infinite;transform-origin:center center;position:absolute;top:0;right:0;bottom:0;left:0;margin:auto;width:100%;height:100%}.fancybox__spinner svg circle{fill:none;stroke-width:2.75;stroke-miterlimit:10;stroke-dasharray:1,200;stroke-dashoffset:0;animation:fancybox-dash 1.5s ease-in-out infinite;stroke-linecap:round;stroke:currentColor}@keyframes fancybox-rotate{100%{transform:rotate(360deg)}}@keyframes fancybox-dash{0%{stroke-dasharray:1,200;stroke-dashoffset:0}50%{stroke-dasharray:89,200;stroke-dashoffset:-35px}100%{stroke-dasharray:89,200;stroke-dashoffset:-124px}}.fancybox__backdrop,.fancybox__caption,.fancybox__nav,.carousel__dots,.carousel__button.is-close{opacity:var(--fancybox-opacity, 1)}.fancybox__container.is-animated[aria-hidden=false] .fancybox__backdrop,.fancybox__container.is-animated[aria-hidden=false] .fancybox__caption,.fancybox__container.is-animated[aria-hidden=false] .fancybox__nav,.fancybox__container.is-animated[aria-hidden=false] .carousel__dots,.fancybox__container.is-animated[aria-hidden=false] .carousel__button.is-close{animation:.15s ease backwards fancybox-fadeIn}.fancybox__container.is-animated.is-closing .fancybox__backdrop,.fancybox__container.is-animated.is-closing .fancybox__caption,.fancybox__container.is-animated.is-closing .fancybox__nav,.fancybox__container.is-animated.is-closing .carousel__dots,.fancybox__container.is-animated.is-closing .carousel__button.is-close{animation:.15s ease both fancybox-fadeOut}.fancybox-fadeIn{animation:.15s ease both fancybox-fadeIn}.fancybox-fadeOut{animation:.1s ease both fancybox-fadeOut}.fancybox-zoomInUp{animation:.2s ease both fancybox-zoomInUp}.fancybox-zoomOutDown{animation:.15s ease both fancybox-zoomOutDown}.fancybox-throwOutUp{animation:.15s ease both fancybox-throwOutUp}.fancybox-throwOutDown{animation:.15s ease both fancybox-throwOutDown}@keyframes fancybox-fadeIn{from{opacity:0}to{opacity:1}}@keyframes fancybox-fadeOut{to{opacity:0}}@keyframes fancybox-zoomInUp{from{transform:scale(0.97) translate3d(0, 16px, 0);opacity:0}to{transform:scale(1) translate3d(0, 0, 0);opacity:1}}@keyframes fancybox-zoomOutDown{to{transform:scale(0.97) translate3d(0, 16px, 0);opacity:0}}@keyframes fancybox-throwOutUp{to{transform:translate3d(0, -30%, 0);opacity:0}}@keyframes fancybox-throwOutDown{to{transform:translate3d(0, 30%, 0);opacity:0}}.fancybox__carousel .carousel__slide{scrollbar-width:thin;scrollbar-color:#ccc rgba(255,255,255,.1)}.fancybox__carousel .carousel__slide::-webkit-scrollbar{width:8px;height:8px}.fancybox__carousel .carousel__slide::-webkit-scrollbar-track{background-color:rgba(255,255,255,.1)}.fancybox__carousel .carousel__slide::-webkit-scrollbar-thumb{background-color:#ccc;border-radius:2px;box-shadow:inset 0 0 4px rgba(0,0,0,.2)}.fancybox__carousel.is-draggable .fancybox__slide,.fancybox__carousel.is-draggable .fancybox__slide .fancybox__content{cursor:move;cursor:grab}.fancybox__carousel.is-dragging .fancybox__slide,.fancybox__carousel.is-dragging .fancybox__slide .fancybox__content{cursor:move;cursor:grabbing}.fancybox__carousel .fancybox__slide .fancybox__content{cursor:auto}.fancybox__carousel .fancybox__slide.can-zoom_in .fancybox__content{cursor:zoom-in}.fancybox__carousel .fancybox__slide.can-zoom_out .fancybox__content{cursor:zoom-out}.fancybox__carousel .fancybox__slide.is-draggable .fancybox__content{cursor:move;cursor:grab}.fancybox__carousel .fancybox__slide.is-dragging .fancybox__content{cursor:move;cursor:grabbing}.fancybox__image{transform-origin:0 0;user-select:none;transition:none}.has-image .fancybox__content{padding:0;background:rgba(0,0,0,0);min-height:1px}.is-closing .has-image .fancybox__content{overflow:visible}.has-image[data-image-fit=contain]{overflow:visible;touch-action:none}.has-image[data-image-fit=contain] .fancybox__content{flex-direction:row;flex-wrap:wrap}.has-image[data-image-fit=contain] .fancybox__image{max-width:100%;max-height:100%;object-fit:contain}.has-image[data-image-fit=contain-w]{overflow-x:hidden;overflow-y:auto}.has-image[data-image-fit=contain-w] .fancybox__content{min-height:auto}.has-image[data-image-fit=contain-w] .fancybox__image{max-width:100%;height:auto}.has-image[data-image-fit=cover]{overflow:visible;touch-action:none}.has-image[data-image-fit=cover] .fancybox__content{width:100%;height:100%}.has-image[data-image-fit=cover] .fancybox__image{width:100%;height:100%;object-fit:cover}.fancybox__carousel .fancybox__slide.has-iframe .fancybox__content,.fancybox__carousel .fancybox__slide.has-map .fancybox__content,.fancybox__carousel .fancybox__slide.has-pdf .fancybox__content,.fancybox__carousel .fancybox__slide.has-video .fancybox__content,.fancybox__carousel .fancybox__slide.has-html5video .fancybox__content{max-width:100%;flex-shrink:1;min-height:1px;overflow:visible}.fancybox__carousel .fancybox__slide.has-iframe .fancybox__content,.fancybox__carousel .fancybox__slide.has-map .fancybox__content,.fancybox__carousel .fancybox__slide.has-pdf .fancybox__content{width:100%;height:80%}.fancybox__carousel .fancybox__slide.has-video .fancybox__content,.fancybox__carousel .fancybox__slide.has-html5video .fancybox__content{width:960px;height:540px;max-width:100%;max-height:100%}.fancybox__carousel .fancybox__slide.has-map .fancybox__content,.fancybox__carousel .fancybox__slide.has-pdf .fancybox__content,.fancybox__carousel .fancybox__slide.has-video .fancybox__content,.fancybox__carousel .fancybox__slide.has-html5video .fancybox__content{padding:0;background:rgba(24,24,27,.9);color:#fff}.fancybox__carousel .fancybox__slide.has-map .fancybox__content{background:#e5e3df}.fancybox__html5video,.fancybox__iframe{border:0;display:block;height:100%;width:100%;background:rgba(0,0,0,0)}.fancybox-placeholder{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0, 0, 0, 0);white-space:nowrap;border-width:0}.fancybox__thumbs{flex:0 0 auto;position:relative;padding:0px 3px;opacity:var(--fancybox-opacity, 1)}.fancybox__container.is-animated[aria-hidden=false] .fancybox__thumbs{animation:.15s ease-in backwards fancybox-fadeIn}.fancybox__container.is-animated.is-closing .fancybox__thumbs{opacity:0}.fancybox__thumbs .carousel__slide{flex:0 0 auto;width:var(--fancybox-thumbs-width, 96px);margin:0;padding:8px 3px;box-sizing:content-box;display:flex;align-items:center;justify-content:center;overflow:visible;cursor:pointer}.fancybox__thumbs .carousel__slide .fancybox__thumb::after{content:"";position:absolute;top:0;left:0;right:0;bottom:0;border-width:5px;border-style:solid;border-color:var(--fancybox-accent-color, rgba(34, 213, 233, 0.96));opacity:0;transition:opacity .15s ease;border-radius:var(--fancybox-thumbs-border-radius, 4px)}.fancybox__thumbs .carousel__slide.is-nav-selected .fancybox__thumb::after{opacity:.92}.fancybox__thumbs .carousel__slide>*{pointer-events:none;user-select:none}.fancybox__thumb{position:relative;width:100%;padding-top:calc(100%/(var(--fancybox-thumbs-ratio, 1.5)));background-size:cover;background-position:center center;background-color:rgba(255,255,255,.1);background-repeat:no-repeat;border-radius:var(--fancybox-thumbs-border-radius, 4px)}.fancybox__toolbar{position:absolute;top:0;right:0;left:0;z-index:20;background:linear-gradient(to top, hsla(0deg, 0%, 0%, 0) 0%, hsla(0deg, 0%, 0%, 0.006) 8.1%, hsla(0deg, 0%, 0%, 0.021) 15.5%, hsla(0deg, 0%, 0%, 0.046) 22.5%, hsla(0deg, 0%, 0%, 0.077) 29%, hsla(0deg, 0%, 0%, 0.114) 35.3%, hsla(0deg, 0%, 0%, 0.155) 41.2%, hsla(0deg, 0%, 0%, 0.198) 47.1%, hsla(0deg, 0%, 0%, 0.242) 52.9%, hsla(0deg, 0%, 0%, 0.285) 58.8%, hsla(0deg, 0%, 0%, 0.326) 64.7%, hsla(0deg, 0%, 0%, 0.363) 71%, hsla(0deg, 0%, 0%, 0.394) 77.5%, hsla(0deg, 0%, 0%, 0.419) 84.5%, hsla(0deg, 0%, 0%, 0.434) 91.9%, hsla(0deg, 0%, 0%, 0.44) 100%);padding:0;touch-action:none;display:flex;justify-content:space-between;--carousel-button-svg-width: 20px;--carousel-button-svg-height: 20px;opacity:var(--fancybox-opacity, 1);text-shadow:var(--fancybox-toolbar-text-shadow, 1px 1px 1px rgba(0, 0, 0, 0.4))}@media all and (min-width: 1024px){.fancybox__toolbar{padding:8px}}.fancybox__container.is-animated[aria-hidden=false] .fancybox__toolbar{animation:.15s ease-in backwards fancybox-fadeIn}.fancybox__container.is-animated.is-closing .fancybox__toolbar{opacity:0}.fancybox__toolbar__items{display:flex}.fancybox__toolbar__items--left{margin-right:auto}.fancybox__toolbar__items--center{position:absolute;left:50%;transform:translateX(-50%)}.fancybox__toolbar__items--right{margin-left:auto}@media(max-width: 640px){.fancybox__toolbar__items--center:not(:last-child){display:none}}.fancybox__counter{min-width:72px;padding:0 10px;line-height:var(--carousel-button-height, 48px);text-align:center;font-size:17px;font-variant-numeric:tabular-nums;-webkit-font-smoothing:subpixel-antialiased}.fancybox__progress{background:var(--fancybox-accent-color, rgba(34, 213, 233, 0.96));height:3px;left:0;position:absolute;right:0;top:0;transform:scaleX(0);transform-origin:0;transition-property:transform;transition-timing-function:linear;z-index:30;user-select:none}.fancybox__container:fullscreen::backdrop{opacity:0}.fancybox__button--fullscreen g:nth-child(2){display:none}.fancybox__container:fullscreen .fancybox__button--fullscreen g:nth-child(1){display:none}.fancybox__container:fullscreen .fancybox__button--fullscreen g:nth-child(2){display:block}.fancybox__button--slideshow g:nth-child(2){display:none}.fancybox__container.has-slideshow .fancybox__button--slideshow g:nth-child(1){display:none}.fancybox__container.has-slideshow .fancybox__button--slideshow g:nth-child(2){display:block}

.fancybox__toolbar {
  padding: 0;
}

.fancybox__container {
  z-index: 30000;
}

.carousel__button {
  border: 1px solid;
  border-radius: 0;
}

.user-content img {
	max-width: 100%;
	height: auto !important;
}

.social-share-button {
  margin-right: 20px;
  &:hover,
  &:focus{
    opacity: 0.8;
  }
}

{#/*============================================================================
  #Cart detail
==============================================================================*/#}


{# /* Table */ #}

.cart-img-col-title{
  width: 100px;
}

.cart-qty-col-title{
  width: 120px;
}

.cart-item{
  &-name-container {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    min-height: 50px;
  }
  &-image-col {
    width: 93px;
  }
  &-image {
    width: 100%;
    height: 100%;
    object-fit: cover;
    position: absolute;
  }
  &-btn{
    padding: 6px;
    display: inline-block;
    background: transparent;
    font-size: 16px;
    opacity: 0.8;
    &:hover{
      opacity: 0.6;
    }
  }
  &-input{
    display: inline-block;
    width: 40px;
    height: 30px;
    font-size: 16px;
    text-align: center;
    -moz-appearance:textfield;
    &::-webkit-outer-spin-button,
    &::-webkit-inner-spin-button{
      -webkit-appearance: none;
    }
  }
  .fa-cog{
    display: none;
  }
  &-spinner{
    position: absolute;
    left: 50%;
    width: 40px;
    margin-left: -20px;
    text-align: center;
  }
  &-delete{
    width: 49px;
  }
}

.cart-quantity-input-container i{
  padding: 6px 14px;
}

.cart-unit-price{
  float: left;
  width: 100%;
  margin: 5px 0 2px 0;
}


{# /* // Totals */ #}

.cart-subtotal{
  float: right;
  clear: both;
  margin: 0 0 10px 0;
}
.total-promotions-row{
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  padding: 15px 0;
}

.cart-promotion-detail,
.cart-promotion-number{
  -ms-flex-preferred-size: 0;
  flex-basis: 0;
  -ms-flex-positive: 1;
  flex-grow: 1;
  max-width: 100%;
  position: relative;
  width: 100%;
  min-height: 1px;
  padding-right: 15px;
  padding-left: 15px;
}

.cart-promotion-number{
  -ms-flex: 0 0 auto;
  flex: 0 0 auto;
  width: auto;
  max-width: none;
  text-align: right;
}

{#/*============================================================================
  #Contact page
==============================================================================*/#}

.contact-item {
  position: relative;
  padding-left: 30px;
  &-icon {
    position: absolute;
    left: 0;
  }
}

{#/*============================================================================
  #Media queries
==============================================================================*/ #}

{# /* // Min width 768px */ #}

@media (min-width: 768px) { 

  {# /* //// Components */ #}

  {# /* Notifications */ #}

  .notification-cart-container.notification-fixed {
    right: 0;
    bottom: initial;
    left: initial;
    max-width: 345px;
  }

  {# /* Modals */ #}

  .modal{
    &-centered{
      left: 50%;
      height: 80%;
      width: 70%;
      &-small{
        left: 50%;
        width: 40%;
        height: auto;
        max-height: 80%;
      }
      &-medium {
        width: 800px;
        max-height: 715px
      }
    }
    &-bottom {
      transform: translateX(-50%);
      &.modal-centered-md {
        left: 50%;
      }
    }
    &-docked-md{
      width: 450px;
      &-centered{
        bottom: auto;
        height: auto;
      }
      &-right {
        right: 20px;
        bottom: -100%;
        left: initial;
        transform: none;
      }
    }
    &-docked-small{
      width: 375px;
    }
    &-left-md{
      top: initial;
      right: initial;
      left: -100%;
      bottom: 0;
      &.modal-show {
        right: initial;
        left: 0;
      }
    }
    &-right-md{
      top: 0;
      right: -100%;
      left: initial;
      bottom: 0;
      height: 100%;
      margin: 0;
      &.modal-show {
        top: 0;
        right: 0;
        left: initial;
        height: 100%;
        margin: 0;
      }
    }
    &-bottom-md{
      top: 100%;
      transform: translate(-50%, 0);
      &.modal-show{
        top: 50%;
      }
    }
    &-centered-md.modal-show {
      left: 50%;
      transform: translateX(-50%);
      &.modal-bottom-md,
      &.modal-bottom {
        top: 50%;
        transform: translate(-50% , -50%);
      }
    }
    &-bottom-sheet {
      top: 100%;
      &.modal-right-md {
        top: 0;
      }
      &.modal-show {
        top: 0;
        bottom: auto;
      }
    }
    &-docked-md-right.modal-show {
      top: initial;
      right: 0;
      bottom: 0;
      left: initial;
    }
    &-fade {
      opacity: 0;
      &.modal-show {
        opacity: 1;
      }
    }
    &-floating-close {
      margin: 20px 35px -50px 0;
    }
    &-nav-search {
      max-width: 800px;
      height: auto;
      max-height: 80%;
      background-color: transparent;
      border-top: 0;
      border-bottom: 0;
      border-left: 0;
      .modal-header{
        background-color: transparent;
        cursor: default;
      }
      .modal-body {
        position: relative;
        padding: 0;
      }
      .search-input {
        font-size: var(--h4);
      }
      .search-input-submit{
        right: 10px;
        margin-top: -20px;
        font-size: var(--h4);
      }
      .search-suggest {
        position: relative;
        .search-suggest-text,
        .search-suggest-name {
          font-size:var(--font-base);
        }
      }
    }
  }

  .modal::-webkit-scrollbar,
  .modal-scrollable::-webkit-scrollbar,
  .modal-scrollable-area::-webkit-scrollbar {
    width: 3px;
  }



  .fancybox__container .has-inline .fancybox__content,
  .fancybox-slide--html .fancybox-content{
    width: 90%;
    height: auto;
  }

  {# /* Forms */ #}

  .radio-button-label {
    padding-top: 2px;
  }
  
  {# /* Tabs */ #}

  .tab-group{
    overflow-x: auto;
    white-space: normal;
    .tab{
      float: left;
    }
  }

   {# /* Search */ #}

  .search-suggest {
    top: 100%;
    {% if settings.search_big_desktop %}
      {% if settings.logo_size == 'small' %}
        width: 250px;
      {% else %}
        width: 270px;
      {% endif %}
    {% else %}
      width: calc(100% + 1px);
    {% endif %}
    .search-suggest-image-container {
      width: 90px;
      height: 90px;
    }
  }
    
  .modal-nav-hamburger {
    .nav-list-panel {
      width: 450px;
      &-left-md{
        right: initial;
        left: -100%;
      }
      &-right-md{
        right: -100%;
        left: initial;
      }
      &-left-md.nav-list-panel-show {
        right: initial;
        left: 0;
      }
      &-right-md.nav-list-panel-show {
        right: 0;
        left: initial;
      }
    }
  }

  {# /* //// Home */ #}

  .section-newsletter-home {
    padding-top: 35%;
  }

  {# /* //// Product grid */ #}

  .modal-quickshop {
    height: auto;
    .alert-warning {
      position: relative;
      top: initial;
      margin-top: 10px;
      text-align: left;
      border-left: none;
    }
  }
  .quickshop-image {
    position: relative;
    max-height: 800px;
    &-container {
      max-height: 800px;
    }
  }

  {# /* //// Cart */ #}

  .cart-item {
    &-image-col-md {
      width: 100px;
      height: 100px;
      overflow: hidden; 
    }
    &-image-md {
      height: 100px;
    }
  }


  {# /* //// Footer */ #}

  .footer form .newsletter-btn {
    top: 5px;
  }
  .copyright {
    padding: 0;
  }
}

{#/*============================================================================
  #Critical path utilities
==============================================================================*/#}

.visible-when-content-ready{
  visibility: visible!important;
}
.display-when-content-ready{
  display: block!important;
}
