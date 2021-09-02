#!/bin/bash -e

mkdir -p bin
mvn package -P ImageIndexer

cp -f target/mtn-img-indexer.jar ./bin/mtn-img-indexer.jar
cp -f src/main/resources/mtn-img-indexer.sh ./bin
cp -f src/main/resources/mtn-img-indexer.cmd ./bin

RELEASE_TAG=1.1

cd bin

rm -f  mtn-img-indexer-$RELEASE_TAG.zip
zip -0 mtn-img-indexer-$RELEASE_TAG.zip mtn-img-indexer*

cd ..
