\version "2.9.18"
\include "english.ly"

#(ly:set-option 'point-and-click #f)

\header
{
 title = "Little Toy Lost"
 composer = "Andrew Sidwell"
 mutopiatitle = "Little Toy Lost"
 mutopiacomposer = "SidwellA"
 mutopiainstrument = "Piano"
 date = "2006/Aug/23"
 source = "Original work"
 style = "Jazz"
 copyright = "Creative Commons Attribution-ShareAlike 2.5"
 maintainer = "Andrew Sidwell"
 maintainerEmail = "andy@entai.co.uk"
 lastupdated = "2006/Aug/23"
 footer = "Mutopia-2006/10/06-834"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

upper = \relative c'''
{
  \override Score.MetronomeMark #'padding = #4.5
  \tempo 4=100

  \set hairpinToBarline = ##t

  \override DynamicTextSpanner #'dash-period = #-1.0

  \setTextCresc
  \override DynamicLineSpanner #'staff-padding = #3
  \override TextScript #'staff-padding = #3

  b8\p \(c b c b a g \) a~ \( |
  a4. \< g4 f4. \)  |
  b8\p \(c b c b a g \) a~ \( |
  a4. \< g8 ~ g4 f4 \) |

  e8\mf \( f e f e\< d c \) d~ \! \( |
  d4.\> c8 ~ c4 b4\! \) |
  e8\f \( f e f e d c \) d~ |
  d4. \( c8 ~ c4 b \) \breathe  |

  d4.\mp \( c8 ~ c4 a4-> \) |
  d8 \(c b_\markup{ \italic { "rit." } } c b a g b |
  c1\p \) 
}

lower = \relative c'
{
  <c e g b>1 |
  << { f'4 f e d } \\ { <f, c'>1 } >>
  <c e g b>1 |
  <f c' f>1 |

  <a, c a'>2. <af cs af'>4 | <g d' g>1 |
  <a c g'>2. <af cs g'>4 | <g d' g>1\breathe |

  <g d' g>1 |
  <e gs b d> |
  <c' e g>
}

\score
{
  \context PianoStaff <<
    \context Staff = upper \upper
    \context Staff = lower \lower
  >>

  \layout { }
  \midi { }
}
