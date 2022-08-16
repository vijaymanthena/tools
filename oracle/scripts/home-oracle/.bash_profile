# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
SQLPATH=$HOME/sql
ORACLE_PATH=$SQLPATH
export SQLPATH
export ORACLE_PATH

export ORACLE_SID=DUMMY19
ORAENV_ASK=NO; . /usr/local/bin/oraenv; unset ORAENV_ASK

