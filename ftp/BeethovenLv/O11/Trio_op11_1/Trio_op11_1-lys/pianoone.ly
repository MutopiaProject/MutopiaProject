\version "2.10.3"

 pianoone = {
 \set Staff.instrumentName = \markup { \column { " " " " " " " " " " "PIANO" } }
 \set Staff.midiInstrument = "acoustic grand"
 \clef treble
 \key g \minor
 \time 4/4
 \repeat volta 2 {
 <f' f''>2\f^\markup { "Allegro con brio" }( <fis' fis''>2 <g' g''>2.\sf) <ees' ees''>4\staccato
 <c' c''>4\staccato a'\staccato f'\staccato ees'\staccato d'\staccato <bes bes'>\staccato r2
 <f bes f'>2\p( <fis bes fis'> <g bes g'>4\staccato) r4 r2
 <a ees' a'>2\<( <ees' a' ees''>2\!\> <d' bes' d''>4\!\staccato) r4 r2
 << { c''2( g'')~ g''4( f''2 ees''8 d'') d''8( c'') ees''2 a'4 } \\ { g'1\< a'2 bes' g'2\!\> ees'2\! } >>
 <d' bes'>4\staccato r4 r2 R1 R1 R1 R1 R1 R1 R1
 R1 r16 f''16( g'' a'' bes'' c''' d''' e''' f'''4\staccato) r4 R1 r16 f''16( g'' a'' bes'' c''' d''' ees'''! f'''4\staccato) r4 R1
 r8 g'8([ ees' d'] c'[ ees' c' bes]) s1 s4 r4 r4 <f'' f'''>4( <e'' e'''>2\< <f'' f'''>4.\!\> <bes' bes''>8
 <a' a''>4\!\staccato) r4 r4 <f'' f'''>4( <e'' e'''>2\< <f'' f'''>4.\!\> <a' a''>8
 <bes' bes''>4\!\staccato) r4 <f'' f'''>4._\markup { \italic "cresc." } <b' b''>8
 <c'' c'''>2( \afterGrace bes''2^\trill { a''16[ bes''] } a''4\staccato) g'16\p f' a' f' bes' f' c'' f' d'' f' e'' f'
 f''8\f f'16[ f''] g'[ g'' a' a''] bes'[ bes'' c'' c'''] d''[ d''' e'' e'''] f'' f''' r8 g'16\p[ f' a' f'] bes'[ f' c'' f'] d''[ f' e'' f']
 f''8\f f'16[ f''] g'[ g'' a' a''] bes'[ bes'' c'' c'''] d''[ d''' e'' e'''] f''16 f''' r8 r4 <a' c'' f'' a''>4\ff\staccato r4
 <f' a' c'' f''>4\staccato r4 r2 << { d'4.( fis'8 a'4\staccato) } \\ { a2\pp s4 } >> a'4\staccato(
 a'4\staccato a'\staccato a'\staccato <a cis' e' a'>\staccato) <a d' fis' a'>2\staccato <a cis' e' a'>2\staccato
 <a d' fis' a'>1 <bes d' g'>4.( bes'8 d''4\staccato) d''4\staccato(
 d''\staccato d''\staccato d''\staccato <d' fis' a' d''>\staccato) <d' g' bes' d''>2\staccato <d' g' bes' d''>\staccato
 <g' bes' c''>1 f'4\p\staccato r c'\staccato r f4\staccato r r2 R1
 <e e'>2\<( <fis fis'>\!\> <g g'>4\!\staccato) r d'\staccato r g4\staccato r r2 R1 r4 <f a c'>4\p r <g bes c' e'>
 c'''2( <e'' e'''>) <f'' f'''>2(~ <f'' f'''>8[ <e'' e'''>) <d'' d'''>\staccato <c'' c'''>]
 <c'' c'''>8[( <bes' bes''>) <bes' bes''>( <a' a''>)] <a' a''>[( <g' g''>) <g' g''>( <f' f''>)]
 <e' e''>4( <g' g''>) r2 d''2_\markup { \italic "cresc." }( <fis' fis''>)
 <g' g''>4.^\markup { \translate #(cons 5 -1) { \musicglyph #"scripts.turn" } }( <a' a''>8 <bes' bes''>2)~
 <bes' bes''>4( <e' e''> <g' g''>8[ <f' f''>) <d' d''>\staccato <bes bes'>\staccato]
 <a a'>4 <c'' c'''>2\sf\> <e' e''>4\!\p <f' f''>4 r4 g'4\staccato c''\sf~ c'' bes'4\staccato a'\staccato d''\sf~
 d'' c''\staccato_\markup { \italic "decresc." } b'\staccato e''8( d'' c''4 bes'!\p a' g' f'4\f)
 r4 b''\f^\trill( \grace { a''16[ b''] } c'''4\staccato)
 fis''4^\trill( \grace { e''16[ fis''] } g''4\staccato) cis'''4^\trill( \grace { b''16[ cis'''] } d'''4\staccato)
 gis''4^\trill( \grace { fis''16[ gis''] } a''4\staccato) dis'''^\trill( \grace { cis'''16[ dis'''] } e'''4\staccato) R1
 <c''' e'''>4\p( <g''! bes''!> <f'' a''> <e'' g''>) R1 <a'' c'''>8\pp <a'' c'''>( <g'' bes''>) <g'' bes''>(
 <f'' a''>) <f'' a''>( <e'' g''>) <e'' g''> r2 r16 e''16( dis'' e'' fis'' gis'' a'' b'')
 c'''16\f a'' d''' c''' bes''! g''! c''' bes'' a'' f''! bes'' a'' g'' e'' a'' g'' f''4 \appoggiatura f''16 f'''2\sfp f'''16( e''' d''' c'''
 bes''16 c''' d''' c''' bes'' a'' g'' f'' e'' f'' g'' f'' e'' d'' c'' bes' a'4) r r a'16( c'' f'' a''
 bes''4\staccato) r4 r bes'16( e'' g'' bes'' c'''8)
 <c'' f'' a'' c'''>8_\markup { \italic "cresc." }[ <c'' f'' a'' c'''> <c'' f'' a'' c'''>]
 r8 <c'' f'' a'' c'''>[ <c'' f'' a'' c'''> <c'' f'' a'' c'''>] r8 <c'' e'' g'' bes'' c'''>[ <c'' e'' g'' bes'' c'''> <c'' e'' g'' bes'' c'''>]
 r8 <c'' e'' g'' bes'' c'''>[ <c'' e'' g'' bes'' c'''> <c'' e'' g'' bes'' c'''>]
 r8 c''16\f[ c'''] bes'[ bes'' a' a''] g'[ g'' f' f''] e'[ e'' d' d'']
 <c' c''>4\staccato <bes bes'>\staccato <a a'>\staccato <g g'>\staccato <d' a' d''>2\ff( <d' g' bes'>4\staccato) r4
 <c' g' c''>4\p\staccato <c' f' a'>\staccato <d' g' bes'>\staccato <c' e' g'>\staccato
 <d'' a'' d'''>2\ff( <d'' g'' bes''>4\staccato) r4
 <c'' g'' c'''>4\p\staccato <c'' f'' a''>\staccato <d'' g'' bes''>\staccato <c'' e'' g''>\staccato
 r16 d'''16_\markup { \italic "cresc." }( cis''' d''' e''' d''' cis''' d''') r c'''( b'' c''' d''' c''' b'' c''')
 r16 bes''!( a'' bes'' c''' bes'' a'' bes'') r a''( gis'' a'' bes'' a'' gis'' a'')
 f''16\p g''! fis'' g'' f''_\markup { \italic "cresc." } g'' fis'' g'' f'' g'' fis'' g'' f'' g'' fis'' g''
 f''!16 g'' fis'' g'' f'' g'' fis'' g'' f'' g'' fis'' g'' f'' g'' fis'' g''
 f''!\p a'' gis'' a'' f''_\markup { \italic "cresc." } a'' gis'' a'' f'' a'' gis'' a'' f'' a'' gis'' a''
 f''16 a'' gis'' a'' f'' a'' gis'' a'' f'' a'' gis'' a'' f'' a'' gis'' a''
 bes'_\markup { \italic "cresc." } bes'' a' a'' g' g'' f' f'' e' e'' d' d'' c' c'' b b'
 \new Voice { \stemUp bes!\16\f[ bes'! \change Staff = "four" a \change Staff = "three" a']
 \change Staff = "four" g16[ \change Staff = "three" g' \change Staff = "four" f \change Staff = "three" f']
 \change Staff = "four" e16[ \change Staff = "three" e' \change Staff = "four" d \change Staff = "three" d']
 \change Staff = "four" c16[ c' bes, bes] <a, a>4 } r4 r8 c''8\p\staccato[ f''\staccato a''\staccato]
 c'''4\staccato bes''2( g''8 e'') g''4\staccato f''2( c''8 a') c''4\staccato bes'2( g'8 e')
 f'8\staccato[ <c'' c'''>\p\staccato <c'' c'''>\staccato <c'' c'''>\staccato]
 <b' b''>[( <c'' c'''>) <a' a''>\staccato <f' f''>\staccato]
 <g' g''>8_\markup { \italic "cresc." }[ <c'' c'''>\staccato <c'' c'''>\staccato <c'' c'''>\staccato]
 <b' b''>[( <c'' c'''>) <bes' bes''>\staccato <g' g''>\staccato]
 <a' a''>8\staccato[ <c'' c'''>\staccato <c'' c'''>\staccato <c'' c'''>\staccato]
 <b' b''>[( <c'' c'''>) <a' a''>\staccato <f' f''>\staccato]
 <g' g''>8\staccato[ <a' a''>\staccato <bes'! bes''!>\staccato <b' b''>\staccato]
 <c'' c'''>8\staccato[ <cis'' cis'''>\staccato <d'' d'''>\staccato <e'' e'''>\staccato]
 <f'' f'''>4\staccato r <f'' a'' c''' f'''>\ff\staccato r <f'' a'' c''' f'''>4 r r2 }

 <f aes des'>4.\pp( f'8 aes'4\staccato) aes'\staccato
 aes'\staccato( aes'\staccato aes'\staccato <aes c' ees'! aes'>\staccato)
 <aes des' f' aes'>2\staccato <aes c' ees' ges' aes'>\staccato <aes des' f' aes'>1
 <bes des' ges'>4.( bes'8 des''4\staccato) <des' des''>4\staccato(
 <des' des''>\staccato <des' des''>\staccato <des' des''>\staccato <des' f' des''>\staccato)
 <des' ges' des''>2\staccato <des' f' des''>\staccato <des' ees' bes' des''>1
 <c' ees' aes' c''>2\<( <d' f'! aes' des''>\! <bes ees' ges'>\> <ges c' ees'>\! <f aes des'>4\p) r4 r2 R1 R1 R1 R1
 <ges ges'>2\fp <bes bes'> s1 f16\f aes des' f' f aes des' f' f aes des' f' f aes des' f'
 f16 aes des' f' f aes des' f' f aes des' f' f aes des' f' f16 aes d' f' f aes d' f' f aes d' f' f aes d' f'
 f16 aes d' f' f aes d' f' f aes d' f' f aes bes f'
 ges16 bes ees' ges' ges bes ees' ges' ges bes ees' ges' ges bes ees' ges'
 ges16 bes ees' ges' ges bes ees' ges' ges bes ees' ges' g bes e' g'
 g16 bes e' g' g bes e' g' g bes e' g' g bes e' g' g16 bes e' g' g bes e' g' g bes e' g' g bes c' g'
 aes16 c' f' aes' aes c' f' aes' aes c' f' aes' aes c' f' aes' aes16 c' f' aes' aes c' f' aes' aes c' f' aes' a c' fis' a'
 a16 c' fis' a' a c' fis' a' a c' fis' a' a c' fis' a' a c' fis' a' a c' fis' a' a c' fis' a' a c' fis' a'
 g16\ff bes d' g' g bes d' g' g bes d' g' g bes d' g' g16 bes cis' e' g bes cis' e' e g bes cis' e g bes cis' <fis a d'>4 r4 r2
 g'1\fp( aes'2 a' bes' b' c''2\<) <ges' bes' c''>2\!( <f' bes' des''>2\> <bes des' e' g'!>2\!)
 a16 c' f' a' f a c' f' f a c' f' f a c' f' f a c' f' f a c' f' f a c' f' f a c' f' f\< bes des' f' f bes des' f' f bes des' f' f bes des' f'\!
 f16\> bes des' f' f bes des' f' f bes des' f' f bes des' f'\! f a c' f' f a c' f' f a c' f' f a c' f'
 f16 a c' f' f a c' f' f a c' f' f a c' f' f\< bes des' f' f bes des' f' f bes des' f' f bes des' f'
 f16\> bes des' f' f bes des' f' f bes des' f' f bes des' f'\! f a c' f' f a c' f' f\p bes des' f' f bes des' f'
 f16 a c' f' f a c' f' f\pp bes des' f' f bes des' f' <f a c' f'>8 f8\staccato[ g\staccato a\staccato]
 bes8\staccato[ c'\staccato d'!\staccato e'\staccato]
 f16 f' g g' a a' bes bes' c'_\markup { \italic "cresc." } c'' d' d'' ees'! ees''! e' e''
 f'16 f'' g' g'' a' a'' bes' bes'' c'' c''' d'' d''' ees''! ees'''! e'' e''' f'' f''' e'' e''' f'' f''' e'' e''' f'' f''' e'' e''' f'' f''' e'' e'''
 <f'' f'''>2\ff( <fis'' fis'''>2\sf <g'' g'''>2.\sf) <ees''! ees'''!>4\staccato
 <c'' c'''>4\staccato <a' a''>\staccato <f' f''>\staccato <ees' ees''>\staccato <d' d''>\staccato <bes' bes''>\staccato r2
 <f bes f'>2\p( <fis bes fis'> <g bes g'>4\staccato) r4 r2 <a ees' a'>2( <ees' a' ees''> <d' bes' d''>4\staccato) r4 r2
 R1 r2 <c' c''>4.( <cis' cis''>8) <d' d''>8\sf\staccato[ <ees' ees''>\staccato <f' f''>\staccato <g' g''>\staccato]
 <aes' aes''>\staccato[ <bes' bes''>\staccato <c'' c'''>\staccato <d'' d'''>\staccato] <ees'' ees'''>4\fp r4 r2
 R1 r16 bes'16\p( c'' d'' ees'' f'' g'' a''! bes''4\staccato) r4 R1 r16 ees''\p( f'' g'' aes'' bes'' c''' d''' ees'''4\staccato) r4
 R1 r8 c''8([ aes' g'] f'[ aes' f' ees']) d'8[( f') d'\staccato c'\staccato] s2
 s4 r4 r <g' g''>4( <fis' fis''>2\< <g' g''>4.\!\> <c' c''>8\! <b b'>4\staccato) r4 r <g' g''>4(
 <fis' fis''>2\< <g' g''>4.\!\> <b b'>8\! <c' c''>4\staccato)
 g16^\markup { \italic "cresc." } c' ees' g' g c' ees' g' g c' ees' g'
 g16\f c' ees' g' g c' ees' g' g c' ees' g' g c' ees' g' f c' ees' f' f c' ees' f' f bes ees' f' f bes ees' f'
 <f a ees' f'>4\staccato r4 r2 bes'4\p\staccato r f'\staccato r bes\staccato r4 r2 R1
 <a a'>2( <b b'> <c' c''>4\staccato) r4 <g g'>\staccato r c'4\staccato r r2 R1
 r4 <d' f' bes'>4\p\staccato r <ees' f' a'> f''2( <a' a''>)
 <bes' bes''>2(~ <bes' bes''>8[ <a' a''>) <g' g''>\staccato <f' f''>\staccato]
 <f' f''>8[( <ees' ees''>) <ees' ees''>( <d' d''>)] <d' d''>[( <c' c''>) <c' c''>( <bes bes'>)]
 <a a'>4( <c' c''>) r2 g''2_\markup { \italic "cresc." }( <b' b''>)
 <c'' c'''>4.^\markup { \translate #(cons 4 -1) { \musicglyph #"scripts.turn" } }( <d'' d'''>8 <ees'' ees'''>2)~
 <ees'' ees'''>4( <a' a''> <c'' c'''>8[ <bes' bes''>) <g' g''>\staccato <ees' ees''>\staccato]
 <d' d''>4 <f'' f'''>2\sf\> <a' a''>4\!\p <bes' bes''>4 r r s4 s1 s1 r4 g'4\p( f' ees')
 r2 e'''4\f^\trill( \grace { d'''16[ e'''] } f'''4\staccato) b''4^\trill( \grace { a''16[ b''] } c'''4\staccato)
 fis''4^\trill( \grace { e''16[ fis''] } g''4\staccato) cis'''4^\trill( \grace { b''16[ cis'''] } d'''4\staccato)
 gis''4^\trill( \grace { fis''16[ gis''] } a''4\staccato) R1 <d''' f'''>4\p( <c'''! ees'''!> <bes'' d'''> <a'' c'''>) R1
 <d''' f'''>8\p <d''' f'''>( <c''' ees'''>) <c''' ees'''>( <bes'' d'''>) <bes'' d'''>( <a'' c'''>) <a'' c'''>
 r2 r16 a''16( gis'' a'' b'' cis''' d''' e''') f''16\f( f''' e''' f''' ees''' c'''! f''' ees''' d''' bes''! ees''' d''' c''' a'' d''' c''')
 bes''4\staccato bes''2\sfp bes''16( a'' g'' f'' ees''16 f'' g'' f'' ees'' d'' c'' bes' a' bes' c'' bes' a' g' f' ees'
 d'4) r4 r4 d'16( f' bes' d'' ees''4\staccato) r4 r ees'16( a' c'' ees'' f''8)
 <f' bes' d'' f''>8[ <f' bes' d'' f''>_\markup { \italic "cresc." } <f' bes' d'' f''>]
 r8 <f' bes' d'' f''>[ <f' bes' d'' f''> <f' bes' d'' f''>] r <f' a' c'' ees'' f''>[ <f' a' c'' ees'' f''> <f' a' c'' ees'' f''>]
 r8 <f' a' c'' ees'' f''>[ <f' a' c'' ees'' f''> <f' a' c'' ees'' f''>] r8 f''16\f f''' ees'' ees''' d'' d''' c'' c''' bes' bes'' a' a'' g' g''
 <f' f''>4\staccato <ees' ees''>\staccato <d' d''>\staccato <c' c''>\staccato <g' d'' g''>2\ff( <g' c'' ees''>4\staccato) r4
 <f' c'' f''>4\p\staccato <f' bes' d''>\staccato <g' c'' ees''>\staccato <f' a' c''>\staccato
 <g d' g'>2( <g c' ees'>4\staccato) r4 <f c' f'>4^\p\staccato <f bes d'>\staccato <g c' ees'>\staccato <f a c'>\staccato
 r16 d'''16_\markup { \italic "cresc." }( cis''' d''' f''' ees''' d''' ees''') r c'''!( b'' c''' ees''' d''' cis''' d''')
 r16 bes''!( a'' bes'' d''' c'''! b'' c''') r a''( gis'' a'' c''' bes''! a'' bes'')
 bes''16\p c''' b'' c''' bes''_\markup { \italic "cresc." } c''' b'' c''' bes'' c''' b'' c''' bes'' c''' b'' c'''
 bes''!16\p c''' b'' c''' bes'' c''' b'' c''' bes'' c''' b'' c''' bes'' c''' b'' c'''
 bes''!\p d''' cis''' d''' bes''_\markup { \italic "cresc." } d''' cis''' d''' bes'' d''' cis''' d''' bes'' d''' cis''' d'''
 bes'' d''' cis''' d''' bes'' d''' cis''' d''' bes'' d''' cis''' d''' bes'' d''' cis''' d'''
 ees''16_\markup { \italic "cresc." } ees''' d'' d''' c''! c'''! bes' bes'' a' a'' g' g'' f' f'' e' e''
 ees'!\f ees''! d' d'' c' c'' bes bes' a a' g g' s4 s4 r4 r8 f''8\p\staccato[ bes''\staccato d'''\staccato]
 f'''4\staccato ees'''2\sf( c'''8 a'') c'''4\staccato bes''2\sf( f''8 d'') f''4\staccato ees''2\sf( c''8 a')
 bes'8\staccato[ <f'' f'''>\p\staccato <f'' f'''>\staccato <f'' f'''>\staccato]
 <e'' e'''>[( <f'' f'''>) <d'' d'''>\staccato <bes' bes''>\staccato]
 <c'' c'''>8_\markup { \italic "cresc." }[ <f'' f'''>\staccato <f'' f'''>\staccato <f'' f'''>\staccato]
 <e'' e'''>[( <f'' f'''>) <ees''! ees'''!>\staccato <c'' c'''>\staccato]
 <d'' d'''>\staccato[ <f'' f'''>\p\staccato <f'' f'''>\staccato <f'' f'''>\staccato]
 <e'' e'''>[( <f'' f'''>) <d'' d'''>\staccato <bes' bes''>\staccato]
 <c'' c'''>\staccato[ <f' f''>\staccato <a' a''>\staccato <c'' c'''>\staccato]
 <ees''! ees'''!>\staccato[ <c'' c'''>\staccato <f'' f'''>\staccato <f'' f'''>\staccato]
 <bes' bes''>4\f\staccato r <bes' d'' f'' bes''>\staccato r <bes' d'' f'' bes''>4\staccato r a'16 bes' c'' d'' ees'' f'' g'' a''
 bes''4\ff\staccato r <e'' g'' bes'' e'''>\staccato r <e'' g'' bes'' e'''>4\staccato r a''16\p bes'' c''' bes'' a'' bes'' c''' bes''
 a''4\ff\staccato r <ees''! a'' c''' ees'''!>\staccato r
 <ees'' a'' c''' ees'''>4\staccato r f''16\p( g'' aes'' a'' bes'' b'' c''' cis''' d'''4\staccato)
 <bes'' d'''>2\p\< <bes'' d'''>4~ <bes'' d'''> <bes'' d'''>4^\trill( \grace { a''16[ bes''] } <d''' f'''>4 <c''' ees'''>\!\>)~
 <c''' ees'''>4 <bes'' des'''>2\!( <a'' c'''>4 <bes'' d'''>4\staccato) r4 r2
 <f f'>2^\markup { \italic "cresc." }( <fis fis'> <g g'> <ees ees'>) r16 f'16\ff g' a' bes' c'' d'' ees'' f'' g'' a'' bes''
 c'''16 d''' ees''' f''' bes''4 r4 r2^\fermata \bar "|."
}