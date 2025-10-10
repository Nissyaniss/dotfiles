use std/util "path add"

$env.config.buffer_editor = "subl"
$env.config.show_banner = false
$env.TRANSIENT_PROMPT_COMMAND = "❯ "
$env.STARSHIP_CONFIG = "/home/nissya/.config/starship/starship.toml"
# $env.STARSHIP_CONFIG = "C:\\Users\\test\\.config\\starship\\starship.toml" #path for windows
# $env.config.shell_integration.osc133 = false # windows only
path add "/home/nissya/.local/bin" # not needed for windows
# $env.HOME = "C:\\Users\\test" # windows only

$env.CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense'
mkdir ~/.cache/carapace
carapace _carapace nushell | save --force ~/.cache/carapace/init.nu
# IF ZOXIDE BREAK UNCOMMENT THIS
# zoxide init nushell | save -f ~/.zoxide.nu # to have the cd alias
