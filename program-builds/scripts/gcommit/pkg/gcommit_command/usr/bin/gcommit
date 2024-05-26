#! /bin/sh

if [[ $1 ]]; then
	git commit -am "$1" && git push origin main
else
	printf "Commit message:\n"
	read commsg
	git commit -am "$commsg" && git push origin main
fi
