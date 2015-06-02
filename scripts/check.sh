#!/bin/sh

# removes http/https
host="$( echo "$1" | sed -E 's#^https?://##' )"

# checks if a host is reachable
if ping -c 1 $host &> /dev/null
then
	echo ";-)"
else
	echo ":-("
fi
