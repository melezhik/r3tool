my $issue-num;

while True {

  $issue-num = prompt("issue number: ").chomp;

  if $issue-num ~~ /^^ \w+ $$/ {
    last
  } else {
    say "value should match \\w+ "; 
  }

}

task-run "tasks/new-issue", %(
  issue => $issue-num
);
