#user "test123";

use Sparrow6::DSL;

my $sha = %*ENV<sha>;

module-run 'Rakudo::Install', %(
  user => %*ENV<USER>,
  skip-install-dependencies => True,
  rakudo-version => $sha,
  skip-zef => True,
  patch-profile => False,
);
