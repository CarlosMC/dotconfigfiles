# .zshrc by CMC

# setup zgen
export ZGEN_DIR="${ZDOTDIR:-$HOME}"/.zgen

# check if ZGEN_DIR exists, if not clone it to get installed on first time run
[[ -d "$ZGEN_DIR" ]] || git clone https://github.com/tarjoilija/zgen.git --depth=1 "$ZGEN_DIR"

# to monitor plugin changes in files automatically use ZGEN_RESET_ON_CHANGE or run `zgen reset` manually
ZGEN_RESET_ON_CHANGE=(
  ${ZDOTDIR:-$HOME}/.zshrc
)

# load zgen plugin manager
source "$ZGEN_DIR/zgen.zsh"

# if the init script doesn't exist
if ! zgen saved; then

  zgen load seletskiy/zsh-zgen-compinit-tweak
  zgen load unixorn/autoupdate-zgen

  # prezto options
  zgen prezto editor key-bindings 'emacs'
  zgen prezto '*:*' color 'yes'
  zgen prezto '*:*' case-sensitive 'no'
  zgen prezto utility safe-ops 'no'
  zgen prezto terminal auto-title 'always'
  zgen prezto syntax-highlighting color 'yes'
  zgen prezto syntax-highlighting highlighters \
                                        'main' \
                                        'brackets' \
                                        'pattern' \
                                        'line' \
                                        'cursor' \
                                        'root'

  # set prompt theme
  zgen prezto prompt theme 'powerlevel10k'
 
 # prezto and modules
  zgen prezto
   zgen prezto utility
   zgen prezto completion
   zgen prezto autosuggestions
   zgen prezto syntax-highlighting
   zgen prezto history-substring-search
   zgen prezto archive
   zgen prezto environment
   zgen prezto terminal
   zgen prezto editor
   zgen prezto history
   zgen prezto directory
   zgen prezto spectrum
   zgen prezto prompt
   zgen prezto git
   zgen prezto osx
   zgen prezto tmux
   zgen prezto fasd
   zgen prezto homebrew
   zgen prezto spectrum
   zgen prezto docker


  # load external or customs plugin script
  zgen load ael-code/zsh-colored-man-pages
  zgen load djui/alias-tips
  zgen load skx/sysadmin-util
  zgen load rtuin/zsh-case
  zgen load kutsan/zsh-system-clipboard
  zgen load le0me55i/zsh-systemd
  zgen load laggardkernel/zsh-thefuck
  zgen load coltondick/zsh-dircolors-nord

  # generate the init script from plugins above
  zgen save
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

