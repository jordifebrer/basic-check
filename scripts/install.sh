#!/bin/sh

# full path of the actual directory (scripts directory)
DIR="$( cd "$( dirname "$0" )" && pwd )"

# adds the script folder to the PATH
/bin/cat << EOF >> ~/.bashrc
export PATH=$PATH:$DIR
EOF

# type . ~/.bashrc from your command line and then you will able to run the scripts from everywhere
