#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

export PATH="$PATH:/home/pi/.rbenv/shims:/home/pi/.rbenv/bin"

cd $DIR
exec smashing start
