\version "2.10.3"

 pianoone = {
 \set Staff.midiInstrument = "acoustic grand"
 \clef treble
 \key c \minor
 \time 4/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 52
 \partial 32 r32^\markup { \large "Maestoso." } r8 r16. <ees' a' c'' ees''>32\f
 <ees' a' c'' ees''>4\sf~ <ees' a' c'' ees''>8..[ <a' c''>32] << { c''8.^\trill\sf\>[ b'32 c''\!] } \\ { a'4 } >>
 \cadenzaOn <g' b'>8\p r8 <ees' g' c''>8_\markup { \italic "cresc." } r s32 s32 s32 s64
 \override NoteHead #'font-size = #-2 d'64[ g' b'] \override NoteHead #'font-size = #0 <d' g' d''>8\f r8 r4
 \cadenzaOff \bar "|"
 r8 r16. <aes' d'' f'' aes''>32\f <aes' d'' f'' aes''>4\sf~ <aes' d'' f'' aes''>8..[ <d'' f''>32]
 << { f''8.^\trill\sf\>[ e''32 f''\!] } \\ { d''4 } >>
 \cadenzaOn <g' e''>8\p r8 <f' c'' f''>8_\markup { \italic "cresc." } r s32 s32 s32
 \override NoteHead #'font-size = #-2 e'64[ g' c'' e''] \override NoteHead #'font-size = #0 <g' c'' g''>8\f r8 r4
 \cadenzaOff \bar "|"
 r8 r16. <des'' f'' bes'' des'''>32\f <des'' f'' bes'' des'''>4\sf~ <des'' f'' bes'' des'''>8..[ <des'' bes''>32]
 << { bes''8.^\trill\sf\>[ a''32 bes''\!] } \\ { des''4 } >>
 <des'' ees''! bes''>8..\p[ <des'' ees'' bes''>32] <des'' ees'' bes''>4~
 <des'' ees'' bes''>8.._\markup { \italic "dimin." }[ <c'' ees'' aes''>32] <c'' ees'' aes''>8..[ <c'' ees'' ges''>32]
 <c'' ees'' ges''>8..\pp[ <bes' ees'' ges''>32] <bes' ees'' ges''>4~ <bes' ees'' ges''>8..[ <a' ees'' ges''>32]
 <a' ees'' ges''>8..[<a' ees'' ges''>32]
 <a' ees'' ges''>8.._\markup { \italic "sempre pp" }[ <aes' des'' f''>32] <aes' des'' f''>4~
 <aes' des'' f''>8..[ <aes' ces'' f''>32] <aes' ces'' f''>8..[ <aes' ces'' f''>32]
 <aes' ces'' f''>8..[ <aes' c'' ees''>32] <aes' c'' ees''>4~ <aes' c'' ees''>8..[ <aes' c'' ees''>32]
 <aes' c'' ees''>8..[ <g'! bes' des''>32]
 \setTextCresc <g' bes' des''>8..\<[ <f' bes' des''>32] <f' bes' des''>8..[ <e' bes' des''>32]
 <e' bes' des''>8\!\f\staccato[ <c' f' c''>\staccato <c' f' c''>\staccato <c' fis' c''>\staccato]
 <d'! g'! b'>8\sf\staccato r8 r4 r4 << { g'4^\p( a' b' c'') } \\ { b8\rest c'8 <c' fis'>4 <d' f'> <ees' g'> } >>
 <ees' a' c''>8..([ <d' g' b'>32]) <d' g' b'>4. r8 r4
 \clef bass << { g4^\p } \\ { a,8\rest c8 } >> <c fis a>4( <d f b> <ees g c'>) <ees aes c'>8..( <d g b>32)
 <d g b>2\sustainDown <d g b>4.. <d g b>16\sustainUp <d g b>1\pp \break

 \tempo 4 = 128
 \setTextCresc <d g b d'>1\<^\markup { \large "Allegro con brio ed appassionato." }
 <g b d' g'>16 aes, g, aes, g, aes, g, aes, g, aes, g, aes, g, aes, g, aes,32 b,\!
 \repeat volta 2 { c4\f\staccato r4 r4 r8
 \times 2/3 { g,16\ff[ a, b,] }
 c4\staccato ees\staccato b,4.\sf\staccato^\fermata \times 2/3 { g,16[ a, b,] }
 c4\staccato ees\staccato b,4.\sf\staccato aes!8\staccato \break
 g8\staccato[ f\staccato ees\staccato d\staccato] ees16 f ees d
 c8 aes\staccato_\markup { \italic "mezzo piano" }( g8\staccato f\staccato ees\staccato d\staccato) ees16 f ees d
 \setTextCresc c16\< aes bes^\markup { "a tempo." } aes g aes g f ees f ees d ees f ees d c g f ees
 f16 g f ees d aes g f g aes g f e bes aes g aes c' g c' f c' fis c' b a g d' \clef treble c'\!\sf b f'! ees'!
 d'16\sf aes'! g' f' d''\sf c'' b' f'' ees''\sf d'' aes'' g'' f''\sf d''' c''' b''
 f'''16\sf\> ees''' d''' aes''' g''' f''' ees''' d''' c''' b'' aes'' g'' f'' ees'' d'' g''\!
 << { c''4 ees'' b'4. aes''8 } \\ { <ees' g'>8\p[ <ees' g'> <ees' g'> <ees' g'>] <f' g'>[ <f' g'> <f' g'> <f' g'>] } >> \break
 << { g''8[ f'' ees'' d''] ees''16 f'' ees'' d'' c''8 aes''\staccato(
 g''8\staccato[ f''\staccato ees''\staccato d''\staccato]) ees''16 f'' ees'' d'' c''8
 aes'''8^\markup { "a tempo." }( g'''[ f''' ees''' d''']) ees'''([ d''' c''' b''])
 c'''8([ bes''! aes'' g'']) aes''([ f'' ees''! d'']) } \\
 { <f' g'>[ <f' g'> <f' g'> <f' g'>] d'4\rest g'8_\markup { \italic "poco ritente" }[ g']
 g'8[ <g' b'> <g' c''> g'] g'8\rest g'8~ g'8 f'''16_\markup { \italic "cresc." }[ aes'']
 ees'''16 g'' d''' g'' c''' g'' d''' <f'' g''> ees''' g'' d''' g'' c''' g'' b'' g''
 g'' c'' g'' c'' aes'' c'' g'' c'' aes'' c'' f'' c'' ees'' c'' d'' c'' } >>
 << { d''8( c'') c''2^\markup { \italic "poco ritente" }^\markup { \italic "espressivo" } c''4
 c''4^\trill( ees''8 d'') c''4^\markup { "a tempo." } f''4\rest } \\
 { f'4\> fis'4\!\p\<( g') a'\! g'4\> g'\! c'\f\staccato ees'4\staccato } >>
 b4\sf~ b16 d' f' aes'! g' aes' g' f' ees' f' ees' d' ees' f' ees' d' c' ees' g' bes'! aes' bes' aes' g' f' g' f' ees'
 f'16 g' f' ees' d' f' aes' c'' bes' c'' bes' aes' g' aes' g' f'
 g'16\f bes' aes' g' f' ees' d' ees' f' ces' bes ces' bes d' f' aes'
 g'8([ <f f'> <bes bes'> <aes aes'>] <bes bes'>[ <des' des''>) <c'! c''!>\staccato <g g'>\staccato]
 r8 <g g'>([ <c' c''> <bes bes'>] <c' c''>[ <ees' ees''>) <ees' ees''>\staccato <a a'>\staccato]
 r8 <bes bes'>([ <des' des''> <c' c''>] <des' des''>[ <f' f''>) <ees' ees''>] bes'16 aes'!
 g'16 ees' f' g' aes' g' aes' bes' << { aes''4\staccato^\f c'''\staccato } \\ { c''16 des'' c'' bes' s4 } >> \bar "||"
 \key f \minor g''4\sf~ g''16 bes'' des''' f''' ees''' f''' ees''' des''' c''' des''' c''' bes''
 c''' des''' c''' bes'' a'' c''' ees''' ges''' f''' ges''' f''' ees''' des''' ees''' des''' c'''
 des''' ees''' des''' c''' bes'' des''' f''' aes'''! ges''' aes''' ges''' f''' ees''' f''' ees''' des'''
 ees''' f''' ees''' des''' #(set-octavation 1) c''' ees''' ges''' bes''' aes''' bes''' aes''' ges''' f''' ges''' f''' ees'''
 #(set-octavation 0) f'''2\ff \clef bass des,2\sf d,2\sf \clef treble ces''''2\sf
 r4 ees'''2\sf\>( c'''!8. aes''16\!) aes''4\p( g''!8)[ r16 f''] f''4( ees''8)[ r16 <des'' g'' des'''>]
 <des'' g'' des'''>4 <c'' aes'' c'''>4~
 \override TupletBracket #'transparent = ##t
 \times 8/12 { <c'' aes'' c'''>32_\markup { \italic "Meno allegro" }([ ees''' d''' ees''' f''' ees''' b'' c''' b'' c''' des''' c''']) }
 \times 4/6 { g''16([ aes'' bes''! aes'' g'' aes'']) }
 \times 4/5 { aes''16_\markup { \italic "ritar ----- dan ----- do" }([ g'' aes'' bes'' aes'']) } g''8[ r16 f'']
 \times 4/5 { f''16([ ees'' f'' g'' f'']) } ees''8[ r16 <des'' g'' des'''>]
 <des'' g'' des'''>4 <c'' aes'' c'''>4 r4 r8. <g'' bes'' f'''>16^\markup { "Adagio." }
 <g'' bes'' f'''>4 <ees'' aes'' ees'''>4 r4 r8 aes'''16\ff^\markup { "Tempo I." } ces''''16
 aes'''16( ces'''') f'''( aes''') d'''( f''') ces'''( d''') aes''( ces''') f''( aes'') d''( f'') ces''( d'')
 aes'( ces'') f'( aes') d'\p_\markup { "    cresc." }^\markup { "non legato" } ees' f' g' aes' bes' c''! des''! ees'' e'' f'' ees''
 f''16\ff ees'' c'' aes' f'' ees'' c'' aes' f''\sf ees'' des'' bes' f'' ees'' des'' bes'
 bes''16 aes'' ees'' c'' bes'' aes'' ees'' c'' bes''\sf aes'' f'' des'' ees''' des''' aes'' des''
 ees''' des''' aes'' des'' ees''' des''' aes'' des'' des'''\sf c''' aes'' ees'' des''' c''' aes'' ees''
 des'''16 c''' aes'' ees'' c''' bes'' g'' des''
 << { aes''4\staccato c'''\staccato g''2^\sf ges''4\staccato aes''\staccato f''2^\sf fes''4\staccato aes''\staccato } \\
 { <c'' ees''>8[ <c'' ees''> <c'' ees''> <c'' ees''>] <bes' ees''>[ <bes' ees''> <bes' ees''> <bes' ees''>]
 <aes' ees''>[ <aes' ees''> <aes' ees''> <aes' ees''>] <aes' des''>[ <aes' des''> <aes' des''> <aes' des''>]
 <aes' des''>[ <aes' des''> <aes' des''> <aes' des''>] } >>
 <aes' c'' ees''>4\sf <aes' aes''>8. <c'' c'''>16 <ees'' ees'''>8[ ees'''] ees'''8.^\trill d'''32 ees'''
 ees'''8( f'''16 g''') g'''8\>( aes'''\!) r8 ees''8 ees''8.^\trill[ d''32 ees''] ees''8( f''16 g'') g''8\>( aes''\!) r8 ees'8 ees'8_\trill[ f'16 g']
 aes'16\sf bes' c'' b' c''\sf des'' eeses'' des'' eeses''\sf ees'' fes'' ees'' fes''\sf f'' ges'' g''
 aes''16\sf bes'' c''' b'' c'''\sf des''' eeses''' des''' eeses'''\sf ees''' fes''' ees''' fes'''\sf f''' ges''' g''' }
 \alternative {
 { <aes'' aes'''>4\ff\staccato <aes aes'>\staccato r4 r8 \clef bass \times 2/3 { g,16[ a, b,] } }
 { \clef treble <aes'' aes'''>4\staccato <aes aes'>\staccato r2 }
 }
 r4 <g g'>4\p r2 r8 \times 2/3 { a'16_\markup { \italic "cresc." }[ b' cis''] } <des' a' des''>4\sf\staccato r2 \bar "||"
 \key g \minor r4 r8 \times 2/3 { d'16\p([ e'! fis']) }
 <g g'>4\staccato <bes! bes'!>\staccato <fis fis'>2_\markup { \italic "sempre piano" } <f f'>4\staccato <aes aes'>\staccato
 <e e'>2 <ees ees'>4\staccato <g g'>\staccato <d d'>4 <g g'>8. <bes bes'>16 <d' d''>4\staccato <fis a d'>\staccato
 d'2( ees' a!2 \afterGrace fis'2) \startTrillSpan { e'16[ \stopTrillSpan fis'] } g'16 d' ees'! f'! g' f' ees' d' c'4\staccato ees'\staccato
 b4. aes'8 g'8[ f' ees' d'] << { c''2( des'' g' \afterGrace e'' \startTrillSpan) { d''!16[ \stopTrillSpan e''] } } \\
 { e'16 f' e' des' c' g' f' e' f'4\staccato aes'4\staccato e'4. des''8 c''8[ bes' aes' g'] } >>
 <aes' f''>16 bes' aes' g' f' aes' des'' b' c'' b' c'' bes' c'' aes' c'' g'
 <aes f'>16 bes aes g f aes des' b c' b c' bes c' aes c' g c'16 aes c' g b f c' ees d'! g e' c' f' c' <fis' c''> ees'!
 <g' c''>16\< ees' <a'! c'' ees''> ees' <a' c'' ees''> ees' <a' c'' ees''> ees'
 <a' c'' ees''> ees' <a' c'' ees''> ees' <a' c'' ees''> ees' <ees' a' c''> c'\!
 <b d' g'>4\f\staccato <b d' g' b'>\staccato <a! c' ees' fis'>2\sf \bar "||"
 \key c \minor << { <fis' a' c''>4\staccato <fis' a' ees''>\staccato b'2 f''4\staccato aes''\staccato e''2
 <e'' g''>4\staccato <e'' bes''>\staccato fis''2 <fis'' a'' c'''>4\staccato <fis'' a'' ees'''>\staccato b''4. } \\
 { ees'4 ees' <d' f'! aes'!>2\sf <aes' b' d''>4 <aes' b' d''> <g' bes'! des''!>2\sf <bes' des''>4 <bes' des''> <a'! c'' ees''!>2\sf
 ees''4 ees'' <d'' f''! aes''!>4.\sf } >> <aes'' aes'''>8
 g'''16 aes''' g''' f''' ees''' f''' ees''' d''' ees''' f''' ees''' d''' c''' g'' a'' b''
 <c'' c'''>4\ff\staccato <ees'' ees'''> <b' b''>4. <aes''! aes'''!>8
 <g'' g'''>8[ <f'' f'''> <ees'' ees'''> <d'' d'''>] <ees'' ees'''>16 f''' ees''' d''' <c'' c'''>8 <f'' g'' aes'''>8\p
 <f'' g'' g'''>8\staccato_\markup { \italic "ritar ----- dan ----- do" }([
 <f'' g'' f'''>\staccato <f'' g'' ees'''> <f'' g'' d'''>\staccato])
 << { ees'''16 f''' ees''' d''' c'''8 aes'' g''8\staccato([ f''\staccato ees''\staccato d''\staccato]) ees''16 f'' ees'' d'' c'' } \\
 { r8 <ees'' g''>8[~ <ees'' g''>] <f' g'>8 <f' g'>8[ <f' g'> <f' g'> <f' g'>] g'8\rest <ees' g'>~ <ees' g'> } >>
 \setTextCresc <aes'' aes'''>16\<^\markup { "a tempo." } r16
 <g'' g'''>16[ r <f'' f'''>] r <ees'' ees'''>[ r <d'' d'''>] r <ees'' ees'''>[ r <d'' d'''>] r <c'' c'''>[ r <b' b''>] r
 <c'' c'''>[ r <bes'! bes''!>] r <aes' aes''>[ r <g' g''>] r <aes' aes''>[ r <g' g''>] r <f' f''>[ r <ees'! ees''>\!] r
 <des' des''>16[ r <aes' aes''>] r <des'' des'''>[ r <f'' f'''>] r <aes'' aes'''>[ r <aes' aes''>] r <f' f''>[ r <des' des''>] r
 <des' des''>16_\markup { \italic "dimin." }[ r <c' c''>] r <c' c''>[ r <c' c''>] r
 <c' g' c''>8\>^\markup { \italic "poco ritenente" }^\markup { \italic "espressivo" } <c' g' c''>4 <c' g' bes'>8\!
 aes'16\f^\markup { "a tempo." } c'' bes' aes' g' f' e' f' g' aes' bes' g' des'( ees' g' bes'~ bes'8)^([
 <e e'>8 <f f'> <e e'>] <f f'>[ <bes bes'>) <aes aes'>\staccato <f f'>\staccato]
 r8 <f f'>[( <g g'>) <g g'>]~ <g g'>[( <c' c''>) <bes bes'>\staccato <g g'>\staccato]
 r8 <g g'>[( <aes aes'>) <aes aes'>]~ <aes aes'>[( <des' des''>) <c' c''>\staccato] <c' c''>16[ bes']
 a'8 bes'16 c'' f'16 ges' f' ees'
 << { bes'4^\f\staccato des''\staccato a'4. ges''8 f''16 ges'' f'' ees'' des'' ees'' des'' c'' } \\
 { f'16 ges' f' ees' des' f' des' f' ees' f' ges' f' ees'8 ees''16 des'' c''4 e'4\rest } >>
 des''16 ees'' des'' c'' bes' des'' f'' aes'' ges'' aes'' ges'' f'' ees'' f'' ees'' des''
 ees'' f'' ees'' des'' c'' ees'' ges'' bes'' aes'' bes'' aes'' ges'' f'' ges'' f'' ees''
 << { des'''4 f'''4 c'''4~ c'''16 ees''' ges''' bes''' } \\ { aes''16 bes'' aes'' ges'' f'' ges'' aes'' f'' ees''8 b'8\rest s4 } >>
 aes'''16 bes''' aes''' ges''' f''' ges''' f''' ees''' f''' ges''' f''' ees''' d'''! f''' aes''' ces''''
 bes''' ces'''' bes''' aes''' ges''' aes''' ges''' f''' ges''' aes''' ges''' f''' e''' g''' bes''' des'''
 c''' des''' c''' bes'' aes'' bes'' aes'' g'' aes'' bes'' aes'' g'' fis'' a'' c''' ees'''
 d'''! ees''' d''' c''' bes'' c''' bes'' a'' b'' c''' b'' a'' b'' d''' f''' aes'''!
 g''' aes''' g''' f''' ees''' f''' ees''' d''' ees''' f''' ees''' d''' ees''' g''' a''' b''' c''''2\sf \clef bass c,2\sf f,,2^\sf \clef treble c''''2\sf
 r4 g'''2\sf\>( e'''8. c'''16\!\p) c'''4( b''8)[ r16 a''16] a''4( g''8)[ r16 <f'' d''' f'''>16]
 <f'' d''' f'''>4 <e'' c''' e'''>4~ \times 8/12 { <e'' c''' e'''>32_\markup { \italic "meno allegro" }([
 g''' fis''' g''' a''' g''' dis''' e''' f''' e''' b'' c''']) } \times 8/9 { d'''32([ c''' fis'' g'' gis'' a'' g'' e''! c'']) }
 << { \times 4/5 { c''16([ b' c'' d'' c'']) } b'8[ r16 a'] \times 4/5 { a'16([ g' a' b' a']) } g'8[ r16 <b' f''>] } \\
 { <b f'!>4._\markup { \italic "ritar ----- dan ----- do" } s16 <c' f'>16 <d' f'>4. s8 } >>
 <b' f''>4 <c'' e''>4 r4 r8. <g' d'' a''>16^\markup { "Adagio." } <g' d'' a''>4 <g' g''> r4 r8.
 << { aes''!16^\markup { "Tempo I." } aes''4( g''2 bes''!4)~ bes''4 bes''4~ bes''8[ a'' bes'' b''] } \\
 { d''16 d''4( des''2 <f'' g''>4)~ <f'' g''>4 <e'' g''>2_\markup { \italic "cresc." }~ <e'' g''>8[ <f'' aes''>] } >>
 r16 c''16\p f'' aes''! c'''4 r16 c'' f'' aes'' c'''4 r16 c''16 g'' bes'' c'''4 r16 c''16 e'' g'' c'''4
 r16 c'' f'' aes'' c'''_\markup { \italic "meno allegro" } e''' f''' c'''
 \times 2/3 { ees'''16([ des''' bes'' } \times 2/3 { des''' c''' aes'']) }
 \times 2/3 { c'''([ bes'' g'' } \times 2/3 { bes'' aes'' f'']) }
 << { \times 4/5 { f''16([ e'' f'' g'' f'']) } e''8[ r16 des''] \times 4/5 { des''16([ c'' des'' ees'' des'']) } c''8[ r16 bes''] } \\
 { bes'4._\markup { \italic "ritar ----- dan ----- do" } s16 aes'16 g'4. s8 } >>
 \once \override TextScript #'padding = #2.5
 \setTextCresc \times 4/5 { bes''16\<^\markup { \italic "poi   a   poi   sempre   piu   allegro" }([ aes'' bes'' c''' bes'']) } aes''8 c'''
 \times 4/5 { c'''16([ b'' c''' d'''! c''']) } b''8 d'''
 \times 4/5 { d'''16([ c''' d''' ees''' d''']) } c'''8 ees''' \times 4/5 { ees'''16([ d''' ees''' f''' ees''']) } d'''8 f'''
 \times 4/5 { f'''16([ ees''' f''' g''' f''']) } ees'''8 g''' \times 4/5 { g'''16([ f''' g''' aes''' g''']) } f'''8 aes'''
 #(set-octavation 1)
 \times 4/5 { aes'''16([ g''' aes''' bes''' aes''']) } g'''8 bes''' \times 4/5 { bes'''16([ aes''' bes''' c'''' bes''']) } aes'''8 b'''\!
 \once \override TextScript #'padding = #2.5 c''''16\ff^\markup { "Tempo I." }( ees'''') a'''( c'''')
 #(set-octavation 0) fis'''( a'''!) ees'''( fis''') c'''( ees''') a''( c''') fis''( a'') ees''!( fis'')
 d''( f''!) b'( d'') aes'!( b') f'( aes') d'( f') b( d') s4 s4 ees'16_\p_\markup { \italic "    cresc." } f' g' aes' b' c'' d'' ees'' f'' fis'' g'' fis''
 aes''16\ff g'' ees'' c'' aes'' g'' ees'' c'' aes''\sf g'' f''! d'' aes'' g'' f'' d''
 des''' c''' g'' e'' des''' c''' g'' e'' g'''\sf f''' c''' f'' g''' f''' c''' f''
 g''' fis''' ees''' c''' g''' fis''' ees''' c''' aes''' g''' ees''' c''' f''' ees''' c''' g'' f''' ees''' c''' g'' ees''' d'''! b'' f''
 << { c'''4\staccato ees'''\staccato b''2^\sf bes''4\staccato c'''\staccato a''2^\sf aes''4\staccato c'''\staccato
 g''4 c'''8. ees'''16 g'''8[ g'''] } \\
 { <ees'' g''>8[ <ees'' g''> <ees'' g''> <ees'' g''>] <d'' g''>[ <d'' g''> <d'' g''> <d'' g''>]
 <c'' g''>[ <c'' g''> <c'' g''> <c'' g''>] <c'' f''>[ <c'' f''> <c'' f''> <c'' f''>] <c'' f''>[ <c'' f''> <c'' f''> <c'' ees''!>]
 <c'' ees''>4\sf c''8. ees''16 g''8 s8 } >> g'''8.[ \startTrillSpan fis'''32 \stopTrillSpan g''']
 #(set-octavation 1) g'''8([ b''']) b'''\>([ c''''\!]) #(set-octavation 0) r8 g''8 g''8.[ \startTrillSpan fis''32 \stopTrillSpan g''32]
 g''8([ b'']) b''\>([ c'''\!]) r8 g'8 aes'16 g' a' b' c''16\sf d'' ees'' d'' ees''\sf e'' f'' e'' f''\sf fis'' g'' fis'' g''\sf a'' bes''! b''
 c'''16\sf d''' ees'''! d''' ees'''\sf e''' f''' e''' f'''\sf fis''' g''' fis'''
 #(set-octavation 1) g'''16\sf a''' bes'''! b''' c''''4\ff #(set-octavation 0)
 <c' c''>4\sf r <ees' fis' a' ees''>\sf r <d' f' aes'! b'>4\sf\staccato r <f' aes' b' d''>\sf\staccato
 r4 <des' e' g' bes'!>4\staccato_\markup { \italic "dimin." }( r4 <e' g' bes' des''>\staccato
 r <c' f' a'>\staccato r <f' a' c''>\staccato)
 r2 << { c''2 c''2 c''4.( <b' d''>8 <c'' e''>4 c'') c''2 c''2 c''4.( f''8 <e'' g''>4 c'') c''2 } \\
 { <f' aes'!>2\p <g' bes'> <f' aes'>2\< <e' g'>4\!\> e'8( f'16 g') <f' aes'>2\!
 <g' bes'>2 <f' aes'>2\< <g' c'' e''>4\!\> e'8( f'16 g') <c' f' aes'>2\! } >>
 <c' g' bes' c''>2 <c' f' aes' c''>4.\< <d''! f'' aes'' b''>8 <d''! f'' aes'' b''>1\!\>
 <e'' g'' c'''>2\!_\markup { \italic "dimin." } <e'' g'' c'''>2 <e'' g'' c'''>1\pp \bar "|."
}