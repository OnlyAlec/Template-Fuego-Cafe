{# /* Style tokens */ #}

:root {

  /* Gutters */

  --gutter: 15px;
  --guter-container: 15px;
  --guter-container-md: 15px;
  --gutter-negative: calc(var(--gutter) * -1);
  --gutter-half: calc(var(--gutter) / 2);
  --gutter-half-negative: calc(var(--gutter) * -1 / 2);
  --gutter-double: calc(var(--gutter) * 2);

  /* Font sizes */

  --h1: 28px;
  --h1-huge: 34px;
  --h1-huge-md: 42px;
  --h2: 24px;
  --h3: 20px;
  --h4: 18px;
  --h5: 16px;
  --h6: 14px;
 
  --font-big: 16px;
  --font-base: 14px;
  --font-small: 12px;
  --font-smallest: 10px;

  /* Borders */
  --border-solid: 1px solid;
  --border-dashed: 1px dashed;

}

{% raw %}@charset "UTF-8":

/*============================================================================
critical-css.tpl

    -This file contains all the theme critical styles wich will be loaded inline before the rest of the site
    -Rest of styling can be found in:
    	--static/css/style-async.css.tpl --> For non critical styles witch will be loaded asynchronously
      --static/css/style-colors.critical.tpl --> For critical CSS rendered inline before the rest of the site

==============================================================================*/

/*============================================================================
  Table of Contents

  #External CSS libraries and plugins
    // Bootstrap Grid v4.1.3
    // Swiper 4.4.2
  #Critical path helpers
  #Components
    // Variables
    // Wrappers
    // Grid
    // Placeholders and preloaders
    // Animations
    // Buttons
    // Links
    // Titles and breadcrumbs
    // Icons
    // Texts
    // Sliders
    // Lists
    // Notifications
    // Badge
    // Tooltip
    // Images
    // Forms
    // Video
  #Header and nav
    // Adbar & Topbar
    // Nav
    // Logo
    // Cart widget and search
  #Home page
    // Sections title
    // Featured products
    // Video
    // Main categories
    // Welcome message
  #Banners
    // Home banners
    // Informative banners
  #Product grid
    // Category controls
    // Grid item
    // Labels
  #Product detail
  	// Image
  #Cart detail
    // Shipping Calculator
  #Contact page
    // Data contact
  #Media queries
    // Min width 1400px
    // Min width 768px
    //// Components
    //// Header and Nav
    //// Product grid
    //// Helper classes
  #Helper classes
    // Margin and padding
    // Text
    // Algin
    // Position
    // Image
    // Visibility
    // Float 
    // Width

==============================================================================*/

/*============================================================================
  #External CSS libraries and plugins
==============================================================================*/

{# /* // Bootstrap Grid v4.1.3 */ #}

@-ms-viewport{width:device-width}html{box-sizing:border-box;-ms-overflow-style:scrollbar}*,::after,::before{box-sizing:inherit}.container{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}@media (min-width:576px){.container{max-width:540px}}@media (min-width:768px){.container{max-width:720px}}@media (min-width:992px){.container{max-width:960px}}@media (min-width:1200px){.container{max-width:1140px}}.container-fluid{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}.row{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;margin-right:-15px;margin-left:-15px}.no-gutters{margin-right:0;margin-left:0}.no-gutters>.col,.no-gutters>[class*=col-]{padding-right:0;padding-left:0}.col,.col-1,.col-10,.col-11,.col-12,.col-2,.col-3,.col-4,.col-5,.col-6,.col-7,.col-8,.col-9,.col-auto,.col-lg,.col-lg-1,.col-lg-10,.col-lg-11,.col-lg-12,.col-lg-2,.col-lg-3,.col-lg-4,.col-lg-5,.col-lg-6,.col-lg-7,.col-lg-8,.col-lg-9,.col-lg-auto,.col-md,.col-md-1,.col-md-10,.col-md-11,.col-md-12,.col-md-2,.col-md-3,.col-md-4,.col-md-5,.col-md-6,.col-md-7,.col-md-8,.col-md-9,.col-md-auto,.col-sm,.col-sm-1,.col-sm-10,.col-sm-11,.col-sm-12,.col-sm-2,.col-sm-3,.col-sm-4,.col-sm-5,.col-sm-6,.col-sm-7,.col-sm-8,.col-sm-9,.col-sm-auto,.col-xl,.col-xl-1,.col-xl-10,.col-xl-11,.col-xl-12,.col-xl-2,.col-xl-3,.col-xl-4,.col-xl-5,.col-xl-6,.col-xl-7,.col-xl-8,.col-xl-9,.col-xl-auto{position:relative;width:100%;min-height:1px;padding-right:15px;padding-left:15px}.col{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-first{-ms-flex-order:-1;order:-1}.order-last{-ms-flex-order:13;order:13}.order-0{-ms-flex-order:0;order:0}.order-1{-ms-flex-order:1;order:1}.order-2{-ms-flex-order:2;order:2}.order-3{-ms-flex-order:3;order:3}.order-4{-ms-flex-order:4;order:4}.order-5{-ms-flex-order:5;order:5}.order-6{-ms-flex-order:6;order:6}.order-7{-ms-flex-order:7;order:7}.order-8{-ms-flex-order:8;order:8}.order-9{-ms-flex-order:9;order:9}.order-10{-ms-flex-order:10;order:10}.order-11{-ms-flex-order:11;order:11}.order-12{-ms-flex-order:12;order:12}.offset-1{margin-left:8.333333%}.offset-2{margin-left:16.666667%}.offset-3{margin-left:25%}.offset-4{margin-left:33.333333%}.offset-5{margin-left:41.666667%}.offset-6{margin-left:50%}.offset-7{margin-left:58.333333%}.offset-8{margin-left:66.666667%}.offset-9{margin-left:75%}.offset-10{margin-left:83.333333%}.offset-11{margin-left:91.666667%}@media (min-width:576px){.col-sm{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-sm-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-sm-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-sm-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-sm-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-sm-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-sm-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-sm-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-sm-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-sm-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-sm-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-sm-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-sm-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-sm-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-sm-first{-ms-flex-order:-1;order:-1}.order-sm-last{-ms-flex-order:13;order:13}.order-sm-0{-ms-flex-order:0;order:0}.order-sm-1{-ms-flex-order:1;order:1}.order-sm-2{-ms-flex-order:2;order:2}.order-sm-3{-ms-flex-order:3;order:3}.order-sm-4{-ms-flex-order:4;order:4}.order-sm-5{-ms-flex-order:5;order:5}.order-sm-6{-ms-flex-order:6;order:6}.order-sm-7{-ms-flex-order:7;order:7}.order-sm-8{-ms-flex-order:8;order:8}.order-sm-9{-ms-flex-order:9;order:9}.order-sm-10{-ms-flex-order:10;order:10}.order-sm-11{-ms-flex-order:11;order:11}.order-sm-12{-ms-flex-order:12;order:12}.offset-sm-0{margin-left:0}.offset-sm-1{margin-left:8.333333%}.offset-sm-2{margin-left:16.666667%}.offset-sm-3{margin-left:25%}.offset-sm-4{margin-left:33.333333%}.offset-sm-5{margin-left:41.666667%}.offset-sm-6{margin-left:50%}.offset-sm-7{margin-left:58.333333%}.offset-sm-8{margin-left:66.666667%}.offset-sm-9{margin-left:75%}.offset-sm-10{margin-left:83.333333%}.offset-sm-11{margin-left:91.666667%}}@media (min-width:768px){.col-md{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-md-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-md-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-md-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-md-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-md-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-md-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-md-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-md-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-md-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-md-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-md-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-md-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-md-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-md-first{-ms-flex-order:-1;order:-1}.order-md-last{-ms-flex-order:13;order:13}.order-md-0{-ms-flex-order:0;order:0}.order-md-1{-ms-flex-order:1;order:1}.order-md-2{-ms-flex-order:2;order:2}.order-md-3{-ms-flex-order:3;order:3}.order-md-4{-ms-flex-order:4;order:4}.order-md-5{-ms-flex-order:5;order:5}.order-md-6{-ms-flex-order:6;order:6}.order-md-7{-ms-flex-order:7;order:7}.order-md-8{-ms-flex-order:8;order:8}.order-md-9{-ms-flex-order:9;order:9}.order-md-10{-ms-flex-order:10;order:10}.order-md-11{-ms-flex-order:11;order:11}.order-md-12{-ms-flex-order:12;order:12}.offset-md-0{margin-left:0}.offset-md-1{margin-left:8.333333%}.offset-md-2{margin-left:16.666667%}.offset-md-3{margin-left:25%}.offset-md-4{margin-left:33.333333%}.offset-md-5{margin-left:41.666667%}.offset-md-6{margin-left:50%}.offset-md-7{margin-left:58.333333%}.offset-md-8{margin-left:66.666667%}.offset-md-9{margin-left:75%}.offset-md-10{margin-left:83.333333%}.offset-md-11{margin-left:91.666667%}}@media (min-width:992px){.col-lg{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-lg-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-lg-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-lg-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-lg-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-lg-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-lg-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-lg-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-lg-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-lg-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-lg-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-lg-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-lg-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-lg-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-lg-first{-ms-flex-order:-1;order:-1}.order-lg-last{-ms-flex-order:13;order:13}.order-lg-0{-ms-flex-order:0;order:0}.order-lg-1{-ms-flex-order:1;order:1}.order-lg-2{-ms-flex-order:2;order:2}.order-lg-3{-ms-flex-order:3;order:3}.order-lg-4{-ms-flex-order:4;order:4}.order-lg-5{-ms-flex-order:5;order:5}.order-lg-6{-ms-flex-order:6;order:6}.order-lg-7{-ms-flex-order:7;order:7}.order-lg-8{-ms-flex-order:8;order:8}.order-lg-9{-ms-flex-order:9;order:9}.order-lg-10{-ms-flex-order:10;order:10}.order-lg-11{-ms-flex-order:11;order:11}.order-lg-12{-ms-flex-order:12;order:12}.offset-lg-0{margin-left:0}.offset-lg-1{margin-left:8.333333%}.offset-lg-2{margin-left:16.666667%}.offset-lg-3{margin-left:25%}.offset-lg-4{margin-left:33.333333%}.offset-lg-5{margin-left:41.666667%}.offset-lg-6{margin-left:50%}.offset-lg-7{margin-left:58.333333%}.offset-lg-8{margin-left:66.666667%}.offset-lg-9{margin-left:75%}.offset-lg-10{margin-left:83.333333%}.offset-lg-11{margin-left:91.666667%}}@media (min-width:1200px){.col-xl{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-xl-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-xl-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-xl-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-xl-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-xl-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-xl-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-xl-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-xl-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-xl-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-xl-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-xl-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-xl-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-xl-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-xl-first{-ms-flex-order:-1;order:-1}.order-xl-last{-ms-flex-order:13;order:13}.order-xl-0{-ms-flex-order:0;order:0}.order-xl-1{-ms-flex-order:1;order:1}.order-xl-2{-ms-flex-order:2;order:2}.order-xl-3{-ms-flex-order:3;order:3}.order-xl-4{-ms-flex-order:4;order:4}.order-xl-5{-ms-flex-order:5;order:5}.order-xl-6{-ms-flex-order:6;order:6}.order-xl-7{-ms-flex-order:7;order:7}.order-xl-8{-ms-flex-order:8;order:8}.order-xl-9{-ms-flex-order:9;order:9}.order-xl-10{-ms-flex-order:10;order:10}.order-xl-11{-ms-flex-order:11;order:11}.order-xl-12{-ms-flex-order:12;order:12}.offset-xl-0{margin-left:0}.offset-xl-1{margin-left:8.333333%}.offset-xl-2{margin-left:16.666667%}.offset-xl-3{margin-left:25%}.offset-xl-4{margin-left:33.333333%}.offset-xl-5{margin-left:41.666667%}.offset-xl-6{margin-left:50%}.offset-xl-7{margin-left:58.333333%}.offset-xl-8{margin-left:66.666667%}.offset-xl-9{margin-left:75%}.offset-xl-10{margin-left:83.333333%}.offset-xl-11{margin-left:91.666667%}}.d-none{display:none!important}.d-inline{display:inline!important}.d-inline-block{display:inline-block!important}.d-block{display:block!important}.d-table{display:table!important}.d-table-row{display:table-row!important}.d-table-cell{display:table-cell!important}.d-flex{display:-ms-flexbox!important;display:flex!important}.d-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}@media (min-width:576px){.d-sm-none{display:none!important}.d-sm-inline{display:inline!important}.d-sm-inline-block{display:inline-block!important}.d-sm-block{display:block!important}.d-sm-table{display:table!important}.d-sm-table-row{display:table-row!important}.d-sm-table-cell{display:table-cell!important}.d-sm-flex{display:-ms-flexbox!important;display:flex!important}.d-sm-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media (min-width:768px){.d-md-none{display:none!important}.d-md-inline{display:inline!important}.d-md-inline-block{display:inline-block!important}.d-md-block{display:block!important}.d-md-table{display:table!important}.d-md-table-row{display:table-row!important}.d-md-table-cell{display:table-cell!important}.d-md-flex{display:-ms-flexbox!important;display:flex!important}.d-md-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media (min-width:992px){.d-lg-none{display:none!important}.d-lg-inline{display:inline!important}.d-lg-inline-block{display:inline-block!important}.d-lg-block{display:block!important}.d-lg-table{display:table!important}.d-lg-table-row{display:table-row!important}.d-lg-table-cell{display:table-cell!important}.d-lg-flex{display:-ms-flexbox!important;display:flex!important}.d-lg-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media (min-width:1200px){.d-xl-none{display:none!important}.d-xl-inline{display:inline!important}.d-xl-inline-block{display:inline-block!important}.d-xl-block{display:block!important}.d-xl-table{display:table!important}.d-xl-table-row{display:table-row!important}.d-xl-table-cell{display:table-cell!important}.d-xl-flex{display:-ms-flexbox!important;display:flex!important}.d-xl-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media print{.d-print-none{display:none!important}.d-print-inline{display:inline!important}.d-print-inline-block{display:inline-block!important}.d-print-block{display:block!important}.d-print-table{display:table!important}.d-print-table-row{display:table-row!important}.d-print-table-cell{display:table-cell!important}.d-print-flex{display:-ms-flexbox!important;display:flex!important}.d-print-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}.flex-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-center{-ms-flex-align:center!important;align-items:center!important}.align-items-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}@media (min-width:576px){.flex-sm-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-sm-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-sm-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-sm-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-sm-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-sm-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-sm-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-sm-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-sm-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-sm-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-sm-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-sm-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-sm-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-sm-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-sm-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-sm-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-sm-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-sm-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-sm-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-sm-center{-ms-flex-align:center!important;align-items:center!important}.align-items-sm-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-sm-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-sm-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-sm-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-sm-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-sm-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-sm-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-sm-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-sm-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-sm-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-sm-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-sm-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-sm-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-sm-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}@media (min-width:768px){.flex-md-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-md-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-md-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-md-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-md-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-md-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-md-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-md-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-md-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-md-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-md-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-md-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-md-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-md-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-md-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-md-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-md-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-md-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-md-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-md-center{-ms-flex-align:center!important;align-items:center!important}.align-items-md-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-md-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-md-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-md-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-md-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-md-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-md-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-md-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-md-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-md-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-md-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-md-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-md-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-md-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}@media (min-width:992px){.flex-lg-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-lg-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-lg-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-lg-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-lg-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-lg-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-lg-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-lg-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-lg-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-lg-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-lg-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-lg-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-lg-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-lg-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-lg-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-lg-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-lg-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-lg-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-lg-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-lg-center{-ms-flex-align:center!important;align-items:center!important}.align-items-lg-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-lg-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-lg-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-lg-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-lg-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-lg-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-lg-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-lg-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-lg-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-lg-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-lg-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-lg-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-lg-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-lg-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}@media (min-width:1200px){.flex-xl-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-xl-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-xl-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-xl-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-xl-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-xl-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-xl-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-xl-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-xl-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-xl-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-xl-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-xl-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-xl-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-xl-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-xl-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-xl-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-xl-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-xl-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-xl-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-xl-center{-ms-flex-align:center!important;align-items:center!important}.align-items-xl-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-xl-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-xl-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-xl-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-xl-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-xl-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-xl-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-xl-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-xl-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-xl-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-xl-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-xl-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-xl-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-xl-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}

{# /* // Swiper 4.4.2 */ #}
.swiper-container{width:100%;margin:0 auto;position:relative;overflow:hidden;list-style:none;padding:0;z-index:1}.swiper-container-no-flexbox .swiper-slide{float:left}.swiper-container-vertical>.swiper-wrapper{-webkit-box-orient:vertical;-webkit-box-direction:normal;-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column}.swiper-wrapper{position:relative;width:100%;height:100%;z-index:1;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-transition-property:-webkit-transform;transition-property:-webkit-transform;-o-transition-property:transform;transition-property:transform;transition-property:transform,-webkit-transform}.swiper-container-android .swiper-slide,.swiper-wrapper{-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}.swiper-container-multirow>.swiper-wrapper{-webkit-flex-wrap:wrap;-ms-flex-wrap:wrap;flex-wrap:wrap}.swiper-container-free-mode>.swiper-wrapper{-webkit-transition-timing-function:ease-out;-o-transition-timing-function:ease-out;transition-timing-function:ease-out;margin:0 auto}.swiper-slide{-webkit-flex-shrink:0;-ms-flex-negative:0;flex-shrink:0;width:100%;height:100%;position:relative;-webkit-transition-property:-webkit-transform;transition-property:-webkit-transform;-o-transition-property:transform;transition-property:transform;transition-property:transform,-webkit-transform}.swiper-slide-invisible-blank{visibility:hidden}.swiper-container-autoheight,.swiper-container-autoheight .swiper-slide{height:auto}.swiper-container-autoheight .swiper-wrapper{-webkit-box-align:start;-webkit-align-items:flex-start;-ms-flex-align:start;align-items:flex-start;-webkit-transition-property:height,-webkit-transform;transition-property:height,-webkit-transform;-o-transition-property:transform,height;transition-property:transform,height;transition-property:transform,height,-webkit-transform}.swiper-container-3d{-webkit-perspective:1200px;perspective:1200px}.swiper-container-3d .swiper-cube-shadow,.swiper-container-3d .swiper-slide,.swiper-container-3d .swiper-slide-shadow-bottom,.swiper-container-3d .swiper-slide-shadow-left,.swiper-container-3d .swiper-slide-shadow-right,.swiper-container-3d .swiper-slide-shadow-top,.swiper-container-3d .swiper-wrapper{-webkit-transform-style:preserve-3d;transform-style:preserve-3d}.swiper-container-3d .swiper-slide-shadow-bottom,.swiper-container-3d .swiper-slide-shadow-left,.swiper-container-3d .swiper-slide-shadow-right,.swiper-container-3d .swiper-slide-shadow-top{position:absolute;left:0;top:0;width:100%;height:100%;pointer-events:none;z-index:10}.swiper-container-3d .swiper-slide-shadow-left{background-image:-webkit-gradient(linear,right top,left top,from(rgba(0,0,0,.5)),to(rgba(0,0,0,0)));background-image:-webkit-linear-gradient(right,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:-o-linear-gradient(right,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:linear-gradient(to left,rgba(0,0,0,.5),rgba(0,0,0,0))}.swiper-container-3d .swiper-slide-shadow-right{background-image:-webkit-gradient(linear,left top,right top,from(rgba(0,0,0,.5)),to(rgba(0,0,0,0)));background-image:-webkit-linear-gradient(left,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:-o-linear-gradient(left,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:linear-gradient(to right,rgba(0,0,0,.5),rgba(0,0,0,0))}.swiper-container-3d .swiper-slide-shadow-top{background-image:-webkit-gradient(linear,left bottom,left top,from(rgba(0,0,0,.5)),to(rgba(0,0,0,0)));background-image:-webkit-linear-gradient(bottom,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:-o-linear-gradient(bottom,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:linear-gradient(to top,rgba(0,0,0,.5),rgba(0,0,0,0))}.swiper-container-3d .swiper-slide-shadow-bottom{background-image:-webkit-gradient(linear,left top,left bottom,from(rgba(0,0,0,.5)),to(rgba(0,0,0,0)));background-image:-webkit-linear-gradient(top,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:-o-linear-gradient(top,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:linear-gradient(to bottom,rgba(0,0,0,.5),rgba(0,0,0,0))}.swiper-container-wp8-horizontal,.swiper-container-wp8-horizontal>.swiper-wrapper{-ms-touch-action:pan-y;touch-action:pan-y}.swiper-container-wp8-vertical,.swiper-container-wp8-vertical>.swiper-wrapper{-ms-touch-action:pan-x;touch-action:pan-x}.swiper-button-next,.swiper-button-prev{position:absolute;top:50%;z-index:10;width:30px;height:40px;margin-top:-25px;line-height:30px;color:#fff;text-align:center;cursor:pointer}.swiper-button-next.swiper-button-disabled,.swiper-button-prev.swiper-button-disabled{opacity:0;cursor:auto}.swiper-button-prev,.swiper-container-rtl .swiper-button-next{left:0;right:auto}.swiper-button-next,.swiper-container-rtl .swiper-button-prev{right:0;left:auto}.swiper-button-lock{display:none}.swiper-pagination{position:absolute;text-align:center;-webkit-transition:.3s opacity;-o-transition:.3s opacity;transition:.3s opacity;-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0);z-index:10}.swiper-pagination.swiper-pagination-hidden{opacity:0}.swiper-pagination-custom,.swiper-pagination-fraction{bottom:20px;left:0;width:100%}.swiper-pagination-bullets-dynamic{overflow:hidden;font-size:0}.swiper-pagination-bullets-dynamic .swiper-pagination-bullet{-webkit-transform:scale(.33);-ms-transform:scale(.33);transform:scale(.33);position:relative}.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active{-webkit-transform:scale(1);-ms-transform:scale(1);transform:scale(1)}.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-main{-webkit-transform:scale(1);-ms-transform:scale(1);transform:scale(1)}.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-prev{-webkit-transform:scale(.66);-ms-transform:scale(.66);transform:scale(.66)}.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-prev-prev{-webkit-transform:scale(.33);-ms-transform:scale(.33);transform:scale(.33)}.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-next{-webkit-transform:scale(.66);-ms-transform:scale(.66);transform:scale(.66)}.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-next-next{-webkit-transform:scale(.33);-ms-transform:scale(.33);transform:scale(.33)}.swiper-pagination-bullet{width:6px;height:6px;display:inline-block;border-radius:100%;background:#000;opacity:.2}button.swiper-pagination-bullet{border:none;margin:0;padding:0;-webkit-box-shadow:none;box-shadow:none;-webkit-appearance:none;-moz-appearance:none;appearance:none}.swiper-pagination-clickable .swiper-pagination-bullet{cursor:pointer}.swiper-pagination-bullet-active{opacity:1;background:#007aff}.swiper-container-vertical>.swiper-pagination-bullets{right:10px;top:50%;-webkit-transform:translate3d(0,-50%,0);transform:translate3d(0,-50%,0)}.swiper-container-vertical>.swiper-pagination-bullets .swiper-pagination-bullet{margin:6px 0;display:block}.swiper-container-vertical>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic{top:50%;-webkit-transform:translateY(-50%);-ms-transform:translateY(-50%);transform:translateY(-50%);width:8px}.swiper-container-vertical>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic .swiper-pagination-bullet{display:inline-block;-webkit-transition:.2s top,.2s -webkit-transform;transition:.2s top,.2s -webkit-transform;-o-transition:.2s transform,.2s top;transition:.2s transform,.2s top;transition:.2s transform,.2s top,.2s -webkit-transform}.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet{margin:0 4px}.swiper-container-horizontal>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic{left:50%;-webkit-transform:translateX(-50%);-ms-transform:translateX(-50%);transform:translateX(-50%);white-space:nowrap}.swiper-container-horizontal>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic .swiper-pagination-bullet{-webkit-transition:.2s left,.2s -webkit-transform;transition:.2s left,.2s -webkit-transform;-o-transition:.2s transform,.2s left;transition:.2s transform,.2s left;transition:.2s transform,.2s left,.2s -webkit-transform}.swiper-container-horizontal.swiper-container-rtl>.swiper-pagination-bullets-dynamic .swiper-pagination-bullet{-webkit-transition:.2s right,.2s -webkit-transform;transition:.2s right,.2s -webkit-transform;-o-transition:.2s transform,.2s right;transition:.2s transform,.2s right;transition:.2s transform,.2s right,.2s -webkit-transform}.swiper-pagination-progressbar{background:rgba(0,0,0,.25);position:absolute}.swiper-pagination-progressbar .swiper-pagination-progressbar-fill{background:#007aff;position:absolute;left:0;top:0;width:100%;height:100%;-webkit-transform:scale(0);-ms-transform:scale(0);transform:scale(0);-webkit-transform-origin:left top;-ms-transform-origin:left top;transform-origin:left top}.swiper-container-rtl .swiper-pagination-progressbar .swiper-pagination-progressbar-fill{-webkit-transform-origin:right top;-ms-transform-origin:right top;transform-origin:right top}.swiper-container-horizontal>.swiper-pagination-progressbar,.swiper-container-vertical>.swiper-pagination-progressbar.swiper-pagination-progressbar-opposite{width:100%;height:4px;left:0;top:0}.swiper-container-horizontal>.swiper-pagination-progressbar.swiper-pagination-progressbar-opposite,.swiper-container-vertical>.swiper-pagination-progressbar{width:4px;height:100%;left:0;top:0}.swiper-pagination-white .swiper-pagination-bullet-active{background:#fff}.swiper-pagination-progressbar.swiper-pagination-white{background:rgba(255,255,255,.25)}.swiper-pagination-progressbar.swiper-pagination-white .swiper-pagination-progressbar-fill{background:#fff}.swiper-pagination-black .swiper-pagination-bullet-active{background:#000}.swiper-pagination-progressbar.swiper-pagination-black{background:rgba(0,0,0,.25)}.swiper-pagination-progressbar.swiper-pagination-black .swiper-pagination-progressbar-fill{background:#000}.swiper-pagination-lock{display:none}.swiper-lazy-preloader{width:42px;height:42px;position:absolute;left:50%;top:50%;margin-left:-21px;margin-top:-21px;z-index:10;-webkit-transform-origin:50%;-ms-transform-origin:50%;transform-origin:50%;-webkit-animation:swiper-preloader-spin 1s steps(12,end) infinite;animation:swiper-preloader-spin 1s steps(12,end) infinite}.swiper-lazy-preloader:after{display:block;content:'';width:100%;height:100%;background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg%20viewBox%3D'0%200%20120%20120'%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20xmlns%3Axlink%3D'http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink'%3E%3Cdefs%3E%3Cline%20id%3D'l'%20x1%3D'60'%20x2%3D'60'%20y1%3D'7'%20y2%3D'27'%20stroke%3D'%236c6c6c'%20stroke-width%3D'11'%20stroke-linecap%3D'round'%2F%3E%3C%2Fdefs%3E%3Cg%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(30%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(60%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(90%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(120%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(150%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.37'%20transform%3D'rotate(180%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.46'%20transform%3D'rotate(210%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.56'%20transform%3D'rotate(240%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.66'%20transform%3D'rotate(270%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.75'%20transform%3D'rotate(300%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.85'%20transform%3D'rotate(330%2060%2C60)'%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E");background-position:50%;background-size:100%;background-repeat:no-repeat}.swiper-lazy-preloader-white:after{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg%20viewBox%3D'0%200%20120%20120'%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20xmlns%3Axlink%3D'http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink'%3E%3Cdefs%3E%3Cline%20id%3D'l'%20x1%3D'60'%20x2%3D'60'%20y1%3D'7'%20y2%3D'27'%20stroke%3D'%23fff'%20stroke-width%3D'11'%20stroke-linecap%3D'round'%2F%3E%3C%2Fdefs%3E%3Cg%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(30%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(60%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(90%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(120%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(150%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.37'%20transform%3D'rotate(180%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.46'%20transform%3D'rotate(210%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.56'%20transform%3D'rotate(240%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.66'%20transform%3D'rotate(270%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.75'%20transform%3D'rotate(300%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.85'%20transform%3D'rotate(330%2060%2C60)'%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E")}@-webkit-keyframes swiper-preloader-spin{100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes swiper-preloader-spin{100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}.swiper-container-fade.swiper-container-free-mode .swiper-slide{-webkit-transition-timing-function:ease-out;-o-transition-timing-function:ease-out;transition-timing-function:ease-out}.swiper-container-fade .swiper-slide{pointer-events:none;-webkit-transition-property:opacity;-o-transition-property:opacity;transition-property:opacity}.swiper-container-fade .swiper-slide .swiper-slide{pointer-events:none}.swiper-container-fade .swiper-slide-active,.swiper-container-fade .swiper-slide-active .swiper-slide-active{pointer-events:auto}

/*============================================================================
  #Critical path helpers
==============================================================================*/

/* Hidden general content until rest of styling loads */
.visible-when-content-ready{
	visibility: hidden!important;
}
.display-when-content-ready{
	display: none!important;
}

/*============================================================================
  #Components
==============================================================================*/

{# /* // Wrappers */ #}

body{
  margin: 0;
  font-size: var(--font-base);
}

.body-password {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
}

/* Containers and custom grid */

.container,
.container-fluid {
  padding: 0 var(--guter-container);
}

.row {
  margin-right: var(--gutter-negative);
  margin-left: var(--gutter-negative);
}

.no-gutters {
  margin-right: 0;
  margin-left: 0;
}

.col,.col-1,.col-10,.col-11,.col-12,.col-2,.col-3,.col-4,.col-5,.col-6,.col-7,.col-8,.col-9,.col-auto,.col-lg,.col-lg-1,.col-lg-10,.col-lg-11,.col-lg-12,.col-lg-2,.col-lg-3,.col-lg-4,.col-lg-5,.col-lg-6,.col-lg-7,.col-lg-8,.col-lg-9,.col-lg-auto,.col-md,.col-md-1,.col-md-10,.col-md-11,.col-md-12,.col-md-2,.col-md-3,.col-md-4,.col-md-5,.col-md-6,.col-md-7,.col-md-8,.col-md-9,.col-md-auto,.col-sm,.col-sm-1,.col-sm-10,.col-sm-11,.col-sm-12,.col-sm-2,.col-sm-3,.col-sm-4,.col-sm-5,.col-sm-6,.col-sm-7,.col-sm-8,.col-sm-9,.col-sm-auto,.col-xl,.col-xl-1,.col-xl-10,.col-xl-11,.col-xl-12,.col-xl-2,.col-xl-3,.col-xl-4,.col-xl-5,.col-xl-6,.col-xl-7,.col-xl-8,.col-xl-9,.col-xl-auto{padding-right:var(--gutter);padding-left:var(--gutter)}

{# /* // Grid */ #}

.row-grid {
  margin-right: var(--gutter-half-negative);
  margin-left: var(--gutter-half-negative);
}

.col-grid {
  padding-right: var(--gutter-half);
  padding-left: var(--gutter-half);
}

.col-btn {
  max-width: 33.333%;
}

.col-btn .btn-link {
  position: relative;
  top: 50%;
  transform: translateY(-50%);
}

{# /* // Placeholders and preloaders */ #}

.placeholder-line-medium{
  height: 25px;
  border-radius: 6px;
}
.placeholder-icon{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
} 
.placeholder-full-height{
  position: relative;
  height: 100%;
}
.home-placeholder-icons{
  position: absolute;
  top: calc(50% - 75px);
}
.product-placeholder-container{
  position: relative;
  max-height: 900px;
  margin-bottom: 20px;
  overflow: hidden;
}
.placeholder-shine{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0.5;
  -moz-animation: placeholder-shine 1.5s infinite;
  -webkit-animation: placeholder-shine 1.5s infinite;
  animation: placeholder-shine 1.5s infinite;
}
@keyframes placeholder-shine {
  0%{
    opacity: 0.1;
  }
  50% {
    opacity: 0.5;
  }
  100% {
    opacity: 0.1;
  }
}
.placeholder-fade{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0.1;
  -moz-animation: placeholder-fade 1.5s infinite;
  -webkit-animation: placeholder-fade 1.5s infinite;
  animation: placeholder-fade 1.5s infinite;
}
@keyframes placeholder-fade {
  0%{
    opacity: 0.2;
  }
  50% {
    opacity: 0.5;
  }
  100% {
    opacity: 0.2;
  }
}
.placeholder-shipping-icon {
  width: 20px;
  height: 20px;
  border-radius: 100%;
}

.placeholder-line {
  height: 10px;
  width: 100%;
}

.placeholder-shipping-price {
  width: 100px;
}

.blur-up {
  position: absolute;
  top: 0;
  -webkit-filter: blur(4px);
  filter: blur(4px);
  -moz-filter: blur(4px);
  -ms-filter: blur(4px);
  -o-filter: blur(4px);
  transition: opacity .2s, -webkit-filter .2s;
}
.blur-up-huge {
  -webkit-filter: blur(6px);
  filter: blur(6px);
  -moz-filter: blur(6px);
  -ms-filter: blur(6px);
  -o-filter: blur(6px);
  transition: filter .2s, -webkit-filter .2s;
}
.blur-up.lazyloaded,
.blur-up-huge.lazyloaded,
.blur-up.swiper-lazy-loaded,
.blur-up-huge.swiper-lazy-loaded {
  -webkit-filter: none;
  filter: none;
  -moz-filter: none;
  -ms-filter: none;
  -o-filter: none;
}
.preloader-bg-img,
.product-slider-image.blur-up{
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  -webkit-filter: blur(4px);
  filter: blur(4px);
  -moz-filter: blur(4px);
  -ms-filter: blur(4px);
  -o-filter: blur(4px);
  transition: filter .2s, -webkit-filter .2s, opacity .2s;
  /* Avoid strange image behaviour on filters in IOS */
  -webkit-perspective: 1000;
  -webkit-backface-visibility: hidden;
}
.product-slider-image.blur-up{
  left: 50%;
  width: auto;
}
.swiper-lazy-loaded + .preloader-bg-img,
.lazyloaded + .blur-up{
  opacity: 0;
  -webkit-filter: none;
  filter: none;
  -moz-filter: none;
  -ms-filter: none;
  -o-filter: none;
}

.lazyloaded + .blur-up {
  opacity: 0;
  pointer-events: none;
}
.lazyloaded + .placeholder-shine,
.lazyloaded + .placeholder-fade,
.swiper-lazy-loaded + .placeholder-shine,
.swiper-lazy-loaded + .placeholder-fade{
  display: none;
}
.fade-in {
  opacity: 0;
  transition: opacity .2s;
}
.fade-in.lazyloaded,
.fade-in.swiper-lazy-loaded {
  opacity: 1;
}

.spinner {
  position: relative;
  display: grid;
  place-items: center;
}

.spinner::before,
.spinner::after {
  content: '';
  box-sizing: border-box;
  position: absolute;
}

.spinner::before {
  width: 100%;
  height: 2px;
  border-radius: 10px;
  animation: spinner-line 0.8s cubic-bezier(0, 0, 0.03, 0.9) infinite;
}

.spinner-small::before {
  height: 2px;
}

@keyframes spinner-line {
  0%, 44%, 88.1%, 100% {
    transform-origin: left;
  }
  
  0%, 100%, 88% {
    transform: scaleX(0);
  }
  
  44.1%, 88% {
    transform-origin: right;
  }
  
  33%, 44% {
    transform: scaleX(1);
  }
}

{# /* // Animations*/ #}

.transition-up,
.fade-in-vertical {
  opacity: 0;
}

[data-transition="scale-out-image"] img { 
  transition: all .5s ease;
  opacity: 0;
  transform: scale(1.05);
}
[data-transition="scale-out-image"] .img-absolute-centered,
.swiper-slide-duplicate [data-transition="scale-out-image"] .img-absolute-centered {
  transform: translateX(-50%) scale(1.05) ;
}
[data-transition="scale-out-image"].is-inViewport img.lazyloaded,
.swiper-slide-duplicate [data-transition="scale-out-image"] img { 
  transition: all .5s ease;
  opacity: 1;
  transform: scale(1);
}
[data-transition="scale-out-image"].is-inViewport .lazyloaded.img-absolute-centered {
  transform: translateX(-50%) scale(1);
}

[data-transition="fade-in"] { 
  transition: all .2s ease;
  opacity: 0;
}
[data-transition="fade-in"].is-inViewport,
.swiper-slide-duplicate [data-transition="fade-in"],
[data-transition="fade-in-image"].is-inViewport img,
.swiper-slide-duplicate [data-transition="fade-in-image"] img{ 
  transition: all .2s ease;
  opacity: 1;
}


{# /* // Buttons */ #}

.btn-whatsapp {
  position: fixed;
  bottom: 0;
  right: 0;
  z-index: 100;
  color: white;
  background-color:#4dc247;
  box-shadow: 0 0 6px rgba(0,0,0,0.3);
  border-left: 1px solid white;
  border-top: 1px solid white;
}

.btn-whatsapp svg{
  width: 55px;
  height: 55px;
  padding: 15px;
  fill: white;
  vertical-align:middle;
}

{# /* // Links */ #}

a {
  text-decoration: none;
}

{# /* // Icons */ #}

.icon-inline {
  display: inline-block;
  font-size: inherit;
  height: 1em;
  overflow: visible;
  vertical-align: -.125em;
}

.icon-xs {
  font-size: .75em;
}
.icon-md  {
  font-size: .875em; 
}
.icon-lg {
  font-size: 1.33333em;
  line-height: .75em;
  vertical-align: -.0667em; 
}
.icon-2x {
  font-size: 2em;  
}
.icon-2x-half {
  font-size: 2.5em; 
}
.icon-3x {
  font-size: 3em; 
}
.icon-4x {
  font-size: 4em;  
}
.icon-5x {
  font-size: 5em;  
}
.icon-6x {
  font-size: 6em;  
}
.icon-7x {
  font-size: 7em; 
}
.icon-8x {
  font-size: 8em;  
}
.icon-9x {
  font-size: 9em;  
}
.icon-40px {
  width: 40px;
  height: 40px;
  line-height: 40px;
  text-align: center;
}
.icon-48px {
  width: 48px;
  height: 48px;
  line-height: 48px;
  text-align: center;
}
.icon-80px {
  width: 80px;
  height: 80px;
  text-align: center;
}
.icon-inline.icon-lg{
  vertical-align: -.225em
}
.icon-inline.icon-w {
  text-align: center;
  width: 1.25em
}
.icon-inline.icon-w-1{
  width:.0625em
}
.icon-inline.icon-w-2{
  width:.125em
}
.icon-inline.icon-w-3{
  width:.1875em
}
.icon-inline.icon-w-4{
  width:.25em
}
.icon-inline.icon-w-5{
  width:.3125em
}
.icon-inline.icon-w-6{
  width:.375em
}
.icon-inline.icon-w-7{
  width:.4375em
}
.icon-inline.icon-w-8{
  width:.5em
}
.icon-inline.icon-w-9{
  width:.5625em
}
.icon-inline.icon-w-10{
  width:.625em
}
.icon-inline.icon-w-11{
  width:.6875em
}
.icon-inline.icon-w-12{
  width:.75em
}
.icon-inline.icon-w-13{
  width:.8125em
}
.icon-inline.icon-w-14{
  width:.875em
}
.icon-inline.icon-w-15{
  width:.9375em
}
.icon-inline.icon-w-16{
  width:1em
}
.icon-inline.icon-w-17{
  width:1.0625em
}
.icon-inline.icon-w-18{
  width:1.125em
}
.icon-inline.icon-w-19{
  width:1.1875em
}
.icon-inline.icon-w-20{
  width:1.25em
}
.icon-spin{
  -webkit-animation:icon-spin .5s infinite linear;
  animation:icon-spin .5s infinite linear
}
@-webkit-keyframes icon-spin {
  0% {
    -webkit-transform: rotate(0);
    transform: rotate(0)
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg)
  }
}

@keyframes icon-spin {
  0% {
    -webkit-transform: rotate(0);
    transform: rotate(0)
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg)
  }
}

{# /* // Titles and breadcrumbs */ #}

.h1-huge {
  font-size: var(--h1-huge);
}

h1,
.h1 {
  font-size: var(--h1);
}

h2,
.h2 {
  font-size: var(--h2);
}

h3,
.h3 {
  font-size: var(--h3);
}

h4,
.h4 {
  font-size: var(--h4);
}

h5,
.h5 {
  font-size: var(--h5);
}

h6,
.h6 {
  font-size: var(--h6);
}

.breadcrumbs {
  font-size: 10px;
  text-transform: uppercase;
  line-height: 13px;
}
.breadcrumbs .separator {
  margin: 3px;
  opacity: 0.6;
}
.breadcrumbs .crumb{
  opacity: 0.6;
}
.breadcrumbs .crumb.active {
  opacity: 1;
}

{# /* // Texts */ #}

.font-big{
  font-size: var(--font-big)!important;
}

.font-body{
  font-size: var(--font-base)!important;
}

.font-small{
  font-size: var(--font-small)!important;
}

.font-smallest{
  font-size: var(--font-smallest)!important;
}

p{
  margin-top: 0;
  line-height: 20px;
}

.user-content ul {
  padding-left: 20px;
}

.user-content ul li {
  margin-bottom: 10px;
  line-height: 22px;
}

.user-content table {
  width: 100%;
  max-width: 100%;
  margin-bottom: 10px;
  line-height: 22px;
}

.subtitle {
  font-size: 10px;
  text-transform: uppercase;
  letter-spacing: 1px;
}

{# /* // Sliders */ #}

.nube-slider-home {
  height: 100%;
}

.swiper-wrapper.disabled {
  transform: translate3d(0px, 0, 0) !important;
}
.slide-container{
  overflow: hidden;
}
.slider-slide {
  height: 100%;
  background-position: center;
  background-size: cover; 
  overflow: hidden;
}
.slider-image {
  position: relative;
  z-index: 1;
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
}
.swiper-slide-active .slider-image-animation {
  -webkit-animation: zoomin 20s ease forwards;
  -moz-animation: zoomin 20s ease forwards;
  animation: zoomin 20s ease forwards; 
}

@-webkit-keyframes zoomin {
  0% {
    -webkit-transform: scale(1);
    transform: scale(1);
  }
  100% {
    -webkit-transform: scale(1.2);
    transform: scale(1.2);
  }
}

@keyframes zoomin {
  0% {
    -webkit-transform: scale(1);
    transform: scale(1);
  }
  100% {
    -webkit-transform: scale(1.2);
    transform: scale(1.2);
  }
}

.swiper-button-next,
.swiper-button-prev {
  position: relative;
  top: initial;
  float: left;
  width: 54px;
  height: 54px;
  margin: 0;
  line-height: 52px;
}

.swiper-button-absolute {
  position: absolute;
  top: 50%;
  margin-top: -10px;
}

.swiper-button-absolute.swiper-button-next {
  right: 0;
}
.swiper-button-absolute.swiper-button-prev {
  left: 0;
}

.swiper-pagination-fraction {
  bottom: auto;
  width: auto;
  padding: 7px 10px;
}

.swiper-pagination-bullet {
  margin: 0 4px;
  border-radius: 6px;
}

.swiper-pagination-bullet-active {
  width: 12px;
}

.swiper-text {
  position: absolute;
  z-index: 9;
  width: calc(100% - 106px);
}

.swiper-arrows {
  position: absolute;
  right: 0;
  bottom: 0;
}

.swiper-button-next.swiper-button-disabled, 
.swiper-button-prev.swiper-button-disabled {
  opacity: 0.2;
}

.swiper-pagination-lock {
  display: none !important;
}

{# /* // Lists */ #}

.list {
  margin: 0;
  padding: 0;
  list-style-type: none;
}
.list .list-item{
  position: relative;
  cursor: default;
}

.list-unstyled{
  padding: 0;
  margin: 0;
  list-style-type: none;
}

.list-inline li{
  display: inline-flex;
}

{# /* // Notifications */ #}

.notification{
  padding:  10px;
  text-align: center;
}
.notification-floating {
  position: absolute;
  left: 0;
  z-index: 2000;
  width: 100%;
}
.notification-fixed {
  position: fixed;
  right: 0;
  left: initial;
  width: 100%;
}
.notification-close {
  padding: 0 5px;
}
.notification-centered {  
  display: inline-block;
  width: 100%;
  margin: 0 20px 20px 0;
  text-align: center;
}
.notification-left {
  width: 100%;
  display: inline-block;
  padding: 5px 15px;
  text-align: left;
  font-size: 12px;
}

.notification-fixed-bottom {
  position: fixed;
  bottom: 0;
  left: 0;
  z-index: 999;
  width: 100%;
}

.notification-above {
  z-index: 40000;
}

{# /* // Badge */ #}

.badge {
  position: absolute;
  top: 50%;
  left: 50%;
  margin-top: 2px;
  transform: translate(-50%, -50%);
  font-size: 9px;
  font-weight: bold;
}

{# /* // Tooltip */ #}

.tooltip {
  position: absolute;
  right: -1px;
  bottom: -45px;
  z-index: 9999;
  padding: 15px;
  text-align: center;
}

.tooltip-icon {
  width: 14px;
  height: 14px;
  margin: 0 auto;
  line-height: 12px;
  cursor: pointer;
}

.tooltip-arrow {
  position: absolute;
  top: -10px;
  right: 13px;
  width: 0;
  height: 0;
  pointer-events: none;
}

{# /* // Images */ #}

/* Used for images that have a placeholder before it loads. The image container should have a padding-bottom inline with the result of (image height/ image width) * 100 */
.img-absolute {
  position: absolute;
  left: 0;
  width: 100%;
  height: auto;
  vertical-align: middle;
  text-indent: -9999px;
  z-index: 1;
}

.img-absolute-centered{
  left: 50%;
  transform: translateX(-50%);
  -webkit-transform: translateX(-50%);
  -ms-transform: translateX(-50%);
}

.img-absolute-centered-vertically{
  position: absolute;
  top: 50%;
  left: 50%;
  z-index: 9;
  width: 100%;
  height: 100%;
  transform: translate(-50%, -50%);
  object-fit: cover;
}

.card-img{
  margin: 0 5px 5px 0;
  border: var(--border-solid) #00000012;
}
.card-img-small{
  height: 25px;
}
.card-img-medium{
  height: 35px;
}
.card-img-big{
  height: 50px;
}
.card-img-square-container {
  position: relative;
  width: 100%;
  padding-top: 100%;
}
.card-img-square {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
}
.card-img-pill {
  position: absolute;
  right: 5px;
  bottom: 5px;
  z-index: 999;
  padding: 4px 9px;
  font-size: 10px;
  border-radius: 15px;
}

{# /* // Forms */ #}

.form-group {
  position: relative;
  width: 100%;
}
.form-group .form-select-icon{
  position: absolute;
  right: 12px;
  bottom: 13px;
  font-size: 18px;
  pointer-events: none;
}
.form-group-small .form-select-icon{
  bottom: 10px;
  right: 10px;
  font-size: 12px;
}
.form-row {
  width: auto;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin-right: -5px;
  margin-left: -5px;
  clear: both;
}

.form-row > .col,
.form-row > [class*=col-]{
  padding-right: 5px;
  padding-left: 5px;
}

.form-label {
  font-size: 10px;
  text-transform: uppercase;
}

.form-label-divider {
  padding: 10px 0;
  margin-bottom: 10px;
}

.form-toggle-eye {
  position: absolute;
  top: 34px;
  right: 2px;
  display: inline-block;
  padding: 10px 15px 10px 10px;
  background: none;
  border: 0;
}

.checkbox-container .checkbox {
  display: flex;
  transition: all 0.4s ease;
  cursor: pointer;
}

.checkbox-container .checkbox-icon {
  position: relative;
  display: block;
  flex: 0 0 auto;
  width: 50px;
  min-height: 50px;
}

.checkbox-container .checkbox-icon:after,
.checkbox-container .checkbox-icon.with-color:before {
  position: absolute;
  top: 50%;
  left: 50%;
  display: none;
  margin-top: -4px;
  margin-left: -8px;
  width: 8px;
  height: 20px;
  content: '';
  transform: rotate(45deg) translate(-50%, -50%);
  -webkit-transform: rotate(45deg) translate(-50%, -50%);
  -ms-transform: rotate(45deg) translate(-50%, -50%);
}

.checkbox-container .checkbox-icon.with-color:before {
  top: 50%;
  left: 50%;
  margin-top: -4px;
  margin-left: -9px;
  width: 10px;
  height: 22.4px;
  content: '';
}

.checkbox-container .checkbox-text {
  display: flex;
  align-items: center;
  padding: 0 15px;
  font-size: 12px;
}

.checkbox-container .checkbox-color {
  display: inline-block;
  width: 6px;
  height: 6px;
  margin-top: 8px;
  vertical-align: top;
  border-radius: 1px;
}

.checkbox-container input{
  display: none;
}

.checkbox-container input:checked ~ .checkbox {
  opacity: 1;
}

.checkbox-container input:checked ~ .checkbox .checkbox-icon:after,
.checkbox-container.selected .checkbox .checkbox-icon:after,
.checkbox-container input:checked ~ .checkbox .checkbox-icon.with-color:before {
  display: block;
}

{# /* // Video */ #}

.embed-responsive {
  position: relative;
  display: block;
  height: 0;
  padding: 0;
  overflow: hidden;
}
.embed-responsive.embed-responsive-16by9 {
  padding-bottom: 56.25%;
}
.embed-responsive.embed-responsive-1by1 {
  padding-bottom: 140%;
}
.embed-responsive .embed-responsive-item,
.embed-responsive embed,
.embed-responsive iframe,
.embed-responsive object,
.embed-responsive video {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border: 0;
}
.video-player {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 999;
  width: 100%;
  height: 100%;
  cursor: pointer;
}
.video-player-icon {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 54px;
  height: 54px;
  padding-left: 2px;
  font-size: 23px;
  line-height: 48px;
  text-align: center;
  pointer-events: none;
  transform: translate(-50%,-50%);
}
.video-player-icon-small {
  width: 24px;
  height: 24px;
  margin: -12px 0 0 -12px;
  padding-left: 2px;
  font-size: 13px;
  line-height: 21px;
}
.video-image {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 100%;
  height: auto;
  transform: translate(-50%, -50%);
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
}

/*============================================================================
  #Header and nav
==============================================================================*/

.head-main {
  top: 0;
  width: 100%;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  z-index: 1040;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

{# /* // Adbar */ #}

.section-adbar {
  position: relative;
  width: 100%;
  min-height: 32px;
  padding: 8px 15px;
  font-size: 12px;
  overflow: hidden;
}

.section-adbar .swiper-slide {
  display: flex;
  align-items: center;
  justify-content: center;
}

.section-adbar .swiper-button-absolute {
  top: 50%;
  width: 25px;
  height: 20px;
  margin-top: 1px;
  transform: translateY(-50%);
  line-height: initial;
}
.section-adbar .swiper-button-prev {
  left: -5px;
}

.section-adbar .swiper-button-next {
  right: -6px;
}

{# /* // Nav */ #}

.nav-desktop {
  position: relative;
  width: 100%;
  height: 100%;
}
{% endraw %}
.nav-desktop-list {
  height: 100%;
  margin: 0;
  padding: 10px 0;
  list-style: none;
  white-space: nowrap!important;
}
.nav-desktop-list::-webkit-scrollbar {
  height: 0;
}

.nav-desktop-with-scroll {
  {% if settings.logo_position_desktop == 'center' %}
    margin: 10px 30px;
  {% else %}
    margin-right: 50px;
  {% endif %}
  overflow-x: scroll;
}

.nav-desktop-list-arrow {
  position: absolute;
  top: 50%;
  width: 20px;
  height: 50px;
  {% if settings.logo_position_desktop == 'center' %}
  margin-top: -22px;
  {% else %}
  margin-top: -26px;
  {% endif %}
  cursor: pointer;
  text-align: center;
}

.nav-desktop-list-arrow-left {
  {% if settings.logo_position_desktop == 'center' %}
    left: 10px;
  {% else %}
    right: 20px;
  {% endif %}
}

.nav-desktop-list-arrow-right {
  {% if settings.logo_position_desktop == 'center' %}
    right: 10px;
  {% else %}
    right: 0;
  {% endif %}
}
{% raw %}

.nav-desktop-list-arrow.disable {
  cursor: initial; 
}

.nav-desktop-list-arrow.disable svg {
  opacity: 0.2;
}

.nav-desktop-list-arrow svg {
  margin-top: 20px;
  font-size: 14px;
}

{% endraw %}
{% if settings.logo_position_desktop != 'center' %}
  .nav-desktop-list li:first-of-type {
    padding-left: 0;
  }
{% endif %}
{% raw %}

.nav-item {
  display: inline-flex;
  position: initial;
  padding: 0 15px;
  white-space: normal;
}

.nav-desktop-list > .nav-item {
  height: 100%;
  text-decoration: underline;
  align-items: center;
}

.desktop-dropdown {
  position: fixed;
  top: 100%;
  left: 0;
  width: 100vw; 
  overflow-y: auto;
}

.nav-categories {
  overflow-x: scroll;
}
.nav-list-mobile-categories {
  margin: 4px 0;
  padding: 0 15px;
  white-space: nowrap!important;
}

.header-utility {
  height: 100%;
}
{% endraw %}
.utilities-container {
  position: relative;
  {% if settings.logo_size == 'small' %}
    {% if settings.utilities_type_mobile == 'text' %}
      min-width: 55px;
    {% else %}
      width: 55px;
    {% endif %}
    height: 55px;
  {% else %}
    {% if settings.utilities_type_mobile == 'text' %}
      min-width: 75px;
    {% else %}
      min-width: 65px;
    {% endif %}
    height: 65px;
  {% endif %}
  z-index: 1;
  display: inline-flex;
  {% if settings.utilities_type_mobile == 'text' %}
    padding: 15px 12px;
  {% else %}
    padding: 15px;
  {% endif %}
  align-items: center;
  justify-content: center;
  overflow: hidden;
}
.utilities-icon {
  font-size: 20px;
}
.utility-icon-absolute {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  opacity: 1;
  transition: all 0.2s ease-out;
}
.utility-icon-hidden {
  top: -30%;
  opacity: 0;
}

.utilities-text {
  {% if settings.logo_size == 'big' %}
    font-size: 14px;
  {% else %}
    font-size: 12px;
  {% endif %}
  text-transform: uppercase;
}
{% raw %}

.nav-dropdown-content {
  visibility: hidden;
  opacity: 0;
  transition: visibility 0s linear .3s, opacity .3s linear;
}

.utilities-container .nav-dropdown-content {
  pointer-events: none;
}

{# /* // Logo */ #}

{% endraw %}  

.logo-text-container {
  display: flex;
  height: 100%;
  align-items: center;
  {% if settings.logo_position_mobile == 'center' %}
    justify-content: center;
  {% else %}
    justify-content: flex-start;
  {% endif %}
}

.logo-text {
  text-overflow: ellipsis;
  overflow: hidden;
  -webkit-line-clamp: 1;
  display: -webkit-box;
  -webkit-box-orient: vertical;
}


.logo-img,
.logo-text{
  width: auto;
  height: auto;
  margin: 12px 0;
  vertical-align: middle;
  {% if settings.logo_size == 'small' %}
   max-height: 30px;
  {% else %}
    max-height: 40px;
  {% endif %}
  {# Padding added to keep logo centered when nav has 1 icon on left and 2 icons on right #}
  {% if settings.logo_position_mobile == 'center' %}
    max-width: 100%;
  {% else %}
    max-width: 90%;
    padding-left: 15px;
  {% endif %}
}

{# Logo for transparent nav #}

{% if settings.head_transparent_contrast_options and "logo-transparent.jpg" | has_custom_image %}
  .logo-header-transparent {
    position: absolute;
    top: 0;
    {% if settings.logo_position_mobile == 'center' %}
      left: 50%;
      transform: translateX(-50%);
      -webkit-transform: translateX(-50%);
      -ms-transform: translateX(-50%);
    {% else %}
      left: 0;
      transform: initial;
      -webkit-transform: initial;
      -ms-transform: initial;
    {% endif %}
    opacity: 0;
  }

  .head-transparent-on-section.head-transparent-contrast .logo-img {
    opacity: 0;
  }

  .head-transparent-on-section.head-transparent-contrast .logo-header-transparent{
    opacity: 1;
  }
{% endif %}
{% raw %}

{# /* // Cart widget and search */ #}

.search-input-submit {
  position: absolute;
  top: 50%;
  right: 15px;
  margin-top: -18px;
  padding: 8px 5px 8px 8px;
  font-size: 15px;
  background: none;
  border: 0;
}

.subutility-list {
  display: none;
}

/*============================================================================
  #Home Page
==============================================================================*/

{# /* // Sections title */ #}

.section-title {
  padding: 40px 0;
}

.absolute-section-title {
  position: absolute;
  top: 70px;
  right: 0;
  z-index: 9;
  width: 55%;
  padding-right: 20px;
}

.absolute-section-title-right {
  right: initial;
  padding: 0;
  text-align: right;
}

{# /* // Featured products */ #}
.section-featured-home {
  position: relative;
  overflow: hidden;
}

{# /* // Video */ #}

.home-video-text {
  position: absolute;
  bottom: 0;
  z-index: 99;
  width: 100%;
}
.home-video-overlay:after {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 100%;
  content: '';
}
.home-video-image {
  position: absolute;
  top: 0;
  z-index: 1;
  width: 100%;
  height: 100%;
  object-fit: cover;
}
.home-video .placeholder-shine {
  z-index: 9;
}
{% endraw %}
{% if settings.video_type == 'autoplay' %}
  .home-video video {
    position: relative;
    object-fit: cover;
    object-position: 50% 20%;
    font-family: "object-fit: cover";
  }
  .home-video iframe {
    position: absolute;
    top: 0;
    left: -100%;
    width: 300%;
    max-width: none;
  }
  .home-video-hide-controls {
    position: absolute;
    top: 0;
    z-index: 99;
    width: 100%;
    height: 100%;
  }
{% endif %}
{% raw %}

{# /* // Main categories */ #}

.home-category {
  float: left;
  overflow: hidden;
}

.home-category-image {
  position: relative;
  float: left;
  width: 54px;
  height: 53px;
  margin: 0 auto;
  text-align: center;
  overflow: hidden;
}

.home-category-image img {
  position: absolute;
  top: 50%;
  left: 50%;
  z-index: 9;
  width: 100%;
  height: 100%;
  transform: translate(-50%, -50%);
  object-fit: cover;
  
}

.home-category-name {
  float: left;
  max-width: 150px;
  height: 54px;
  padding: 10px 15px;
}

.home-category-name-item {
  position: relative;
  top: 50%;
  text-overflow: ellipsis;
  overflow: hidden;
  transform: translateY(-50%);
  -webkit-line-clamp: 2;
  display: -webkit-box;
  -webkit-box-orient: vertical;
}

{# /* // Welcome message */ #}

.section-welcome-home,
.section-institutional-home {
  padding: 60px 0;
}

/*============================================================================
  #Banners
==============================================================================*/

{# /* // Home banners */ #}

.textbanner {
  position: relative;
}
.textbanner-link {
  display: block;
  width: 100%;
  height: 100%;
}
.textbanner-image {
  position: relative;
  padding-top: 50%;
}

.textbanner-title {
  position: absolute;
  top: 50%;
  right: 0;
  transform: translateY(-50%);
}
.textbanner-text {
  position: relative;
}
.textbanner-text.over-image {
  position: absolute;
  bottom: 0;
  z-index: 9;
  width: 100%;
}
.textbanner-paragraph {
  display: -webkit-box;
  overflow: hidden;
  line-height: 18px;
  text-overflow: ellipsis;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
}

.textbanner .textbanner-image.overlay.textbanner-image-empty {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1440 770'><rect width='1440' height='770' fill='%23fcfcfc'/><path d='M852.28,303.08a17.11,17.11,0,0,0-11.62-6.15l-80.84-7.56-10.51-46a17.22,17.22,0,0,0-20.6-12.91l-152.45,34.5a17.19,17.19,0,0,0-13,20.51L599.57,444.3a17.22,17.22,0,0,0,20.6,12.91L652.06,450l-1,10.19a17.23,17.23,0,0,0,15.52,18.68l155.54,14.56c.55.05,1.09.07,1.62.07A17.19,17.19,0,0,0,840.89,478l2.76-29.35a1,1,0,0,0,.17-1.77l12.35-131.22A17,17,0,0,0,852.28,303.08ZM567.2,273.61a15.08,15.08,0,0,1,9.5-6.73l152.45-34.5a15.22,15.22,0,0,1,18.21,11.4l10.37,45.39-72.61-6.79a17.21,17.21,0,0,0-18.74,15.47l-1.59,16.89-28.65-18.83a1,1,0,0,0-1.39.29,1,1,0,0,0,.29,1.38L664.58,317,657,397.89l-62.69,14.27L565.24,285A15,15,0,0,1,567.2,273.61ZM737.9,424.37a1,1,0,0,0,1.41.19l71.12-54.77L845.6,402.6a1,1,0,0,0,.36.21l-4.12,43.71L656.2,427.36l4.49-47.66a.94.94,0,0,0,.86-.1l67.93-45.68,51.61,55.93-43,33.12A1,1,0,0,0,737.9,424.37ZM619.73,455.26a15.23,15.23,0,0,1-18.21-11.41l-6.79-29.74,62-14.13-2.61,27.76a1.12,1.12,0,0,0-.14.4,1,1,0,0,0,.06.43l-1.82,19.33Zm219.17,22.5a15.21,15.21,0,0,1-16.55,13.67L666.81,476.88a15.22,15.22,0,0,1-13.72-16.5l2.92-31,185.64,19.16Zm15.28-162.34-8,85-35-32.67a1,1,0,0,0-1.3-.06l-27.2,20.95-52.31-56.7a1,1,0,0,0-1.3-.15l-68.19,45.86,7.5-79.6a15.2,15.2,0,0,1,16.55-13.67l155.54,14.55a15.22,15.22,0,0,1,13.71,16.5ZM788.4,325.69A12.21,12.21,0,0,0,786.12,350c.39,0,.77.05,1.15.05A12.22,12.22,0,0,0,799.41,339h0a12.19,12.19,0,0,0-11-13.29Zm9,13.1a10.2,10.2,0,1,1-10.17-11.15c.32,0,.64,0,1,0a10.2,10.2,0,0,1,9.21,11.11Zm-168.36,3.62a1,1,0,0,0,.55.17,1,1,0,0,0,.56-1.83L607.75,325.8a1,1,0,0,0-1.11,1.67Zm-78.72-42.54L38.33,49.46l.44-.9L550.78,299ZM39.58,724l-.44-.9,549.09-271.3.45.9Zm1364.65,1.75-.45-.22L870,463.38l.44-.89.45.22,533.77,262.13ZM870.51,307.35l-.44-.9L1402.64,44.84l.44.89Z' fill='%23ccc'/></svg>");
  background-position: center;
}

.textbanner-image-height {
  position: absolute;
  top: 0;
  min-height: 100%;
}

.textbanner-image-background {
  position: absolute;
  top: 0;
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

{# /* // Informative banners */ #}

.service-pagination {
  bottom: 40px;
  width: 100%;
}

.service-pagination .swiper-pagination-bullet {
  margin: 0 4px;
}

/*============================================================================
  #Product grid
==============================================================================*/

{# /* // Category banner */ #}  

.category-controls .category-name,
.btn-filters {
  padding: 15px;
}

.btn-filters {
  display: flex;
  align-items: center;
  height: 100%;
  width: 54px;
}

.category-controls .category-name {
  padding: 15px;
}

{# /* // Category controls */ #}

.category-controls-sticky-detector {
  height: 1px;
}

.category-controls {
  position: sticky;
  top: 0;
  z-index: 100;
}

.filters-badge {
  position: absolute;
  top: -1px;
  right: 0;
  height: 12px;
  min-width: 12px;
  padding: 3px;
  font-size: 9px;
  font-weight: bold;
  text-align: center;
  line-height: 5px;
}

{# /* // Grid item */ #}

.item,
.card {
  overflow: hidden;
}

.item .item-btn-quickshop {
  width: 40px;
  height: 100%;
  padding: 0;
  font-size: 10px;
}
.item-submit-container.btn {
  display: block;
  height: 100%;
}
.item-quickshop-icon {
  position: absolute;
  top: 50%;
  left: 50%;
  font-size: 16px;
  pointer-events: none;
  transform: translate(-50%,-50%);
}
.item-image {
  position: relative;
  max-height: 1200px;
  overflow: hidden;
}
.item-image img{
  height: 100%;
  max-height: 1200px;
  width: auto;
  transition: all .5s ease;
}
.item-image-primary {
  z-index: 2;
  opacity: 1;
}
.item-image .item-image-secondary {
  opacity: 0!important;
}
.item-with-two-images:hover .item-image-primary {
  opacity: 0!important;
  transition-delay: .05s
}
.item-with-two-images:hover .item-image-secondary{
  opacity: 1!important;
}
.item-thumbnail {
  display: block;
  width: 100%;
}
.item-name {
  line-height: 16px;
  text-overflow: ellipsis;
  overflow: hidden;
  -webkit-line-clamp: 2;
  display: -webkit-box;
  -webkit-box-orient: vertical;
}
.item-price-container { 
  font-size: 12px;
}
.price-compare {
  margin-left: 5px;
  text-decoration: line-through;
  opacity: .5;
}
.item-installments {
  font-size: 10px;
}

{# /* // Labels */ #}

.labels {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 9;
  text-align: left;
  pointer-events: none;
}

.label {
  float: left;
  width: fit-content;
  height: fit-content;
  padding: 7px 10px;
  font-size: 12px;
  line-height: 15px;
}

.label-top {
  top: 0;
  bottom: initial;
}

.label-small {
  padding: 3px 6px; 
  border-radius: 12px;
  font-size: 11px;
}

/*============================================================================
  #Product detail
==============================================================================*/

{# /* // Image */ #}

.product-slider-image,
.quickshop-image {
  width: auto;
  height: 100%;
  max-width: 100%;
}

.product-description {
  max-height: 150px;
  overflow: hidden;
}

.product-description-full {
  max-height: fit-content;
}

.product-video-container {
  display: block;
  width: 100%;
  height: 100%;
  overflow: hidden;
}
.product-video {
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
}
.product-video .embed-responsive {
  width: 100%;
  height: 100%;
}

.product-video .video-image{
  width: auto;
  height: 100%;
}

.product-paginator {
  position: absolute;
  bottom: 0;
  left: 0;
  z-index: 9;
}

/*============================================================================
  #Cart detail
==============================================================================*/

{# /* // Shipping Calculator */ #}

.free-shipping-title {
  position: relative;
  width: 100%;
  height: 50px;
}
.shipping-calculator-head.with-zip {
  height: 50px;
}
.shipping-calculator-head.with-zip.with-free-shipping {
  height: 102px;
}
.shipping-calculator-head.with-form {
  height: 46px;
}
.shipping-calculator-head.with-form.with-free-shipping {
  height: 76.5px;
}
.shipping-calculator-head.with-form + .shipping-spinner-container {
  margin-top: -20px;
}
.shipping-calculator-head.with-error {
  height: 95px;
}

/*============================================================================
  #Contact page
==============================================================================*/

{# /* // Data contact */ #}

.contact-icon {
  display: block;
  margin: 0 auto 10px auto;
}

.contact-item {
  list-style: none;
}

.contact-link {
  list-style: none;
}

/*============================================================================
  #Media queries
==============================================================================*/

{# /* // Min width 1400px */ #}

@media (min-width: 1400px) {
  .container {
    max-width: 1300px;
  }
}

{# /* // Min width 768px */ #}

@media (min-width: 768px) { 

  {# /* //// Components */ #}

  .container-fluid {
    padding: 0 var(--guter-container-md);
  }

  .row-md {
    margin-right: var(--guter-negative);
    margin-left: var(--guter-negative);
  }

  {# /* Titles and breadcrumbs */ #}

  .h1-huge {
    font-size: var(--h1-huge-md);
  }

  .font-md-body {
    font-size: var(--font-base)!important;
  }

  .absolute-section-title {
    position: absolute;
    right: -25%;
    width: 100%;
    padding: 0 0 0 40px;
    text-align: right;
  }

  {# /* Slider */ #}

  .swiper-text {
    width: 50%;
  }

  {# /* Notifications */ #}

  .notification-fixed {
    right: 10px;
    width: 25%;
  }

  .notification-fixed-bottom {
    bottom: 0;
  }

  {# /* // Forms */ #}

  .radio-button-icons-container {
    top: 2px;
  }

  {# /* Labels */ #}

  .label-top-right-md {
    top: 0;
    right: 0;
  }

  {# /* //// Header and nav */ #}

  .head-main {
    -webkit-transform: scale(1);
    transform: scale(1);
  }

  {% endraw %}
  .logo-text-container {
    {% if settings.logo_position_desktop == 'center' %}
      justify-content: center;
    {% else %}
      justify-content: flex-start;
    {% endif %}
  }
  .logo-img,
  .logo-text{
    width: auto;
    height: auto;
    padding: 0 15px;
    {% if settings.logo_size == 'big' %}
      margin: 15px 0;
      max-height: 50px;
    {% endif %}
    {% if settings.logo_position_desktop == 'left' %}
      max-width: 100%;
    {% else %}
      max-width: 80%;
    {% endif %}
  }

  
  {% if settings.head_transparent_contrast_options and "logo-transparent.jpg" | has_custom_image %}
    .logo-header-transparent {
      {% if settings.logo_position_desktop == 'center' %}
        left: 50%;
        transform: translateX(-50%);
        -webkit-transform: translateX(-50%);
        -ms-transform: translateX(-50%);
      {% else %}
        left: 0;
        transform: initial;
        -webkit-transform: initial;
        -ms-transform: initial;
      {% endif %}
    }
  {% endif %}

  .utilities-container {
    {% if settings.logo_size == 'big' %}
      {% if settings.utilities_type_desktop == 'text' %}
        min-width: 100px;
      {% else %}
        width: 80px;
      {% endif %}
      height: 80px;
    {% elseif settings.logo_size == 'small' and settings.utilities_type_desktop == 'text' %}
      width: auto;
    {% endif %}
    padding: 15px;
  }
  {% if settings.logo_size == 'big' %}
    .utilities-icon {
      font-size: 24px;
    }
  {% endif %}

  .utilities-text {
    font-size: 14px;
  }

  .header-utility {
    position: relative;
    z-index: 1;
  }

  {% if settings.logo_position_desktop == 'left' %}
    .desktop-nav-col,
    .desktop-search-cart-col {
      height: 0;
      visibility: hidden;
    }
  {% endif %}

  .embed-responsive.embed-responsive-1by1 {
    padding-bottom: 56.25%;
  }

  .search-controls-wrapper {
    position: relative;
    width: 250px;
  }

  {% if settings.search_big_desktop %}
    .search-container {
      {% if settings.logo_size == 'small' %}
        width: 250px;
        font-size: var(--font-small);
      {% else %}
        width: 270px;
        font-size: var(--font-base);
      {% endif %}
    }

    .search-input-submit {
      {% if settings.logo_size == 'small' %}
        margin-top: -15px;
        font-size: var(--font-small);
      {% else %}
        {% if settings.utilities_type_desktop == 'text' %}
          right: 20px;
          font-size: var(--font-base);
        {% else %}
          right: 30px;
          margin-top: -12px;
          padding: 0;
          font-size: 18px;
        {% endif %}
      {% endif %}
    }
  {% endif %}
  {% raw %}

  {# /* //// Product grid */ #}

  .category-controls {
    position: relative;
    padding: 0;
  }

  .item-big {
    max-width: 90%;
    margin: 0 auto 20px auto;
  }
  
  {# /* //// Product detail */ #}

  .product-slide {
    width: 600px;
  }
  .product-slide-small {
    width: 520px;
  }
  .product-image-column {
    width: calc(100% - 400px);
  }
  .product-video-container {
    padding: 0;
  }
  .product-detail-slider {
    visibility: visible!important;
    height: auto!important;
    max-height: none;
  }
  .product-detail-slider .swiper-wrapper {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
  }
  .product-detail-slider .product-slider-image {
    max-height: 2200px;
  }
  .product-info-column {
    width: 400px;
  }
  .sticky-product {
    position: sticky;
    top: 0;
  }
}

/*============================================================================
  #Helper classes
==============================================================================*/

/*CSS properties helpers minified, to unminify it you have to copy the code and paste it here http://unminify.com/, after that paste the unminified code here */

{# /* // Margin and padding */ #}
.m-0{margin:0!important}.mt-0,.my-0{margin-top:0!important}.mr-0,.mx-0{margin-right:0!important}.mb-0,.my-0{margin-bottom:0!important}.ml-0,.mx-0{margin-left:0!important}.m-1{margin:.25rem!important}.mt-1,.my-1{margin-top:.25rem!important}.mr-1,.mx-1{margin-right:.25rem!important}.mb-1,.my-1{margin-bottom:.25rem!important}.ml-1,.mx-1{margin-left:.25rem!important}.m-2{margin:.5rem!important}.mt-2,.my-2{margin-top:.5rem!important}.mr-2,.mx-2{margin-right:.5rem!important}.mb-2,.my-2{margin-bottom:.5rem!important}.ml-2,.mx-2{margin-left:.5rem!important}.m-3{margin:1rem!important}.mt-3,.my-3{margin-top:1rem!important}.mr-3,.mx-3{margin-right:1rem!important}.mb-3,.my-3{margin-bottom:1rem!important}.ml-3,.mx-3{margin-left:1rem!important}.m-4{margin:1.5rem!important}.mt-4,.my-4{margin-top:1.5rem!important}.mr-4,.mx-4{margin-right:1.5rem!important}.mb-4,.my-4{margin-bottom:1.5rem!important}.ml-4,.mx-4{margin-left:1.5rem!important}.mt-3n{margin-top:-1rem!important}.mt-4n{margin-top:-1.5rem!important}.m-5{margin:3rem!important}.mt-5,.my-5{margin-top:3rem!important}.mr-5,.mx-5{margin-right:3rem!important}.mb-5,.my-5{margin-bottom:3rem!important}.ml-5,.mx-5{margin-left:3rem!important}.p-0{padding:0!important}.pt-0,.py-0{padding-top:0!important}.pr-0,.px-0{padding-right:0!important}.pb-0,.py-0{padding-bottom:0!important}.pl-0,.px-0{padding-left:0!important}.p-1{padding:.25rem!important}.pt-1,.py-1{padding-top:.25rem!important}.pr-1,.px-1{padding-right:.25rem!important}.pb-1,.py-1{padding-bottom:.25rem!important}.pl-1,.px-1{padding-left:.25rem!important}.p-2{padding:.5rem!important}.pt-2,.py-2{padding-top:.5rem!important}.pr-2,.px-2{padding-right:.5rem!important}.pb-2,.py-2{padding-bottom:.5rem!important}.pl-2,.px-2{padding-left:.5rem!important}.p-3{padding:1rem!important}.pt-3,.py-3{padding-top:1rem!important}.pr-3,.px-3{padding-right:1rem!important}.pb-3,.py-3{padding-bottom:1rem!important}.pl-3,.px-3{padding-left:1rem!important}.p-4{padding:1.5rem!important}.pt-4,.py-4{padding-top:1.5rem!important}.pr-4,.px-4{padding-right:1.5rem!important}.pb-4,.py-4{padding-bottom:1.5rem!important}.pl-4,.px-4{padding-left:1.5rem!important}.p-5{padding:3rem!important}.pt-5,.py-5{padding-top:3rem!important}.pr-5,.px-5{padding-right:3rem!important}.pb-5,.py-5{padding-bottom:3rem!important}.pl-5,.px-5{padding-left:3rem!important}.m-auto{margin:auto!important}.mt-auto,.my-auto{margin-top:auto!important}.mr-auto,.mx-auto{margin-right:auto!important}.mb-auto,.my-auto{margin-bottom:auto!important}.ml-auto,.mx-auto{margin-left:auto!important}@media (min-width:576px){.m-sm-0{margin:0!important}.mt-sm-0,.my-sm-0{margin-top:0!important}.mr-sm-0,.mx-sm-0{margin-right:0!important}.mb-sm-0,.my-sm-0{margin-bottom:0!important}.ml-sm-0,.mx-sm-0{margin-left:0!important}.m-sm-1{margin:.25rem!important}.mt-sm-1,.my-sm-1{margin-top:.25rem!important}.mr-sm-1,.mx-sm-1{margin-right:.25rem!important}.mb-sm-1,.my-sm-1{margin-bottom:.25rem!important}.ml-sm-1,.mx-sm-1{margin-left:.25rem!important}.m-sm-2{margin:.5rem!important}.mt-sm-2,.my-sm-2{margin-top:.5rem!important}.mr-sm-2,.mx-sm-2{margin-right:.5rem!important}.mb-sm-2,.my-sm-2{margin-bottom:.5rem!important}.ml-sm-2,.mx-sm-2{margin-left:.5rem!important}.m-sm-3{margin:1rem!important}.mt-sm-3,.my-sm-3{margin-top:1rem!important}.mr-sm-3,.mx-sm-3{margin-right:1rem!important}.mb-sm-3,.my-sm-3{margin-bottom:1rem!important}.ml-sm-3,.mx-sm-3{margin-left:1rem!important}.m-sm-4{margin:1.5rem!important}.mt-sm-4,.my-sm-4{margin-top:1.5rem!important}.mr-sm-4,.mx-sm-4{margin-right:1.5rem!important}.mb-sm-4,.my-sm-4{margin-bottom:1.5rem!important}.ml-sm-4,.mx-sm-4{margin-left:1.5rem!important}.m-sm-5{margin:3rem!important}.mt-sm-5,.my-sm-5{margin-top:3rem!important}.mr-sm-5,.mx-sm-5{margin-right:3rem!important}.mb-sm-5,.my-sm-5{margin-bottom:3rem!important}.ml-sm-5,.mx-sm-5{margin-left:3rem!important}.p-sm-0{padding:0!important}.pt-sm-0,.py-sm-0{padding-top:0!important}.pr-sm-0,.px-sm-0{padding-right:0!important}.pb-sm-0,.py-sm-0{padding-bottom:0!important}.pl-sm-0,.px-sm-0{padding-left:0!important}.p-sm-1{padding:.25rem!important}.pt-sm-1,.py-sm-1{padding-top:.25rem!important}.pr-sm-1,.px-sm-1{padding-right:.25rem!important}.pb-sm-1,.py-sm-1{padding-bottom:.25rem!important}.pl-sm-1,.px-sm-1{padding-left:.25rem!important}.p-sm-2{padding:.5rem!important}.pt-sm-2,.py-sm-2{padding-top:.5rem!important}.pr-sm-2,.px-sm-2{padding-right:.5rem!important}.pb-sm-2,.py-sm-2{padding-bottom:.5rem!important}.pl-sm-2,.px-sm-2{padding-left:.5rem!important}.p-sm-3{padding:1rem!important}.pt-sm-3,.py-sm-3{padding-top:1rem!important}.pr-sm-3,.px-sm-3{padding-right:1rem!important}.pb-sm-3,.py-sm-3{padding-bottom:1rem!important}.pl-sm-3,.px-sm-3{padding-left:1rem!important}.p-sm-4{padding:1.5rem!important}.pt-sm-4,.py-sm-4{padding-top:1.5rem!important}.pr-sm-4,.px-sm-4{padding-right:1.5rem!important}.pb-sm-4,.py-sm-4{padding-bottom:1.5rem!important}.pl-sm-4,.px-sm-4{padding-left:1.5rem!important}.p-sm-5{padding:3rem!important}.pt-sm-5,.py-sm-5{padding-top:3rem!important}.pr-sm-5,.px-sm-5{padding-right:3rem!important}.pb-sm-5,.py-sm-5{padding-bottom:3rem!important}.pl-sm-5,.px-sm-5{padding-left:3rem!important}.m-sm-auto{margin:auto!important}.mt-sm-auto,.my-sm-auto{margin-top:auto!important}.mr-sm-auto,.mx-sm-auto{margin-right:auto!important}.mb-sm-auto,.my-sm-auto{margin-bottom:auto!important}.ml-sm-auto,.mx-sm-auto{margin-left:auto!important}}@media (min-width:768px){.m-md-0{margin:0!important}.mt-md-0,.my-md-0{margin-top:0!important}.mr-md-0,.mx-md-0{margin-right:0!important}.mb-md-0,.my-md-0{margin-bottom:0!important}.ml-md-0,.mx-md-0{margin-left:0!important}.m-md-1{margin:.25rem!important}.mt-md-1,.my-md-1{margin-top:.25rem!important}.mr-md-1,.mx-md-1{margin-right:.25rem!important}.mb-md-1,.my-md-1{margin-bottom:.25rem!important}.ml-md-1,.mx-md-1{margin-left:.25rem!important}.m-md-2{margin:.5rem!important}.mt-md-2,.my-md-2{margin-top:.5rem!important}.mr-md-2,.mx-md-2{margin-right:.5rem!important}.mb-md-2,.my-md-2{margin-bottom:.5rem!important}.ml-md-2,.mx-md-2{margin-left:.5rem!important}.m-md-3{margin:1rem!important}.mt-md-3,.my-md-3{margin-top:1rem!important}.mr-md-3,.mx-md-3{margin-right:1rem!important}.mb-md-3,.my-md-3{margin-bottom:1rem!important}.ml-md-3,.mx-md-3{margin-left:1rem!important}.m-md-4{margin:1.5rem!important}.mt-md-4,.my-md-4{margin-top:1.5rem!important}.mr-md-4,.mx-md-4{margin-right:1.5rem!important}.mb-md-4,.my-md-4{margin-bottom:1.5rem!important}.ml-md-4,.mx-md-4{margin-left:1.5rem!important}.m-md-5{margin:3rem!important}.mt-md-5,.my-md-5{margin-top:3rem!important}.mr-md-5,.mx-md-5{margin-right:3rem!important}.mb-md-5,.my-md-5{margin-bottom:3rem!important}.ml-md-5,.mx-md-5{margin-left:3rem!important}.p-md-0{padding:0!important}.pt-md-0,.py-md-0{padding-top:0!important}.pr-md-0,.px-md-0{padding-right:0!important}.pb-md-0,.py-md-0{padding-bottom:0!important}.pl-md-0,.px-md-0{padding-left:0!important}.p-md-1{padding:.25rem!important}.pt-md-1,.py-md-1{padding-top:.25rem!important}.pr-md-1,.px-md-1{padding-right:.25rem!important}.pb-md-1,.py-md-1{padding-bottom:.25rem!important}.pl-md-1,.px-md-1{padding-left:.25rem!important}.p-md-2{padding:.5rem!important}.pt-md-2,.py-md-2{padding-top:.5rem!important}.pr-md-2,.px-md-2{padding-right:.5rem!important}.pb-md-2,.py-md-2{padding-bottom:.5rem!important}.pl-md-2,.px-md-2{padding-left:.5rem!important}.p-md-3{padding:1rem!important}.pt-md-3,.py-md-3{padding-top:1rem!important}.pr-md-3,.px-md-3{padding-right:1rem!important}.pb-md-3,.py-md-3{padding-bottom:1rem!important}.pl-md-3,.px-md-3{padding-left:1rem!important}.p-md-4{padding:1.5rem!important}.pt-md-4,.py-md-4{padding-top:1.5rem!important}.pr-md-4,.px-md-4{padding-right:1.5rem!important}.pb-md-4,.py-md-4{padding-bottom:1.5rem!important}.pl-md-4,.px-md-4{padding-left:1.5rem!important}.p-md-5{padding:3rem!important}.pt-md-5,.py-md-5{padding-top:3rem!important}.pr-md-5,.px-md-5{padding-right:3rem!important}.pb-md-5,.py-md-5{padding-bottom:3rem!important}.pl-md-5,.px-md-5{padding-left:3rem!important}.m-md-auto{margin:auto!important}.mt-md-auto,.my-md-auto{margin-top:auto!important}.mr-md-auto,.mx-md-auto{margin-right:auto!important}.mb-md-auto,.my-md-auto{margin-bottom:auto!important}.ml-md-auto,.mx-md-auto{margin-left:auto!important}}@media (min-width:992px){.m-lg-0{margin:0!important}.mt-lg-0,.my-lg-0{margin-top:0!important}.mr-lg-0,.mx-lg-0{margin-right:0!important}.mb-lg-0,.my-lg-0{margin-bottom:0!important}.ml-lg-0,.mx-lg-0{margin-left:0!important}.m-lg-1{margin:.25rem!important}.mt-lg-1,.my-lg-1{margin-top:.25rem!important}.mr-lg-1,.mx-lg-1{margin-right:.25rem!important}.mb-lg-1,.my-lg-1{margin-bottom:.25rem!important}.ml-lg-1,.mx-lg-1{margin-left:.25rem!important}.m-lg-2{margin:.5rem!important}.mt-lg-2,.my-lg-2{margin-top:.5rem!important}.mr-lg-2,.mx-lg-2{margin-right:.5rem!important}.mb-lg-2,.my-lg-2{margin-bottom:.5rem!important}.ml-lg-2,.mx-lg-2{margin-left:.5rem!important}.m-lg-3{margin:1rem!important}.mt-lg-3,.my-lg-3{margin-top:1rem!important}.mr-lg-3,.mx-lg-3{margin-right:1rem!important}.mb-lg-3,.my-lg-3{margin-bottom:1rem!important}.ml-lg-3,.mx-lg-3{margin-left:1rem!important}.m-lg-4{margin:1.5rem!important}.mt-lg-4,.my-lg-4{margin-top:1.5rem!important}.mr-lg-4,.mx-lg-4{margin-right:1.5rem!important}.mb-lg-4,.my-lg-4{margin-bottom:1.5rem!important}.ml-lg-4,.mx-lg-4{margin-left:1.5rem!important}.m-lg-5{margin:3rem!important}.mt-lg-5,.my-lg-5{margin-top:3rem!important}.mr-lg-5,.mx-lg-5{margin-right:3rem!important}.mb-lg-5,.my-lg-5{margin-bottom:3rem!important}.ml-lg-5,.mx-lg-5{margin-left:3rem!important}.p-lg-0{padding:0!important}.pt-lg-0,.py-lg-0{padding-top:0!important}.pr-lg-0,.px-lg-0{padding-right:0!important}.pb-lg-0,.py-lg-0{padding-bottom:0!important}.pl-lg-0,.px-lg-0{padding-left:0!important}.p-lg-1{padding:.25rem!important}.pt-lg-1,.py-lg-1{padding-top:.25rem!important}.pr-lg-1,.px-lg-1{padding-right:.25rem!important}.pb-lg-1,.py-lg-1{padding-bottom:.25rem!important}.pl-lg-1,.px-lg-1{padding-left:.25rem!important}.p-lg-2{padding:.5rem!important}.pt-lg-2,.py-lg-2{padding-top:.5rem!important}.pr-lg-2,.px-lg-2{padding-right:.5rem!important}.pb-lg-2,.py-lg-2{padding-bottom:.5rem!important}.pl-lg-2,.px-lg-2{padding-left:.5rem!important}.p-lg-3{padding:1rem!important}.pt-lg-3,.py-lg-3{padding-top:1rem!important}.pr-lg-3,.px-lg-3{padding-right:1rem!important}.pb-lg-3,.py-lg-3{padding-bottom:1rem!important}.pl-lg-3,.px-lg-3{padding-left:1rem!important}.p-lg-4{padding:1.5rem!important}.pt-lg-4,.py-lg-4{padding-top:1.5rem!important}.pr-lg-4,.px-lg-4{padding-right:1.5rem!important}.pb-lg-4,.py-lg-4{padding-bottom:1.5rem!important}.pl-lg-4,.px-lg-4{padding-left:1.5rem!important}.p-lg-5{padding:3rem!important}.pt-lg-5,.py-lg-5{padding-top:3rem!important}.pr-lg-5,.px-lg-5{padding-right:3rem!important}.pb-lg-5,.py-lg-5{padding-bottom:3rem!important}.pl-lg-5,.px-lg-5{padding-left:3rem!important}.m-lg-auto{margin:auto!important}.mt-lg-auto,.my-lg-auto{margin-top:auto!important}.mr-lg-auto,.mx-lg-auto{margin-right:auto!important}.mb-lg-auto,.my-lg-auto{margin-bottom:auto!important}.ml-lg-auto,.mx-lg-auto{margin-left:auto!important}}@media (min-width:1200px){.m-xl-0{margin:0!important}.mt-xl-0,.my-xl-0{margin-top:0!important}.mr-xl-0,.mx-xl-0{margin-right:0!important}.mb-xl-0,.my-xl-0{margin-bottom:0!important}.ml-xl-0,.mx-xl-0{margin-left:0!important}.m-xl-1{margin:.25rem!important}.mt-xl-1,.my-xl-1{margin-top:.25rem!important}.mr-xl-1,.mx-xl-1{margin-right:.25rem!important}.mb-xl-1,.my-xl-1{margin-bottom:.25rem!important}.ml-xl-1,.mx-xl-1{margin-left:.25rem!important}.m-xl-2{margin:.5rem!important}.mt-xl-2,.my-xl-2{margin-top:.5rem!important}.mr-xl-2,.mx-xl-2{margin-right:.5rem!important}.mb-xl-2,.my-xl-2{margin-bottom:.5rem!important}.ml-xl-2,.mx-xl-2{margin-left:.5rem!important}.m-xl-3{margin:1rem!important}.mt-xl-3,.my-xl-3{margin-top:1rem!important}.mr-xl-3,.mx-xl-3{margin-right:1rem!important}.mb-xl-3,.my-xl-3{margin-bottom:1rem!important}.ml-xl-3,.mx-xl-3{margin-left:1rem!important}.m-xl-4{margin:1.5rem!important}.mt-xl-4,.my-xl-4{margin-top:1.5rem!important}.mr-xl-4,.mx-xl-4{margin-right:1.5rem!important}.mb-xl-4,.my-xl-4{margin-bottom:1.5rem!important}.ml-xl-4,.mx-xl-4{margin-left:1.5rem!important}.m-xl-5{margin:3rem!important}.mt-xl-5,.my-xl-5{margin-top:3rem!important}.mr-xl-5,.mx-xl-5{margin-right:3rem!important}.mb-xl-5,.my-xl-5{margin-bottom:3rem!important}.ml-xl-5,.mx-xl-5{margin-left:3rem!important}.p-xl-0{padding:0!important}.pt-xl-0,.py-xl-0{padding-top:0!important}.pr-xl-0,.px-xl-0{padding-right:0!important}.pb-xl-0,.py-xl-0{padding-bottom:0!important}.pl-xl-0,.px-xl-0{padding-left:0!important}.p-xl-1{padding:.25rem!important}.pt-xl-1,.py-xl-1{padding-top:.25rem!important}.pr-xl-1,.px-xl-1{padding-right:.25rem!important}.pb-xl-1,.py-xl-1{padding-bottom:.25rem!important}.pl-xl-1,.px-xl-1{padding-left:.25rem!important}.p-xl-2{padding:.5rem!important}.pt-xl-2,.py-xl-2{padding-top:.5rem!important}.pr-xl-2,.px-xl-2{padding-right:.5rem!important}.pb-xl-2,.py-xl-2{padding-bottom:.5rem!important}.pl-xl-2,.px-xl-2{padding-left:.5rem!important}.p-xl-3{padding:1rem!important}.pt-xl-3,.py-xl-3{padding-top:1rem!important}.pr-xl-3,.px-xl-3{padding-right:1rem!important}.pb-xl-3,.py-xl-3{padding-bottom:1rem!important}.pl-xl-3,.px-xl-3{padding-left:1rem!important}.p-xl-4{padding:1.5rem!important}.pt-xl-4,.py-xl-4{padding-top:1.5rem!important}.pr-xl-4,.px-xl-4{padding-right:1.5rem!important}.pb-xl-4,.py-xl-4{padding-bottom:1.5rem!important}.pl-xl-4,.px-xl-4{padding-left:1.5rem!important}.p-xl-5{padding:3rem!important}.pt-xl-5,.py-xl-5{padding-top:3rem!important}.pr-xl-5,.px-xl-5{padding-right:3rem!important}.pb-xl-5,.py-xl-5{padding-bottom:3rem!important}.pl-xl-5,.px-xl-5{padding-left:3rem!important}.m-xl-auto{margin:auto!important}.mt-xl-auto,.my-xl-auto{margin-top:auto!important}.mr-xl-auto,.mx-xl-auto{margin-right:auto!important}.mb-xl-auto,.my-xl-auto{margin-bottom:auto!important}.ml-xl-auto,.mx-xl-auto{margin-left:auto!important}}.my-neg-1{margin-top:-1px!important;margin-bottom:-1px!important}.mx-neg-1{margin-right:-1px!important;margin-left:-1px!important}.mb-neg-1{margin-bottom:-1px!important}

{# /* // Text */ #}
.text-left{text-align:left!important}.text-right{text-align:right!important}.text-center{text-align:center!important}@media (min-width:576px){.text-sm-left{text-align:left!important}.text-sm-right{text-align:right!important}.text-sm-center{text-align:center!important}}@media (min-width:768px){.text-md-left{text-align:left!important}.text-md-right{text-align:right!important}.text-md-center{text-align:center!important}}@media (min-width:992px){.text-lg-left{text-align:left!important}.text-lg-right{text-align:right!important}.text-lg-center{text-align:center!important}}@media (min-width:1200px){.text-xl-left{text-align:left!important}.text-xl-right{text-align:right!important}.text-xl-center{text-align:center!important}}.text-lowercase{text-transform:lowercase!important}.text-uppercase{text-transform:uppercase!important}.text-capitalize{text-transform:capitalize!important}.text-underline{text-decoration:underline;!important}.font-weight-light{font-weight:300!important}.font-weight-normal{font-weight:400!important}.font-weight-bold{font-weight:700!important}.font-italic{font-style:italic!important}

{# /* // Align */ #}
.align-baseline{vertical-align:baseline!important}.align-top{vertical-align:top!important}.align-middle{vertical-align:middle!important}.align-bottom{vertical-align:bottom!important}.align-sub{vertical-align:sub!important}.align-text-bottom{vertical-align:text-bottom!important}.align-text-top{vertical-align:text-top!important}.align-item-middle{position:relative;top:50%;transform:translateY(-50%)}

{# /* // Position */ #}
.position-sticky{position: sticky!important; position: -webkit-sticky;}.position-relative{position:relative!important}.position-absolute{position:absolute!important;}.position-fixed{position:fixed!important}

{# /* // Image */ #}
.img-fluid {max-width:100%;height:auto}

{# /* // Visibility */ #}
.hidden{display:none}.opacity-30{opacity: .3!important}.opacity-50{opacity: .5}.opacity-40{opacity:.4}.opacity-60{opacity:.6}.opacity-80{opacity:.8}.opacity-90{opacity:.9}.overflow-none{overflow:hidden}

{# /* // Float */ #}
.float-left{float:left!important}.float-right{float:right!important}.float-none{float:none!important}

{# /* // Width */ #}
.w-100{width:100%!important}.w-auto{width:auto!important}

{# /* // Height */ #}
.h-100{height:100%!important}.h-auto{height:auto!important}

@media (min-width: 768px) { 

  {# /* // Margin and padding */ #}
  .mr-md-neg-1{margin-right:-1px!important}

  {# /* // Position */ #}

  .position-relative-md{position:relative!important;}.position-sticky-md{position:sticky!important;position:-webkit-sticky!important;}.position-fixed-md{position:fixed!important;position:-webkit-fixed!important;}.position-absolute-md{position:absolute!important;}

  {# /* // Float */ #}
  
  .float-md-none{float:none!important;}

  {# /* // Align */ #}

  .justify-content-center-md{-ms-flex-pack:center!important;justify-content:center!important;}

  {# /* // Visibility */ #}

  .opacity-md-50{opacity: .5}

  {# /* // Icons */ #}

  .icon-desktop-lg {font-size: 1.33333em;line-height: .75em;vertical-align: -.0667em;}

  {# /* // Width */ #}
  .w-md-100{width:100%!important}.w-md-50{width:50%!important}.w-md-auto{width:auto!important}
}
{% endraw %}
