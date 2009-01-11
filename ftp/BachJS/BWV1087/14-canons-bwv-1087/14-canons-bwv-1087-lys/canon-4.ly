

    violinQuatre = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violine 1 "
       \set Staff.midiInstrument = "violin"
       r2 | % 1
       r2 | % 2
       r4 g4 | % 3
       fis4 e | % 4
       d4 b | % 5
       c4 d | % 6
       g,4 g'4 | % 7
       fis4 e | % 8
       d4 b | % 9
       c4 d | % 10
       g,2 \bar "|."
	   \pageBreak
	}}


     celloQuatre = \new Voice { \relative c' {
       \set Staff.instrumentName = "Cello       "
       \set Staff.midiInstrument = "cello"
       \clef bass
       r4 d,4 | % 1
       e4 fis | % 2
       g4 b | % 3
       a4 g | % 4
       d'4 d,4 | % 5
       e4 fis | % 6
       g4 b | % 7
       a4 g | % 8
       d'4 d,4 | % 9
       e4 fis | % 10
       g2 \bar "|."}}
	   
	   
 violinQuatreAlto = \new Voice { \relative c''{
       \set Staff.instrumentName = "Viola 1 "
       \set Staff.midiInstrument = "viola"
	   \clef alto
       r2 | % 1
       r2 | % 2
       r4 g4 | % 3
       fis4 e | % 4
       d4 b | % 5
       c4 d | % 6
       g,4 g'4 | % 7
       fis4 e | % 8
       d4 b | % 9
       c4 d | % 10
       g,2 \bar "|." 
	   \pageBreak
	   }}


     celloQuatreAlto = \new Voice { \relative c' {
       \set Staff.instrumentName = "Viola 2 "
       \set Staff.midiInstrument = "cello"
       \clef alto
       r4 d,4 | % 1
       e4 fis | % 2
       g4 b | % 3
       a4 g | % 4
       d'4 d,4 | % 5
       e4 fis | % 6
       g4 b | % 7
       a4 g | % 8
       d'4 d,4 | % 9
       e4 fis | % 10
       g2 \bar "|."}}

 