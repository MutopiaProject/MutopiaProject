\version "2.10.3"

 pianoone = {
 \set Staff.midiInstrument = "acoustic grand"
 \clef treble
 \key f \minor
 \time 2/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 134
 \once \override TextScript #'padding = #2.5
 <e' des''>4.\ff^\markup { \bold "Allegro ma non troppo." } <e' des''>8 <e' des''>4. <e' des''>8
 <e' des''>8.[ <e' des''>16 <e' des''>8. <e' des''>16]
 <e' des''>8.[ <e' des''>16 <e' des''>8. <e' des''>16] <e' des''>4 r8 des'''16\p c''' bes'' c''' bes'' aes'' g'' aes'' g'' f''
 e''4 r8 des''16 c'' bes' c'' bes' aes' g' aes' g' f' e'4 r8 des''16 c''
 bes'_\markup { \italic "cresc." } c'' bes' aes' g' aes' g' f' e' f' e' des' c' des' c' b
 \clef bass bes!16 c' bes aes g aes g f e f e des c\f des c b, c des c b, c des c b, c des c b, c des c b,
 bes,! c bes, a, bes, c bes, a, bes, c bes, a, bes, c bes, a, bes,_\markup { \italic "dimin." } c bes, a, bes, c bes, a,
 bes, g, aes,! bes, c bes, aes, g, r c\pp f aes c' des' c' bes aes bes aes g f g aes f
 r16 c f aes c' des' c' bes aes bes aes g f g aes f r des ges bes des' ees' des' c' bes c' bes aes ges aes ges f
 e f g! e f g aes f g aes bes g e f g e
 f16 c f aes c' des' c' bes aes bes aes g f g aes f r c f aes c' des' c' bes aes bes aes g f g aes f
 r des ges bes des' ees' des' c' bes c' bes aes ges aes ges f e f g! e f g aes f g aes bes g e f g e
 f16 \clef treble c'16\<[ f' aes'] c'' c' f' aes' r c' f' aes' c'' c' f'\! aes' r b d' aes'
 << { b'4 b'4( c''4) } \\ { b'16 b d' aes' b'\> b e' g' c'' c' e' g'\! } >>
 r16 c'\< e' g' c'' c' e' g' r c' e' g' c''\! c' e' g' r16 c' e' g' << { c'' c' e' g' c''\> c' e' g' c'' c' f' aes'\! } \\ { c''4 c''4 c''4 } >>
 r16 f'_\markup { \italic "cresc." } a' c'' f'' f' a' c'' r f' a' c'' f'' f' a' c''
 r16 f' a' c'' << { f''16 f' a' c'' } \\ { f''4 } >> <f' a'>16 f'' <f' bes'> f'' <f' c''> f'' <f' des''> f''
 r16\p c' f' aes'! << { c''16 c' f' aes' c'' c' g' bes' c'' c' e' g' } \\ { c''4 c''4 c''4 } >>
 <c' f' aes' c''>4 r8 r16 <f'' aes''> <f'' aes''>4 r8 r16 <f'' aes''>
 \set doubleSlurs = ##t <f'' aes''>2( <e'' g''>8) r8 r4 r4 r8 r16 <g'' bes''!>16
 <g'' bes''>4 r8 r16 <g'' bes''> <g'' bes''>2\sf( <f'' aes''>8) r8 r4
 \set doubleSlurs = ##f r4\f r8 r16 <c''' ees'''>16 <c''' ees'''>4 r8 r16 <c''' ees'''>
 <c''' ees'''>2\sf(~ <c''' ees'''>8\>[ <bes'' des'''> <aes''! c'''> <g'' bes''>\!]) <f'' aes''>4 r8 r16 <f'' aes'' f'''>16
 <g'' bes'' g'''>4 r8 r16 <e'' g'' e'''> <f'' aes'' f'''>16 c''\<[ f'' aes''] c''' des''' c''' bes''\! aes''\> bes'' aes'' g'' f'' g'' aes'' f''\!
 r16 c''\< f'' aes'' c''' des''' c''' bes''\! aes''\> bes'' aes'' g'' f'' g'' aes'' f''\! r16 f''\< b'' d''' f''' g''' f''' ees'''\!
 d'''16\> ees''' d''' c''' b'' c''' d''' b''\! r16  f''\< b'' d''' f''' g''' f''' ees'''\! d'''16\> ees''' d''' c''' b'' c''' d''' b''\!
 r16 g''\< c''' ees''' g''' aes''' g''' f'''\! ees'''\> f''' ees''' d''' c''' d''' ees''' c'''\!
 r16 g'' c''' ees'''_\markup { \italic "cresc." } g''' aes''' g''' f''' ees''' f''' ees''' d''' c''' d''' ees''' c'''
 r16 des'''!([ ees''' des'''] ees''' des''' c''' des''') r b''[ c''' b''] r c'''[ d''' c''']
 r16 des'''!([ ees''' des'''] ees''' des''' c''' des''') r b''[ c''' b''] r c'''[ d''' c''']
 r16 des'''!([ ees''' des'''] ees''' des''' c''' d''') r b''_\markup { \italic "cresc." }[ c''' b''] r aes''[ bes'' aes'']
 r g''[ aes'' g''] r fis''[ g'' fis''] r f''![ g'' f''] r ees''[ f'' ees''] r ees''_\markup { \italic "dimin." }[ f'' ees''] r d''[ ees'' d'']
 r c''[ d'' c''] r b'[ c'' b'] r aes'[ aes'' aes'] aes''[ aes' aes'' aes'] r aes' aes'' g'' f'' ees'' d'' c''
 r aes'' aes''' aes'' aes''' aes'' aes''' aes'' r aes'' aes''' g''' f''' ees''' d''' c'''
 r aes' aes'' aes' aes''_\markup { \italic "cresc." } aes' aes'' aes' r aes'' aes' aes'' r aes''' aes'' aes'''
 r g''' g'' g''' r fis''' fis'' fis''' r f'''! f''! f''' r ees''' <ees'' g''> ees'''
 r ees'''_\markup { \italic "dimin." } <ees'' a''> ees''' r d''' <d'' a''> d'''
 r c''' <c'' ees''> c''' r b'' <b' d''> b'' <c'' ees'' g'' c'''>16\f g'[ c'' ees''] g'' aes'' g'' f'' ees'' f'' ees'' d'' c'' bes'! aes' g'
 f' ees' d' c' b8 <g b d' g'>\sf <g b f' g'>8[ <g b f' g'> <g b f' g'> <g b f' g'>]
 <g c' ees' g'>16\f g''[ c''' ees'''] g''' aes''' g''' f''' ees''' f''' ees''' d''' c''' bes''! aes'' g'' f'' ees'' d'' c'' b'8 <g' b' d'' g''>\sf
 <g' b' f'' g''>8[ <g' b' f'' g''> <g' b' f'' g''> <g' b' f'' g''>] <g' c'' ees'' g''>4. <g'' c''' ees''' g'''>8\sf
 <g'' b'' f''' g'''>8[ <g'' b'' f''' g'''> <g'' b'' f''' g'''> <g'' b'' f''' g'''>] <g'' c''' ees''' g'''>4 r8 <g' c'' ees'' g''>8\sf
 <g' b' f'' g''>8[ <g' b' f'' g''> <g' b' f'' g''> <g' b' f'' g''>] <g' c'' ees'' g''>4 r8 <c'' ees'' g'' c'''>\sf
 <c'' e'' g'' c'''>8[ <c'' e'' g'' c'''> <c'' e'' g'' c'''> <c'' e'' g'' c'''>] <c'' f'' aes'' c'''>4 r8 <c' f' aes' c''>\sf
 <c' e' bes' c''>8[ <c' e' bes' c''> <c' e' bes' c''> <c' e' bes' c''>] <c' ees'! a' c''>16\ff a[ c' ees'] ges' a' c'' ees''
 ges''16 a'' c''' ees''' ges''' ees''' c''' a'' ges'' ees'' c'' a' ges' ees' c' a
 \new Voice { \change Staff="down" \stemUp ges16 ees c a, ges,16 g16\rest g8\rest } R2 R2
 \break

 \repeat volta 2 { r16 a\pp c' ees' ges' aes'! ges' f' ees' f' ees' des' c' des' ees' c'
 r a c' ees' ges' aes'! ges' f' ees' f' ees' des' c' des' ees' c'
 r a c' ees'_\markup { \italic "cresc." } ges' aes'! ges' f' ees'8\sf ees'16 f' ges' aes' ges' f' ees'8\sf ees'16 f' ges' aes' ges' f'
 ees'8 <ges' ges''>8_\markup { \italic "dimin." }([ <f' f''> <a' a''>]) <bes' bes''>16\p f'[ bes' des''] f'' ges'' f'' ees''
 des''16 ees'' des'' c'' bes' c'' des'' bes' r f' bes' des'' f'' ges'' f'' ees'' des'' ees'' des'' c'' bes' c'' des'' bes'
 r16 ges'\< ces'' ees'' ges'' aes'' ges'' f'' ees'' f'' ees'' des'' ces'' des'' ees'' ces''\!
 bes'\> c''! bes' a' bes' c'' des'' bes' a' bes' a' g'! a' bes' c'' a'\! bes'8 bes'16[ des'']
 f''16_\markup { \italic "cresc." } ges'' f'' ees''
 << { b''4\rest bes''4( a'' bes'') b''4\rest bes''4 } \\ { des''16 ees'' des'' c'' bes' c'' des'' bes'
 r8 bes'16\< des'' f'' ges'' f'' ees'' des'' ees'' des'' c'' bes' c'' des'' bes'\! } >>
 <ces'' ces'''>16\f ges'' ces''' ees''' ges''' aes''' ges''' f''' ees''' f''' ees''' des''' ces''' des''' ces''' bes''
 a'' c'''! ees''' des''' c''' des''' c''' bes'' a'' bes'' a'' ges'' f'' ees'' des'' c''
 bes'8\staccato f''4\sfp f''8\staccato f''8\staccato ges''4\sfp ges''8\staccato
 ges''8\staccato f''4\sfp f''8\staccato f''8\staccato[ c''\staccato des''\staccato ees''\staccato]
 des''8\f\staccato <f'' f'''>4\sf <f'' f'''>8\staccato <f'' f'''>\staccato <ges'' ges'''>4\sf <ges'' ges'''>8\staccato
 <ges'' ges'''>8\staccato <f'' f'''>4\sf <f'' f'''>8\staccato
 <f'' f'''>8\staccato[ <c'' c'''>\staccato <des'' des'''>\staccato <ees'' ees'''>\staccato]
 <des'' des'''>8\staccato c''4\sfp c''8\staccato c''8\staccato b'4\sfp b'8\staccato
 b'8\staccato c''4\sfp c''8\staccato c''8\staccato[ g'\staccato aes'\staccato bes'!\staccato]
 aes'8\f\staccato <c'' c'''>4\sf <c'' c'''>8\staccato <c'' c'''>8\staccato <b' b''>4\sf <b' b''>8\staccato
 <b' b''>8\staccato <c'' c'''>4\sf <c'' c'''>8\staccato
 <c'' c'''>8\staccato[ <g' g''>\staccato <aes' aes''>\staccato <bes'! bes''!>\staccato]
 <aes' aes''>16 c'_\markup { \italic "piu forte" }[ f' aes'] c'' des'' c'' bes' aes' bes' aes' g' f' g' aes' f'
 ges'16 des' ges' bes' des'' ees'' des'' c'' bes' c'' bes' aes' ges' aes' bes' ges' a' ees' a' c'' ees'' f'' ees'' des''
 c''16 des'' c'' bes' a' bes' c'' a' bes'\ff f' bes' des'' f'' ges'' f'' ees'' des'' c'' bes' aes'! ges'! f' ees' des'
 \new Voice { \stemUp c'16[ bes aes \change Staff="down" ges] f ees des c } s2 s2 s2
 r16 <c' c''>[ r <c' c''> r <c' c''> r <c' c''>] r <c' c''>[ r <c' c''> r <c' c''> r <c' c''>]
 r <c'' c'''>[ r <c'' c'''> r <c'' c'''> r <c'' c'''>] r <c'' c'''>[ r <c'' c'''> r <c'' c'''> r <c'' c'''>]
 #(set-octavation 1) r16 <c''' c''''>[ r <c''' c''''> r <c''' c''''> r <c''' c''''>] r <c''' c''''>[ r <c''' c''''> r <c''' c''''> r <c''' c''''>]
 #(set-octavation 0)
 r16\sustainDown s16 s8 s4 r16 des' ges' bes' des''8 r8 r16 des'' ges'' bes'' des'''8 r8\sustainUp R2
 r16\sustainDown s16 s8 e'8 r8 r16 e'16 g' bes' e''8 r8 r16 e''16 g'' bes'' e'''8 r\sustainUp R2
 r4\sustainDown g16 bes des' e' g'8 r8 r4\sustainUp
 r4\sustainDown bes16 des'_\markup { \italic "dimin." } e' g' bes'8 r8 r4\sustainUp
 r4\sustainDown des'16 e' g' bes' des''8 r8 r4\sustainUp r4\sustainDown e'16 g' bes' des'' e''8 r8 r4\sustainUp
 R2_\markup { \italic "sempre ped." } r8 e'8[ g' bes'] des''8[ e'' g'' bes''] des'''[ e''' g''' bes'''] g'''[ e''' des''' bes'']
 g''[ e'' des'' bes'] g'[ e' des' bes] \clef bass g[ e des bes,] g,2 R2 R2 R2 R2 R2 <g, bes, c e>4.\pp r8 R2
 \clef treble <g bes c' e'>4. r8 <g' bes' c'' e''>4. r8 <g'' bes'' c''' e'''>4. r8 \clef bass <g, bes, c e>4. r8
 r16 c\pp f aes c' des' c' bes aes bes aes g f g aes f r c f aes c' des' c' bes aes bes aes g f g aes f
 r16 des ges bes des' ees' des' c' bes c' bes aes ges aes ges f e f g! e f g aes f g aes bes g e f g e
 f4 r8 \clef treble e'8( f'8\staccato_\markup { \italic "cresc." })[ g'\staccato aes'\staccato f'\staccato]
 r4 r8 <e' e''>8( <f' f''>8\staccato)[ <g' g''>\staccato <aes' aes''>\staccato <f' f''>] r4 r8
 <f' f''>8( <ges' ges''>[ <bes' bes''>) <des'' des'''>\staccato <des'' des'''>]
 <des'' des'''>4_\markup { \italic "ritard." }( <c'' c'''>~ <c'' c'''>\> <e' e''>\!)
 <f' f''>16\p^\markup { "a tempo." } c'\<[ f' aes'] c'' c' f' aes' r c' f' aes' c'' c' f' aes'\!
 r16 b d' aes' << { b'4 b'4( c''4) } \\ { b'16 b d' aes' b'16\> b e' g' c'' c' e' g'\! } >> r16 c'\< e' g' c'' c' e' g' r c' e' g' c'' c' e' g'\!
 r16 c' e' g' << { c'' c' e' g' c'' c' e' g' c'' c' f' aes' } \\ { c''4 c''4 c''4 } >>
 r16_\markup { \italic "cresc." } f'16 a' c'' f'' f' a' c'' r f' a' c'' f'' f' a' c'' r f' a' c'' f'' f' a' c''
 <f' a'> f'' <f' bes'> f'' <f' c''> f'' <f' des''> f''
 r\p c' f' aes'! << { c''16 c' f' aes' c''16 c' g' bes' c'' c' e' g' } \\ { c''4 c''4 c''4 } >> <c' f' aes' c''>4 r8 r16 <f'' aes''>
 <f'' aes''>4 r8 r16 <f'' aes''> <f'' aes''>2\sf( <e'' g''>8) r8 r4 r4 r8 r16 <g'' bes''!> <g'' bes''>4 r8 r16 <g'' bes''>
 \set doubleSlurs = ##t <g'' bes''>2\sf( <f'' aes''>8) r8 r4 \set doubleSlurs = ##f r4 r8 r16 <c''' ees'''!>
 <c''' ees'''>4 r8 r16 <c''' ees'''> <c''' ees'''>2\sf(~ <c''' ees'''>8\>[ <bes'' des'''> <aes''! c'''> <g'' bes''>\!])
 <f'' aes''>4 r8 r16 <f'' aes'' f'''> <g'' bes'' g'''>4 r8 r16 <e'' g'' e'''>
 <f'' aes'' f'''>16 c''\<[ f'' aes''] c''' des''' c''' bes''\! aes''\> bes'' aes'' g'' f'' g'' aes'' f''\!
 r16 c''\< f'' aes'' c''' des''' c''' bes''\! aes''\> bes'' aes'' g'' f'' g'' aes'' f''\!
 r16 ges'' c''' ees''' ges''' aes''' ges''' f''' ees''' f''' ees''' des''' c''' des''' ees''' c'''
 r16 ges'' c''' ees''' ges''' aes''' ges''' f''' ees''' f''' ees''' des''' c''' bes'' aes'' ges''
 f'' aes'' c''' f''' #(set-octavation 1) aes''' bes''' aes''' ges''' f''' ges''' f''' ees''' des''' ees''' f''' des'''
 r16 aes''_\markup { \italic "cresc." } des''' f''' aes''' bes''' aes''' ges''' f''' ges''' aes''' ges''' f''' ges''' aes''' f'''
 r ges'''( aes''' ges''' aes''' ges''' f''' ges''') r e''' f''' e''' r f''' g'''! f'''
 #(set-octavation 0) r16 ges''' aes''' ges''' aes''' ges''' f''' ges''' r e''' f''' e''' r f''' g'''! f'''
 r16 ges''' aes''' ges''' aes''' ges''' f''' g''' r e''' f'''_\markup { \italic "cresc." } e''' r des''' ees''' des'''
 r16 c''' des''' c''' r b'' c''' b'' r bes''! c''' bes'' r aes'' bes'' aes'' r aes''_\markup { \italic "dimin." } bes''! aes'' r g'' aes'' g''
 r16 f'' g'' f'' r e'' f'' e'' r des' des'' des' des'' des' des'' des' r des' des'' c'' bes' aes' g' f'
 r16 des'' des''' des'' des''' des'' des''' des'' r des'' des''' c''' bes'' aes'' g'' f''
 r des' des'' des' des'' des'_\markup { \italic "cresc." } des'' des' r des'' des' des'' r des''' des'' des'''
 r16 c''' c'' c''' r b'' b' b'' r bes''! bes'! bes'' r aes'' <aes' c''> aes''
 r aes''_\markup { \italic "dimin." } <aes' d''> aes'' r g'' <g' d''> g'' r f'' <f' aes'> f'' r e'' <e' g'> e''
 <f' aes' f''>16\f c' f' aes' c'' des'' c'' bes' aes' bes' aes' g' f' ees' des' c'
 \new Voice { \change Staff="down" \stemUp bes16 aes g f e8 <e g c'>^\sf
 <c e bes c'>8[ <c e bes c'> <c e bes c'> <c e bes c'>] <c f aes c'>16^\f } c''16[ f'' aes''] c''' des'''! c''' bes''
 aes''16 bes'' aes'' g'' f'' ees''! des'' c'' bes' aes' g' f' e'8 <c' e' g' c''>\sf
 <c' e' bes' c''>8[ <c' e' bes' c''> <c' e' bes' c''> <c' e' bes' c''>] <c' f' aes' c''>4 r8 <c'' f'' aes'' c'''>8\sf
 <c'' e'' bes'' c'''>8[ <c'' e'' bes'' c'''> <c'' e'' bes'' c'''> <c'' e'' bes'' c'''>] <c'' f'' aes'' c'''>4 r8 <c' f' aes' c''>8\sf
 <c' e' bes' c''>8[ <c' e' bes' c''> <c' e' bes' c''> <c' e' bes' c''>] }
 \alternative {
 { <c' f' aes' c''>8 <c'' f'' aes'' c'''>_\markup { \italic "cresc." }[ <c'' f'' aes'' c'''> <c'' f'' aes'' c'''>]
 <c'' e'' bes'' c'''>[ <c'' e'' bes'' c'''> <c'' e'' bes'' c'''> <c'' e'' bes'' c'''>]
 <c'' ees''! a'' c'''>16\ff a c' ees' ges' a' c'' ees'' ges'' a'' c''' ees''' ges''' ees''' c''' a'' ges'' ees'' c'' a' ges' ees' c' a
 \new Voice { \change Staff="down" \stemUp ges16[ ees c a,] ges, r16 r8 } R2 R2 }
 { <c' f' aes' c''>16 g' aes' bes' c'' d'' e'' f'' g''\sf f'' e'' des''! c'' bes' aes' g' } }
 f'16 g' aes' bes' c'' d'' e'' f'' g''\sf f'' e'' des''! c'' bes' aes' g'
 \once \override TextScript #'padding = #1.5
 f'^\markup { \bold "sempre piu Allegro." } g' aes' bes' c'' d'' e'' f''
 \tempo 4 = 140 g'' fis'' g'' fis'' g'' fis'' g'' fis''
 \tempo 4 = 148 g'' fis'' g'' fis'' g'' fis'' g'' fis''
 \tempo 4 = 157 g'' f''! e'' des''! c'' bes' aes' g' \bar "||"
 \break

 \tempo 4 = 166
 \repeat volta 2 { <aes c' f'>2\ff^\markup { \bold "Presto." } <aes c' aes'>2\sf
 <g bes g'>8\p\staccato[ <g bes e'>\staccato <g bes c'>\staccato <g bes e'>\staccato]
 <aes c' f'>\staccato[ <aes c'>\staccato <aes c' f'>\staccato <aes c' aes'>\staccato]
 <g bes g'>8\staccato[ <g bes e'>\staccato <g bes c'>\staccato <g bes e'>\staccato]
 <aes c' f'>\staccato[ <aes c'>\staccato <aes c' f'>\staccato <aes c' aes'>\staccato]
 <g c' g'>\staccato[ <g c' ees'!>\staccato <g b d'>\staccato <g b g'>\staccato] }
 \alternative { { c'4 r8 \times 2/3 { c'16\<[ d' e'\!] } } { c'4 r8 \times 2/3 { ees'!16\<[ f' g'\!] } } }
 \repeat volta 2 { <c' ees' aes'>2\ff <c' ees' c''>\sf
 <bes des' bes'>8\p\staccato[ <bes des' g'>\staccato <bes des' ees'>\staccato <bes des' g'>\staccato]
 <c' ees' aes'>\staccato[ <c' ees'>\staccato <c' ees' aes'>\staccato <c' ees' c''>\staccato]
 <bes des' bes'>8\staccato[ <bes des' g'>\staccato <bes des' ees'>\staccato <bes des' g'>\staccato]
 <c' ees' aes'>\staccato[ <c' ees'>\staccato <c' ees' aes'>\staccato <c' ees' c''>\staccato]
 <c' ees' a'>8\staccato[ <c' ees' f'>\staccato <c' ees' a'>\staccato <c' ees' c''>\staccato]
 <des' f' bes'>\staccato[ <des' f'>\staccato <des' f' bes'>\staccato <des' f' des''>\staccato]
 <c' f' c''>\staccato[ <c' f' aes'>\staccato <c' e' g'>\staccato <c' e' c''>\staccato] }
 \alternative { { f'4 r8 \times 2/3 { ees'!16\<[ f' g'\!] } } { f'16\f c' f' aes' c'' des'' c'' bes' } }
 aes'16 bes' aes' g' f' g' aes' f' aes' c' f' aes' c'' des'' c'' bes' aes' bes' aes' g' f' g' aes' f'
 ges'16 des' ges' bes' des'' ees'' des'' c'' bes' c'' bes' aes' ges' aes' ges' f'
 e' f' g'! aes' bes' aes' g' f' e' f' g' aes' bes' c'' d'' e''
 f''_\markup { \italic "piu forte" } c'' f'' aes'' c''' des'''! c''' bes'' aes'' bes'' aes'' g'' f'' g'' aes'' f''
 aes'' c'' f'' aes'' c''' des''' c''' bes'' aes'' bes'' aes'' g'' f'' g'' aes'' f''
 ges'' des'' ges'' bes'' des''' ees''' des''' c''' bes'' c''' bes'' aes'' ges'' aes'' ges'' f''
 e''16 f'' g''! aes'' bes'' aes'' g'' f'' e'' f'' g'' aes'' #(set-octavation 1) bes'' c''' d''' e''' f'''\ff aes'' c''' f''' aes'''4\sf~
 aes'''16 c''' f''' aes''' c'''' aes''' g''' e''' f''' aes'' c''' f''' aes'''4\sf~ aes'''16 c''' f''' aes''' c'''' aes''' g''' e'''
 f'''16 aes'' c''' f''' aes'''4\sf~ aes'''16 c''' f''' aes''' c'''' aes''' g''' e'''
 f'''16 aes'' c''' f''' aes'''4\sf~ aes'''16 c''' f''' aes''' c'''' aes''' g''' e''' f'''_\markup { \italic "cresc." } c''' f''' aes''' c'''' aes''' g''' e'''
 f'''16 c''' f''' aes''' c'''' aes''' g''' e''' f''' c''' f''' aes''' c''''\sf aes''' g''' e'''
 c''''\sf aes''' g''' e''' c''''\sf aes''' g''' e''' c''''\ff aes''' f''' c''' aes''' f''' c''' aes'' f''' c''' aes'' f''
 #(set-octavation 0) c'''16 aes'' f'' c'' aes'' f'' c'' aes' f'' c'' aes' f' c'' aes' f' c' aes' f' c' aes
 \new Voice { \stemUp f'16[ \change Staff="down" c' aes f] c' aes f c aes f c aes, f c aes, c <aes, c f>8 a8\rest a4\rest }
 <f' aes' c'' f''>8 r r4 <c' f'>8 r r4 \bar "|."
}