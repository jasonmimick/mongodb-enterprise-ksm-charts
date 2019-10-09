#!/bin/bash

rm -rf builds

mkdir builds

cp ksm.yaml builds
cp ksm-* builds

cd mongodb-enterprise-crds
helm package --destination ../builds .
cd ..

cd mongodb-enterprise-operator
helm package --destination ../builds .
cd ..

cd mongodb-enterprise-ksm
helm package --destination ../builds .
cd ..


