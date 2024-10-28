set -e

$RAKUBIN -v

zef --version

echo "============="

zef install File::Directory::Tree --/test

zef --installed list

echo "============="

zef install File::Temp --/test
