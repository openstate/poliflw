#!/bin/sh

source /opt/bin/activate
cd /opt/pfl
./manage.py extract list_sources | awk '{print $2}' | sed 1d | xargs -I{} ./manage.py extract start {}
