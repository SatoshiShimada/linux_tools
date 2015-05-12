#/bin/sh

if [ "${1}" == "" -o "R{2}" == "" ] ; then
	echo "Usage: cp scrfile dstfile"
fi

if [ -f "${2}" ] ; then
	echo "copy distnation file is exist!"
	echo -n "Update ${2}? Yes/no >"
	read buf

	if [ "$buf" == "Yes" -o "$buf" == "yes" -o "$buf" == "y" -o "$buf" == "Y" ] ; then
		cp "$1" "$2"
	fi
fi

cp "$1" "$2"
