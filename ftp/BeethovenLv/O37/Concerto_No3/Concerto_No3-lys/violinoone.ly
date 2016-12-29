\version "2.19.46"

 violinoone = {
 \set Staff.instrumentName = "Violino I"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key c \minor
 \time 4/4
 c'2\p^\markup { \bold "Allegro con brio" } ees'
 g'4. f'8\staccato ees'4\staccato d'\staccato
 c'4\staccato r8 g\staccato c'4\staccato r8 g\staccato c'4 r4 r2
 R1 R1 R1 R1 g''2.\p( f''8 ees'') d''( c'') c''2\sf c''4 c'''2.( bes''8 aes'') g''( f'') f''2\sf f''4
 f''2.( ees''8 d'') c''( b') b''2\sf
 << { \stemDown b''4^\trill } \\ { \stemUp s16( s16 a''16 b'') } >>
 c'''4\staccato f''\ff\staccato ees''\staccato d''\staccato
 c''4 r r2 b'2.\p d''8.( c''16) c''4 r r2 R1 R1
 d''2.\p f''8.( ees''16) ees''4 r r2 R1
 << { ees''2\staccato s2 } \\ { \stemUp <g ees'>4_\f s4 \stemDown g''2^\staccato } >>
 bes''4. aes''8\staccato g''4\staccato f''\staccato
 ees''2\sf( ~ ees''8 d'') d''( c'') c''( bes') bes'( aes') aes'( g') g'( f')
 <aes f'>2\staccato aes''2\staccato c'''4.\sf bes''8\staccato aes''4\staccato g''\staccato
 f''2\sf( ~ f''8 ees'') ees''( d'') d''( c'') c''( bes') bes'( b' c'' aes')
 g'2\ff\staccato bes''2\staccato des'''2. g''4\staccato
 aes''2\staccato c'''\staccato ees'''2. a''4\staccato bes''4\staccato bes''2\sf( aes''!4)
 aes''4\staccato ges''2\sf( f''8 ees'') ees''4\staccato d''2\sf( ees''8 f'')
 f''4\staccato ees''2\sf( f''8 ges'')
 f''8( bes'') bes''\sf\staccato bes''\staccato
 bes''\staccato bes''\staccato bes''\staccato aes''\staccato
 aes''( ges'') ges''\sf\staccato ges''\staccato
 ges''\staccato ges''\staccato f''\staccato ees''\staccato
 ees''( d'') d''\sf\staccato d''\staccato d''\staccato d''\staccato ees''\staccato f''\staccato
 f''( ees'') ees''\sf\staccato ees''\staccato ees''\staccato ees''\staccato f''\staccato ges''\staccato
 f''16 f'' f'' f'' f''4:16 ges''2:16\sf f''2:16 a''2:16
 bes''4:16 ges''4:16\sf f''4:16 a''4:16 bes''4:16 ges''4:16\sf f''4:16 a''4:16 bes''4 r r2 R1
 g'2\p f'8( g' aes' f') ees'2 bes4. ees'8 f'4\staccato( f'4\staccato f'4\staccato fis'4\staccato)
 fis'2( g'4) r8 ees'8 aes'2( g'4) r8 ees'8 c''2( bes'4) bes'( a' aes' g' c'') ees'2( d'4) bes'
 g''2\pp f''8( g'' aes'' f'') ees''2 d''8( ees'' f'' d'')
 c''4\staccato( d''\staccato ees''\staccato fis''\staccato) g''2.\<( f''!4\!)
 e''8\p( c'' g' e'') d''( e'' f'' d'') c''( g' e' g') c'( e' g' c'')
 d''( cis'' d'' cis'') d''4\staccato( dis''\staccato) dis''2( e''4) r8 c''!
 f''2\sf( e''4) r8 c'' a''2\sf( g''4) r8 f'' e''4\staccato e''\staccato e''8( d'' c'' d'')
 d''4.( dis''8 e''4) r8 c''8\p
 f''2:16 ees''!2:16 aes''!2:16 g''2:16_\markup { \italic "cresc." } fis''2:16 f''2:16
 ees''!4:16\f d''4:16 c''4:16 b'4:16 c''4 r r2 R1
 r4 e''\p e'' e'' f''2\fp aes''
 c'''4. bes''8\staccato aes''4\staccato_\markup { \italic "cresc." } g''\staccato
 f''4\staccato ees''\staccato des''\staccato c''\staccato b'\f r r2 R1
 r4 b''4:16 b''2:16 c'''4\ff r <f' c'' aes''> r <ees' c'' g''> r <g d' b'> r <g ees' c''> r r2 R1
 r2 aes''4.\p( f''16 d'') d''8( c'') c''\staccato c''\staccato c''( b') b'\staccato b'\staccato
 c''4 r r2 R1 R1 aes'1\p ~ aes'1 <b aes'>2:16_\markup { \italic "cresc." } <b aes'>2:16
 <bes! aes'>2:16 <bes aes'>2:16 fis'2:16 f'2:16 e'4:16\p ees'4:16 d'4:16 g'4:16
 c'4 r4 r aes''4\sf ~ aes''4. g''8\staccato f''\staccato ees''\staccato d''\staccato g''\staccato
 ees''4 r8 ees''\pp c''4 r8 c'' d''4 r8 d'' g'4 r8 g'
 ees''16 c''' c''' c''' c'''4:16_\markup { \italic "cresc." } c'''2:16 c'''2:16\f b''2:16
 c'''4\ff r r2 c'2\ff ees' g'4.\sf f'8\staccato ees'4\staccato d'\staccato
 c'4 r8 g\staccato c'4\staccato r8 g\staccato c'4\staccato r r r8 <d'' b''>\staccato
 <ees'' c'''>4\staccato r r2 c'4\staccato\ff r c'\staccato r
 c'2^\fermata r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 ees'1\p ~ ees'4 ees'\staccato( ees'\staccato ees'\staccato)
 aes'1 ~ aes'4 aes'\staccato( aes'\staccato aes'\staccato) aes'1 ~ aes'4
 aes'( g' b') c''4 c'' r aes' r g' r g' g' r r2 b'2.\p( d''8. c''16) c''4 r r2 R1 R1 d''2.\p( f''8. ees''16) ees''4 r r2 R1
 << { ees''2\staccato g''\staccato bes''4.\sf aes''8\staccato g''4\staccato f''\staccato } \\
 { \stemUp <g ees'>4\ff s4 s2 } >> ees''4 r r2 R1
 aes''2\ff\staccato c'''\staccato ees'''4.\sf des'''8\staccato c'''4\staccato bes''\staccato a''4 r r2 R1
 r4 bes'\p r bes' r bes' r bes' r bes' r bes' r bes' r bes' r bes' r bes'
 r4 bes' r bes' r bes' r bes' r bes' r bes' bes' r r a'( bes'\staccato) r r a'(
 bes'\staccato) bes'\staccato r aes'!\staccato r g'\staccato r f'\staccato ees'\staccato d'\staccato r2
 R1 R1 R1 R1 R1 g'4\p r f' r ees' r r2 R1 R1 aes'4 r g' r c'' r bes' r R1 r2 r4 bes4\p
 g'2( f'8 g' aes' f') ees'2 bes4. ees'8 f'4\staccato( f'\staccato f'\staccato fis'\staccato)
 fis'2( g'4) r8 ees' aes'2\sf( g'4) r8 ees' c''2\sf( bes'4) r8 aes' g'4\f\staccato g'\staccato g'8( f' ees' f')
 f'4.( fis'8 g'4) r R1 R1
 a'1\pp aes' g'2( f' ees' d') ees'4 r r2 R1 r2 r4 f'4\p r ees' r d' ees' r r2 R1 R1 R1
 f'2\p ges'4.( aes'8) bes'4 bes' r aes' r ges' r f' r ges' r f' r ees' r d'
 ees'4 r8 bes\staccato ees'4\staccato r r r8 bes\staccato ees'4\staccato r R1 R1 R1 R1
 r4 r8 bes'8\p\staccato ees''4\staccato r4 r r8 bes'\staccato ees''4\staccato r R1 R1 R1
 f'1\p g'4 r8 bes''8\staccato ees'''4\staccato r R1 r4 r8 c'''8\staccato ees'''4\staccato r R1
 r4 r8 c'''\staccato ees'''4\staccato r R1 r4 g' r aes' r g' r fis'
 g'4 r r2 R1 R1 R1 aes''4\p r r2 R1 d'4 r r2 R1
 <g ees' ees''>4^\f r r c'''4\sf ~ c'''4. bes''8\staccato aes''\staccato g''\staccato f''\staccato bes''\staccato
 g''4 r8 g'' ees''4 r8 ees'' f''4 r8 f'' bes'4 r8 bes' g''4 r8 ees'''8 ees'''4 r8 ees'''
 ees'''4 r8 ees''' d'''4 r8 d''' d'''4 r8 d''' c'''4 r8 c''' c'''4 r8 c''' bes''4 r8 bes'' a''4 r8 a'' g''4 r8 g''
 fis''4 r8 fis'' g''4 r8 cis'' d''4\staccato d'''2\sf( c'''!4) c'''4\staccato bes''2\sf( a''8 g'')
 g''4\staccato fis''2\sf( g''8 a'') a''4\staccato g''2\sf( a''8 bes'') a''8( d''') d'''\staccato\sf d'''\staccato
 d'''8\staccato d'''\staccato d'''\staccato c'''\staccato c'''( bes'') bes''\sf\staccato bes''\staccato
 bes''8\staccato bes''\staccato a''\staccato g''\staccato g''( fis'') fis''\sf\staccato fis''\staccato
 fis''8\staccato fis''\staccato g''\staccato a''\staccato a''( g'') g''\sf\staccato g''\staccato
 g''8\staccato g''\staccato a''\staccato bes''\staccato
 a''16 a'' a'' a'' a''4:16 bes''2:16\sf a''2:16 cis''':16 d'''4:16 bes'':16\sf a''4:16 cis'''4:16
 d'''4:16 bes'':16\sf a''4:16 cis'''4:16
 d'''4 r r2 << { d'4 } \\ { d'4 } >> r r2 << { d'4 } \\ { d'4 } >> r4 r2 R1 R1 R1
 c'4\p\staccato r8^\< a\staccato c'4\staccato r8 a\staccato^\!
 c'8\staccato^\> a\staccato c'8\staccato a\staccato c'8\staccato a\staccato c'8\staccato a\staccato^\!
 g8\p g' g' g' g'2:8 g'2:8 g'2:8 g'2:8 g'2:8 g'2:8 g'2:8 fis'2:8 fis'2:8 fis'2:8 fis'2:8 g'2:8 g'2:8 g'2:8 g'2:8
 r8 g' g' g' r8 a' a' a' r bes' bes' bes' r fis' fis' fis' g'4 r r2 R1 r2 e'2\p ~ e'1
 f'8 aes' aes' aes' aes'2:8 aes'2:8 aes'2:8
 bes'2:8 bes'2:8 bes'2:8 bes'2:8 c''2:8 c''2:8 c''2:8 c''2:8 r8 des'' des'' des'' r g' g' g' r aes' aes' aes' r e' e' e'
 f'2:8 f'2:8 f'2:8 f'2:8 ges'2:8 ges'2:8 ges'2:8 ges'2:8 f'2:8 f'2:8 f'2:8 f'2:8
 ges'2:8 ges'2:8 ges'2:8 ges'2:8 f'2:8 f'2:8 f'2:8 f'2:8 ees'8 ees'' ees'' ees'' ees''2:8
 r8 des'' des'' des'' r8 c'' c'' c'' b''4 r r2
 r2 fis'4\p r8 fis' g'4 r r2 r2 fis'4\p r8 fis' g'4 r g r r2 r4 r8 g8\staccato aes4\staccato r aes\staccato r
 r2 r4 r8 aes8\staccato a4\staccato r a\staccato r r2 r4 r8 a8\staccato bes4\staccato r bes\staccato r
 r2 r4 r8 bes\staccato b4\staccato r b\staccato r r2 r4 r8 b\staccato
 c'4\staccato r r r8 c'_\markup { \italic "decresc." } f'4 r r r8 f' g'4 r r r8 g' g'4 r r r8 g
 c'2\ff ees' g'4.\sf f'8\staccato ees'4\staccato d'\staccato
 c'4\staccato r8 g\staccato c'4\staccato r8 g\staccato c'4\staccato r r2 R1 R1 R1 R1
 e'4\pp\staccato r8 f'8\staccato e'4\staccato r8 f'8\staccato e'4\staccato r r2 R1 R1
 d'4\pp\staccato r8 ees'8\staccato d'4\staccato r8 ees'8\staccato d'4\staccato r r2 f'4 r r2 ees'4 r r2 r4 d'' r c''
 b'4 r4 r2 R1 R1 R1 r4 b4\p( c' d') ees'\staccato ees'( f' g') aes'\staccato aes'( g' f') g'\staccato g'( f' ees')
 d'4 d''\pp r ees'' r d'' r ees'' d''4 r r2 R1 R1 R1 g'4\p r b' r c''4 r r2 R1 R1 c''4 r c'' r c'' r c'' r R1
 r2 r4 g'4\p e''2( d''8 e'' f'' d'') c''( g' e' g' c' e' g' c'') d''( cis'' d'' cis'') d''4\staccato dis''\staccato
 dis''2( e''4) r8 c''! f''2\sf( e''4) r8 c'' a''2\sf( g''4) r8 f'' e''4\f\staccato e''\staccato e''8( d'' c'' d'') d''4.( dis''8 e''4) r4
 R1 R1 fis''1\pp f''! e''2( d'' c'' b') c''4 r r2 R1
 r2 r4 d''4 r c'' r b' c''4 r r2 R1 R1 R1 d'2\p ees'!4.( f'8) g'4 g' r f' r ees' r g' g' ees'' r d'' r c'' r b'
 c''4 r8 g8\staccato c'4\staccato r r4 r8 g8\staccato c'4\staccato r R1 R1 R1 R1
 r4 r8 g''8\p\staccato c'''4\staccato r4 r4 r8 g''8\staccato c'''4\staccato r4
 r4 r8 d''\staccato c''4\staccato r8 bes'!\staccato a'4\staccato r8 g'\staccato f'4\staccato r8 g'\staccato
 f'4\staccato r4 r2 b'1\p c''4 r8 g''8\staccato c'''4\staccato r R1 r4 r8 a''8\staccato c'''4\staccato r R1
 r4 r8 c'''8\staccato ees'''!4\staccato r R1 r4 e' r f' r e' r dis' e'4 r r2 R1 R1 R1 f''4\p r r2 R1 b4 r r2 R1
 <g e' c''>4^\f r r2 R1 r4 e''4\p e'' e'' f''2\fp aes''! c'''4. bes''8\staccato aes''4\staccato g''\staccato
 f''4\staccato_\markup { \italic "cresc." } ees''!\staccato des''\staccato c''\staccato b'\f r4 r2 R1
 r4 b''16\< b'' b'' b'' b''2:16 c'''16\!\ff c''' c''' c''' c'''4:16 c'''2:16 c'''2:16 c'''2:16
 c'''16 g' g' g' g'4:16 g'2:16 g'2:16 fis'2:16 <g g'>2\sf^\fermata r2^\fermata
 e'1\pp^\markup { "SOLO." } ~ e'1 f'1 <aes! f'>1 e'1 ~ e'1 f'1 <aes! f'>1
 ees'!16 ees' ees' ees' ees'4:16 ees'2:16 ees'2:16 ees'2:16 f'2:16 f'2:16 d'2:16 d'2:16
 ees'16 c'' c'' c'' c''4:16 c''2:16 c''2:16 c''2:16 d''2:16 d''2:16 b'2:16 b'2:16
 c''16_\markup { \italic "poco cresc." } ees'' ees'' ees'' ees''4:16 ees''2:16 f''2:16 d''2:16
 ees''16\ff c''' c''' c''' c'''4:16 c'''2:16 d'''2:16 b''2:16 c'''4 r r2 <g' ees'' c'''>4 r r2
 <g' ees'' c'''>4 r c'' r g' r ees' r c'4 r r r8 r16 c'16\ff r4 r r r8 r16 c' c'1^\fermata \bar "|."
}