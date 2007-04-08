\version "2.7.29"
globala = { 
\set Score.skipBars = ##t 
#(set-accidental-style 'modern) 
\override MultiMeasureRest #'expand-limit = 1 
 \override Score.RehearsalMark #'padding = #3 
\override Score.RehearsalMark #'self-alignment-X = #left 
 \set Score.rehearsalMarkAlignSymbol = #'time-signature 
\mark \markup {\override #'(baseline-skip . 3) \column { "Allegro" \small TUTTI }}  }
globalb = {
 \set Score.skipBars = ##t 
#(set-accidental-style 'modern) 
\override MultiMeasureRest #'expand-limit = 1 
#(override-auto-beam-setting '(end 1 16 2 2) 1 4 'Score)
#(override-auto-beam-setting '(end 1 16 2 2) 2 4 'Score)
#(override-auto-beam-setting '(end 1 16 2 2) 3 4 'Score) \override Score.RehearsalMark #'self-alignment-X = #left 
\override Score.RehearsalMark #'padding = #4  \set Score.rehearsalMarkAlignSymbol = #'time-signature 
\mark \markup {\override #'(baseline-skip . 3) \column { "Andante ma Adagio" \small TUTTI }} 
}
globalc = { \set Score.skipBars = ##t 
#(set-accidental-style 'modern) 
\override MultiMeasureRest #'expand-limit = 1 \override Score.RehearsalMark #'self-alignment-X = #left
 \override Score.RehearsalMark #'padding = #3  \set Score.rehearsalMarkAlignSymbol = #'time-signature  
\mark \markup {\override #'(baseline-skip . 3) \column { Rondo \fontsize #-1 "Tempo di Menuetto" \small TUTTI }} }
