#!/bin/bash

if [ ! -f sandfly-entropyscan/sandfly-entropyscan ]; then
    echo "Make sure to run setup.sh to build sandfly-entropscan first!"
    exit 0
fi

echo "sandfly-endropyscan found"

CMS_DIR=cms
CMSES="drupal wordpress joomla"

# Grab CMS data
for c in $CMSES; do
    sandfly-entropyscan/sandfly-entropyscan -dir $CMS_DIR/$C -csv > $c.csv
done

# Grab the webshell data
WEBSHELL_DIR=Webshell-samples/samples/webshell/PHP-backdoors-master/Obfuscated

sandfly-entropyscan/sandfly-entropyscan -dir $WEBSHELL_DIR -csv > webshell.csv

echo "Entropy data collected"
