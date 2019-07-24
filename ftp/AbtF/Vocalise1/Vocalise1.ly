\version "2.18.2"

\midi {
  \tempo 4 = 110
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
}

\header {
  title = "Vocalise № 1"
  composer = "Franz Abt (1819-1885)"

  maintainer = "Anonymous"
  mutopiacomposer = "AbtF"
  mutopiainstrument = "Voice, Piano"
  license = "Public Domain"
  source = "Practical Singing Tutor for All Voices, G.Schirmer, 1892. Ed: Max Spicker"
  moreinfo = "IMSLP-39796, PDF page 84.\nSee also: Франц АБТ / ШКОЛА ПЕНИЯ / Избранные / упражнения / для низких голосов / в сопровождении / фортепиано / Составитель Г. ТИЦ / ИЗДАТЕЛЬСТВО МУЗЫКА • МОСКВА 1965"
  style=Romantic
  footer = "Mutopia-2019/07/24-2247"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

tightenSlur = {
  \once \override Slur #'positions = #'(5 . 5)
}

global = {
  \tempo Moderato
  \key c \major
  \time 4/4

  s1*5 \break
  s1*5 \break
  s1*6 \break
  \bar "|."
}

voice = \relative c' {
  e2^>( \once \override Hairpin #'to-barline = ##f d\> |
  c1\!) |
  \breathe d2\<( e4 f
  e2^>\!) r |
  g2\p\<( a |

    \barNumberCheck 6

  b1\!) |
  \breathe a2\>( g4 fis\! |
  g2) r |
  g2( a4 b |
  c2.) \breathe b8( a |

    \barNumberCheck 11

  g2\> f |
  e2\!) r |
  e4\<( d e f |
  g1\!) |
  \breathe g4\>( f e d |
  c1\!) |
}

text = \lyricmode {
  \set ignoreMelismata = ##t

  Mi re do
  re mi fa mi
  sol la si
  la sol fa sol
  sol la si do
  si la sol fa mi
  mi re mi fa sol
  sol fa mi re do
}

upper = \relative c' {
  \slurDown

  <c e>4( g <f d'> g) |
  <e c'>4 e g c |
  \tightenSlur <b d>4( g <c e> <d f> |
  <c e>4 g c e) |
  <e g>4( c <g' a> e) |

    \barNumberCheck 6

  <g b>4( d g b) |
  <c, a'>2( <b g'>4 <ais fis'> |
  <b g'>2) r |
  \tightenSlur <b f' g>4( g <d' f g> g, |
  <c e g>4 g c e) |

    \barNumberCheck 11

  \tightenSlur \shape #'((0 . 0) (0 . 0) (0 . -0.75) (0 . 0)) Slur g4( b, d f |
  e4 e, c' e) |
  << { e4 d e } \\ { <a, c>2. } >> <a d f>4 |
  \tightenSlur \shape #'((0 . 0) (-0.5 . -0.75) (0 . 0) (0 . 0)) Slur g'4( g, c e) |
  <b g'>4( <a f'> <g e'> <f d'> |
  <e c'>1) |
}

lower = \relative c {
  <c, c'>1~ |
  <c c'> |
  g'1( |
  c2) r |
  c2( cis |

    \barNumberCheck 6

  d1) |
  d,4 d' d, d' |
  g,4 b d g |
  g,1 |
  g1 |

    \barNumberCheck 11

  g2( gis |
  a1) |
  f4( f' e d |
  <g, e'>1) |
  g1 |
  <c, g'>1 |
}

\score {
  <<
    \new Staff \with { midiInstrument = "voice oohs" } <<
      \new Voice \global
      \new Voice = "voice" {
        \clef treble
        \dynamicUp
        \voice
      }
      \new Lyrics \lyricsto "voice" \text
    >>
    \new Staff \with { midiInstrument = "voice oohs" } <<
      \new Voice \global
      \new Voice = "voice" {
        \clef bass
        \dynamicUp
        \transpose c c, \voice
      }
    >>
    \new PianoStaff \with { midiInstrument = "acoustic grand" } <<
      \new Staff = "upper" <<
        \clef treble
        \global
        \upper
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