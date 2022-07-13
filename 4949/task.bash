cat $root_dir/task.bash

cd $cache_root_dir

mkdir lib
mkdir t

cat << 'HERE' > lib/MyModule.rakumod
use CompUnit::Repository::Staging;
HERE

cat << HERE > t/test.raku

use CompUnit::Repository::Staging;

CompUnit::Repository::Staging.new(
  :prefix</tmp/stage>,
  :name<stage>,
  next-repo => \$*REPO
).install(Distribution::Path.new(\$*CWD));

HERE

cat << 'HERE' > META6.json
{
  "perl" : "6.*",
  "name" : "MyModule",
  "version" : "0.0.7",
  "description" : "test",
  "depends" : [],
  "test-depends": [],
  "auth": "github:hythm7-o",
  "provides" : {
    "MyModule": "lib/MyModule.rakumod"
  },
  "source-url" : ""
}
HERE

$RAKUBIN -v

echo "pwd:" $(pwd)

echo "t/test.raku"

cat t/test.raku

$RAKUBIN -I lib t/test.raku
