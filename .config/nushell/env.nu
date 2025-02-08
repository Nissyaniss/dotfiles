use std/util "path add"

$env.config.buffer_editor = "subl"
$env.config.show_banner = false
$env.TRANSIENT_PROMPT_COMMAND = "❯ "
$env.STARSHIP_CONFIG = "/home/nissya/.config/starship/starship.toml"
path add "/home/nissya/.local/bin"

$env.CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense'
mkdir ~/.cache/carapace
carapace _carapace nushell | save --force ~/.cache/carapace/init.nu
zoxide init nushell | save -f ~/.zoxide.nu