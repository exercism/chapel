#!/usr/bin/env bash

cd exercises
mkdir tmp-exercises

for exercise in practice/*/ concept/*/; do
    if [ -d "$exercise" ]; then
        echo Testing $exercise
	mkdir -p tmp-exercises/$exercise
	cp -a $exercise/. tmp-exercises/$exercise
	cd tmp-exercises/$exercise
	cat .meta/example.chpl > src/*.chpl
	mason test
	cd -
    fi
done

rm -rf tmp-exercises
