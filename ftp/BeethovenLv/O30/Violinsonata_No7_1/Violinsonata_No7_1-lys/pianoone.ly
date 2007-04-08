\version "2.10.3"

 pianoone = {
 \set Staff.instrumentName = \markup { \column { " " " " " " " " " " "PIANO" } }
 \set Staff.midiInstrument = "acoustic grand"
 \clef treble
 \key c \minor
 \time 4/4
 g'2.\p^\markup { "Allegro con brio" }( ees'16 f' g' ees' c'4\staccato) r4 r2
 c''2.( aes'16 bes' c'' aes' f'4\staccato) r4 r2 \clef bass f'2 ~ f'8 ees'8\staccato d'\staccato c'\staccato
 b4\staccato_\markup { \italic "cresc." }( bes\staccato a\staccato aes\staccato) g2\p <c ees g> <b, d g>1
 c16\p ees g ees c ees g ees c ees g ees c ees g ees <c e g>1
 c16 f aes f c f aes f c f aes f c f aes f <c f aes>1 \clef treble
 \new Voice { \change Staff="three" \stemUp c'16\rest d16[ f aes] \change Staff="two" b16 d' f' aes'
 b' aes' f' d' \change Staff="three" b16 aes f d c'\rest ees[ g c']
 \change Staff="two" ees'16 g' c'' g' c'' g' ees' c' \change Staff="three" g16 c' g ees
 c'8\rest ees16 g c' g ees g c'8\rest d16 g b g d g ees4 c'16\rest ees([ g c'])
 \change Staff="two" ees'16\staccato ees'( g' c'' ees'' c'' d'' ees'' f''4\staccato) }
 f''2\sf( ees''16 d'' c'' b' g''4\staccato) g''2\sf( f''16 ees'' d'' c'') c''2\sf\>( b'\!)
 c''8_\markup { \italic "p cresc." }( cis'' d'' ees'' e'' f'' fis'' g'') g''2 ~ g''8 aes''16( g'' f''! ees''! d'' c''!)
 c''2\sf \afterGrace b'^\trill { a'16[ b'] } <c' ees' g' c''>4\ff\staccato r <d' g' b' d''>\staccato r
 <ees' g' c'' ees''>4\staccato r r f''16\p( ees'' d'' c'')
 c''4( b'4 ~ b'8.) c''16 c''8.^\trill( b'32 c'') << { <c'' ees''>2( d''4) } \\ { c''4\<( a'4\!\> b'\!) } >> r4
 <c' ees' g' c''>4\ff\staccato r <d' f' aes'! bes'! d''>4\staccato r
 <aes' d'' f'' aes''>8\staccato bes16([ c']) d'8\staccato ees'\staccato f'\p\staccato g'\staccato aes'\staccato f'\staccato
 g'8_\markup { \italic "sempre staccato" } bes' g' ees' d' f' d' bes ees' bes c' d' ees' f' ees' des'
 c'8 ees' c' bes aes c' aes a bes a bes a bes a bes c' d' bes d' ees' f' g' aes'! f' g' bes' ees'' g'' bes'' g'' aes'' c'''
 g''8 bes'' g'' ees'' d'' aes'' f'' d'' ees'' bes' g' ees' bes ees' aes d'
 g8\staccato g'\staccato f'\staccato ees'\staccato d'\staccato aes'\staccato f'\staccato d'\staccato
 ees'8\staccato g'\staccato bes'\staccato aes'\staccato g'\staccato f'\staccato ees'\staccato des'\staccato
 \acciaccatura des'16 c'8\staccato b\staccato c'\staccato e'\staccato
 \acciaccatura g'16 f'8\staccato e'\staccato f'\staccato g'\staccato
 aes'8\staccato g'\staccato aes'\staccato g'\staccato aes'\staccato g'\staccato f'\staccato ees'!\staccato
 d'\staccato_\markup { \italic "cresc." } ees'\staccato f'\staccato ees'\staccato
 d'\staccato c'\staccato bes\staccato aes\staccato
 g\staccato bes\staccato ees'\staccato g'\staccato bes'\staccato g'\staccato aes'\staccato c''\staccato
 <ees' g'>8\p( bes <ees' g'> bes <f' aes'> bes <f' aes'> bes)
 ges8_\markup { \italic "cresc." }( bes ees' ges') bes'( <ees' ges'>) <ees' ges'>\staccato <ees' ges'>\staccato
 <ees' ges'>8( c' <ees' ges'> c' <ees' ges'>_\markup { \italic "decresc." } c' <ees' ges'> c')
 <d' f'>16\p bes c' d' ees' f' g' a' bes' c'' d'' ees'' f'' g'' a'' bes''
 c'''4\staccato_\markup { \italic "cresc." } c'4\staccato c'''2\sf
 \new Voice { \stemDown d'''16[ \stemUp d' ees' f'] } g' aes'! bes' c'' d'' ees'' f'' g'' aes''! bes'' c''' d'''
 ees'''4\staccato ees'4\staccato ees'''2\sf
 f'''16\sf( ees''' d''' ees''' f''' e''' f''' e''') f'''\sf( ees''' d''' ees''' f''' e''' f''' e''')
 f'''16\f( ees'''! d''' ees''' d''' c''' bes'' c''') bes''( aes'' g'' aes'' g'' f'' ees'' f'')
 ees''8\p bes'4 bes' bes'( c''16 d'' ees''8\staccato) bes'4( c''16 d'' ees''8\staccato) bes''4( c'''16 d'''
 ees'''8\staccato) bes'4 bes' bes'4( c''16 d'' ees''8\staccato) c''4_\markup { \italic "cresc." }( d''16 e'' f''8\staccato)
 ees''4( f''16 g'' aes''8\staccato) bes''4( c'''16 d''' ees'''8\staccato) bes''4( c'''16 d''' ees'''\staccato\f)
 bes''16( c''' d''') ees'''\staccato bes''( c''' d''') ees'''\staccato bes''( c''' d''') ees'''\staccato bes''( c''' d''')
 ees'''4..\ff ees'16 ees'4.( \startTrillSpan d'16 \stopTrillSpan ees') c'''2\sf ~ c'''8 ees'''16( d''' f''' ees''' d''' c''')
 c'''4( bes'' ~ bes''8 ees''') ees'''8([ g'']) g''([ bes'']) bes''([ ees'']) ees''4^\trill( g''8. f''16)
 ees''8\p\staccato g''16( f'') ees'' d'' c'' bes' aes' g' f' ees' d' c' bes aes
 g16 bes ees' g' aes'\sf( f') d'\staccato aes\staccato g bes ees' g' aes'\sf( f') d'\staccato aes\staccato
 \new Voice { \stemUp g8[ \stemDown g''16 f''] ees'' d'' c'' bes' aes' g' f' ees' d' c' bes aes }
 g8 g'16_\markup { \italic "cresc." } aes' bes'( g') e'\staccato bes\staccato
 aes8\staccato bes'16 c'' des''( bes') g'\staccato des'\staccato
 \new Voice { \stemUp c'8\staccato[ \stemDown f''16 g''] } aes''( f'') d''!\staccato aes'\staccato
 g' ees'' f'' g'' aes''( f'') d''\staccato aes'\staccato ees'16\f\staccato g''( aes'' f'')
 g''\staccato g''( aes'' f'') g''\staccato g''( aes'' f'') g''\staccato g''( aes'' f'') bes''4\ff\staccato r r2
 r16 c' des' ees' f' g' aes' bes' c'' des'' ees'' f'' g'' aes'' bes'' c''' aes'4 r r2
 r16 bes' c'' d''! ees'' f'' g'' aes'' bes'' c''' d''' ees''' f''' d''' bes'' aes''
 g''4\ff\staccato <g' bes' ees'' g''>\staccato r <c'' ees'' aes'' c'''>\ff\staccato r <bes' ees'' g'' bes''>\ff\staccato r2
 r4 <d' f' aes' bes' d''>4\ff r2
 g16\pp\< bes ees' bes g bes ees' bes\! g\> bes ees' bes g bes ees' bes\!
 g bes ees' bes g bes ees' bes g bes ees' bes g bes ees' bes
 f\< aes ees' aes f aes d' aes\! f\> aes d' aes f\! aes d' aes f aes d' aes f aes d' aes f aes d' aes f aes d' aes
 ges bes ees' bes ges bes ees' bes ges bes ees' bes ges bes ees' bes
 ges bes ees' bes ges_\markup { \italic "cresc." } <bes ees'> ges' <bes ees'> ges <bes ees'> ges' <bes ees'>
 ges <bes ees'> ges' <bes ees'> fis <b dis'> fis' <b dis'> fis <b dis'> fis' <b dis'> fis <b dis'> fis' <b dis'>
 fis <b dis'> fis' <b dis'> fis\p <b dis'> fis' <b dis'> fis <b dis'> fis' <b dis'> fis <b dis'> fis' <b dis'>
 fis <b dis'> fis' <b dis'> g! <b cis'> e' <b cis'> g <ais cis'> e' <ais cis'> g <ais cis'> e' <ais cis'> g <ais cis'> e' <ais cis'>
 g <ais cis'> e' <ais cis'> g <ais cis'> e' <ais cis'> fis <ais cis'> e' <ais cis'> fis <ais cis'> e' <ais cis'>
 fis b d' b fis b d' b fis b d' b fis b d' b fis b d' b fis_\markup { \italic "cresc." } b d' b fis b d' b fis b d' b
 g b d' b g b d' b g b d' b g b d' b g b d' b g\p b d' b g b d' b g b d' b
 g <a c'> ees'! <a c'> g <a c'> ees' <a c'> g <a c'> ees' <a c'> g <a c'> ees' <a c'>
 g <a c'> ees' <a c'> g <a c'> fis' <a c'> g <a c'> fis' <a c'> g <a c'> fis' <a c'>
 g <b d'> g' <b d'> g <b d'> g' <b d'> g <b d'> g' <b d'> g <b d'> g' <b d'>
 g4\staccato b16_\markup { \italic "cresc." }( c' d' b g4\staccato) b16_( c' d' b
 g4\staccato) b16( c' d' b g4\staccato) c'16( d' ees' c' g4\staccato) d'16( ees' f' d'
 g4\staccato) ees'16( f' g' ees') <aes aes'>4\fp\staccato aes'8.\staccato aes'16\staccato ees'4\staccato ees'8.\staccato ees'16\staccato
 c'2 ~ c'8. aes16\staccato bes8.\staccato c'16\staccato \acciaccatura ees'16 des'4\staccato des'8.\staccato c'16\staccato
 \acciaccatura c'16 bes4\staccato bes8.\staccato aes16\staccato
 \acciaccatura aes16 g4\staccato g8.\staccato f16\staccato ees8\staccato
 ees'\staccato_\markup { \italic "cresc." } d'\staccato des'\staccato
 c'4\p r4 r2 aes16 aes' g g' aes aes' bes bes' c' c'' bes_\markup{ \italic "cresc." } bes' aes aes' g g' <f f'>4\f r r2
 f'16 f'' e' e'' f'_\markup { \italic "cresc." } f'' ges' ges'' aes' aes'' ges' ges'' f' f'' ees'! ees''! <des' des''>4\f r r2
 <f'' f'''>4\staccato\sf <f'' f'''>8. <f'' f'''>16\staccato <c'' c'''>4\staccato <c'' c'''>8. <c'' c'''>16\staccato <des'' des'''>4 r r2
 <des'' des'''>4\sf\staccato <des'' des'''>8.\staccato <des'' des'''>16\staccato
 <aes' aes''>4\staccato <aes' aes''>8.\staccato <aes' aes''>16\staccato <bes' bes''>8 r16 bes[ r des' r f'] r ges'[ r bes' r des'' r f']
 r16 e'[ r g'! r bes' r g'] r e'[ r g' r e' r c'] r16 f'[ r aes' r c'' r e''] r f''[ r g'' r aes'' r c''] r16 b'[ r d'' r f'' r d''] r b'[ r d'' r b' r g']
 r16 c'[ r ees'! r g' r b'] r c''[ r d'' r ees'' r b'] r c''[ r fis' r g' r d'] r ees'[ r b r c' r aes]
 \clef bass g16\p( aes g a g bes! g b g c' g cis' g d' g ees') g e' g f' g aes'! g g' g_\markup { \italic "decresc." } f' g ees'! g d' g c'!
 g16\pp b d' b g b d' b g b d' b g b d' b g c' ees' c' g c' ees' c' g c' ees' c' g c' ees' c'
 g_\markup { \italic "cresc." } b g a g bes g b g c' g cis' g d' g ees' g e' g f' g_\markup { \italic "decresc." } aes'! g g' g f' g ees'! g d' g c'!
 g16\p b d' b g b d' b g b d' b g b d' b g_\markup { \italic "decresc." } c' ees' c' g c' ees' c' g c' ees' c' g c' ees' c'
 g\pp b d' b g b d' b g c' ees' c' g c' ees' c' g b d' b g b d' b g c' ees' c' g c' ees' c'
 \setTextCresc b\< g aes! g aes g aes g aes g aes g aes g aes g aes g aes g f g f g ees g ees g d g d g\!
 <c ees g>2.\ff \clef treble ees'16( f' g' ees' c'4\staccato) r4 r2 c''2.\sf( aes'16 bes' c'' aes' f'4\staccato) r4 r2
 \clef bass f'2\p( ~ f'8 ees') d'\staccato c'\staccato b4\staccato_\markup { \italic "cresc." }( bes\staccato a\staccato aes\staccato)
 g2\p <c ees g> <b, d g>1 aes2 <des f aes> <c ees aes>1 aes2_\markup { \italic "decresc." } <c f aes>2( <b, d g>1)
 \clef treble << { c''2\rest aes'2( ~ aes'2 g'4 f') } \\ { <c' ees'>1_\markup { \italic "cresc." } <b d'>1 } >>
 <g c' ees'>16 \clef bass ees16\pp[ g ees] c ees g ees c ees g ees c ees g ees <c e g>1
 c16 f aes f c f aes f c f aes f c f aes f <c f aes>1
 \clef treble \new Voice { \change Staff="three" \stemUp c'16\rest d16[ f aes] \change Staff="two" b16 d' f' aes'
 b' aes' f' d' \change Staff="three" b16 aes f d c'\rest ees[ g c']
 \change Staff="two" ees'16 g' c'' g' c'' g' ees' c' \change Staff="three" g16 c' g ees
 c'8\rest ees16 g c' g ees g c'8\rest d16 g b g d g ees4 c'16\rest ees( g c')
 \change Staff="two" ees'16\staccato ees'( g' c'' ees'' c'' d'' ees'' f''4\staccato) }
 f''2\sf( ees''16 d'' c'' b' g''4\staccato) g''2\sf( f''16 ees'' d'' c'') c''2\sf\>( b'\!)
 c''8_\markup { \italic "p cresc." }( cis'' d'' ees'' e'' f'' fis'' g'') g''2 ~ g''8 aes''16( g'' f''! ees''! d'' c''!)
 c''2\sf \afterGrace b'^\trill { a'16[ b'] } <c' ees' g' c''>4\ff\staccato r <d' g' b' d''>\staccato r
 <ees' g' c'' ees''>4\staccato r r f''16\p( ees'' d'' c'')
 c''4( b'4 ~ b'8.) c''16 c''8.^\trill( b'32 c'') << { <c'' ees''>2( d''4) } \\ { c''4\<( a'4\!\> b'\!) } >> r4
 <c' ees' g' c''>4\ff\staccato r <d' f' aes'! bes'! d''>\staccato r <aes' d'' f'' aes''>4\staccato r r2 <bes' e'' g'' bes''>4\sf\staccato r r2
 <c'' f'' c'''>4\f\staccato r <c' fis' c''>\staccato r <b d' g' b'>8\staccato g'16( a') b'8\staccato c''\staccato
 d''8\p\staccato e''\staccato f''\staccato d''\staccato
 e''8_\markup { \italic "sempre staccato" } g'' e'' c'' b' d'' b' g' c'' g' a' b' c'' d'' c'' bes' a' c'' a' g' f' a' fis' a' g' fis' g' fis' g' fis' g' a'
 b'8 g' b' c'' d'' e'' f''! d'' e'' g'' c''' e''' dis''' e''' f''' d''' c''' e''' c''' e''' b'' d''' b'' d''' c''' g'' e'' c'' g' e' d' f' e' e' d' c' b f' d' b
 c'8_\markup { \italic "sempre staccato" } e' g' f' e' d' c' bes! a cis' d' e' \acciaccatura g'16 f'8 e' f' fis'
 \acciaccatura a'16 g'8 fis' g' a' b' c''! d'' e'' f''_\markup { \italic "cresc." } e'' d'' c'' b' a' g' f' e' g' c'' g' e' c' f' a'
 <c' e'>8\p( g <c' e'> g <d' f'> g <d' f'> g)
 <c' ees'!>8\staccato_\markup { \italic "cresc." } g'( c'' g' ees' c') <c' ees'>\staccato <c' ees'>\staccato
 <c' ees'>8( a <c' ees'> a <c' ees'>_\markup { \italic "decresc." } a <c' ees'> a) <b d'>16\p g a b c' d' e' fis' g' a' b' c'' d'' e'' fis'' g''
 aes''!4\staccato aes!\staccato_\markup { \italic "cresc." } aes''2\sf
 \new Voice { \stemDown b''16[ \stemUp b c' d'] } ees'!16 f' g' a' b' c'' d'' ees'' f'' g'' a'' b'' c'''4\staccato c'\staccato c'''4.\sf cis'''8
 d'''16\sf( cis''' d''' cis''' d''' c''' b'' c''') d'''\sf( cis''' d''' cis''' d''' c''' b'' c''') d'''\f( ees''' d''' c''' b'' c''' b'' aes'')
 g''16( aes'' g'' fis'' g'' f'' ees'' d'') c''8\p g'4 g' g'4( a'16 b' c''8\staccato) g'4( a'16 b' c''8\staccato) g''4( a''16 b'' c'''8\staccato)
 g'4 g' g'4( a'16 b' c''8\staccato) aes'!4_\markup { \italic "cresc." }( bes'!16 c'' des''8\staccato) c''4( d''16 e'' f''8\staccato)
 g''4( a''16 b'' c'''8\staccato) g''4( a''16 b'' c'''16\f\staccato)
 g''16( a'' b'') c'''\staccato g''( a'' b'') c'''\staccato g''( a'' b'') c'''\staccato g''( a'' b'') c'''4..\ff c'16 c'4.( \startTrillSpan b16 \stopTrillSpan c'16)
 aes''!2\sf( ~ aes''16 b'' c''' b'' d''' c''' bes'' aes'') aes''4( g''4 ~ g''8 c''') c'''([ ees'']) ees''([ g'']) g''([ c'']) c''4^\trill( ees''8. d''16)
 c''16\p g' fis' g' f' ees' d' c' b c' d' c' b aes g f ees g c' ees' f'\sf( d') b f ees g c' ees' f'\sf( d') b f
 ees16 g' fis' g' f' ees' d' c' b c' d' c' b aes g f ees c'_\markup { \italic "cresc." } ees' f' ges'( ees') c'\staccato ges\staccato
 f f' g'! aes' bes'( g') e'\staccato bes\staccato aes f' d'' ees'' f''( d'') b'\staccato f'\staccato ees'! g' d'' ees'' f''( d'') b'\staccato f'\staccato
 ees'16\staccato ees''( f'' d'') ees''\staccato ees''( f'' d'') ees''\staccato ees''( f'' d'') ees''\staccato ees''( f'' d'') g''4\ff r r2
 r16 aes bes c' des' ees'! f' g' aes' bes' c'' des'' ees'' f'' g'' aes'' aes'4 r r2 r16 g'\sf a' b' c'' d''! ees'' f'' g'' a'' b'' c''' d''' ees''' f''' d'''
 g'''4\ff\staccato <c'' ees'' g'' c'''>\staccato r <aes'! c'' f'' aes''!>\staccato r <g' c'' ees'' g''>\ff\staccato r2 r4 <b d' f' g' b'>\ff\staccato r2
 \clef bass e16\p g c' g e g c' g e g c' g e g c' g e g c' g e g c' g e g c' g e g c' g
 d <f aes> c' <f aes> d <f aes> b <f aes> d <f aes> b <f aes> d <f aes> b <f aes>
 d <f aes> b <f aes> d <f aes> b <f aes> d <f aes> b <f aes> d <f aes> b <f aes> e g b g e g c' g e g c' g e g c' g
 e16 g c' g e g c' g e g c' g e g c' g d <f aes> c' <f aes> d <f aes> b <f aes> d <f aes> b <f aes> d <f aes> b <f aes>
 d <f aes> b <f aes> d <f aes> b <f aes> d <f aes> b <f aes> d <f aes> b <f aes>
 e\sustainDown g c' g \clef treble e' c'_\markup { \italic "cresc." } g' e' c'' g' e'' c'' g'' e'' c''' g'' e''' c''' g'' c''' e'' g'' c'' e'' g' c'' e' g' c' e' g c'
 <e g c'>4\ff\staccato <c' e' g' c''>\staccato r2\sustainUp r4 e'16\p( f' g' e' c'4\staccato) r4
 \new Voice { \change Staff="three" \stemUp <c f aes c'>4^\ff\staccato } <c' f' aes' c''>4\staccato r2
 r4 aes'16\p( bes' c'' aes' f'4\staccato) aes'16( bes' c'' aes')
 des''4\pp\staccato des''8.\staccato des''16\staccato aes'4\staccato aes'8.\staccato aes'16\staccato
 f'2 ~ f'8. des'16\staccato ees'!8.\staccato f'16\staccato
 ges'4\staccato ges'8.\staccato f'16\staccato ees'4\staccato ees'8.\staccato des'16\staccato
 c'2 ~ c'8.\staccato c'16\staccato des'8.\staccato ees'16\staccato
 f'4\staccato f'8.\staccato ees'16\staccato des'4\staccato des'8.\staccato c'16\staccato
 bes8.\staccato des'16\staccato c'8.\staccato bes16\staccato aes8.\staccato c'16\staccato bes8.\staccato aes16\staccato
 \clef bass g8.\staccato bes16\staccato aes8.\staccato g16\staccato f4( g aes2_\markup { \italic "cresc." } <c c'>)
 <d! b>4\p r r \clef treble d'''4 ~ d'''4_\markup { \italic "cresc." } c'''2 c'''4 ~ c'''4 b''2 bes''4( ~ bes'' a'' b'' c''' ~ c'''8\f)
 <g' c'' ees''>4 <c'' ees'' g''> <ees'' g'' c'''> <g'' c''' ees'''>8
 <d'' f'' b''>8\ff <d'' f'' b''> <d'' f'' b''> <d'' f'' b''> <d'' f'' b''> <d'' f'' b''> <d'' f'' b''> <d'' f'' b''>
 <c'' ees'' c'''>8\sfp b8([ c' d'] ees' f' g' ees') c'( b c' d' ees' e' f' g') aes'8( e' f' g' aes' bes'! c'' aes') f'( g' aes' g' f' ees'! d' c')
 b_\markup { \italic "cresc." }( d' f' g' aes' d' g' f') ees'( g' b' c'' ees'' c'' aes' fis') g'\p( c'' ees'' c'' g' b' d'' g'')
 ees'16 ees'' g' g'' fis' fis'' g' g'' f' f'' ees' ees'' d' d'' c' c'' b b' d' d'' f' f'' g' g'' aes' aes'' d' d'' g' g'' f' f''
 ees' ees'' g' g'' b' b'' c'' c''' ees'' ees''' c'' c''' aes' aes'' fis' fis'' g' g'' ees' ees'' c' c'' ees' ees'' g' g'' fis' fis'' g' g'' g g'
 r16 c''\f[ r g'' r ees'' r c''] r g'[ r c'' r g' r ees'] r c'[ r g' r ees' r c'] r b\sf[ r d' r g r b] r c'[ r g'' r ees'' r c''] r g'[ r c'' r g' r ees']
 r16 c'[ r g' r ees' r c'] r b\sf[ r d' r g r b] r c'[ r g' r ees' r c'] r b\sf[ r d' r g r b] c'\ff c'' g' g'' ees' ees'' c' c'' b b' d' d'' g g' b b'
 <c' c''>4\staccato r <c' ees' g' c''>\staccato r s4 r4 r2 \bar "|."
}