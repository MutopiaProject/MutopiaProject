#(set-global-staff-size 20)

\header {
  title = "Sinfonia 14"
  composer = "Johann Sebastian Bach"
  opus = "BWV 800"
  mutopiatitle = "Sinfonia 14"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 800"
  mutopiainstrument = "Harpsichord, Piano"
  style = "Baroque"
  source = "Unknown"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  maintainerEmail = "olivier.vermersch (at) wanadoo.fr"
  lastupdated = "20/March/2002"

 footer = "Mutopia-2008/06/15-213"
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
  R1  |
  r8  f ~ f16 ees d c bes8 d a16 bes c8 |
  f,16 f' d bes ees!8 g ~ g16 ees c \slurDown a(  c8) f |
  d4 e f8 bes,4 a8 ~ |

  % bars 5-8
   a[ g] ~  g[ f] ~  f[ ees] ~  ees[ d] ~ |
  d16 g ees c a'!8 c ~ c16 f, bes d c8 ees ~ |
  ees8 d4 c8 d r  r4  |
  r8  g ~ g16 g f ees d8 f b,16 c d8 |

  % bars 9-12
  g, b c2 b4 |
  c1 ~  |
  c4. f8 ~ f16 e d e e8. f16 |
  f8 a ~ a16 a g f e8 g cis,16 d e8 |

  % bars 13-16
  a,8. b16 c! b c d b a b cis d4 ~ |
  d cis d8 f ~ f16 ees! d c! |
  b8 d g,16 a b8 ees,4 ees' ~  |
  ees8 d16 c bes8 a d8. ees16 d c bes aes |

  % bars 17-18
  g8. aes16 bes8 f g g' ~ g16 f ees d |
  c g f'8 bes,16 c d8 g,8 ees' ~ ees 16d c bes |

  % bars 19-21
  a8 d g,16 a bes8 ees, c' ~ c16 bes a g |
  f4 r r8  f'8 ~ f16 ees d c |
  bes8 d a16 bes c8 ~ c16 f, bes d c8 ees ~ |

  % bars 22-24
  ees16 a, bes d f4 ~ f16 bes, c ees g4 |
  bes16 a! g f  bes[ a32 g f ees d c] bes4 ~ bes16 bes8 a16 |
  bes1\fermata \bar "|."
}

meltwo =  \relative c'' {
  % bars 1-4
  bes4 ~ bes16 bes a g f8 g d16 ees f8 |
  bes,16 f bes d c8 ees ~ ees d16 e e8._\prall d32 e |
  f4  g8[ bes]  ees,[ g]  a[ c] ~ |
  c16 f, bes d g,8 bes a d,16 ees! f g ees f |

  % bars 5-8
  d f bes, c d ees c d bes d \sd \stemUp g, a bes c aes bes |
  g4 f8 r \su \stemDown r2  |
  bes'4 ~ bes16 bes a g fis8 g d16 ees f8 |
  b,4 c4 ~ c8 aes' d,16 ees f8 |

  % bars 9-12
  b, d g16 bes! aes g f8 aes d,16 ees f8 ~ |
  f16 f e d e8 bes' ~ bes16 a g f g a bes g |
  e g e c f8 a g2 |
  a4 bes ~ bes16 a g f e8 g  |

  % bars 13-16
  cis,16 d e8 a, a' ~ a g ~ g16 f! g a |
  bes!16 g a bes e, bes' a g f4 r   |
  r2  r8 c'8 ~ c16 bes! a g |
  f8 a d,16 ees f8 bes, f' ~ f4 ~  |

  % bars 17-18
  f16 d ees4 d8 ees r  c'8. bes16 |
  a! g f8 g bes ees,16 f g8 c, f ~  |

  % bars 19-21
  f16 ees d \sd \stemUp \tu c bes8 d a16 bes c8 f,4 ~ |
  f8 \su \stemDown \td bes' ~ bes16 bes a g f8 a d,16 ees f8 |
  bes,16 a bes d c8 ees ~ ees d r16 bes'16 a g  |

  % bars 22-24
  f4 r16 d'16 bes aes g4 r16  ees'c bes |
  f'4 r  r32  a,[ g f g16 ees] d8 c  |
  d1 \bar "|."
}

melthree =  \relative c' {
  % bars 1-4
  \stemDown bes8 d c bes a g f ees |
  d4 f g c |
  d ~ d16 d bes g c8 ees ~ ees16 c a f |
  bes4 ~ bes16 bes a g f8 g d16 ees f8 |

  % bars 5-8
  bes, ees bes16 c d8 g, c g16 a! bes8 |
  ees, ees'^~  ees16 \tu c' a f d8 g ees16 c f a |
  bes, bes' g d ees4\trill d16 c' bes a g bes aes g |
  f aes g f ees8 c f16 ees f g aes g f ees |

  % bars 9-12
  f aes g f ees d c bes aes! c f aes g8 g, |
  c c' ~ c16 bes a! g f8 a e16 f g8 |
  \stemUp a,4 ~ \stemDown a16 a' f d \stemUp bes d bes g c8 c, |
  f16 g' f e \stemDown d8 e16 f g2 ~ |

  % bars 13-16
  g16 bes a g fis d e fis g fis g a bes!8 a |
  g16 e f g a8 a, d16 a' f d d'8 f ~ |
  f16 ees d c b8 g c16 g ees c bes'! d c bes |
  a g f ees f8. g16 aes bes aes g f ees d c |

  % bars 17-18
  \stemUp bes8 c g16 aes bes8 ees,4 r8 \stemDown ees''8 ~ |
  ees d ~ d16 d c bes c d c bes a bes a g |

  % bars 19-21
  f8 bes, ees16 d c bes c bes a g a g f ees |
  d ees' d c bes g' f ees d ees' d c bes8. a16 |
  g8 f ~ f16 ees d c \stemUp bes8 d a16 bes c8 |

  % bars 22-24
   d,[ d']  bes[ d]  ees,[ ees'] \stemDown  c[ ees] ~ |
   ees[ ees']  d[ bes]  g[ ees] \stemUp  f[ f,] |
  bes1\fermata \bar "|."
}


\score {
\context PianoStaff

<<
  \override Score.TimeSignature   #'style = #'C
  \context Staff = "up"   <<
    \time 4/4 \key bes \major \clef G
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>>

  \context Staff = "down" <<
    \time 4/4 \key bes \major \clef F \melthree>>
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }


\layout {}
}
