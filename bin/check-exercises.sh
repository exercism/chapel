#!/usr/bin/env bash

cd exercises
mkdir tmp-exercises

cnt=0
for exercise in practice/*/ concept/*/; do
    if [ -d "$exercise" ]; then
        echo Testing $exercise
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
  echo $cnt tests failed
  exit 1
fi
