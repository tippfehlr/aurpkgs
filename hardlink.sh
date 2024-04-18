#!/usr/bin/bash

for dir in $(ls -1d */ | sed 's/wrestic\/$//'); do
	ln -f wrestic/.gitignore $dir/.gitignore
done
