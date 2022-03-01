use Sparky::JobApi;

class Pipeline does Sparky::JobApi::Role {

  method stage-setup {

    for  'Tomtit', 'Tomty' -> $i {

      say "install [$i] ...";

      zef $i, %( force => True, notest => True  );

    }

    directory "{%*ENV<HOME>}/.sparky/projects/r3-tool";

    my $stash = self.new-job(:mine(True)).get-stash;

    file "{%*ENV<HOME>}/.sparky/projects/r3-tool/sparrowfile", %(
      content => $stash<sparrowfile>
    );

    file "{%*ENV<HOME>}/.sparky/projects/r3-tool/sparky.yaml", %(
      content => $stash<sparky>
    );

  }


  method stage-main {

    my @q;

    for config()<workers><> -> $w {

      my $j = self.new-job: :project("r3-worker-setup"), :api($w<api>);

      $j.put-stash: %( 
        sparky => "files/sparky/sparky.yaml".IO.slurp,
        sparrowfile => "files/sparky/sparrowfile".IO.slurp,
      );

      $j.queue({
        description => "r3 worker setup",
        tags => %(
          stage => "setup",
        ),
        #sparrowdo => %(
        #  no_sudo => True,
        #  bootstrap => False
        #),
      });

      say "queue spawned job, ",$j.info.perl;
      @q.push: $j;

    }

    my $s = self.wait-jobs(@q);

    die if $s<FAIL>;

  }

}

Pipeline.new.run;  
