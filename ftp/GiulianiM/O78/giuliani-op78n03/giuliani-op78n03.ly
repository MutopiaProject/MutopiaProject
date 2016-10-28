\version "2.19.48"

\header {
  title = "Divertissements, No. 3"
  composer = "Mauro Giuliani"
  opus = "Op. 78 No. 3"
  style = "Classical"
  source = "Pietro Mechetti, plate 495"
  date = "ca.1817"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Divertissements, No. 3"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/10/28-2142"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  top-margin = #8
  bottom-margin = #12
%  system-count = #8
}

mbreak = {} % { \break }
global = {
  \time 2/4
  \key a \major
}

upperVoice = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \partial 8 { <a cis'>8\mf } |
  <b d'>8[ <cis' e'> <d' fis'> <cis' e'>8] |
  <b d'>4 r8 <gis b>8 |
  <a cis'>8[ <b d'> <cis' e'> <b d'>8] |
  <a cis'>4 r8 <cis' a'> |
  <d' gis'>4 r8 <d' e'> |
  <cis' a'>4 r8 e' |

  \mbreak
  <b d'>8 e' <a cis'> e' |
  <gis b>4 r8 <a cis'> |
  <b d'>8[ <cis' e'> <d' fis'> <cis' e'>8] |
  <b' d'>4 r8 <gis b>8 |
  <a cis'>8[ <b d'> <cis' e'> <b d'>8] |
  <a cis'>4 r8 <cis' a'> |
  <d' gis'>4 r8 <d' e'> |

  \mbreak
  <cis' a'>4 r8 <a cis'> |
  <cis' e'>8[ <b d'> <a cis'> <gis b>8] |
  a4 r |
  \bar ".|" \key a\minor
  a4\f c'
  e'4. c'8 |
  b8[ a gis a8] |
  e4 r8 e' |

  \mbreak
  e'4\p r8 e' |
  e'4 r8 e' |
  d'8 e' c' e' |
  <gis b>4 r |
  c'4\f e' |
  g'4. e'8 |
  d'8[ c' b c'] |
  g4 r8 g'\mf |

  \mbreak
  g'4 r8 g'8 |
  g'4 r8 e' |
  a8 c' b g |
  c'4 r |
  r4 <gis b>8 q |
  <b d'>8. <a c'>16 <gis b>8 r |

  \mbreak
  r4 <a c'>8 q |
  <c' e'>8. <b d'>16 <a c'>8 r |
  r4 <b d'>8 q |
  <d' f'>4. <c' f'>8 |
  <c' e'>8[ <b d'> q <a c'>8] |
  <gis b>4\p r8 <a c'> |
  <gis b>4 r8 <a dis'> |

  \mbreak
  <gis e'>4 r8 <a c'> |
  <gis b>4 r8 <a dis'> |
  <gis e'>4 r8 <gis e'> |
  <a dis'>4 r8 <a cis'> |
  <b d'>4 r8 <a cis'> |
  \bar ".|" \key a \major
  <b d'>8\mf[ <cis' e'> <d' fis'> <cis' e'>8] |
  <b d'>4 r8 <gis b> |

  \mbreak
  <a cis'>8[ <b d'> <cis' e'> <b d'>8] |
  <a cis'>4 r8 <cis' a'> |
  <d' gis'>4 r8 <d' e'> |
  <cis' a'>4 r8 e' |
  <b d'>8 e' <a cis'> e' |
  <gis b>4 r8 <a cis'> |
  <b d'>8[ <cis' e'> <d' fis'> <cis' e'>8] |

  \mbreak
  <b d'>4 r8 <gis b> |
  <a cis'>8 <b d'> <cis' e'> <b d'> |
  <a cis'>4 r8 <cis' a'> |
  <d' gis'>4 r8 <d' e'> |
  <cis' a'>4 r8 <a cis'> |
  <cis' e'>8 <gis d'> <a cis'> <gis b> |
  a4 r

  \bar "|."
}

lowerVoice = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  \partial 8 { r8 } |
  R2 |
  r8 e,[ e,] r |
  R2 |
  r8 a,[ a,] r |
  r8 e,[ e,] r |
  r8 a,[ a,] r |

  gis,4 a, |
  \repeat unfold 2 {
    r8 e,[ e,] r |
    R2 |
  }
  r8 a,[ a,] r |
  r8 e,[ e,] r |

  r8 a,[ a,] r |
  e,4 e, |
  a,4 r |
  % key a\minor
  a,4 c |
  e4. c8 |
  b,8[ a, gis, a,8] |
  e,4 r |

  r8 <d gis>8[ q] r |
  r8 <c a>8[ q] r |
  <b, gis>4 <a, a> |
  e,4 r |
  c4 e |
  g4. e8 |
  d8[ c b, c8] |
  g,4 r |

  r8 <f g b> q r |
  r8 <e g c'> q r |
  <f, f>4 <g, d> |
  <c e>4 r8 <e, e> |
  <f, f>8\> <f, e>\! r4 |
  r4 r8 <e, e> |

  <f, f>8\> q\! r4 |
  r4 r8 <e, e> |
  <f, f>8\> q\! r4 |
  R2 |
  R2 |
  r8 e,[ e,] r |
  r8 e,[ e,] r |

  \repeat unfold 5 {r8 e,[ e,] r |}
  % \key a\major
  R2 |
  r8 e,[ e,] r |

  R2 |
  r8 a,[ a,] r |
  r8 e,[ e,] r |
  r8 a,[ a,] r |
  b,4 a, |
  r8 e,[ e,] r |
  R2 |

  r8 e,[ e,] r |
  R2 |
  r8 a,[ a,] r |
  r8 e,[ e,] r |
  r8 a,[ a,] r |
  e,4 e, |
  a,4 r
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 3"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Allegro."
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    % tabs are not completely developed
    \new TabStaff = "Guitar tabs" \with {
      restrainOpenStrings = ##t
    } <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 90
  }
}
