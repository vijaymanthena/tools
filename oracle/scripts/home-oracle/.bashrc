# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export ORACLE_PATH=/u01/app/oracle/local/sql


if [ -f /opt/oracle/scripts/bash/bash_aliases ]; then
  . /opt/oracle/scripts/bash/bash_aliases
fi

