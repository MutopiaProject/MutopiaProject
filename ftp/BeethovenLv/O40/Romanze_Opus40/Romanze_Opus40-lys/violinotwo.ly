\version "2.10.3"

 violinotwo = {
 \set Staff.instrumentName = \markup { \center-align { "Violino II." } }
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key g \major
 \time 4/4
 \partial 2 r2 R1 R1 R1 r2 d'4\p^\markup { "pizz." } d'4 d'4. d'8 d'4 b'8. a'16 g'4 fis'8 r dis'4 fis'4
 e'4. b'8 fis'4 g' fis'2 r R1 R1 R1 r2 fis'4\p^\markup { "pizz." } g' a' d' e' bes
 a4. d'8 d'4_\markup { \italic "cresc." } <d' f'>4 e'4\f r8 g' g'4\p fis'!4 g'8 r r4 <d' a'>2\f^\markup { "arco." }
 <b g'>8.[ c'16\staccato d'8\staccato b\staccato] a'8 r fis' r <g g'>8 r r4
 << { a''2 g''2 } \\ { <d' c''>4\ff s4 <d' b'>4 s4 } >> <e' c'' a''>8 r <d' a' fis''> r <g d' b' g''>8 r r4 r2
 r4 <d' d''>4\p <d' d''> <d' d''> <d' d''>2 r2 r4 <d' d''> <d' d''> <d' d''> <d' d''>8[ d' d' d'] r b' r b'
 r8 e'[ e' e'] r cis'' r cis'' r8 fis'[ fis' fis'] g'[ g' g' g'] g'[ g' g'_\markup { \italic "cresc." } g'] g'[ g' g' g']
 r8 fis'8\p r e' r d' r cis' d'8 r8 r4 r2 d'8[ d' d' d'] r d' r cis' d'8 r r4 r2
 d'8[ d' d' d'] r d' r cis' d'[ d' d' d'] cis'[ cis' e' e'] d'[ d' d' d'] cis'[ cis' e' e'] d'8 r8 r4 r2
 c'!8^\markup { "pizz." } r8 r4 b8 r8 r4
 R1 R1 R1 r2 b8\p^\markup { "arco" }([ d' a d']) d'([ c' b d']) d'8( g'4 a'8)
 g'4( fis'8 e' dis'_\markup { \italic "cresc." }[ fis' e' a']) g'([ a' g' b'] fis'\p[ f' e' g']) fis'!8 r8 r4 r2 R1 R1 R1
 r8 d'4\p( g'8) fis'4( g') a'4( d'8 g') e'4.( bes8) a4. a8( d'8_\markup { \italic "cresc." }[ b! d' f']
 e'8 a4 bes8 b8\p[ cis' d' c']) b8 r r4 <d' a'>2\f b8.[ c'16\staccato d'8\staccato b\staccato] a'8 r fis' r
 <g g'>8 r r4 << { a''2 g''2 } \\ { <d' c''>4\ff s4 <d' b'>4 s4 } >> <e' c'' a''>8 r <d' a' fis''> r
 <g d' b' g''>8 r r4 r2 r8 e'8\p r e' r fis' r dis' r e' r e' r dis' r4 r8 b r b r b r b r b r e' r dis' r4
 r8 e' r e' r fis' r dis' r e' r ais' r b' r4
 r8 g' r g' r fis' r eis' r fis' r fis' r fis' r4 r8 d'! r d' r c' r c' r e' r e' dis' r r4 r8 e' r e' r <c' e'>4 c'8
 r8 e' r dis' e' r r4 r8 <d'! e'> r <d' e'> r <c' e'> r e' r e' r e' dis' r r4 r8 e' r e' r <c' e'>4\sf <c' e'>8
 r8 <a fis'>4\sf <a fis'>8 <a fis'>8 r8 r4 a8^\markup { "pizz." } r8 r4 r2 R1
 r2 <d' d''>4\p^\markup { "arco" } <d' d''> <d' d''>4.( <d' c''>8) b'8([ d' e' a'])~ a'8[ g'( fis' a')]~
 a'[( dis') dis'( b')]~ b'8 b'4 b'8 d'!8([ fis' cis' g']) fis'8 r8 r4 fis'4( g' a' d') e'4. e'8
 b4( a8[ d']~ d'16)[ g' g' g'] r16 g' r f' r16 e'[ e' e'] r e' r g' r g'[ g' g'] r c'[ c' c']
 b8 r8 r4 <d' a'>2\f b8.[ c'16\staccato d'8\staccato b\staccato] a'8 r fis' r <g g'>8 r8 r4 r2
 r2 aes'8.\sf[( g'16) f'8\staccato g'8\staccato]
 aes'8.\sf[( g'16) f'8\staccato g'8\staccato] aes'8.\sf[( g'16) f'8\staccato f'8\sf\staccato](
 e'8) r8 r4 r8 b8\p r c' b8 r r4 b8([ d' c' d']) b8 r r4 b8([ d' c' d'])
 b8 r8 r4 <d' b' g''>8\ff r <d' b' b''> r g2^\fermata \bar "|."

}