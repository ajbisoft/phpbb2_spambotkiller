#!/bin/bash
# Author: Jakub Kwiatkowski <jakub@ajbisoft.pl>
#
# phpbb2_spambotkiller.sh - Simple SPAMbot killer for phpBB2 forums
#       v0.1    - Initial draft (27.02.2009)
#
# Usage:        see usage function below:
usage() {
        echo "${RELNAME##*/} - Simple SPAMbot killer for phpBB2 forums (v$RELVER)"
        echo "by jakub@ajbisoft.pl ($RELDATE)"
        echo
        echo "Usage:"
        echo " ${RELNAME##*/}"
        echo
}

# Release info
RELNAME="$0"
RELVER="0.1"
RELDATE="27.02.2009"

################################################################################

# Edit variables below
DBNAME=test_forum
DBUSER=test_forum
DBPASS=test_forum

################################################################################

# Remove users whose user_field_1 (custom profile field) equals their username
echo "DELETE FROM users WHERE user_field_1 = username" | mysql -D $DBNAME -u$DBUSER -p$DBPASS

# EOF
