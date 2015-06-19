#/bin/sh

# Convert NewLine to '\n' (linux) from '\r\n' (dos)

if ${2} == ${3}; then
	echo "bad file name"
	exit 0

sed -e 's/\r\n/\n/g' < ${2} > ${3}
