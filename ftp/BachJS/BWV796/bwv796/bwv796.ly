#(set-global-staff-size 20)

\header {
  title = "Sinfonia 10"
  composer = "Johann Sebastian Bach"
  opus = "BWV 796"
  mutopiatitle = "Sinfonia 10"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 796"
  mutopiainstrument = "Harpsichord, Piano"
  style = "Baroque"
  source = "Unknown"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  maintainerEmail = "olivier.vermersch (at) wanadoo.fr"
  lastupdated = "07/March/2002"

 footer = "Mutopia-2008/06/15-205"
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


% force number of beams on left and right of the note
lbeamoff = \set stemLeftBeamCount = # 0
lbeamone = \set stemLeftBeamCount = # 1
lbeamtwo = \set stemLeftBeamCount = # 2
lbeamthree = \set stemLeftBeamCount = # 3
lbeamfour = \set stemLeftBeamCount = # 4
lbeamfive = \set stemLeftBeamCount = # 5

rbeamoff = \set stemRightBeamCount = # 0
rbeamone = \set stemRightBeamCount = # 1
rbeamtwo = \set stemRightBeamCount = # 2
rbeamthree = \set stemRightBeamCount = # 3
rbeamfour = \set stemRightBeamCount = # 4
rbeamfive = \set stemRightBeamCount = # 5



melone =  \relative c'' {
  % bars 1-3
  r8 g8. \lbeamone \rbeamtwo fis16 \lbeamtwo g a b c d b |
  %%% r8 g8. \set stemLeftBeamCount = # 1 \set stemRightBeamCount = #2 fis16 \set stemLeftBeamCount = #2 g a b c d b |
  e d c b a g fis e d c' b a |
  b4 ~ b16 a b cis d4 ~ |

  % bars 4-6
  d2 cis4 |
  d ~ d16 cis d e fis g a fis |
  b a g fis e d c b a g'fis e |

  % bars 7-9
  d4 ~ d16 d e fis g4 ~ |
  g8 e c a fis'4 ~ |
  fis8 d b g e'4 ~ |

  % bars 10-12
  e8 c a fis dis'4 |
  e r e ~ |
  e d!8 c d4 ~ |

  % bars 13-15
  d16 d c b a gis a b c d e c |
  f e d c b a gis fis! e d' c b |
  a gis a b c d e fis g! a b g |

  % bars 16-18
  c b a g fis e dis cis \stemDown b a' g fis |
  b a g fis e d! cis b a g' fis e |
  a g fis e d cis b a g fis' e d |

  % bars 19-21
  g fis e d \stemUp cis b ais gis fis e' d cis |
  \stemDown fis e d cis \stemUp b2 ~ |
  b2 ais4 |

  % bars 22-24
  b ~ b8 e d c |
  b f' e d c b |
  c4 ~ c8 d c b |

  % bars 25-27
  a e' d c b a |
  b4 r g' ~ |
  g ~ g16 b a g fis4 |

  % bars 28-30
  f ~ f16 a g f e4 ~ |
  e ~ e16 g fis e d4 ~ |
  d ~ d16 f e d c4 ~ |

  % bars 31-33
  c16 c b a g fis g a b c d b |
  e d c b a g fis e d c' b a |
  b2. \bar "|."
}

meltwo =  \relative c' {
  % bars 1-3
  R2. |
  R2. |
  r8 d8. \lbeamone \rbeamtwo cis16 \lbeamtwo d e fis g a fis |

  % bars 4-6
  b a g fis e d cis b a g' fis e |
  fis  a, b cis d e fis g a b c a |
  d8 b g e \once \override NoteColumn   #'force-hshift = #-0.5 c'4 ~ |

  % bars 7-9
  c16 c b a b4 ~ b16 a b g |
  c2 ( c16) e d c |
  b2 ( b16) d c b |

  % bars 10-12
  a2 ( a16) c! b a |
  g a g fis e dis e fis g a b g |
  c b a g fis e d c b a' gis fis |

  % bars 13-15
  e2. |
  d |
   c8[ b]  a[ c]  b[ e] ~ |

  % bars 16-18
  e c \sd \stemUp \tu a fis dis'4 ~ |
  dis8 b g e cis'4 ~ |
  cis8 a fis d b'4 ~ |

  % bars 19-21
  b8 g e cis ais'4 |
  b ~ b16 ais b \su \stemDown \td cis d e fis d |
  g fis e d cis \sd \stemUp b ais gis fis \su \stemDown e' d cis |

  % bars 22-24
  d fis gis ais b8 c! b a |
  gis2. |
  r16 e fis! gis a8 b a g |

  % bars 25-27
  fis2. |
  r16 d e fis g fis g a b c d b |
  e d c b a g fis e d c' b a |

  % bars 28-30
  d c b a g f e d c b' a g |
  c b a g fis e d c b a' g fis |
  b a g fis e d c b a g' fis! e |

  % bars 31-33
  d4 r g ~ |
  g2 \once \override NoteColumn   #'force-hshift = #-0.5 fis4 |
  g2. \bar "|."
}

melthree =  \relative c {
  % bars 1-3
  g4 b g |
  c d d, |
  g g' fis |

  % bars 4-6
  g a a, |
  d r r |
  R2. |

  % bars 7-9
  r8 g8. \lbeamone \rbeamtwo fis16 \lbeamtwo g a b c d b |
  e d c b a g fis e d c' b a |
  d c b a g fis e d c b' a g |

  % bars 10-12
  c b a g fis e dis cis b a' g fis |
  e8. dis16 e fis g a b8 e, |
  a fis b4. a8 |

  % bars 13-15
  gis a16 b  c8[ b]  a[ c] ~ |
  c b16 a gis8 b gis e |
   fis[ gis]  a[ dis,]  e[ g] |

  % bars 16-18
  \td \slurDown a2 ( a16) c! b a |
  g2 ( g16) b a g |
  fis2 ( fis16) a g fis |

  % bars 19-21
  e2 ( e16) \slurNeutral g! fis e |
  d4 g fis |
  e fis \stemDown fis, \stemNeutral |

  % bars 22-24
  b ~ b16 a! b c! d e f c |
  \stemUp d e d c b a gis fis! e d' c b \stemNeutral |
  a4 ~ a16 g! a b c d e b |

  % bars 25-27
  c d c b a g fis e d c' b a |
   g8[ b]  d[ fis]  g[ b] |
  \tu c a d4 ~ d16 e d c |

  % bars 28-30
  b8 g c4 ~ c16 d c b |
  a8 fis! b4 ~ b16 c b a |
  g8 e a4 ~ a16 b a g |

  % bars 31-33
  fis e d c b a g fis g a b g |
  c a b c  d8[ c]  d[ d,] |
  g2. \bar "|."
}


\score {
\context PianoStaff

<<
  \context Staff = "up"   <<
    \time 3/4 \key g \major \clef G
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>>

  \context Staff = "down" <<
    \time 3/4 \key g \major \clef F \melthree>>
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 70 4)
      }
    }


\layout {}
}
