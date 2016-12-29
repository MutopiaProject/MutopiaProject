\version "2.19.46"

 pianoone = {
 \set Staff.instrumentName = \markup { \column { " " " " " " " " " " " " "Pianoforte" } }
 \set Staff.midiInstrument = "acoustic grand"
 \clef treble
 \key c \minor
 \time 4/4
 R1^\markup { \bold "Allegro con brio" }
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 r2^\fermata s2 c'4\sf\staccato r4 r16 c'( d' ees' f' g' a' b')
 c''4\sf\staccato r4 r16 c''( d'' ees'' f'' g'' a'' b'') <c'' c'''>2\f <ees'' ees'''>
 <g'' g'''>4.\sf <f'' f'''>8\staccato <ees'' ees'''>4\staccato <d'' d'''>\staccato
 <c'' c'''>4\staccato r8 <g' g''>8\staccato <c'' c'''>4\staccato r8 <g' g''>8\staccato
 <c'' c'''>4 r4 r2
 << { <b' d''>2 <d'' f''> } \\ { g'2\p g' } >>
 <g' f'' aes''>2 ~ <g' f'' aes''>8( <ees'' g''>) <d'' f''>\staccato <c'' ees''>\staccato
 << { d''4^\trill f''8 ees'' d''4^\trill f''8 ees''
 ~ ees''( d'' cis'' d'' ees'' e'' f'' fis'') } \\ { b'4( c'' b' c'') b' s4 s2 } >>
 g''2 ~ g''8 fis''16( g'' aes'' g'' f''! ees''!) d''8( c'') c''4\staccato( c''\staccato c''\staccato)
 \acciaccatura c''8 c'''2 ~ c'''8 b''16( c''' des''' c''' bes'' aes'')
 g''8( f'') f''4\staccato( f''\staccato f''\staccato)
 \acciaccatura f''8 f'''2 ~ f'''8 e'''16( f''' g''' f''' ees'''! d''')
 \tupletSpan 4
 \tuplet 3/2 { c'''8([ b'' ais''!]) b''\staccato[ c'''\staccato cis'''\staccato]
 d'''\staccato[ ees'''\staccato e'''\staccato] f'''[ d''' b''] } 
 c'''8( ees'''!) d'''\staccato c'''\staccato bes''!\staccato aes''\staccato g''\staccato f''\staccato
 ees''4^\trill( g''2\sf b'4 c''4) r4 r2 R1 R1 r4
 \tupletSpan 4
 \tuplet 3/2 { g8[ b d'] g'[ b' d''] g''[ fis'' f''] } d''2( ees''4) r R1 R1 r4
 \tuplet 3/2 { bes8[ d' f'] bes'[ d'' f''] bes''[ a'' aes''] } g''4 r r2 R1
 ees'''16\f ees'''g''' \sustainOn  ees''' bes'' bes'' ees''' bes'' g'' g'' bes'' g'' ees'' ees'' g'' ees''
 bes' bes' ees'' bes' g' g' bes' g' ees' ees' g' ees' bes bes ees' \sustainOff g aes4 r r2 R1
 a16 bes b c' cis' d' ees' e' f' fis' g' aes' a' bes' b' c''
 cis''16( d'' ees'' e'' f'' ges'' f'' ges'' f'' ges'' f'' ges'' aes'' ges'' f'' ees'')
 \new Voice { \stemUp d''4\staccato bes''4. bes''8\staccato bes''\staccato bes''\staccato
 \slurUp bes''4^\trill( \grace { a''16[ bes''] } ces'''8 bes'' aes'' ges'' f'' ees'') }
 ees''8( d'') d''2^\markup { \translate #(cons 10 1) { \musicglyph #"scripts.turn" } }( ees''8 f'') f''( ees'')
 ees''2^\markup { \translate #(cons 10 1) { \musicglyph #"scripts.turn" } }( f''8 ges'')
 f''8\staccato_\markup { \italic cresc. } bes''( a'') bes''( a'') bes''( a'') bes''
 \new Voice { \stemUp a''8 bes'' ces''' bes'' aes'' ges'' f'' ees'' }
 ees''8( d'') d''\staccato d''\staccato d''4^\trill( ees''8 f'')
 f''8( ees'') ees''\staccato ees''\staccato ees''4^\trill( f''8 ges'') f''16 bes'' a'' bes'' a'' bes'' c''' bes''
 << { a''2 g''4 g''\rest g''16\rest ges'' f'' ges'' f'' ges'' aes'' ges'' f'' bes'' a'' bes'' a'' bes'' c''' bes'' } \\
 { a'16\rest ees''( d'' ees'' d'' ees'' f'' ees'') d'' bes' a' bes' a' bes' c'' bes' a'2 bes'4 g'4\rest } >>
 r16 <ees'' aes''> <d'' g''> <ees'' aes''> <d'' g''> <ees'' aes''> <f'' bes''> <ees'' aes''>
 r <d'' g''> <c'' fis''> <d'' g''> <c'' fis''> <d'' g''> <ees'' aes''> <d'' g''>
 r <c'' f''> <b' e''> <c'' f''> <b' e''> <c'' f''> <d'' g''> <c'' f''>
 r <bes' ees''!> <c'' f''> <bes' ees''> r <aes' d''> <bes' ees''> <aes' d''>
 r <g' c''> <aes' d''> <g' c''> r <f' bes'> <g' c''> <f' bes'>
 r <ees' aes'> <f' bes'> <ees' aes'> r <d' g'> <ees' aes'> <d' g'>
 r <c' f'> <d' g'> <c' f'> r <bes ees'> <c' f'> <bes ees'>
 \tupletSpan 4
 \tuplet 3/2 { <aes d'>8[ f' ees'] d'[ ees' e'] f'[ fis' g'] aes'[ a' bes'] b'[ c'' cis''] d''[ ees'' e''] f''[ fis'' g''] }
 aes''16 a'' bes'' b'' d'''8( c''') bes''!\staccato aes''\staccato g''\staccato f''\staccato ees''\staccato d''\staccato
 c''\staccato bes'\staccato a'\staccato bes'\staccato c''\staccato d''\staccato ees''\staccato f''\staccato
 g''2( f''8 g'' aes'' f'') ees''2( bes'4.) ees''8 f''4 <f' f''>\staccato( <f' f''>\staccato <fis' fis''>\staccato)
 <fis' fis''>2^\accent( <g' g''>4) r8 ees'' <aes' ees'' aes''>2\sf( <g' ees'' g''>4) r8 ees''
 <c'' ees'' c'''>2\sf( <bes' ees'' bes''>8) r <e'' bes''>4( <f'' a''> <d'' aes''> <ees''! g''> <c'' c'''>)
 ees''2( bes'8) <aes'' c'''>( <g'' bes''> <f'' aes''>) <ees'' g''>4 r r2 R1 R1 R1 R1 R1 R1
 r2 r4 r8 ees'' <ees'' aes''>2( <ees'' g''> <ees'' c'''> <e'' bes''>)
 a''16 bes'' c''' bes'' a'' bes'' c''' d''' ees''' d''' c''' bes'' a'' g'' f'' ees''
 d''16 ees'' f'' g'' aes''! bes'' c''' bes'' aes'' g'' f'' ees'' d'' c'' bes' aes'
 g'8\prall([ f']) f''\prall([ ees'']) d''\prall([ c'']) bes'\prall([ aes'])
 aes'\prall([ g']) c''\prall([ bes']) bes'\prall([ aes']) g'\prall([ f']) ees'4 r r2 R1
 s2 \tupletSpan 4 \tuplet 3/2 { aes16[ c' f'] } aes'32[ c'' f'' aes'']
 \tuplet 3/2 { c'''8\staccato[ aes''\staccato f''\staccato] }
 f''8^\prall( ees'') ees''\staccato ees''\staccato ees''^\prall( d'') d''\staccato d''\staccato
 ees''4\staccato <ees'' bes''>\staccato( <ees'' bes''>\staccato <ees'' bes''>\staccato)
 <ees'' bes''>2( <d'' aes''>4. <ees'' ges''>8) <ges'' ees'''>2( <g'' des'''>4. <aes'' ces'''>8)
 << { \hideNotes ces'''1 ~ \unHideNotes ces'''1 } \\
 { ces'''1^\markup { }^\markup { }^\markup { }^\markup { \flat } \startTrillSpan s2 s4 s8 s16 \stopTrillSpan s16 } >>
 bes''4^\trill^\markup { \flat }( \grace { a''16[ bes''] } des'''8 bes'') aes''4^\trill( \grace { g''!16[ aes''] } ces'''8 aes'')
 ges''4^\trill( \grace { f''16[ ges''] } bes''8 ges'') f''4^\trill^\markup { \flat }( \grace { e''16[ f''] } bes''8 aes'')
 \tupletSpan 4
 \tuplet 3/2 { ges''8[ f'' ges''] bes''[ aes'' ges''] f''[ e'' f''] aes''[ ges'' f'']
 ees''![ d'' ees''] ges''[ f'' ees''] d''[ ees'' f''] bes'[ c'' d''] }
 ees''16 f'' g''! aes'' bes'' aes'' g'' f'' ees'' d'' c'' bes' a' bes' c'' d''
 ees'' f'' g'' aes''! bes'' aes'' g'' f'' ees'' d'' c'' bes' a' bes' c'' d''
 ees'' d'' ees'' f'' g'' g' a' b' c'' b' c'' d'' ees'' ees' f' g'
 aes'! g' aes' bes'! c'' c' d' e' f' e' f' g' aes' g' aes' g' aes' g' aes' g' aes' g' aes' g' aes' g' f' ees'! d' c' bes aes
 g ees' bes g aes f' c' aes g ees' bes g f d' aes f
 <g ees'>4 r r16 bes' bes'' bes' bes'' bes' bes'' bes' bes''4 r r16 bes' bes'' bes' bes'' bes' bes'' bes'
 bes''16 g'' g''' g'' g''' g'' g''' g'' g''' ees'' ees''' ees'' ees''' ees'' ees''' ees''
 ees''' c'' c''' c'' c''' c'' c''' c'' c''' c'' c''' c'' c''' c'' c''' c''
 \new Voice { c'''8 \change Staff="nine" \stemUp aes16 g aes g aes g f e f g aes bes c' bes
 aes bes g aes f g ees! f d ees c d bes, c aes, bes,
 g,^\staccato^\ff ees bes, g bes,^\staccato g ees bes ees\staccato bes g ees'
 g\staccato \change Staff="eight" ees' \change Staff="nine" bes \change Staff="eight" g'
 bes\staccato g' ees' bes' \stemDown ees'\staccato bes' g' ees''
 g'\staccato ees'' bes' g'' bes'\staccato g'' ees'' bes''
 \change Staff="nine" \stemUp c^\staccato aes ees c' ees^\staccato c' aes ees'
 aes\staccato \change Staff="eight" ees' c' aes' c'\staccato aes' ees' c''
 \stemDown ees'\staccato c'' aes' ees'' aes'\staccato ees'' c'' aes''
 c''\staccato aes'' ees'' c''' ees''\staccato c''' aes'' ees'''
 \change Staff="nine" e16\rest \stemUp a,( c ees ges4) \change Staff="eight" r16 \slurUp a( c' ees' ges' a c' ees'
 \stemDown ges' a' c'' ees'' ges'' a' c'' ees'' ges'' a'' c''' ees''' ges''' ees''' c''' a'' bes'') d'''( ees''' d''') }
 ees'''4 r16 d'''( ees''' d''') ees'''4 r16 d'''( ees''' d''') ees'''4 r16 d'''( ees''' d''' ees''' d''' ees''' d''' )
 ees'''1 \startTrillSpan ~ ees'''1 ~ ees'''1 ~ ees'''2 e''' \stopTrillSpan
 << { \hideNotes f'''1 ~ \unHideNotes f'''1 } \\ { f'''1 \startTrillSpan s2 s4 s8 s16 s32 \stopTrillSpan s32 } >>
 bes'''2^\trill ~ bes'''16 aes''' g''' f''' ees''' d''' c''' bes''
 aes''16 g'' f'' ees'' d'' c'' bes' aes' g'32[ f' ees' d' c' bes aes g] s4
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 r2 r16 \new Voice { \change Staff="nine" \stemUp \slurUp d^\f( e fis g a b cis') }
 d'4\sf\staccato r4 r16 d'( e' fis' g' a' b' cis'') d''4\staccato r4 r16 d''( e'' fis'' g'' a'' b'' cis''')
 d'''4\ff\staccato r8 a''\staccato d'''4\staccato r8 a''\staccato d'''4\staccato r r2 R1 R1 R1
 <g' g''>2\p <bes' bes''> <d'' d'''>4. <c'' c'''>8\staccato <bes' bes''>4\staccato <a' a''>\staccato
 <g' g''>4\staccato r r2
 r8 d'''8( cis''' d''' c''' bes'' a'' g'') \grace { fis''32[ g'' a''] } g''2( fis''4) r4
 r8 ees'''8( d''' c''' bes'' a'' g'' fis'') a''2( g''4) r4 r8 fis'''( g''' fis''' g''' f''' ees''' d''')
 f'''8( ees''' d''' c''' bes'' a'' c''' ees''') ees'''( g'') g''\staccato g''\staccato g''( fis'') fis''\staccato fis''\staccato
 g''4 r r2 R1 e'16 e'' dis'' e'' f' f'' e'' f'' g' g'' fis'' g'' aes'! aes''! g'' aes''
 bes' bes'' a'' bes'' c'' c''' b'' c''' d''! d''' cis''' d''' e'' e''' dis''' e''' <f'' f'''>4 r r2
 r8 c'''8( b'' c''' bes'' aes'' g'' f'') \grace { e''32[ f'' g''] } f''2( e''4) r
 r8 c'''( des''' c''' des''' bes'' g'' e'') g''2( f''4) r r8 e'''8( f''' e''' f''' ees''' des''' c''')
 ees'''8( des''' c''' bes'' aes'' g'' bes'' des''') des'''( f'') f''\staccato f''\staccato f''( e'') e''\staccato e''\staccato
 f''4 r r2 r4 aes''\p\staccato( aes''\staccato aes''\staccato)
 \tupletSpan 4
 \tuplet 3/2 { ges''8[ aes'' bes''] aes''[ ges'' f''] ees''[ f'' ges''] f''[ ees'' des'']
 c''[ des'' ees''] des''[ c'' bes'] aes'[ bes' aes'] ges'[ aes' ges']
 f'[ des' f'] aes'[ f' aes'] des''[ aes' des''] f''[ des'' f'']
 aes''[ f'' aes''] des'''[ aes'' des'''] f'''[ des''' aes''] des'''[ aes'' f'']
 ges''[ aes'' bes''] aes''[ ges'' f''] ees''[ f'' ges''] f''[ ees'' des'']
 c''[ des'' ees''] des''[ c'' bes'] aes'[ bes' aes'] ges'[ aes' ges']
 f'[ des' f'] aes'[ f' aes'] des''[ aes' des''] f''[ des'' f''] d''![ b' d''] f''[ d'' f''] b''[ f'' b''] d'''[ b'' d''']
 g''[ ees'' g''] c'''[ g'' c'''] ees'''[ c''' ees'''] g'''[ f''' ees''']
 des'''[ c''' des'''] f'''[ ees''' des'''] c'''[ b'' c'''] ees'''[ d''' c'''] } b''4 r r2
 r2 \afterGrace fis'''2\sf { e'''16[ fis'''] } g'''4 r r2 r2 \afterGrace fis'''2\sf { e'''16[ fis'''] }
 g'''4 r8 g''16( g''') r8 d''16( d''') r8 b'16( b'') r8 g'16( g'') r8 d'16( d'') r8 b16( b') r8 g16( g')
 r8 aes16( aes') r8 aes16( aes') r8 c'16( c'') r8 f'16( f'') r8 aes'16( aes'') r8 c''16( c''') r8 f''16( f''') r8 aes'16( aes'')
 r8 a'16( a'') r8 ees''16( ees''') r8 c''16( c''') r8 a'16( a'') r8 f'16( f'') r8 ees'16( ees'') r8 c'16( c'') r8 a16( a')
 r8 bes16( bes') r8 bes16( bes') r8 des'16( des'') r8 f'16( f'')
 r8 bes'16( bes'') r8 des''16( des''') r8 f''16( f''') r8 bes'16( bes'')
 r8 b'16( b'') r8 f''16( f''') r8 d''!16( d'''!) r8 b'16( b'') r8 g'16( g'') r8 f'16( f'') r8 d'16( d'') r8 b16( b')
 r8 c'16( c'') r8 ees'16( ees'') r8 g'16( g'') r8 c''16( c''') r8 f'16( f'') r8 aes'16( aes'') r8 d''16( d''') r8 f''16( f''')
 g'''16( fis''' g''' fis''' g''' fis''' g''' fis''' g''' fis''' g''' fis''' g''' fis''' g''' fis''')
 \new Voice { \tupletSpan 4
 \tuplet 5/4 { g'''16[ f'''! ees''' d''' c'''] } \tuplet 6/4 { b''[ aes'' g'' f'' ees'' d''] c''[ b' aes' g' f' ees'] }
 \stemUp d'32[ c' \change Staff="nine" b aes g f ees d] } s1 R1 R1 R1 R1 R1 R1 R1 R1
 r8 bes''8\staccato bes''\staccato bes''\staccato bes''( g'') e''\staccato bes'\staccato a'4 r4 r2
 r8 ees'''8\staccato ees'''\staccato ees'''\staccato ees'''( c''') a''\staccato ees''\staccato d''4 r4 r2
 r8 aes''!8\staccato aes''\staccato aes''\staccato aes''( f'') d''\staccato aes'\staccato
 g'8\staccato f'''\staccato f'''\staccato f'''\staccato f'''( d''') b''\staccato f''\staccato ees''\staccato
 <ees''' g'''>8\staccato <ees''' g'''>\staccato <ees''' g'''>\staccato
 <ees''' g'''>( <c''' ees'''>) <g'' c'''>\staccato <ees'' g''>\staccato
 <ees'' g''>( <d'' f''>) <d'' f''>\staccato <d'' f''>\staccato <d'' f''>( <c'' ees''>) <c'' ees''>\staccato <c'' ees''>\staccato
 <b' d''>4\staccato g''4.\sf g''8\staccato g''\staccato g''\staccato
 g''4^\trill( \grace { fis''16[ g''] } aes''8 g'' f'' ees'' d'' c'')
 c''8( b') b'2^\markup { \translate #(cons 8 1) { \musicglyph #"scripts.turn" } }( c''8 d'')
 d''8( c'') c''2^\markup { \translate #(cons 8 1) { \musicglyph #"scripts.turn" } }( d''8 ees'')
 d''8\staccato g''16 g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g'''
 g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g'''
 g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g'''
 g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g''' g'' g'''
 << { \hideNotes  g''1 ~ \unHideNotes g''1 } \\
 { g''1^\markup { }^\markup { }^\markup { }^\markup { \natural } \startTrillSpan s2 s4 s8 s16 \stopTrillSpan s16 } >>
 fis''1 \startTrillSpan \afterGrace f''!1 { e''8[ \stopTrillSpan g'' f''] } e''2( d''8 e'' f'' d'') c''2( g'4.) c''8
 d''4 <d' g' d''>\staccato( <d' g' d''>\staccato <dis' g' dis''>\staccato) <dis' g' dis''>2^\accent( <e' g' e''>4) r8 c''8
 <f' c'' f''>2\sf( <e' c'' e''>4) r8 c'' <a' c'' a''>2\sf( <g' c'' g''>8) r8
 <cis'' g''>4( <d'' fis''> <b' f''> <c''! e''> <a' a''>) c''2( b'8) <f'' a''>([ <e'' g''> <d'' f''>]) <c'' e''>4\staccato r r2
 R1 R1 R1 R1 R1 R1 r2 r4 r8 c''8 <c'' f''>2( <c'' e''> <c'' a''> <cis'' g''>)
 <d'' fis''>16 g'' a'' b'' c''' b'' a'' b'' c''' b'' a'' g'' fis'' e'' d'' c''
 b'16 d'' f'' b'' d''' b'' f''' e''' f''' e''' d''' c''' b'' a'' g'' f''
 f''8^\prall([ e'']) d'''^\prall^\markup { }^\markup { \natural }([ c''']) b''^\prall([ a'']) g''^\prall([ f''])
 f''^\prall([ e'']) a''^\prall^\markup { }^\markup { \natural }([ g'']) g''^\prall([ f'']) e''^\prall([ d'']) c''4 r r2 R1
 \new Voice { \change Staff="nine" f4\rest \stemUp
 \tupletSpan 4 \tuplet 3/2 { r8 a,8[ d] f16[ a d'] }
 \change Staff="eight" f'32[ a' d'' f''] \stemDown \tuplet 3/2 { a''8\staccato[ f''\staccato d''\staccato] } }
 d''8^\prall^\markup { }^\markup { \natural }( c'') c''\staccato c''\staccato c''^\prall( b') b'\staccato b'\staccato
 c''4\staccato <c'' g''>\staccato( <c'' g''>\staccato <c'' g''>\staccato)
 <c'' g''>2( <b' f''>4. <c'' ees''!>8) <f'' c'''>2( <e'' bes''!>4. <f'' aes''!>8)
 aes''1 \startTrillSpan ~ aes''2 ~ \tuplet 3/2 { aes''16[ \stopTrillSpan g'' aes''] } bes''32[ c''' d''' ees''']
 \tuplet 6/4 { f'''16( ees''' d''' c''' bes'' aes'') }
 g''4^\trill( \grace { f''16[ g''] } bes''8[ g'']) f''4^\trill( \grace { e''16[ f''] } aes''8[ f''])
 ees''4^\trill( \grace { d''16[ ees''] } g''8[ ees'']) d''4^\trill( \grace { cis''16[ d''] } g''8[ f''])
 \tupletSpan 4 \tuplet 3/2 { ees''8[ d''' ees'''] g'''[ f''' ees''']
 d'''[ cis''' d'''] f'''[ ees''' d'''] c'''![ b'' c'''] ees'''[ d''' c'''] b''[ c''' d'''] g''[ a'' b''] }
 c'''16 d''' e''' f''' g''' f''' e''' d''' c''' b'' a'' g'' fis'' g'' a'' b'' c''' d''' e''' f''' g''' f''' e''' d''' c''' b'' a'' g'' fis'' g'' a'' b''
 c'''16 b'' c''' d''' e''' e'' fis'' gis'' a'' gis'' a'' b'' c''' c'' d'' e'' f''! e'' f'' g''! a'' a' b' cis'' d'' cis'' d'' e'' f'' e'' f'' e''
 f''16 e'' f'' e'' f'' e'' f'' e'' f'' e'' d'' c'' b' a' g' f' e' c'' g' e' f' d'' a' f' e' c'' g' e' d' b' f' d'
 <e' g' c''>4 r4 r16 g'' g''' g'' g''' g'' g''' g'' g'''4 r r16 g'' g''' g'' g''' g'' g''' g''
 g'''16 e'' e''' e'' e''' e'' e''' e'' e''' c'' c''' c'' c''' c'' c''' c'' c''' a' a'' a' a'' a' a'' a' a'' a' a'' a' a'' a' a'' a'
 \new Voice { \stemDown a''16 \change Staff="nine" \stemUp a,[ b, cis] d cis d e f cis' d' e'
 \change Staff="eight" f' g' a' g' f' g' e' f' d' e' c' d' \change Staff="nine" b c' a b g a f g
 e\staccato^\ff c' g e' g\staccato e' c' g' c'\staccato \change Staff="eight" g' e' c'' e'\staccato c'' g' e''
 \stemDown g'\staccato e'' c'' g'' c''\staccato g'' e'' c''' e''\staccato c''' g'' e''' g''\staccato e''' c''' g'''
 \change Staff="nine" \stemUp a,\staccato f c a c\staccato a f c'
 f\staccato c' a \change Staff="eight" f' \change Staff="nine" a\staccato \change Staff="eight" f' c' a'
 c' a' f' c'' \stemDown f'\staccato c'' a' f'' a'\staccato f'' c'' a'' c''\staccato a'' f'' c'''
 \change Staff="nine" \stemUp r16 \slurUp fis,( a, c ees!4)
 a16\rest fis( a c' ees'! fis a c' \change Staff="eight" ees'! fis' a' c'' ees''! fis' a' c''
 \stemDown ees'' fis'' a'' c''' ees'''! c''' a'' fis'' g'') b''( c''' b'') } c'''4 r16 b''( c''' b'') c'''4
 r16 b''( c''' b'') c'''4 r16 b''( c''' b'' c''' b'' c''' b'')
 c'''1\p ~ \startTrillSpan c'''1 ~ c'''1 ~ c'''2 cis'''2 \stopTrillSpan
 << { \hideNotes  d'''1 ~ \unHideNotes d'''1 } \\
 { d'''1^\markup { }^\markup { }^\markup { }^\markup { \natural } \startTrillSpan s2 s4 s8 s16 \stopTrillSpan s16 } >>
 g'''16\ff( fis''' g''' fis''') \tuplet 5/4 { g'''16([ f''' e''' d''' c''']) } \tuplet 5/4 { b''16([ a'' g'' f'' e'']) } d''16( c'' b' a')
 \new Voice { \stemUp g'16 f' e' d' c' \change Staff="nine" b a g f e d c
 \tupletSpan 4 \tuplet 3/2 { b,16[ a, g,] } b8\rest } R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 r2^\fermata\fermata_\markup { "Cadenza" } \afterGrace d''^\trill^\fermata { c''16[ d''] }
 <g' bes' c'' e''>4\p^\markup { \bold "SOLO." } r4 r2 bes''16\sustainOn des''' bes''_\markup { \italic "pianissimo" } g''
 e'' bes'' g'' e'' des'' g'' e'' des'' bes' e'' des'' bes'\sustainOff <a' c'' f''>4 r r2
 b''16\sustainOn d'''! b'' aes''! f'' b'' aes'' f'' d'' aes'' f'' d'' aes'' f'' d'' b'\sustainOff c''4 r <g' bes' c'' e''> r
 bes''16\sustainOn des''' bes'' g'' e'' bes'' g'' e'' des'' g'' e'' des'' bes' e'' des'' bes'\sustainOff a'4 r <a' c'' f''>4 r
 b''16\sustainOn d'''! b'' aes''! f'' b'' aes'' f'' d'' aes'' f'' d'' aes'' f'' d'' b'\sustainOff
 c''4 r8 <c'' c'''>\staccato <ees'' ees'''>4\staccato r r4 r8 <c'' c'''>\staccato <ees'' ees'''>4\staccato r
 r4 r8 <d'' d'''>\staccato <f'' f'''>4\staccato r r4 r8 <b' b''>\staccato <d'' d'''>4\staccato r
 r8 <c'' c'''> <c'' c'''> <c'' c'''> <ees'' ees'''>4\sf( <c'' c'''>8_\markup { \italic "cresc." }) r8
 r8 <c'' c'''> <c'' c'''> <c'' c'''> <ees'' ees'''>4\sf( <c'' c'''>8) r8
 r8 <d'' d'''> <d'' d'''> <d'' d'''> <f'' f'''>4\sf( <d'' d'''>8) r8 r8 <b' b''> <b' b''> <b' b''> <d'' d'''>4\sf( <b' b''>8) r8
 r8 <c'' c'''>\sf( <ees'' ees'''> <c'' c'''>) r <c'' c'''>\sf( <ees'' ees'''> <c'' c'''>)
 r8 <d'' d'''>\sf( <f'' f'''> <d'' d'''>) r <b' b''>\sf( <d'' d'''> <b' b''>) R1 R1
 c'''16\ff ees''' c''' g'' ees'' c''' g'' ees'' c'' g'' ees'' c'' g' ees'' c'' g'
 \new Voice { \stemUp ees' c'' g' ees' c' g' ees' c' g ees' c' g \change Staff="nine" ees c' g ees
 c16\staccato^\sf \slurUp c( d ees f g a b) c'\staccato^\sf c'( \change Staff="eight" d' ees' f' g' a' b') }
 c''16\staccato\sf c''( d'' ees'' f'' g'' a'' b'') c'''\staccato\sf \ottava #1 c'''( d''' ees''' f''' g''' a''' b''') c''''4\sf
 \ottava #0 r4 r4 r8 r16 c'16\ff c'4 r r r8 r16 c'16 c'1^\fermata \bar "|."
}