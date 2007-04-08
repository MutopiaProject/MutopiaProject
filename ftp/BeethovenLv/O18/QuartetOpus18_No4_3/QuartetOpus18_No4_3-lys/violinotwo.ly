\version "2.7.40"

 violinotwo = {
 \set Staff.instrument = "Violino II"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key c \minor
 \time 3/4
 \partial 4
 \repeat volta 2 { r4 c'2( d'4\sf) ees'2 ees'4\sf ees'2 ges'4\sf ~ ges'4( f') r
 c'2( e'4\sf) f'2 c''4\sf ~ c''4 c''\staccato f'\staccato ees'!\staccato r }

 \partial 4
 \repeat volta 2 { g8.^\f( c'16) e'2( f'4 fis' g' aes' a' bes' c'')
 des''2\sf( c''8 bes') aes'!2( bes'4\sf) aes'2( bes'4\sf) aes'2( bes'4\sf) aes'4 r aes8.\p( des'16)
 f'2_\markup { \italic "cresc." }( ges'4 g'! aes' a' bes' b' c'' des'' ees''8 des'' c'' bes'!)
 aes'!4( f' c''\sf) aes'( des'' c''\sf) aes'( des'' c''\sf) aes'4 aes'( d''!) ~ d''( g' c'') ~ c'' c'' c'' c''( b'2)
 c''2( fis'4) g'2_\markup { \italic "decresc."}( b'4 c''2) c''4 ~ c''( b') c''4 ~ c''( b') r
 c'2( d'4\sf) ees'2 ees'4\sf ees'2 ges'4\sf ~ ges'4( f') bes' ~ bes'( a') aes'( d'' c'') c''( c'' b')
 b'4( f''_\markup { \italic "cresc." } ees'') ees''( d'' c'') c'\sf ~ c'8( d') ees'4\staccato f'\staccato
 ees'4 r g'\sf ~ g'( f') d'\staccato ees'\sf( d') r ees'\sf( d') r r r aes'\sf ~ aes'( g') ees'\staccato
 << { d'4.( f'8[ d' f']) } \\ { g2.\sf } >> }
 \alternative { { <g ees'>4 r } { <g ees'>4 \bar "" r \partial 4 r4 } }
 \break

 \repeat volta 2 {
 \key aes \major
 r4 ees''4\p\staccato ees''\staccato ees''4.( c''8 aes'4\staccato) ees'4 r r R2.
 r4 ees''\staccato ees''\staccato ees''4.( des''8 bes'4\staccato) ees'4 r r R2.
 r4 ees''\staccato ees''\staccato ees''4.( c''8 aes'4\staccato)
 r4 aes''\staccato_\markup { \italic "cresc." } aes''\staccato aes''4.( f''8 d''4\staccato)
 r4 aes''\staccato aes''\staccato aes''4.( f''8 d''4\staccato) bes'2.\sf^\fermata
 r4 r f'\p( ees') r r ees' r r r bes( d' ees') r r }

 r4 bes'\p\staccato bes'\staccato bes'4.( g'8 ees'4\staccato) bes4 r r R2.
 r4 bes'\staccato bes'\staccato bes'4.( aes'8 f'4\staccato) bes4 r r R2.
 r4 bes'\staccato_\markup { \italic "cresc." } bes'\staccato bes'4.( g'8 ees'4\staccato)
 r4 c''\staccato c''\staccato c''4.( aes'8 ees'4\staccato) r4 des''\staccato des''\staccato
 des''4.( bes'8 g'4\staccato) g''4.( des''8 bes'4\staccato) bes''4.( g''8 ees''4\staccato)
 ees''2.\sf^\fermata r4 r bes'4\p( aes') r r aes' r r r ees'( g' aes') r r
 r4 aes^\markup { \italic "decresc." }( g aes) r r d'\pp r r c' r r b r r r r \bar "|."
}