#!/bin/bash
#####################################################################
#                                                                   #
# script: RunDeleteArchive.sh                                       #
# Usage: RunDeleteArchive.sh <db_sid> <Retention hours>             #
# Author: Vijay Manthena                                            #
#                                                                   #
#####################################################################

function showUsage {
echo "$( basename ${0} ) - Deletes archive logs of a database"
echo "$( basename ${0} ) <ORACLE_SID> [<hours retained>]"
echo "The first parameter is ORACLE_SID and is mandatory."
echo "The second parameter value is retention hours for archive logs and is optional."
echo "The archivelogs older than the retention hours will be deleted. Ex: 4 48 etc"
echo "The second parameter value must be numeric. If not supplied, the second parameter will default to 24 hours"
echo " "
echo "Example usage - $( basename ${0} ) TRPROD1 12"
exit 1
}

function setOraenv {
    ORACLE_SID=${1}
    ORAENV_ASK=NO
    . /usr/local/bin/oraenv
    if [[ $? != 0 ]]; then echo "oraenv call has failed. Please check the ORACLE_SID ${1}"; exit 1; fi
    unset ORAENV_ASK
}

if [[ ${#} -lt 1 || -z ${1} ]]; then showUsage; fi
if [[ ! ${2:-24} =~ ^[0-9]+$ ]]; then showUsage; fi


dbSID=${1}
archlogHours=${2:-24}
dt=`date "+%Y%m%d%H%M"`

${ORACLE_HOME}/bin/rman target / msglog=/tmp/RunDeleteArchive_${dbSID}_${dt}.log << EOF
run
{
    delete noprompt archivelog all completed before 'sysdate - ${archlogHours}/24';
#    crosscheck archivelog all;
}
EOF
