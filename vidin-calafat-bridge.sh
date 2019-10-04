#!/bin/bash
cd /home/suricactus/work/geo/vidin-calafat-bridge
perl script.pl 2>/dev/null > /dev/null


if [[ -z $(git diff vidin-calafat-bridge-stats.csv) ]]; then
    echo '[vidin-calafat-bridge] Nothing to update.'
    exit 0;
fi;

# git commit -m "update: cron update at $(date -Iminutes)"
git commit -m "various changes of names"
git push origin master