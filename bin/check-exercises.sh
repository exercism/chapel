#!/usr/bin/env bash

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)

cd exercises
mkdir tmp-exercises

cnt=0
for exercise in practice/*/ concept/*/; do
    if [ -d "$exercise" ]; then
        printf "\n======================================================================\nTESTING $exercise \n======================================================================\n"
	mkdir -p tmp-exercises/$exercise
	cp -a $exercise/. tmp-exercises/$exercise
	cd tmp-exercises/$exercise
	cat .meta/example.chpl > src/*.chpl
	if ! mason test ; then
	  ((cnt++))
	fi
	cd -
    fi
done

rm -rf tmp-exercises

if [ $cnt -gt 0 ]; then
  printf "\n${RED}$cnt TESTS FAILED\n"
  exit 1
else
  printf "\n${GREEN} ALL TESTS PASSED\n"
fi
