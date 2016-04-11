\version "2.19.36"

\header {
  title = "Six Petites Pièces"
  composer = "F. Sor"
  opus = "Op. 45 No. 4"
  style = "Classical"
  source = "Paris:Shonenberger, n.d. Plate S.1767, edited by N. Coste"
  date = "c.1835"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Six Petites Pièces, No. 4"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
  moreInfo = "With the forward: Let's see if that's that. Six short and easy pieces in stages, which aim to lead to what has generally been agreed are difficulties. Composed and dedicated to the person with the least patience, by Fernando Sor. Opus 45."

 footer = "Mutopia-2016/04/11-2112"
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
  system-count = #16
}

mbreak = { } % { \break }
global = {
  \time 3/8
  \key c \major
}

u_motif_a_i = \relative {
  g16. c32 e8 e |
  c16 e g8 g |
  g8( f) d |
  c8 b g |
  g16. c32 e8 e |

  a,16. d32 f8 f |
  b,16 c d8 b |
  <c, e c'>8 r
}
u_motif_a_ii = \relative {
  <g e'>8 |
  d'16 c a'8 d, |
  d16. b32 g'8 b, |
  \slashedGrace{d8} c16. b32 c8 d |
  b8( d) d |

  d16. c32 a'8 d, |
  d16. b32 g'8 <g, b> |
  \slashedGrace{d'8} c16. b32 c8 a |
  g8 g, g' |
  g16. c32 e8 e |
  c16. e32 g8 g |

  g16( fis) f e d c |
  c16 b a g f g |
  e16 g c g e'8 |
  f,16 a d a f'8 |
  b,16 c d8 b |
  <e, c'>8 s
}

u_motif_b = \relative {
  b16 g d'8 b |
  c16 g e'8 c |

  d16 g, f'8 d |
  e8 c c |
  b16 g d'8 b |
  c16 g e'8 c |
  d16 a f'8 b, |
  c4 c8 |

  f8 a, f |
  e16 g c( b) d( c) |
  bes16( g) e g c, e |
  f16 a c8 c |
  f8[ s f,16 a] |

  bes16 d bes,8[ <d' f>8] |
  \shiftOnn \once\override NoteColumn.force-hshift=#-1 e4 g8 \shiftOff |
}

upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \repeat volta 2 {
    \partial 8 {g8} |
    \u_motif_a_i
  }
  \repeat volta 2 {
    \u_motif_a_ii
  }
  \repeat volta 2 {
    s8 |

    \mbreak
    \barNumberCheck #25
    f'16[ c] a c f, c' |
    e,16 g d'( c) bes[ c] |
    g16 c e, c' c, c' |
    f,16[ a] c8 c |
    f16 c a[ c] f, c' |
    e,16 g c( b) d( c) |

    \mbreak
    \barNumberCheck #31
    bes8 e e |
    <a, f'>8 s4 |
    f'16[ c] a c f, c' |
    e,16 g d'( c) bes[ c] |
    g16 c e, c' c, c' |
    f,16[ a] c8 c |

    \mbreak
    \barNumberCheck #37
    f16 c a[ c] f, c' |
    e,16. g32 c16( b) d( c) |
    bes8 e e |
    <a, f'>8 s4 |

    \u_motif_b                  %41 -55
    <f, a' f'>8 s4 |
    \u_motif_b
    <f a' f'>8 s4 |

    \u_motif_a_i
  }
  \repeat volta 2 {
    \u_motif_a_ii
    s8
  }

  \bar "|."
}


l_motif_a = \relative {
  <c g'~>4. |
  <e g>4. |
  <d a'>4. |
  g4 e8 |
  e4. |

  f4. |
  g4 <g, f'>8 |
  s4 g'8
  <fis d'>4. |
  <g d'>4 g8 |
  <d a'>4 fis8 |
  g4 r8 |

  <fis d'>4. |
  <g d'>4. |
  <d a'>4 fis8 |
  s8 g,4 |
  <c g'~>4. |
  <e g>4. |

  <d a'>4. |
  g8 r f |
  e4. |
  f4. |
  g4 <g, f'>8 |
}

l_motif_b = \relative {
  f4. |
  e4. |

  g,4. |
  c4. |
  f4. |
  e4 a8 |
  f4 g8 |
  \tuplet 3/2 { c,16 e g } c8[ bes] |

  f'16 c a[ c] f, c' |
  e,4. |
  r8 e c |
  f4. |
  f'16 c a c f,8 |

  bes8\noBeam bes,\noBeam d' |
  << {\voiceTwo g,8 c, c } \\ {\voiceThree\stemUp g'16[ c] c,8 bes'} >>
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 8 {s8} |
  \l_motif_a
  c8 r c' |                     %split bar at repeat

  \barNumberCheck #25
  f8 a, f |
  e4 bes'8 |
  g8 e c |
  f4 r8 |
  f'8 a, f |
  e4. |

  \barNumberCheck #31
  << {\voiceTwo r8 c c} \\ {\voiceThree\stemDown bes'8 bes bes} >> |
  f8 r c' |
  f8 a, f |
  e4 bes'8 |
  g8 e c |
  f4 r8 |

  \barNumberCheck #37
  f'8 a, f |
  e4. |
  << {\voiceTwo r8 c c} \\ {\voiceThree\stemDown bes'8 bes bes} >> |
  f8 r c' |
  \l_motif_b
  f,,8 r c'' |
  \l_motif_b
  f,,8 r g' |
  \l_motif_a
  c,8 r r
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = \markup{\center-column{"Nº 4" "Waltz"}}
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"

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
    \tempo 4 = 74
  }
}
