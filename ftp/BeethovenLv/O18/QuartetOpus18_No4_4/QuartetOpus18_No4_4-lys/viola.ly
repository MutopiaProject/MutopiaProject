\version "2.7.40"

 viola = {
 \set Staff.instrument = "Viola"
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key c \minor
 \time 4/4
 \repeat volta 2 { \partial 4 r4
 c'4\p r c' r c' r r <g ees'>\staccato
 <g f'>\staccato_\markup { \italic "cresc." } <g ees'>\staccato <g d'>\staccato <g ees'>\staccato <g d'>2.\f r4
 c'4\p r c' r c' r r bes bes\staccato g\staccato_\markup { \italic "cresc." } g\staccato fis\staccato
 g2.\sf }
 \repeat volta 2 { \partial 4 r4 g'4\p r c' r f' r bes r f' r c' r d'( b2^\fermata) r4
 c'4\p r c' r c'_\markup { \italic "cresc." } c' c' e' f'\staccato c'\f\staccato c'\staccato b\staccato <c c'>2. }
 \repeat volta 2 { \partial 4 r4
 c'1\p( des'1) ees'2( aes bes) bes'( a'\< bes'\! g'\> aes'!\! f'4) f'4( ees' des') des'2( c'4) }
 \repeat volta 2 { \partial 4 r4 R1 bes4( f' d'! bes) ees'4 r r2 aes4( ees' c' aes) ees2( g' f' d'!)
 bes'2_\markup { \italic "cresc." } g2( aes bes) c'1\p( des'1) ees'2( aes bes) bes'2( a'4 c'' bes' f')
 g'4( bes' aes'! c') des' des'( bes) ees'4 ~ }
 \alternative {
 { ees'4( g aes) } { aes4\staccato_\markup { \italic "cresc." } \bar "" fis\staccato g\staccato \partial 4 g4\staccato } }
 c4\p r c' r c' r r <g ees'>\staccato
 <g f'>\staccato_\markup { \italic "cresc." } <g ees'>\staccato <g d'>\staccato <g ees'>\staccato <g d'>2.\f r4
 c'4\p r c' r c' r r bes bes\staccato g\staccato_\markup { \italic "cresc." } g\staccato fis\staccato g2.\sf r4
 c8\p c' c' c' c'_\markup { \italic "cresc." } c' c' c' c' c' c' c' c' c' <g ees'> <g ees'>
 <g f'>8\f <g f'> <g ees'> <g ees'> <g d'> <g d'> <g ees'> <g ees'> <g d'>4 r r2
 c8\p c' c' c' c'_\markup { \italic "cresc." } c' c' c' c' c' c' c' bes bes bes bes bes\f aes' ees' ees' e' e' c' c' bes4 r r2
 g'4\p r c' r f' r bes r f' r c' r d'4( b2^\fermata) r4 c'4\p r c' r
 c'4\staccato_\markup { \italic "cresc." } c'\staccato c'\staccato e'\staccato
 f'\staccato c'\f\staccato c'\staccato b\staccato <c c'>2. r4
 c'8\sf c' c' c' c'4 r f'8\sf f' f' f' ees'4 r c'8\ff c' c' c' c' c' c' c' d'4 r r2
 c8\p c' c' c' c'_\markup { \italic "cresc." } c' c' c' c' c' c' c' c' c' e' e' f'\f f' d' d' ees'! ees' f' f' ees'4 r r r8
 \key c \major
 \repeat volta 2 {
 \partial 8 r8 r4 r8 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { g16([ a b] } c'2\fp) ~ c'2 e
 f4( e a g f' e' d' c') b4 r a r g r4 r r8 }
 \repeat volta 2 {
 \partial 8 r8 r4 r8 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { d'16([ e' fis'] } g'2\fp)
 d'4( e' b) r4 r4 r8 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { d'16([ e' fis'] } g'2\fp)
 b4( c' d' e' f'! e' a' g' f' e' d' c') ~ c'4 r <g d'> r }
 \alternative { { <g e'>4 r r r8 } { <g e'>4 \bar "" r r \partial 4 r4 } }
 \key c \minor
 \repeat volta 2 { r2 g'8\p( ees') f'\staccato d'\staccato c'4 r r <g ees'>
 <g d'>4\staccato_\markup { \italic "cresc." } ees'\staccato d'\staccato c'\staccato b4\f\staccato r r2
 r2 g'8\p( ees') f'\staccato d'\staccato ees'4 r r2 r4 bes8\f( a) g4\staccato a\staccato }
 \alternative { { g4 r r2 } { g4 r r e8\p( f) } }
 g4\staccato g( aes c') f\staccato f( g bes) ~ bes( aes8 g f ees d c) d4( b2^\fermata) r4
 r2 g'8\p( ees') f'\staccato d'\staccato
 c'4\staccato_\markup { \italic "cresc." } des'\staccato c'\staccato bes\staccato
 aes4\staccato ees'8\f( d'!) c'4\staccato d'\staccato c'4 r r g8\p( f e4\staccato) bes4( aes f d) aes( g ees)
 c4( c8 ees) f4\staccato fis\staccato g4_\markup { \italic "cresc." } a8 b c' b c' d'
 ees'8\f( c') d'\staccato b\staccato g( ees) f\staccato d\staccato
 c8\staccato c' c' c' c' c' c' c' c' c' c' c' c'4\staccato d'\staccato
 c'4 r r ees8( f g1\sf) ~ g2. ees'8( f' g'2.) ees'8( c' g2.) d'8( b g4\staccato) d'8( b g4\staccato)
 d'8( b g2.\ff^\fermata) r4 e'1\p( f'1) g'2( c') d'1 e'2( f') d'( e') a4( a' g' f') e'4 r r2
 g'2( c''2) ~ c''4( b' a' b') c''4 c'8( b a4) c'4 b4 r r2
 r4 e'( a d') r4 d'( g c') r a r b r c'2( bes!4 a) e'( a d') r d'( g c') r f4_\markup { \italic "cresc." } r f' r g' r g
 g4\pp\staccato( g\staccato g\staccato g\staccato) g1 g4\staccato( g\staccato g\staccato g\staccato) g1
 g4\staccato( g\staccato g\staccato g\staccato) g1 bes!4\staccato( bes\staccato bes\staccato bes\staccato)
 d2.( bes4) bes4\staccato( bes\staccato bes\staccato bes\staccato) bes1
 bes4\staccato( bes\staccato bes\staccato bes\staccato) d!2.( c'4) c'4_\markup { \italic "cresc." } c' c' c' c'2.( f4)
 fis4 fis fis fis fis2( c4) c'4 d'\f r r b\sf c'4( ees' d' c') b r r b\sf c'( ees' d' c') b\f r r2 R1
 <b d'>4\f r r2 R1 R1 R1^\markup { \musicglyph #"scripts.ufermata" }
 \break

 c4\ff c'2\sf c'4 ~ c' c'2\sf c'4 d' c' b c' b b b b c4 c'2 c'4 ~ c' c' bes! bes bes bes g fis g2. r4
 g'4 c'2\sf c'4 f' bes2\sf bes4 c4 c' c' c' d'4( b2) r4 c4\ff c'2 c'4 ~ c'4 c' c' e' f' c' c' b c' r r g\p g r r g
 c'4 r r <g g'>4_\markup { \italic "cresc." } <g g'> <g g'> <g g'> <g g'> c'4 c'2 c'4 ~ c'4 c'2 c'4
 r4 ees'8\f( d') c'4\staccato c'\staccato r4 d'8( c') b4\staccato b\staccato
 c'4\p c2_\markup { \italic "cresc." } c4 ~ c4 c2 c4 ~ c4 ees8\f( d) c4\staccato c\staccato
 r4 ees'8\f( d') c'4\staccato c'\staccato r4 ees'8\f( d') c'4\staccato c'\staccato
 r4 d'8\f( c') b4\staccato b\staccato c'4 r g2\sf ~ g4 r g2\sf ~ g4 r ees'2\sf( d'4) c' c' d'
 c'4 r g2\sf ~ g4 r g2\sf ~ g4 r ees' r R1 d'4_\markup { \italic "decresc." } r d' r R1 c'4\pp r r2
 d'4 r r e8\p( f g\sf e f d) c4\staccato e'4\staccato f'\staccato e'\staccato f'\staccato
 e8( f g\sf e f d) c4\staccato e'4\staccato f'\staccato e'\staccato f'\staccato
 e8( f g\sf e f d) c4\staccato r g8\sf( e f d) c4\staccato r g8\sf( e f d) c4\staccato r R1 R1 R1
 r2 r4 r8 \times 2/3 { g16\ff([ a b] } c'4) r8 \times 2/3 { g16([ a b] } c'4) r8 \times 2/3 { g16([ a b] } c'4) r4 r2 r2 r4^\fermata
 \bar "|."

}