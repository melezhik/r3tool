my %tags;
for config()<issues>.keys -> $i {
  for config()<issues>{$i}<tag> -> $j {
    %tags{$j} = 1;
  }
};

say %tags.keys.sort.join("\n");
