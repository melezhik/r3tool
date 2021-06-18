my $issue-num;
my $tags;

while True {

  $issue-num = prompt("issue number: ").chomp;

  if $issue-num ~~ /^^ \d+ $$/ {
    last
  } else {
    say "value should be integer"; 
  }

}

$tags = prompt("tags: (use space separator for many): ").chomp;

task-run "tasks/new-issue", %(
  issue => $issue-num,
  tags => $tags ?? $tags.split(/\s+/) !! []
);

say "==============================================================";
say "you test is ready. run it using:";
say "tomty $issue-num";
