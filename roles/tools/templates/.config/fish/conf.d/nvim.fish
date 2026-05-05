################################################################################
# Config for editing with nvim
################################################################################
# The basic fallback for terminal-based tools.
set -gx EDITOR nvim
# Used by more advanced tools that expect a full-screen terminal editor.
set -gx VISUAL nvim

# Create abbreviations for nvim so it shows on the screen as nvim when typed vi
abbr -a vi nvim
abbr -a vim nvim
