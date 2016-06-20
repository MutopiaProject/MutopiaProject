\version "2.19.35"

\header {
  title = "12 Etudes"
  composer = "F. Sor"
  opus = "Op. 6 No. 5"
  style = "Romantic"
  source = "N. Simrock, Berlin. Plate 9106"
  date = "c.1889"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "12 Etudes, No. 5"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/06/20-2124"
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
  \time 4/4
  \key c \major
}

upperVoice = \fixed c {
  \voiceOne
  \repeat volta 2 {
    <<{s4 g16 c' e' c' s4 g16 c' e' c'}\\{s4 g4 s4 g4}>> |
    <<{s4 a16 c' f' c' s4 a16 c' f' c'}\\{s4 a4 s4 a4}>> |
    <<{s4 g16 b f' b s4 g16 b f' b}\\{s4 g4 s4 g4}>> |
    <<{s4 g16 c' e' c' s4 g16 c' e' c'}\\{s4 g4 s4 g4}>> |
    \mbreak

    <<{s4 a16 c' e' c' s4 c'16 e' a' e'}\\{s4 a s c'}>> |
    <<{s4 c'16 fis' a' fis' s4 b16 e' g' e'}\\{s4 c' s b}>> |
    <<{s4 a16 c' e' c' s4 bes16 e' g' e'}\\{s4 a s bes}>> |
    <<{s4 a16 d' fis' d' d4 s}\\{s4 a s d'}>> |
    \mbreak

    <<{s4 d16 c' a' c' s4 d16 a c' a}\\{s4 d s d}>> |
    <<{s4 d16 g b g s4 g16 b d' b}\\{s4 d s g}>> |
    <<{s4 d16 c' a' c' s4 d16 a c' a}\\{s4 d s d}>> |
    <<{s4 d16 g16 b g s4 g16 b d' b}\\{s4 d s g}>> |
    \mbreak

    <<{s4 g16 d' g' d' s4 g16 d' f' d'}\\{s4 g s g}>> |
    <<{s4 g16 c' e' c' s4 c'16 e' a' e'}\\{s4 g s c'}>> |
    <<{s4 b16 d' g' d' s4 c'16 d' fis' d'}\\{s4 b s c'}>> |
    <<{s4 a16 c' fis' c' s4 g16 b g' b}\\{s4 a s g}>> |
    \mbreak

    <<{s4 g16 d' f' d' s4 gis16 d' f' d'}\\{s4 g s gis }>> |
    <<{s4 a16 c' e' c' s4 bes16 e' g' e'}\\{s4 a s bes}>> |
    <<{s4 b16 d' g' d' s4 a16 c' fis' c'}\\{s4 b s a}>> |
    <<{g,8 <b g'> d16 g b g g,4 b\rest}\\{g,4 d g, s}>> |
  }
  \mbreak

  \repeat volta 2 {
    <<{s4 g16 c' g' c' s4 bes16 d' g' d'}\\{s4 g s bes}>> |
    <<{s4 a16 e' g' e' s4 a16 d' f' d'}\\{s4 a s a}>> |
    <<{s4 b16 d' e' d' s4 a16 cis' e' cis'}\\{s4 b s a}>> |
    <<{s4 a16 cis' g' cis' s4 a16 d' f' d'}\\{s4 a s a}>> |
    \mbreak

    <<{s4 a16 d' f' d' s4 aes16 d' f' d'}\\{s4 a s aes}>> |
    <<{s4 g16 d' f' d' s4 g16 c' e' c'}\\{s4 g s g}>> |
    <<{s4 f16 d' f' d' s4 ees16 a c' a}\\{s4 f s ees}>> |
    <<{s4 d16 g b g g,4 b8\rest g}\\{s4 d s s}>> |
    \mbreak

    <<{s4 g16 d' f' d' s4 g16 d' f' d'}\\{s4 g s g}>> |
    <<{s4 g16 c' e' c' s4 g16 c' e' c'}\\{s4 g s g}>> |
    <<{s4 g16 d' f' d' s4 g16 d' f' d'}\\{s4 g s g}>> |
    <<{s4 g16 c' e' c' s4 g16 c' e' c'}\\{s4 g s g}>> |
    \mbreak

    <<{s4 g16 c' g' c' s4 bes16 cis' g' cis'}\\{s4 g s bes}>> |
    <<{s4 a16 d' f' d' s4 c'16 ees' a' ees'}\\{s4 a s c'}>> |
    <<{s4 c'16 e' g' e' s4 f16 g b g }\\{s4 c' s f}>> |
    <<{s4 f16 g b g s4 e16 g c' g}\\{s4 f s e}>> |
    \mbreak

    <<{s4 bes16 c' g' c' s4 bes16 cis' g' cis'}\\{s4 bes s bes}>> |
    <<{s4 a16 d' f' d' s4 c'16 ees' a' ees'}\\{s4 a s c'}>> |
    <<{s4 c'16 e' g' e' s4 f16 g b g}\\{s4 c' s f}>> |
    <<{s4 f16 g b g s4 g16 c' e' c'}\\{s4 f s g}>> |
    \mbreak

    <<{s4 a16 d' f' d' s4 g16 b f' b}\\{s4 a\p s g}>> |
    <<{s4 g16 c' e' c' s4 bes16 e' g' e'}\\{s4 g s bes}>> |
    <<{s4 a16 c' f' c' s4 g16 b f' b}\\{s4 a s g}>> |
    <<{s4 g16 c' e' c' s4 g16 b f' b}\\{s4 g\pp s g}>> |
    \mbreak

    <<{s4 g16 c' e' c' s4 g16\dim b\! f' b}\\{s4 g s g}>> |
    <<{s4 g16 b f' b s4 g16 b f' b}\\{s4 g s g}>> |
    <<{s4_\markup{\italic "perdendosi"} g16 c' e' c' s4 g16 c' e' c'}\\{s4 g s g}>> |
    <<{s4 g16 c' e' c' s2}\\{s4 g c b\rest}>> |
  }

  \bar "|."
}

lowerVoice = \fixed c {
  \voiceThree
  <<{c8 e s4 c8 e s4}\\{c2 c}>> |
  <<{c8 f s4 c8 f s4}\\{c2 c}>> |
  <<{c8 d s4 c8 d s4}\\{c2 c}>> |
  <<{c8 e s4 c8 e s4}\\{c2 c}>> |

  <<{a,8 e s4 a,8 a s4}\\{a,2 a,}>> |
  <<{d8 a s4 e8 g s4}\\{d2 e}>> |
  <<{c8 e s4 cis8 g s4}\\{c2 cis}>> |
  <<{d8 fis s4 s}\\{d2 s}>> |

  \repeat unfold 2 {
    <<{fis,8 a, s4 fis,8 a, s4}\\{fis,2 fis,}>> |
    <<{g,8 b, s4 g,8 d s4}\\{g,2 g,}>> |
  }

  <<{b,8 d s4 b,8 d s4}\\{b,2 b,}>> |
  <<{c8 e s4 a,8 e s4}\\{c2 a,}>> |
  <<{d8 g s4 d8 a s4}\\{d2 d}>> |
  <<{dis8 c' s4 e8 b s4}\\{dis2 e}>> |

  <<{b,8 d s4 b,8 d s4}\\{b,2 b,}>> |
  <<{c8 e s4 cis8 g s4}\\{c2 cis}>> |
  <<{d8 g s4 d8 c' s4}\\{d2 d}>> |
  s1 |

  <<{e8 c' s4 d8 d' s4}\\{e2 d}>> |
  <<{cis8 e' s4 d8 d' s4}\\{cis2 d}>> |
  <<{g,8 d' s4 a,8 cis' s4}\\{g,2 a,}>> |
  <<{d8 cis' s4 d8 d' s4}\\{d2 d}>> |

  <<{d8 d' s4 c8 d' s4}\\{d2 c}>> |
  <<{b,8 d s4 c8 e s4}\\{b,2 c}>> |
  <<{f,8 a s4 fis,8 a s4}\\{f,2 fis,}>> |
  <<{g,8 g s4 s}\\{g,2 s}>> |

  \repeat unfold 2 {
    <<{b,8 d s4 b,8 d s4}\\{b,2 b,}>> |
    <<{c8 e s4 c8 e s4}\\{c2 c}>> |
  }

  <<{e,8 e s4 e,8 e s4}\\{e,2 e,}>> |
  <<{f,8 f s4 fis,8 a s4}\\{f,2 fis,}>> |
  <<{g,8 g s4 g,8 d }\\{g,2 g,}>> |
  <<{c8 g s4 c8 g s4}\\{c2 c}>> |

  <<{e,8 e s4 e,8 e s4}\\{e,2 e,}>> |
  <<{f,8 f s4 fis,8 a s4}\\{f,2 fis,}>> |
  <<{g,8 g s4 g,8 d }\\{g,2 g,}>> |
  <<{c8 g s4 c8 e s4}\\{c2 c}>> |

  <<{c8 f s4 c8 d s4}\\{c2 c}>> |
  <<{c8 e s4 c8 g s4}\\{c2 c}>> |
  <<{c8 f s4 c8 d s4}\\{c2 c}>> |
  <<{c8 e s4 c8 d s4}\\{c2 c}>> |

  <<{c8 e s4 c8 d s4}\\{c2 c}>> |
  <<{c8 d s4 c8 d s4}\\{c2 c}>> |
  <<{c8 e s4 c8 e s4}\\{c2 c}>> |
  <<{c8 e s4*3}\\{c2 s}>> |
  
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 5"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Andante."
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
    \tempo 4 = 84
  }
}
