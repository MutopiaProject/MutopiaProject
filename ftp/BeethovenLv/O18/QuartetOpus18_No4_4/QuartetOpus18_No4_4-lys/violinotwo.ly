\version "2.7.40"

 violinotwo = {
 \set Staff.instrument = "Violino II"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key c \minor
 \time 4/4
 \repeat volta 2 { \partial 4 r4
 <g ees'>4\p r <g ees'> r <g ees'> r r c''\staccato
 d''\staccato_\markup { \italic "cresc." } c''\staccato b'\staccato c''\staccato b'2.\f r4
 <g ees'>4\p r <g ees'> r <g ees'> r r <g e'> <g d'>_\markup { \italic "cresc." } g'\staccato bes\staccato a\staccato
 g2.\sf }
 \repeat volta 2 { \partial 4 r4
 e'4\p\staccato bes'\staccato aes'\staccato f'\sf( d') aes'\staccato g'\staccato ees'!\sf( c')( d'8 ees')
 f'4\staccato fis'\staccato g'2.^\fermata r4 <g ees'>4\p r <g ees'> r
 <g ees'>4 e'_\markup { \italic "cresc." } f' <c' g'> aes'\staccato c''\f\staccato ees'!\staccato d'\staccato c'2. }
 \repeat volta 2 { \partial 4 ees'4\p
 ees'2( aes') ~ aes'4( g' f' g') aes'( bes' c'' d''!) ees''2.( des''4) c''2\<( des''\! bes'\> c''\!) ~
 c''4( bes' aes' g') g'2( aes'4) }
 \repeat volta 2 { \partial 4 bes4
 bes2( ees' d'! aes') g'( des'' c'' aes') ~ aes'4( g' f' ees') aes4( d'! f' aes')
 g'4_\markup { \italic "cresc." } ees'2 ees'4 ~ ees' ees'2 ees'4 ~ ees'2\p( aes') ~ aes'4( g' f' g' aes' bes' c'' d''!)
 ees''2.( des''4) c''4( f''2 des''4) bes'4( ees''2 aes'4) ~ aes'4 f'4( des') des' }
 \alternative { { des'2( c'4) } { c'4 \bar "" r r \partial 4 r4 } }
 <g ees'>4\p r <g ees'> r <g ees'> r r c''\staccato
 d''\staccato_\markup { \italic "cresc." } c''\staccato b'\staccato c''\staccato b'2.\f r4
 <g ees'>4\p r <g ees'> r <g ees'> r r <g e'>
 <g d'>_\markup { \italic "cresc." } g'\staccato bes\staccato a\staccato g2.\sf r4
 <g ees'>8\p <g ees'> <g ees'> <g ees'> <g ees'>_\markup { \italic "cresc." } <g ees'> <g ees'> <g ees'>
 <g ees'> <g ees'> <g ees'> <g ees'> <g ees'> <g ees'> c'' c'' d''\f d'' c'' c'' b' b' c'' c'' b'4 r r2
 <g ees'>8\p <g ees'> <g ees'> <g ees'> <g ees'>_\markup { \italic "cresc." } <g ees'> <g ees'> <g ees'>
 <g ees'> <g ees'> <g ees'> <g ees'> <g e'> <g e'> <g e'> <g e'> <g d'>\f bes' g' bes' g' a' fis' a' g'4 r r2
 r4 bes'4\p\staccato aes'!\staccato f'!\sf( d') aes'\staccato g'\staccato ees'\sf( c' d'8 ees') f'4\staccato fis'\staccato
 g'2.^\fermata r4 <g ees'>4\p r <g ees'> r
 <g ees'>4\staccato_\markup { \italic "cresc." } e'\staccato f'\staccato <c' g'>\staccato
 aes'\staccato c''\f\staccato ees'\staccato d'\staccato c'2. r4
 <g' bes'>8\sf <g' bes'> <g' bes'> <g' bes'> aes'4 r
 <bes aes'>8\sf <bes aes'> <bes aes'> <bes aes'> <bes aes'>4 r
 ees'8\ff ees' ees' ees' fis' fis' fis' fis' <b g'>4 r r2
 <g ees'>8\p <g ees'> <g ees'> <g ees'> <g ees'>_\markup { \italic "cresc." } <g ees'> <g ees'> <g ees'>
 <g ees'>8 <g ees'> e' e' f' f' <c' g'> <c' g'>
 <c' aes'>8\f <c' aes'> <c' aes'> <c' aes'> <c' g'> <c' g'> <b g'> <b g'> <c' g'>4 r r r8
 \key c \major
 \repeat volta 2 {
 \partial 8 r8 r2 r4 r8 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { g'16([ a' b'] } c''1\fp) ~ c''2. b'4( a' g' f' e') d' r c' r b r r r8 }
 \repeat volta 2 {
 \partial 8 r8 r2 r4 r8 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { d''16([ e'' fis''] } g''1\fp)
 r2 r4 r8 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { d''16([ e'' fis''] } g''2.\fp)
 g'4( a' g' c'' b' a' g' f' ees' e'!) r b' r }
 \alternative { { c''4 r r r8 } { c''4 \bar "" r r \partial 4 ees'8\p( f') } }
 \key c \minor
 \repeat volta 2 { g'8\p ees' f'\staccato d'\staccato e'( c') d'\staccato b\staccato c'4 r r2 R1
 g'4\f\staccato g'\staccato g'\staccato ees'8\p( f')
 g'8( ees') f'\staccato d'\staccato ees'( c') d'\staccato b\staccato c'4 r r e'8\f( fis') g'4 g''8( a'') bes''4 fis' }
 \alternative { { g'4 r r ees'!8\p( f'!) } { g'4 r r g'8\p( aes'!) } }
 bes'4\staccato e'( f' aes') ~ aes'4 d'( ees'! g') ~ g'( f'8 ees') d'4\staccato c'\staccato
 b4( d'2^\fermata) ees'8\p( f') g'8( ees') f'\staccato d'\staccato ees'( c') d'\staccato b\staccato
 c'4_\markup { \italic "cresc." } r r d'8( e') f'4\staccato c''8\f( d'') ees''4\staccato b'\staccato
 c''4 r r e'8\p( f') g'4\staccato g'4( aes' c'') r f'( g' bes' c'') c'2 d'4
 d'8 b_\markup { \italic "cresc." } c' d' ees' d' ees' f'
 g'8\f( ees') f'\staccato d'\staccato ees'( c') d'\staccato b\staccato
 c'8 c'' c'' c'' c'' c'' c'' c'' c'' c'' c'' d'' ees''4\staccato b\staccato
 c'4 r r2 r2 r4 a8( b) c'2.\sf r4 R1 r4 b8( d' f'2\sf) ~ f'4\staccato b8( d' f'4\staccato) f'8( b' d''2.\ff^\fermata) g'4\p
 g'2( c'' c''4)( b' a' b') c''4( d'' e'' fis'') g''1 ~ g''2( f''!) ~ f''( e'') ~ e''4( d'' c'' b')
 \acciaccatura d''16 c''8( b' c'' d'') e''4\staccato r
 g8\staccato e'\staccato c'\staccato e'\staccato g' e' c' e' g f' d' f' g' f' d' f'
 e'8 g' e' d' c' fis' a' c'' d' g' b' d'' g'' f'' e'' d''
 cis''8 e'' cis'' a' d'' f'' d'' a' b' d'' b' g' c''! e'' c'' g' f' a' d'' a' f' b' g' f' e' g' c'' e'' g'' f'' e'' d''
 cis'' e'' cis'' a' d'' f'' d'' a' b' d'' b' g' c''! e'' c'' g'
 a'_\markup { \italic "cresc." } d'' a' f' a' f' a' f' e' g' f' e' d' f' e' d'
 c'4\pp r r2 g'8( e' f' d') c'4\staccato r R1 b8( c' b c') d'4\staccato r R1
 g'8( ees'! f' d') c'4\staccato r R1 f'8( g' f' g') aes'!4\staccato r R1
 bes'8( g' aes' f') ees'4\staccato r R1 g'8( aes' g' aes') bes'4\staccato r R1
 c''8_\markup { \italic "cresc." }( b' c'' b') c''4\staccato r R1 c''8( d'' c'' d'') ees''4\staccato c'4
 b4\f g'( aes'2\sf) ~ aes'4( g' f' ees') d'4\f g'( aes'2\sf) ~ aes'4( g' f' ees') d'\f g'( aes'2\sf) ~ aes'1
 r4 aes'4( b2\sf) ~ b1 R1 R1^\markup { \musicglyph #"scripts.ufermata" }
 \break

 <g ees'>4\ff <g ees'>2\sf <g ees'>4 ~ <g ees'>4 <g ees'>2\sf <g ees'>4
 <g f'>4 <g ees'> <g d'> <g ees'> <g d'> <g d'> <g d'> <g d'>
 <g ees'>4 <g ees'>2 <g ees'>4 ~ <g ees'> <g ees'> <g e'> <g e'> <g d'> g' b a g2. g'8( f'! e'4) <c' bes'>2\sf aes'4
 d'4 aes'2\sf g'4 c'4( d'8 ees'!) f'4\staccato fis'\staccato g'2. r4
 <g ees'>4\ff <g ees'>2 <g ees'>4 ~ <g ees'>4 e'4 f' <c' g'> <c' aes'> c'' ees'! d' c'4 r r f'\p ees' r r <d' b'>
 <ees' c''>4 r r b'_\markup { \italic "cresc." } c''4 b' c'' b' c'' c''2 c''4 ~ c'' c''2 c''4
 r4 c''8\f( d'') ees''4\staccato ees''\staccato r4 b'8( c'') d''4\staccato d''\staccato
 c''4\p c'2_\markup { \italic "cresc." } c'4 ~ c'4 c'2 c'4 ~ c'4 c'8( d') ees'4\staccato ees'\staccato
 r4 c''8\f( d'') ees''4\staccato ees''\staccato r4 c''8\f( d'') ees''4\staccato ees''\staccato
 r4 b'8\f( c'') d''4\staccato d''\staccato c''4 r ees'2\sf( f'4) r f'2( g'4) r <c' g'>2\sf( <c' aes'>4) f'4 ees' f'
 ees'4 r ees'2\sf( f'4) r f'2\sf( g'4) r <c' g'> r R1 <c' aes'>4_\markup { \italic "decresc." } r <c' aes'> r R1
 ees'4\pp r r2 f'4 r r e'8\p( f' g'\sf e' f' d') c'4\staccato g''\staccato
 aes''4\staccato g''\staccato aes''\staccato e'8( f' g'\sf e' f' d') c'4\staccato
 g''\staccato aes''4\staccato g''\staccato aes''\staccato e'8( f' g'\sf e' f' d') c'4\staccato r4
 g'8\sf( e' f' d') c'4\staccato r g'8\sf( e' f' d') c'4\staccato r4 R1 R1 R1
 r2 r4 r8 \times 2/3 { g16\ff([ a b] } c'4) r8 \times 2/3 { g16([ a b] } c'4) r8 \times 2/3 { g16([ a b] } c'4) r4 r2 r2 r4^\fermata
 \bar "|."
}