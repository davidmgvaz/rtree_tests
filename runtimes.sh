#!/bin/bash

YAP=../../../arch/bin/yap
YAPTEST=../../../../yap-6.3/arch/bin/yap
TIME="/usr/bin/time -v"

for testfile in tests/*.yap; do
    OUT=${testfile%%.yap}
    OUT=${OUT##tests/}

    if [ ! -f boutput/$OUT.time ]; then
        echo "Creating base for: $testfile"
        $TIME -o boutput/$OUT.time \
            $YAPTEST -l base.yap -h 1024000 -s 1024000 2> /dev/null <<EOF
['$testfile'].
x('boutput/$OUT').
EOF
    fi
done

for testfile in tests/*.yap; do
    echo -n "Running $testfile: "
    OUT=${testfile%%.yap}
    OUT=${OUT##tests/}

    $TIME -o output/$OUT.time \
        $YAP -l base.yap -h 1024000 -s 1024000 2> /dev/null <<EOF
['$testfile'].
x('output/$OUT').
EOF

    diff -q <(sort boutput/$OUT) <(sort output/$OUT) > /dev/null
    if [ $? -eq 0 ]; then
        echo $(tput setaf 2) "OK" $(tput sgr0)
    else
        echo $(tput setaf 1) "FAIL" $(tput sgr0)
    fi
done



