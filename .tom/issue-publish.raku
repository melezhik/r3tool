#!raku

my $issue = prompt("issue num: ");
my $comment = prompt("comment: ");

my $msg =  $comment ?? "[$comment] - https://github.com/rakudo/rakudo/issues/{$issue}" !! 
"https://github.com/rakudo/rakudo/issues/{$issue}";

task-run "commit issue", "git-commit", %( message => $msg );

task-run "git push", "git-push", %( confirm => "no" );

