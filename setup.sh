#!/bin/bash

echo "Cloning Samples"
git clone https://github.com/mttaggart/Webshell-samples

echo "Pulling CMS Data"
mkdir cms
cd cms
echo "Pulling Wordpress"
wget -O wordpress.zip https://wordpress.org/latest.zip
unzip wordpress.zip

echo "Pulling Drupal"
wget -O drupal.zip https://www.drupal.org/download-latest/zip
unzip drupal.zip
mv drupal-10.0.1 drupal

echo "Pulling Joomla"
wget -O joomla.zip https://downloads.joomla.org/cms/joomla4/4-2-6/Joomla_4-2-6-Stable-Full_Package.zip?format=zip
mkdir joomla
unzip -d joomla joomla.zip
cd ..

echo "Setting up Poetry Environment"
poetry install

echo "Cloning Sandfly Entropy"
git clone https://github.com/sandflysecurity/sandfly-entropyscan
cd sandfly-entropyscan
echo "Building entropyscan"
go build

cd ..

if [ -f sandfly-entropyscan/sandfly-entropscan ]; then
    echo "Ready to go! Run poetry run jupyter lab"
fi



