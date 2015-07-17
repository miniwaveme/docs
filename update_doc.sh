#! /bin/bash

docker run --rm -v $(pwd):/doc mhor/docker-sphinx-doc make html

cd build/html/
mkdir -p /tmp/miniwaveme
zip -rD /tmp/miniwaveme/doc_buid.zip .
cd ../..
sudo rm -rf build
git checkout gh-pages

mv /tmp/miniwaveme/doc_buid.zip ./

unzip -o doc_buid.zip

rm doc_buid.zip

git add .
git commit -m "updated doc" -a
git push origin gh-pages

git checkout master
