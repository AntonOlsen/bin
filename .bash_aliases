#!/bin/bash
# Many of these will not work from outside my own network.

alias ll='ls -alF'
alias bwm='bwm-ng -d1 -ubits -t1000'

# Remote desktop
alias rdp='rdesktop -d innovationfirst -usvradm -g1100x900'

# VPN servers
alias vhk='ssh root@vpn-hk.innovationfirst.net'

# SYSxx
alias s0='ssh root@sys00.innovationfirst.com'
alias s1='ssh root@public.sys01.innovationfirst.net'
alias cacti='ssh root@cacti.innovationfirst.com'

alias ps1='ssh root@public.psys01.innovationfirst.net'

# Web Heads
alias w1='ssh root@public.w01.innovationfirst.net'
alias w2='ssh root@public.w02.innovationfirst.net'
alias w3='ssh root@public.w03.innovationfirst.net'
alias w4='ssh root@public.w04.innovationfirst.net'
alias w5='ssh root@public.w05.innovationfirst.net'
alias w6='ssh root@public.w06.innovationfirst.net'

# Backup Servers
alias uni1='ssh root@gv-uni01'
alias uni2='ssh root@gv-uni02'

# Dev Servers
alias pdev='ssh public.pdev01.innovationfirst.net'
alias d1='ssh public.dev01.innovationfirst.net'
alias dbd='ssh public.db-dev.innovationfirst.net'

# Office Servers
alias bs='ssh root@ifi-bs01'
alias slimer='ssh root@slimer'
alias ray='ssh root@ray'
alias nfsen='ssh root@nfsen'

# My servers
alias lr2='ssh aolsen@lr2.com'
alias lw2='ssh aolsen@w2.lr2.com'
