#!/bin/bash
# Compile awkward ly files (eg. landscape) to ps

# Check .ly file has been specified
if [ ! -r "$1" ] ; then
    echo "Usage: $0 sourcefile.ly"
    exit 1
fi

name="`echo \"$1\" |sed 's/\.ly$//'`"

[ ! "$name.ly" = "$1" ] && echo "Error: name must end .ly" && exit 1

sed -e 's/set-default-paper-size "letter"/set-default-paper-size "a4"/g' < "$name".ly > "$name"-a4.ly
sed -e 's/set-default-paper-size "a4"/set-default-paper-size "letter"/g' < "$name".ly > "$name"-let.ly

mutopia-a4-only.sh "$name"-a4.ly
mutopia-let-only.sh "$name"-let.ly

rm -f "$name"-a4.ly "$name"-let.ly
