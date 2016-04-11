\version "2.19.36"

\header {
  title = "Six Petites Pièces"
  composer = "F. Sor"
  opus = "Op. 45 No. 1"
  style = "Classical"
  source = "Paris:Shonenberger, n.d. Plate S.1767, edited by N. Coste"
  date = "c.1835"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Six Petites Pièces, No. 1"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
  moreInfo = "With the forward: Let's see if that's that. Six short and easy pieces in stages, which aim to lead to what has generally been agreed are difficulties. Composed and dedicated to the person with the least patience, by Fernando Sor. Opus 45."

 footer = "Mutopia-2016/04/11-2109"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #12
}

mbreak = {} % { \break }
global = {
  \time 3/4
  \key g\major
}

upperVoice = \relative c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t
  \partial 8 { d8 } |
  g2 s4 |
  d'4 b d, |
  g4. b8[ <d-1>8. c16] |
  a4 r b |
  c8. g'16 g4 b, |

  \mbreak
  b8 a gis[ a] c e |
  <fis,-4>4 g b |
  a8. fis16 d4 d |
  g2 <g b>4 |
  \oneVoice <b d>4 <g b> d |
  \voiceOne g4. b8 d8. b16 |    % 1st beat gets a dotted 4th

  \mbreak
  a2 b4 |
  c8. e16 g4 b, |
  a8 dis fis[( e)] c8 a |
  g8. b16 <d-4>4 <a c fis>4 |
  <b g'>4 r b |
  \shiftOnn\override NoteColumn.force-hshift = #-1
  b8. <c-2>16 b4 b |
  b4 e b |

  \mbreak
  \barNumberCheck #19
  <a-1>8. b16 a4 a |
  a4 d <fis-1> |
  \revert NoteColumn.force-hshift
  \shiftOff
  fis8. b,16 e4 <d-4> |
  <cis-2>2 d4 |
  e8. b16 <g'-2>4 <cis,-1> |
  <d-1>4 r d |

  \mbreak
  \barNumberCheck #25
  <d-1>8. <e-4>16 d4 b |
  <d-1>4 <c-1> a |
  b8. <a c>16 d4 b |
  <a-1>4 r d |
  <d-1>8. <g-1>16 d4 b |
  c8. <d-4>16 c4 a |

  \mbreak
  b4 b8. d16 cis8. e16 |
  <d-1>4 r <d,-0> |
  \shiftOnn\once\override NoteColumn.force-hshift = #-1
  g2 <g b>4 |
  \shiftOff
  d'4 b d, |
  \shiftOnn\once\override NoteColumn.force-hshift = #-1
  g4. b8 d8. b16 |
  \shiftOff
  a4 r b |

  \mbreak
  c8. g'16 g4 b, |
  b8( a) gis8[( a)] b c |
  fis,4 g b |
  a16( b a) fis d4 d |
  \shiftOnn\once\override NoteColumn.force-hshift = #-1
  g2 <g b>4 \shiftOff |
  <b d>4 <g b> d |

  \mbreak
  \shiftOnn\once\override NoteColumn.force-hshift = #-1
  g4. <g b>8 <b d> <g b> \shiftOff |
  a2 b4 |
  c8. g'16 g4 b, |
  a8 dis fis[( e)] c a |
  g8. b16 d4 \stemDown <d, a' c fis> |
  \oneVoice <g, g' b g'>2 r4

  \bar "|."
}

LF = {
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t
}
lowerVoice = \relative c {
  \voiceTwo
  \partial 8 {s8} |
  \LF
  g8. b16 d4 <g b> |
  b4 g r |
  g,8 b d[ g b8. a16] |
  <fis-4>4 d g8 f |
  e2 d4 |

  <c-3>2 r4 |
  <c-3>4 b g |
  d'8 r r c b a |
  g8 b d2 |
  s2. |
  g,8. b16 d8[ g b8. g16] |

  fis2 f4 |
  e2 d4 |
  <c-2>2 r4 |
  d2 d4 |
  g4 g, s |
  << { \voiceTwo\LF \repeat unfold 3 { <dis'-1>8[ <a'-3>] } } \\ { \voiceThree dis,4 dis dis } >> |
  << { \voiceTwo \repeat unfold 3 {e8[ g] } } \\ { \voiceThree e4 e e } >> |

  << { \voiceTwo\LF \repeat unfold 3 { <cis-3>8[ <g'-4>] } } \\ { \voiceThree cis,4  cis cis }  >>
  << { \voiceTwo d8[ fis]( fis4) d } \\ { \voiceThree d2 s4 } >>
  g2 <gis-1>4 |
  <a-1>4 g fis |
  g2 <g, g'>4 |
  <d'-3 fis>4 d d |

  b'8 d, d'[ d,] g d |          % 25
  b'8 d, a'[ d,] fis d |
  g8 d b'[ d,] g d |
  <fis-3>8 <d-0> d d d'[ d,] |
  b'8 d, d'[ d,] gis d |
  a'8 d, c'[ d,] <fis-4> d |

  \barNumberCheck #31
  g8 d g[ d] g d |
  <fis-3>4 <d-3>2 |
  << { \voiceTwo g,2 s4 } \\ { \voiceThree g8. b16 d2 } >> |
  b'4 g r |
  << { \voiceTwo g,8 b d g b8. g16 } \\ { \voiceThree s4 d2 } >> |
  fis4 d g8 f |

  \barNumberCheck #37
  e2 d4 |
  c2 r4 |
  c4 b g |
  d'4 r8 c b a |
  << { \voiceTwo g2 s4 } \\ { \voiceThree g8. b16 d2 } >> |
  s2. |

  \barNumberCheck #43
  << {\voiceTwo g,2 s4 } \\ {\voiceThree g8 b \stemDown d2 } >>
  fis2 f4 |
  e2 d4 |
  c2 r4 |
  d2 s4 |
  s2. |
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 1"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo Andantino
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
    \tempo 4 = 96
  }
}
