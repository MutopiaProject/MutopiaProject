#(set-global-staff-size 20)

\header {
  title = "Sinfonia 5" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 791"
  mutopiatitle = "Sinfonia 5"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 791"
  mutopiainstrument = "Harpsichord, Piano"
  style = "Baroque"
  source = "Unknown"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  maintainerEmail = "olivier.vermersch (at) wanadoo.fr"
  lastupdated = "07/March/2002"

 footer = "Mutopia-2008/06/15-204"
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
  % bars 1-4
  r4 r8 r16 bes ees8. f16 |
  d4 ~ d8. c16 des8. ees16  |
  c4 ~ c8. c16 f8. g16 |
  ees 4 ~ ees8. d16 ees8. f16 |

  % bars 5-9
  d4 ~ d8. d16 g8. g16 |
  c,4 ~ c8. c16 f8. f16  |
  bes,4 ees2 ~ |
  ees4 d2 |
  ees4 ~ ees8. r16 r4 |

  % bars 10-13
  r r8 r16 aes d,8. d16 |
  d4 ~ d8. ees16 f4 ~ |
  f8. ees16 ees4 d8.\lineprall c16 |
  c4 r r |

  % bars 14-17
  r r8 r16 c16 f8. g16 |
  d4 ~ d8. ees16 f8. g16 |
  ees8. d16 d4 ( c8.) bes16 |
  bes4 r8 r16 bes'16 aes!8. bes16 |

  % bars 18-21
  g4 ~ g8. aes16 bes4 ~ |
  bes8. g16 e8. f16 g4 ~ |
  g8. f16 des8. c16 f8. g16 |
  e4 ~ e8. e16 aes8. aes16 |

  % bars 22-25
  aes4 ( g8.) f16 bes8. bes16 |
  bes4 ( e,8.) e16 f8. e16 |
  f8. g16 f4 ( e8.) f16 |
  f4 r r |

  % bars 26-29
  r r8 r16 f bes8. aes16 |
  g4 ~ g8. aes16 des,4 ( |
   d8.) c16 c4 ( bes8.) aes16 |
  aes4 ~ aes8. ees16 aes8. bes16 |

  % bars 30-33
  g4 ~ g8. f16 g8. aes16  |
  bes4 ~ bes8. f16 bes8. c16  |
  aes4 ~ aes8. g16 aes8. bes16 |
  g4 ~ g8. g16 c8. c16 |
  
  % bars 34-38 
  c4 bes2 ~ |
  bes4 aes2 ~ |
  aes4 ~ aes8. g16 c8. c16 |
  f,4 ~ f8. f16 bes8. c16 |
  g2.\fermata \bar "|."
}

meltwo =  \relative c' {
  % bars 1-4
  R2. |
  r4 r8 r16 f16 bes8. c16 |
  aes4 ~ aes8. g16 aes8. bes16 |
  g4 ~ g8. g16 c8. d16 |
  
  % bars 5-9
  bes2. ~  |
  bes4 aes2 ~ |
  aes4 ~ aes8. g16 c8. c16 |
  f,4 ~ f8. f16 bes8. c16 |
  g4 ~ g8. g'16 c,8. c16 |

  % bars 10-13
  c2. ~ |
  c4 b8. c16 d4 ~ |
  d8. c16 c4 b  |
  c4 r8 r16 g16 c8. d16 |

  % bars 14-17
  a4 ~ a8. bes16 c4 ~ |
  c bes8. c16 d8. ees16  |
  c8. bes16 bes4 a |
  bes4 r r |

  % bars 18-21
  r r8 r16 ees des8. ees16 |
  c4 ~ c8. des16 bes8. c16 |
  aes4 ~ aes8. g16 aes8. bes16 |
  c4 ~ c8. c16 f8. ees16 |

  % bars 22-25
  des2. ~  |
  des4 c8. bes16 aes8. g16 |
  aes8. bes16 aes4 g8. aes16 |
  aes4 ~ aes8. c16 f8. ees16 |

  % bars 26-29
  des2. ~ |
  des4 ~ des8. c16 bes4 ~ |
  bes8. aes16 aes4 ( g) |
  aes r r |

  % bars 30-33
  r r8 r16 bes,16 ees8. f16 |
  d4 ~ d8. c16 des8. ees16 |
  c4 ~ c8. c16 f8. g16 |
  ees4 ~ ees8. d16 ees8. f16 |

  % bars 34-38
  d4 ~ d8. d16 g8. g16 |
  c,4 ~ c8. c16 f8. f16 |
  bes,4 ees2 ~ |
  ees4 d2  |
  ees2. \bar "|."
}

melthree =  \relative c {
  % bars 1-4
  r16 ees g bes ees4 c |
  r16 bes, d f bes4 g |
  r16 aes, c ees aes4 f |
  r16 c ees g c4 a |
  
  % bars 5-9
  r16 bes, d f bes4 ees, |
  r16 aes, c ees aes4 d, |
  r16 g, bes d g4 aes |
  r16 bes, f' aes bes4 bes, |
  r16 ees, g bes ees4 c |

  % bars 10-13
  r16 aes c ees aes4 f |
  r16 f aes c f4 r16 b, a g |
  c g aes f g4 g, |
  r16 c, ees g c4 ees, |

  % bars 14-17
  r16 f a c f4 a, |
  r16 bes d f bes4 g |
  r16 g a bes f4 f, |
  r16 bes d f bes4 d, |

  % bars 18-21
  r16 ees g bes ees4 g, |
  r16 aes, c ees aes4 e |
  r16 f, aes c f4 des |
  r16 c e g c4 aes |

  % bars 22-25
  r16 bes, des f bes4 g |
  r16 c,, e g c4 des |
  r16 des c bes c4 c, |
  r16 f aes c f4 aes, |

  % bars 26-29
  r16 bes des f bes4 des, |
  r16 ees g bes ees4 r16 g, f ees |
  aes ees f des ees4 ees, |
  r16 aes c ees aes4 f |

  % bars 30-33
  r16 ees, g bes ees4 c |
  r16 bes d f bes4 g |
  r16 aes, c ees aes4 f |
  r16 c ees g c4 a |
  
  % bars 34-38
  r16 bes, d f bes4 ees, |
  r16 aes, c ees aes4 d, |
  r16 g, bes d g4 aes |
  r16 bes, f' aes bes4 bes, |
  ees,2.\fermata \bar "|."
}


\score {
\context PianoStaff

<<
  \context Staff = "up"   <<
    \time 3/4 \key ees \major \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>>

  \context Staff = "down" <<
    \time 3/4 \key ees \major \clef F \melthree>>
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 55 4)
      }
    }


\layout {}
}
