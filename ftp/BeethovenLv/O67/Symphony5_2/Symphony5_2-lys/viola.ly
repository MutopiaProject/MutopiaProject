\version "2.16.2"



pizz = \markup{\italic "pizz."} 
arco = \markup{\italic "arco"} 



 viola = {
 %\set Staff.instrumentName = "Viola.          "
 \set Staff.midiInstrument = "viola"
 \override MultiMeasureRest #'expand-limit = 1
 \compressFullBarRests
 \clef alto
 \key aes \major
 %\time 3/8
 \partial 8 ees16.\p( aes32_\markup { \italic "dolce" }) c'8\staccato[ c'16.( bes32 aes16. c'32)]
 f8~ f16.([ a32 bes16. c'32]) des'16.([ c'32 bes16. des'32 g16. bes32]) e16.([ g32]) c'8(~ c'16. bes32)
 a16.([ f32]) bes8.( des'16) g16.([ ees32]) aes!8[ aes16.( c'32)] ees'4.\f c'8\p r8 <ees c'>16.( <ees aes>32)
 <ees g>4.\f( <ees aes>8\p) r8 r 
R4.*5  aes'4.\p ees'4._\markup { \italic "cresc." }
 << { des'8[ des' des'] c'8 } \\ { bes8\f[ bes bes16.( g32)] aes8\p } >> r8 r r8 r \times 2/3 { des16([ c des]) }
 c16 r c\p r c r c8 r r
 \times 2/3 { c16\staccato[ aes\staccato ees\staccato] }
 \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { c16[ aes ees] ees[ bes g]
 ees[ bes g] ees[ aes c] ees[ aes bes] ees[ c' aes] ees[ c' aes] ees[ des' bes] ees[ ees' c'] aes[ c' ees'] } aes'8
 r8 a'4\pp r8 a'4 c''4.\ff c''16.\staccato g'32\staccato e'8\staccato[ <g f'>\staccato] <c g e'>8 r r
 \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { e16\staccato_\markup { \dynamic ff \italic sempre }[ c'\staccato g\staccato] e[ c' g] g[ d' b]
 g[ e' c'] g[ e c] g[ c' d'] g[ e' c'] g[ e' c'] g[ f' d'] g\sf[ g' e'] c'[ g e] c[ e' f'] c\sf[ g' e'] c'[ g e] c[ <c' e'> <d' f'>] }
 <e' g'>8 r r r8 r g'8\pp~ g'4 g'8~ g'4 g'8~ g'4._\markup { \dynamic p \italic sempre } aes'4.~ aes'4.
 aes'4.( fes'4. ees'4. des'4._\markup { \italic "cresc." }) bes8\f\staccato ees\f\staccato r
 r8 r ees16\p_\markup { \italic "   dolce" }( aes c'16 bes aes g aes c') f16( a bes a bes c')
 des'16( c' bes des' g bes) e( g c' g c' bes) a( f bes c' des' bes) g16 ees \acciaccatura bes32 aes!16 g aes c'
 d'\f( ees' f' ees' d' ees') c'8\p r16 c'16_\markup { \italic "cresc." }[ c'( aes)] <ees g>4.\f <ees aes>8\p r r 
 R4.*5 aes'4.\p ees'4._\markup { \italic "cresc." }
 << { des'8[ des' des'] c'8 } \\ { bes8\f[ bes bes16.( g32)] aes8 } >> r8 r
 \override TupletNumber #'transparent = ##f r8 r \times 2/3 { des16\f([ c des]) } c16 r c\p r c r c8 r r
 c32^\markup { \italic "dolce" }([ ees aes ees]) c([ ees aes ees]) ees([ g bes g])
 ees32([ aes c' aes] ees[ aes ees c]) c([ aes ees bes]) ees([ aes c' aes]) ees([ aes c' aes]) ees([ bes des' bes])
 ees32([ c' ees' c'] aes[ c' ees' g'] aes'8) r32 a'32\pp[ a' a'] a'16[ a' a'] r r32 a'32[ a' a'] a'16[ a' a'] r
 c''32\ff[ c'' c'' c''] c''[ c'' c'' c''] c''[ c'' c'' c'']
 c''[ c'' c'' g'] e'[ e' e' c'] g'[ g g' g'] c'8 r r
 e32\staccato[ g\staccato c'\staccato g\staccato] e[ g c' g] g[ b d' b]
 g[ c' e' c'] g[ c' g e] c[ g c' d'] g[ c' e' c'] g[ c' e' c'] g[ d' f' d']
 g\sf[ e' g' e'] c'[ g e g] c[ c' e' f'] g\sf[ e' g' e'] c'[ g e g] c[ c' <c' e'> <d' f'>]
 <e' g'>8 r r r8 r g'8\pp~ g'4 g'8~ g'4 g'8~ g'4._\markup { \dynamic pp \italic sempre }
 aes'4.~ aes'4. aes'4.( fes'4. ees'4. des'4._\markup { \italic "cresc." })
 bes16\f ees16\ff\staccato[ ees'\staccato] r16 r8
 r8 r ees32_\markup {\dynamic p \italic "dolce" }([ g aes bes]) c'32([ bes aes g] aes[ bes aes g] aes[ bes c' aes])
 f32([ g f e] f[ a bes a] bes[ c' des' c']) des'([ c' des' c'] bes[ des' aes! des'] g[ des' f des'])
 e32([ g a b] c'[ g a b] c'[ g c' bes!]) a([ c' f c'] bes[ des' f des'] bes[ des' aes! des'])
 g\pp([ bes ees bes] aes[ c' ees c'] aes[ c' ees c']) g([ ees' bes ees'] g[ ees' bes ees'] g[ ees' bes ees']) c'8 r r
 ees16^\pizz[ aes] ees16[ aes ees aes] f[ aes] f[ bes f bes] f[ g] f[ g f g]
 g16[ c'] g[ c' g c'] f[ c'] f[ bes f bes] ees[ bes] ees[ aes ees aes] ees[ g] ees[ g ees g]
 aes16[ <aes c'>\f^\arco] <aes c'>4:16
 <aes c'>4.:16 <a c'>16 <a c'> <bes des'>4:16 << { des'4:16 d'16 g } \\ { bes16[ bes bes aes!] g[ f] } >>
 <e g>16 <c c'> <c c'>4:16 <a c'>16 <a c'> bes4:16
 <g bes>16[ <g bes>] <aes! c'>[ <ees ees'> <ees ees'> <ees ees'>]
 <ees ees'>8~ <ees ees'>32( ees f g aes[ bes c' d']) ees'8~ ees'16( f'32 g' aes'[ bes' c'' d''])
 ees''4^\fermata g8\pp g8 r g g r g g r g g_\markup { \italic sempre \dynamic pp } r g g r g
 g8 r ees ees r ees ees r ees ees8\f r r
 R4.*10
 r8 r r16 g\p\staccato aes16\staccato[ bes\staccato c'\staccato] r r8
 R4.*2 r8 r e16.\f g32 c'8[ c' g] <c c'>4.~ <c c'>4 c'16.[ g32] <c c'>8[ <c c'> <c c'>]
 <c c'>4.~ <c c'>4 <c c'>16.[ <c c'>32] <c c'>4 <c c'>16.[ <c c'>32] <c c'>4 <c c'>16.[ <c c'>32] <c c'>4 r8
 r8 r c16.\p([ e32] g8\staccato) r8 c16.([ f32] aes8\staccato)
 r8 ees!16.([ g32]) \override TupletNumber #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { bes16\staccato[ ees\staccato g\staccato] bes\staccato[ ees\staccato g\staccato]
 bes\staccato[ ees\staccato g\staccato] bes\staccato_\markup { \italic più \dynamic p }[ ees\staccato g\staccato]
 bes\staccato[ ees\staccato g\staccato] bes\staccato[ ees\staccato g\staccato] }
 bes32\pp([ g ees g]) bes([ g ees g]) bes([ g ees g]) bes8 r r R4. R4. r8 r <ees aes>8^\pizz
 <ees aes>8[ <ees aes> <ees aes>] <ees g>[ <ees g> <ees g>] <ees aes>[ <ees aes> <ees aes>]
 <ges bes>[ <ges bes> <ges bes>] <ges ces'>[ <ges ces'> <ges ces'>]
 <ges bes>[ <ges bes> <ges bes>] <ees aes>[ <ees aes> <ees aes>]
 <ees g!>8[ <ees g>16_\markup { \italic "cresc." } <ees aes> <ees aes> <ees aes>]
 <ees g>8[ <ees g>16 <ees aes> <ees aes> <ees aes>] <ees g>16\f\staccato[ <ees g>\staccato] r8 r 
 R4.*4
  r8 r8 r32  ees32\cresc^\arco([ f g] aes[ bes c' des'] ees'8.) r16
 r8 r8 r16 <ees ees'> <ees ees'>16[ <ees ees'> <ees ees'> <ees ees'> <ees ees'> <ees ees'>\!]
 << { <c' ees'>4.:32 f'4.:32 des'32[ des' des' des'] des'4:32 c'32[ g g g] g[ g g g] g[ c' c' c']
 c'[ a a a] f'[ f' f' f'] des'[ des' des' des'] ees'4:32 c'32[ c' c' c'] } \\
 { ees4.:32\ff f4.:32 bes32[ bes bes bes] des4:32 c32[ e e e] e[ e e e] e[ g g g]
 a32[ f f f] f[ f f f] des[ des des des] ees4:32 c32[ c c c] } >>
 << { ees'4.:32 ees'32 } \\ { <ees g bes>4.:32 <aes c'>32 } >> <ees aes>32[ <ees aes> <ees aes>] <ees aes>4:32
 <ees g>4.:32 aes32[ aes bes c] des[ ees f g] aes[ bes c' des'] ees'8 r r R4.*3
  r8 r16 aes16\p([ c' ees']) ees'16([ des']) c'8. c'16 c'16([ bes]) aes8. aes16 bes8[ bes bes16.( g32)]
 aes8 r bes16.([ g32]) aes8 r \times 2/3 { des16([ c des]) } c16\pp[ c'] r c' r c' r16 c' r c' r c' r16 des' r des' r des'
 r16 des' r des' r des' r16 des' r des' ees16\staccato[ f\staccato]
 ges16\staccato[ f\staccato ees\staccato f\staccato ges\staccato ees\staccato]
 f\staccato[ ees\staccato des\staccato ees\staccato f\staccato des\staccato]
 fes\staccato[ ees\staccato des\staccato ees\staccato fes\staccato des\staccato]
 ees32[ <ees aes> <ees aes> <ees aes>] <ees aes>4:32_\markup { \italic "cresc." }
 <ees aes>4:32 <ees g>32\f[ <ees g> <ees g> <ees g>] <ees aes>32[ <ees aes> <ees aes> <ees aes>]
 <ees aes>4:32\p_\markup { \italic "    cresc." } <ees aes>4:32 <ees g>32\f[ <ees g> <ees g> <ees g>]
 <ees aes>32[ <ees aes> <ees aes> <ees aes>] <ees aes>4:32_\markup { \dynamic p \italic "cresc." }
 <ees aes>32\ff[ <ees aes> <ees aes> <ees aes>] <ees g>8 r8 
R4.*4
 r8 r16 aes16_\markup { \dynamic p\italic dolce }([ c' ees'])
 << { ees'16([ des'] c'8.)[ c'16] } \\ { aes4_\markup { \italic "cresc." }~ aes16[ aes] } >>
 <ees' g'>16\f([ <des' f'>] <c' ees'>8.\sf)[ <ees ees'>16] <ees ees'>8\f[ <ees ees'>8.\sf\>] ees16 f8\p\! r8 r
 g8\pp r r ees4.~ ees4 ees16.[ ees32] ees4.~ ees4 ees16.[ ees32] ees4.~ ees4.~ ees4
 c16._\markup { \italic "cresc." }( ees32 aes4) c16.( ees32 aes8)[ c16.( ees32 aes8)]
 c16.[( ees32 aes8) c16.( ees32]
 \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { aes16\f\staccato)[ c\staccato ees\staccato]
 aes\staccato[ c\staccato ees\staccato] aes\staccato[ c\staccato ees\staccato]
 aes[ c ees] aes[ c' ees'] aes'[ <c' ees'> <c' ees'>] <c' ees'>[ <c' ees'> <c' ees'>]
 <c' ees'>[ <c' ees'> <c' ees'>] <c' ees'>[ <c' ees'> <c' ees'>] } <c' ees'>8\ff r r ees'\ff r r
 aes'8 r ees'\p\staccato aes'\staccato r r ees'8\ff r r aes8 r \bar "|."
}
