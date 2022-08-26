zef "Pastebin::Gist";

my %st = task-run "tasks/html-report", %(
  env => "source",
  issue_num => %*ENV<ISSUE> || ""
);

%st = task-run "tasks/pastebin-gist/", %(
  GH-TOKEN => %*ENV<R3_GH_TOKEN>,
  content => %st<content>,
  desc => "r3 report for rakudo",
  filename => "report.html"
);


my $url = %st<url>.subst("gist.github.com","gist.github.com/melezhik");

say "https://htmlpreview.github.io/?{$url}/raw";

