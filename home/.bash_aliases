alias journalctl='journalctl -a'
alias less='less -R'
alias ip='ip --color'

export BLOCKSIZE=h # human format for df

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
if [ "$color_prompt" = yes ]; then
    PS1='\A $(code=${?##0};echo ${code:+\[\e[0;31m\] ${code}\\ })${debian_chroot:+($debian_chroot)}\[\e[01;32m\]\u@\h\[\e[00m\]\[\e[01;34;7m\]\w\[\e[27m\]\[\e[00m\]'
else
    PS1='\A ${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
