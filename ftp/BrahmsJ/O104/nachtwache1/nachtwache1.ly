\version "2.16.1"
#(set-global-staff-size 13)

\header {
 mutopiatitle = "Nachtwache 1"
 mutopiacomposer = "BrahmsJ"
 mutopiainstrument = "Voice (SATB)"
 mutopiapoet = "F. Rückert (1788-1866)"
 mutopiaopus = "Op. 104"
 mutopiameter = " "
 mutopiasource = "Breitkopf & Haertel's Chor-Bibliothek"
 style = "Classical"
 copyright = "Creative Commons Attribution 3.0"
 maintainer = "Robert de Vries"
 maintainerEmail = "rhdv@xs4all.nl"

  title = "Fünf Gesänge"
  subtitle = "1 Nachtwache I"
  composer = "Johannes Brahms"
  poet = "Friedrich Rückert"
  opus = "op. 104"
  meter = "Langsam"

%  footer = "VVE 2003"
%  tagline = "VAK Vokaal Ensemble 2003"

 footer = "Mutopia-2012/12/23-284"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
}

\paper {
  % to match original layout block
  line-width = 15.0\cm
}

dol = \markup{ \bold\italic "dol." }

global = {
   \time 4/4
   \override Hairpin #'to-barline = ##f
}

sopraan = \relative c'' {
  \clef "violin"
  \dynamicUp
  \key b \minor
				%1
  d4.\pp b8 d4 cis8 b8 |
  ais4 r4 r4 r8 cis8 |
  fis4. \<  fis8\!  e[ \> d] cis  d\! |
  cis[ b] b4 r2 |
				%5
  r2 r4 cis8^\dol \staccato ( d)\staccato | 
  e4 d8\staccato (\< cis\!)\staccato e4 (\> dis\!) | 
  r2 b8\staccato ( \deprecatedcresc  cis)\staccato \deprecatedendcresc d!4 |
  cis8 b d4 ( cis) r |
				%9
  r2 b4 \< cis8  gis\! |
  a4\f gis8 a fis4 r |
  R1 |
  e'4.\p cis8 e4 d8 cis |
				%13
  b4 r r r8 d |
  g4. \<  g8\!  fis[ \> e]  d\! e |
  d[ cis] cis4 r cis8^\dol\staccato ( dis)\staccato |
  e\staccato ( dis\staccato  cis4)\staccato e2 \> |
  dis4\! r d2 \> |
  \barNumberCheck #18
  cis4\! r r2 |
  r4 bis\< cis8[\! a\>] a  gis\! |
  fis2 r4 b8\staccato\pp ( cis)\staccato |
  dis8\staccato ( cis\staccato  b4)\staccato r2 |
  r2 b2 \> |
  ais4\! r a2 \> |
				%24
  gis4 r r b |
  d! \< cis8 b b4  eis\! |
  fis8[\f d] d2 cis4 |
  b2\fp \>  b\!^ \markup{{\bold italic} "dim."} |
  b fis\pp |
  dis1\fermata |
  \bar "|."
}

altoone = \relative c' {
  \clef "violin"
  \dynamicUp
  \key b \minor
				%1
  fis4\pp g fis g8 fis |
  fis4 r r r8 g8 |
  fis[ \< b d]  cis\!  b[ \> a] g  fis\! |
  g4 g r2 |
				%5
  r2 r4 ais8^\dol\staccato ( b)\staccato | 
  cis4 b8\staccato ( \<  ais\!)\staccato cis4 ( \>  bis\!) | 
  r2 r4 \deprecatedcresc gis8\staccato ( \deprecatedendcresc  a!)\staccato |
  b4 a8 gis b4 ( ais) |
				%9
  r2 d,4 \< gis8  eis\! |
  eis[\f fis] fis \> eis  fis[  e\!] d4 r2 r4 e\p ~ |
  e8 fis g4. a8 ais4 |
				%13
  b4 r r r8 b |
  g4 \<  d'\! b \>  a8\! g |
  fis4 fis r ais8^\dol\staccato ( b)\staccato |
  cis\staccato ( b\staccato  ais4)\staccato a2 \> |
  b4\! r b2 \> |
				%18
  a4\! r r fis \< |
  fis2.\! \>  cis8\! cis |
  cis2 r4 fis8\staccato\pp ( fis8)\staccato |
  fis\staccato ( fis\staccato  fis4)\staccato r2 |
  r2 gis2 \> |
  fis4\! r fis2 \> |
				%24
  e4\! r r gis |
  gis eis8 \< b' b4  b8[  d\!] |
  b4\f ( gis)  g8[ fis] fis4 |
  a\fp (\>  gis\!) r g^ \markup{{\bold italic} "dim."} |
  g ( fis) dis2\pp |
  dis1\fermata |
}

altotwo = \relative c' {
  \clef "violin"
  \dynamicUp
  \key b \minor
				%1
  b4\pp e b e8 d |
  cis4 r r r8 cis |
  d[ \< fis b]  a\!  g[ \> fis] e  d\! |
  d4 g r2 |
				%5
  r2 e8^\dol\staccato ( fis)\staccato g4 | 
  fis8\staccato (\< e\!)\staccato g4 (\> fis\!) r | 
  r2 r4 \deprecatedcresc eis8\staccato ( \deprecatedendcresc  fis)\staccato |
  gis4 fis8 eis g4 ( fis) |
				%9
  r2 d4 \< cis8  cis8\! |
  cis[\f d] b \> cis  d[  cis\!] b4 |
  r2 r4 cis\p ~ |
  cis8 d e4. fis8 g4 |
				%13
  fis4 r r r8 b, |
  d4 \<  b\!  d8[ \> g]  fis\! e |
  fis4 fis r fis8^\dol\staccato ( fis)\staccato |
  fis\staccato ( fis\staccato  fis4)\staccato c'2 \> |
  b4\! r e,2 \> |
				%18
  a4\! r r a \< |
  c\! b8 \> a  a4\! r |
  r2 r4 dis,8\staccato\pp ( e)\staccato |
  fis\staccato ( e\staccato  dis4)\staccato r2 |
  d!2 (\<  cis\!) \> |
  cis4\! r b2 \> |
				%24
  b4\! r r d |
  d d8 \< d8  d[ fis]  gis4\! |
  fis\f ( b,) e  cis8[ fis] |
  fis4\fp ( \>  e\!) r ais,^ \markup{{\bold italic} "dim."} |
  ais ( b) b2\pp |
  b1\fermata |
}

tenor = \relative c' {
  \clef "violin_8"
  \dynamicUp
  \key b \minor
				%1
  R1 |
  e4.\pp cis8 e4 d8 cis |
  b4 r4 r4 r8 d8 |
  g4. \<  g8\!  fis[ \> e]  d\! e |
				%5
  d[ cis] cis4 r2 |
  r2 r4 dis8^\dol\staccato ( e)\staccato |
  fis4 e8\staccato ( dis)\staccato fis4 ( eis) |
  r2 e!4 \< fis8  cis\! |
				%9
  d4\f cis8 d b4 r |
  R1 |
  d4.\p b8 d4 cis8 b |
  ais4 r r r8 cis8 |
				%13
  fis4. fis8 \<  e[ d] cis  d\! |
  cis[ \> b]  b4\! r r8 b\p |
  b[ ais] ais4 r e'8^\dol\staccato ( dis)\staccato |
  cis\staccato ( dis\staccato  e4)\staccato fis2 \< ~ |
  fis\! \>  e4\! r |
				%18
  e2 \>  a,4\! d! \< |
  d\! ( fis) ~  fis8[ \> cis] cis  b\! |
  b4 ( ais) r2 |
  r4 dis8\staccato\pp ( e)\staccato fis\staccato ( e\staccato  dis4)\staccato |
  fis2 \>  eis4\! r |
  e!2 \>  dis4\! r |
				%24
  r b d! cis8 b |
  b4 \<  eis\!  fis8[\f d] d b |
  d[ b] b gis b4 ais8 ais |
  b2\fp \>  b4\! ( cis)^ \markup{{\bold italic} "dim."} |
  cis ( dis) r fis,\pp |
  b1\fermata |
}

basone = \relative c {
  \clef "bass"
  \dynamicUp
  \key b \minor
				%1
  R1 |
  ais'4\pp b ais b8 g |
  b4 r r r8 b8 |
  b4 \<  d8[  e\!] b4 \>  a8\! g |
				%5
  b[ ais] ais4 r2 |
  r2 r4 bis8^\dol\staccato ( cis)\staccato |
  dis4 cis8\staccato ( bis)\staccato d4 ( cis) |
  r2 r4 fis, \< |
				%9
  ais8\!\f b  b[ ais] b \> a  gis[  cis\!] |
  r2 r4 d\p ~ |
  d8 cis b4. a8 g4 |
  fis4 r r g |
				%13
  b8[ cis]  d[ \< cis]  b[ a] g  fis\! |
  d4 \>  g\! r r8 cis,\p |
  fis4 fis r cis'8^\dol\staccato ( b)\staccato |
  ais\staccato ( b\staccato  cis4)\staccato r2 |
  a!2 \>  gis4\! r |
				%18
  g!2 \>  fis4\! r |
  r a \< a8[\! fis \> ] fis  eis\! |
  fis2 r |
  r4 b8\staccato\pp ( cis)\staccato dis\staccato ( cis\staccato  b4)\staccato |
  b2 \>  cis4\! r |
  cis2 \>  b4\! r |
				%24
  r gis gis gis8 gis |
  gis4 \<  gis\! fis2\f ( ~ |
  fis4  eis) e e |
  dis\fp (\>  e\!) r e^ \markup{{\bold italic} "dim."} |
  e ( b') r dis,\pp |
  fis1\fermata |
}

bastwo = \relative c {
  \clef "bass"
  \dynamicUp
  \key b \minor
				%1
  R1 |
  fis4\pp g fis g8 e |
  d4 r r r8 b'8 |
  g4 \<  b,8[  cis\!]  d[ \> g]  fis\! e |
				%5
  fis4 fis r2 |
  r2 fis8^\dol\staccato ( gis)\staccato a4 |
  gis8\staccato ( fis)\staccato a4 ( gis) r |
  r2 r4 fis \< |
				%9
  fis8\!\f g!  e[ fis] g \> fis  eis[  cis\!] |
  r2 r4 b'4\p ~ |
  b8 a g4. fis8 e4 |
  fis4 r r e |
				%13
  d4  b'8[ \< a]  g[ fis] e  d\! |
  g,4 \>  g\! r r8 cis\p |
  fis,4 fis r fis'8^\dol\staccato ( fis)\staccato |
  fis\staccato ( fis\staccato  fis4)\staccato r2 |
  b,2 \>  e4\! r |
				%18
  a,2 \>  d4\! r |
  r d \<  cis\! \> cis8  cis8\! |
  fis,2 r |
  r4 fis'8\staccato\pp ( fis)\staccato fis\staccato ( fis\staccato  fis4)\staccato |
  gis2 \>  cis,4\! r |
  fis2 \>  b,4\! r |
				%24
  r e e eis8 eis |
  eis4 \<  gis,\! fis2\f |
  fis fis |
  b\fp \>  b\!^ \markup{{\bold italic} "dim."} |
  b r4 b\pp |
  b1\fermata |
}

soptext = \lyricmode {
  Lei4. -- se8 Tö4 -- ne8 der Brust,4 _2 _8 ge -- weckt4. vom8 O4 -- dem8 der Lie4 -- be, _2
  _2. hauchet4 zit -- ternd8 hin -- aus,2 __ _2 hauchet4 zit -- ternd8 hin -- aus,2 __ _4
  _2 ob4 sich8 euch öff4 -- net8 ein Ohr,4 _ _1 öffn'4. ein8 lie4 -- ben8 -- des8
  Herz,4 _2 _8 und8 wenn4. sich8 kei4 -- nes8 euch öff4 -- net, _ trag8 ein Nacht -- wind euch4 seuf2 -- zend,4 _ seuf2 --
  zend4 _1 in4 mei4 -- nes8 zu -- rück,2 _4 trag8 ein Nacht -- wind euch4 _1 seuf2 -- zend,4 _4 seuf2 --
  zend4 _2 in4 mei -- nes8 zu -- rück,4 in4 mei -- nes2 zu4 -- rück,2 zu -- rück,2  zu -- rück.1
}

altonetext = \lyricmode {
  Lei4 -- se Tö -- ne8 der Brust,4 _2 _8 ge -- weckt4. vom8 O4 -- dem8 der Lie4 -- be, _2
  _2. hauchet4 zit -- ternd8 hin -- aus,2 __ _2. hauchet4 zit -- ternd8 hin -- aus,2 __
  _2 ob4 sich8 euch öff4 -- net8 ein Ohr,2 __ _2. öffn'4. __ ein8 lie4. -- ben8 -- des4
  Herz,4 _2 _8 und8 wenn4 sich kei -- nes8 euch öff4 -- net, _ trag8 ein Nacht -- wind euch4 seuf2 -- zend,4 _ seuf2 --
  zend4 _2 in4 mei2. -- nes8 zu -- rück,2 _4 trag8 ein Nacht -- wind euch4 _1 seuf2 -- zend,4 _4 seuf2 --
  zend4 _2 in4 mei -- nes8 zu -- rück,4 in4 mei2 -- nes4 zu -- rück,2 _4 zu4 -- rück,2  zu -- rück.1
}

alttwotext = \lyricmode {
  Lei4 -- se Tö -- ne8 der Brust,4 _2 _8 ge -- weckt4. vom8 O4 -- dem8 der Lie4 -- be, _2
  _2 hauchet4 zit -- ternd8 hin -- aus,2 __ _1 hauchet4 zit -- ternd8 hin -- aus,2 __
  _2 ob4 sich8 euch öff4 -- net8 ein Ohr,2 __ _2. öffn'4. __ ein8 lie4. -- ben8 -- des4
  Herz,4 _2 _8 und8 wenn4 sich kei -- nes8 euch öff4 -- net, _ trag8 ein Nacht -- wind euch4 seuf2 -- zend,4 _ seuf2 --
  zend4 _2 in4 mei4 -- nes8 zu -- rück,4 _1 trag8 ein Nacht -- wind euch4 _2 seuf1 -- zend,4 _4 seuf2 --
  zend4 _2 in4 mei -- nes8 zu -- rück,4 in4 mei2 -- nes4 zu -- rück,2 _4 zu4 -- rück,2  zu -- rück.1
}

tentext = \lyricmode {
  _1 Lei4. -- se8 Tö4 -- ne8 der Brust,4 _2 _8 ge -- weckt4. vom8 O4 -- dem8 der 
  Lie4 -- be, _1 _4 hau8 -- chet zit4 -- ternd8 hin -- aus,2 __ _ ob4 sich8 euch
  öff4 -- net8 ein Ohr,4 _ _1 öffn'4. ein8 lie4 -- ben8 -- des Herz,4 _2 _8 und
  wenn4. sich8 kei4 -- nes8 euch öff4 -- net, _4.  euch8 öff4 -- net, _4 trag8 ein Nacht -- wind euch4 seuf1 -- zend,4 _4
  seuf2 -- zend4 in4 mei2. -- nes8 zu -- rück,2 _2. trag8 ein Nacht -- wind euch4 seuf2 -- zend,4 _4 seuf2 -- zend4 _4
  _4 in4 mei -- nes8 zu -- rück,4 in4 mei4 -- nes,8 in8 mei4 -- nes,8 in8 mei4 -- nes,8 zu -- rück,2 zu -- rück,  _4 zu -- rück.1
}

basonetext = \lyricmode {
  _1 Lei4 -- se Tö -- ne8 der Brust,4 _2 _8  ge -- weckt4 vom O -- dem8 der 
  Lie4 -- be, _1 _4 hau8 -- chet zit4 -- ternd8 hin -- aus,2 __ _2. ob4 
  sich8 euch öff4 -- net8 ein Ohr,4 __ _2. öffn'4. __ ein8 lie4. -- ben8 -- des4 Herz,4 _2 und4
  wenn4 sich kei -- nes8 euch öff4 -- net, _4.  euch8 öff4 -- net, _4 trag8 ein Nacht -- wind euch4 _2 seuf2 -- zend,4 _4
  seuf2 -- zend4 _2 in4 mei4 -- nes8 zu -- rück,2 _2. trag8 ein Nacht -- wind euch4 seuf2 -- zend,4 _4 seuf2 -- zend4 _4
  _4 in4 mei -- nes8 zu -- rück,4 in4 mei1 -- nes4 zu -- rück,2 _4 zu4 -- rück,2  _4 zu -- rück.1
}

bastwotext = \lyricmode {
  _1 Lei4 -- se Tö -- ne8 der Brust,4 _2 _8  ge -- weckt4 vom O -- dem8 der 
  Lie4 -- be, _1 hau8 -- chet zit4 -- ternd8 hin -- aus,2 __ _1 ob4
  sich8 euch öff4 -- net8 ein Ohr,4 __ _2. öffn'4. __ ein8 lie4. -- ben8 -- des4 Herz,4 _2 und4
  wenn4 sich kei -- nes8 euch öff4 -- net, _4.  euch8 öff4 -- net, _4 trag8 ein Nacht -- wind euch4 _2 seuf2 -- zend,4 _4
  seuf2 -- zend4 _2 in4 mei4 -- nes8 zu -- rück,2 _2. trag8 ein Nacht -- wind euch4 seuf2 -- zend,4 _4 seuf2 -- zend4 _4
  _4 in4 mei -- nes8 zu -- rück,4 in4 mei2 -- nes zu -- rück, zu -- rück,  _4 zu -- rück.1
}

\score {
  \context ChoirStaff = "coro" <<
    \override Score.BarNumber   #'padding = #2

    \context Staff = "soprano" <<
      \set Staff.autoBeaming = ##f
      \unset Staff.melismaBusyProperties 
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = #"Sopran"
      \set Staff.shortInstrumentName = #"S "
      \global
      \sopraan
      \context Lyrics = "soprano" \soptext
    >>

    \context Staff = alto_one <<
      \set Staff.autoBeaming = ##f
      \unset Staff.melismaBusyProperties 
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = #"Alt I"
      \set Staff.shortInstrumentName = #"A I "
      \global
      \altoone
      \context Lyrics = alto_one \altonetext
    >>

    \context Staff = alto_two <<
      \set Staff.autoBeaming = ##f
      \unset Staff.melismaBusyProperties 
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = #"Alt II"
      \set Staff.shortInstrumentName = #"A II "
      \global
      \altotwo
      \context Lyrics = alto_two \alttwotext
    >>

    \context Staff = "tenoren" <<
      \set Staff.autoBeaming = ##f
      \unset Staff.melismaBusyProperties 
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = #"Tenor"
      \set Staff.shortInstrumentName = #"T "
      \global
      \tenor
      \context Lyrics = "tenoren" \tentext
    >>

    \context Staff = "bassen1" <<
      \set Staff.autoBeaming = ##f
      \unset Staff.melismaBusyProperties 
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = #"Baß I"
      \set Staff.shortInstrumentName = #"B I "
      \global
      \basone
      \context Lyrics = "bassen1" \basonetext
    >>

    \context Staff = "bassen2" <<
      \set Staff.autoBeaming = ##f
      \unset Staff.melismaBusyProperties 
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = #"Baß II"
      \set Staff.shortInstrumentName = #"B II "
      \global
      \bastwo
      \context Lyrics = "bassen2" \bastwotext
    >>

  >>
  
  \midi {
    \tempo 4 = 60
  }
  \layout { }
}
