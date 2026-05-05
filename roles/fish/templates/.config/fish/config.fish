set -gx TERM xterm-256color

# Use 24-bit True Color, Once True Color is active, you can use hex codes
# directly in the shell for syntax highlighting or custom prompts.
set -g fish_term24bit 1

# set -g __fish_git_prompt_show_informative_status 1

if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status is-interactive; and set -q SSH_TTY; and not set -q TMUX
    fastfetch --color blue
end

# Check for pending reboots on shell start
function fish_greeting
    if test -f /var/run/reboot-required
        printf "\n"
        set_color red --bold
        # \uF0453 is the Nerd Font hex for 'rotate-right' or 'sync'
        echo " *** 󰑓 REBOOT REQUIRED ***"
        set_color normal

        printf "\n"
        echo " Packages requiring a reboot:"
        set_color yellow
        # Adding a little 'package' icon 󰏗 before each item
        cat /var/run/reboot-required.pkgs | sed 's/^/  󰏗 /'
        set_color normal
        echo "" # Add a spacer line
    end
end
