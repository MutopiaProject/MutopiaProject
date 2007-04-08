\version "2.6.0"

 clarinetti = {
 \set Staff.instrument = \markup { \column { "Clarinetti" "in A" } }
 \set Staff.midiInstrument = "clarinet"
 \clef treble
 \key a \minor
 \time 2/4
 <g' c''>2\f\> ~ <g' c''>2\! ~ <g' c''>4\pp r R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 <g'' g'''>4\ff^\markup { \large \italic "ten." } <g'' g'''>8\staccato <g'' g'''>\staccato
 <g'' g'''>4\staccato( <g'' g'''>4\staccato)
 <g'' g'''>4 <g'' g'''>8\staccato <g'' g'''>\staccato <g'' g'''>4\staccato( <g'' g'''>4\staccato)
 <g'' g'''>4 <g'' g'''>8\staccato <a'' a'''>\staccato <bes'' bes'''>4\staccato( <bes'' bes'''>4\staccato)
 <bes'' bes'''>4 <bes'' bes'''>8\staccato <bes'' bes'''>\staccato <bes'' bes'''>4 r
 <bes' bes''>4^\markup { \large \italic "ten." } <bes' bes''>8\staccato <c'' c'''>\staccato
 <d'' d'''>4\staccato( <d'' d'''>4\staccato)
 <a' a''>4 <a' a''>8\staccato <b'! b''!>\staccato <c'' c'''>4\staccato( <c'' c'''>4\staccato)
 <g' g''>4 <g' g''>8\staccato <g' g''>\staccato <g' g''>4\staccato( <g' g''>4\staccato)
 <g' g''>4 <a' a''>8\staccato <b'! b''!>\staccato <c'' c'''>4 r4
 <bes' bes''>4_\markup { \large \italic "dimin." } <bes' bes''>8\staccato <c'' c'''>\staccato
 <d'' d'''>4\staccato( <d'' d'''>4\staccato)
 <a' a''>4 <a' a''>8\staccato <b'! b''!>\staccato <c'' c'''>4\staccato( <c'' c'''>4\staccato)
 <g' g''>4_\markup { \large \italic "sempre dimin." } <g' g''>8\staccato <g' g''>\staccato
 <g' g''>4\staccato( <g' g''>4\staccato)
 <g' g''>4 <a' a''>8\staccato <b'! b''!>\staccato <c'' c'''>4\p r4
 <d'' f''>4^\markup { \large \italic "ten." } <d'' f''>8\staccato <d'' f''>\staccato
 <c'' ees''>4 r4 << { f''4\rest g''4 ~ g''4( e''! c'' e'') } \\
 { R2_\markup { \large \italic "dolce"} R2 R2 } >>

 e''4( <f' d''> ~ <f' d''>\< <e' c''> <d' b'> <e' c''> <f' d''> <g' e''> <a' f''>\!
 <b' g''>\> <d'' f''> <c'' e''>8 <e'' c'''>\!) <e'' c'''>4( <e'' g''>\< <c'' e''> <e'' g''>)
 <e'' g''>( <f'' a''> ~ <f'' a''> <e'' g''>\!)
 <d'' f''>\>( <c'' e''> <b' d''> <a' fis''> <b' g''>2\!)
 << { c'''4. c'''8
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \override TupletBracket #'transparent = ##t
 \times 2/3 { c'''8[ b'' a''\staccato] g''\staccato[ fis''\staccato e''\staccato] } d''4( e''8) fis''8
 g''4 ~ \times 2/3 { g''8([ a'' b'']) } c'''4. c'''8 \times 2/3 { c'''8([ b'' a''] g''[ fis'' g'']) } }
 \\ { R2 R2 R2 R2 R2 R2 } >>
 << { g''2 ~ g''4( a''8 g'') g''2 ~ g''4( \times 2/3 { b''8[ a'' g'']) }
 g''2 ~ \times 2/3 { g''8([ f'' e''] g''[ f'' a']) } } \\
 { des''2_\markup { \large \italic "cresc." }( d''!) des''2( d''!)
 des''4._\markup { \large \italic "dimin." } bes'8 a'4
 \times 2/3 { r8 a'8[ f'] } } >> <e' c''>4\p( <b' d''> <c'' e''>_\markup { \large \italic "cresc." }
 \times 2/3 { <d'' f''>8[ <dis'' fis''> <e'' g''>]) }
 << { g''2 ~ g''4( a''8 g'') g''2 ~ g''4( \times 2/3 { b''8[ a'' g'']) } } \\ { des''2( d''!) des''2( d''!) } >>
 R2 R2 R2 R2
 \bar "||"

 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 r4 <g' g''>8\ff\staccato <g' g''>\staccato
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 b'4\p^\markup { \large \italic "ten." } b'8\staccato c''\staccato d''4 d''8 ees'' f''4 f''8 g''
 aes''8( g''16 fis'' g'') g'\staccato a'!\staccato b'\staccato
 c''16\ff d'' ees'' d'' c'' ees'' d'' c'' g' a' b' c'' d'' ees'' f'' g''
 f''16 d'' ees'' f'' g'' f'' ees'' d'' ees'' d'' ees'' f'' g'' g' a' b'
 c''16 d'' ees'' d'' c'' ees'' d'' c'' g' a' b' c'' d'' ees'' f'' g''
 f''16 d'' ees'' f'' g'' f'' ees'' d'' c''4 r4
 <d'' f''>4\p^\markup { \large \italic "ten." } <d'' f''>8\staccato <d'' f''>\staccato <c'' ees''>8 r r4

 << { g''4\rest g''4 ~ g''( e''! c'' e'') } \\ { R2_\markup { \large \italic "dolce" } R2 R2 } >>
 e''4( <f' d''> ~ <f' d''>\< <e' c''> <d' b'> <e' c''> <f' d''>\!
 <g' e''>\> <a' f''> <b' g''> <d'' f''> <c'' e''>8 <e'' c'''>\!)
 <e'' c'''>4\<( <e'' g''> <c'' e''> <e'' g''>)
 <e'' g''>4( <f'' a''> ~ <f'' a''> <e'' g''>\! <a' f''>\> <g' e''> <a' f''> <b' g''> <c'' e''>2\!)
 <a' f''>4_\markup { \large \italic "dimin." }( <b' g''> <c'' e''>2) <a' f''>4( <b' g''>)
 << { c''4^\markup { \large \italic "ten." } c''8\staccato( c''\staccato)
 c''4\staccato( c''\staccato)
 c''4 c''8\staccato( c''\staccato) c''4\staccato( c''\staccato) } \\
 { c''4\pp c''8 c'' c''4 c'' c''4 c''8 c'' c''4 c'' } >>
 <d'' f''>4\ff^\markup { \large \italic "ten." } <c'' ees''>8\staccato <d'' f''>\staccato
 \bar "||"

 <ees'' g''>8 r r4 R2 R2
 <d'' f''>4\ff^\markup { \large \italic "ten." } <c'' ees''>8\staccato <d'' f''>\staccato
 <ees'' g''>8 r r4 R2 R2 R2 R2
 <b' g''>4\pp^\markup { \large \italic "ten." } <b' g''>8\staccato( <b' g''>\staccato)
 <c'' g''>4\staccato( <c'' g''>\staccato) R2 R2 R2 R2 R2 R2
 <d'' a''>4\pp <d'' a''>8\staccato( <d'' b''>\staccato) <c'' c'''>4\staccato( <c'' c'''>\staccato)
 R2 R2 R2 R2 <d'' f''>4\pp^\markup { \large \italic "ten." } <d'' f''>8\staccato <d'' f''>\staccato
 <c'' ees''>4 r4 R2 R2 R2 <g' c''>2\f\> ~ <g' c''>2 ~ <g' c''>8\!\pp r8 r4
 \bar "|."

}