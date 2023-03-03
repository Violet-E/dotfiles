if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting ""
end
alias vim=nvim
alias pc=proxychains4
set PATH ~/.cargo/bin/ $PATH
#gpgconf --launch gpg-agent
#set -e SSH_AUTH_SOCK
#set -U -x SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh
zoxide init fish | source
set -Ux QT_IM_MODULE fcitx
set -Ux GTK_IM_MODULE fcitx
set -Ux _JAVA_AWT_WM_NONREPARENTING 1
set -Ux INPUT_METHOD fcitx



function l
    exa -lah --color-scale --group-directories-first --time-style iso -bH $argv
end

function ll
    exa -lah --color-scale --group-directories-first --time-style iso -bH $argv
end

function tree
    exa -Tlah --color-scale --group-directories-first --time-style iso -bH $argv
end
#source $HOME/.profile
#set -e GPG_TTY
#set -Ux GPG_TTY (tty)
#
#set -e SSH_AGENT_PID
#set -e SSH_AUTH_SOCK
#if test -z $gnupg_SSH_AUTH_SOCK_by
#    set gnupg_SSH_AUTH_SOCK_by 0
#end
#if test $gnupg_SSH_AUTH_SOCK_by -ne %self
#    set UID (id -u)
#    set -Ux SSH_AUTH_SOCK "/run/user/$UID/gnupg/S.gpg-agent.ssh"
#end
#gpg-connect-agent updatestartuptty /bye > /dev/null
alias agdb=aarch64-linux-gnu-gdb
if test -f "$HOME/.gpg-agent-info"
    set -x GPG_AGENT_INFO (cat "$HOME/.gpg-agent-info")
    set -x SSH_AUTH_SOCK (echo $GPG_AGENT_INFO | awk -F: '{print $2}')
end
set -U fish_user_paths /home/hayake/Documents/depot_tools $fish_user_paths
set -U XDG_CONFIG_HOME "$HOME/.config"

set -Ux DOTREPO "/home/hayake/dotfiles"
alias dotgit="git -C $DOTREPO"
alias dotsync="dotgit pull && dotgit add -A && dotgit commit && dotgit push; dotdrop install"
