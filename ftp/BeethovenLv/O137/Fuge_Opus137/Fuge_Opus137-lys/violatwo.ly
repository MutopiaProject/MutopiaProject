\version "2.10.3"

 violatwo = {
 \set Staff.instrumentName ="Viola II.  "
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key d \major
 \time 3/8
 R4. R4. R4. R4. R4. R4. R4. R4. R4.
 d'16\p\staccato d\staccato_\markup { \italic "cresc." } cis'\staccato cis\staccato a\staccato cis\staccato
 fis8\staccato b\staccato b16( a) gis8\staccato a\staccato b16( cis') fis8( g!16 fis e fis) g8( a16 bes g8)
 g16\f( fis) fis\staccato g\staccato a8~

 a8( g) g~ g8( fis) e( gis fis) a~ a8( g!) fis~ fis_\markup { \italic "dim." }( e) b~
 b8\p( cis') e'~ e'8 d'16 e' fis'8~ fis'8_\markup { \italic "cresc." }( e') d'
 e8 e16 fis g8~ g8( fis) r8 g8 g16 a b cis' d'8_\markup { \italic "p cresc." } a4 b4( cis'8)~ cis' fis' fis~
 fis4\fp r8 R4. R4. R4. R4. R4. R4. r8 r fis'8\ff~ fis'( e') dis'~ dis'4
 a'8~ a'_\markup { \italic "dim." }( fis' ees')

 d'16\staccato d\staccato b\staccato d\staccato g\staccato d\staccato ees8( a) a16( g)
 fis8\staccato_\markup { \italic "cresc." } g\staccato a_\accent~ a b\staccato c'_\accent~ c' b\staccato a\staccato
 g16 fis e a g fis b a g fis e d cis d e fis g a a8\f\staccato cis\staccato d\sf~ d e\staccato fis\sf~
 fis8 e\staccato d\staccato cis16 fis e d cis b e' d' cis' b a g fis cis d e fis\p g
 fis16 e d cis' b\f a e fis g a b\p cis' d' cis' b a g\f fis g a b cis' d'\p e'
 fis'16 e' dis' cis' b_\markup { \italic "cresc." } a b cis' d'! e' fis' g' a' fis g fis g a

 bes16[ d'] d8 cis\f~ cis d\staccato fis\staccato gis\staccato g4~ g8( fis4)
 d''16\staccato d'\staccato cis''\staccato cis'\staccato a'\staccato a\staccato
 fis'8\staccato[ d\staccato] b16( a) g8\staccato c'\staccato c'16( b) a8\staccato d'\staccato d'16( c')
 b8\staccato e'\staccato e'16( d') c'16\staccato b\staccato a\staccato g\staccato fis8\sf~ fis8 g4\sf~ g8
 <e g>4\ff~ <e g>4 <e g>8\sf~ <e g>4 d''16\staccato[ d'\staccato]
 a'16\staccato[ a\staccato fis'\staccato fis\staccato] bes8~ bes8( g dis)
 c8\staccato fis\staccato e16\staccato e'\staccato
 g16\staccato_\markup { \italic "dim." } g'\staccato bes\staccato bes'\staccato fis'8~
 fis'8_\markup { \italic "p cresc." } a8\staccato g16( fis) b16 a g fis e fis g4.
 cis8\p( d4^\fermata) \bar "|."
 }