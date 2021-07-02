my $cache-dir = "{%*ENV<HOME>}/.r3/cache";

directory $cache-dir;

git-scm 'https://github.com/rakudo/rakudo.git', %( to => $cache-dir );

task-run "tasks/rakudo-commits", %(
  dir => $cache-dir
);

