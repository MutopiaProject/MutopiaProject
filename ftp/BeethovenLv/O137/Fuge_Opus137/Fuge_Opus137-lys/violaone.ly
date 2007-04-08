\version "2.10.3"

 violaone = {
 \set Staff.instrumentName ="Viola I.   "
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key d \major
 \time 3/8
 R4. R4. R4. R4. R4. R4. a'16\p\staccato a\staccato fis'\staccato fis\staccato d'\staccato d\staccato
 b8\staccato e'\staccato e'16( d') cis'8\staccato dis'\staccato e'~
 e'16_\markup { \italic "cresc." }( d'!) e'8\staccato cis'16( e')
 cis'([ d']) d'8. cis'16 b8\staccato cis'\staccato d'16( e') dis'8( e') g'~ g'( fis' d')
 e'16\f( d'!) d'\staccato e'\staccato fis'8~

 fis'8( e') b8~ b8( a) g( b a) cis'( c' b) a~ a_\markup { \italic "dim." }( b) f'~ f'\p( e'4)
 r8 r b'8~ b'8_\markup { \italic "cresc." } b'16 cis'' d''8~ d''8( cis'') r8
 d''8 d'' e''~ e''( d'' cis'') b'4_\markup { \italic "p cresc." } fis8 e4. fis4 fis'8
 fis''16\fp\staccato fis'\staccato d''\staccato d'\staccato b'\staccato b\staccato g'8( cis'') cis''16( b')
 ais'8( b' cis'') ais'8( d'') d''16( cis'') b'8_\markup { \italic "cresc." }( cis'') dis''~ dis''8( e''16 fis'' g''8)
 a'8\ff dis''4~ dis''8( e'') fis''~ fis''4.~ fis''8 dis''4~ dis''8_\markup { \italic "dim." }( a'4)~

 a'8 b'16 c'' d''!8 ees'4 e'8 fis'4_\markup { \italic "cresc." } r8 R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. r8 r b8\p~ b cis'\staccato d'\f\staccato g4 d'8\p~ d' e'\staccato fis'\f\staccato
 cis'4 g'8\p~ g' a'\staccato b'_\markup { \italic "cresc." }~ b'4 a'8~ a'4.

 g'8( f' e'16 g')~ g'8\f fis'!\staccato d'\staccato f'8\staccato e'\staccato cis'\staccato
 a'16\staccato a\staccato fis'!\staccato fis\staccato d'\staccato d\staccato
 b8\staccato e'\staccato e'16( d') c'8\staccato b\staccato g'\staccato g'16( fis') e'8\staccato a'\staccato
 a'16( g') fis'8\staccato b'\staccato b'16( a') g'8\staccato c''8~ c''8 c'4\sf~ c'8 b4\sf~ b8 bes4\ff~
 bes4 a8\sf~ a8 a'16\staccato[ a\staccato fis'\staccato fis\staccato] d'\staccato d\staccato ees4~
 ees8( e a) c'8\staccato[ fis16\staccato fis'\staccato g\staccato g'\staccato]
 b16\staccato_\markup { \italic "dim." }[ b'\staccato] e8\staccato fis~
 fis8._\markup { \italic "p cresc." } g16 a8\staccato e'8\staccato fis'\staccato g'~ g'16 fis' e' d' cis' d'
 e'8\p( <fis d'>4^\fermata) \bar "|."
 }