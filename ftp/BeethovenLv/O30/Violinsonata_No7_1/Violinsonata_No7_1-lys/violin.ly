\version "2.10.3"

 violin = {
 \set Staff.instrumentName = "VIOLIN"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key c \minor
 \time 4/4
 \once \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 138
 R1^\markup { "Allegro con brio" } R1 R1 R1 R1 R1 R1 R1
 g''2.\p( ees''16 f'' g'' ees'' c''4\staccato) r4 r2 c'''2.( aes''16 bes'' c''' aes'' f''4\staccato) r4 r2
 f''2._\markup { \italic "cresc." } ees''16( d'' c'' b') g''2. f''16( ees'' d'' c'') c''2\sf\>( b'2\!) c''4\p r r2
 r8 c''8_\markup { \italic "cresc." }( d'' c'') b'2 ~ b'8 d''_\markup { \italic "cresc." }( ees'' b') c''4.( a'8)
 ees'4\sf\>( g'2) g'4\! ~ g'8\p cis'( d' ees' e' f' fis' g') g'2 ~ g'8 aes'16( g' f' ees'! d' c'!)
 c'2\sf \afterGrace b2^\trill { a16[ b] } c'4 <g ees' c''>4\ff\staccato r4 <b g' d''>4\staccato r4 <c' g' ees''>4\staccato r2
 r8 fis''8\p( g'' fis'') g''4 r4 R1 r4 <g ees' c''>4\ff\staccato r <bes! f' d''>\staccato
 r4 <d' bes' aes''>4\staccato r4 bes'8.\p\staccato bes'16\staccato ees''4\staccato ees''8.\staccato ees''16\staccato
 bes'4\staccato bes'8.\staccato bes'16\staccato g'2 ~ g'8.[ ees'16\staccato f'8.\staccato g'16\staccato]
 \acciaccatura bes'8 aes'4\staccato aes'8.\staccato g'16\staccato \acciaccatura g'8 f'4 f'8.\staccato ees'16\staccato
 d'4( f'2\sf) d'8.\staccato ees'16\staccato f'4\staccato f'8.\staccato g'16\staccato
 aes'8.\staccato[ bes'16\staccato c''8.\staccato d''16\staccato] ees''2. c''8.\staccato aes'16\staccato
 bes'4\staccato bes'8.\staccato bes'16\staccato bes'4\staccato bes'8.\staccato bes'16\staccato
 ees'8\staccato g'\staccato bes'\staccato ees''\staccato g''\staccato ees''\staccato d''\staccato f''\staccato
 ees''\staccato g''\staccato f''\staccato ees''\staccato d''\staccato aes''\staccato f''\staccato d''\staccato
 ees''8_\markup { \italic "sempre staccato" } g'' bes'' aes'' g'' f'' ees'' des''
 \acciaccatura des''16 c''8 b' c'' e'' \acciaccatura g''16 f''8 e'' f'' g'' aes'' g'' aes'' g'' aes'' g'' f'' ees''!
 d''!_\markup { \italic "cresc." } ees'' f'' ees'' d'' c'' bes' aes' g' bes' ees'' g'' bes'' g'' aes'' c'''
 bes''8\p\staccato bes''( g'' ees'') aes''\staccato aes''( f'' d'')
 ges'_\markup { \italic "cresc." }( bes' ees'' ges'') bes''( ees''') ees'''\staccato ees'''\staccato
 ees'''8( ges'') ges''\staccato ges''\staccato ees'''8_\markup { \italic "decresc." }( ges'') ges''\staccato ges''\staccato
 f''4\p r4 r2 a'16 a_\markup { \italic "cresc." } bes c' d' ees' f' g' a' bes' c'' d'' ees'' f'' g'' a'' aes''!4\staccato aes!4\staccato aes''2\sf
 \new Voice { \stemDown g''16[ \stemUp g aes bes] } c'16 d' ees' f' g' aes' bes' c'' d'' ees'' f'' g''
 aes''16\sf( g'' f'' g'' aes'' g'' aes'' g'') aes''\sf( g'' f'' g'' aes'' g'' aes'' g'')
 aes''\f( g'' f'' g'' f'' ees'' d'' ees'') d''( c'' bes' c'' bes' aes' g' aes') g'8\p g''16( f'')
 ees''16\staccato d''\staccato c''\staccato bes'\staccato aes'\staccato g'\staccato
 f'\staccato ees'\staccato d'\staccato c'\staccato bes\staccato aes\staccato
 g16 bes ees' g' aes'\sf( f') d' aes\staccato g bes ees' g' aes'\sf( f') d' aes\staccato
 \new Voice { \stemUp g8\staccato[ \stemDown g''16\staccato( f''\staccato)] }
 ees''16\staccato d''\staccato c''\staccato bes'\staccato aes'\staccato g'\staccato f'\staccato ees'\staccato
 d'\staccato c'\staccato bes\staccato aes\staccato
 g16 bes g'_\markup { \italic "cresc." } aes' bes'( g') e' bes\staccato aes aes' bes' c'' des''( bes') g' des'\staccato
 c'16 c'' f'' g'' aes''( f'') d''!\staccato aes'\staccato g' ees'' f'' g'' aes''( f'') d''\staccato aes'\staccato
 g'16\f\staccato g''( aes'' f'') g''\staccato g''( aes'' f'') g''\staccato g''( aes'' f'') g''\staccato g''( aes'' f'') bes''4\ff r r2
 << { ees''2 } \\ { <aes f'>4 s4 } >> <a fis'>2( <bes g'>4) <bes g'>2 <bes g'>4 ~ <bes g'>4
 <bes g'>2( <bes aes'>4 ~ <bes g'>8\p\staccato) bes'4 bes' bes'4( c''16 d'' ees''8\staccato)
 bes'4( c''16 d'' ees''8\staccato) bes''4( c'''16 d''' ees'''8\staccato) bes'4 bes' bes'( c''16 d'' ees''8\staccato)
 c''4_\markup { \italic "cresc." }( d''16 e'' f''8\staccato) ees''4( f''16 g'' aes''8\staccato)
 bes''4( c'''16 d''' ees'''8\staccato) bes''4( c'''16 d''' ees'''16\f\staccato) bes''( c''' d''')
 ees'''16\staccato bes''( c''' d''') ees'''\staccato bes''( c''' d''') ees'''\staccato bes''( c''' d''')
 ees'''4..\ff ees'16 ees'4.^\trill( d'16 ees') c''1\sf aes''4.. ces'16 ces'4.^\trill( bes16 ces') <bes bes'>1\sf
 <bes g'>4\ff\staccato r <aes ees' c''>\ff\staccato r <g ees' bes'>4\ff\staccato r r2 <bes f' d''>4\ff\staccato r r2
 R1 r4 ees''4\p( g'' ees'') ees''4( d''2. ~ d''4) ces'''4( d'' bes'') bes''4( ees''2. ~ ees''4)
 <dis'' fis''>4\staccato_\markup { \italic "cresc." }( <dis'' fis''>\staccato <dis'' fis''>\staccato)
 <dis'' fis''>1 ~ <dis'' fis''>4 b''4\p( dis''' b'') b''4( ais''2. ~ ais''4) g'''4( ais'' fis''') fis'''4( b''2. ~ b''4)
 <b' d''>4\staccato_\markup { \italic "cresc." }( <b' d''>\staccato <b' d''>\staccato) <b' d''>1 ~ <b' d''>4 g''4\p( b'' g'')
 g''4( fis''2. ~ fis''4) ees'''!4( fis'' d''') d'''4( g''2. ~ g''4) b'16_\markup { \italic "cresc." }( c'' d'' b') g'4\staccato b'16( c'' d'' b')
 g'4\staccato b'16( c'' d'' b') g'4\staccato c''16( d'' ees'' c'') g'4\staccato d''16( ees'' f'' d'') g'4\staccato ees''16( f'' g'' ees'')
 aes''4\fp\staccato aes''8.\staccato aes''16\staccato ees''4\staccato ees''8.\staccato ees''16\staccato
 c''2 ~ c''8. aes'16\staccato bes'8.\staccato c''16\staccato \acciaccatura ees''16 des''4\staccato des''8.\staccato c''16\staccato
 \acciaccatura c''16 bes'4\staccato bes'8.\staccato aes'16\staccato
 \acciaccatura aes'16 g'4\staccato g'8.\staccato f'16\staccato ees'8\staccato
 ees''\staccato_\markup { \italic "cresc." } f''\staccato g''\staccato
 aes''4\p\staccato aes''8.\staccato aes''16\staccato ees''4\staccato ees''8.\staccato ees''16\staccato
 c''2\sf ~ c''8. c''16\staccato_\markup { \italic "cresc." } d''!8.\staccato e''16\staccato
 f''4\f\staccato f''8.\staccato f''16\staccato c''4\staccato c''8.\staccato c''16\staccato
 aes'2\sf ~ aes'8.[ c'16\staccato des'8.\staccato ees'16\staccato] f'8\f des''16( ees'' f'' ees'' f'' ges'')
 aes''( g'' aes'' bes'' c''' aes'' bes'' c''') des'''8 des''16 des'' c'' c'' bes' bes' a' a' ges' ges' f' f' ees'! ees'
 des'8 bes'16( c'' des'' c'' des'' ees'') f''( e'' f'' g'' a'' f'' g'' a'') bes''8 bes'16 bes' aes'! aes' ges' ges' f' f' ees'! ees' des' des' ces' ces'
 bes4\staccato des'''2\sf bes'8. bes'16 bes'4\staccato c'''2\sf c'8. c'16 c'4\staccato aes''2\sf f'8. f'16
 f'4\staccato d'''!2\sf <g f'>8. <g f'>16 <g ees'>4\staccato c'''2\sf c'''8. c'''16
 c'''8\staccato[ fis''\staccato g''\staccato d''\staccato] ees''\staccato[ b'\staccato c''\staccato aes'\staccato]
 g'4 r r2 r4 b'8\p( c'' d''_\markup { \italic "decresc." } ees'' f'' fis'') g''4\pp\staccato g''4\staccato r g''16( f''! ees'' d'')
 ees''4\staccato ees''\staccato r f''16( ees'' d'' c'') g'4 r r2 r4 b'8_\markup { \italic "decresc." }( c'' d'' ees'' f'' fis'')
 g''4\pp\staccato g''\staccato r g''16( f''! ees'' d'') ees''4\staccato_\markup { \italic "decresc." } ees''\staccato r f''16( ees'' d'' c'')
 g'4\pp( g'') r f''16( ees'' d'' c'') g'4( g'') r f''16( ees'' d'' c'')
 g''8 \setTextCresc <g g'>4\< <g g'> <g g'> <g g'>8 ~ <g g'> <g g'>4 <g g'>8 ~ <g g'>8[ a'16 b'] c'' d'' ees'' f''\!
 g''2.\ff( ees''16 f'' g'' ees'' c''4\staccato) r4 r2 c'''2.\sf( aes''16 bes'' c''' aes'' f''4\staccato) r4 r2 f''2\p( ~ f''8 ees'') d''\staccato c''\staccato
 b'4\staccato_\markup { \italic "cresc." }( bes'\staccato a'\staccato aes'\staccato) g'2\p g' g'1 R1 R1 R1 R1
 r4 aes''4\p\staccato aes''\staccato_\markup { \italic "cresc." } aes''\staccato aes''2( g''4) g''4
 g''2.\p( ees''16 f'' g'' ees'' c''4\staccato) r4 r2 c'''2.( aes''16 bes'' c''' aes'' f''4\staccato) r4 r2
 f''2._\markup { \italic "cresc." } ees''16( d'' c'' b') g''2. f''16( ees'' d'' c'') c''2\sf\>( b'2\!) c''4\p r r2
 r8 c''8_\markup { \italic "cresc." }( d'' c'') b'2 ~ b'8 d''_\markup { \italic "cresc." }( ees'' b') c''4.( a'8)
 ees'4\sf\>( g'2) g'4\! ~ g'8\p cis'( d' ees' e' f' fis' g') g'2 ~ g'8 aes'16( g' f'! ees'! d' c'!)
 c'2\sf \afterGrace b2^\trill { a16[ b] } c'4 <g ees' c''>4\ff\staccato r4 <b g' d''>4\staccato r4 <c' g' ees''>4\staccato r2
 r8 fis''8\p( g'' fis'') g''4 r4 R1 r4 <g ees' c''>\ff\staccato r <aes f' d''>\staccato r4 aes''2\sf g''16( f'' ees'' d'')
 r4 <bes' bes''>2\sf aes''16( g'' f'' e'') r4 <c'' c'''>4\f\staccato r4 c'''8.\staccato c'''16\staccato
 b''4\staccato g''\staccato r g''8.\p\staccato g''16\staccato
 c'''4\staccato c'''8.\staccato c'''16\staccato g''4\staccato g''8.\staccato g''16\staccato
 e''2 ~ e''8. c''16\staccato d''8.\staccato e''16\staccato \acciaccatura g''16 f''4\staccato f''8.\staccato e''16\staccato
 \acciaccatura e''16 d''4\staccato d''8.\staccato c''16\staccato b'4( d''2\sf) b'8.\staccato c''16\staccato
 d''4\staccato d''8.\staccato e''16\staccato f''8.\staccato g''16\staccato a''8.\staccato b''16\staccato
 c'''2. a''8.\staccato f''16\staccato g''4\staccato g''8.\staccato g''16\staccato g''4\staccato g''8.\staccato g''16\staccato
 c''8\staccato[ e'\staccato g'\staccato c''\staccato] e''\staccato[ c''\staccato b'\staccato d''\staccato]
 c''8\staccato[ e''\staccato d''\staccato c''\staccato] b'\staccato[ f''\staccato d''\staccato b'\staccato]
 c''8_\markup { \italic "sempre staccato" } e'' g'' f'' e'' d'' c'' bes'! a' cis'' d'' e'' \acciaccatura g''16 f''8 e'' f'' fis''
 \acciaccatura a''16 g''8 fis'' g'' a'' b'' c'''! d''' e''' f'''_\markup { \italic "cresc." } e''' d''' c''' b'' a'' g'' f'' e'' g'' c''' g'' e'' c'' f'' a''
 e''8\p\staccato g''( e'' c'') b'\staccato f''( d'' b') c''\staccato_\markup { \italic "cresc." } g''( c''' g'') ees''!( c'') c'''\staccato c'''\staccato
 c'''8( ees'') ees''\staccato ees''\staccato c'''_\markup { \italic "decresc." }( ees'') ees''\staccato ees''\staccato d''4 r r2
 r16 c'16\p d' ees' f'_\markup { \italic "cresc." } g' aes' bes' c'' d'' ees'' f'' g'' aes'' bes'' c''' d'''4\staccato d'\staccato d''2\sf
 ees''16 ees' f' g' aes' bes' c'' d'' ees''( d'' ees'' d'' ees'' d'' ees'' e'') f''\sf( e'' f'' e'' f'' ees'' d'' ees'') f''\sf( e'' f'' e'' f'' ees'' d'' ees'')
 f''16\f( g'' f'' ees'' d'' ees'' d'' c'') b' b' b b c' c' d' d' ees'\p g''( fis'' g'' f'' ees'' d'' c'' b' c'' d'' c'' b' aes' g' f')
 ees'16\staccato g'\staccato c''\staccato ees''\staccato f''\sf( d'') b'\staccato f'\staccato
 ees'\staccato g'\staccato c''\staccato ees''\staccato f''\sf( d'') b'\staccato f'\staccato
 ees'16 g''( fis'' g'' f'' ees'' d'' c'' b' c'' d'' c'' b' aes' g' f')
 ees'16\staccato c''\staccato ees''\staccato_\markup { \italic "cresc." } f''\staccato ges''\sf( ees'') c''\staccato ges'\staccato
 f'\staccato f''\staccato g''!\staccato aes''\staccato bes''!( g'') e''\staccato bes'\staccato
 aes'16\staccato f''\staccato b''\staccato c'''\staccato d'''( b'') g''\staccato f''\staccato
 ees''!\staccato g''\staccato b''\staccato c'''\staccato d'''( b'') g''\staccato f''\staccato
 ees''\f\staccato ees''( f'' d'') ees''\staccato ees''( f'' d'') ees''\staccato ees''( f'' d'') ees''\staccato ees''( f'' d'') g''4 r4 r2
 <c' aes'>2\ff <c' d'>2( <c' ees'>4) <c' ees'>2 <c' ees'>4 ~ <c' ees'>4 <c' ees'>2( <b f'>4 <c' ees'>8) g'4 g' g'4( a'16 b' c''8\staccato)
 g'4( a'16 b' c''8\staccato) g''4( a''16 b'' c'''8\staccato) g'4 g' g'4( a'16 b' c''8\staccato)
 aes'!4_\markup { \italic "cresc." }( bes'!16 c'' des''8\staccato) c''4( d''16 e'' f''8\staccato) g''4( a''16 b'' c'''8\staccato)
 g''4( a''16 b'' c'''\f\staccato) g''( a'' b'' c'''\staccato) g''( a'' b'' c'''\staccato) g''( a'' b'' c'''\staccato) g''( a'' b'')
 c'''4..\ff c'16 c'4.^\trill( b16 c') aes'1\sf f''4.. aes16 aes4.^\trill( g16 aes) <f f'>1\sf
 <g ees' c''>4\ff\staccato r <f' c'' aes''>\ff\staccato r <ees' c'' g''>\ff\staccato r r2 <g d' b'>4\ff r r2 R1
 r4 c''4\p( e'' c'') \grace { b'16[ c'' d''] } c''4( b'2. ~ b'4) d''4( f'' b') d''4( c''2. ~ c''8) g''8( fis'' g'' f'' e'' d'' c'')
 \grace { b'16[ c'' d''] } c''4( b'2. ~ b'4) d''4( f'' b') <e' c''>1_\markup { \italic "cresc." } ~ <e' c''>4 <e' c''> <e' c''> <e' c''>
 << { g''2. e''16( f'' g'' e'' c''4\staccato) } \\ { <e' c''>4\ff s4 s2 s4 } >> r4 r2 c'''2.\ff aes''16( bes'' c''' aes'' f''4\staccato) r4 r2
 r2 r4 aes''16\pp( bes'' c''' aes'' des'''4\staccato) des'''8.\staccato des'''16\staccato aes''4\staccato aes''8.\staccato aes''16\staccato
 bes''2 ~ bes''8. bes''16\staccato c'''8.\staccato des'''16\staccato
 ees'''!4\staccato ees'''8.\staccato des'''16\staccato \acciaccatura des'''32 c'''4\staccato c'''8.\staccato bes''16\staccato
 a''2 ~ a''8. a''16\staccato bes''8.\staccato c'''16\staccato
 des'''8.\staccato g''16\staccato aes''!8.\staccato bes''16\staccato c'''8.\staccato f''16\staccato g''8.\staccato aes''16\staccato
 bes''8.\staccato e''16\staccato f''8.\staccato g''16\staccato aes''4( g'' f''2_\markup { \italic "cresc." } fis''2 g''4\p) r4 r f''4(
 e''2_\markup { \italic "cresc." } ees'' d'' des'') c''2( d''!4 ees'' ~ ees''8) g''4\f c''' ees'''
 g'''8 ~ g'''8\ff g'''\staccato g'''\staccato g'''\staccato g'''\staccato g'''\staccato g'''\staccato g'''\staccato
 g'''2.\sfp ees'''16( f''' g''' ees''' c'''4\staccato) r4 r2
 c'''2. aes''16( bes'' c''' aes'' f''4) r4 r2 f''2._\markup { \italic "cresc." } ees''16( d'' c'' b') g''2. f''16( ees'' d'' c'') c''2\p( b')
 c''8_\markup { \italic "cresc." } c'''4 c'''8 ~ c'''8 c'''\staccato d'''\staccato ees'''\staccato f'''4\staccato f'''2\sf ees'''16( d''' c''' b'')
 g'''4\staccato g'''2\sf f'''16( ees''' d''' c''') c'''2( b'') c'''4\f r4 r2
 r4 r8. g''16( g'''4..\sf) g'''16 ees'''4 r r2 r4 r8. g''16( g'''4..\sf) g'''16 ees'''4 r8. g''16( g'''4..\sf) g'''16
 ees'''4 r8 g'16\ff( g'') fis''( g'' fis'' g'' fis'' g'' fis'' g'') ees''4\staccato r <g' ees'' c'''>\staccato r <g ees' c''>4\staccato r r2 \bar "|."
 }