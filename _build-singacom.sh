#!/bin/bash
# Builds the site for https://www.singacom.uva.es/~edgar/ and copies it to the server.
# Usage: ./_build-singacom.sh
set -e
cd "$(dirname "$0")"

DEST="USUARIO@SERVIDOR:public_html/"   # <-- change to your SINGACOM login and folder

uglifyjs assets/js/plugins/jquery.greedy-navigation.js assets/js/_main.js assets/js/theme.js \
  -c -m -o assets/js/main.min.js
JEKYLL_ENV=production bundle exec jekyll build \
  --config _config.yml,_config_singacom.yml -d _site_singacom
rsync -av _site_singacom/ "$DEST"
echo "Done: https://www.singacom.uva.es/~edgar/"
