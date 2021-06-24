cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e "say '[', ( unimatch '[', ']', 'Bidi_Mirroring_Glyph' ), ']'"
