#(set-global-staff-size 20)

\header {
  title = "Sinfonia 6" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 792"
  mutopiatitle = "Sinfonia 6"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 792"
  mutopiainstrument = "Harpsichord, Piano"
  style = "Baroque"
  source = "Unknown"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  maintainerEmail = "olivier.vermersch (at) wanadoo.fr"
  lastupdated = "01/February/2002"

 footer = "Mutopia-2008/06/15-173"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.11.46"

%
% a few macros for fine tuning
%

% force direction of tie
tu = \tieUp
td = \tieDown
tb = \tieNeutral


% explicit staff change 
su = { \change Staff = up}
sd = { \change Staff = down}


melone =  \relative c'' {
  % bars 1-4
  R4. R4. R4. |
  b8 cis dis e fis gis fis gis e |
  dis4. cis2.  |
  b a4. ~ | 

  % bars 5-8
  a gis2.  |
  cis dis4. |
  e2. dis4. ~ dis cis2. | 

  % bars 9-12
  bis4. cis2. ~  |
  cis8 dis e fis gis a gis a fis |
  e gis dis e gis bis, cis e4 ~ |
  e4. r e! ~ | 

  % bars 13-16
  e dis2. ~ |
  dis4. cis b ~ |
  b ais cis ~ |
  cis2. r4. | 

  % bars 17-20
  b'8 ais gis fis e dis e cis dis  |
  b4.\prall r r |
  R4. R4. R4. |
  fis8 gis a b cis d cis d b | 
  
  % bars 21-24
  a b cis d e fis e fis d |
  cis dis! e fis gis a gis a fis |
  e2. ~ e4. ~  |
  e8 e dis cis b a b a cis | 

  % bars 25-28
  dis4. ~ dis8 e fis gis fis a |
  b,2. ~ b4. |
  a2. gis4. ~ |
  gis fis2.~ \td | 

  % bars 29-32
  fis4. e dis ~  |
  dis2. ~ dis4. ~ |
  dis8 cis dis e fis gis fis gis e |
  \tu a2. ~ a4. ~ | 

  % bars 33-37
  a8 fis gis a b cis b cis a |
  dis4.\fermata r r |
  \stemDown e8 dis cis \stemUp b a gis a gis b |
  \stemDown cis4. r r |
  b'8 a gis fis e dis e dis fis ~ | 

  % bars 38-41
  fis16 e dis cis gis'8 ~ gis16 fis e dis a'8 ~ a16 gis fis e b'8 ~ |
  \stemUp b b, cis dis e fis e fis dis |
  e4. r fis,4 a8 |
  gis2.\fermata \bar "|."
}

meltwo =  \relative c' {
  % bars 1-4
  e8 fis gis a b cis b cis a |
  gis2. ais4. |
  b2. a!4. ~ |
  a gis2. |

  % bars 5-8
  fis e4. ~ |
  e8 fis gis a b cis b cis a |
  gis4. fis2. |
  e dis4. ~ |

  % bars 9-12
  dis8 e fis gis a b a b gis |
  fis4. bis,2. |
  cis4. r r8 r8 gis'8  |
  ais cis gis ais cis eis, fis ais4 ~ |

  % bars 13-16
  ais4. b fis |
  e2. dis4. |
  e2. ~ e4. ~ |
  e8 fis gis ais b cis b cis ais |

  % bars 17-20
  b2. ais4.  |
  b4. r r |
  b,8 cis dis e fis gis fis gis e |
  dis4. eis2. |

  % bars 21-24
  fis gis4. |
  a r r |
  cis8 b a gis fis e fis e gis  |
  a2. ~ a4. ~ |

  % bars 25-28
  a2. ~ a4. ~ |
  a8 gis fis e d cis d b cis |
  cis dis! e dis e cis b cis dis |
  cis dis \sd \stemUp \tu b a b cis b cis a |

  % bars 29-32
  gis2. fis4. ~ |
  fis8 dis e fis gis a gis a fis |
  e4. cis'2. ~ |
  cis8 a b cis \su \stemDown \td dis e dis e cis  |

  % bars 33-37
  b4. fis'2. ~  |
  fis4. r r |
  \sd \stemUp e,8 fis gis a b cis b cis a |
  g4. r r |
  r8 fis gis! a b cis b cis a |

  % bars 38-41
  gis4. a b  |
  cis8 \su \stemDown dis e fis gis a gis a fis |
  gis4. r cis,8 dis4 |
  e2. |
}

melthree =  \relative c' {
  % bars 1-4
  \stemDown e2. dis4. |
  e cis fis |
  b,8 cis dis e fis gis fis gis e |
  dis e fis e fis dis cis dis e |

  % bars 5-8
  dis e cis b cis dis cis dis b |
  a4. fis b |
  e,8 fis gis a b cis b cis a |
  gis a b a b gis fis gis a |

  % bars 9-12
  gis4. e fis |
  dis2. gis4. |
  \stemUp cis,4. \stemDown r e |
  fis r r8 r cis' |

  % bars 13-16
  dis fis cis dis fis ais, b dis fis, |
  gis b fis gis b dis, e gis b,  |
  \stemUp cis e b cis e gis, ais cis e,  |
  fis4. \stemDown e' r |

  % bars 17-20
  dis e fis  |
  \stemUp b,8 cis dis \stemDown e fis gis fis gis e  |
  dis e fis gis fis e a4. ~ |
  a gis cis |

  % bars 21-24
  fis, b2. |
  a8 gis fis e dis cis \stemUp bis cis dis |
  cis4. \stemDown r r |
  fis r r |

  % bars 25-28
  b8 a gis fis e dis e dis fis |
  gis2. ~ gis4. ~ |
  gis fis2. |
  e dis4. |

  % bars 29-32
  e8 dis cis b a gis a gis b |
  bis,4. r r |
  cis r r |
  fis r r |

  % bars 33-37
  \stemUp dis \stemDown r r |
  \stemUp a'\fermata \stemDown r r  |
  gis r r |
  ais8 cis dis e fis g! fis g e  |
  dis4. r r |

  % bars 38-42
  e fis gis |
  a r r |
  r8 b fis gis dis e \stemUp ais, b b,  |
  e2.\fermata |
}


\score {
\context PianoStaff

<<
  \context Staff = "up"   <<
    \time 9/8 \key e \major \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>>

  \context Staff = "down" <<
    \time 9/8 \key e \major \clef F \melthree>>
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 130 4)
      }
    }


\layout {}
}

