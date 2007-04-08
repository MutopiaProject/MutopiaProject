\version "2.7.40"

 violinoone = {
 \set Staff.instrument = "Violino I"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key c \minor
 \time 3/4
 \partial 4
 \repeat volta 2 { g8.^\markup { "Allegretto" }^\markup { "MENUETTO." }( c'16) ees'2( f'4\sf)
 g'2( aes'4\sf) bes'2 ees''4\sf ~ ees''( d'') f'8.( aes'16)
 c''2( e''4\sf) f''2 aes''4\sf ~ aes''( g'') b'4\staccato c''4 r }

 \partial 4
 \repeat volta 2 { r4 R2. R2. R2. e''2.\sf f''2( g''4\sf) f''2( g''4\sf) f''2( g''4\sf) f''4 r aes'8.\p( des''16)
 f''2_\markup { \italic "cresc." }( ges''4 g''! aes'' a'' bes'' b'' c''' des''' ees'''8 des''' c''' bes''!)
 aes''2( ges''4\sf) f''2( ges''4\sf) f''2( ges''4\sf) f''2. ~ f''2. \afterGrace ees''2. { d''16[ ees''] }
 d''2 aes''4 ~ aes''( g'') ees''4 ~ ees''_\markup { \italic "decresc." }( d'')
 aes'' ~ aes''( g'') ees''4 ~ ees''( d'') ees'' ~ ees''( d'') g8.( c'16)
 ees'2( f'4\sf) g'2( aes'4\sf) bes'2 ees''4\sf ~ ees''( d'' des''\staccato) c''2 f''4 ~ f''4( e'' ees''\staccato)
 d''2 aes''4 ~ aes''4_\markup { \italic "cresc." }( g'' fis'' f''! e'' ees''\sf) ~ ees''8( d'') c''4\staccato b'\staccato
 c''4 r r R2. <g' ees''>4\sf( <g' d''>) r <g' ees''>4\sf( <g' d''>) r R2. R2. aes''4.\sf( f''8[ d'' b']) }
 \alternative { { c''4 r } { c''4 \bar "" r \partial 4 r4 } }
 \break


 \repeat volta 2 {
 \key aes \major
 \once \override TextScript #'padding = #3.0
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { c'8\p^\markup { "Trio." }[ c' c'] ees'[ ees' ees'] aes'[ aes' aes']
 c''[ c'' c''] aes'[ aes' aes'] ees'[ ees' ees']
 c'8[ c' c'] ees'[ ees' ees'] aes'[ aes' aes'] c''[ c'' c''] aes'[ aes' aes'] ees'[ ees' ees']
 des'[ des' des'] ees'[ ees' ees'] bes'[ bes' bes'] des''[ des'' des''] bes'[ bes' bes'] ees'[ ees' ees']
 des'[ des' des'] des''[ des'' des''] bes'[ bes' bes'] g'[ g' g'] ees'[ ees' ees'] des'[ des' des']
 c'[ c' c'] ees'[ ees' ees'] aes'[ aes' aes'] c''[ c'' c''] ees''[ ees'' ees''] aes''[ aes'' aes'']
 d'_\markup { \italic "cresc." }[ d' d'] f'[ f' f'] aes'[ aes' aes'] bes'[ bes' bes'] d''[ d'' d''] f''[ f'' f'']
 bes''[ bes'' bes''] d'''[ d''' d'''] f'''[ f''' f''']
 aes'''[ aes''' aes'''] aes'''[ aes''' aes'''] aes'''[ aes''' aes'''] } aes'''2.^\fermata\sf
 r8 aes''8\p([ g'' f'' ees'' d'']) ees''4.( bes'8 g'4\staccato) c''4.( aes'8 f'4\staccato)
 << { ees'2( g'8 f') } \\
 { \override NoteHead #'font-size = #-2 \stemUp s4 f'16[ ees' d' ees'] s4 } >>
 ees'4 r r }

 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { g8^\p[ g g] bes[ bes bes] ees'[ ees' ees'] g'[ g' g'] ees'[ ees' ees'] bes[ bes bes]
 g[ g g] bes[ bes bes] ees'[ ees' ees'] g'[ g' g'] ees'[ ees' ees'] bes[ bes bes]
 aes[ aes aes] bes[ bes bes] f'[ f' f'] aes'[ aes' aes'] f'[ f' f'] bes[ bes bes]
 aes[ aes aes] aes'[ aes' aes'] f'[ f' f'] d'[ d' d'] bes[ bes bes] aes[ aes aes]
 g_\markup { \italic "cresc." }[ g g] bes[ bes bes] ees'[ ees' ees']
 g'[ g' g'] bes'[ bes' bes'] ees''[ ees'' ees''] aes[ aes aes] c'[ c' c'] ees'[ ees' ees']
 aes'[ aes' aes'] c''[ c'' c''] ees''[ ees'' ees''] bes[ bes bes] ees'[ ees' ees'] g'[ g' g']
 bes'[ bes' bes'] ees''[ ees'' ees''] g''[ g'' g''] bes''[ bes'' bes''] ees'''[ ees''' ees'''] g'''[ g''' g''']
 #(set-octavation 1) bes'''[ bes''' bes'''] des''''[ des'''' des''''] des''''[ des'''' des''''] }
 des''''2.^\fermata #(set-octavation 0)
 r8 des'''8\p[ c''' bes'' aes'' g''] aes''4.( ees''8 c''4\staccato) f''4.( des''8 bes'4\staccato)
 << { aes'2( c''8 bes') } \\
 { \override NoteHead #'font-size = #-2 \stemUp s4 bes'16[ aes' g' aes'] s4 } >> aes'4 r r
 << { aes2^\markup { \italic "decresc." }( c'8 bes) } \\
 { \override NoteHead #'font-size = #-2 \stemUp s4 bes16[ aes g aes] s4 } >> aes4 r r
 f'4\pp r r ees' r r d'^\markup { "Men. D.C." } r r r4 r \bar "|."
}