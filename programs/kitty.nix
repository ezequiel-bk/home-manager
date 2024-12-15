{ config, pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    package = pkgs.kitty;

    themeFile = "kanagawabones";

    shellIntegration.enableZshIntegration = true;
    settings = {
      dynamic_background_opacity = true;
      enable_audio_bell = false;
      remember_window_size = false;
      initial_window_width = 900;
      initial_window_height = 600;
      confirm_os_window_close = 0;
      window_padding_width = 5;
      font_size = 16;
      background_opacity = "1";
      symbol_map = "U+23FB-U+23FE,U+2B58,U+E200-U+E2A9,U+E0A0-U+E0A3,U+E0B0-U+E0BF,U+E0C0-U+E0C8,U+E0CC-U+E0CF,U+E0D0-U+E0D2,U+E0D4,U+E700-U+E7C5,U+F000-U+F2E0,U+2665,U+26A1,U+F400-U+F4A8,U+F67C,U+E000-U+E00A,U+F300-U+F313,U+E5FA-U+E62B Symbols Nerd Font";
      wayland_titlebar_color = "#1F1F28";
      draw_minimal_borders = "yes"; 
    };
  };
}
