say "RAKUBIN: ", %*ENV<RAKUBIN> // 'not set';

if %*ENV<RAKUBIN> {
  shell "%*ENV<RAKUBIN> -v"
}
