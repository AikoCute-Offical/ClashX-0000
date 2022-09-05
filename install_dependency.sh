#!/bin/bash
set -e
echo "Build Clash core"

cd AikoX/goClash
python3 build_clash_universal.py
cd ../..

echo "Pod install"
bundle install --jobs 4
bundle exec pod install
echo "delete old files"
rm -f ./AikoX/Resources/Country.mmdb
rm -rf ./AikoX/Resources/dashboard
rm -f GeoLite2-Country.*
echo "install mmdb"
curl -LO https://github.com/Dreamacro/maxmind-geoip/releases/latest/download/Country.mmdb
gzip Country.mmdb
mv Country.mmdb.gz ./AikoX/Resources/Country.mmdb.gz
echo "install dashboard"
cd AikoX/Resources
git clone -b gh-pages https://github.com/Dreamacro/clash-dashboard.git dashboard
