\version "2.10.3"

 clarinetti = {
 \set Staff.instrumentName = \markup { \center-align { "Clarinetti" "in C." } }
 \set Staff.midiInstrument = "clarinet"
 \clef treble
 \key g \major
 \time 4/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 48
 \partial 4 r4^\markup { "TUTTI." }^\markup { \bold "Larghetto." } R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { r2^\markup { "SOLO." } e''4\rest g'8.\p_\markup { \italic "    dolce" } g'16 a'4( b'8) e''8\rest e''4\rest
 b'8. b'16 g''4( e'' b' cis'') } \\ { R1 R1 R1 } >>
 \cadenzaOn
 << { cis''4^\fermata r2^\fermata s2 s8 fis''8. cis''16 } \\ { d'4\rest_\fermata f'2\rest_\fermata s2 s8 d'4\rest } >>
 \cadenzaOff \bar "|"
 << { dis''4( e''8) f''8\rest f''4\rest e''8. b'16 cis''4( d''!2.)~ d''4( c''! a' b') g'2( d'8[ g' b' d''])
 d''4( c''8 b' a'[ c'' b' a']) g'8 r d' r b r r4 } \\ { R1 R1 R1 R1 R1 R1 } >> R1 R1 R1
 \cadenzaOn s2 s4 r2^\fermata s4 r4 \cadenzaOff \bar "|" R1 R1 R1 R1 R1 R1
 \once \override TextScript #'padding = #2.0
 r4^\markup { "TUTTI." } <g' b'>8.\f <g' b'>16 <g' b'>4 r4 r4 <g' b'>8. <g' b'>16 <g' b'>4 r4 R1
 r4 << { fis'8. fis'16 fis'4 } \\ { fis'8. fis'16 fis'4 } >> r4
 r4 <e' e''>8. <e' e''>16 <e' e''>4 r4 r4 <d' d''>8. <d' d''>16 <d' d''>4 <d' d''>8. <d' d''>16
 <d' d''>1~ <d' d''>2 << { d'8([ g' b' d'']) d''4 c''8( b'\> a'[ c'' b' a'\!]) } \\ { d'2 c'1 } >>
 \cadenzaOn <b g'>2\p~ <b g'>8^\markup { "SOLO." } r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 \cadenzaOn <g' b'>2\p~ <g' b'>8 r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 \cadenzaOn <g' b'>8 r8 r4 s4 s2 s2 <g' b'>8 r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 <g' b'>8 r8 r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <d' g'>1\pp <e' a'>1 \cadenzaOn <c' fis'>1 s1 s4 \cadenzaOff \bar "|"
 r4 <b g'>2 <c' fis'>4 <d' g'>2 <g' d''>2 << { e''2.( c''4) } \\ { g'2( c''4 a') } >>
 \cadenzaOn <g' b'>8 r8 r4 s2 r1 s1 s8 \cadenzaOff \bar "|"
 <fis' c''>8 r8 r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1^\markup { "TUTTI." } R1 R1
 \cadenzaOn r2^\markup { "SOLO." }( s2 s4 r4 s4 r8) s8  \cadenzaOff \bar "||"
}