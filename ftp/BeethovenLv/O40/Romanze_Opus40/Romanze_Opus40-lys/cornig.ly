\version "2.10.3"

 cornig = {
 \set Staff.instrumentName = \markup { \center-align { "Corni in G." } }
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 4/4
 \partial 2 r2 R1 R1 R1 r2 <e' c''>4\p << { g'4 } \\ { g'4 } >> <e' c''>4.( <g' d''>8 <c'' e''>4 <d'' f''>)
 <c'' e''>4( <g' d''>8) r8 <e' e''>4\staccato <e' e''>\staccato
 << { e''4.~ e''8 d''4\staccato( d''4\staccato) } \\ { e'4.( c''8) d''4( c''4) } >> <g' d''>2 r R1 R1 R1
 r2 <g g'>4\p <g g'> <g g'> <g g'> r2 <g g'>4. <g g'>8 <g g'>4 r r4 r8 <c' c''>\f
 \set doubleSlurs = ##t <e' c''>4\p( <g' d''>) \set doubleSlurs = ##f <e' c''>8 <g g'>\f[ <g g'> <g g'>] <g g'>2
 <g g'>2 r2 r8 <g g'>\ff[ <g g'> <g g'>] <g g'>2\sf
 <c'' e''>8.[ <d'' f''>16\staccato <e'' g''>8\staccato <c'' e''>\staccato] <d'' f''>8 r <g' d''> r <e' c''>8 r r4 r2
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 \set doubleSlurs = ##t << { <g' d''>2( <e' c''>8) } \\ { s4\< s16\! s16\> s8 s8\! } >> r8 r4 \set doubleSlurs = ##f
 R1 R1 R1 r2 <e' c''>4\p( g'4) <e' c''>4.( <g' d''>8 <c'' e''>4 <d'' f''>) <c'' e''>4( <g' d''>8) r8
 <e' e''>4\staccato_\markup { \italic "cresc." }( <e' e''>\staccato)
 << { e''4. e''8 d''8[( e'' d'') d''] } \\ { e'4.( c''8) d''8\p([ e'' d'' c'']) } >>
 <g' d''>8 r8 r4 r2 R1 R1 R1 r2 <g g'>4\p <g g'> <g g'>2 r2 <g g'>4. <g g'>8 <g g'>4_\markup { \italic "cresc." } <g g'>
 r4 r8 <c' c''>8\f <c' c''>4\p <g g'> <c' g'>8 <g g'>8\f[ <g g'> <g g'>] <g g'>2 <g g'>2 r2
 r8 <g g'>8\ff[ <g g'> <g g'>] <g g'>2\sf <c'' e''>8.[ <d'' f''>16\staccato <e'' g''>8\staccato <c'' e''>\staccato]
 <d'' f''>8 r <g' d''> r <e' c''>8 r8 r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 <g' d''>8\p r8 r4 r2 R1 r2 <g g'>2\p~ <g g'>4. <g' d''>8( <c'' e''>4 <d'' f''> <c'' e''> <g' d''>8) r8
 <e' e''>4\staccato~ <e' e''>4\staccato << { e''4. e''8 d''4\staccato~ d''4\staccato } \\ { e'4.( c''8) d''4( c''4) } >>
 <g' d''>8 r8 r4 <g g'>2~ <g g'>2 r2 <g g'>4. <g g'>8 <g g'>8 r8 r4
 r4 r8 <c' c''>8 << { g'4 } \\ { g'4 } >> <g g'>4 <c' g'>8 r8 r4 <g g'>2\f <g g'>2 <d'' f''>8 r <g' d''> r
 <c'' e''>8 r8 r4 r2 <c'' e''>8.[ <d'' f''>16\staccato <e'' g''>8\staccato <c'' e''>\staccato] <g g'>4. <g g'>8
 <g g'>4. <g g'>8 <g g'>8 r r4 R1 r8 <g g'>\p\staccato([ <g g'>\staccato <g g'>\staccato]) <g g'>8 r8 r4
 r8 <g g'>\p\staccato([ <g g'>\staccato <g g'>\staccato]) <g g'>8 r8 r4
 r2 <e' c''>8\ff r <g' e''> r <c' c''>2^\fermata \bar "|."
}