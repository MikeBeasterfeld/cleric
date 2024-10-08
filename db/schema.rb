# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150216205826) do

  create_table "blogs", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.date     "published_on"
    t.integer  "author"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "blogs", ["slug"], name: "index_blogs_on_slug", unique: true

  create_table "bootstrapsettings", force: true do |t|
    t.string   "gray_darker",                                 default: "lighten(#000, 13.5%)"
    t.string   "gray_dark",                                   default: "lighten(#000, 20%)"
    t.string   "gray",                                        default: "lighten(#000, 33.5%)"
    t.string   "gray_light",                                  default: "lighten(#000, 46.7%)"
    t.string   "gray_lighter",                                default: "lighten(#000, 93.5%)"
    t.string   "brand_primary",                               default: "#428bca"
    t.string   "brand_success",                               default: "#5cb85c"
    t.string   "brand_info",                                  default: "#5bc0de"
    t.string   "brand_warning",                               default: "#f0ad4e"
    t.string   "brand_danger",                                default: "#d9534f"
    t.string   "body_bg",                                     default: "#fff"
    t.string   "text_color",                                  default: "$gray-dark"
    t.string   "link_color",                                  default: "$brand-primary"
    t.string   "link_hover_color",                            default: "darken($link-color, 15%)"
    t.string   "font_family_sans_serif",                      default: "\"Helvetica Neue\", Helvetica, Arial, sans-serif"
    t.string   "font_family_serif",                           default: "Georgia, \"Times New Roman\", Times, serif"
    t.string   "font_family_monospace",                       default: "Menlo, Monaco, Consolas, \"Courier New\", monospace"
    t.string   "font_family_base",                            default: "$font-family-sans-serif"
    t.string   "font_size_base",                              default: "14px"
    t.string   "font_size_large",                             default: "ceil(($font-size-base * 1.25))"
    t.string   "font_size_small",                             default: "ceil(($font-size-base * 0.85))"
    t.string   "font_size_h1",                                default: "floor(($font-size-base * 2.6))"
    t.string   "font_size_h2",                                default: "floor(($font-size-base * 2.15))"
    t.string   "font_size_h3",                                default: "ceil(($font-size-base * 1.7))"
    t.string   "font_size_h4",                                default: "ceil(($font-size-base * 1.25))"
    t.string   "font_size_h5",                                default: "$font-size-base"
    t.string   "font_size_h6",                                default: "ceil(($font-size-base * 0.85))"
    t.string   "line_height_base",                            default: "1.428571429"
    t.string   "line_height_computed",                        default: "floor(($font-size-base * $line-height-base))"
    t.string   "headings_font_family",                        default: "inherit"
    t.string   "headings_font_weight",                        default: "500"
    t.string   "headings_line_height",                        default: "1.1"
    t.string   "headings_color",                              default: "inherit"
    t.string   "icon_font_path",                              default: "if($bootstrap-sass-asset-helper, \"bootstrap/\", \"../fonts/bootstrap/\")"
    t.string   "icon_font_name",                              default: "\"glyphicons-halflings-regular\""
    t.string   "icon_font_svg_id",                            default: "\"glyphicons-halflingsregular\""
    t.string   "padding_base_vertical",                       default: "6px"
    t.string   "padding_base_horizontal",                     default: "12px"
    t.string   "padding_large_vertical",                      default: "10px"
    t.string   "padding_large_horizontal",                    default: "16px"
    t.string   "padding_small_vertical",                      default: "5px"
    t.string   "padding_small_horizontal",                    default: "10px"
    t.string   "padding_xs_vertical",                         default: "1px"
    t.string   "padding_xs_horizontal",                       default: "5px"
    t.string   "line_height_large",                           default: "1.33"
    t.string   "line_height_small",                           default: "1.5"
    t.string   "border_radius_base",                          default: "4px"
    t.string   "border_radius_large",                         default: "6px"
    t.string   "border_radius_small",                         default: "3px"
    t.string   "component_active_color",                      default: "#fff"
    t.string   "component_active_bg",                         default: "$brand-primary"
    t.string   "caret_width_base",                            default: "4px"
    t.string   "caret_width_large",                           default: "5px"
    t.string   "table_cell_padding",                          default: "8px"
    t.string   "table_condensed_cell_padding",                default: "5px"
    t.string   "table_bg",                                    default: "transparent"
    t.string   "table_bg_accent",                             default: "#f9f9f9"
    t.string   "table_bg_hover",                              default: "#f5f5f5"
    t.string   "table_bg_active",                             default: "$table-bg-hover"
    t.string   "table_border_color",                          default: "#ddd"
    t.string   "btn_font_weight",                             default: "normal"
    t.string   "btn_default_color",                           default: "#333"
    t.string   "btn_default_bg",                              default: "#fff"
    t.string   "btn_default_border",                          default: "#ccc"
    t.string   "btn_primary_color",                           default: "#fff"
    t.string   "btn_primary_bg",                              default: "$brand-primary"
    t.string   "btn_primary_border",                          default: "darken($btn-primary-bg, 5%)"
    t.string   "btn_success_color",                           default: "#fff"
    t.string   "btn_success_bg",                              default: "$brand-success"
    t.string   "btn_success_border",                          default: "darken($btn-success-bg, 5%)"
    t.string   "btn_info_color",                              default: "#fff"
    t.string   "btn_info_bg",                                 default: "$brand-info"
    t.string   "btn_info_border",                             default: "darken($btn-info-bg, 5%)"
    t.string   "btn_warning_color",                           default: "#fff"
    t.string   "btn_warning_bg",                              default: "$brand-warning"
    t.string   "btn_warning_border",                          default: "darken($btn-warning-bg, 5%)"
    t.string   "btn_danger_color",                            default: "#fff"
    t.string   "btn_danger_bg",                               default: "$brand-danger"
    t.string   "btn_danger_border",                           default: "darken($btn-danger-bg, 5%)"
    t.string   "btn_link_disabled_color",                     default: "$gray-light"
    t.string   "input_bg",                                    default: "#fff"
    t.string   "input_bg_disabled",                           default: "$gray-lighter"
    t.string   "input_color",                                 default: "$gray"
    t.string   "input_border",                                default: "#ccc"
    t.string   "input_border_radius",                         default: "$border-radius-base"
    t.string   "input_border_focus",                          default: "#66afe9"
    t.string   "input_color_placeholder",                     default: "$gray-light"
    t.string   "input_height_base",                           default: "($line-height-computed + ($padding-base-vertical * 2) + 2)"
    t.string   "input_height_large",                          default: "(ceil($font-size-large * $line-height-large) + ($padding-large-vertical * 2) + 2)"
    t.string   "input_height_small",                          default: "(floor($font-size-small * $line-height-small) + ($padding-small-vertical * 2) + 2)"
    t.string   "legend_color",                                default: "$gray-dark"
    t.string   "legend_border_color",                         default: "#e5e5e5"
    t.string   "input_group_addon_bg",                        default: "$gray-lighter"
    t.string   "input_group_addon_border_color",              default: "$input-border"
    t.string   "dropdown_bg",                                 default: "#fff"
    t.string   "dropdown_border",                             default: "rgba(0,0,0,.15)"
    t.string   "dropdown_fallback_border",                    default: "#ccc"
    t.string   "dropdown_divider_bg",                         default: "#e5e5e5"
    t.string   "dropdown_link_color",                         default: "$gray-dark"
    t.string   "dropdown_link_hover_color",                   default: "darken($gray-dark, 5%)"
    t.string   "dropdown_link_hover_bg",                      default: "#f5f5f5"
    t.string   "dropdown_link_active_color",                  default: "$component-active-color"
    t.string   "dropdown_link_active_bg",                     default: "$component-active-bg"
    t.string   "dropdown_link_disabled_color",                default: "$gray-light"
    t.string   "dropdown_header_color",                       default: "$gray-light"
    t.string   "dropdown_caret_color",                        default: "#000"
    t.string   "zindex_navbar",                               default: "1000"
    t.string   "zindex_dropdown",                             default: "1000"
    t.string   "zindex_popover",                              default: "1060"
    t.string   "zindex_tooltip",                              default: "1070"
    t.string   "zindex_navbar_fixed",                         default: "1030"
    t.string   "zindex_modal_background",                     default: "1040"
    t.string   "zindex_modal",                                default: "1050"
    t.string   "screen_xs",                                   default: "480px"
    t.string   "screen_xs_min",                               default: "$screen-xs"
    t.string   "screen_phone",                                default: "$screen-xs-min"
    t.string   "screen_sm",                                   default: "768px"
    t.string   "screen_sm_min",                               default: "$screen-sm"
    t.string   "screen_tablet",                               default: "$screen-sm-min"
    t.string   "screen_md",                                   default: "992px"
    t.string   "screen_md_min",                               default: "$screen-md"
    t.string   "screen_desktop",                              default: "$screen-md-min"
    t.string   "screen_lg",                                   default: "1200px"
    t.string   "screen_lg_min",                               default: "$screen-lg"
    t.string   "screen_lg_desktop",                           default: "$screen-lg-min"
    t.string   "screen_xs_max",                               default: "($screen-sm-min - 1)"
    t.string   "screen_sm_max",                               default: "($screen-md-min - 1)"
    t.string   "screen_md_max",                               default: "($screen-lg-min - 1)"
    t.string   "grid_columns",                                default: "12"
    t.string   "grid_gutter_width",                           default: "30px"
    t.string   "grid_float_breakpoint",                       default: "$screen-sm-min"
    t.string   "grid_float_breakpoint_max",                   default: "($grid-float-breakpoint - 1)"
    t.string   "container_tablet",                            default: "((720px + $grid-gutter-width))"
    t.string   "container_sm",                                default: "$container-tablet"
    t.string   "container_desktop",                           default: "((940px + $grid-gutter-width))"
    t.string   "container_md",                                default: "$container-desktop"
    t.string   "container_large_desktop",                     default: "((1140px + $grid-gutter-width))"
    t.string   "container_lg",                                default: "$container-large-desktop"
    t.string   "navbar_height",                               default: "50px"
    t.string   "navbar_margin_bottom",                        default: "$line-height-computed"
    t.string   "navbar_border_radius",                        default: "$border-radius-base"
    t.string   "navbar_padding_horizontal",                   default: "floor(($grid-gutter-width / 2))"
    t.string   "navbar_padding_vertical",                     default: "(($navbar-height - $line-height-computed) / 2)"
    t.string   "navbar_collapse_max_height",                  default: "340px"
    t.string   "navbar_default_color",                        default: "#777"
    t.string   "navbar_default_bg",                           default: "#f8f8f8"
    t.string   "navbar_default_border",                       default: "darken($navbar-default-bg, 6.5%)"
    t.string   "navbar_default_link_color",                   default: "#777"
    t.string   "navbar_default_link_hover_color",             default: "#333"
    t.string   "navbar_default_link_hover_bg",                default: "transparent"
    t.string   "navbar_default_link_active_color",            default: "#555"
    t.string   "navbar_default_link_active_bg",               default: "darken($navbar-default-bg, 6.5%)"
    t.string   "navbar_default_link_disabled_color",          default: "#ccc"
    t.string   "navbar_default_link_disabled_bg",             default: "transparent"
    t.string   "navbar_default_brand_color",                  default: "$navbar-default-link-color"
    t.string   "navbar_default_brand_hover_color",            default: "darken($navbar-default-brand-color, 10%)"
    t.string   "navbar_default_brand_hover_bg",               default: "transparent"
    t.string   "navbar_default_toggle_hover_bg",              default: "#ddd"
    t.string   "navbar_default_toggle_icon_bar_bg",           default: "#888"
    t.string   "navbar_default_toggle_border_color",          default: "#ddd"
    t.string   "navbar_inverse_color",                        default: "$gray-light"
    t.string   "navbar_inverse_bg",                           default: "#222"
    t.string   "navbar_inverse_border",                       default: "darken($navbar-inverse-bg, 10%)"
    t.string   "navbar_inverse_link_color",                   default: "$gray-light"
    t.string   "navbar_inverse_link_hover_color",             default: "#fff"
    t.string   "navbar_inverse_link_hover_bg",                default: "transparent"
    t.string   "navbar_inverse_link_active_color",            default: "$navbar-inverse-link-hover-color"
    t.string   "navbar_inverse_link_active_bg",               default: "darken($navbar-inverse-bg, 10%)"
    t.string   "navbar_inverse_link_disabled_color",          default: "#444"
    t.string   "navbar_inverse_link_disabled_bg",             default: "transparent"
    t.string   "navbar_inverse_brand_color",                  default: "$navbar-inverse-link-color"
    t.string   "navbar_inverse_brand_hover_color",            default: "#fff"
    t.string   "navbar_inverse_brand_hover_bg",               default: "transparent"
    t.string   "navbar_inverse_toggle_hover_bg",              default: "#333"
    t.string   "navbar_inverse_toggle_icon_bar_bg",           default: "#fff"
    t.string   "navbar_inverse_toggle_border_color",          default: "#333"
    t.string   "nav_link_padding",                            default: "10px 15px"
    t.string   "nav_link_hover_bg",                           default: "$gray-lighter"
    t.string   "nav_disabled_link_color",                     default: "$gray-light"
    t.string   "nav_disabled_link_hover_color",               default: "$gray-light"
    t.string   "nav_open_link_hover_color",                   default: "#fff"
    t.string   "nav_tabs_border_color",                       default: "#ddd"
    t.string   "nav_tabs_link_hover_border_color",            default: "$gray-lighter"
    t.string   "nav_tabs_active_link_hover_bg",               default: "$body-bg"
    t.string   "nav_tabs_active_link_hover_color",            default: "$gray"
    t.string   "nav_tabs_active_link_hover_border_color",     default: "#ddd"
    t.string   "nav_tabs_justified_link_border_color",        default: "#ddd"
    t.string   "nav_tabs_justified_active_link_border_color", default: "$body-bg"
    t.string   "nav_pills_border_radius",                     default: "$border-radius-base"
    t.string   "nav_pills_active_link_hover_bg",              default: "$component-active-bg"
    t.string   "nav_pills_active_link_hover_color",           default: "$component-active-color"
    t.string   "pagination_color",                            default: "$link-color"
    t.string   "pagination_bg",                               default: "#fff"
    t.string   "pagination_border",                           default: "#ddd"
    t.string   "pagination_hover_color",                      default: "$link-hover-color"
    t.string   "pagination_hover_bg",                         default: "$gray-lighter"
    t.string   "pagination_hover_border",                     default: "#ddd"
    t.string   "pagination_active_color",                     default: "#fff"
    t.string   "pagination_active_bg",                        default: "$brand-primary"
    t.string   "pagination_active_border",                    default: "$brand-primary"
    t.string   "pagination_disabled_color",                   default: "$gray-light"
    t.string   "pagination_disabled_bg",                      default: "#fff"
    t.string   "pagination_disabled_border",                  default: "#ddd"
    t.string   "pager_bg",                                    default: "$pagination-bg"
    t.string   "pager_border",                                default: "$pagination-border"
    t.string   "pager_border_radius",                         default: "15px"
    t.string   "pager_hover_bg",                              default: "$pagination-hover-bg"
    t.string   "pager_active_bg",                             default: "$pagination-active-bg"
    t.string   "pager_active_color",                          default: "$pagination-active-color"
    t.string   "pager_disabled_color",                        default: "$pagination-disabled-color"
    t.string   "jumbotron_padding",                           default: "30px"
    t.string   "jumbotron_color",                             default: "inherit"
    t.string   "jumbotron_bg",                                default: "$gray-lighter"
    t.string   "jumbotron_heading_color",                     default: "inherit"
    t.string   "jumbotron_font_size",                         default: "ceil(($font-size-base * 1.5))"
    t.string   "state_success_text",                          default: "#3c763d"
    t.string   "state_success_bg",                            default: "#dff0d8"
    t.string   "state_success_border",                        default: "darken(adjust-hue($state-success-bg, -10), 5%)"
    t.string   "state_info_text",                             default: "#31708f"
    t.string   "state_info_bg",                               default: "#d9edf7"
    t.string   "state_info_border",                           default: "darken(adjust-hue($state-info-bg, -10), 7%)"
    t.string   "state_warning_text",                          default: "#8a6d3b"
    t.string   "state_warning_bg",                            default: "#fcf8e3"
    t.string   "state_warning_border",                        default: "darken(adjust-hue($state-warning-bg, -10), 5%)"
    t.string   "state_danger_text",                           default: "#a94442"
    t.string   "state_danger_bg",                             default: "#f2dede"
    t.string   "state_danger_border",                         default: "darken(adjust-hue($state-danger-bg, -10), 5%)"
    t.string   "tooltip_max_width",                           default: "200px"
    t.string   "tooltip_color",                               default: "#fff"
    t.string   "tooltip_bg",                                  default: "#000"
    t.string   "tooltip_opacity",                             default: ".9"
    t.string   "tooltip_arrow_width",                         default: "5px"
    t.string   "tooltip_arrow_color",                         default: "$tooltip-bg"
    t.string   "popover_bg",                                  default: "#fff"
    t.string   "popover_max_width",                           default: "276px"
    t.string   "popover_border_color",                        default: "rgba(0,0,0,.2)"
    t.string   "popover_fallback_border_color",               default: "#ccc"
    t.string   "popover_title_bg",                            default: "darken($popover-bg, 3%)"
    t.string   "popover_arrow_width",                         default: "10px"
    t.string   "popover_arrow_color",                         default: "#fff"
    t.string   "popover_arrow_outer_width",                   default: "($popover-arrow-width + 1)"
    t.string   "popover_arrow_outer_color",                   default: "fade-in($popover-border-color, 0.05)"
    t.string   "popover_arrow_outer_fallback_color",          default: "darken($popover-fallback-border-color, 20%)"
    t.string   "label_default_bg",                            default: "$gray-light"
    t.string   "label_primary_bg",                            default: "$brand-primary"
    t.string   "label_success_bg",                            default: "$brand-success"
    t.string   "label_info_bg",                               default: "$brand-info"
    t.string   "label_warning_bg",                            default: "$brand-warning"
    t.string   "label_danger_bg",                             default: "$brand-danger"
    t.string   "label_color",                                 default: "#fff"
    t.string   "label_link_hover_color",                      default: "#fff"
    t.string   "modal_inner_padding",                         default: "15px"
    t.string   "modal_title_padding",                         default: "15px"
    t.string   "modal_title_line_height",                     default: "$line-height-base"
    t.string   "modal_content_bg",                            default: "#fff"
    t.string   "modal_content_border_color",                  default: "rgba(0,0,0,.2)"
    t.string   "modal_content_fallback_border_color",         default: "#999"
    t.string   "modal_backdrop_bg",                           default: "#000"
    t.string   "modal_backdrop_opacity",                      default: ".5"
    t.string   "modal_header_border_color",                   default: "#e5e5e5"
    t.string   "modal_footer_border_color",                   default: "$modal-header-border-color"
    t.string   "modal_lg",                                    default: "900px"
    t.string   "modal_md",                                    default: "600px"
    t.string   "modal_sm",                                    default: "300px"
    t.string   "alert_padding",                               default: "15px"
    t.string   "alert_border_radius",                         default: "$border-radius-base"
    t.string   "alert_link_font_weight",                      default: "bold"
    t.string   "alert_success_bg",                            default: "$state-success-bg"
    t.string   "alert_success_text",                          default: "$state-success-text"
    t.string   "alert_success_border",                        default: "$state-success-border"
    t.string   "alert_info_bg",                               default: "$state-info-bg"
    t.string   "alert_info_text",                             default: "$state-info-text"
    t.string   "alert_info_border",                           default: "$state-info-border"
    t.string   "alert_warning_bg",                            default: "$state-warning-bg"
    t.string   "alert_warning_text",                          default: "$state-warning-text"
    t.string   "alert_warning_border",                        default: "$state-warning-border"
    t.string   "alert_danger_bg",                             default: "$state-danger-bg"
    t.string   "alert_danger_text",                           default: "$state-danger-text"
    t.string   "alert_danger_border",                         default: "$state-danger-border"
    t.string   "progress_bg",                                 default: "#f5f5f5"
    t.string   "progress_bar_color",                          default: "#fff"
    t.string   "progress_bar_bg",                             default: "$brand-primary"
    t.string   "progress_bar_success_bg",                     default: "$brand-success"
    t.string   "progress_bar_warning_bg",                     default: "$brand-warning"
    t.string   "progress_bar_danger_bg",                      default: "$brand-danger"
    t.string   "progress_bar_info_bg",                        default: "$brand-info"
    t.string   "list_group_bg",                               default: "#fff"
    t.string   "list_group_border",                           default: "#ddd"
    t.string   "list_group_border_radius",                    default: "$border-radius-base"
    t.string   "list_group_hover_bg",                         default: "#f5f5f5"
    t.string   "list_group_active_color",                     default: "$component-active-color"
    t.string   "list_group_active_bg",                        default: "$component-active-bg"
    t.string   "list_group_active_border",                    default: "$list-group-active-bg"
    t.string   "list_group_active_text_color",                default: "lighten($list-group-active-bg, 40%)"
    t.string   "list_group_disabled_color",                   default: "$gray-light"
    t.string   "list_group_disabled_bg",                      default: "$gray-lighter"
    t.string   "list_group_disabled_text_color",              default: "$list-group-disabled-color"
    t.string   "list_group_link_color",                       default: "#555"
    t.string   "list_group_link_hover_color",                 default: "$list-group-link-color"
    t.string   "list_group_link_heading_color",               default: "#333"
    t.string   "panel_bg",                                    default: "#fff"
    t.string   "panel_body_padding",                          default: "15px"
    t.string   "panel_heading_padding",                       default: "10px 15px"
    t.string   "panel_footer_padding",                        default: "$panel-heading-padding"
    t.string   "panel_border_radius",                         default: "$border-radius-base"
    t.string   "panel_inner_border",                          default: "#ddd"
    t.string   "panel_footer_bg",                             default: "#f5f5f5"
    t.string   "panel_default_text",                          default: "$gray-dark"
    t.string   "panel_default_border",                        default: "#ddd"
    t.string   "panel_default_heading_bg",                    default: "#f5f5f5"
    t.string   "panel_primary_text",                          default: "#fff"
    t.string   "panel_primary_border",                        default: "$brand-primary"
    t.string   "panel_primary_heading_bg",                    default: "$brand-primary"
    t.string   "panel_success_text",                          default: "$state-success-text"
    t.string   "panel_success_border",                        default: "$state-success-border"
    t.string   "panel_success_heading_bg",                    default: "$state-success-bg"
    t.string   "panel_info_text",                             default: "$state-info-text"
    t.string   "panel_info_border",                           default: "$state-info-border"
    t.string   "panel_info_heading_bg",                       default: "$state-info-bg"
    t.string   "panel_warning_text",                          default: "$state-warning-text"
    t.string   "panel_warning_border",                        default: "$state-warning-border"
    t.string   "panel_warning_heading_bg",                    default: "$state-warning-bg"
    t.string   "panel_danger_text",                           default: "$state-danger-text"
    t.string   "panel_danger_border",                         default: "$state-danger-border"
    t.string   "panel_danger_heading_bg",                     default: "$state-danger-bg"
    t.string   "thumbnail_padding",                           default: "4px"
    t.string   "thumbnail_bg",                                default: "$body-bg"
    t.string   "thumbnail_border",                            default: "#ddd"
    t.string   "thumbnail_border_radius",                     default: "$border-radius-base"
    t.string   "thumbnail_caption_color",                     default: "$text-color"
    t.string   "thumbnail_caption_padding",                   default: "9px"
    t.string   "well_bg",                                     default: "#f5f5f5"
    t.string   "well_border",                                 default: "darken($well-bg, 7%)"
    t.string   "badge_color",                                 default: "#fff"
    t.string   "badge_link_hover_color",                      default: "#fff"
    t.string   "badge_bg",                                    default: "$gray-light"
    t.string   "badge_active_color",                          default: "$link-color"
    t.string   "badge_active_bg",                             default: "#fff"
    t.string   "badge_font_weight",                           default: "bold"
    t.string   "badge_line_height",                           default: "1"
    t.string   "badge_border_radius",                         default: "10px"
    t.string   "breadcrumb_padding_vertical",                 default: "8px"
    t.string   "breadcrumb_padding_horizontal",               default: "15px"
    t.string   "breadcrumb_bg",                               default: "#f5f5f5"
    t.string   "breadcrumb_color",                            default: "#ccc"
    t.string   "breadcrumb_active_color",                     default: "$gray-light"
    t.string   "breadcrumb_separator",                        default: "\"/\""
    t.string   "carousel_text_shadow",                        default: "0 1px 2px rgba(0,0,0,.6)"
    t.string   "carousel_control_color",                      default: "#fff"
    t.string   "carousel_control_width",                      default: "15%"
    t.string   "carousel_control_opacity",                    default: ".5"
    t.string   "carousel_control_font_size",                  default: "20px"
    t.string   "carousel_indicator_active_bg",                default: "#fff"
    t.string   "carousel_indicator_border_color",             default: "#fff"
    t.string   "carousel_caption_color",                      default: "#fff"
    t.string   "close_font_weight",                           default: "bold"
    t.string   "close_color",                                 default: "#000"
    t.string   "close_text_shadow",                           default: "0 1px 0 #fff"
    t.string   "code_color",                                  default: "#c7254e"
    t.string   "code_bg",                                     default: "#f9f2f4"
    t.string   "kbd_color",                                   default: "#fff"
    t.string   "kbd_bg",                                      default: "#333"
    t.string   "pre_bg",                                      default: "#f5f5f5"
    t.string   "pre_color",                                   default: "$gray-dark"
    t.string   "pre_border_color",                            default: "#ccc"
    t.string   "pre_scrollable_max_height",                   default: "340px"
    t.string   "component_offset_horizontal",                 default: "180px"
    t.string   "text_muted",                                  default: "$gray-light"
    t.string   "abbr_border_color",                           default: "$gray-light"
    t.string   "headings_small_color",                        default: "$gray-light"
    t.string   "blockquote_small_color",                      default: "$gray-light"
    t.string   "blockquote_font_size",                        default: "($font-size-base * 1.25)"
    t.string   "blockquote_border_color",                     default: "$gray-lighter"
    t.string   "page_header_border_color",                    default: "$gray-lighter"
    t.string   "dl_horizontal_offset",                        default: "$component-offset-horizontal"
    t.string   "hr_border",                                   default: "$gray-lighter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_image_galleries", force: true do |t|
    t.integer  "bootsy_resource_id"
    t.string   "bootsy_resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: true do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_templates", force: true do |t|
    t.text     "template"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "episodeguests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "episode_id"
    t.integer  "user_id"
  end

  create_table "episodehosts", force: true do |t|
    t.integer  "episode_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "episodes", force: true do |t|
    t.string   "title"
    t.integer  "number"
    t.integer  "part"
    t.text     "description"
    t.text     "notes"
    t.string   "media"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "show_id"
    t.string   "slug"
    t.string   "subtitle"
    t.string   "uploaded_image"
    t.boolean  "live",           default: false
    t.boolean  "preview",        default: false
    t.date     "published_on"
    t.string   "content_type"
    t.integer  "file_size"
    t.integer  "audio_time"
    t.boolean  "explicit",       default: false
    t.integer  "downloads",      default: 0
  end

  add_index "episodes", ["published_on"], name: "index_episodes_on_published_on"

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "itunescategories", force: true do |t|
    t.string   "category"
    t.string   "subcategory"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liquid_templates", force: true do |t|
    t.string   "scope"
    t.text     "code"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "active"
  end

  create_table "media", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "size"
    t.integer  "length"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "localmedia"
    t.string   "ftpmedia"
    t.string   "awsmedia"
    t.string   "filetype"
  end

  create_table "pages", force: true do |t|
    t.string   "slug"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["slug"], name: "index_pages_on_slug", unique: true

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rss_feed_shows", force: true do |t|
    t.integer  "show_id"
    t.integer  "rss_feed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rss_feeds", force: true do |t|
    t.string   "name"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "description"
    t.string   "language"
    t.string   "copyright"
    t.integer  "owner_id"
    t.integer  "itunescategory_id"
    t.string   "itunesauthor"
    t.string   "uploaded_image"
  end

  add_index "rss_feeds", ["slug"], name: "index_rss_feeds_on_slug", unique: true

  create_table "show_rsses", force: true do |t|
    t.integer  "show_id"
    t.integer  "rss_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "showhosts", force: true do |t|
    t.integer  "show_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shows", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uploaded_image"
    t.string   "slug"
    t.boolean  "retired"
    t.string   "language"
    t.string   "copyright"
    t.integer  "owner_id"
    t.string   "remote_image"
    t.integer  "itunescategory_id"
    t.string   "itunesauthor"
  end

  create_table "shows_users", force: true do |t|
    t.integer  "show_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stylesheets", force: true do |t|
    t.string   "gray_base",                                   default: "#000",                                                                               null: false
    t.string   "gray_darker",                                 default: "lighten($gray-base, 13.5%)",                                                         null: false
    t.string   "gray_dark",                                   default: "lighten($gray-base, 20%)",                                                           null: false
    t.string   "gray",                                        default: "lighten($gray_base, 33.5%)",                                                         null: false
    t.string   "gray_light",                                  default: "lighten($gray-base, 46.7%)",                                                         null: false
    t.string   "gray_lighter",                                default: "lighten($gray-base, 93.5%)",                                                         null: false
    t.string   "brand_primary",                               default: "darken(#428bca, 6.5%)",                                                              null: false
    t.string   "brand_success",                               default: "#5cb85c",                                                                            null: false
    t.string   "brand_info",                                  default: "#5bc0de",                                                                            null: false
    t.string   "brand_warning",                               default: "#f0ad4e",                                                                            null: false
    t.string   "brand_danger",                                default: "#d9534f",                                                                            null: false
    t.string   "body_bg",                                     default: "#fff",                                                                               null: false
    t.string   "text_color",                                  default: "$gray-dark",                                                                         null: false
    t.string   "link_color",                                  default: "$brand-primary",                                                                     null: false
    t.string   "link_hover_color",                            default: "darken($link-color, 15%)",                                                           null: false
    t.string   "link_hover_decoration",                       default: "underline",                                                                          null: false
    t.string   "font_family_sans_serif",                      default: "\"Helvetica Neue\", Helvetica, Arial, sans-serif",                                   null: false
    t.string   "font_family_serif",                           default: "Georgia, \"Times New Roman\", Times, serif",                                         null: false
    t.string   "font_family_monospace",                       default: "Menlo, Monaco, Consolas, \"Courier New\", monospace",                                null: false
    t.string   "font_family_base",                            default: "$font-family-sans-serif",                                                            null: false
    t.string   "font_size_base",                              default: "14px",                                                                               null: false
    t.string   "font_size_large",                             default: "ceil(($font-size-base * 1.25))",                                                     null: false
    t.string   "font_size_small",                             default: "ceil(($font-size-base * 0.85))",                                                     null: false
    t.string   "font_size_h1",                                default: "floor(($font-size-base * 2.6))",                                                     null: false
    t.string   "font_size_h2",                                default: "floor(($font-size-base * 2.15))",                                                    null: false
    t.string   "font_size_h3",                                default: "ceil(($font-size-base * 1.7))",                                                      null: false
    t.string   "font_size_h4",                                default: "ceil(($font-size-base * 1.25))",                                                     null: false
    t.string   "font_size_h5",                                default: "$font-size-base",                                                                    null: false
    t.string   "font_size_h6",                                default: "ceil(($font-size-base * 0.85))",                                                     null: false
    t.string   "line_height_base",                            default: "1.428571429",                                                                        null: false
    t.string   "line_height_computed",                        default: "floor(($font-size-base * $line-height-base))",                                       null: false
    t.string   "headings_font_family",                        default: "inherit",                                                                            null: false
    t.string   "headings_font_weight",                        default: "500",                                                                                null: false
    t.string   "headings_line_height",                        default: "1.1",                                                                                null: false
    t.string   "headings_color",                              default: "inherit",                                                                            null: false
    t.string   "icon_font_path",                              default: "if($bootstrap-sass-asset-helper, \"bootstrap/\", \"../fonts/bootstrap/\")",          null: false
    t.string   "icon_font_name",                              default: "\"glyphicons-halflings-regular\"",                                                   null: false
    t.string   "icon_font_svg_id",                            default: "\"glyphicons_halflingsregular\"",                                                    null: false
    t.string   "padding_base_vertical",                       default: "6px",                                                                                null: false
    t.string   "padding_base_horizontal",                     default: "12px",                                                                               null: false
    t.string   "padding_large_vertical",                      default: "10px",                                                                               null: false
    t.string   "padding_large_horizontal",                    default: "16px",                                                                               null: false
    t.string   "padding_small_vertical",                      default: "5px",                                                                                null: false
    t.string   "padding_small_horizontal",                    default: "10px",                                                                               null: false
    t.string   "padding_xs_vertical",                         default: "1px",                                                                                null: false
    t.string   "padding_xs_horizontal",                       default: "5px",                                                                                null: false
    t.string   "line_height_large",                           default: "1.3333333",                                                                          null: false
    t.string   "line_height_small",                           default: "1.5",                                                                                null: false
    t.string   "border_radius_base",                          default: "4px",                                                                                null: false
    t.string   "border_radius_large",                         default: "6px",                                                                                null: false
    t.string   "border_radius_small",                         default: "3px",                                                                                null: false
    t.string   "component_active_color",                      default: "#fff",                                                                               null: false
    t.string   "component_active_bg",                         default: "$brand-primary",                                                                     null: false
    t.string   "caret_width_base",                            default: "4px",                                                                                null: false
    t.string   "caret_width_large",                           default: "5px",                                                                                null: false
    t.string   "table_cell_padding",                          default: "8px",                                                                                null: false
    t.string   "table_condensed_cell_padding",                default: "5px",                                                                                null: false
    t.string   "table_bg",                                    default: "transparent",                                                                        null: false
    t.string   "table_bg_accent",                             default: "#f9f9f9",                                                                            null: false
    t.string   "table_bg_hover",                              default: "#f5f5f5",                                                                            null: false
    t.string   "table_bg_active",                             default: "$table-bg-hover",                                                                    null: false
    t.string   "table_border_color",                          default: "#ddd",                                                                               null: false
    t.string   "btn_font_weight",                             default: "normal",                                                                             null: false
    t.string   "btn_default_color",                           default: "#333",                                                                               null: false
    t.string   "btn_default_bg",                              default: "#fff",                                                                               null: false
    t.string   "btn_default_border",                          default: "#ccc",                                                                               null: false
    t.string   "btn_primary_color",                           default: "#fff",                                                                               null: false
    t.string   "btn_primary_bg",                              default: "$brand-primary",                                                                     null: false
    t.string   "btn_primary_border",                          default: "darken($btn-primary-bg, 5%)",                                                        null: false
    t.string   "btn_success_color",                           default: "#fff",                                                                               null: false
    t.string   "btn_success_bg",                              default: "$brand-success",                                                                     null: false
    t.string   "btn_success_border",                          default: "darken($btn-success-bg, 5%)",                                                        null: false
    t.string   "btn_info_color",                              default: "#fff",                                                                               null: false
    t.string   "btn_info_bg",                                 default: "$brand-info",                                                                        null: false
    t.string   "btn_info_border",                             default: "darken($btn-info-bg, 5%)",                                                           null: false
    t.string   "btn_warning_color",                           default: "#fff",                                                                               null: false
    t.string   "btn_warning_bg",                              default: "$brand-warning",                                                                     null: false
    t.string   "btn_warning_border",                          default: "darken($btn-warning-bg, 5%)",                                                        null: false
    t.string   "btn_danger_color",                            default: "#fff",                                                                               null: false
    t.string   "btn_danger_bg",                               default: "$brand-danger",                                                                      null: false
    t.string   "btn_danger_border",                           default: "darken($btn-danger-bg, 5%)",                                                         null: false
    t.string   "btn_link_disabled_color",                     default: "$gray-light",                                                                        null: false
    t.string   "input_bg",                                    default: "#fff",                                                                               null: false
    t.string   "input_bg_disabled",                           default: "$gray-lighter",                                                                      null: false
    t.string   "input_color",                                 default: "$gray",                                                                              null: false
    t.string   "input_border",                                default: "#ccc",                                                                               null: false
    t.string   "input_border_radius",                         default: "$border-radius-base",                                                                null: false
    t.string   "input_border_radius_large",                   default: "$border-radius-large",                                                               null: false
    t.string   "input_border_radius_small",                   default: "$border-radius-small",                                                               null: false
    t.string   "input_border_focus",                          default: "#66afe9",                                                                            null: false
    t.string   "input_color_placeholder",                     default: "#999",                                                                               null: false
    t.string   "input_height_base",                           default: "($line-height-computed + ($padding-base-vertical * 2) + 2)",                         null: false
    t.string   "input_height_large",                          default: "(ceil($font-size-large * $line-height-large) + ($padding-large-vertical * 2) + 2)",  null: false
    t.string   "input_height_small",                          default: "(floor($font-size-small * $line-height-small) + ($padding-small-vertical * 2) + 2)", null: false
    t.string   "legend_color",                                default: "$gray-dark",                                                                         null: false
    t.string   "legend_border_color",                         default: "#e5e5e5",                                                                            null: false
    t.string   "input_group_addon_bg",                        default: "$gray-lighter",                                                                      null: false
    t.string   "input_group_addon_border_color",              default: "$input-border",                                                                      null: false
    t.string   "cursor_disabled",                             default: "not-allowed",                                                                        null: false
    t.string   "dropdown_bg",                                 default: "#fff",                                                                               null: false
    t.string   "dropdown_border",                             default: "rgba(0,0,0,.15)",                                                                    null: false
    t.string   "dropdown_fallback_border",                    default: "#ccc",                                                                               null: false
    t.string   "dropdown_divider_bg",                         default: "#e5e5e5",                                                                            null: false
    t.string   "dropdown_link_color",                         default: "$gray-dark",                                                                         null: false
    t.string   "dropdown_link_hover_color",                   default: "darken($gray-dark, 5%)",                                                             null: false
    t.string   "dropdown_link_hover_bg",                      default: "#f5f5f5",                                                                            null: false
    t.string   "dropdown_link_active_color",                  default: "$component-active-color",                                                            null: false
    t.string   "dropdown_link_active_bg",                     default: "$component-active-bg",                                                               null: false
    t.string   "dropdown_link_disabled_color",                default: "$gray-light",                                                                        null: false
    t.string   "dropdown_header_color",                       default: "$gray-light",                                                                        null: false
    t.string   "dropdown_caret_color",                        default: "#000",                                                                               null: false
    t.string   "zindex_navbar",                               default: "1000",                                                                               null: false
    t.string   "zindex_dropdown",                             default: "1000",                                                                               null: false
    t.string   "zindex_popover",                              default: "1060",                                                                               null: false
    t.string   "zindex_tooltip",                              default: "1070",                                                                               null: false
    t.string   "zindex_navbar_fixed",                         default: "1030",                                                                               null: false
    t.string   "zindex_modal",                                default: "1040",                                                                               null: false
    t.string   "screen_xs",                                   default: "480px",                                                                              null: false
    t.string   "screen_xs_min",                               default: "$screen-xs",                                                                         null: false
    t.string   "screen_phone",                                default: "$screen-xs-min",                                                                     null: false
    t.string   "screen_sm",                                   default: "768px",                                                                              null: false
    t.string   "screen_sm_min",                               default: "$screen-sm",                                                                         null: false
    t.string   "screen_tablet",                               default: "$screen-sm-min",                                                                     null: false
    t.string   "screen_md",                                   default: "992px",                                                                              null: false
    t.string   "screen_md_min",                               default: "$screen-md",                                                                         null: false
    t.string   "screen_desktop",                              default: "$screen-md-min",                                                                     null: false
    t.string   "screen_lg",                                   default: "1200px",                                                                             null: false
    t.string   "screen_lg_min",                               default: "$screen-lg",                                                                         null: false
    t.string   "screen_lg_desktop",                           default: "$screen-lg-min",                                                                     null: false
    t.string   "screen_xs_max",                               default: "($screen-sm-min - 1)",                                                               null: false
    t.string   "screen_sm_max",                               default: "($screen-md-min - 1)",                                                               null: false
    t.string   "screen_md_max",                               default: "($screen-lg-min - 1)",                                                               null: false
    t.string   "grid_columns",                                default: "12",                                                                                 null: false
    t.string   "grid_gutter_width",                           default: "30px",                                                                               null: false
    t.string   "grid_float_breakpoint",                       default: "$screen-sm-min",                                                                     null: false
    t.string   "grid_float_breakpoint_max",                   default: "($grid-float-breakpoint - 1)",                                                       null: false
    t.string   "container_tablet",                            default: "(720px + $grid-gutter-width)",                                                       null: false
    t.string   "container_sm",                                default: "$container-tablet",                                                                  null: false
    t.string   "container_desktop",                           default: "(940px + $grid-gutter-width)",                                                       null: false
    t.string   "container_md",                                default: "$container-desktop",                                                                 null: false
    t.string   "container_large_desktop",                     default: "(1140px + $grid-gutter-width)",                                                      null: false
    t.string   "container_lg",                                default: "$container-large-desktop",                                                           null: false
    t.string   "navbar_height",                               default: "50px",                                                                               null: false
    t.string   "navbar_margin_bottom",                        default: "$line-height-computed",                                                              null: false
    t.string   "navbar_border_radius",                        default: "$border-radius-base",                                                                null: false
    t.string   "navbar_padding_horizontal",                   default: "floor(($grid-gutter-width / 2))",                                                    null: false
    t.string   "navbar_padding_vertical",                     default: "(($navbar-height - $line-height-computed) / 2)",                                     null: false
    t.string   "navbar_collapse_max_height",                  default: "340px",                                                                              null: false
    t.string   "navbar_default_color",                        default: "#777",                                                                               null: false
    t.string   "navbar_default_bg",                           default: "#f8f8f8",                                                                            null: false
    t.string   "navbar_default_border",                       default: "darken($navbar-default-bg, 6.5%)",                                                   null: false
    t.string   "navbar_default_link_color",                   default: "#777",                                                                               null: false
    t.string   "navbar_default_link_hover_color",             default: "#333",                                                                               null: false
    t.string   "navbar_default_link_hover_bg",                default: "transparent",                                                                        null: false
    t.string   "navbar_default_link_active_color",            default: "#555",                                                                               null: false
    t.string   "navbar_default_link_active_bg",               default: "darken($navbar-default-bg, 6.5%)",                                                   null: false
    t.string   "navbar_default_link_disabled_color",          default: "#ccc",                                                                               null: false
    t.string   "navbar_default_link_disabled_bg",             default: "transparent",                                                                        null: false
    t.string   "navbar_default_brand_color",                  default: "$navbar-default-link-color",                                                         null: false
    t.string   "navbar_default_brand_hover_color",            default: "darken($navbar-default-brand-color, 10%)",                                           null: false
    t.string   "navbar_default_brand_hover_bg",               default: "transparent",                                                                        null: false
    t.string   "navbar_default_toggle_hover_bg",              default: "#ddd",                                                                               null: false
    t.string   "navbar_default_toggle_icon_bar_bg",           default: "#888",                                                                               null: false
    t.string   "navbar_default_toggle_border_color",          default: "#ddd",                                                                               null: false
    t.string   "navbar_inverse_color",                        default: "lighten($gray-light, 15%)",                                                          null: false
    t.string   "navbar_inverse_bg",                           default: "#222",                                                                               null: false
    t.string   "navbar_inverse_border",                       default: "darken($navbar-inverse-bg, 10%)",                                                    null: false
    t.string   "navbar_inverse_link_color",                   default: "lighten($gray-light, 15%)",                                                          null: false
    t.string   "navbar_inverse_link_hover_color",             default: "#fff",                                                                               null: false
    t.string   "navbar_inverse_link_hover_bg",                default: "transparent",                                                                        null: false
    t.string   "navbar_inverse_link_active_color",            default: "$navbar-inverse-link-hover-color",                                                   null: false
    t.string   "navbar_inverse_link_active_bg",               default: "darken($navbar-inverse-bg, 10%)",                                                    null: false
    t.string   "navbar_inverse_link_disabled_color",          default: "#444",                                                                               null: false
    t.string   "navbar_inverse_link_disabled_bg",             default: "transparent",                                                                        null: false
    t.string   "navbar_inverse_brand_color",                  default: "$navbar-inverse-link-color",                                                         null: false
    t.string   "navbar_inverse_brand_hover_color",            default: "#fff",                                                                               null: false
    t.string   "navbar_inverse_brand_hover_bg",               default: "transparent",                                                                        null: false
    t.string   "navbar_inverse_toggle_hover_bg",              default: "#333",                                                                               null: false
    t.string   "navbar_inverse_toggle_icon_bar_bg",           default: "#fff",                                                                               null: false
    t.string   "navbar_inverse_toggle_border_color",          default: "#333",                                                                               null: false
    t.string   "nav_link_padding",                            default: "10px 15px",                                                                          null: false
    t.string   "nav_link_hover_bg",                           default: "$gray-lighter",                                                                      null: false
    t.string   "nav_disabled_link_color",                     default: "$gray-light",                                                                        null: false
    t.string   "nav_disabled_link_hover_color",               default: "$gray-light",                                                                        null: false
    t.string   "nav_tabs_border_color",                       default: "#ddd",                                                                               null: false
    t.string   "nav_tabs_link_hover_border_color",            default: "$gray-lighter",                                                                      null: false
    t.string   "nav_tabs_active_link_hover_bg",               default: "$body-bg",                                                                           null: false
    t.string   "nav_tabs_active_link_hover_color",            default: "$gray",                                                                              null: false
    t.string   "nav_tabs_active_link_hover_border_color",     default: "#ddd",                                                                               null: false
    t.string   "nav_tabs_justified_link_border_color",        default: "#ddd",                                                                               null: false
    t.string   "nav_tabs_justified_active_link_border_color", default: "$body-bg",                                                                           null: false
    t.string   "nav_pills_border_radius",                     default: "$border-radius-base",                                                                null: false
    t.string   "nav_pills_active_link_hover_bg",              default: "$component-active-bg",                                                               null: false
    t.string   "nav_pills_active_link_hover_color",           default: "$component-active-color",                                                            null: false
    t.string   "pagination_color",                            default: "$link-color",                                                                        null: false
    t.string   "pagination_bg",                               default: "#fff",                                                                               null: false
    t.string   "pagination_border",                           default: "#ddd",                                                                               null: false
    t.string   "pagination_hover_color",                      default: "$link-hover-color",                                                                  null: false
    t.string   "pagination_hover_bg",                         default: "$gray-lighter",                                                                      null: false
    t.string   "pagination_hover_border",                     default: "#ddd",                                                                               null: false
    t.string   "pagination_active_color",                     default: "#fff",                                                                               null: false
    t.string   "pagination_active_bg",                        default: "$brand-primary",                                                                     null: false
    t.string   "pagination_active_border",                    default: "$brand-primary",                                                                     null: false
    t.string   "pagination_disabled_color",                   default: "$gray-light",                                                                        null: false
    t.string   "pagination_disabled_bg",                      default: "#fff",                                                                               null: false
    t.string   "pagination_disabled_border",                  default: "#ddd",                                                                               null: false
    t.string   "pager_bg",                                    default: "$pagination-bg",                                                                     null: false
    t.string   "pager_border",                                default: "$pagination-border",                                                                 null: false
    t.string   "pager_border_radius",                         default: "15px",                                                                               null: false
    t.string   "pager_hover_bg",                              default: "$pagination-hover-bg",                                                               null: false
    t.string   "pager_active_bg",                             default: "$pagination-active-bg",                                                              null: false
    t.string   "pager_active_color",                          default: "$pagination-active-color",                                                           null: false
    t.string   "pager_disabled_color",                        default: "$pagination-disabled-color",                                                         null: false
    t.string   "jumbotron_padding",                           default: "30px",                                                                               null: false
    t.string   "jumbotron_color",                             default: "inherit",                                                                            null: false
    t.string   "jumbotron_bg",                                default: "$gray-lighter",                                                                      null: false
    t.string   "jumbotron_heading_color",                     default: "inherit",                                                                            null: false
    t.string   "jumbotron_font_size",                         default: "ceil(($font-size-base * 1.5))",                                                      null: false
    t.string   "state_success_text",                          default: "#3c763d",                                                                            null: false
    t.string   "state_success_bg",                            default: "#dff0d8",                                                                            null: false
    t.string   "state_success_border",                        default: "darken(adjust-hue($state-success-bg, -10), 5%)",                                     null: false
    t.string   "state_info_text",                             default: "#31708f",                                                                            null: false
    t.string   "state_info_bg",                               default: "#d9edf7",                                                                            null: false
    t.string   "state_info_border",                           default: "darken(adjust-hue($state-info-bg, -10), 7%)",                                        null: false
    t.string   "state_warning_text",                          default: "#8a6d3b",                                                                            null: false
    t.string   "state_warning_bg",                            default: "#fcf8e3",                                                                            null: false
    t.string   "state_warning_border",                        default: "darken(adjust-hue($state-warning-bg, -10), 5%)",                                     null: false
    t.string   "state_danger_text",                           default: "#a94442",                                                                            null: false
    t.string   "state_danger_bg",                             default: "#f2dede",                                                                            null: false
    t.string   "state_danger_border",                         default: "darken(adjust-hue($state-danger-bg, -10), 5%)",                                      null: false
    t.string   "tooltip_max_width",                           default: "200px",                                                                              null: false
    t.string   "tooltip_color",                               default: "#fff",                                                                               null: false
    t.string   "tooltip_bg",                                  default: "#000",                                                                               null: false
    t.string   "tooltip_opacity",                             default: ".9",                                                                                 null: false
    t.string   "tooltip_arrow_width",                         default: "5px",                                                                                null: false
    t.string   "tooltip_arrow_color",                         default: "$tooltip-bg",                                                                        null: false
    t.string   "popover_bg",                                  default: "#fff",                                                                               null: false
    t.string   "popover_max_width",                           default: "276px",                                                                              null: false
    t.string   "popover_border_color",                        default: "rgba(0,0,0,.2)",                                                                     null: false
    t.string   "popover_fallback_border_color",               default: "#ccc",                                                                               null: false
    t.string   "popover_title_bg",                            default: "darken($popover-bg, 3%)",                                                            null: false
    t.string   "popover_arrow_width",                         default: "10px",                                                                               null: false
    t.string   "popover_arrow_color",                         default: "$popover-bg",                                                                        null: false
    t.string   "popover_arrow_outer_width",                   default: "($popover-arrow-width + 1)",                                                         null: false
    t.string   "popover_arrow_outer_color",                   default: "fade_in($popover-border-color, 0.05)",                                               null: false
    t.string   "popover_arrow_outer_fallback_color",          default: "darken($popover-fallback-border-color, 20%)",                                        null: false
    t.string   "label_default_bg",                            default: "$gray-light",                                                                        null: false
    t.string   "label_primary_bg",                            default: "$brand-primary",                                                                     null: false
    t.string   "label_success_bg",                            default: "$brand-success",                                                                     null: false
    t.string   "label_info_bg",                               default: "$brand-info",                                                                        null: false
    t.string   "label_warning_bg",                            default: "$brand-warning",                                                                     null: false
    t.string   "label_danger_bg",                             default: "$brand-danger",                                                                      null: false
    t.string   "label_color",                                 default: "#fff",                                                                               null: false
    t.string   "label_link_hover_color",                      default: "#fff",                                                                               null: false
    t.string   "modal_inner_padding",                         default: "15px",                                                                               null: false
    t.string   "modal_title_padding",                         default: "15px",                                                                               null: false
    t.string   "modal_title_line_height",                     default: "$line-height-base",                                                                  null: false
    t.string   "modal_content_bg",                            default: "#fff",                                                                               null: false
    t.string   "modal_content_border_color",                  default: "rgba(0,0,0,.2)",                                                                     null: false
    t.string   "modal_content_fallback_border_color",         default: "#999",                                                                               null: false
    t.string   "modal_backdrop_bg",                           default: "#000",                                                                               null: false
    t.string   "modal_backdrop_opacity",                      default: ".5",                                                                                 null: false
    t.string   "modal_header_border_color",                   default: "#e5e5e5",                                                                            null: false
    t.string   "modal_footer_border_color",                   default: "$modal-header-border-color",                                                         null: false
    t.string   "modal_lg",                                    default: "900px",                                                                              null: false
    t.string   "modal_md",                                    default: "600px",                                                                              null: false
    t.string   "modal_sm",                                    default: "300px",                                                                              null: false
    t.string   "alert_padding",                               default: "15px",                                                                               null: false
    t.string   "alert_border_radius",                         default: "$border-radius-base",                                                                null: false
    t.string   "alert_link_font_weight",                      default: "bold",                                                                               null: false
    t.string   "alert_success_bg",                            default: "$state-success-bg",                                                                  null: false
    t.string   "alert_success_text",                          default: "$state-success-text",                                                                null: false
    t.string   "alert_success_border",                        default: "$state-success-border",                                                              null: false
    t.string   "alert_info_bg",                               default: "$state-info-bg",                                                                     null: false
    t.string   "alert_info_text",                             default: "$state-info-text",                                                                   null: false
    t.string   "alert_info_border",                           default: "$state-info-border",                                                                 null: false
    t.string   "alert_warning_bg",                            default: "$state-warning-bg",                                                                  null: false
    t.string   "alert_warning_text",                          default: "$state-warning-text",                                                                null: false
    t.string   "alert_warning_border",                        default: "$state-warning-border",                                                              null: false
    t.string   "alert_danger_bg",                             default: "$state-danger-bg",                                                                   null: false
    t.string   "alert_danger_text",                           default: "$state-danger-text",                                                                 null: false
    t.string   "alert_danger_border",                         default: "$state-danger-border",                                                               null: false
    t.string   "progress_bg",                                 default: "#f5f5f5",                                                                            null: false
    t.string   "progress_bar_color",                          default: "#fff",                                                                               null: false
    t.string   "progress_border_radius",                      default: "$border-radius-base",                                                                null: false
    t.string   "progress_bar_bg",                             default: "$brand-primary",                                                                     null: false
    t.string   "progress_bar_success_bg",                     default: "$brand-success",                                                                     null: false
    t.string   "progress_bar_warning_bg",                     default: "$brand-warning",                                                                     null: false
    t.string   "progress_bar_danger_bg",                      default: "$brand-danger",                                                                      null: false
    t.string   "progress_bar_info_bg",                        default: "$brand-info",                                                                        null: false
    t.string   "list_group_bg",                               default: "#fff",                                                                               null: false
    t.string   "list_group_border",                           default: "#ddd",                                                                               null: false
    t.string   "list_group_border_radius",                    default: "$border-radius-base",                                                                null: false
    t.string   "list_group_hover_bg",                         default: "#f5f5f5",                                                                            null: false
    t.string   "list_group_active_color",                     default: "$component-active-color",                                                            null: false
    t.string   "list_group_active_bg",                        default: "$component-active-bg",                                                               null: false
    t.string   "list_group_active_border",                    default: "$list-group-active-bg",                                                              null: false
    t.string   "list_group_active_text_color",                default: "lighten($list-group-active-bg, 40%)",                                                null: false
    t.string   "list_group_disabled_color",                   default: "$gray-light",                                                                        null: false
    t.string   "list_group_disabled_bg",                      default: "$gray-lighter",                                                                      null: false
    t.string   "list_group_disabled_text_color",              default: "$list-group-disabled-color",                                                         null: false
    t.string   "list_group_link_color",                       default: "#555",                                                                               null: false
    t.string   "list_group_link_hover_color",                 default: "$list-group-link-color",                                                             null: false
    t.string   "list_group_link_heading_color",               default: "#333",                                                                               null: false
    t.string   "panel_bg",                                    default: "#fff",                                                                               null: false
    t.string   "panel_body_padding",                          default: "15px",                                                                               null: false
    t.string   "panel_heading_padding",                       default: "10px 15px",                                                                          null: false
    t.string   "panel_footer_padding",                        default: "$panel-heading-padding",                                                             null: false
    t.string   "panel_border_radius",                         default: "$border-radius-base",                                                                null: false
    t.string   "panel_inner_border",                          default: "#ddd",                                                                               null: false
    t.string   "panel_footer_bg",                             default: "#f5f5f5",                                                                            null: false
    t.string   "panel_default_text",                          default: "$gray-dark",                                                                         null: false
    t.string   "panel_default_border",                        default: "#ddd",                                                                               null: false
    t.string   "panel_default_heading_bg",                    default: "#f5f5f5",                                                                            null: false
    t.string   "panel_primary_text",                          default: "#fff",                                                                               null: false
    t.string   "panel_primary_border",                        default: "$brand-primary",                                                                     null: false
    t.string   "panel_primary_heading_bg",                    default: "$brand-primary",                                                                     null: false
    t.string   "panel_success_text",                          default: "$state-success-text",                                                                null: false
    t.string   "panel_success_border",                        default: "$state-success-border",                                                              null: false
    t.string   "panel_success_heading_bg",                    default: "$state-success-bg",                                                                  null: false
    t.string   "panel_info_text",                             default: "$state-info-text",                                                                   null: false
    t.string   "panel_info_border",                           default: "$state-info-border",                                                                 null: false
    t.string   "panel_info_heading_bg",                       default: "$state-info-bg",                                                                     null: false
    t.string   "panel_warning_text",                          default: "$state-warning-text",                                                                null: false
    t.string   "panel_warning_border",                        default: "$state-warning-border",                                                              null: false
    t.string   "panel_warning_heading_bg",                    default: "$state-warning-bg",                                                                  null: false
    t.string   "panel_danger_text",                           default: "$state-danger-text",                                                                 null: false
    t.string   "panel_danger_border",                         default: "$state-danger-border",                                                               null: false
    t.string   "panel_danger_heading_bg",                     default: "$state-danger-bg",                                                                   null: false
    t.string   "thumbnail_padding",                           default: "4px",                                                                                null: false
    t.string   "thumbnail_bg",                                default: "$body-bg",                                                                           null: false
    t.string   "thumbnail_border",                            default: "#ddd",                                                                               null: false
    t.string   "thumbnail_border_radius",                     default: "$border-radius-base",                                                                null: false
    t.string   "thumbnail_caption_color",                     default: "$text-color",                                                                        null: false
    t.string   "thumbnail_caption_padding",                   default: "9px",                                                                                null: false
    t.string   "well_bg",                                     default: "#f5f5f5",                                                                            null: false
    t.string   "well_border",                                 default: "darken($well-bg, 7%)",                                                               null: false
    t.string   "badge_color",                                 default: "#fff",                                                                               null: false
    t.string   "badge_link_hover_color",                      default: "#fff",                                                                               null: false
    t.string   "badge_bg",                                    default: "$gray-light",                                                                        null: false
    t.string   "badge_active_color",                          default: "$link-color",                                                                        null: false
    t.string   "badge_active_bg",                             default: "#fff",                                                                               null: false
    t.string   "badge_font_weight",                           default: "bold",                                                                               null: false
    t.string   "badge_line_height",                           default: "1",                                                                                  null: false
    t.string   "badge_border_radius",                         default: "10px",                                                                               null: false
    t.string   "breadcrumb_padding_vertical",                 default: "8px",                                                                                null: false
    t.string   "breadcrumb_padding_horizontal",               default: "15px",                                                                               null: false
    t.string   "breadcrumb_bg",                               default: "#f5f5f5",                                                                            null: false
    t.string   "breadcrumb_color",                            default: "#ccc",                                                                               null: false
    t.string   "breadcrumb_active_color",                     default: "$gray-light",                                                                        null: false
    t.string   "breadcrumb_separator",                        default: "\"/\"",                                                                              null: false
    t.string   "carousel_text_shadow",                        default: "0 1px 2px rgba(0,0,0,.6)",                                                           null: false
    t.string   "carousel_control_color",                      default: "#fff",                                                                               null: false
    t.string   "carousel_control_width",                      default: "15%",                                                                                null: false
    t.string   "carousel_control_opacity",                    default: ".5",                                                                                 null: false
    t.string   "carousel_control_font_size",                  default: "20px",                                                                               null: false
    t.string   "carousel_indicator_active_bg",                default: "#fff",                                                                               null: false
    t.string   "carousel_indicator_border_color",             default: "#fff",                                                                               null: false
    t.string   "carousel_caption_color",                      default: "#fff",                                                                               null: false
    t.string   "close_font_weight",                           default: "bold",                                                                               null: false
    t.string   "close_color",                                 default: "#000",                                                                               null: false
    t.string   "close_text_shadow",                           default: "0 1px 0 #fff",                                                                       null: false
    t.string   "code_color",                                  default: "#c7254e",                                                                            null: false
    t.string   "code_bg",                                     default: "#f9f2f4",                                                                            null: false
    t.string   "kbd_color",                                   default: "#fff",                                                                               null: false
    t.string   "kbd_bg",                                      default: "#333",                                                                               null: false
    t.string   "pre_bg",                                      default: "#f5f5f5",                                                                            null: false
    t.string   "pre_color",                                   default: "$gray-dark",                                                                         null: false
    t.string   "pre_border_color",                            default: "#ccc",                                                                               null: false
    t.string   "pre_scrollable_max_height",                   default: "340px",                                                                              null: false
    t.string   "component_offset_horizontal",                 default: "180px",                                                                              null: false
    t.string   "text_muted",                                  default: "$gray-light",                                                                        null: false
    t.string   "abbr_border_color",                           default: "$gray-light",                                                                        null: false
    t.string   "headings_small_color",                        default: "$gray-light",                                                                        null: false
    t.string   "blockquote_small_color",                      default: "$gray-light",                                                                        null: false
    t.string   "blockquote_font_size",                        default: "($font-size-base * 1.25)",                                                           null: false
    t.string   "blockquote_border_color",                     default: "$gray-lighter",                                                                      null: false
    t.string   "page_header_border_color",                    default: "$gray-lighter",                                                                      null: false
    t.string   "dl_horizontal_offset",                        default: "$component-offset-horizontal",                                                       null: false
    t.string   "hr_border",                                   default: "$gray-lighter",                                                                      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "user_stylesheet"
    t.string   "fingerprint"
  end

  create_table "templates", force: true do |t|
    t.string   "area"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_templates", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "area"
    t.text     "content"
    t.string   "name"
  end

  create_table "userroles", force: true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "name"
    t.string   "bio"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  default: false
    t.string   "slug"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
    t.string   "role"
    t.boolean  "show_twitter"
    t.boolean  "show_email"
    t.string   "avatar"
    t.boolean  "hide_on_bio_page"
    t.string   "localmedia"
    t.string   "ftpmedia"
    t.string   "awsmedia"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count"
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true

end
