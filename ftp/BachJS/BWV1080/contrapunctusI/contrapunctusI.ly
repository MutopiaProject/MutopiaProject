\version "2.18"

\paper {
  #(set-paper-size "letter")
}

\header{
  title="Die Kunst der Fuge"
  piece=\markup{\hspace #10 \bold \huge "Contrapunctus I"}
  opus="BWV 1080"
  composer="Johann Sebastian BACH (1685 - 1750)"

  mutopiatitle = "Die Kunst der Fuge, Contrapunctus I"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 1080"
  mutopiainstrument = "Harpsichord, Piano"
  date = "?-1750"
  source = "Breitkopf & Härtel, 1885"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Arnaud Gossart"
  maintainerEmail = "arnaud.gossart@tiscali.fr"
  maintainerWeb = "http://arnaud.gossart.chez-alice.fr/"
  lastupdated = "2006/Mar/04"

  footer = "Mutopia-2006/03/06-693"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Voices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano = \relative c''{

  %1-5

  R1*4 |
  a2 d |

  %6-10

  c a |
  gis a4 b |
  c2~ c8 d c bes! |
  a d, d'2 cis4 |
  d8 a c!4~ c8 a bes4~ |

  %11-15

  bes8 e, a2.~ |
  a8 c4 b8 c2~ |
  c8 d, c'4~ c8 a b4~ |
  b a8 gis a2 |
  b c4 d |

  %16-20

  g,8 bes! a4~ a8 bes a g~ |
  g e f d bes'2~ |
  bes8 g a4 d2~ |
  d8 b c4 f2~ |
  f8 d e4 a, d~ |

  %21-25

  d8 b c4 f, bes! |
  a2 d,4 g~ |
  g8 e f d' e,2~ |
  e8 d a'2 g4 |
  a2 r |

  %26-30

  R1*3 |
  a2 e' |
  c a |

  %31-35

  gis a4 b |
  c2~ c8 d c bes! |
  a4 r r a~ |
  a8 c bes a bes a g fis |
  g4. bes8 e,4. fis8 |

  %36-40

  g4. e8 cis4. a'8 |
  d,4. f8 e4. c'8 |
  f,4. a8 g4. e'8 |
  a,4. c8 b4. g'8 |
  cis,2 d4 e~ |

  %41-44

  e8 cis d4~ d4. e8 |
  f e g4~ g8 f e d |
  cis a d4~ d8 b c4~ |
  c bes! a r |


  %45-50

  R1*4 |
  e'2 a |
  f d |

  %51-55

  cis d4 e |
  f2~ f8 g f e |
  d4. e8 cis4 d8 f |
  bes,2~ bes8 bes a g |
  f2 bes |
  %56-60

  a2. e'4~ |
  e8 cis d e f d g4~ |
  g8 e a g f e d cis |
  d c! bes a g2~ |
  g8 e f d a'2~ |

  %61-65

  a8 fis g bes c2~ |
  c8 a bes d ees4 d |
  cis a'~ a8 d, g4~ |
  g8 cis, f4~ f8 d e4~ |
  e8 cis d4~ d8 b c4~ |

  %66-70

  c bes! a4. a8 |
  d f e g f e d4~ |
  d8 f4 e8 f d e4~ |
  e8 d c b c4. a'8 |
  g fis g bes cis,4 r |

  %71-75

  r2 d4 r |
  r2 d2~ |
  d2~ d8 b cis4 |
  d4. c!8 bes!4. a8 |
  d,2 r8 g a c~ |

  %76-80

  c8 bes c ees~ ees d fis a~ |
  a g16 a bes8 cis, d2~ |
  d2~ d\fermata |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alto = \relative c'{


  %1-5

  d2 a' |
  f d |
  cis d4 e |
  f2~ f8 g f e |
  d4 e f g |

  %6-10

  a a,8 b c a f'4~ |
  f8 b, e4~ e8 f e d |
  e4 fis g2~ |
  g4 f e2 |
  d4. e8 f4. d8 |

  %11-15

  g4. g8 f e d cis |
  d4 g2 c,!4 |
  f4. e8 f4. gis,8 |
  e'2. d8 c |
  d f e d c4 r |

  %16-22

  R1*7

  %23-25

  d2 a' |
  f d |
  cis d4 e |

  %26-30

  f2~ f8 g f e |
  d4 g~ g8 e f4 |
  e a~ a8 fis g4 |
  fis4. d'8 gis,2 |
  a4 r8 a, c4 a |
  %31-35

  d f e d |
  c a'2 d,4 |
  e a~ a8 g f e |
  d1~ |
  d8 d g4~ g8 g c,4~ |

  %36-40

  c8 a bes4 a2~ |
  a8 f g4 c2~ |
  c8 a b4 e2~ |
  e8 cis d4 g2~ |
  g8 a bes4 a2~ |

  %41-45

  a2~ a8 f g4 |
  a4. bes8 a4 g~ |
  g f8 d a'4. g8 |
  fis d g4~ g8 e f4~ |
  f8 d g4~ g8 e a4~ |
  %46-50

  a8 f bes4~ bes8 g a4~ |
  a8 f g2 f8 d |
  a'2 d~ |
  d8 cis b cis d a e'4~ |
  e8 a, d4 r8 f, bes4~ |

  %51-55

  bes8 e, a4~ a8 g f e |
  d a' d b g e c'4~ |
  c bes a2 |
  g4. f8 e2~ |
  e4 d8 cis d4 g~ |

  %56-60

  g4. f8 e4. e8 |
  a2. g8 bes |
  a2~ a8 g f e |
  d2. e4 |
  a, r r ees' |

  %61-65

  d2 r4 fis! |
  g8 fis g4 r bes~ |
  bes8 a f' d b4 e8 cis |
  a4 d8 a bes4. g8 |
  a4. f8 e4. g8 |

  %66-70

  fis d g4~ g8 e f4~
  f8 d' c4~ c4. c8
  bes a gis4 a4. e8
  a4 g!~ g4. c8
  a4 g~ g r

  %71-75

  r2 a4 r |
  r2 b |
  a~ a4. g8 |
  fis g a4~ a8 g c4~ |
  c8 fis, g bes ees,2 |

  %76-80

  d4 a bes c |
  d g,~ g8 bes' a g~ |
  g8 fis e g fis2\fermata |

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenor = \relative c'{

  %1-12

  R1*12

  %13-15

  a2 d |
  c a |
  gis a4 b |

  %16-20

  c2~ c8 d c bes! |
  a2~ a8 f g4 |
  c2~ c8 a b4 |
  e2~ e8 cis d4 |
  g2~ g8 e f4 |

  %21-25

  e4. a8 d,4. e8 |
  cis4 d8 a b4. cis8 |
  d4 a2.~ |
  a2 bes! |
  r8 e, a4~ a8 bes a g |

  %26-30

  a4 b c2~ |
  c8 a bes!4 a d~ |
  d8 b c4 b e4~ |
  e8 a, d4~ d8 d c b |
  c d e4~ e8 e d c |

  %31-34

  b2 c4 gis |
  a8 g! fis e fis4 g~ |
  g8 g f! e f e d cis |
  d4 r r2 |

  %35-40

  R1*5 |
  e2 a |

  %41-45

  f d |
  cis d4 e |
  f2~ f8 g f e |
  d2. a'8 f |
  bes4. g8 c4. a8 |

  %46-50

  d4 g, c f, |
  bes e, a2 |
  e4 a4~ a8 gis fis gis |
  a4. g!8 f! e d cis |
  d4 f8 d bes'4 g8 e |

  %51-55

  a4. f'8 b,4 cis |
  d b8 g c!4 a8 f |
  bes d g4~ g8 e f4~ |
  f8 f e d cis2 |
  d8 c! bes! a g a bes c |

  %56-60

  d a d4~ d8 b cis4~ |
  cis8 e a, cis d4 bes8 g |
  e2 f4 g |
  a2 b4 cis |
  d r r fis, |

  %61-65
  g8 a bes4 r c |
  d2 r8 g,4 f8 |
  e4 r r2 |
  r4 f8 d g4. cis,8 |
  f4. d8 a'2 |

  %66-70

  d,4 d'2 a8 f |
  bes2~ bes8 gis a4 |
  d2~ d8 b c4 |
  f2~ f8 d ees4 |
  d2 e!4 r |

  %71-75

  r2 f4 r |
  r2 f2~ |
  f4 e8 d e4 r |
  a,2 d |
  bes g |

  %76-80

  fis g4 a |
  bes2~ bes8 d c bes |
  a2~ a\fermata |

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bass = \relative c{

  %1-8

  R1*8 |

  %9-10

  d2 a' |
  f d |

  %11-15

  cis d4 e |
  f2~ f8 g f e |
  d2 r |
  r4 a8 b c a f'4~ |
  f8 b, e4~ e8 f e d |

  %16-20

  e g fis a g2 |
  d2. e8 d |
  e4 f8 e fis4 g8 fis |
  gis4 a8 gis a4 bes8 a |
  b4 c8 b cis4 d8 gis, |

  %21-25

  a2~ a8 f g4~ |
  g8 e f4~ f8 d e4 |
  d2~ d8 b cis4 |
  d4. c8 bes!2 |
  a4. g8 f g f e |

  %26-30

  d f e d a'4. f8 |
  bes4. g8 d'4. f8 |
  a4. a,8 e4 r |
  r2 e' |
  a f~ |

  %31-35

  f8 f e d c d c b |
  a2 d |
  cis a |
  fis g4 a |
  bes2~ bes8 c bes a |

  %36-40

  g2~ g8 e f4 |
  bes2~ bes8 g a4 |
  d2~ d8 b c4 |
  f2~ f8 d e4 |
  a,4. g'8 f e d cis |

  %41-45

  d4. f,8 bes2 |
  a1~ |
  a4. bes8 a g a4 |
  bes4. g8 d'2~ |
  d4 e2 f4~ |

  %46-49

  f4. d8 e4. cis8 |
  d4. b8 cis a d4~ |
  d8 c! b a b2 |
  a4 r r2 |


  %50-55

  R1*6 |

  %56-60

  d2 a' |
  f d |
  cis d4 e |
  f2~ f8 g f e |
  d2~ d8 ees d c |

  %61-65

  bes2~ bes8 c bes a |
  g2. g4 |
  a1~ |
  a~ |
  a2. a4 |

  %66-70

  bes4. g8 d'2~ |
  d8 bes c4 f2~ |
  f8 d e4 a2~ |
  a8 f g4 c2~ |
  c8 a bes2 r4 |

  %71-75

  r2 a4 r |
  r2 gis |
  a2. a,4 |
  d1~ |
  d~ |

  %76-80

  d~ |
  d~ |
  d2~ d\fermata |

}

% Score : voices and piano reduction %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {\time 2/2 \key d \minor}

\score{
  <<
  \context StaffGroup <<
	\new Staff <<\global \clef soprano \soprano>>
	\new Staff <<\global \clef alto \alto>>
	\new Staff <<\global \clef tenor \tenor>>
	\new Staff <<\global \clef bass \bass>>
    >>
  \context PianoStaff <<
    \context Staff = "upper" {\global \clef treble <<\soprano \\ \alto>> \bar "|."}
    \context Staff = "lower" {\global \clef bass <<\tenor \\ \bass>>}
    >>
  >>	
  \midi {\tempo 4=120}
  \layout{}
}

