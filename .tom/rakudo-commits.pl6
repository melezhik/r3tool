my $cache-dir = "{%*ENV<HOME>}/.r3/cache";
directory $cache-dir;

git-scm 'https://github.com/rakudo/rakudo.git', %( to => $cache-dir );

bash "git log --pretty=oneline -n 10", %(
  cwd => $cache-dir
);
