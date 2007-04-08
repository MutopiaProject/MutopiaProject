\version "2.10.3"

 fagotti = {
 \set Staff.instrumentName = \markup { \center-align { "Fagotti." } }
 \set Staff.midiInstrument = "bassoon"
 \clef bass
 \key g \major
 \time 4/4
 \partial 2 r2 R1 R1 R1 r2 g4\p( a) b4.( fis8 g4 c) d4.( c8) b,4( b)
 << { g8.([ fis16 g8 e]) a4 a } \\ { g8.([ fis16 g8 e]) a4 a } >> <d d'>2 r R1 R1 R1 r2 <fis d'>4\p( <g cis'> <a c'!> <g b>)
 << { e'4. e'8 a2 d'4( f' e') } \\ { c4( cis4) d4 d'8( c'!) b4\staccato_\markup { \italic "cresc." }( b\staccato) c'\f } >>
 r8 <g bes>8 \set doubleSlurs = ##t <g b>4\p( <a c'>) \set doubleSlurs = ##f
 <g b>8 r r4 << { d8.[ e16\staccato fis8\staccato d\staccato] g8.[ a16\staccato b8\staccato g\staccato] } \\
 { d8.\f[ e16\staccato fis8\staccato d\staccato] g8.[ a16\staccato b8\staccato g\staccato] } >> <a c'>8 r <fis a> r
 <g b>8 <d d'>8\ff[ <d d'> <d d'>] <a c'>2\sf <g b>8.[ <a c'>16 <b d'>8\staccato <g b>\staccato]
 <c' e'>8 r <a fis'> r <b g'>8 r r4 r2 R1 R1 R1 R1 R1 R1 R1 R1
 << { b2\rest a8.\p[ b16\staccato cis'8\staccato a\staccato] d'8 d'8\rest d'4\rest d'2\rest
 b2\rest a8.[ b16\staccato cis'8\staccato a\staccato] } \\ { R1 d8.\p[ e16\staccato fis8\staccato d\staccato] a8 r8 r4 R1 } >>
 <d d'>8.[ <e e'>16\staccato <fis fis'>8\staccato <d d'>\staccato] <a fis'>4( <a, g'> <d fis'>8) r8 r4
 \set doubleSlurs = ##t <a e'>2( <a d'>8) r8 r4 <a e'>2( <a d'>8) r8 r4 r2 R1 R1 R1 R1
 r2 << { g8([ b d' c'] b[ a g d']) } \\ { g8\p([ b d' c'] b[ a g d]) } >> <d d'>8( <g g'>4 <e e'>8)
 <d d'>8([ <cis cis'> <d d'> <c c'>]) <b, b>4\staccato_\markup { \italic "cresc." }( <b, b>\staccato)
 << { b4. b8 a8([ b e a]) d8 } \\ { b,4.( g8) a8\p[( gis a) a] d8 } >> r8 r4 r2 R1 R1 R1
 r2 <fis d'>4\p( <g cis'> <a c'!> <g b>) << { e'4. e'8 a4. d'8 d'4( f'4 e'4.) bes8 b8([ cis' d' c']) } \\
 { a4.( bes8) a4. a8 b!4_\markup { \italic "cresc." } b4 c'8([ b c' g]) g4.\p( fis8) } >>
 <g b>8 r8 r4 << { d8.[ e16\staccato fis8\staccato d\staccato] g8.[ a16\staccato b8\staccato g\staccato] } \\
 { d8.\f[ e16\staccato fis8\staccato d\staccato] g8.[ a16\staccato b8\staccato g\staccato] } >> <a c'>8 r <fis a> r
 <g b>8 <d d'>\ff[ <d d'> <d d'>] <a c'>2\sf
 <g b>8.[ <a c'>16\staccato <b d'>8\staccato <g b>\staccato] <c' e'>8 r <a fis'> r
 <b g'>8 r r4 << { a8 } \\ { a8\p } >> r8 << { b8 } \\ { b8 } >> r8 << { e8 } \\ { e8 } >> r8 r4 r2
 << { b2\rest b8\rest fis'8^\p([ e' dis'] e') d'8\rest d'4\rest b2\rest
 b2\rest c'8\rest fis'8([ g' dis'] e') c'8\rest d'4\rest b2\rest
 b2\rest b8\rest b8([ dis' fis'] e'8) c'8\rest c'4\rest b2\rest c'8\rest fis'4 fis'8 b8 d'!([ b d'])
 e8 a8\rest a4\rest g2\rest g2\rest a8\rest b8([ dis' fis'] e') c'8\rest c'4\rest b2\rest
 b2\rest c'8\rest e'8([ f' d'!] b) c'8\rest c'4\rest b2\rest
 b2\rest c'8\rest b8([ dis' fis'!] e') c'8\rest c'4\rest b2\rest } \\
 { R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 } >> R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 r2 <a c'>2\f <g b>2 <a c'>8 r <fis a> r
 <g b>8 r r4 <d fis>8.[ <e g>16\staccato <fis a>8\staccato <d fis>\staccato]
 <g b>8.[ <a c'>16\staccato <b d'>8\staccato <g b>\staccato] r2 R1 R1
 <b g'>4\p( <c' fis'> <b g'>8) r8 r4 <b g'>4( <c' fis'> <b g'>8) r8 r4
 r2 << { g,8 } \\ { g,8\ff } >> r8 << { g8 } \\ { g8 } >> r8 << { g,2^\fermata } \\ { g,2_\fermata } >> \bar "|."
}