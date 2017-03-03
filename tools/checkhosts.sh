#!/bin/bash
# https://github.com/racaljk/hosts

EOL_BREAK=0
FORMAT_BREAK=0
DATE_BREAK=0

<<<<<<< .merge_file_CYh2GN
# 1. check line endings
#
chk_line() {
    local ret=$(dos2unix -id "$1" | grep -o "[0-9]\+")

    echo -e "1. check line endings:\n"

    if [ "$ret" -ne 0 ]; then
        echo -e "\033[41mDOS line endings $ret times appeared, " \
                    "it must be coverted!\033[0m\n\n"
        LINE_BREAK=1
    else
        echo -e "\033[42mAll is well!\033[0m\n\n"
    fi
}

# 2. check hosts format, only used if STRICT_HOSTS_FORMAT already set
#
chk_format() {
    local loc="[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+"
    local in_fmt="[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+$(echo -e "\t")[[:alnum:]]\+"

    echo -e "2. check hosts format:\n"

    grep "$loc" "$1" > 1.txt
    grep "$in_fmt" "$1" > 2.txt

    diff -q 1.txt 2.txt

    if [ "$?" -ne 0 ]; then
        echo -e "\n\033[41mhosts format mismatch! " \
                    "The following rules should be normalized:\033[0m"
        diff 1.txt 2.txt
        FORMAT_BREAK=1
    else
        echo -e "\033[42mAll is well!\033[0m"
    fi

    echo -e "\n"
    rm -f 1.txt 2.txt
}

# 3. check "Last updated", only used if STRICT_HOSTS_FORMAT already set
#
chk_date() {
    local real_date=$(git log --date=short "$1" | \
                        grep -o "[0-9]\+-[0-9]\+-[0-9]\+" -m 1)
    local in_hosts=$(grep -o "[0-9]\+-[0-9]\+-[0-9]\+" "$1")

    echo -e "3. check hosts date:\n"

    if [ "$real_date" != "$in_hosts" ]; then
        echo -e "\033[41mhosts date mismatch, last modified is $real_date, " \
                "but hosts tells $in_hosts\033[0m\n\n"
        DATE_BREAK=1
    else
        echo -e "\033[42mAll is well!\033[0m\n\n"
    fi
}

#
# Result
#
result () {
    echo -e "Result:\n"

    echo -e "line endings break?      $LINE_BREAK (1 = yes, 0 = no)"

    if [ -n "$STRICT_HOSTS_FORMAT" ]; then
        echo -e "hosts format mismatch?   $FORMAT_BREAK (1 = yes, 0 = no)"
        echo -e "hosts date mismatch?     $DATE_BREAK (1 = yes, 0 = no)"

        local ret=$(echo -e "$LINE_BREAK $FORMAT_BREAK $DATE_BREAK" \
            | grep -o "1" | wc -w)
        exit $ret
    else
        exit $LINE_BREAK
    fi
}

if [ "$1" = "" ]; then
    echo -e "\033[41mError, requires an argument!\033[0m"
    exit -1
fi

chk_line "$1"

if [ -n "$STRICT_HOSTS_FORMAT" ]; then
    chk_format "$1"
    chk_date "$1"
fi
=======
chk_eol()
{
	printf "\e[33;1mCheck line endings:\e[0m\n"

	if file "$1" | grep -q "CRLF"; then
		printf "\e[31mERROR: DOS line endings appeared, "
		printf "it must be coverted now!\e[0m\n\n"
		EOL_BREAK=1
	else
		printf "\e[32mAll is well!\e[0m\n\n"
	fi
}

# Check TAB, leading and trailing whitespace.
chk_format()
{
	printf "\e[33;1mCheck hosts format:\e[0m\n"

	# Filter out all comments, and add all hosts records to 1.swp.
	grep -Pv "^[ \t]*#" "$1" | grep -P "(\d+\.){3}\d+" > 1.swp
	# a line with trailing whitespace will be add to 1.swp.
	grep -P "[ \t]+$" "$1" >> 1.swp
	# Filter out all comments, need not to be formatted lines add to 2.swp
	grep -Pv "^[ \t]*#" "$1" | grep -P "^(\d+\.){3}\d+\t\w" > 2.swp

	if ! diff 1.swp 2.swp > 0.swp; then
		printf "\e[31mNOTICE: The following lines should be normalized:\e[0m\n"
		cat 0.swp; printf "\n"
		FORMAT_BREAK=1
	else
		printf "\e[32mAll is well!\e[0m\n\n"
	fi

	rm -f 0.swp 1.swp 2.swp
}

cmp_date()
{
	if [ "$1" != "$2" ]; then
		printf "\e[31mNOTICE: The last updated should be $1, "
		printf "but hosts tells $2\e[0m\n\n"
		DATE_BREAK=1
	else
		printf "\e[32mAll is well!\e[0m\n\n"
	fi
}

chk_date()
{
	local sys_date=$(date +%F)
	local commit_date=$(git log --pretty=format:"%cd" --date=short -1 "$1")
	local in_file=$(grep -m1 -Po "(?<=Last updated: )\d{4}-\d{2}-\d{2}" "$1")

	printf "\e[33;1mCheck hosts date:\e[0m\n"

	# check if hosts file changes.
	if git diff --exit-code "$1" &> /dev/null; then
		# hosts file has not been modified.
		cmp_date "$commit_date" "$in_file"
	else
		# hosts file has been modified but not committed.
		cmp_date "$sys_date" "$in_file"
	fi
}

if [ -z "$1" ]; then
	echo "Usage: $0 [file]"
	exit 4
fi

chk_eol "$1"
chk_format "$1"
chk_date "$1"
>>>>>>> .merge_file_t35Kzo

exit $(( $EOL_BREAK + $FORMAT_BREAK + $DATE_BREAK ))
