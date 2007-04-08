\version "2.10.3"

 fagotti = {
 \set Staff.instrumentName = \markup { \center-align { "Fagotti." } }
 \set Staff.midiInstrument = "bassoon"
 \clef bass
 \key f \major
 \time 4/4
 R1 R1 R1 R1 R1 R1 R1 << { a2\rest a16\rest c'16( b c' d' c' bes g) } \\ { R1 } >>
 \set doubleSlurs = ##t <f a>2( <bes, d'>) <g c'>2( <e g>) \set doubleSlurs = ##f <f a>4( <e g> <f a> <g bes>)
 \set doubleSlurs = ##t <f a>2( <e g>4) r8 << { c8 } \\ { c8 } >> \set doubleSlurs = ##f
 <e g>2~ <e g>8 <a c'>8([ <g bes> <f a>]) <e g>2~ <e g>8
 <a c'>8([ <gis b!> <a c'>]) << { d'2( a4 bes!) } \\ { bes4( b c' e) } >> <f a>4 r r <d d'>8.. <d d'>32
 <g, g>4 << { bes8.. bes32 } \\ { bes8.. bes32 } >> <g bes>4 <f a>
 << { g2( a4 bes) } \\ { f2.( e4) } >> <f a>4 <a c'>8.. <a c'>32 <f a>4 r
 R1 R1 R1 r2 r8 << { g8([ e d] cis) } \\ { g8([ e d] cis) } >> r8 r4 r2 R1 R1
 r8 << { f8( a g f e d c b,) } \\ { f8( a g f e d c b,) } >> r8 r4 r2 R1
 R1 R1 R1 r4 r8 r16. <e g>32 <f a>8..[ <f a>32 <f a>8.. <f a>32] <e g>8 r r4
 << { c'2~ c'4 } \\ { e2\rest b,4\rest } >> r8 r16. <e g>32 <f aes>8..[ <f aes>32 <f aes>8.. <f aes>32]
 <e g>8 r r4 << { c'2~ c'8 b8\rest b8\rest c'~ c'[ c'] b\rest c'~ c'[ c'] b4\rest b2\rest } \\ { e2\rest R1 R1 } >>
 R1 R1 R1 R1 R1 R1 R1 R1 << { a2\rest a16\rest c'16( b c' d' c' bes g) } \\ { R1 } >>
 \set doubleSlurs = ##t <f a>2( <bes, d'>) <g c'>2( <e g>) \set doubleSlurs = ##f <f a>4( <e g> <f a> <g bes>)
 \set doubleSlurs = ##t <f a>2( <e g>4) r8 << { c8 } \\ { c8 } >> \set doubleSlurs = ##f
 <e g>2~ <e g>8 <a c'>8([ <g bes> <f a>]) <e g>2~ <e g>8 <a c'>8([ <gis b!> <a c'>])
 << { d'2( a4 bes!) } \\ { bes4( b c' e) } >> <f a>4 r r <d d'>8.. <d d'>32
 <g, g>4 << { bes8.. bes32 } \\ { bes8.. bes32 } >> <g bes>4 <f aes>
 << { g2( aes4 bes) } \\ { f2.( g4) } >> <f aes>4 r r2 R1 R1 R1 R1 R1 R1
 << { b2\rest c'4\rest ees'4~ ees'4~ ees'16( d'! f' d') bes4 f'4~ f'4~ f'16( e'! g' e') c'4 e'4 f'2 } \\
 { R1 a!4( bes8) b,8\rest c2\rest b4( c'8) b,8\rest b,4\rest bes4~ bes16 aes( c' aes g f aes f) } >>
 <des f'>8..[ <des des'>32 <des des'>8.. <des des'>32]
 <c c'>16\staccato g,\staccato c\staccato e\staccato g\staccato e\staccato g\staccato e\staccato c8 r8 r4
 g16\staccato c\staccato e\staccato g\staccato c'\staccato g\staccato c'\staccato g\staccato e8 r8 r4
 c8 g,16 c e c e c e g, c e g e g e c8 r r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { c'16\rest c16\staccato e\staccato c\staccato e\staccato c\staccato e\staccato g\staccato bes8 s8 s4
 g16\staccato c\staccato e\staccato c\staccato e\staccato c\staccato e\staccato g\staccato
 bes8\staccato[ c'( b c')] d'4( f')~ f'( e' f') } \\
 { c8 f,8\rest f,4\rest f,8\rest <a c'>8([ <g bes> <f a>]) e8 f,8\rest f,4\rest f,8\rest a8([ gis a]) bes4( b c'2 f4) } >>
 r4 r <d d'>8.. <d d'>32 <g, g>4 << { bes8.. bes32 } \\ { bes8.. bes32 } >> <g bes>4 <f a>
 << { g2( a4 bes) a4 a8.. a32 d4 b4\rest b4\rest bes8.. bes32 e4 b4\rest } \\
 { f2.( e4) f4 g,4\rest g,2\rest R1 } >> R1 r4 <a c'> r <a c'> r <bes d'> r <b d'> r << { c'4 } \\ { c'4 } >> r2
 R1 <a f'>2\f( <c' ees'> <bes d'>4) r4 r2 << { f4. f8( a[ c' ees' a]) } \\ { f8\f([ a c' a] f[ ees c f]) } >> <d bes>4 r r2
 << { f'8\pp c'8\rest c'4\rest f'8 c'8\rest c'4\rest f'8 c'8\rest c'4\rest c'2\rest c'4.( a8 f) a8\rest a4\rest } \\
 { R1 R1 R1 } >> <f a>8\pp r <a c'> r <f a> r r4^\fermata \bar "||"
}