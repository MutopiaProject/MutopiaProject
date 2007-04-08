\version "2.7.40"

 violinoone = {
 \set Staff.instrument = "Violino I"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key c \minor
 \time 4/4
 \partial 4 g4\p
 \repeat volta 2 { c'2^\markup { \bold "Allegro ma non tanto" } ~
 c'8[ \grace { d'16[( c' b]) } c'8( ees' d')] d'2\sf( c'4\staccato) c'4
 f'2 ~ f'8[ \grace { g'16[( f' e']) } f'8( aes' g')] g'2\sf( f'4\staccato) f'4 f'8( d'') d''2( c''4) b'8( f'') f''2( ees''4)
 ees''8( d'') c''2( b'4) c''4.^\markup { \translate #(cons 4 -2) { \musicglyph #"scripts.turn" } }( d''8 ees''4) r8 c''
 b'8( aes'') aes''2( g''4) f''8( f''') f'''2( ees'''4) ees'''4_\markup { \italic "cresc." }( d''') ~ d'''8^\turn d''' f''' d'''
 d'''4( c'''2 b''4) c'''4\ff\staccato r4 r2 r2 r4 <g' ees'' c'''>4\ff\staccato R1 r2 r4 <g' d'' b''>4\ff\staccato
 g''8( g''') g'''2 f'''4 ~ f'''4 ees'''2 des'''4 ~ des'''8( c''') c'''( bes'') bes''( aes'') g''\staccato fis''\staccato
 g''4 r r8 g'\p( g'' f'') f''( ees'') d''\staccato c''\staccato bes'\staccato aes'\staccato g'\staccato fis'\staccato
 a'4( g') r8 g'( g'' f'') f''( ees'') d''\staccato c''\staccato bes'\staccato aes'!\staccato g'\staccato fis'\staccato
 a'8( g') r16 d''16\sf( ees'' fis') a'8( g') r16 d''16\sf( ees'' fis') g'4\ff <g d' b' g''> r2
 ees'4.\fp g''8\staccato aes''( ees'') r8 des'' c''( ees'') r4 r2
 r4 r8 des''8 c''( ees'') r8 des''\staccato \grace { c''16([ des'' ees'']) } des''2( c''4) r4
 c'4.\fp e''8\staccato f''8( c'') r8 bes'\staccato aes'8( c'') r4 r2
 r4 r8 bes'\staccato aes'( aes'') r8 f''\staccato ees''!2( d''4) r4 R1
 r8 bes''\p\staccato bes''\staccato bes''\staccato a''( bes'') g''\staccato ees''\staccato bes'4 r r2
 r8 bes''\staccato bes''\staccato bes''\staccato a''( bes'' c''' bes'')
 bes''4\staccato bes''( c''' d''' ees''' g'' a'' b'') c'''4\staccato ees''( g'' a')
 c''8_\markup { \italic "cresc." }( bes' a' bes' a' bes' c'' bes') bes'8\p( g'') g''2( f''4)
 \grace { e''16([ f'' g'']) } f''2( ees''4\staccato) bes'4 bes'8( aes'') aes''2( g''4)
 \grace { f''16([ g'' aes'']) } g''2( f''4) bes' bes'8_\markup { \italic "cresc." }( bes'') bes''2 aes''4 ~ aes'' g''2 f''4 ~
 f''8( ees'') ees''( d'') d''( c'') bes'\staccato a'\staccato
 c''4( bes'4\p) ~ bes'8 a'16 bes' a' bes' ees'' d'' b'4( c''4) ~ c''8 b'16 c'' b' c'' f'' ees''
 cis''16_\markup { \italic "cresc." }( d'') cis''16( d'') cis''16( d'' g'' f'')
 d''16( ees'') d''16( ees'') d''16( ees'' aes'' g'') e''( f'' g'' f'' aes''\fp g'' bes'' aes'' g'' f'' ees'' d'' c'' bes' a' aes')
 g'4\staccato bes'4.\sf\staccato bes'8\staccato d''\staccato ees''\staccato
 f''8( d'') bes'2 \acciaccatura bes'16 aes'8( g'16 aes')
 g'4\staccato bes'4.\sf\staccato bes'8\staccato d''\staccato ees''\staccato
 f''8( d'') bes'2 \acciaccatura bes'16 aes'8( g'16 aes')
 g'4\staccato bes'4.\sf\staccato bes'8\staccato d''\staccato ees''\staccato
 ees''8( c'') c''4.\sf c''8\staccato e''\staccato f''\staccato f''4( ees''!2_\markup { \italic "cresc." } d''4)
 ees''8\p bes''4\sf bes''8 ~ bes''8[ bes''\staccato aes''\staccato g''\staccato]
 f''8\staccato c'''4\sf c'''8 ~ c'''8[ c'''\staccato bes''\staccato aes''\staccato]
 g''8\staccato des'''4\sf des'''8 ~ des'''8[ des'''\staccato c'''\staccato b''\staccato]
 c'''8\staccato c'''\staccato c'''\staccato b''\staccato\sf c'''\staccato c'''\staccato c'''\staccato b''\staccato\sf
 c'''4_\markup { \italic "cresc." } c'''2 ees'''4 ~ ees'''4 ges'''2 a4( bes16)( a c' bes d' c' ees' d' f' e' g' f' a' g' bes' a')
 c''16( bes' d'' c'' ees'' d'' f'' e'' g'' f'' aes''! g'' bes'' a'' c''' bes'') bes''8 ees'''4 g'''4 bes'''8[ bes''' bes''']
 bes2\f \afterGrace bes'2^\trill { a'16[ bes'] } ees'4\staccato r4 bes'\pp\staccato g'\staccato
 ees'4\staccato e'\staccato f'\staccato g'\staccato aes'\staccato r ces'\staccato r
 bes4\staccato r4\f <bes f' d''>\staccato <bes f' d''>\staccato <g ees' ees''>\staccato r bes'\pp\staccato g'\staccato
 ees'4\staccato e'\staccato f'\staccato g'\staccato aes'\staccato r c'!\staccato r }
 \alternative { { b4\staccato r4\f <g d' b'>\staccato <g d' b'>\staccato }
 { cis'4\staccato r\f <d' a' fis''>\staccato <d' a' fis''>\staccato } }

 <g d' bes' g''>2\fp ~ g''8[ \grace { a''16([ g'' fis'']) } g''8( bes'' a'')] a''2( g''4) g''
 c'''2 ~ c'''8[ \grace { d'''16([ c''' b'']) } c'''8 ees''' d'''] d'''2( c'''4) c''
 c''8( a'') a''2( g''4) fis''8( c''') c'''2( bes''4) bes''8( a'') g''2( fis''4)
 g''4.^\markup { \translate #(cons 4 -2) { \musicglyph #"scripts.turn" } }( a''8) bes''4\staccato r8 g''\staccato
 fis''8_\markup { \italic "cresc." }( ees''') ees'''2( d'''4) c'''4( fis'''2 g'''4) a2. ees''4 ees''4( d''2 fis'4) g'4 r r2
 d'''2.\sf ees'''8.( d'''16) d'''4 r r2 d'''2.\sf ees'''8.( d'''16) d'''4 r r2 R1
 r8 b'8_\markup { \italic "cresc." }( d'' c'' b'\staccato) d''( f'' ees'' d''\staccato) b''( d''' c''' b''\staccato) b''4 b''8
 c'''2 ~ c'''8[ \grace { d'''16([ c''' b'']) } c'''8 ees''' d'''] d'''2\sf( c'''4) r
 d'''2 ~ d'''8[ \grace { ees'''16([ d''' c''']) } d'''8 f''' ees'''] ees'''2\sf( d'''2)
 des'''8\staccato e''( g'' f'') f''4( e'') ~ e''8 e''( des''' c''') c'''4( bes'') ~ bes''8
 g'''8( e''' f''' g'''\staccato) des'''( bes'' c''' des'''\staccato) bes''( g'' aes'' bes''\staccato) des''( c'' bes')
 aes'4\p aes'' ~ aes''8( g'') g''( f'') f''_\markup { \italic "cresc." }( ees'') ees''( des'') des''( c'') c''( b')
 c''4 r r <g' e'' c'''>\ff\staccato r2 r4 <aes' f'' c'''>\staccato
 r <g' e'' c'''>\staccato r <aes' f'' c'''>\staccato r <g' e'' c'''>\staccato r2 R1
 r8 c'''8\p\staccato c'''\staccato c'''\staccato b''( c''') a''\staccato f''\staccato c''4 r r2
 r8 c'''8\staccato c'''\staccato c'''\staccato b''( c''' d''' c''') c'''2( d'''4 e''' f''' a'' b'' cis''') d'''\staccato d''( f'' b')
 d''8( c'' b'_\markup { \italic "cresc." } c'' b' c'' des'' c'')
 c''8\p( aes''!) aes''2( g''4) f''4 r r c'' c''8( bes'') bes''2( aes''4) g''4 r r c''
 c''8_\markup { \italic "cresc." }( c''') c'''2 bes''4 ~ bes''4 aes''2 ges''4 ~ ges''4 f''2 ees''4 ~ ees''4 des''2 c''4
 b'4\pp r4 r g'8( g'') b'( g'') d''!( g'') fis''( g'') f''( g'') ees''( g'') r4 r g'8( g'') c''( g'') ees''( g'') fis''( g'') ees''( g'')
 d''8( g'') r4 r g'8( g'') aes'( g'') b'( g'') d''( g'') ees''( g'') f''!( g'') d''( g'') b'( g'') aes'( g'')
 g'( g'') f'( f'') ees'( ees'') d'( d'')

 c'2\fp ~ c'8[ \grace { d'16[( c' b]) } c'8( ees' d')] d'2\sf( c'4) c'4
 f'2 ~ f'8[ \grace { g'16[( f' e']) } f'8( aes' g')] g'2\sf( f'4) f'4 f'8( d'') d''2( c''4) b'8( f'') f''2( ees''4)
 ees''8( d'') c''2( b'4) c''4.^\markup { \translate #(cons 4 -2) { \musicglyph #"scripts.turn" } }( d''8 ees''4) r8 c''
 b'8( aes'') aes''2( g''4) f''8( f''') f'''2( ees'''4) ees'''4_\markup { \italic "cresc." }( d''') ~ d'''8^\turn d''' f''' d'''
 d'''4( c'''2 b''4) c'''4 r4 r2 r2 r4 <g' ees'' c'''>4\f\staccato
 r2 r4 <g' d'' b''>\staccato r2 r4 <g' ees'' c'''>\staccato_\markup { \italic "sempre piu f." } r2 r4 <aes' ees'' c'''>\staccato
 r2 r4 <aes' f'' des'''>\staccato
 r2 r4 <bes' f'' d'''!>\staccato r4 ees'''\ff\staccato r des'''\staccato r c'''\staccato r c'''\staccato
 <g' d'' b''>4\staccato_\markup { \italic "decresc." } g'2 g'4
 g'8\p( e'') e''2( d''4) \grace { cis''16[ d'' e''] } d''2( c''4) g' g'8( f'') f''2( e''4) \grace { d''16[ e'' f''] } e''2( d''4) g'
 g'8( g'') g''2 f''4 ~ f''4 e''2 d''4 ~ d''8( c'') b'\staccato aes'!\staccato g'\staccato fis'\staccato c''\staccato fis'\staccato
 g'8_\markup { \italic "cresc." }( g'' fis'' g'' fis'' g'' a'' g'')
 g''1 ~ \startTrillSpan g''4 \stopTrillSpan \grace { fis''16[ g''] } b''8( g'' c''' g'' e''' g'')
 g''1 ~ \startTrillSpan \afterGrace g''1 \stopTrillSpan { fis''16[ g''] } g''8( g''') g'''2 f'''!4 ~ f'''4 e'''2
 d'''4 ~ d'''8( c''') b''\staccato a''\staccato a''( g'') g''( fis'')
 g''2\p ~ g''8 fis''16( g'') fis''( g'' c''' b'') gis''4( a'') ~ a''8 gis''16( a'') gis''( a'' d''' c''')
 ais''16_\markup { \italic "cresc." }( b'') ais''( b'') ais''( b'' e''' d''') b''( c''') b''( c''') b''( c''' f''' e''')
 d'''16( e''' d''' cis''' d'''\fp e''' f''' e''' f''' d''' b'' g'' f'' d'' b' f')
 e'4\staccato g'4.\sf\staccato g'8\staccato b'\staccato c''\staccato
 d''8( b') g'2 \acciaccatura g'16 f'8( e'16 f') e'4\p\staccato g'4.\sf g'8\staccato b'\staccato c''\staccato
 d''8( b') g'2 \acciaccatura g'16 f'8( e'16 f') e'4\p\staccato g'4.\sf g'8\staccato b'\staccato c''\staccato
 c''8( a') a'4.\sf a'8\staccato cis''\staccato d''\staccato d''4_\markup { \italic "cresc." }( c''2 b'4)
 c''8\p\staccato g''4\sf g''8 ~ g''8 g''\staccato f''\staccato e''\staccato
 d''8\staccato a''4\sf a''8 ~ a''8 a''\staccato g''\staccato f''\staccato
 e''8\staccato bes''4\sf bes''8 ~ bes''8 bes''\staccato a''\staccato gis''\staccato
 a''8\staccato a''\staccato a''\staccato gis''\sf\staccato a''\staccato a''\staccato a''\staccato gis''\sf\staccato
 a''4_\markup { \italic "cresc." } a''2 c'''4 ~ c'''4 ees'''!2
 fis'4( g'16)( g a g b a c' b d' c' e' d' f' e' g' f' a' g' b' a' c'' b' d'' c'' e'' d'' f'' e'' g'' fis'' a'' g'')
 g''8 c'''4 e''' g''' c''''8 g2^\f \afterGrace g''^\trill { fis''16([ g'']) }
 c''4 r g'\pp\staccato e'\staccato c'\staccato cis'\staccato d'\staccato e'\staccato
 f'\staccato r aes!\staccato r g\staccato r\f <g d' b'>\staccato <g d' b'>\staccato
 <g e' c''>\staccato r g'\pp\staccato ees'\staccato c'\staccato cis'\staccato d'\staccato ees'\staccato
 f'\staccato r g\staccato r aes\staccato r\f <aes ees' c''>\staccato <aes ees' c''>\staccato
 <aes f' des''>2\ff ~ des''8 \grace { e''16([ des'' c'']) } des''8( f''\sf ees'') ees''2( d''!8) d''( ges''\sf f'')
 f''8( ees'') aes''\sf\staccato ges''\staccato ges''( f'') bes''\sf\staccato aes''\staccato
 aes''( g''!) c'''\sf\staccato bes''\staccato bes''( aes'') d'''\sf\staccato c'''\staccato
 c'''8( b'') g'''2 f'''16( ees''' d''' c''') aes'''2 b' c''4 r8 b''\staccato c'''( g'') r f''\staccato
 ees''8( g'') r b''\staccato c'''( g'') r f''\staccato
 ees''8_\markup { \italic "cresc." }( g'') e''( g'') f''( aes'') g''( bes''!) aes''( c''') d''( f'') ees''!( g'') b'( d'')
 c''8\f c''' c''' c''' c''' c''' c''' c''' c'''8 aes'''4( f'''8) ees'''( g''') b''( d''')
 c'''2\ff ~ c'''8 \grace { d'''16([ c''' b'']) } c'''8( ees'''\sf d''') c'''\staccato c'''( ees'''\sf d''') c'''\staccato c'''( ees'''\sf d''')
 c'''4 r r8 c''8( ees''\sf d'') c''4 r r2 <g ees' c''>4\ff r <g ees' c''> r
 <g ees' c''>2.^\fermata \bar "|."
}