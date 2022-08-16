set -e

env=$(config env)
issue_num=$(config issue_num)

report_file=$cache_root_dir/report.html

if test -z $issue_num; then

  tomty --env=$env --color --dump-task --show-failed --no-index-update --all | \
  perl  -p -e 's[aleksei][]g' | ansi2html > $report_file

else

  tomty --env=$env --color --dump-task --no-index-update $issue_num | \
  perl  -p -e 's[aleksei][]g' | ansi2html >  $report_file

fi

