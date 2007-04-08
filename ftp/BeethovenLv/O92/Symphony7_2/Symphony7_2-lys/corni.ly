\version "2.6.0"

 corni = {
 \set Staff.instrument = \markup { \column { "Corni" "in E" } }
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key a \minor
 \time 2/4
 <c' c''>2\f\> ~ <c' c''>2\! ~ <c' c''>4\pp r4 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 r4 <c' c''>_\markup { \large \italic "cresc." } r4 << { f''4 } \\ { f''4 } >>

 <c' c''>4\ff^\markup { \large \italic "ten." } <c' c''>8\staccato <c' c''>\staccato
 <c' c''>4\staccato( <c' c''>4\staccato)
 <c' c''>4 <c' c''>8\staccato <c' c''>\staccato <c' c''>4\staccato( <c' c''>4\staccato) <c' c''>4
 << { c''8\staccato d''\staccato ees''4\staccato( ees''\staccato)
 ees''4 ees''8\staccato( ees''\staccato) ees''4 } \\
 { c''8 d'' ees''4 ees'' ees''4 ees''8 ees'' ees''4 } >> r4
 << { ees''4^\markup { \large \italic "ten." } ees''8\staccato f''\staccato
 g''4\staccato( g''\staccato)
 d''4 d''8\staccato e''!\staccato f''4\staccato( f''\staccato) } \\
 { ees''4 ees''8 f'' g''4 g'' d''4 d''8 e'' f''4 f'' } >>
 <c' c''>4 <c' c''>8\staccato <c' c''>\staccato <c' c''>4\staccato( <c' c''>\staccato)
 <c' c''>4 << { d''8\staccato e''\staccato f''4 } \\ { d''8 e'' f''4 } >> r4
 << { ees''4 ees''8\staccato f''\staccato g''4\staccato( g''\staccato)
 d''4 d''8\staccato e''!\staccato f''4\staccato( f''\staccato) } \\
 { R2_\markup { \large \italic "dimin." } R2 R2 R2 } >>
 <c' c''>4_\markup { \large \italic "sempre dimin." } <c' c''>8\staccato <c' c''>\staccato
 <c' c''>4\staccato( <c' c''>\staccato)
 <c' c''>4 << { d''8\staccato e''\staccato f''4\p f''4\rest } \\ { e'4\rest R2 } >> R2 R2 R2
 \bar "||"

 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 <g' g''>2\p <c' c''> ~ <c' c''> ~ <c' c''>
 f''4. f''8
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \override TupletBracket #'transparent = ##t
 \times 2/3 { f''8([ e'' d''\staccato]) c''\staccato[ b'\staccato a'\staccato] }
 g'4( a'8) b'\staccato c''4 ~ \times 2/3 { c''8([ b' c'']) }
 << { c''2 ~ c''4( d''8 c'') c''2 ~ c''4( \times 2/3 { e''8[ d'' c'']) }
 c''2_\markup { \large \italic "dimin." } d'' c''4 } \\
 { c''2_\markup { \large \italic "cresc." } ~ c''4 d''8 c''
 c''2 ~ c''4( \times 2/3 { e''8[ d'' c'']) } R2 R2 r4 } >>
 <c' c''>4\p <c' c''>2_\markup { \large \italic "cresc." }
 << { c''2 ~ c''4( d''8 c'') c''2 ~ c''4( \times 2/3 { e''8[ d'' c'']) } } \\
 { c''2 ~ c''4 d''8 c'' c''2 ~ c''4( \times 2/3 { e''8[ d'' c'']) } } >>
 << { c''2 f'' ees''4\p ees'' ees''2 ~ ees''2 ~ ees''2 ~ ees''2 ~ ees''2
 ees''4._\markup { \large \italic "cresc." } ees''8 } \\
 { c''4 c' R2 R2 R2 R2 c''4\pp r R2 c''4\pp r R2 } >>
 R2 R2 R2 R2 R2 <g g'>8\ff\staccato <g g'>8\staccato r4
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 r8 <c' c''>4._\markup { \large \italic "cresc." }
 c''4\ff c''8\staccato c''\staccato c''4\staccato( c''\staccato)
 c''4 c''8\staccato c''\staccato c''4\staccato( c''\staccato)
 c''4 c''8\staccato c''\staccato c''4\staccato( c''\staccato)
 c''4 d''8\staccato e''\staccato f''4 r
 <c' c''>4\p^\markup { \large \italic "ten." } <c' c''>8\staccato <c' c''>\staccato
 << { c''8 } \\ { c''8 } >> r8 r4 R2
 \bar "||"

 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 << { ees''4^\markup { \large \italic "ten." } ees''8\staccato( ees''\staccato) } \\
 { ees''4\ff ees''8 ees'' } >>
 \bar "||"

 << { ees''8 } \\ { ees''8 } >> r8 r4 R2 R2
 << { ees''4^\markup { \large \italic "ten." } ees''8\staccato( ees''\staccato) } \\
 { ees''4\ff ees''8 ees'' } >>
 << { ees''8 } \\ { ees''8 } >> r8 r4 R2 R2 R2 R2 R2 R2
 << { c''4\pp c''8\staccato( d''\staccato) } \\ { R2 } >> <c'' ees''>4\staccato( <c'' ees''>\staccato)
 R2 R2 R2 R2 R2 R2
 << { c''4 c''8\staccato( c''\staccato) c''4\staccato( c''\staccato) } \\
 { c''4\pp c''8 c'' g'4 c'' } >> R2 R2
 <c' c''>4\pp^\markup { \large \italic "ten." } <c' c''>8\staccato <c' c''>\staccato
 << { c''4 } \\ { c''4 } >> r4 R2 R2 R2
 <c' c''>2\f\> ~ <c' c''>2 ~ <c' c''>8\!\pp r8 r4
 \bar "|."

}