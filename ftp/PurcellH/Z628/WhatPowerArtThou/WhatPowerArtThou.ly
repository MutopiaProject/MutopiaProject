\version "2.18.2"

\layout {
  \context {
    \Score
    \override VerticalAxisGroup.remove-first = ##t
  }
  \context {
    \Staff
    \RemoveEmptyStaves
  }
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

\midi {
  \tempo 4 = 45
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
}

\paper {
  indent = 0
}

\header {
  title = "What power art thou"
  composer = "Henry Purcell (1659-1695)"
  arranger = "Sir George Alexander Macfarren (1813-1887)"
  poet = "John Dryden (1631-1700)"

  maintainer = "Anonymous"
  mutopiacomposer = "PurcellH"
  mutopiainstrument = "Voice (Bass), Piano"
  mutopiapoet = "John Dryden"
  mutopiatitle = "What power art thou (King Arthur)"
  license = "Public Domain"
  source = "Dryden's Opera of / King Arthur / The Music Composed by / Henry Purcell / With a Piano Forte Accomp. / Compressed from the Score / By / G. Alex. Macfarren, / Professor of Harmony / at the Royal Academy of Music / London, Printed & Sold by Chappell. / Music Seller to Her Majesty / 50, New Bond Street. (IMSLP82155-PMLP69503)"
  style = "Baroque"
  footer = "Mutopia-2019/07/12-2243"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

TB = #(make-span-event 'TextSpanEvent START)
TE = #(make-span-event 'TextSpanEvent STOP)

global = {
  \tempo Slow
  \key c \minor
  \time 2/2

  \repeat unfold 2 {
    s1 \noBreak s \noBreak s \noBreak s \noBreak s \break
  }
  s1*4 \break
  s1*4 \break
  s1*4 \break

    \barNumberCheck 23 \pageBreak

  s1*4 \break
  s1*3 \break
  s1*3 \break
  s1*3 \bar "|."

  \key c \major \time 3/4 s2
}

voice = \relative c {
  \override TextSpanner #'style = #'trill
  \override TextSpanner #'(bound-details right padding) = #-1.2

  R1*5 |

    \barNumberCheck 6

  R1*3 |
  r4 c8[\TB c]\TE c[\TB c c]\TE c |
  \stemUp d8[\TB d d]\TE d d[\TB d d]\TE d \stemNeutral |

    \barNumberCheck 11

  es8[\TB es es]\TE es e8[\TB e e]\TE e |
  f8[\TB f f]\TE f fis fis fis fis |
  g8[\TB\melisma g]\TE g4\melismaEnd r a8[\TB a]\TE |
  bes8[\TB bes bes]\TE bes b[\TB b b]\TE b |

    \barNumberCheck 15

  c8[\TB \melisma c c c]\TE c[\TB c c]\TE \melismaEnd b |
  c8[ \melisma c] c4 \melismaEnd r2 |
  R1 |
  r2 c8[\TB c c]\TE c |

    \barNumberCheck 19

  c8[\TB bes bes]\TE bes bes[\TB bes bes]\TE bes |
  bes8[\TB a a]\TE a as[\TB as as]\TE as |
  g8[\TB g g]\TE c c[\TB f, f]\TE f |
  e8[\TB e e]\TE e f[\TB f f]\TE b, |

    \barNumberCheck 23

  c8[ c c] c f[\TB f f]\TE f |
  R1 |
  r4 f8 f f[\TB f f]\TE f |
  g8[\TB g g]\TE g a[\TB a a]\TE a |

    \barNumberCheck 27

  bes8[\TB bes bes]\TE bes b[\TB b b]\TE b |
  c8[\TB c c]\TE c d[\TB d d]\TE d |
  es[\TB es es \TE es] r4 es8 d |
  d8 d d c d[\TB d d]\TE d |

    \barNumberCheck 31

  b8[\TB b b b]\TE r4 c8 c |
  c8 bes bes[\TB bes bes]\TE as! as as |
  as4( g) g8 g g f |
  f8[\TB es es]\TE es \stemUp d4. \stemNeutral c8 |

    \barNumberCheck 35

  c2 r |
  r4 r
}

text = \lyricmode {
  What power art thou, who, from be --
  low, Hast made me rise, un -- will -- ing -- ly and slow, From Beds of e -- ver --
  la -- sting Snow? See'st thou
  not how stiff, how stiff and wond' -- rous old, Far, far un -- fit to bear the

    \barNumberCheck 23

  bit -- ter cold. _ I can scarce -- ly move or draw my breath, can scarce -- ly move or draw my breath: Let
  me, let me, let me freeze a -- gain, let me, let me freeze a -- gain to death, let me,
  let me freeze a -- gain to death.
}

%{
What power art thou, who, from below,
Hast made me rise, unwillingly and slow,
From Beds of everlasting Snow?
See'st thou not how stiff and wond'rous old,
Far unfit to bear the bitter cold.
I can scarcely move or draw my breath:
Let me, let me freeze again to death.
%}

upper = \relative c' {
  \repeat unfold 4 <c es g>8 \repeat unfold 4 <c f as> |
  \repeat unfold 4 <bes d f>8 <bes es g> <bes es g> es es |
  \repeat unfold 4 <c e>8 <c f> <c f> <es f> <es f> |
  \repeat unfold 4 <d f>8 \repeat unfold 4 <c es> |
  \repeat unfold 4 <c d>8 <bes! es> \repeat unfold 3 <bes es> |

    \barNumberCheck 6

  d8 d d d des des des des |
  b8 b b b c c c c |
  c8 c c c c c c b |
  c8 c <c g'> <b g'> \repeat unfold 4 <c es as> |
  \repeat unfold 4 <d f as>8 \repeat unfold 4 <d f g> |

    \barNumberCheck 11

  \repeat unfold 4 <c es g>8 \repeat unfold 4 <c e g c> |
  \repeat unfold 4 <c f c'>8 <es fis c'> <es fis c'> <d fis c'> <c fis c'> |
  \repeat unfold 4 <d g b>8 \repeat unfold 4 <es a c> |
  <d bes'! d>8 <d bes' d> <g bes d> <g bes d> \stemUp \repeat unfold 4 <g b d> \stemNeutral |

    \barNumberCheck 15

  \stemUp \repeat unfold 3 <g d'>8 <g c> \stemNeutral \repeat unfold 3 <f c' d> <f b d> |
  <g c es>8 <g c es> <c es> <g c es> <as! d f> \repeat unfold 3 <as d f> |
  \repeat unfold 4 <a c es>8 <g c d>_[ <g c d> <f! b d> <f b d>] |
  \stemDown <e c'>8 \repeat unfold 3 <e g c> \stemNeutral <as! c e> \repeat unfold 3 <as c e> |

    \barNumberCheck 19

  <as c f>8 \repeat unfold 3 <as bes f'> <g bes g'> <g bes g'> <bes c g'> <bes c g'> |
  <bes c g'>8[ <a c g'> <a c g'> <f a c g'>] \repeat unfold 4 <as d f> |
  \repeat unfold 3 <g c e>8 <g bes c e> <f as c f>_[ <f as c f> <des g bes> <des f bes>] |
  <e g bes>8 <e g bes> <c e g bes> <c e g bes> <d! f as> \repeat unfold 3 <d f as> |

    \barNumberCheck 23

  <es! f g> <es f g> <c f g> <c e g> \repeat unfold 4 <c f as> |
  \repeat unfold 4 <des f g> \repeat unfold 3 <c f g> <c e g> |
  \repeat unfold 4 <c f a> <d! f bes> \repeat unfold 3 <d f bes> |
  <g bes> <g bes> <es g bes> <es g bes> \repeat unfold 4 <es a c> |

    \barNumberCheck 27

  \repeat unfold 4 <f bes des> \repeat unfold 4 <d f b d> |
  <g c es>_[ <g c es> <es g c es> <es g c es>] \repeat unfold 4 <d g b> |
  \repeat unfold 4 <c es g c> \repeat unfold 3 <es fis c'> <d fis bes> |
  \repeat unfold 3 <d g bes> <c g' bes> \repeat unfold 4 <d f as> |

    \barNumberCheck 31

  \repeat unfold 4 <b d g>8 \repeat unfold 4 <c g'> |
  <c d f>8 <d f> <bes d f> <bes f'> <bes c es> <c es> <es as es'>_[ <es as es'>] |
  <d f as d>8 <d f as d> <d g bes d> <d g bes d> <c es c'> <c es c'> <c f c'> <c f c'> |
  <d g b>8 <d g b> <c a' c> <c a' c> <bes' c> <as c> <g c> <f! b> |

    \barNumberCheck 35

  <es c'>8 <es c'> <c es> <c es> \repeat unfold 3 <c d> <b d> |
  c2
}

lower = \relative c {
  <<
    {
      \autoBeamOff

      s1 |
      s2. \crossStaff { <g' bes>8 <g bes> } |
      \crossStaff { as8 bes g g f f } s4 |
      s1*2 |

        \barNumberCheck 6

      \crossStaff { a8 a a a as as as as } |
      \crossStaff { g8 g g g g g g g } |
      \crossStaff { as8 as as as g g g g } |
      \crossStaff { g8 g } s2. |
    } \\ {
      c,8^[ c c c] f,^[ f f f] |
      bes8^[ bes bes bes] es es es es |
      c8 c c c a a <a es'> <a es'>
      \repeat unfold 4 <b g'>8 \repeat unfold 4 <c g'> |
      \repeat unfold 8 <g g'>8 |

        \barNumberCheck 6

      \repeat unfold 4 <fis d'>8 \repeat unfold 4 <f f'> |
      \repeat unfold 4 <f d'>8 \repeat unfold 4 <es es'> |
      \repeat unfold 4 <f d'>8 \repeat unfold 4 <g d'> |
      c8 c c c \stemNeutral c c c c |
      c8 c c c b b b b |
    }
  >>

    \barNumberCheck 11

  c8 c c c bes! bes bes bes |
  as8 as as as \repeat unfold 4 <a c> |
  \stemDown \repeat unfold 4 <g g'>8 \repeat unfold 4 <g fis'> |
  <g g'>8 <g g'> g' g <f! g> \repeat unfold 3 <f g> |

    \barNumberCheck 15

  <e g>8 <e g> <es g> <es g> <d a'> <d a'> <d d'> <d d'> |
  \repeat unfold 3 <c g'>8 c \stemUp f, f f f |
  fis8 fis fis fis g g g g |
  c8 c c c \stemNeutral \repeat unfold 4 <c c'> |

    \barNumberCheck 19

  \repeat unfold 4 <d f> \repeat unfold 4 <e c'> |
  \repeat unfold 3 <f c'>8 f b, b b b |
  c8 c c c \stemUp des des des des |
  <c g'>8 <c g'> c c \stemNeutral b b b b |

    \barNumberCheck 23

  c8 c c c f f f f |
  bes,8 bes bes bes c c c c |
  f8 f f f d d d d |
  <es bes'>8 <es bes'> <es g> <es g> \repeat unfold 4 <c c'> |

    \barNumberCheck 27

  <bes f'>8^[ <bes f'> bes bes] d d d d |
  <c g'>8 <c g'> c c g g g g |
  c8 c c c \repeat unfold 4 <d a'> |
  \repeat unfold 4 <e g>8 <f as!> <f as> f f |

    \barNumberCheck 31

  \repeat unfold 4 <f g>8 <e g> <e g> <es g> <es g> |
  <d as'>8 <d bes'> <d f> <d f> <c g'> <c as'> <c as' c> <c as' c> |
  <b as'>8 <b as'> <bes g'> <bes g'> <a g'> <a g'> <as g'> <as f'> |
  <g f'>8 <g es'> <fis es'> <fis es'> \stemDown \repeat unfold 4 <g d' g> \stemNeutral |

    \barNumberCheck 35

  << { \autoBeamOff \crossStaff { s4 a'8 a g g g g } } \\ { <c, g'> <c g'>8 fis, fis g g g g } >> |
  << { \crossStaff { g'2 } } \\ { <c,, c'>2 } >>
}

dynamics = {
  s1\p |
  s1*4 |

    \barNumberCheck 6

  s1*5 |

    \barNumberCheck 11

  s1*3 |
  s4. s8\cresc s s s s-\tweak X-offset #1.75 #(make-dynamic-script "") |

    \barNumberCheck 15

  a1 |
  s8 s2..\f |
  s1 |
  s2 s2\p |

    \barNumberCheck 19

  s1*4 |

    \barNumberCheck 23

  s1 |
  s1\f |
  s8 s2..\p |
  s1 |

    \barNumberCheck 27

  s1*4 |

    \barNumberCheck 31

  s1*4 |

    \barNumberCheck 35

  s1 |
  s2
}

\score {
  <<
    \new Staff \with { midiInstrument = "voice oohs" } <<
      \new Voice \global
      \new Voice = "voice" {
        \clef bass
        \autoBeamOff
        \dynamicUp
        \voice
      }
      \new Lyrics \lyricsto "voice" \text
    >>
    \new PianoStaff \with { midiInstrument = "acoustic grand" } <<
      \new Staff = "upper" <<
        \clef treble
        \global
        \upper
      >>
      \new Dynamics = "dynamics" <<
        \global
        \dynamics
      >>
      \new Staff = "lower" <<
        \clef bass
        \global
        \lower
      >>
    >>
  >>

  \layout {}
  \midi {}
}