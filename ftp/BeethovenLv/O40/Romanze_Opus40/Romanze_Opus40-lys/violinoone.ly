\version "2.10.3"

 violinoone = {
 \set Staff.instrumentName = \markup { \center-align { "Violino I." } }
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key g \major
 \time 4/4
 \partial 2 r2 R1 R1 R1 r2 g'4\p^\markup { "pizz." } fis'4 g'4. a'8 b'4 d''8. c''16 b'4 a'8 r b'4 b'4
 b'4. e''8 d''4 cis'' d''2 r2 R1 R1 R1 r2 d''4\p^\markup { "pizz." } cis''4 c''! b' a'4. g'8
 g'4 fis' g'_\markup { \italic "cresc." } gis' a'8.\f c''16 e''8 e'' g'!4\p b'8. a'16
 g'8 r8 r4 <d' c''>2\f^\markup { "arco." } <d' b'>2 <e' c''>8 r <d' a'> r <g d' b'>8 r r4
 << { a''2 g''2 } \\ { <d' c''>4\ff s4 <d' b'>4 s4 } >> <e' c'' a''>8 r <d' a' fis''> r <g d' b' g''>8 r r4 r2
 b8\p([ d' b d'] c'[ d' c' d']) b8([ d' b d'] b[ d' c' d']) b8([ d' b d'] c'[ d' c' d']) b8[ b' b' b'] r8 g'' r e''
 r8 cis''[ cis'' cis''] r a'' r fis'' r8 d''[ d'' d''] d''[ d'' d'' d'']
 e''8[ a' a'_\markup { \italic "cresc." } a'] a'[ a' a' a'] r8 a'8\p r g' r fis' r e'
 d'8.[ e'16\staccato fis'8\staccato d'\staccato] a'4.( g'8)
 <a fis'>8[ <a fis'> <a fis'> <a fis'>] r <a fis'> r <a g'> <a fis'>8 r8 r4 r2
 <a fis'>8[ <a fis'> <a fis'> <a fis'>] r <a fis'> r <a g'> fis'8[ fis' fis' fis'] g'[ g' g' g'] fis'[ fis' fis' fis'] g'[ g' g' g']
 fis'8 r8 r4 r2 fis'8^\markup { "pizz." } r8 r4 g'8 r8 r4
 R1 R1 R1 r2 g'4\p^\markup { "arco" }( fis') g'4.( a'8 b'4 d''8. c''16) b'4( a'8) r8
 b'4\staccato_\markup { \italic "cresc." }( b'4\staccato) b'4.( e''8 d''4\p cis'') d''8 r8 r4 r2 R1 R1 R1
 r8 b'8\p([ a' cis'']) d''4( cis'' c''! b') a'4.( g'8) g'4( fis') g'4_\markup { \italic "cresc." }( gis'
 a'8. c''16) e''8\staccato e''\staccato g'!4\p( b'8. a'16) g'8 r r4 <d' c''>2\f <d' b'>2 <e' c''>8 r <d' a'> r
 <g d' b'>8 r r4 << { a''2 g''2 } \\ { <d' c''>4\ff s4 <d' b'>4 s4 } >> <e' c'' a''>8 r <d' a' fis''>8 r
 <g d' b' g''>8 r r4 r2 r8 g'8\p r g' r a' r a' r g' r ais' r b' r4 r8 g' r g' r fis' r eis' r fis' r ais' r b' r4
 r8 g' r g' r a'! r a' r g' r e'' r dis'' r4
 r8 b' r b' r b' r b' r b' r ais' r b' r4 r8 b' r b' r c'' r c'' r a'! r ais' b' r r4 r8 g' r g' r <e' c''>4 fis'8
 r8 g' r a' g' r r4 r8 gis' r gis' r a' r c'' r a' r ais' b' r r4 r8 g' r g' r c''4\sf c''8
 r8 c''4\sf c''8 c''8 r8 r4 fis'8^\markup { "pizz." } r8 r4 r2 R1 r2
 b16\p^\markup { "arco" }([ d' g' d']) c'([ d' fis' d']) b( d' g' d' cis' d' a' d') b'( d' b' d'' c''! e' a' c'')
 b'16([ d' g' b'] fis'[ a' fis' e']) dis'([ fis' b' a'] g'[ fis' e' dis']) e'([ b' a' b']) b'[ b'( g' b')]
 fis'([ a' d''! fis'] g'[ cis'' a' g']) fis'( d' cis' d' fis' d' a' fis') d''( a' fis' d'' g' cis'' a' g')
 c''!( a' d' c'' d' b' g' d') e'( a' gis' a' gis' a' b' g') g'( d' g' b' fis' d' fis' a' d') d'' d'' d'' r d'' r gis'
 r16 a'[ a' a'] r a' r bes' r b'[ b' b'] r fis'[ fis' fis']
 g'16( d'_\markup { \italic "cresc." } b' g' d'' b' g'' d'') <d' c''>2\f <d' b'>2 <e' c''>8 r <d' a'> r
 <d' b'>8 r8 r4 r2 r2 aes''8.\sf[( g''16) f''8\staccato g''8\staccato]
 aes''8.\sf[( g''16) f''8\staccato g''8\staccato] aes''8.\sf[( g''16) f''8\staccato f''8\sf\staccato](
 e''8)[ a'\p( c'' e'')] r8 g' r fis'! g'8 r r4 g'8([ d' fis' d']) g'8 r r4 g'8([ d' fis' d'])
 g'8 r8 r4 <d' b' g''>8\ff r <d' b' b''> r g2^\fermata \bar "|."
}