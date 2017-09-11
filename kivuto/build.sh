cd `git rev-parse --show-toplevel`
cp kivuto/plugins-override-kvt.cson plugins/plugins-override.cson
npm run prepare:all
patch --forward readium-cfi-js/node_modules/jquery/dist/jquery.js -i kivuto/readium-shared-js-jquery.diff
RJS_PLUGINS_OVERRIDE=yes npm run build