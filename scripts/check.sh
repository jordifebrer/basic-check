#!/bin/sh

# removes http/https
host="$( echo "$1" | sed -E 's#^https?://##' )"

# if the port is specified does a service check otherwise checks if the host is reachable
if [[ $host == *":"* ]]
then
    # returns the HTTP response code
    curl -sL -w "%{http_code}\\n" "$host" -o /dev/null
else
    # checks if a host is reachable
    if ping -c 1 $host &> /dev/null
    then
        echo ";-)"
    else
        echo ":-( IP not reachable"
    fi
fi
