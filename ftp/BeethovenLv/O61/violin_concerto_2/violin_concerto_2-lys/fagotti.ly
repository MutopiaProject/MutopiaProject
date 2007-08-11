\version "2.10.3"

 fagotti = {
 \set Staff.instrumentName = "Fagotti."
 \set Staff.midiInstrument = "bassoon"
 \clef bass
 \key g \major
 \time 4/4
 \partial 4 r4 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 \cadenzaOn r4^\fermata r2^\fermata s2 s8 r4 \cadenzaOff \bar "|" R1 R1 R1 R1
 R1 << { d2\rest f4\rest g8.\p_\markup { \italic "    dolce" } g16 a4( b8) f8\rest f4\rest g8. g16
 a4( b8) f8\rest f4\rest b8. b16 g'4( e' b cis') } \\ { R1 R1 R1 R1 } >>
 \cadenzaOn cis'4^\fermata s4 s4 r2^\fermata s4 fis'8. cis'16 \cadenzaOff \bar "|"
 << { dis'4( e'8) g8\rest g4\rest e'8. b16 cis'4( d'!2.)~ d'4( c'! a b)  } \\ { R1 R1 R1 } >>
 \setTextCresc g2\<( d8[ g b d']) d'4( c'8 b a[ c' b a]) g2.\!\f r4
 \clef tenor r4 <b d'>8.\f <b d'>16 <b d'>4 r4 r4 <b d'>8. <b d'>16 <b d'>4 r4 R1
 r4 << { fis'8. fis'16 fis'4 } \\ { fis'8. fis'16 fis'4 } >> r4
 r4 << { e'8. e'16 e'4 } \\ { e'8. e'16 e'4 } >> r4 \clef bass r4 <d fis>4( <e g> <f gis>)
 << { a2 a4( b) g!2 d8([ g b d']) d'4( c'8 b a[ c' b a]) } \\ { fis!2 d2 g,( b, c d) } >>
 \cadenzaOn << { g2~ g8 } \\ { g2\p~ g8 } >> r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 \cadenzaOn << { <g b>2~ <g b>8 } \\ { <g b>2~ <g b>8 } >> r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 \cadenzaOn <g b>8 r8 r4 s4 s2 s2 <g b>8 r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 <g b>8 r8 r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <g b>1\pp <g c'>1 \cadenzaOn <g d'>1 s1 s4 \cadenzaOff \bar "|"
 r4 <g d'>2 <a d'>4 << { b2 d'2 } \\ { b1 } >> <c' e'>1
 \cadenzaOn << { d'8 } \\ { d'8 } >> r8 r4 s2 r1 s1 s8 \cadenzaOff \bar "|"
 << { d'8 } \\ { d'8 } >> r8 r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 \cadenzaOn r2( s2 s4 r4 s4 r8) s8  \cadenzaOff \bar "||"
}