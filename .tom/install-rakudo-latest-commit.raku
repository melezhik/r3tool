my $cache-dir = "{%*ENV<HOME>}/.r3/cache";

directory $cache-dir;

git-scm 'https://github.com/rakudo/rakudo.git', %( to => $cache-dir );

my %state = task-run "tasks/rakudo-commits", %(
  dir => $cache-dir
);

my $sha = %state<list>[0];

module-run 'Rakudo::Install', %(
  user => %*ENV<USER>,
  skip-install-dependencies => True,
  rakudo-version => $sha,
  skip-zef => True,
  patch-profile => False,
);

say "to use installed Rakudo version in r3:";
say "export RAKUBIN=/tmp/whateverable/rakudo-moar/$sha/bin/raku";

