#!/bin/bash
cd /home/suricactus/work/geo/vidin-calafat-bridge
perl script.pl 2>/dev/null > /dev/null


if [[ -z $(git diff vidin-calafat-bridge-stats.csv) ]]; then
    echo '[vidin-calafat-bridge] Nothing to update.'
    exit 0;
fi;

git add vidin-calafat-bridge-stats.csv
git commit -m "update: cron update at $(date -Iminutes)"
git push origin master

exit 0