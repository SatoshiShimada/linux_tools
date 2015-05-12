#/bin/sh

op=""

if [ "${1}" == "-r" ] ; then
	op="-r"
	srcfile=${2}
	distfile=${3}
else
	srcfile=${1}
	distfile=${2}
fi

if [ "${srcfile}" == "" -o "${distfile}" == "" ] ; then
	echo "Usage: cp scrfile dstfile"
fi

if [ -f "${distfile}" ] ; then # file is exist
	echo "copy distnation file is exist!"
	echo -n "Update ${distfile}? Yes/no >"
	read buf

	if [ "${buf}" == "Yes" -o "${buf}" == "yes" -o "${buf}" == "Y" -o "${buf}" == "y" ] ; then
		cp "${op}" "${srcfile}" "${distfile}"
	fi
else
	cp "${op}" "${srcfile}" "${distfile}"
fi
