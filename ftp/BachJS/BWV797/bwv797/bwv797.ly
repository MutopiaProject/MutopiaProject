#(set-global-staff-size 20)

\header {
  title = "Sinfonia 11" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 797"
  mutopiatitle = "Sinfonia 11"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 797"
  mutopiainstrument = "Harpsichord, Piano"
  style = "Baroque"
  source = "Unknown"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  maintainerEmail = "olivier.vermersch (at) wanadoo.fr"
  lastupdated = "28/february/2002"

 footer = "Mutopia-2008/06/15-200"
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
  % bars 1-7
  r16 d bes g g'8 |
  f4.|
  ees |
  d |
  c4 d8 |
  bes8. bes16 ees8 |
  a,8. bes16 c8 | \break

  % bars 8-14
  bes4.  |
  b4 \prallprall ~ b16 a32 b  |
  c8. d16 ees8 ~ |
  ees16 d b g f'8  |
  ees4. ~  |
  ees8. d16 c8 ~  |
  c16 f d bes bes'8 | \break

  % bars 15-22
  d,8. ees16 c8 |
  bes4.  |
  \stemDown bes' ~ |
  bes16 g ees c bes'8 |
  a4. ~ |
  a16 f d bes bes'8 |
  g4. ~ |
  g16 e cis a f'8 ~ | \break

  % bars 23-29
  f16 d bes g e'8 ~ |
  e16 g, bes e f, d' ~ |
  d cis e g d f ~ |
  f e g bes d, a' ~ |
  a cis, e g b, f' ~ |
  f a, cis e gis, d' |
  cis e cis a g'8 | \break

  % bars 30-36
  \stemUp f4. |
  ees |
  d ~  |
  d16 cis e g bes8 |
  a8. e16 f8 |
  d8. e16 cis8 |
  d4 f8 | \break

  % bars 37-43
  f4. ~ |
  f8. d16 ees8  |
  ees4. ~ |
  ees8. c16 d8 ~  |
  d16 bes' g ees c'8 ~ |
  c16 a f d bes'8 ~  |
  bes16 g ees c a'8  | \break

  % bars 44-50
  fis4 g8  |
  ees8. d16 c8 |
  d8. bes16 a! c |
  bes d c ees d a'  |
  bes,4. ~  |
  bes16 g ees c bes'8  |
  a4. ~ | \break

  % bars 51-57
  a16 f d bes aes'8  |
  g4. ~  |
  g16 bes a! c fis, a ~ |
  a a g bes e, g ~  |
  g g fis a c8 ~  |
  c16 bes a c ees8 ~  |
  ees16 d c bes a g  | \break

  % bars 58-64
  c bes a g fis e  |
  d fis a c g bes ~ \td |
  bes a c ees g, d' ~  |
  d fis, a c e, bes' ~ |
  bes d, fis a cis, g' |
  fis4 ~ \tu fis16 fis |
  a c ees4 ~  | \break

  % bars 65-72
  ees16 d bes g g'8  |
  f4. |
  ees4.  |
  d4.  |
  c4 d8 |
  bes8. bes16 ees8 |
  bes8. c16 a8 |
  g4.\fermata \bar "|."
}

meltwo =  \relative c'' {
  % bars 1-7
  R4. |
  r16 a f d d'8 ~ |
  d8. bes16 c8 ~ |
  c8. a16 bes8 |
  a4. ~ |
  a16 fis g4 ~  |
  g fis8  |

  % bars 8-14
  g4.  |
  r16 d b g g'8 ~ |
  g4. |
  f4 d8 |
  r16 g ees c bes'!8 |
  a4. |
  f8. bes ~ |

  % bars 15-22
  bes4 a8 |
  bes4. |
  \sd \stemUp \tu r16 d,16 bes g f'8 |
  ees4. ~ |
  ees16 ees c a f'8 |
  d4. ~  |
  d16 d bes g e'8 |
  cis8 a d ~  |

  % bars 23-29
  d cis d |
  cis4\prall d8 e4 f8 |
  g4 f8 |
  e4 d8 |
  cis4\prall b8 |
  a4. ~ |

  % bars 30-36
  a16 \su \stemDown \td a' f d d'8 ~  |
  d8. bes16 c8 ~ |
  c8. a16 bes8 |
  g4 f8 ~ |
  f16 e cis a d8 |
  f8. g16 e8 |
  d4 r8 |

  % bars 37-43
  r r16 d' b8 |
  g8. b16 c8 |
  c4. ~  |
  c8. a16 bes8 |
  bes8. bes16 ees8 ~  |
  ees8. a,16 d8 ~ |
  d8. g,16 c8 ~   |

  % bars 44-50
  c16 fis, a c bes8 ~ |
  bes16 ees, g bes aes8 ~ |
  aes16 fis g4 ~ |
  g fis8 |
  g4. |
  c,8 bes c |
  f4. |

  % bars 51-57
  bes,8 a bes  |
  ees4. ~ |
  ees4. |
  d |
  c4 r8 |
  R4. |
  r8 \sd \stemUp d, e |

  % bars 58-64
  fis4 g8 |
  a4 bes8 |
  c4 bes8 |
  a4 g8 |
  fis4 e8 |
  b'16 \rest d, fis a \stemDown \su d8 ~  |
  d8. r16 r8 |

  % bars 65-72
  R4. |
  r16 a' f d d'8 ~ |
  d8. bes16 c8 ~ |
  c8. a16 bes8 |
  a4. ~ |
  a16 fis g4 ~ |
  g fis8 |
  g4. \bar "|."
}

melthree =  \relative c' {
  % bars 1-7
  g4 ees8  |
  d4 bes'8 |
  g4 a8 |
  bes16 d bes g g'8 ~ |
  g8.  e16 fis8 |
  g4 c,8 |
  d4 d,8 |

  % bars 8-14
  \stemUp g16 d bes g g'8 \stemNeutral |
  f!4. |
  ees16 g ees c c'8 ~ |
  c4 b8 |
  c4. ~ |
  c16 c a f ees'8 |
  d8. g16 ees8  |
  
  % bars 15-22
  f4 f,8 |
  bes16 f d bes a'8 |
  g4. |
  c8 bes c |
  f,4. |
  bes8 a bes |
  e,4. |
  f |

  % bars 23-29
  g8 a bes  |
  \td a4. ~ |
  a4. ~ |
  a4. ~ |
  a4. ~ |
  a4. |
  a8. g!16 f e |

  % bars 30-36
  \tu d4 bes8 |
  g4 a8  |
  bes16 d bes g g'8 |
  e8. e'16 d8  |
  cis4 d8 |
  bes8 g a |
  d,16 d, f a d c |

  % bars 37-43
  b g b d g f  |
  ees c ees g c bes! |
  a f a c f ees  |
  d bes d f bes a  |
  g4. |
  f |
  ees  |

  % bars 44-50
  d  |
  c |
  bes8. d16 c8 |
  d8. c16 d8 |
  g,16 d bes g f'!8 |
  ees4. ~  |
  ees16 c a f ees'8 |

  % bars 51-57
  d4. ~  |
  d16 bes g ees g bes |
  c4. |
  bes |
  a8. fis16 g8 |
  fis8. a16 c8 |
  d, d'4 ~ \td |

  % bars 58-64
  d4. ~ |
  d4. ~ |
  d4. ~ |
  d4. ~ |
  d4. ~ |
  a16 \rest d16 ~ d4 ~ |
  d8. c'16 bes a |
  
  % bars 65-72
  \tu g4 ees8  |
  d4 bes'8 |
  g4 a8 |
  bes16 d bes g g'8 ~ |
  g8. e16 fis8  |
  g4 c,8 |
  d4 d,8 |
  g,4.\fermata \bar "|."
}


\score {
\context PianoStaff

<<
  \context Staff = "up"   <<
    \override Staff.NoteCollision   #'merge-differently-dotted = ##t
    \time 3/8 \key g \minor \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>>

  \context Staff = "down" <<
    \time 3/8 \key g \minor \clef F \melthree>>
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 4)
      }
    }


\layout {}
}
