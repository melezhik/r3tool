use Pastebin::Gist;

my $p = Pastebin::Gist.new(
  token => config()<GH-TOKEN>,
);

my $r = my $paste_url = $p.paste(
    {
        config()<filename> => { content => config()<content> },
    },
    :desc(config()<desc>),
    :!public,
);


update_state({ url => $r})
