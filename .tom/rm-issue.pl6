my $issue-num;

while True {

  $issue-num = prompt("issue number: ").chomp;

  if $issue-num ~~ /^^ \d+ $$/ {
    last
  } else {
    say "issue should be an integer number";
  }

}

bash "tomty --remove $issue-num && rm -rf $issue-num/";

