\version "2.7.40"

 violinoone = {
 \set Staff.instrument = "Violino I"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key c \minor
 \time 4/4
 \repeat volta 2 {
 \once \override TextScript #'padding = #2.0
 \partial 4 ees''8\p^\markup { \bold "Allegro ma non tanto" }( f'')
 g''8( ees'') f''\staccato d''\staccato ees''( c'') d''\staccato b'\staccato
 \acciaccatura d''16 c''8\staccato b'\staccato c''\staccato d''\staccato ees''\staccato e''\staccato f''\staccato fis''\staccato
 g''4\staccato_\markup { \italic "cresc." } g''\staccato g''\staccato g''\staccato g''2.\f ees''8\p( f'')
 g''8( ees'') f''\staccato d''\staccato ees''( c'') d''\staccato b'\staccato
 \acciaccatura d''16 c''8\staccato b'\staccato c''\staccato d''\staccato e''\staccato fis''\staccato g''\staccato a''\staccato
 bes''!4 cis'\staccato_\markup { \italic "cresc." } d'\staccato d'\staccato g2.\sf }
 \repeat volta 2 {
 \partial 4 g''8\p( aes'') bes''4\staccato e''\staccato f''\staccato aes''4\sf ~ aes'' d''\staccato ees''!\staccato
 g''\sf ~ g''( f''8 ees'') d''4\staccato c''\staccato b'( d''2^\fermata)
 ees''8\p( f'') g''8( ees'') f''\staccato d''\staccato ees''( c'') d''\staccato b'\staccato
 \acciaccatura d''16 c''8\staccato_\markup { \italic "cresc." } b'\staccato c''\staccato d''\staccato
 ees''\staccato e''\staccato f''\staccato g''\staccato
 aes''4\staccato fis'\f\staccato g'\staccato g\staccato c'2. }
 \repeat volta 2 { \partial 4 r4
 ees''1\p ~ ees''1 ~ ees''2 aes'' ~ aes''( g'') ges''\<( f''\! fes''\> ees''\!) ~ ees''4 des''( c'' bes') bes'2( aes'4) }
 \repeat volta 2 {
 \partial 4 r4 R1 R1 R1 R1 bes'2( ees'') d''!( aes'') g''_\markup { \italic "cresc." }( des''') ~ des'''4( bes'' g'' des'')
 c''4\p( ees'') ees'' ees'' ees''1 ~ ees''2 aes'' ~ aes''( g'') f''4( a'' bes''2) ~ bes''4( g'' aes''! e'') f''( bes' des'' g') }
 \alternative { { bes'2( aes'4) } { aes'4 \bar "" r4 r \partial 4 ees''8\p( f'') } }
 g''8( ees'') f''\staccato d''\staccato ees''( c'') d''\staccato b'\staccato
 \acciaccatura d''16 c''8\staccato b'\staccato c''\staccato d''\staccato ees''\staccato e''\staccato f''\staccato fis''\staccato
 g''4\staccato_\markup { \italic "cresc." } g''\staccato g''\staccato g''\staccato g''2.\f ees''8\p( f'')
 g''8( ees'') f''\staccato d''\staccato ees''( c'') d''\staccato b'\staccato
 \acciaccatura d''16 c''8\staccato b'\staccato c''\staccato d''\staccato e''\staccato fis''\staccato g''\staccato a''\staccato
 bes''4 cis'\staccato_\markup { \italic "cresc." } d'\staccato d'\staccato g2.\sf ees''8\p( f'')
 g''8( ees'') f''\staccato d''\staccato ees''_\markup { \italic "cresc." }( c'') d''\staccato b'\staccato c'' c' ees' g' c'' d'' ees'' f''
 g''\f fis'' g'' fis'' g'' fis'' g'' fis'' g'' g' a' b' c'' d'' ees'' f''!
 g''8\p( ees'') f''\staccato d''\staccato ees''_\markup { \italic "cresc." }( c'') d''\staccato b'\staccato
 \acciaccatura d''16 c''8\staccato b'\staccato c''\staccato d''\staccato e''\staccato fis''\staccato g''\staccato a''\staccato
 bes''8\f g'' bes'' g'' a'' g'' a'' fis'' g''4 r4 r g''8\p( aes'' bes''4\staccato)
 e''\staccato f''\staccato aes''4\sf ~ aes'' d''\staccato ees''!\staccato
 g''\sf ~ g''( f''8 ees'') d''4\staccato c''\staccato b'( d''2^\fermata)
 ees''8\p( f'') g''8( ees'') f''\staccato d''\staccato ees''( c'') d''\staccato b'\staccato
 \acciaccatura d''16 c''8\staccato_\markup { \italic "cresc." } b'\staccato c''\staccato d''\staccato
 ees''\staccato e''\staccato f''\staccato g''\staccato
 aes''4\staccato fis'\f\staccato g'\staccato g'\staccato c'2. g''8( aes'')
 bes''8\sf( g'') f''\staccato e''\staccato \acciaccatura g''16 f''8 e'' f'' g''
 aes''8\sf( f'') ees''!\staccato d''\staccato \acciaccatura f''16 ees''8 d'' ees'' g''
 f''8\ff( g'') ees''\staccato f''\staccato d''( ees'') c''\staccato d''\staccato b' g' a' b' c'' d'' ees'' f''
 g''8\p( ees'') f''\staccato d''\staccato ees''_\markup { \italic "cresc." }( c'') d''\staccato b'\staccato
 \acciaccatura d''16 c''8 b' c'' d'' ees'' e'' f'' g'' aes''\f f'' aes'' f'' ees''! g'' b' d'' c''4 r r r8
 \key c \major
 \repeat volta 2 {
 \partial 8 r8 R1 r4 r8 c''32( d'' e'' f'' g''2\fp) a''8( fis'') g''\staccato g''\staccato f''( dis'') e''\staccato e''\staccato
 d''!( b') c''\staccato c''\staccato b'( gis') a'\staccato a'\staccato
 d''( b') g'!\staccato g'\staccato c''( a') fis'\staccato fis'\staccato g'8 d' b d' g4 r8 }
 \repeat volta 2 {
 \partial 8 r8 R1 b'8\fp g' c'' g' d''( b') g'\staccato g'\staccato R1 d''8^\fp g' e'' g' f'' g' g'' g'
 a''8( fis'') g''\staccato g''\staccato f''( dis'') e''\staccato e''\staccato
 d''!( b') c''\staccato c''\staccato b'( gis') a'\staccato a'\staccato g'!( e') c'\staccato c'\staccato f'( d') b\staccato b\staccato }
 \alternative { { c'8 g c' g c'4 r8 } { c'8[ \bar "" g c' g] c'4 \partial 4 r4 } }
 \key c \minor
 \repeat volta 2 { r2 g''8\p ees'' f''\staccato d''\staccato \acciaccatura d''16 c''8 b' c'' d'' ees'' e'' f'' fis''
 g''4\staccato_\markup { \italic "cresc." } g''\staccato g''\staccato g''\staccato g''2.\sf r4 r2 g''8\p( ees'') f''\staccato d''\staccato
 \acciaccatura d''16 c''8_\markup { \italic "cresc." } b' c'' d'' e'' fis'' g'' a'' bes''4\f cis'\staccato d'\staccato d'\staccato }
 \alternative { { g4 r r2 } { g4 r r2 } }
 r4 bes''4\p( aes''! f'') r aes''( g'' ees'') c''4( d''8 ees'') f''4\staccato fis''\staccato g''2.^\fermata r4
 r2 g''8\p( ees'') f''\staccato d''\staccato
 \acciaccatura d''16 c''8_\markup { \italic "cresc." } b' c'' d'' ees'' e'' f'' g''
 aes''4\staccato fis'\f\staccato g'\staccato g'\staccato c'4 r r
 g''8\p( aes'' bes''4\staccato) e''4( f'' aes'') ~ aes'' d''( ees''! g'') ~ g''( f''8 ees'') d''4\staccato c''\staccato
 b'4( d''2_\markup { \italic "cresc." }) ees''8 f''
 g''8\f( ees'') f''\staccato d''\staccato ees''( c'') d''\staccato b'\staccato
 \acciaccatura d''16 c''8 b' c'' d'' ees'' e'' f'' g'' aes''4 fis'\staccato g'\staccato g'\staccato
 c'4 r4 g8_\markup { \italic "cresc." } ees' c'' ees' g d' b' d' g f' d'' f' g ees' c'' ees' c' g' ees'' g' b g' d'' g' c' g' ees'' g'
  \set tupletSpannerDuration = #(ly:make-moment 1 2)
 \times 4/6 { g8([ d' b' f'' b' d']) g([ d' b' f'' b' d']) g([ d' b' f'' b' d']) g([ d' b' f'' b' d']) }
 << { f''2.^\fermata } \\ { \stemUp <g d' b'>4\ff s2 } >> r4 g''1\p ~ g''1 ~ g''2 c'''2 ~ c'''( b'') a''1( g'') ~ g''4( f'' e'' d'')
 \acciaccatura f''16 e''8( d'' e'' f'') g''4\staccato g''\staccato g''2( c''') ~ c'''4( b'' a'' b'') c'''( d''' e''' fis''')
 g'''1 ~ g'''2( f'''!2) ~ f'''2( e'''2) ~ e'''4( d''' c''' d''') \acciaccatura d'''16 e'''8( d''' e''' f''') g'''4\staccato g'''\staccato
 g'''2( f''') ~ f''' e''' e'''8_\markup { \italic "cresc." }( d''' cis''' d''' cis''' d''' f''' d''') c'''!2( b''4) e''8( f'')
 g''8\pp( e'') f''\staccato d''\staccato e''( c'') d''\staccato b'\staccato c''4 r r c'' b'8( c'' b' c'' d'' e'' d'' e'')
 f''4 r r ees''!8( f'') g''8( ees'') f''\staccato d''\staccato ees''( c'') d''\staccato b'\staccato c''4 r r c''
 d''8( ees'' d'' ees'' f'' g'' f'' g'') aes''!4 r r g''8( aes'')
 bes''8( g'') aes''\staccato f''\staccato g''( ees'') f''\staccato d''\staccato ees''4 r r ees''
 e''8( f'' e'' f'' g'' aes'' g'' aes'') bes''4 r r e'' f''8_\markup { \italic "cresc." }( g'' f'' g'' aes'' bes'' aes'' bes'') c'''4 r r c'''
 c'''2.^\markup { \translate #(cons 6 1) { \musicglyph #"scripts.turn" } } d'''4 ees'''2 fis'2
 g8\f( g' b' d'') f''( aes'') f''\staccato d''\staccato f'' ees'' d'' c'' b' c'' aes' fis'
 g\f( g' b' d'') f''( aes'') f''\staccato d''\staccato f'' ees'' d'' c'' b' c'' aes' fis'
 g\f( g' b' d'') f''( d'') b'\staccato d''\staccato f''( d'') b'\staccato d''\staccato f''( d'') b'\staccato d''\staccato
 g\f( b' d'' f'') aes''( f'') d''\staccato f''\staccato aes''( f'') d''\staccato f''\staccato aes''( f'') d''\staccato f''\staccato
 aes''1_\markup { \italic "decresc." } fis''1^\fermata
 \break

 \once \override Score.MetronomeMark #'transparent = ##t
 \tempo 2 = 162
 g''8\ff^\markup { \bold "Prestissimo."} ees'' f''! d'' ees'' c'' d'' b' \acciaccatura d''16 c''8 b' c'' d'' ees'' e'' f'' fis''
 g''4 g'' g'' g'' g''2. ees''8( f'')
 g''8( ees'') f''\staccato d''\staccato ees''( c'') d''\staccato b'\staccato
 \acciaccatura d''16 c''8 b' c'' d'' e'' fis'' g'' a'' bes''!4 cis'4 d' d' g2. g''8( aes''! bes''4) e''\staccato f''\staccato
 aes''4\sf ~ aes'' d''\staccato ees''!\staccato g''\sf ~ g''4( f''8 ees'') d''4\staccato c''\staccato b'4( d''2) ees''8( f'')
 g''8\ff( ees'') f''\staccato d''\staccato ees''( c'') d''\staccato b'\staccato
 \acciaccatura d''16 c''8 b' c'' d'' ees'' e'' f'' g'' aes''4 fis' g' g' c'4\staccato c''8\p( d'') ees''( c'') d''\staccato b'\staccato
 c''4 ees''8( f'') g''( ees'') f''\staccato d''\staccato
 ees''4 c'''8 d''' ees''' g''' d'''_\markup { \italic "cresc." } g''' ees''' g''' d''' g''' ees''' g''' d''' g'''
 ees'''2\staccato e'''\staccato f'''\staccato aes'''\staccato g'''1\f g''
 ees''2\p\staccato e''\staccato_\markup { \italic "cresc." } f''\staccato g''\staccato aes''1\f fis'\f
 g'1\f g1 c'4 ees''2\sf c''4 b' f''2\sf d''4 c'' g''2\sf ees''4 d'' aes'' c'' b' c''4\staccato c'8( ees' g' c'' ees'' c'')
 b'4\staccato d'8( f' b' d'' f'' d'') c''8\staccato ees'( g' c'' ees'' g'' c''' ees''')
 g'''4\staccato_\markup { \italic "decresc." } f'''\staccato ees'''\staccato d'''\staccato
 c'''4\staccato bes''\staccato aes''\staccato g''\staccato f'' ees'' d'' aes'' c''\pp r r2 b'4 r r2
 r2 r4 c'''4\p\staccato c'''\staccato c'''\staccato c'''\staccato c'''\staccato
 c'''2.\sf c'''4\staccato c'''\staccato c'''\staccato c'''\staccato c'''\staccato
 c'''2\sf c'''4\p\staccato c'''\staccato r2 e'''4 e''' r2 g'''4 g''' c''''4\pp c'''' c'''' c''''
 c''''4 r r r8 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { g''16([ a'' b''] } c'''4) r4 r r8 \times 2/3 { g'16([ a' b'] } c''4) r4
 r4 r8 \times 2/3 { g16\ff([ a b] } c'4) r8 \times 2/3 { g16([ a b] } c'4) r8 \times 2/3 { g16([ a b] } c'4) r4 r2 r2 r4^\fermata
 \bar "|."
}