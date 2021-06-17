my $issue-num;

while True {

  $issue-num = prompt("issue number: ").chomp;

  if $issue-num ~~ /^^ \d+ $$/ {
    last
  } else {
    say "issue should be an integer number"; 
  }

}

task-run "tasks/new-issue", %(
  issue => $issue-num
);
