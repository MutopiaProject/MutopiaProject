#(set-global-staff-size 20)

\header {
  title = "Sinfonia 8" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 794"
  mutopiatitle = "Sinfonia 8"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 794"
  mutopiainstrument = "Harpsichord, Piano"
  style = "Baroque"
  source = "Unknown"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  maintainerEmail = "olivier.vermersch (at) wanadoo.fr"
  lastupdated = "07/february/2002"

 footer = "Mutopia-2008/06/15-176"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.11.46"

%\include "property.ly"

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
  R1 |
  r8 f16 e a8 g f\prall e16 d g a f g |
  e f d e f2 e4 |
  f8 c16 a d4 r8 d16 b! e4 |

  % bars 5-8
  r8 e16 c f4 ~ f16 e f g e8.  e16 |
  a f g a d,4 ~ d8 c16 b! c4 ~ |
  c b c8 g'16 e a8 g |
  f e16 d g a f g e d e c f8 e |
  
  % bars 9-12
  d cis16 b e f d e cis8 a'16 f bes!8 a |
  g f16 e a bes g a fis8\prall d g4 ~ |
  g fis g2 ~ |
  g8 g f!4 ~ f8 ees d4 ~ |
 
  % bars 13-16
  d8 d cis e a,16 g a f bes8 a |
  g f16 e a bes g a f2 ~ |
  f16 f e g cis,8. d16 d4 r8 f16 d |
  g4. g16 e a8 c16 a f'4 ~ |

  % bars 17-20
  f8 d16 bes ees4 ~ ees8 d16 bes ees8 d |
  c8 bes16 a d ees c d bes8 f'16 d g8 f |
  ees d16 c f g ees f d4 r8 d16 bes |
  e!4 r8 e16 c f4 r8 f16 d |

  % bars 21-23
  g4 ~ g16 e f8 ~ f4 ~ f16 d e g |
  c, bes c a d8 c bes a16 g c d bes c |
  a8.  bes16 g8.  f16 f2\fermata \bar "|."
}

meltwo =  \relative c'' {
  % bars 1-4
  r8 c16 a d8 c bes_\prall a16 g c d bes c |
  a bes c8 ~ c2 b4 |
  c8 bes! a16 bes c d g,2 |
  f4 r8 a16 f b4 r8 b16 g |

  % bars 5-8
  c4 r8 c16 a d4 ~ d16 b c8 ~ |
  c4 ~ c16 a b d g, f g e a8 g |
  f e16 d g a f g e8 r r4 |
  R1 |

  % bars 9-12
  R1 |
  r2 r8 d'16 bes ees8 d |
  c bes16 a d ees c d bes a bes g c d bes c |
  a4. a8 g4. f8 |

  % bars 13-16
  e!2 ~ e8 d16 cis d4 ~ |
  d cis r16 d \sd \stemUp \tu c! a bes! cis d a |
  g2 ~ g8 f16 d bes'4 ~ |
  bes8 bes16 g c!4 ~ c \su \stemDown \td r8 a'16 f |

  % bars 17-20
  bes4 r8 c16 a f ees f d g8 f |
  ees d16 c f g ees f d2 ~ |
  d4 c bes8 f'16 d g4 ~ |
  g8 g16 e a4 r8 a16 f bes4 ~ |

  % bars 21-23
  bes16 a bes c a8. a16 d bes c d g,4 ~ |
  g8 f16 e f4 ~ f e8 g ~ |
   g[ f] ~  f[ e] f2
}

melthree =  \relative c, {
  % bars 1-4
  f4 f'2 e4 |
  f8 a16 g f8 e d g16 f \stemUp g8 g, \stemNeutral |
  c c'16 a d8 c bes\prall a16 g c d bes c |
  a8 g f16 e f d \stemUp g8 g, \stemNeutral g'16 f g e |

  % bars 5-8
  a8 a, a'16 g a f b8 g16 e a8 g |
  f e16 d g a f g e8 a16 g f8 e |
  d g16 f \stemUp g8 g, \stemNeutral c c, r c''16 a |
   d8[ c]  b[ a16 g] c d bes c a g a f |

  % bars 9-12
   bes8[ a]  g[ f16 e] a bes g a d,8 d'16 b |
   e8[ d]  cis[ b16 a] d c bes a g a bes g |
  a8 d16 c d8 d, g d16 bes ees8 d |
  c8 bes16 a d ees c d bes8 g'16 f bes8 a |

  % bars 13-16
  g f16 e a bes g a f e f d g8 f |
  \stemDown e8 a16 g a8 a, bes a16 f g8 f16 d |
  bes' a bes g a8 a d,4 r8 d' \stemNeutral |
  e16 d e f e d e c \stemDown f8 f, \stemNeutral r f'16 d |

  % bars 17-20
  g f g a g bes a c bes2 ~ |
  bes ~ bes16 c bes a g a bes g |
   c8[ bes]  a[ g16 f] bes c a c bes a bes g |
  c8 c, c'16 bes c a d8 d, d'16 c d bes |

  % bars 21-23
  e8 c16 a d8 c bes a16 g c d bes c |
  a8 d16 c bes c a bes g8 a16 bes c8 e, |
  f d16 bes c8 c, f2\fermata \bar "|."
}


\score {
\context PianoStaff

<<
  \override Score.TimeSignature   #'style = #'C
  \context Staff = "up"   <<
    \time 4/4 \key f \major \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>>

  \context Staff = "down" <<
    \time 4/4 \key f \major \clef F \melthree>>
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }


\layout {}
}
