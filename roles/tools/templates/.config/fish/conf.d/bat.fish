################################################################################
# Config for bat
################################################################################
alias cat="bat"

# Enable manpage syntax highlighting
export MANPAGER="bat -plman"

# This way, you can keep on using cp --help, but get colorized help pages.
abbr -a --position anywhere -- --help '--help | bat -plhelp'
abbr -a --position anywhere -- -h '-h | bat -plhelp'

set -gx BAT_THEME "Catppuccin-Mocha"
