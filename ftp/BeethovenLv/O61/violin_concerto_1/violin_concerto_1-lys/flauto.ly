\version "2.10.3"

 flauto = {
 \set Staff.instrumentName = "Flauto."
 \set Staff.midiInstrument = "flute"
 \clef treble
 \key d \major
 \time 4/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 102
 R1^\markup { \large "Allegro, ma non troppo" } R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 f''2\ff bes''8 r d''' r f'''8 r r4 r2 ees'''2 a''8 r c''' r d''4 r r2
 d''2 g''8 r bes'' r a''2 e'''8 r a'''8 r f'''4. r8 d'''4. r8
 a''4 r4 r2 r4 a'''4\sf( f'''8) r8 d'''4\sf( a''8) r8 r4 r2 r4 a'''4\sf( f'''8) r8 d'''4\sf( a''8) r8 r4 r2
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 r2 \setTextCresc fis''2\<( a''2 c''') b''1\!\f cis'''!1\f
 d'''2\ff d'''4 r4 b''2 b''4 r4 fis'''4\f r fis'''\f r g'''\f r e'''\f r d'''1\ff~ d'''1 cis'''1~ cis'''1
 d'''2( fis''4 a'' b'' cis''' d''' e'''8 d''') cis'''1~ cis'''1 d'''4 r cis''' r d'''4 r cis''' r R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 d'''2\f d'''8 r r4 R1 e'''2 e'''8 r r4 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1

 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 a''2\ff^\markup { "TUTTI." } c'''8 r f''' r a'''8 r r4 r2 bes''2 e'''8 r g''' r a''8 r r4 r2 a''2 d'''8 r f''' r
 e''2 b''!8 r e''' r c'''4~ c'''8 r a''4~ a''8 r e''8 r r4 r2 r4 e'''4\sf( c'''8) r a''4\sf( e''8) r8 r4 r2
 r4 e'''4\sf( c'''8) r a''4\sf( e''8) r8 r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 r4 e'''8\ff r e''' r e''' r c'''4( d''' e''' fis'''8 gis''') a'''2( e'''2) d'''4( c''' b'' c'''8 a'') b''2( e'') c'''4( d''' e''' fis'''8 gis''')
 a'''2( e'''2) f'''4( e''' d''' g'''!) e'''1 d'''4( c''' b'' e''') c'''2._\markup { \italic "sempre ff" }( d'''8 e''') f'''4( e''' d''' g''')
 e'''1 d'''4( c''' b'' e''')~ e'''2._\markup { \italic "sempre f" }( d'''8 b'')
 ais''4\staccato( ais''\staccato ais''\staccato ais''\staccato) b''2~ b''8([ e''' d''' b''])
 bes''4\staccato( bes''\staccato bes''\staccato bes''\staccato) bes''1~ bes''2 e'''2 f'''1\sf f'''1\sf e'''2 e'''4 r4
 a'''2 a'''4 r g'''4 r e''' r f'''4 r d''' r c'''4 r r2 R1 b''1_\markup { \italic "sempre ff" }~ b''1
 c'''2( e''4 g'' a'' b'' c''' d'''8 c''') b''1~ b''1 c'''4 r b'' r c''' r b'' r R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1

 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 d'''8^\markup { "TUTTI." } r d''' r d''' r d''' r a''2( b''2) g''4( g'''2 fis'''4 e''' d''' cis''' d''')
 e'''4 r4 r2 g''2( fis'') b''2.\sf a'''4( g'''4)( fis''' e''' a'''8 e''') g'''2( fis'''4) r4
 R1 cis'''1 R1 b''1\sf~ b''2_\markup { "sempre f" }( a'' g'' fis'') e'''2~ e'''8([ d''' cis''' b'']) a''2~ a''8[ a''( g'' e'')]
 d''2 d''8 r8 r4 R1 e''2 e''8 r8 r4 R1 R1^\markup { "SOLO." } R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 r4 f''2\p( g''8 a'') \setTextCresc bes''4\<( a'' g'' c''') a''1 g''4( f'' e''\!\f a''\sf)~ a''1\>~ a''1\!\p~
 a''1~ a''~ a''~ a''4 r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 r4 \setTextCresc b''4\<( d''' c'''8 a'') b''4\!\f r4 r2 R1 d'''4\f r4 r2 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 d''2\ff^\markup { "TUTTI." } f''8 r bes'' r d'''4 r4 r2 ees'''2 a''8 r c''' r d''4 r r2
 d''2 g''8 r bes'' r a''2 e'''8 r a''' r f'''4. r8 d'''4. r8 a''4 r4 r2
 r4 a'''4\sf( f'''8) r8 d'''4\sf( a''8) r8 r4 r2 r4 a'''4\sf( f'''8) r8 d'''4\sf( a''8) r8 r4 r2 r4 fis'''!4\ff fis''' fis'''
 fis'''2^\fermata r2^\fermata R1^\markup { "SOLO." } R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 r2 cis'''4\f r d'''4\ff r d''' r d''4 r4 r2 \bar "|."
}