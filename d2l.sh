#/bin/sh

# Convert NewLine to '\n' (linux) from '\r\n' (dos)

if [ ${1} = ${2} ] ; then
	echo "bad file name"
	exit 0
fi

sed -e 's/\r\n/\n/g' <${1} >${2}

