#!raku

my $issue = prompt("issue num: ");

my $msg = "https://github.com/rakudo/rakudo/issues/{$issue}";

task-run "commit issue", "git-commit", %( message => $msg );

task-run "push my changes", "git-push";

