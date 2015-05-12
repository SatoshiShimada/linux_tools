#/bin/sh

op=""

if [ "${1}" == "-f" ] ; then
	op="-f"
	srcfile=$2
	distfile=$3
else
	srcfile=$1
	distfile=$2
fi

if [ "${srcfile}" == "" -o "${distfile}" == "" ] ; then
	echo "Usage: mv scrfile dstfile"
fi

if [ -f "${distfile}" ] ; then
	echo "move distnation file is exist!"
	echo -n "Update ${distfile}? Yes/no >"
	read buf

	if [ "$buf" == "Yes" -o "$buf" == "yes" -o "$buf" == "y" -o "$buf" == "Y" ] ; then
		mv "$op" "$srcfile" "$distfile"
	fi
fi

mv "$op" "$srcfile" "$distfile"
