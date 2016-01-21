\version "2.19.35"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
#(set-global-staff-size 18)

\header{
  title = "Die Kunst der Fuge"
  piece = \markup { \hspace #10 \bold \huge "Contrapunctus XI" }
  opus = "BWV 1080"
  composer = "Johann Sebastian BACH (1685 - 1750)"

  mutopiatitle = "Die Kunst der Fuge, Contrapunctus XI"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 1080"
  mutopiainstrument = "String Ensemble"
  date = "?-1750"
  source = "Breitkopf & Härtel, 1885"
  style = "Baroque"
  license = "Public Domain"
  maintainer = "Arnaud Gossart"
  maintainerEmail = "arnaud.gossart@tiscali.fr"
  maintainerWeb = "http://arnaud.gossart.chez-alice.fr/"

 footer = "Mutopia-2016/01/21-745"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  ragged-last-bottom = ##f
}

% Voices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano = \relative {

  %\set Staff.midiInstrument = "harpsichord"

  R1*4					%1 to 4
  r4 a' e' d				%5
  r c b a
  r gis a b
  r c8 d c4 b
  a b c cis
  d cis8 b cis4 d				%10
  e g f e
  a d, b cis
  d2 c!4 b
  a e' d c~
  c b a gis				%15
  a e r b'
  cis d2 e4
  a, a'8 bes a4 g
  f cis d r
  R1					%20
  r4 e8 f e4 d
  cis e a g
  r f e d
  r cis d e
  r f8 g f4 e				%25
  d2. cis4
  d2 r
  r4 d, ees e
  f fis g gis
  a8 b c a f'4. e16 d			%30
  cis4 d g2~
  g4 f8 e f g f e
  d4 g8 fis g a g f
  e4 fis g gis
  a8 g! f e d cis d4~			%35
  d8 c! bes! a gis( a gis a)
  gis4 e'2 dis4
  d! cis c b~
  b8 a r8 a' b, a b cis
  d4 r8 d e d e fis			%40
  g g, g'4 fis f~
  f8 d e4 f g
  c, f e ees~
  ees8 d c b c bes a4~
  a8 b c4~ c8 b cis e~			%45
  e d4 cis8 d a4 gis8
  a2 r4 r8 a
  bes4 b c2~
  c8 d c bes a4 d~
  d8 e d c b4 e~				%50
  e8 a e d c4 cis
  d e f fis
  g a bes2~
  bes8 e, a4 gis g
  fis f e ees				%55
  d4. cis8 d4. e8
  \appoggiatura d8 cis4 f b, bes
  a d g,2
  f4 g a8 g a4
  d, g fis f~				%60
  f e f g
  c, r8 c' d c d e
  a,4 f' e ees~
  ees8 d r8 d ees d ees f
  g4 r8 g a gis a b			%65
  gis b e,4 dis d
  cis f! e dis
  e e dis d
  cis c b bes
  a2. gis4				%70
  a r r d
  d( c) r bes!
  bes a8 b c4 b8 c
  d4 c8 d e4 d~
  d c b cis				%75
  d a' d, e
  r f g a
  r bes a g
  r f8 e f4 g
  a4. g8 fis4 f				%80
  e ees d cis
  c b cis d
  e1~
  e8 d cis e d c bes d
  c bes a c bes g'4 fis8			%85
  g f! e d c d bes c
  a2~ a8 bes a bes
  c4 f2 e4
  f2 r
  R1*3					%--
  r2 r4 bes,~
  bes8 a c c c b d d
  d cis e e e d f f			%95
  f e fis gis a gis a4~
  a8 fis g! g g e f f
  e2 dis4 d~
  d8 b c e a,4 b~
  b8 gis a c b d cis e			%100
  d cis d2 \tuplet 3/2{g8 f e}
  f4 a,8 g a4 bes~
  bes8 g a a a f g g
  f e16 d d'4 b cis
  d c! b bes~				%105
  bes8 a d4~ d8 b cis e
  a4 a,8 d d b c c
  c a bes! bes c d ees4~
  ees d e f~
  f8 d ees ees ees c d d 			%110
  e4 fis g ees
  cis d b c
  a bes2 a4
  bes4 f c' cis
  d a e'2				%115
  f4 e d8 e d4
  a' g~ g8 e f f
  f dis e e e cis d d
  d b c! c c a b b
  b e a,4~ a8 c b a			%120
  gis4 b a c
  b d~ d8 c ees ees
  ees d f f f e g g
  g f c' c c bes f f
  f e e e e d bes' bes			%125
  cis,4 d b e
  a, d8 e f2~
  f8 e4 d8 c b8. a16 b8
  a2 r4 gis
  a4. a8 b d cis cis			%130
  cis e d d d f e e
  e g f f f d e e
  e cis d d d( cis) e( d)
  f( e) g4~ g8 f e d
  cis a d2 cis4				%135
  d8 a d d d b c c
  bes!4 a~ a8 g bes bes
  bes a c c c b d d
  d cis d e f e f g
  e4 f d e				%140
  cis d r2
  r4 a'~ a8 fis g g
  g e! f! f f dis e e
  dis4 e8 d cis4 d8 c
  b4 c2 b4				%145
  c g d' dis
  e b fis'2
  g4 fis e8 fis e4
  b'8 dis, e4~ e8 cis d d
  d b c c c a bes bes			%150
  a4 bes! gis a
  d e cis d~
  d8 f e e e g f f
  f a g g g bes a a
  g4 g,~ g8 bes a a			%155
  a fis g g g bes ees4~
  ees8 d g f e! d cis d
  cis4 a' d, e
  r f g a
  r bes a g				%160
  r f8 e f4 g
  a d,~ d8 bes c c
  c2~ c8 aes bes bes
  bes2 r4 d~
  d8 f e! e f2~				%165
  f8 d ees ees ees4. ees8
  d c bes a g4 f~
  f8 aes g g g bes a a
  a c b b b d cis cis
  cis e d d d f e e			%170
  a,2 r4 g'
  cis,8 e d d d f e e
  e g f e a d, g g
  g e f f f d e4
  d a r bes~				%175
  bes8 a c c c b g'4~
  g8 f g e f4 bes
  a8 cis, d d d b c c
  c a b d g, bes c ges
  f4 d' a' g				%180
  r f e d
  r cis d e
  << { r \voiceOne f8 g f4 e } \new Voice { \voiceTwo s4 d8 e d4 cis } >>
  d1\fermata

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alto = \relative {

  %\set Staff.midiInstrument = "harpsichord"

  r4 d' a' g				%1
  r f e d
  r cis d e
  r f8 g f4 e
  d c!8 b c4 d				%5
  e a, d8 e f4
  \appoggiatura f8 e4. d8 c b a gis
  a e' a4~ a8 d, g4~
  g f8 g f4 e
  f8 g a4 g8 a bes4~			%10
  bes a8 bes a4 g~
  g f d g~
  g f e8 a4 gis8
  a4 gis8 fis gis4 a
  d,8 e f4 e d~				%15
  d c f e8 d
  e4 f g2~
  g4 f8 e f4 bes
  a g a \clef soprano ees'4~
  ees d8 ees d4 c~			%20
  c bes8 c bes4 a
  g cis, r a'~
  a8 d4 c8 bes a4 bes8
  cis,4 bes' a g
  f d'2 cis8 c				%25
  b4 bes a2
  a \clef alto a,
  bes4 f c' cis
  d a e'2
  f4 e d8 e d4				%30
  a'4. a8 b a b cis
  d4 a d cis
  c! b bes a
  gis8 c b a b d c b
  a2 r4 r8 f				%35
  e4 g f fis
  e8 fis gis e a2
  gis4 g a e~
  e a gis g~
  g8 f bes2 a4				%40
  d c8 b c4 d
  g, c b bes~
  bes8 a d4~ d16[ c bes a] g8 fis
  g4 aes g4. g8
  f4 e8 dis e4 r				%45
  r g fis f
  e r8 e f4 fis
  g2~ g8 f e4
  f g2 fis4
  g a2 gis4				%50
  a b~ b8[ e,16 f] g a bes8
  a4 g f \clef soprano r8 d'
  e d e fis g f ees d
  cis4 d2 e4
  a, r8 bes~ bes a g fis			%55
  g4 gis a b
  a \clef alto r8 cis, d cis d e
  a,4 r8 a bes! a bes c
  d bes ees d c ees d c~
  c b c2 d4				%60
  g, r r2
  r4 a' gis g~
  g8 f r f g f g a
  bes f bes d c b c d
  b d g,4 fis f				%65
  e r8 gis a gis a b
  e,4. d8 cis4 c
  b8 b' a gis a c b a
  gis4 g fis f
  e f e2					%70
  e4 r r f
  f e r g
  g f e gis~
  gis a r a
  gis a2 g4				%75
  f8 e d2 g4
  f8 a bes d cis4 c
  b8 cis d4 c! bes
  a r r2
  r4 b c8 d16 ees d4~			%80
  d8[ c16 bes] a8 g fis4 g
  fis8 a4 g bes a8
  bes a4 bes8 a g f e
  f4 a d, e
  r f g a				%85
  r bes a g
  r f8 e f4 g
  a8 bes c2 bes4~
  bes a r2
  r r4 bes,~				%90
  bes8 a c c c b d d
  d cis d e f e f g
  e g f e
  d4 e f c g' gis
  a e b'2				%95
  c4 b a8 b a4
  e'2 r4 d~
  d8 b c c c a b b
  b gis a c fis,4 f
  e2 fis4 bes!				%100
  a d, a' g
  r f e d
  r cis d e
  r f8 g f4 e
  d a'~ a8 fis g g			%105
  g e f! f f d e e
  e cis d4 r c
  f e ees r8 c'~
  c a bes bes bes g aes aes
  g4. a!8 fis4. g8			%110
  c,4 c'~c8 a bes bes
  a2 g
  f~ f8 g f ees~
  ees d f f f ees g g
  g fis a a a g b b			%115
  a4 b8 cis d4 r
  r2 r4 d~
  d8 b c c c a b b
  b gis a a a fis gis gis
  gis[ a16 g] fis8 e fis2~		%120
  fis8 e gis gis gis fis a a
  a gis b b b a c c
  \clef soprano c b d d d cis e e
  e d ees ees ees d d d
  d c g g f4 d'8 d			%125
  bes g a4 gis a8 g
  fis4 gis~ gis8 b a c
  b4 a2 gis4
  \clef alto a g fis f
  e4. e8 f a e e				%130
  e g f f f a g g
  g bes a d d b cis cis
  cis e, f f bes2~
  bes4. bes8 a4 g~
  g f8 d g2~				%135
  g4 f8 g f4 ees~
  ees8 d f f f e g g
  g fis a a a gis b b
  b a b cis d cis d e
  cis4 c b bes				%140
  a bes b c
  cis d ees2~
  ees8 cis d d d b c c
  b4. bes8 a4. aes8
  g4. f8 ees d f f			%145
  f e! g g g fis a a
  a gis b b b a c c
  c b a b g4 c
  b r r2
  r4 a~ a8 fis g g			%150
  fis4 f e r
  r2 r4 a~
  a8 f g g g e f f
  f d e e e cis d4~
  d8 b c e e g fis fis			%155
  fis d e4~ e8 g fis fis
  fis a g g g a bes4~
  bes e, a g
  r f e d
  r cis d e				%160
  r f8 g f4 ees
  d fis g2~
  g4 f!8 e f2~
  f8 d ees bes' bes g a a
  g4 c~ c8 b d d				%165
  c4 r r8 g fis4~
  fis g r8 ees d c
  d4. f8 e! e e g
  fis fis fis a g2~
  g8 bes a a a d bes bes			%170
  e,4 d bes'2~
  bes4 a bes2
  a r4 g
  a4. bes8 a f g g
  f4 d a' g				%175
  r f e d
  r cis d e
  r f8 g f4 e
  d2 cis4 c
  d8 bes'4 a8~ a c e bes			%180
  a d cis c b bes a gis
  a bes! g a f4 bes
  cis, a'8 bes a4 g
  fis1\fermata
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenor = \relative c' {

  %\set Staff.midiInstrument = "harpsichord"

  R1*12					%1 to 12
  r4 a e' d
  r c b a
  r gis a b				%15
  r c8 d c4 b
  a2 b4 cis
  d2 r4 d8 cis
  d4 e f fis
  g4. fis8 g4 a				%20
  d, g8 a g4 f
  e2 d4 e,
  f d' g f
  e8 f4 e8 a, d4 cis8
  d4 a' bes e,				%25
  f2 e8 f g4~
  g f r2
  R1*6					%--
  r2 e,
  f4 c g' gis				%35
  a e b'2
  c4 b a8 b a4
  e' e dis d
  cis f2 e4
  d r r2					%40
  r4 r8 g, a g a b
  c4 r r2
  R1
  r4 d, ees e
  f fis g gis				%45
  a r8 a bes!4 b
  c cis d8 ees d c
  d2 g,4 c8 bes
  a f c'4~ c8 e d c
  b g d'4~ d8 f e d			%50
  c4 b a16 b c d e4
  f cis d8 r r4
  R1
  r4 r8 a b a b cis
  d a d4 r2				%55
  r8 cis, d e f e f4
  e a gis g
  fis f e ees
  d r r2
  r4 r8 g a g a b				%60
  c c, c'4 b bes~
  bes a b8 a b cis
  d a d2 c!4
  bes g' fis f~
  f e dis d~				%65
  d cis c b~
  b a r r8 fis'
  e d c b c4 d
  e8 dis e c d cis d gis,
  a b c4 b2				%70
  c4 e a, b
  r c d e
  r f e d
  r c8 b c4 d
  e2 r4 bes!				%75
  a d8 c b4 bes
  a d, e8 d e fis
  g4 fis8 e fis a cis e~
  e d4 cis8 d f4 e8
  f8 e d4 r gis				%80
  a c,~ c8 bes a g
  d'2 e4 f
  g f r a,8 bes
  a4. g8 f d g4~
  g f~ f8 d ees4				%85
  d g8 f e! d e c
  f4 r r2
  r4 a' g8 f g4
  f2 r4 ees,~
  ees8 d f f f e g g			%90
  g fis a a a gis b b
  b a b cis d gis, a b
  c!4. c8 bes! a bes c
  d4 a e'2~
  e4 d8 cis f4 r				%95
  r d cis c~
  c b c g'
  g2 r4 f~
  f8 dis e e e cis d d
  d b c!4 d e				%100
  a,4. a8 b4 cis
  d r r g
  e g, f cis
  d a' d a'~
  a r d,2				%105
  cis4 f b, bes
  a d g,2
  f4 g a8 g a4
  d, f c'4. d16 c
  b4 c~ c8 a bes! bes			%110
  bes g a a g4 g'
  e d2 c4~
  c bes8 c d4 c
  bes4. a8 g bes a g
  a4 d8 c b cis d4~			%115
  d8 cis g'4~ g8 e f f
  f dis e e e a, d c
  b4 bes a r8 a
  gis4 g fis f
  e2. dis4				%120
  e4 e'2 dis4
  e gis, a r
  r2 r4 e'
  f fis g gis
  a2~ a8 f g g				%125
  g e f f f d e e
  e c d d d2~
  d4 c f b,
  c8 d e e e cis d d
  d b c! c d f bes, bes			%130
  bes g a a a f g g
  g e f4 r bes
  a2 g~
  g4 e f g
  a4. bes8 bes( a) a( g)			%135
  a2 r4 a
  bes f c' cis
  d a e'2
  f4 e d8 e d4
  a'8 e a a a fis g g			%140
  g e f! f f aes g g
  g bes a!4 c,2
  bes4 r r g'
  fis e2 d4~
  d r r2					%145
  r4 e, b' a
  r g fis e
  r dis e fis
  r g8 a g4 fis
  e2 r4 e'~				%150
  e8 cis d d d b c c
  b4 bes a4. c8
  bes a bes4 r a8 b
  cis b cis4 r c
  b8 d c c c2~				%155
  c8 a bes bes bes g a a
  a fis g g g e f f
  e a cis4 \clef alto r bes'~
  bes8 a d4~ d8 c bes a
  bes4 r \clef tenor r8 a, cis a		%160
  d4. cis8 d4. c8~
  c8 a bes bes bes2~
  bes8 g aes aes aes2~
  aes8 f g4 d' c
  r bes a g				%165
  r fis g a
  r bes8 c bes4 a
  g r r2
  r4 d'~ d8 f e e
  e g f f f a g g				%170
  cis,4 d g,2~
  g4 f r d'
  cis2 r4 d
  cis d r cis,
  d8 e f f f e g g			%175
  g f a a a g bes bes
  bes a bes g a4. g8
  f e d4 a'2~
  a4 g2 a4
  bes f c' cis				%180
  d a e'2
  f4 e d8 e d4
  a' d, a2~
  a1\fermata
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bass = \relative {
  R1*8					%1 to 8
  r4 d a' g
  r f e d				%10
  r cis d e
  r f8 g f4 e
  d2 r4 e
  f e8 d e4 f
  b, c8 d c4 b				%15
  a a' d, g~
  g f8 g f4 e
  d r r2
  r4 d8 e d4 c
  bes bes' e, fis				%20
  g2. a4
  bes a8 g f e d cis
  d4 r r d
  a' g f bes
  a8 g f4 g a~				%25
  a8 gis a gis a4 a,
  d2 r
  R1*2					%--
  r4 a'2 gis4				%30
  g! fis f e
  d2 r
  R1*2					%--
  r4 a bes b				%35
  c cis d dis
  e2 f
  e4 r8 e fis e fis gis
  a4 r r2
  r4 d, cis c				%40
  b e2 d4
  c4 r8 c d c d e
  f e f g a4 a,
  bes f c' cis
  d a e'2				%45
  f4 e d8 e d4
  a'2 r4 r8 a
  g a g f e d c4
  d e f r8 d
  e4 fis g r8 e				%50
  fis4 gis a r8 g
  f g f e d a d c
  bes c bes a g d' g4~
  g fis f e
  r d cis c				%55
  b bes a gis
  a r r r8 cis
  d4 r r r8 a
  bes a g2 fis4
  f! e ees d				%60
  c r8 c' d c d e
  f c f2 e4
  d r r2
  r4 bes' a aes
  g r r2					%65
  r4 r8 e fis e fis gis
  a e a4~ a8 gis a4
  gis c fis, f
  e a d,2
  c4 d e8 d e4				%70
  a, r r gis'
  a2 r4 cis,
  d2 r4 e
  f2 r4 b,
  c8 b c d e e, e'4			%75
  f fis g cis,
  d r r2
  r4 d ees e
  f bes a g
  d' d, a b				%80
  r c d e
  r f e d
  r cis8 a b4 cis
  d a bes g
  a d g,2~				%85
  g a~
  a4 b8 cis d4 bes
  f' a,8 bes c4 c,
  f2 a
  bes4 f c' cis				%90
  d a e'2
  f4 e d8 e d4
  a'8 e a2 g4
  f4. g16 f e8 d e4
  a, a'2 gis4				%95
  a2 r4 dis,
  e2 a4 b
  c e, fis gis
  a1~
  a4 a~ a8 fis g g			%100
  g e f! f f d e e
  e cis d e f e f g
  cis,4 r r bes~
  bes8 gis a a a f g g
  g e fis fis g4 e			%105
  a a' gis g
  fis f e ees
  d des c f
  bes,2 r
  R1					%110
  r2 r4 g~
  g8 e f f f d ees ees
  ees c d ees f ees f4
  bes d ees2
  d4 fis g gis				%115
  a r8 a bes4 b
  c cis d d,
  g c, f b,
  e r8 e dis4 d
  cis c b8 a b4				%120
  e, r r2
  r4 e' f fis
  g gis a r
  r a bes b
  c cis d2~				%125
  d4 d8 d d b c c
  c a b b b gis a a
  gis4 a d, e
  a,1~
  a4 a'8 a a f g g			%130
  g e f f f d e e
  e cis d4 a' g
  r f e d
  r cis d e
  r f8 g f4 e				%135
  d8 cis d e f4 fis
  g d a'2~
  a1~
  a~
  a4 r r2				%140
  r4 d,~ d8 f e e
  e g fis fis fis a g g
  g bes a a a2~
  a8 fis g g g e f f
  f d ees f g4 g,				%145
  c2 r4 f
  e2 dis4 a'
  g c,2 b8 a
  g4 c a b
  gis a e				%150
  r r2 r4 a'~
  a8 fis g g g e fis4
  g cis, r d
  a' bes! r fis
  f! e r ees				%155
  d cis r c
  b bes2 a8 gis
  a4 r8 g' f e d cis
  d4 r8 d e4 fis
  g8 f! e g f2~				%160
  f8 f bes4~ bes8 a g4
  fis r8 d ees4 e
  f r8 c des4 d
  ees bes' e, fis
  r g a b				%165
  r c bes! a
  r g8 fis g4 a
  b b, c cis
  d2 r4 bes'~
  bes8 g a a a f g g			%170
  g e f f f d e e
  e cis d4 g, g'~
  g a8 g f4 bes
  a4. g8 a4 a,
  bes f c' cis				%175
  d a e'2
  f4 e d8 e d4
  a' bes a4. g8
  fis4 f e ees~
  ees8 d f f f e g g			%180
  g f a a a g bes bes
  a2~ a4. gis8
  a2. a,4
  d1\fermata
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Score %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = { \time 2/2 \key d \minor }

\score {
  \new StaffGroup <<
    \new Staff << \global \clef soprano \soprano >>
    \new Staff << \global \clef alto \alto >>
    \new Staff << \global \clef tenor \tenor >>
    \new Staff << \global \clef bass \bass >>
  >>

  \midi {
    \tempo 4 = 90
  }

  \layout {
    indent = 8
  }
}
