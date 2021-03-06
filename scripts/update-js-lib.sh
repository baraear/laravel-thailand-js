#!/bin/bash

echo "Updating dependencies"
git submodule update --remote

echo "Build jQuery"
cd dependencies/jquery && npm run build
cd ../../

echo "Copying dependencies into project libraries"
cp ./dependencies/jquery/dist/jquery.min.js ./libraries/jquery.min.js
cp ./dependencies/jquery.Thailand.js/jquery.Thailand.js/dependencies/JQL.min.js ./libraries/JQL.min.js
cp ./dependencies/zip.js/WebContent/zip.js ./libraries/zip.js
cp ./dependencies/zip.js/WebContent/z-worker.js ./libraries/z-worker.js
cp ./dependencies/zip.js/WebContent/inflate.js ./libraries/inflate.js
cp ./dependencies/uikit/dist/js/uikit.js ./libraries/uikit.js
cp ./dependencies/uikit/dist/css/uikit.css ./libraries/uikit.css
cp ./dependencies/typeahead.js/dist/typeahead.bundle.js ./libraries/typeahead.bundle.js
cp ./dependencies/jquery.Thailand.js/jquery.Thailand.js/dist/jquery.Thailand.min.js ./libraries/jquery.Thailand.min.js
cp ./dependencies/jquery.Thailand.js/jquery.Thailand.js/dist/jquery.Thailand.min.css ./libraries/jquery.Thailand.min.css

echo "Copying database into project libraries"
cp -r ./dependencies/jquery.Thailand.js/jquery.Thailand.js/database ./libraries/database