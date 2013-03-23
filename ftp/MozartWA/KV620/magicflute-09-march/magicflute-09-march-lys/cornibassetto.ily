\version "2.14.2"

inst = "cornibassetto"
minst = #"french horn"
linst = \markup { \column {"Corni di Bassetto" \line {"in F."}} }
hinst = "Corni di Bassetto"
sinst = "Co.B."
notes = {\transposition f \partcombine \cornibassettoI \cornibassettoII}

% I wasn't sure of the range of the Corni Di Bassettos so I used a transposing 7 down
% with a midiInstrument of the standard french horn. If this is incorrect, let me know.
