#/bin/sh

# Convert NewLine to '\r\n' (dos) from '\n' (linux)

if ${2} == ${3}; then
	echo "bad file name"
	exit 0

sed -e 's/\n/\r\n/g' < ${1} > ${2}
