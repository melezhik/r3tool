my $issue-num = prompt("issue number: ");

task-run "tasks/new-issue", %(
  issue => $issue-num
);
