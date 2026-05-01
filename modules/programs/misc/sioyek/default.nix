{ pkgs, ... }:
{
  home-manager.sharedModules = [
    (
      { ... }:
      {
        programs.sioyek = {
          enable = true;
          config = {
            background_color    = "0.12 0.12 0.12";
            dark_mode_background_color = "0.12 0.12 0.12";
            dark_mode_contrast  = "0.8";
            default_dark_mode   = "1";
            ui_font_size        = "20";
            font_size           = "20";
            show_scrollbar      = "1";
            should_load_tutorial_when_no_other_file = "0";
            scroll_view_sensitivity = "1.0";
            custom_highlight_color_a = "0.9 0.7 0.1 0.4";
            case_sensitive_search = "0";
          };
          bindings = {
            "screen_up"         = "k";
            "screen_down"       = "j";
            "next_page"         = "J";
            "prev_page"         = "K";
            "goto_beginning"    = "gg";
            "goto_end"          = "G";
            "zoom_in"           = "+";
            "zoom_out"          = "-";
            "fit_to_page_width" = "W";
            "fit_to_page_height" = "H";
            "open_bookmark"     = "B";
            "add_bookmark"      = "b";
            "search"            = "/";
            "next_search_match" = "n";
            "prev_search_match" = "N";
            "toggle_dark_mode"  = "D";
            "open_link"         = "f";
            "copy"              = "<C-c>";
            "goto_toc"          = "<C-t>";
            "goto_mark"          = "M";
          };
        };
      }
    )
  ];
}
