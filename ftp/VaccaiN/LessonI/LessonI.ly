\version "2.18.2"

\midi {
  \tempo 4 = 75
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
}

\header {
  title = "Lesson I"
  subtitle = "The Diatonic Scale"
  composer = "Nicola Vaccai (1790-1848)"

  style = "Romantic"
  maintainer = "Anonymous"
  mutopiacomposer = "VaccaiN"
  mutopiainstrument = "Voice (Baritone), Piano"
  mutopiatitle = "Lesson I, The Diatonic Scale"
  license = "Public Domain"
  source = "Practical Vocal Method for Alto, Baritone / New York: G. Schirmer, 1894. (IMSLP38823-PMLP85474)"
  footer = "Mutopia-2019/07/12-2245"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

global = {
  \tempo Adagio
  \key a \major
  \time 4/4

  s1*5 \break
  s1*5 \break
  s1*6 \break
  \bar "|."
}

voice = \relative c' {
  a2 b4 cis |
  d4 e fis r |
  b,2 cis4 dis |
  e4( fis) g r |
  b2 a4 g |

    \barNumberCheck 6

  fis4 e d r |
  fis2 e4 d |
  cis4( b) a r |
  a2 b4 cis |
  d4( e) fis gis |

    \barNumberCheck 11

  a2 b4. b8 |
  cis2 r |
  cis2 b4 a |
  gis4( fis) e d |
  cis2 b4. b8 |
  a2 r |
}

text = \lyricmode {
  Ma -- nca so -- lle -- ci -- ta più de -- ll'u -- sa -- to, a -- nco -- rchè
  s'a -- gi -- ti co -- nlie -- ve fia -- to, fa -- ce che pa -- lpi -- ta
  pre -- sso~a -- l~mo -- rir, fa -- ce che pa -- lpi -- ta pre -- sso~a -- l~mo -- rir.
}

%{
Manca sollecita
più dell'usato,
ancorchè s'agiti
conlieve fiato,
face che palpita
presso al morir.
%}

upper = \relative c' {
  <<
    {
      \shape #'((0 . 0) (0 . 1.5) (0 . 1) (0 . 0)) Slur a2( b4 <a cis> |
      d4 e fis) b\rest |
      \shape #'((0 . 0) (0 . 1.5) (0 . 1) (0 . 0)) Slur b,2( cis4 <b dis> |
      e fis g) b\rest |
      <g b>2_( <fis a>4 <e g> |

        \barNumberCheck 6

      <d fis>4 <cis e> <b d>) b'\rest |
      \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) Slur <d, fis>2( <cis e>4 <b d> |
      <a cis>4 \clef bass \stemDown <d, gis b> <cis a'>) \stemUp d\rest \clef treble |
      a'2_( b4 <a cis>) |
      d4( e fis <e gis!> |

        \barNumberCheck 11

      a2) b4. b8 |
      cis2 b\rest |
      cis2( b4 a) |
      <e! gis>4_( <d fis> <cis e> <b d>) |
      <a cis>2_( <gis b>) |
      a2 b'\rest |
    } \\ {
      s1 |
      a,2. s4 |
      s1 |
      b2. s4 |
      s1 |

        \barNumberCheck 6

      s1*4 |
      a2.( d4) |

        \barNumberCheck 11

      e2 fis4. fis8 |
      eis2-> s |
      r4 eis( fis2) |
      s1*2 |
      a,2 s |
    }
  >>
}

lower = \relative c' {
  r2 r4 g( |
  fis4 cis d) r |
  r2 r4 a'^( |
  g4 dis e) r |
  r4 cis_( d! g, |

    \barNumberCheck 6

  a4 ais b) r |
  r4 gis( a! d |
  e4 e, a) r |
  r4 a( gis' g) |
  fis4( cis d b |

    \barNumberCheck 11

  cis2) d4. d8 |
  cis2-> r |
  r4 cis( d dis) |
  e4( gis, a <d! f>) |
  \once \override Slur.positions = #'(0 . 0) e2( e, ) |
  a2 r |
}

dynamics = {
  s1\p |
  s1*4 |

    \barNumberCheck 6

  s1*5 |

    \barNumberCheck 11

  s2 s4.\sf s8 |
  s2\f s |
  s1\p |
  s1*3 |
}

\score {
  <<
    \new Staff \with { midiInstrument = "voice oohs" } <<
      \new Voice \global
      \new Voice = "voice" {
        \clef treble
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