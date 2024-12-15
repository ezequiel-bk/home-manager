let 
    keybinds = ''
    bind h split-window -h
    bind v split-window -v
    bind q kill-window
    bind l list-windows
    bind L list-sessions
    bind Escape kill-session 
    '';

    sessions = ''
    '';
in
{
    programs.tmux = {
        enable = true;
        terminal = "tmux-256color";

        prefix = "C-space";
        extraConfig = keybinds + sessions;
    };
}