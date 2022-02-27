use Sparky::JobApi;

class Pipeline does Sparky::JobApi::Role {

  method stage-setup {

    for  'Tomtit', 'Tomty' -> $i {

      say "install [$i] ...";

      zef $i, %( force => True, notest => True  );

    }

  }


  method stage-main {

    my @q;

    for config()<workers><> -> $w {

      my $j = self.new-job: :project("r3-worker-setup"), :api($w<api>);

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
