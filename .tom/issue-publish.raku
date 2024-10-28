#!raku

my $issue = prompt("issue num: ");
my $comment = prompt("comment: ");

#my $comment = "added to R3 test suite";

my $msg =  $comment ?? "[$comment]\nhttps://github.com/rakudo/rakudo/issues/{$issue}" !! 

"https://github.com/rakudo/rakudo/issues/{$issue}";

task-run "commit issue", "git-commit", %( message => $msg );

task-run "git push", "git-push", %( confirm => "no" );

