cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e 'sub ztask( (:$key, :$value) ) {}; ztask ‘foo’.any => ‘bar’;'

