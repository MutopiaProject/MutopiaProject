\version "2.7.40"

 violinotwo = {
 \set Staff.instrument = "Violino II"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key c \minor
 \time 4/4
 \partial 4 r4
 \repeat volta 2 { g2.\p( b4) b2\sf( g4\staccato) r c'2.( e'4) e'2\sf( c'4\staccato) r r4 f'2( ees'!4) d'8( aes') aes'2( g'4)
 aes'8 aes' fis' fis' a' a' f' f' g' g' g' g' g' g' ees' c' g d' d' d' d' d' ees' ees'
 r8 d' d'' d'' d'' d'' ees'' ees'' ees''4_\markup { \italic "cresc." }( d'') ~ d''8^\turn d'' f'' d''
 d''4( <ees' c''>2 <d' b'>4) <g ees' c''>4\staccato r <g d' b'>4\staccato r
 <g ees' c''>4\staccato <g d' b'>\staccato <g ees' c''>\staccato r
 <g d' b'>4\staccato r <g ees' c''>\staccato r <g d' b'>\staccato <g ees' c''>\staccato <g d' b'>\staccato r
 r4 g'4\ff( a' b') c''( ees' f' g') aes'!( ees' c' c'') b'8\fp d' d' d' d' d' d' d' r ees' ees' ees' ees' ees' ees' ees'
 r8 d' d' d' d' d' d' d' r ees' ees' ees' ees' ees' ees' ees'
 r8 <g d'> <g ees'>\sf <g ees'> r <g d'> <g ees'>\sf <g ees'> <g d'>4\ff <g d' b'> r2
 ees'1\fp ~ ees'4. g'8\staccato aes'( ees') r8 des' c'( ees') r4 r2 r8 g'([ aes' g'] aes'4) r4
 c'1\fp ~ c'4. e'8\staccato f'( c') r8 bes8\staccato aes8( c') r4 r2 r2 r4 bes4\p bes8( g') g'2( f'4)
 \grace { eis'16([ f' g']) } f'2( ees'4) bes bes8( aes') aes'2( g'4)
 \grace { f'16([ g' aes']) } g'2( f'4) bes bes8( bes') bes'2 aes'4 ~ aes'4 g'2 f'4 ~ f'8( ees' d' c') bes( a ees' a)
 bes2.^\markup { \italic "cresc." }( aes!4) g8^\p( bes) bes2( aes4)
 \grace { g16([ aes bes]) } aes2( g8 bes ees' g') aes'( d') f'2( ees'4)
 \grace { d'16([ ees' f']) } ees'2( d'4) r4 r4 r8 ees''8_\markup { \italic "cresc." } ees''( d'' c'' d'')
 ees''4 r8 c'' c''( b' a' b') c''8 ees' ees' ees' ees' ees' ees' ees' d'8 f'\p[ f' f'] f'4 r r8 a'8 a' a' a'4 r
 r4 aes'!_\markup { \italic "cresc." } r g' r4 <bes f' d''>4\f r2
 ees'4\p\staccato ees'4.\sf ees'8\staccato aes'\staccato g'\staccato f'4( aes' d' f')
 bes4\staccato ees'4.\sf ees'8\staccato aes'\staccato g'\staccato f'4( aes' d' f')
 bes4\staccato ees'4.\sf ees'8\staccato f'\staccato g'\staccato
 g'8( ees'4 e'8 f') f'\staccato g'\staccato aes'\staccato aes'4_\markup { \italic "cresc." }( g' ges' f')
 ees'8\p ees'4\sf ees'8 ~ ees'8 ees'\staccato d'\staccato ees'\staccato
 ees'8 f'4\sf f'8 ~ f'8\staccato f'\staccato e'\staccato f'\staccato
 e'8 des''4\sf des''8 ~ des'' des''\staccato c''\staccato b'\staccato
 c''8\staccato c''\staccato c''\staccato b'\sf\staccato c''\staccato c''\staccato c''\staccato b'\sf\staccato
 c''4_\markup { \italic "cresc." }( ees'' c'' bes'!) a'2( c'') f'4 r r2
 r2 r4 d''4( ees'') r r8 ees''\staccato g''\staccato ees''\staccato
 aes''8\f\staccato f''\staccato d''\staccato bes'\staccato aes'\staccato f'\staccato d'\staccato d''\staccato
 ees''4\staccato r bes'\pp\staccato g'\staccato
 ees'4\staccato e'\staccato f'\staccato g'\staccato aes'\staccato r ces'\staccato r
 bes4\staccato r4\f <bes aes'>\staccato <bes aes'>\staccato <bes g'>\staccato r bes'\pp\staccato g'\staccato
 ees'4\staccato e'\staccato f'\staccato g'\staccato aes'\staccato r c'!\staccato r }
 \alternative { { b4\staccato r4\f <g f'>\staccato <g f'>\staccato }
 { cis'4\staccato r\f <d' c''!>\staccato <d' c''!>\staccato } }

 <d' bes'>8\fp <d' bes'> <d' bes'> <d' bes'> <d' bes'> <d' bes'> <ees' c''> <ees' c''>
 <ees' c''> <ees' c''> <ees' c''> <ees' c''> <d' bes'> <d' bes'> <d' b'> <d' b'>
 <ees' c''> <ees' c''> <ees' c''> <ees' c''> <ees' c''> <ees' c''> b' b' b' b' b' b' c'' ees' ees' ees'
 ees' c'' c'' c'' c'' c'' c'' c'' c'' a' a' a' a' a' g' g' e'' e'' cis'' cis'' d'' d'' c'' c''
 bes'\staccato d''\staccato d''( c'') bes'\staccato d''\staccato bes'\staccato g'\staccato
 d'_\markup { \italic "cresc." } a' a' a' a' a' bes' bes' r8 c'' c'' c'' c'' c'' bes' bes'
 r ees'' ees'' ees'' c'' c'' a' a' bes' bes bes bes c' c' c' c' bes4 r r2
 r8 g8( bes d' g' bes' d'' g') fis'4 r r2 r8 fis'( a' g' fis' a' d'' fis') g'4 r r2 R1
 r2 r8 b'8_\markup { \italic "cresc." }( d'' c'' b'\staccato) f''( d'' ees'' f''\staccato) f'( g' aes') g'4 r r2
 r8 c'8( ees' g' c'' ees'' g'' c'') b'4 r r2 r8 b'8( d'' c'' b' f'' aes'' b')
 bes'!4 r r8 g'( bes' aes') aes'4( g'4.) g'8( des'' c'') c''4( bes') r8 bes''8( g'' aes'' bes''\staccato)
 des''( bes' c'' des''\staccato) bes'( aes' g') f'8\p f' f' f' f' f' f' f'
 f'8_\markup { \italic "cresc." } f' f' f' f'\staccato f'( aes' f')
 <g e' c''>4\ff\staccato <aes f' c''>\staccato <g e' c''>\staccato r
 <aes f' c''>\staccato <g e' c''>\staccato <aes f' c''>\staccato r <g e' c''>\staccato r <aes f' c''>\staccato r
 <g e' c''>\staccato r r2
 a8\p c'\staccato f'\staccato c'\staccato e'\staccato c'\staccato bes\staccato c'\staccato
 bes\staccato e'\staccato c'\staccato bes\staccato a\staccato c'\staccato f'\staccato a'\staccato
 g'\staccato c'\staccato g'\staccato c'\staccato f'\staccato c'\staccato f'\staccato c'\staccato
 f' c' f' c' e' c' g' e' f' c' f' c' bes c' c' c' c' a c' a g' a g' a f' a f' a f' g f' g e'4( c'2_\markup { \italic "cresc." } bes!4)
 aes!8\p( c' aes' f' e' g' c'' e') f'\staccato c''( b' c'' des'' c'' aes' f')
 c'( g' c'' bes' aes' c'' aes' f') e'\staccato c''( des'' bes' g' e' c' bes)
 aes4 f'8_\markup { \italic "cresc." }( c'') c''2 ~ c''4 c'8( aes') aes'2 ~ aes'4 aes8( f') f'2 ~ f'4 f'2 fis'4
 g'16\pp d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d'
 ees' ees' ees' ees' ees' ees' ees' ees' ees' ees' ees' ees' ees' ees' ees' ees'
 ees' ees' ees' ees' ees' ees' ees' ees' ees' ees' ees' ees' ees' ees' ees' ees'
 <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'>
 <g f'>_\markup { \italic "cresc." } <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'>
 <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'>
 <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'>
 b16 b' b' b' b' b' b' b' b' b' b' b' b' b' b' b'

 c''8\fp g4 g g b8 b8 b'4\sf b'8( c'' d'' ees'' e'') f''8 c'4 c' c' e'8 f'8 e''4\sf e''8( f''\staccato) f''( g'' aes'')
 \new Voice { \stemDown aes''8([ \stemUp f'8]) } f'2( ees'!4) d'8( aes') aes'2( g'4)
 aes'8 aes' fis' fis' a' a' f' f' g' g' g' g' g'\staccato g'\staccato ees'\staccato c'\staccato
 g8 b' b' b' b' b' c'' c'' r8 d'' d'' d'' d'' d'' ees'' ees''
 ees''4_\markup { \italic "cresc." }( d'') ~ d''8 d''^\turn( f'' d'') d''4( <ees' c''>2 <d' b'>4)
 <g ees' c''>4\f\staccato r <g d' b'>\staccato r <g ees' c''>\staccato <g d' b'>\staccato <g ees' c''>\staccato r
 <g d' b'>4\staccato <g ees' c''>\staccato <g d' b'>\staccato r
 <g ees' c''>\staccato^\markup { \italic "sempre piu f." } <g d' b'>\staccato <g ees' c''>\staccato r
 <aes ees' c''>\staccato <aes f' des''>\staccato <aes ees' c''>\staccato r
 <aes f' des''>\staccato <aes ees' c''>\staccato <aes f' des''>\staccato r
 <bes f' d''!>\staccato <bes ges' ees''>\staccato <bes f' d''>\staccato r
 <ees' ees''>\ff\staccato r <g'! bes' e''>\staccato r <f' c'' f''>\staccato r <c'' fis''>\staccato r
 <b' g''>\staccato r r2 R1 r8 g''8\p\staccato g''\staccato g''\staccato fis''( g'') e''\staccato c''\staccato g'4 r r2
 r8 g''\staccato g''\staccato g''\staccato fis''( g'' a'' g'') g''4\staccato g'( a' b' c'') e'( fis' gis') a'( e' c') c'8 c'
 b8_\markup { \italic "cresc." } g'( fis' g' fis' g' a' g')
 g'8( e'') e''2( d''4) \grace { cis''16[ d'' e''] } d''2( c''4) g'4 g'8( f'') f''2( e''4) \grace { d''16[ e'' f''] } e''2( d''4) g'4
 g'8( g'') g''2 f''4 ~ f'' e''2 d''4 ~ d'' c''( a' fis') g'8\p d' d' d' d'4 r r8 fis' fis' fis' fis'4 r
 r4 f'_\markup { \italic "cresc." } r e' r <f' d''>\f\staccato r2
 c'4\p\staccato c'4.\sf\staccato c'8\staccato f'\staccato e'\staccato
 d'4( f' b d') g4\p c'4.\sf\staccato c'8\staccato f'\staccato e'\staccato
 d'4( f' b d') g4 c'4.\sf\staccato c'8\staccato f'\staccato e'\staccato
 e'8 c'4\sf( cis'8 d') d'\staccato g'\staccato f'\staccato e'2_\markup { \italic "cresc." }( ees'4 d')
 e'8\p\staccato g'4\sf g'8 ~ g'8 g'\staccato b'\staccato c''\staccato
 a'8\staccato a'4\sf a'8 ~ a'8 a'\staccato cis''\staccato d''\staccato
 bes'!8\staccato bes'4 bes'8 ~ bes'8 bes'\staccato a'\staccato gis'\staccato
 a'8\staccato a'\staccato a'\staccato gis'\staccato\sf a'\staccato a'\staccato a'\staccato gis'\staccato\sf
 a'4_\markup { \italic "cresc." }( c'' a' g'!) fis'2( a') d'4 r r2 r2 r4 b( c') r4 r8 c''\staccato e''\staccato c''\staccato
 f''8\staccato d''\staccato b'\staccato g'\staccato f'\staccato d'\staccato b\staccato b'\staccato
 c''4 r g'\pp\staccato e'\staccato c'\staccato cis'\staccato d'\staccato e'\staccato
 f'\staccato r aes!\staccato r g\staccato r\f <g f'>\staccato <g f'>\staccato
 <g e'>\staccato r g'\pp\staccato ees'\staccato c'\staccato cis'\staccato d'\staccato ees'\staccato
 f'\staccato r g\staccato r aes\staccato r\f <aes ges'>\staccato <aes ges'>\staccato
 <aes f'>2.\ff ges'4\sf ~ ges' f'( bes') aes'4\sf ~ aes'8 ees'4\sf a'8 bes' f'4\sf b'8
 c''8 g'4\sf c''8 c''\staccato c''( d''\sf c'') b'8 b'[ b' b'] r c'' c'' c''
 r8 aes'' aes'' aes'' r <g f'> <g f'> <g f'>
 <g ees'>4 r8 b'8\p\staccato c''8( g') r f'\staccato ees'( g') r b'\staccato c''( g') r f'\staccato
 ees'8_\markup { \italic "cresc." }( g') e'( g') f'( aes') g'( bes'!) aes'( c'') d'( f') ees'!( g') b( d')
 ees'8\f( g'') e''( g'') f''( aes'') g''( bes'') aes''( c''') d''( f'') ees''( g'') b'( d'')
 c''4\ff g'4 ~ g'8 g'( b'\sf) b'( c'') g'( b'\sf) b'( c'') g'( b'\sf) b'( c''4) r4 r8 ees'( g'\sf f') e'4 r r2 c'4\ff r <c' ees'> r
 <c' ees'>2.^\fermata \bar "|."
}