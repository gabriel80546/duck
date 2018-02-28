if (($# != 0 ))
then
	x=1
	string="duckduckgo.com/?q="$1
	while (( $x != $# ))
	do
		x=$(( $x + 1 ))
		echo ${!x}
		string="${string} ${!x}"
	done
	echo $string
	links2 "$string"
else
	links2 http://www.duckduckgo.com/
	echo $#
fi
