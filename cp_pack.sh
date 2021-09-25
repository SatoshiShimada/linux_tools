#/bin/sh

op = ""

copy() {
if [[ -n ${op} ]];
	then cp "${op}" "${srcfile}" "${distfile}";
	else cp "${srcfile}" "${distfile}";
fi
}

if [[ ${1} == "-r" ]] ; then
	op="-r"
	shift
fi

srcfile=${1}
distfile=${2}

if [[ ${srcfile} == "" ]] || [[ ${distfile} == "" ]] ; then
	echo "Usage: cp scrfile dstfile"
	exit
fi

if [[ -f ${distfile}/${srcfile} ]] ; then # file does exist
	echo "Copy destination file does exist!"
	echo -n "Update ${distfile}? Yes/no >"
	read buf

	if [[ ${buf,,} =~ ^y(es)?$ ]] ; then
		copy
	fi
else
	copy
fi
