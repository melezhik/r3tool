my $issue-num;

while True {

  $issue-num = prompt("issue number: ").chomp;

  if $issue-num ~~ /^^ \d+ $$/ {
    last
  } else {
    say "value should be integer"; 
  }

}

task-run "tasks/new-issue", %(
  issue => $issue-num
);
