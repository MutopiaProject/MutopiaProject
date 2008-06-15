#(set-global-staff-size 20)

\header {
  title = "Sinfonia 12" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 798"
  mutopiatitle = "Sinfonia 12"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 798"
  mutopiainstrument = "Harpsichord, Piano"
  style = "Baroque"
  source = "Unknown"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  maintainerEmail = "olivier.vermersch (at) wanadoo.fr"
  lastupdated = "30/December/2001"

 footer = "Mutopia-2008/06/15-144"
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


%
% Warning: if you change papersize you may tune the last tie on bar 17/18.
% This is not very good but I didn't find a better way to handle properly
% the collisions.
%

melone =  \relative c'' {
  % bars 1-3
  a8 gis16 a b8 a16 gis a4 ~ a16 b gis a |
  b e, cis' e, d' e, e'8 cis16 b a b cis dis e fis |
  gis a b8 ~ b16  a gis fis e dis cis b e4 ~ |

  % bars 4-6
  e dis e8 d16 cis d e fis gis |
  a8. a16 gis8. gis16 fis8. fis16 e8. e16 |
  d8 cis b4 a8 cis fis4 ~ |

  % bars 7-9
  fis8 b, e4 ~ e8 dis16 e fis8 e16 dis |
  e4 ~ e16 fis dis! e fis b, gis' b, a' b, b'8 |
  gis16 a b a gis fis e d! cis2 ~ |

  % bars 10-12
  cis8 cis16 d e8 d16 cis b2 ~ |
  b8 b16 cis d8 cis16 b a2 ~ |
  a8 a16 b cis8 b16 a gis2 ~ |

  % bars 13-15
  gis8 gis16 a b8 a16 gis a8 ais16 bis cis8 bis16 ais |
  bis8 bis16 cis dis8 cis16 bis cis8 gis16 a! b8 a16 gis |
  a fis gis a b cis d e! d8. d16 cis8. cis16 | 

  % bars 16-18
  b8 a gis4 fis8 cis' fis4 ~ |
  fis8 b, gis'4 ~ gis8 cis, a'4 ~ |
  a8 dis, b' a gis gis16 a b8 a16 gis |

  % bars 19-21
  a4 gis fis a ~ |
  a8 gis16 a b a gis fis e d! cis b a cis e g |
  fis2 ~ fis8 d16 e fis8 e16 d |

  % bars 22-24
  e2 ~ e8 cis16 d e8 d16 cis |
  d2 ~ d8 b16 cis d8 cis16 b |
  cis a fis'8 ~ fis16 dis e8 ~ e16 cis d8 ~ d16 b cis8 |

  % bars 25-27
  gis8 a4 gis8 a8 gis16 a b8 a16 gis |
  a4 ~ a16 b gis a b e, cis' e, d' e, e'8 |
  cis16 b a b cis d e fis b, a gis a b cis d e |

  % bars 28-31
  a, gis fis gis a b cis d gis, b gis e \stemDown e'4 ~ \tu |
  e16 e cis a a'4 ~ a16 b, d fis gis4 ~ |
  gis16 a, cis e fis4 ~ fis16 e dis e \stemUp fis8 r |
  cis8. d16 b8. a16 a2\fermata \bar "|."
}

meltwo =  \relative c' {
  % bars 1-3
   R1 |
   R1 |
  e8 dis16 e fis8 e16 dis e4 ~ e16 fis dis e |

  % bars 4-6
  fis b, gis' b, a' b, b'8 gis16 a b a gis fis e d |
  cis cis' fis8 ~ fis16 dis e8 ~ e16 cis d8 ~ d16 b cis8  |
  gis a4 gis8 a4. a8 |

  % bars 7-9
  gis4. gis8 fis2 |
  r16 dis' cis b a gis fis e dis8 e4 dis8 |
  e4 r r8 gis16 a b8 a16 gis |

  % bars 10-12
  a2 ~ a8 fis16 gis a8 gis16 fis |
  gis2 ~ gis8 eis16 fis gis8 fis16 eis |
  fis2 ~ fis8 dis16 eis fis8 eis16 dis |

  % bars 13-15
  eis8 eis16 fis gis8 fis16 eis fis4 e |
  dis fis2 eis4 |
  fis16 r r8 r4 r16 cis' b8 ~ b16 b a8 |

  % bars 16-18
  eis fis4 eis8 fis4. a8 |
  \once \override Tie #'staff-position = #-1.0
  d4 ~ d8 b 
  \once \override Tie #'staff-position = #-0.0
  e4 ~ e8 cis 
  \once \override Tie #'staff-position = #-0.0
  fis2 ~ fis8 b,16 cis d8 cis16 b  

  % bars 19-21
  cis8 cis16 dis e8 dis16 cis dis8 dis16 e fis8 e16 dis |
  e2 r |
  r8 a,16 b cis8 b16 a gis!2 ~ |

  % bars 22-24
  gis8 gis16 a b8 a16 gis fis2 ~ |
  fis8 fis16 gis a!8 gis16 fis e2 ~ |
  e8 r16 a gis8. gis16 fis8. fis16 e8. e16 |

  % bars 25-27
  d8 cis b4 e16 cis d8 ~ d16 b cis8 ~ |
  cis16 \sd \stemUp \tu a b gis a4 ~ a16 gis a4 gis8 |
  a8 \su \stemDown \td cis fis4 ~ fis8 b, e4 ~ |

  % bars 28-31
  e8 \sd \stemUp \tu a, d4 ~ d8 b16 cis d8 cis16 b |
  cis8 a16 b cis8 b16 a b8 gis16 a b8 a16 gis |
  a8 fis16 gis a8 gis16 fis gis8 r \su \stemDown \td a' r |
  a8. b16 gis4 a2 |
}

melthree =  \relative c' {
  % bars 1-3
  a8 r gis r fis r cis r |
  d r e r a, a' gis fis |
  e r dis' r cis r gis r |

  % bars 4-6
  a r b r e r r4 |
  a,8 gis16 a b8 a16 gis a4 ~ a16 b gis a |
  b e, cis' e, d' e, e'8 cis16 b a b cis dis e fis |

  % bars 7-9
  b, a gis a b cis dis e a, gis fis gis a gis a b  |
  gis8 a16 b cis4 ~ cis16 b a gis fis8 b |
  e,4 r16 a gis fis eis cis fis cis gis' cis, eis cis |

  % bars 10-12
  fis cis gis' cis, fis cis e! cis dis b e b fis' b, dis b |
  e b fis' b, e b d! b cis a d a e'! a, cis a  |
  d a e' a, d a cis a b gis cis gis d'! gis, b gis  |

  % bars 13-15
  cis1 ~  |
  cis2 r16 d'! cis b cis a b cis |
  fis,8 eis16 fis gis8 fis16 eis! fis4 ~ fis16 gis eis fis |

  % bars 16-18
  gis cis, a' cis, b' cis, cis' b a b cis b a gis fis e! |
  b' cis d cis b a gis fis cis' d e d cis b a gis  |
  dis' e fis e dis cis b a e'2 ~ |
  
  % bars 19-21
  e1 ~ |
  e16 cis b a gis fis e d! cis a' d, a' e a cis, a'  |
  d, a' e a d, a' cis, a' b, gis' cis, gis' d gis b, gis' |

  % bars 22-24
  cis, gis' d gis cis, gis' b, gis' \stemUp ais, fis' b, fis' cis fis ais, fis' |
  b, fis' cis fis b, fis' a,! fis' gis, e' e, e' fis, e' gis, e' \stemNeutral|
  a,8 gis16 a b8 a16 gis a4 ~ a16 b gis a |

  % bars 25-27
  b e, cis' e, \stemUp d' e, e'8 cis \stemDown fis4 eis8 |
  fis4. e!8  d[ cis]  b[ e] |
  a,4 r8 a' gis4. gis8 |

  % bars 28-31
  \td fis4. fis8 e2 ~ |
  e1 ~ |
  e2 ~ e16 e gis b c gis a dis,  |
  e8 r \stemUp e, r a2\fermata |
}


\score {
\context PianoStaff

<<
  \override Score.TimeSignature   #'style = #'C
  \context Staff = "up"   <<
    \override Staff.NoteCollision   #'merge-differently-dotted = ##t
    \time 4/4 \key a \major \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>>

  \context Staff = "down" <<
    \time 4/4 \key a \major \clef F \melthree>>
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }


\layout {}
}

