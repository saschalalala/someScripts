#!/bin/bash

# Just checks, if dropbox or owncloud are running.
# I created that script because I was online a lot via smartphone AP and wanted to minimize background traffic

if [ -z "$(pgrep dropbox)" ]; then
	echo "No running dropbox instance found"
else
	echo "Dropbox is running"
	killall dropbox
	echo "Dropbox killed"
fi

if [ -z "$(pgrep owncloud)" ]; then
	echo "No running owncloud instance found"
else
	echo "Owncloud is running"
	killall owncloud
	echo "Owncloud killed"
fi


