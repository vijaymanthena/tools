# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# RLWRAP Aliases
alias rlrman='rlwrap -i -D 2 -s 1000 rman'
alias rldgb='rlwrap -i -D 2 -s 500 dgmgrl'
alias rlggsci='rlwrap -D 2 ggsci'
alias sysdba='rlwrap -i -D 1 -s 5000 sqlplus "/as sysdba"'
alias sysasm='rlwrap -i -D 1 -s 5000 sqlplus "/as sysasm"'
alias rlsp='rlwrap -i -D 1 -s 5000 sqlplus'
alias rlasm='rlwrap -i -D 1 -s 1000 asmcmd'
