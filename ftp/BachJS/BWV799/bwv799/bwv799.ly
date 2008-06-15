#(set-global-staff-size 20)

\header {
  title = "Sinfonia 13" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 799"
  mutopiatitle = "Sinfonia 13"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 799"
  mutopiainstrument = "Harpsichord, Piano"
  style = "Baroque"
  source = "Unknown"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  maintainerEmail = "olivier.vermersch (at) wanadoo.fr"
  lastupdated = "07/March/2002"

 footer = "Mutopia-2008/06/15-206"
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

% tuning the grace notes
grstem = \override Grace.Stem   #'stroke-style = #'()

% typeset on/off
typeskip = \set Score.skipTypesetting = ##t
typenoskip = \set Score.skipTypesetting = ##f


melone =  \relative c'' {
  % bars 1-6
  a4 b8 |
  c4 d8 |
  c8 b4\prall |
  a16 b c d e fis |
  g fis g a b c |
  b a g fis e dis |

  % bars 7-12
   e[ fis]  dis8.[ e16] |
  e4 g8 ~ |
  g16 bes a g f! e |
  f4. ~ |
  f16 f e d c b |
  c d c b a gis |

  % bars 13-18
  a4. ~ |
  a8. \lbeamone \rbeamtwo b16 \lbeamtwo c d |
  \stemDown e f e d c b \stemUp |
  c4. |
  b |
  a16 g a b c d |

  % bars 19-24
  e f g a b c |
  f, a g f e d |
  e8 c d |
  e4 f8 |
  e8 d4 |
  c16 g a b c d |

  % bars 25-30
  e4 f8 |
  g4 a8 |
  g8 f4 |
  e4. ~ |
  e8 d e |
  f4 g8 |

  % bars 31-36
  f8 e4 |
  d16 a b! cis d e |
  f4 g8 |
  a4 bes8 |
  a g4\prall |
  f16 a32 g f16 a e a |

  % bars 37-41
  f4. ~ |
  f16 g32 f e16 g d g |
  e4. ~ |
  e16 d32 c b16 d a d |
  b \rbeamtwo b \lbeamtwo \rbeamone d g8 fis16 |

  % bars 42-47
  g16 \rbeamtwo d \lbeamtwo \rbeamone b g8 fis16 |
  g d e d e fis |
  g d' c b c d |
  b8 c d |
  g, a b |
  c4 b8 ~ |

  % bars 48-53
  b16 a8 a gis16 |
  \stemDown a \rbeamtwo c \lbeamtwo \rbeamone e a8 gis16 |
  a \rbeamtwo e \lbeamtwo \rbeamone c a8 gis16 |
  a c e a gis b |
  e,8 a, b |
  \stemUp c4 d8 |
  
  % bars 54-58
  e4 f8 |
  e8 d4 |
  c8 e4 ~ |
  e8 d4 ~ |
  d16 e32 d c16 e b e |

  % bars 59-64
  a, d32 c b16 d a d |
  gis,8 a b |
  c4 d8 |
  c8 b4 ~ |
  b8 a' gis |
  a4. \bar "|."
}

meltwo =  \relative c' {
  % bars 1-6
  R4. |
  R4. |
  R4. |
  R4. |
  e4 fis8 |
  g4 a8 |

  % bars 7-12
  g fis4_\prall |
  e16 fis g a b cis |
  d4. ~ |
  d16 e d c b! a |
  gis4. |
  a16 f e d c b |
  
  % bars 13-18
  c b c d e f |
  e d c \sd \stemUp b a gis |
  a b gis4\prall |
  a8 \su \stemDown e' a ~ |
  a d, g ~ |
  g f16 g a b |

  % bars 19-24
  c8 e,16 f g a |
  b8 a b |
  c e, f |
  g4 a8 |
  g8 f4 |
  e8 r r |

  % bars 25-30 
  r c' d |
  e4 f8 |
  e8 d4 ~ |
  d16 d c bes a g |
  f8 a4 ~ |
  a8 a cis |

  % bars 31-36
  d4 cis8 |
  d8 r r |
  r d e |
  f4 g8 |
  f e4 ~ |
  e8 d cis |

  % bars 37-41
  d16 d32 c! b16 d a d |
  g,8 c b |
  c16 c32 b a16 c g c |
  fis,8 g fis |
  g4 r8 |

  % bars 42-47
  r g, a |
  b4 c8 |
  b a4 ~ |
  a16 g a g a b |
  c g' f e f g |
  e8 d4 |

  % bars 48-53
  c8 \sd \stemUp b b |
  e, a b |
  c4 d8 |
  c b4 ~ |
  b16 e, fis gis a gis |
  a \rbeamtwo c \su \stemDown \lbeamtwo \rbeamone e a8 gis16 |

  % bars 54-58
  a \rbeamtwo e \sd \stemUp \lbeamtwo \rbeamone c a8 gis16 |
  a c \su \stemDown e a gis a |
  a, c'32 b a16 c g! c |
  fis, b32 a gis16 b fis b |
  e,4. ~ |

  % bars 59-64 
  e8 d4 ~ |
  d16 e32 d c16 e b e |
  a,8 a' gis |
  a8 d,4 ~ |
  d16 e'32 d c16 e b e |
  cis4. \bar "|."
}

melthree =  \relative c {
  % bars 1-6
  a8 a' gis |
  a e f |
  \stemUp d e e, \stemDown |
  a a'16 b c a |
  e'8 e, dis' |
  e b c |

  % bars 7-12
  a b b, |
  e4 r8 |
  R4. |
  R4. |
  R4. |
  R4. |

  % bars 13-18
  \stemUp a,4 b8 \stemDown |
  c4 d8 |
  c8 b4 |
  a16 b c d e fis |
  g a b c d e |
  f4. |

  % bars 19-24
  e |
  d |
  c,16 \rbeamtwo e \lbeamtwo \rbeamone g c8 b16 |
  c \rbeamtwo g \lbeamtwo \rbeamone e c8 b16 |
  c e g c b c |
  c,8 c' b \clef G \stemUp |

  % bars 25-30
  a16 a' g f e d |
  c \rbeamtwo e \lbeamtwo \rbeamone g c8 b16 |
  c c, c' b a b |
  c8 c, cis |
  d16 g f e d cis \clef F \stemDown |
  d e d c! bes a |

  % bars 31-36
  g f g bes a g |
  f g f e d cis |
  d \rbeamtwo f \lbeamtwo \rbeamone a d8 cis16 |
  d \rbeamtwo a \lbeamtwo \rbeamone f d8 cis16 |
  d f a d cis d |
  d,8 f a |

  % bars 37-41
  d,16 f32 e d16 f c f |
  b,8 c g' |
  c16 e32 d c16 e b e |
  a,8 b d |
  \stemUp g, g, a |

  % bars 42-47
  b4 c8 |
  b8 a4 |
  \stemDown g8 g' fis |
  g4 f!8 |
  e4 d8 |
  c16 e fis e fis gis |

  % bars 48-53
  a e d c d e |
  c4 e8 |
  a g! f |
  e4 d8 |
  c4 b8 |
  a4 b8 |

  % bars 54-58
  c4 d8 |
  c8 b4 |
  \stemUp a8 c a |
  d b a |
  gis a g |

  % bars 59-64
  fis f f' |
  \stemDown e4. ~ |
  e16 e32 d c16 e b e |
  a, b'32 a gis16 b e, gis |
  c,8 d e |
  \stemUp a,4. \bar "|."
}


\score {
\context PianoStaff

<<
  \context Staff = "up"   <<
    \time 3/8 \key a \minor \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>>

  \context Staff = "down" <<
    \time 3/8 \key a \minor \clef F \melthree>>
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 55 4)
      }
    }


\layout {}
}
