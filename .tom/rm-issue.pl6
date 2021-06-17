my $issue-num;

while True {

  $issue-num = prompt("issue number: ").chomp;

  if $issue-num ~~ /^^ \d+ $$/ {
    last
  } else {
    say "value should be integer";
  }


}

bash "tomty --remove $issue-num && rm -rf $issue-num/";

