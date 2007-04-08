\version "2.10.3"

 flauto = {
 \set Staff.instrumentName = \markup { \center-align { "Flauto." } }
 \set Staff.midiInstrument = "flute"
 \clef treble
 \key g \major
 \time 4/4
 \once \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 48
 \partial 2 r2 R1 R1 R1 r2 g''4\p( fis'') g''4.( a''8 b''4 d'''8. c'''16) b''4( a''8) r8 b''4\staccato( b''\staccato)
 b''4.( e'''8 d'''4 cis'''4) d'''2 r R1 R1 R1 r2 d'''4\p( cis''' c'''! b'') a''4.( g''8)
 g''4( fis'') g''_\markup { \italic "cresc." }( gis'') a''8.\f( c'''16) e'''8\staccato e'''\staccato g''!4\p( b''8. a''16)
 g''8 r8 r4 c'''2\f b''2 c'''8 r a'' r b''8 d'''8\ff[ d''' d'''] c'''2\sf b''8.[ c'''16\staccato d'''8\staccato b''\staccato]
 c'''8 r a'' r g''8 r r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 d''8.\p\staccato[ e''16\staccato fis''8\staccato d''\staccato] a''4.( fis''8) fis''8 r8 r4 d''4( cis''4 d''8) r8 r4 r2
 R1 R1 R1 R1 R1 R1 r2 g''4\p( fis'') g''4.( a''8 b''4 d'''8. c'''16) b''4( a''8) r8
 b''4\staccato_\markup { \italic "cresc." }( b''\staccato) b''4.( e'''8 d'''4\p cis'''4) d'''8 r8 r4 r2 R1 R1 R1
 r8 b''8\p([ a'' cis''']) d'''4( cis''' c'''! b'') a''4.( g''8) g''4( fis'') g''4_\markup { \italic "cresc." }( gis''
 a''8. c'''16) e'''8\staccato e'''\staccato g''!4\p( b''8. a''16) g''8 r8 r4 c'''2\f b''2 c'''8 r a'' r
 b''8 d'''8\ff[ d''' d'''] c'''2\sf b''8.[ c'''16\staccato d'''8\staccato b''\staccato] c'''8 r a''8 r
 g''8 r r4 a''8\p r fis'' r e''8 r r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 r2 c'''2\f b''2 c'''8 r a'' r b''8 r r4 r2 R1 R1 R1
 g''4\p( fis'' g''8) r8 r4 g''4( fis'' g''8) r8 r4 r2 b''8\ff r d''' r g''2^\fermata \bar "|."
}