#!/bin/sh

# Convert NewLine to '\r\n' (dos) from '\n' (linux)

if [ ${1} = ${2} ] ; then
	echo "bad file name"
	exit 0
fi

sed -e 's/\n/\r\n/g' < ${1} > ${2}
