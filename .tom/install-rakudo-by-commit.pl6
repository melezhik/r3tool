#user "test123";

use Sparrow6::DSL;

my $sha = %*ENV<sha>;

module-run 'Rakudo::Install', %(
  user => 'root',
  rakudo-version => $sha,
  skip-zef => True,
  patch-profile => False,
);
