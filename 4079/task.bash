set -e


touch $cache_root_dir/file.txt

(echo 'say shell("file '$cache_root_dir/'file.txt");'; echo 'say "'$cache_root_dir/'file.txt".IO.f;' ) | $RAKUBIN;
