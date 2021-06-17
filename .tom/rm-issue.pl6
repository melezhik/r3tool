my $issue-num;

while True {

  $issue-num = prompt("issue number: ").chomp;

  if $issue-num ~~ /^^ \w+ $$/ {
    last
  } else {
    say "value should match \\w+ ";
  }


}

bash "tomty --remove $issue-num && rm -rf $issue-num/";

