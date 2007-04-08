\version "2.10.3"

 violinoone = {
 \set Staff.instrumentName =  "Violino I.   "
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key d \major
 \time 3/8
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 76
 \once \override TextScript #'padding = #1.5
 a''16\p\staccato^\markup { \bold "Allegretto." } a'\staccato fis''\staccato fis'\staccato d''\staccato d'\staccato
 b'8\staccato e''\staccato e''16( d'') cis''8\staccato d''\staccato e''\staccato
 fis''8 g''4~ g''16( fis'' e'' d'') fis''8~ fis''16( e'' d'' cis'' e'' d'')
 cis''8\staccato d''\staccato fis''\staccato~ fis''16( b' cis'' b' cis'' d'')
 e''16\staccato[ fis''\staccato] g''8. e''16 a''4._\markup { \italic "cresc." }~ a''8( fis'') d'''~ d'''( cis''') a''(
 c''' b'') e'''~ e'''( d''') cis'''!~ cis'''\f( d''') r8

 dis'''8( e''') r8 R4. eis'''8( fis''') r8 R4. R4.
 d'''16\p\staccato d''\staccato cis'''\staccato cis''\staccato a''\staccato a'\staccato
 fis''8\staccato b''\staccato b''16( a'')
 gis''8\staccato_\markup { \italic "cresc." } a''\staccato b''~ b'' ais''16 ais' cis'''8~
 cis'''8 b''16 b' d'''8~ d'''8 cis'''16 cis'' e'''8~ e'''8_\markup { \italic "p cresc." } d'''16 d'' d'''8~
 d'''8 b'' e'''~ e''' d''' ais''~ ais''8\fp b'' b''~ b''4 cis'''8 cis'''8( fis''') fis'''16( e''')
 d'''4. dis'''8_\markup { \italic "cresc." }( e''' fis''') g'''4.~ g'''4\ff fis'''8~ fis'''8( e''') dis'''~
 dis'''( c''') b''~ b''( a'') a''~ a''8_\markup { \italic "dim." }( ees''') fis'''~

 fis'''8 g'''4~ g'''8 ees'' a''8~ a''16_\markup { \italic "cresc." } g''\staccato fis''\staccato
 e''!\staccato d''\staccato c''\staccato c'''16 b'' a'' g'' fis'' e'' dis'' e'' fis'' g'' a'' b''
 e''8\staccato fis''\staccato g''\sf~ g'' a''\staccato b''\sf~ b'' a''\staccato g''\staccato
 fis''16\f e'' d'' cis'' b' a' d'' cis'' b' a' g' fis' e' fis' g' a' b' cis''
 ais''8\staccato b''\staccato cis'''\sf~ cis''' d'''\staccato e'''\sf~ e''' d'''\staccato cis'''\p\staccato
 b''8 r b''\f~ b'' a''\staccato g''\p\staccato fis''8 r d'''\f~ d''' cis'''\staccato b''\p\staccato
 a''8 r a'''8_\markup { \italic "cresc." }~ a'''( e''') g'''~ g'''( fis''') d'''~

 d'''4( e'''16 cis''') a'''16\f\staccato a''\staccato fis'''\staccato fis''\staccato d'''\staccato d''\staccato
 b''8\staccato e'''\staccato e'''16( d''') cis'''8\staccato d'''16\staccato e'''\staccato fis'''8~
 fis'''16 gis'''\staccato a'''4~ a'''16[ d''] b''8\staccato b''\staccato b''16( a'') g''8\staccato c'''\staccato
 c'''16( b'') a''8\staccato d'''\staccato d'''16( c''' b'' a'') e'''8\staccato
 c'16\staccato c''\staccato fis'\staccato fis''\staccato a'\staccato a''\staccato
 b''16_\markup { \italic "ben marcato" }( a'') g''8\staccato d'''\staccato
 b''8\staccato a''\staccato g''\staccato g'''4.\ff~ g'''4 fis'''8\sf~ fis'''4 g'''16\staccato g''\staccato
 ees'''16\staccato[ ees''\staccato cis'''!\staccato cis''\staccato] c'''8~ c''' b''\staccato b''~
 b''8_\markup { \italic "dim." } bes''4
 a'''16\staccato_\markup { \italic "p cresc." } a''\staccato
 fis'''\staccato fis''\staccato dis'''\staccato dis''\staccato
 b''8\staccato e'''\staccato e'''16( d'''!) cis'''!8\staccato d'''\staccato e'''\staccato
 e'''8\p( fis'''4^\fermata) \bar "|."
}