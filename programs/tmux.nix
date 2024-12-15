let 
    keybinds = ''
    bind h split-window -h
    bind v split-window -v
    bind q kill-window
    bind w kill-pane
    bind Escape kill-session 
    bind P split-window -h \; split-window -v 
    '';
in
{
    programs.tmux = {
        enable = true;
        terminal = "tmux-256color";

        prefix = "C-space";
        extraConfig = keybinds;
    };
}
