\version "2.10.3"

 pianoone = {
 \set Staff.instrumentName = \markup { \column { " " " " " " " " " " "PIANO" } }
 \set Staff.midiInstrument = "acoustic grand"
 \clef treble
 \key bes \major
 \time 4/4
 \partial 8*3 bes'8\staccato[ d''\staccato ees''\staccato] f''4\staccato bes''4.\sf c'''16( bes'')
 a''8\staccato g''\staccato f''4\staccato d''4.\sf f''8\staccato[ ees''\staccato d''\staccato]
 c''8.( d''16) c''4\staccato r8 ees''8\staccato[ d''\staccato c''\staccato] bes'8.( c''16) bes'4 r2
 r8 <bes d'> <d' f'> <bes d'> r <bes ees'> <ees' g'> <bes ees'> r8 <bes d'> <d' f'> <bes d'> r <bes ees'> <ees' g'> <bes ees'>
 r8 <a ees'> <ees' f'> <a ees'> r <a ees'> <ees' f'> <a ees'>
 <bes d'> <d' f'> <bes d'> <d' f'> <bes d'> bes'8\staccato[ a'\staccato bes'\staccato]
 c''8\staccato f'\staccato f''4.\sf ees''8\staccato c''\staccato a'\staccato bes'8( d'') f'4 r2
 <f a ees'>8 f' <f a ees'> f' <f a ees'> f' <f a ees'> f' <f bes d'> f' <f bes d'> f' r8 bes'8\staccato[ d''\staccato ees''\staccato]
 f''4\staccato bes''4.\sf c'''16( bes'') a''8\staccato g''\staccato f''4\staccato d''4.\sf f''8\staccato[ ees''\staccato d''\staccato]
 c''8.( d''16) c''4 r8 ees''8\staccato[ d''\staccato c''\staccato] bes'8.( c''16) <d' bes'>4 r8 \bar "|."
 \break

 s8 s4 s4 r4 ees'16( g' a' bes') r4 d''16( f'' a'' bes'' d'''\f\staccato) c'''\>\staccato bes''\staccato a''\staccato
 g''\staccato f''\staccato ees''\staccato d''\staccato c''\staccato bes'\staccato a'\staccato g'\!\staccato
 f'16\staccato ees'\staccato d'\staccato c'\staccato bes\p\staccato[ a\staccato \clef bass g\staccato f\staccato]
 e( f g a bes c' d' e') \clef treble \times 2/3 { e'8([ f' fis']) } \times 2/3 { g'([ aes' a']) } bes'8 s8 s4
 s4 r4 ees'16( g' a' bes') r4 d''16( f'' a'' bes'' d'''\f\staccato) c'''\>\staccato bes''\staccato a''\staccato
 g''\staccato f''\staccato ees''\staccato d''\staccato c''\staccato bes'\staccato a'\staccato g'\!\staccato
 f'16\staccato ees'\staccato d'\staccato c'\staccato bes\p\staccato[ a\staccato \clef bass g\staccato f\staccato]
 e16( f g a bes c' cis' d') \clef treble \times 2/3 { ees'!8([ e' f']) } \times 2/3 { fis'8([ g' a]) } bes8\staccato r8 r4
 r2 r8 f'8 f'8.^\trill([ e'32 f']) bes'8.([ f'16 d''8. f'16]) f''8 r8 r4 r2 r16 f''16( e'' f'' g'' f'' e'' f'')
 bes''16( f'' e'' f'' d''' f'' e'' f'' f'''8\staccato) f'''\sf([ e''' f'''])
 d'''8\staccato d'''\sf([ cis''' d''']) bes''8\staccato f''16\sf[ bes''] e''16 bes'' f'' bes''
 d''16 bes'' ees''! bes'' f''_\markup { \italic "cresc." } bes'' ees'' bes'' d'' bes'' c'' bes'' bes' bes'' aes' bes''
 g'16\f aes' bes' c'' d'' ees'' f'' g'' a' bes' c'' d'' ees'' f'' g'' a'' bes''16 f'' f''' d''' bes'' f'' f''' d''' bes''8 \bar "|."
 \break

 s8 s4 \bar "" R1 R1 R1 R1 R1 R1 R1 R1 \bar "||"
 \repeat volta 2 { R1 R1 R1 R1 R1 R1 R1 }
 \alternative { { R1 } { r2 r8 } } \bar "|."
 \break

 r8 r4 r16 bes16\f d' f' bes' f' d' bes r bes ees' g' bes' g' ees' bes
 r16 bes d' f' bes' f' d' bes bes' f' d' bes bes' f' d' bes r f c' ees' f' ees' c' f r f a ees' f' ees' a f
 r16 f bes d' f' d' bes f f' d' bes f f' d' bes f r16 bes d' f' bes' f' d' bes r bes ees' g' bes' g' ees' bes
 r16 bes d' f' bes' f' d' bes bes' f' d' bes bes' f' d' bes
 r4 <ees' ees''>4.\sf <f' f''>8\staccato[ <g' g''>\staccato <a' a''>\staccato]
 <bes' bes''>4\staccato <bes bes'>\staccato r2
 ees'8\p( f' c' f' f f' ees' f') d'( f' bes f' f f' d' f') ees'( f' c' f' f f' ees' f')
 \new Voice { \stemUp d'8^([ f' bes d'] \change Staff = "four" f8[ bes d f]) }
 bes4.\ff d'8 ees'4. g'8 <bes bes'>4
 \times 2/3 { f'8\staccato[ g'\staccato a'\staccato] } \times 2/3 { bes'[( a') g'\staccato] }
 \times 2/3 { f'\staccato[ ees'\staccato d'\staccato] }
 c'4 <ees'' ees'''>4.\sf <c'' c'''>8[ <f'' f'''> <f'' f'''>] r4 <bes' bes''>4 r4 \bar "|."
 \break

 \key bes \minor
 bes8.\p^\markup { "Minore." }( des'16) <bes des' f'>2( <a c' ees' ges'> <bes des' f'>4\staccato) r4 r2
 <a c'>2\<( <g bes des'>\!\> <a c'>4\staccato\!) r4 r2
 <bes des' f'>2\<( <a c' ees'! ges'!>\!\> <bes des' f'>4\staccato\!) r4 r2
 \clef bass << { <bes c'>2( <bes des'>4 <f a>) <f a>2( <f bes>4\staccato) } \\ { ges4\< g f <c ees>\! <c ees>2\>( des4\!) } >> r4
 <des ges! bes des'>2\pp <des aes! c' des'!> <des ges bes des'>4\staccato r r2
 <des bes des'>2\<( <e bes e'>\!\> <f a f'>4\staccato) r4\! r2 \clef treble <bes des' f'>2\<( <a c' ees'! ges'>\!\>
 <bes des' f'>4\staccato\!) r4 r2
 \clef bass << { <bes c'>2( <bes des'>4 <f a>) <f a>2( <f bes>4\staccato) } \\ { ges4\< g f <c ees>\! <c ees>2\>( des4\!) } >>
 \bar "|."
 \break

 \clef treble
 \key bes \major
 s4^\markup { "Maggiore." } s2 bes8\staccato^\sf c'16( d' ees' f' g' a')
 bes'8\sf\staccato c''16( d'' ees'' f'' g'' a'') bes''8\sf\staccato bes''16( a'' bes'' c''' d''' ees''')
 f'''4\p( ees''' c''' a'') \break bes''16 d''' bes'' f'' d'' bes' f' d'
 \new Voice { \stemUp bes16[ d' bes \change Staff = "four" f] d[ f ees c] } s2
 bes8\staccato^\sf c'16( d' ees' f' g' a') bes'8\sf\staccato c''16( d'' ees'' f'' g'' a'')
 bes''8\sf\staccato bes''16( a'' bes'' c''' d''' ees''')
 f'''4\p( ees''' c''' a''^\markup { \translate #(cons 3 -1) { \musicglyph #"scripts.turn" } }) c'''2( bes''4) s4
 s2 f'8\sf g'16( a' bes' c'' d'' ees'') f''8\sf\staccato g''16( a'' bes'' c''' d''' ees''')
 f'''8\sf\staccato ees'''16( d''' c''' bes'' a'' g'') f''8\sf\staccato ees''16( d'' c'' bes' a' g') s2 s1
 s2 bes8\staccato c'16( d' ees' f' g' a') bes'8\staccato c''16( d'' ees'' f'' g'' a'')
 bes''8\staccato bes''16( a'' bes'' c''' d''' ees''')
 f'''4\p( ees''' c''' a''^\markup { \translate #(cons 3 -1) { \musicglyph #"scripts.turn" } }) c'''2( bes''8\staccato) \bar "|."
 \break

 bes'16\p( c'')
 \times 2/3 { d''8\staccato[ ees''\staccato e''\staccato] } f''8( bes'') r4 g''8( bes'') r4
 f''8( bes'') r4 bes''8[( d''') d'''( f''')] f'''8( ees''') r4 b''8( c''') r4 cis'''8([ d''']) a''([ bes''!]) e''([ f'']) cis''([ d''])
 r4 <d' f'>8( <bes bes'>) r4 <ees' g'>8( <bes bes'>) r4 <d' f'>8( <bes bes'>) bes''8[( d''') d'''( f''')]
 f'''8[( ees''') ees'''( c''')] c'''[( a'') a''( f'')]
 \times 2/3 { f''8([ g'' e'']) } \times 2/3 { f''8\staccato[ g''\staccato a''\staccato] } bes''4 r4
 r2 \clef bass r4 e8\p( f) f8( bes,) r4 r2 r2 r4 g8( f) f( bes,) r4 r \clef treble a''8( bes'') a''8( bes'') r4 a''8( bes'') r4
 a''8( bes'') r4 a''8[( bes'') cis'''( d''')] f'''8[( ees''') ees'''( c'''!)] c'''[( a'') a''( f'')]
 \times 2/3 { f''8([ g'' e'']) } \times 2/3 { f''8\staccato[ g''\staccato a''\staccato] } bes''4 \bar "|."
 \break

 \key bes \minor
 r4^\markup { "Minore." } r4 <f' bes' des''>8.\p\staccato <f' bes' des''>16\staccato
 <ges' bes' ees''>8.\staccato <ges' bes' ees''>16\staccato <ees' bes' c''>8.\staccato <ees' bes' c''>16\staccato
 <f' bes' des''>4\staccato <des' bes'>8.\staccato <des' bes'>16\staccato
 <f' des''>8.\staccato <f' des''>16\staccato <des' bes'>8.\staccato <des' bes'>16\staccato
 <c' a'>4\staccato <a' c''>8.\staccato <a' c''>16\staccato <a' f''>8.\staccato <a' f''>16\staccato
 <c'' ees''>8.\staccato <c'' ees''>16\staccato <bes' des''>4\staccato <bes' des''>8. <bes' des''>16
 <des'' f''>8. <des'' f''>16 <des'' bes''>8. <des'' bes''>16
 <f'' des'''>4 <f'' bes'' des'''>8. <f'' bes'' des'''>16 <ges'' bes'' ees'''>8. <ges'' bes'' ees'''>16
 <ees'' bes'' c'''>8. <ees'' bes'' c'''>16 <f'' bes'' des'''>8. <f'' bes'' des'''>16
 <des'' f'' bes''>8._\markup { \italic "cresc." } <des'' f'' bes''>16 <bes' des'' f''>8. <bes' des'' f''>16
 <bes' des'' e''>8. <bes' des'' e''>16 <f' f''>8.\ff <f' f''>16 <bes' bes''>8. <bes' bes''>16 <des'' des'''>8. <des'' des'''>16
 <f'' f'''>8. <f'' f'''>16 <bes' bes''>4 <bes' des'' f'' bes''> <bes' des'' f'' bes''> <des'' f''>8. <des'' f''>16
 <ees'' ges''>4\sf <ees'' ges''>8. <ees'' ges''>16 <a' c''>4 <a' c''>8. <a' c''>16
 <bes' des''>4\sf <bes' des''>8. <bes' des''>16 <des'' f''>4 <des'' f''>8. <des'' f''>16
 <ees'' ges''>4\sf <ees'' ges''>8. <ees'' ges''>16 <a' c''>4 <a' c''>8. <a' c''>16
 <bes' des''>4\sf <bes' des''>8. <bes' des''>16 <des'' f''>8. <des'' f''>16 <d'' f''>8. <d'' f''>16
 <f'' aes''!>4\fp^\markup { "tenute" } <f'' aes''>8._\markup { \italic "cresc." } <f'' aes''>16
 <f'' ges''>4 <ees'' ges''>8. <ees'' ges''>16
 <ees'' f''>4 <des''! f''>8. <des'' f''>16 <bes' des'' e''>4 <bes' des'' e''>8. <bes' des'' e''>16
 <f' f''>8.\ff\staccato <f' f''>16\staccato <bes' bes''>8.\staccato <bes' bes''>16\staccato
 <des'' des'''>8.\staccato <des'' des'''>16\staccato <f'' f'''>8.\staccato <f'' f'''>16\staccato
 bes''4 <bes' des'' f'' bes''> <bes' des'' f'' bes''> \bar "|."
 \break

 \key bes \major
 \override TupletBracket #'transparent = ##t
 r4 \times 2/3 { r8 <bes d' f'>8\p[ <bes d' f'>] } \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] } \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] }
 \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] } \override TupletNumber #'transparent = ##t
 \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] } \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] } \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] }
 \times 2/3 { r8 <bes d' g'>[ <bes d' g'>] } \times 2/3 { r8 <bes c' g'>[ <bes c' g'>] } \times 2/3 { r8 <bes c' g'>[ <bes c' g'>] }
 \times 2/3 { r8 <a c' f'>[ <a c' f'>] } \times 2/3 { r8 <a c' f'>[ <a c' f'>] } \times 2/3 { r8 <a c' d'>[ <a c' d'>] }
 \times 2/3 { r8 <a c' d'>[ <a c' d'>] } \times 2/3 { r8 <g bes d'>[ <g bes d'>] } \times 2/3 { r8 <g bes d'>[ <g bes d'>] }
 \clef bass \times 2/3 { r8 <g bes c'>[ <g bes c'>] } \times 2/3 { r8 <e bes c'>[ <e bes c'>] }
 \times 2/3 { r8 <f bes c'>[ <f bes c'>] } \times 2/3 { r8 <g bes c'>[ <g bes c'>] }
 \times 2/3 { r8 <f a c'>\<[ <f a c'>] } \times 2/3 { r8 <f bes ees'!> <f bes ees'>] } \times 2/3 { r8 <f c' f'>[ <f c' f'>] }
 \times 2/3 { r8 <f bes d'>[ <f bes d'>] } \times 2/3 { r8 <g bes c'>[ <g bes c'>] } \times 2/3 { r8 <g bes c'>[ <g bes c'>] }
 \times 2/3 { r8 <f bes c'>[ <f bes c'>] } \times 2/3 { r8 <ees! a c'>[ <ees a c'>] }
 \times 2/3 { r8 <d f bes>[ <d f bes>] } \times 2/3 { r8 <d f bes>[ <d f bes>\!] }
 \times 2/3 { r8\> d[ f] } \times 2/3 { bes[ d' f'\!] }
 \repeat volta 2 { \times 2/3 { r8 <f a c' f'>\<[ <f a c' f'>] } \times 2/3 { r8 <f a c' f'>[ <f a c' f'>] }
 \times 2/3 { r8 <f a c' f'>[ <f a c' f'>] } \times 2/3 { r8 <f a c' f'>[ <f a c' f'>] } \times 2/3 { r8 <f bes d' f'>[ <f bes d' f'>] }
 \times 2/3 { r8 <f bes d' f'>[ <f bes d' f'>] } \times 2/3 { r8 <f bes d' f'>[ <f bes d' f'>] } \times 2/3 { r8 <f bes d' f'>[ <f bes d' f'>] }
 \times 2/3 { r8 <f a c' ees' f'>[ <f a c' ees' f'>] } \times 2/3 { r8 <f a c' ees' f'>[ <f a c' ees' f'>] }
 \times 2/3 { r8 <f a c' ees' f'>[ <f a c' ees' f'>] } \times 2/3 { r8 <f a c' ees' f'>[ <f a c' ees' f'>] }
 \times 2/3 { r8 <f bes d' f'>[ <f bes d' f'>] } \times 2/3 { r8 <f bes d' f'>[ <f bes d' f'>] } \times 2/3 { r8 <f bes d' f'>[ <f bes d' f'>] }
 \times 2/3 { r8 <f bes d' f'>[ <f bes d' f'>\!] }
 \clef treble \times 2/3 { r8 <bes d' f'>\sf[ <bes d' f'>] } \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] }
 \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] } \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] } \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] }
 \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] } \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] } \times 2/3 { r8 <bes d' g'>[ <bes d' g'>] }
 \times 2/3 { r8 <bes c' g'>\<[ <bes c' g'>] } \times 2/3 { r8 <bes c' g'>[ <bes c' g'>\!] }
 \times 2/3 { r8 <a c' f'>\>[ <a c' f'>] } \times 2/3 { r8 <a c' f'>[ <a c' f'>\!] } }
 \alternative { { \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] } \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] } s4 \times 2/3 { bes8[ d' f'] } }
 { \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] } \times 2/3 { r8 <bes d' f'>[ <bes d' f'>] } r8 } }
 \break

 <bes bes'>8\staccato[ <d' d''>\staccato <ees' ees''>\staccato]
 <f' f''>4\staccato <bes' bes''>4.\sf <bes' bes''>8\staccato[ <a' a''>\staccato <g' g''>\staccato]
 <f' f''>4\staccato <d' d''>4.\sf <f' f''>8\staccato[ <ees' ees''>\staccato <d' d''>\staccato]
 <c' c''>8.( <d' d''>16) <c' c''>4\staccato r8 <ees' ees''>8\staccato[ <d' d''>\staccato <c' c''>\staccato]
 <bes bes'>8.( <c' c''>16) <bes bes'>4\staccato r2 bes''1~ \startTrillSpan bes''1~ bes''1~
 \afterGrace bes''1 { a''16[ \stopTrillSpan bes''] } f''1~ \startTrillSpan f''1~ f''1~
 \afterGrace f''1 { e''16[ \stopTrillSpan f''] } bes''1~ \startTrillSpan bes''1 bes''2 a''2
 bes''1 bes''1_\markup { \italic "cresc." } b''1 \afterGrace b''1 { a''16[ \stopTrillSpan b''] }
 d'''16\sf\staccato c'''( b'' a'' g'' fis'' e'' d'') g''\sf\staccato fis''( e'' d'' c'' b' a' g')
 d''\sf\staccato c''( b' a' g' fis' e' d') g'\sf\staccato fis'( e' d' c' b a g)
 fis16_\markup { \italic "cresc." }( g a g b a c' b d' c' e' d' \times 4/6 { fis'16[ e' g' fis' a' g'] }
 b'8\pp[ a' c'' b'] d''[ cis'' e'' d''^\fermata]) \bar "||"

 \key g \major
 \time 6/8 d''4\staccato^\markup { \large "Allegro" }
 g''8~ g''4 e''8~ e''4 d''8~ d''4 b'8~ b'4 c''8~ c''4 a'8~ a'4 b'8 g'8\staccato[ b'\staccato c''\staccato]
 d''4\staccato g''8~ g''4 e''8~ e''4 d''8~ d''4 b'8~ b'4 c''8~ c''4 a'8
 g'4 r8 <b' d''>8\pp\staccato[ <c'' ees''>\staccato <d'' f''>\staccato] <ees'' g''>4\staccato r8
 <a' c''>8\staccato[ <bes' d''>\staccato <c'' ees''>\staccato] <d'' f''>4\staccato r8 r4 r8
 <ees'' g''>8\staccato[( <c'' ees''>\staccato) <bes' d''>\staccato] <a' c''>4\staccato r8
 <d'' f''>8\staccato[( <bes' d''>\staccato) <a' c''>\staccato] bes'4\staccato r8 \bar "||"

 \key bes \major
 bes16\f d' f' bes' d' bes' g' bes' a' bes' c'' bes' f'16 bes' a' bes' c'' bes' f' b' a' b' c'' b'
 g'16 c'' b' c'' d'' c'' ees' a' g' a' bes'! a' d' bes' a' bes' c'' bes' d' bes' d' bes' ees' bes'
 f'16 bes' d'' bes' f' d' g' bes' a' bes' c'' bes' f' bes' a' bes' c'' bes' f' b' a' b' c'' b'
 g'16 c'' b' c'' d'' c'' ees' a' g' a' bes' a' bes'16( a' bes' c'' d'' ees'')
 f''8\sf\staccato[ f''\staccato f''\staccato] f''8( d'' bes') f''8\sf\staccato[ f''\staccato f''\staccato]
 f''8( d'' bes') g'\p( ees'' c'') f'( d'' bes') ees'( c'' a') bes'16( d'' f'' bes'' d''' f''') f'''8\sf( c''' a'')
 bes''8( d''' f''') f'''\sf( c''' a'') bes''( d''' f''') g''\p( ees''' c''') f''( d''' bes'') ees''( c''' a'') bes''4 r8 r4 r8
 r4 <ees'' ees'''>8\sf(~ <ees'' ees'''> <ees'' d'''>) <ees'' c'''>\staccato <d'' bes''>4 r8 r4 r8
 r4 <ees'' ees'''>8\sf(~ <ees'' ees'''> <ees'' d'''>) <ees'' c'''>\staccato
 <d'' bes''>8 ees'''16\ff[ d''' ees''' d'''] ees'''16[ f''' d''' ees''' c''' d'''] bes''4\staccato r8 r4 r8 R2.
 r4 r8 <ees' ees''>4\p\staccato r8 <d' d''>4\staccato r8 <c' c''>4\staccato r8 <bes bes'>4\staccato r8 r4 r8
 R2. s4 s8 s4 s8 f'16 g' a' bes' c'' d'' e'' f'' g'' a'' bes'' a'' \bar "||"
 \time 4/4
 bes''4\staccato <bes' bes''>4.\sf <bes' bes''>8\staccato[ <bes' a''>\staccato <bes' g''>\staccato]
 <bes' f''>4\staccato bes''4. bes''16( a'' bes'' c''' d''' ees''')
 f'''4\staccato <f'' f'''>4.\sf f'''16( e''' f''' e''' f''' e''')
 f'''4\ff\staccato <d'' f'' d'''>\staccato <bes' d'' bes''>8\staccato \bar "|."
}