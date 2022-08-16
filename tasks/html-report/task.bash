tomty --color --dump-task --show-failed --all | perl  -p -e 's[aleksei][]g' | ansi2html >  ~/Downloads/report.html
