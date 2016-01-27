\version "2.19.32"

\header {
  title = "Sonate Brilliant"
  composer = "M. Giuliani"
  opus = "Op. 15"
  style = "Classical"
  source = "Vienna, S. A. Steiner & Co., Plate 933"
  date = "1808"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/01/27-2105"
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

\layout {
    indent = 2.8 \cm
  \context {
    \Voice
    % spanners are used throughout for fret position
    \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
    \override TextSpanner.bound-details.right.stencil-align-dir-y = #CENTER
    \override TextSpanner.dash-fraction = #0.3
    \override TextSpanner.dash-period = #1
    \override TextSpanner.font-size = #-2

    \override Hairpin.to-barline = ##f
  }
}

% common dynamic and text markup
dolce = \markup{\italic "dolce"}
mvoce = \markup{\italic "mezzo voce"}
poco = \markup{\italic "poco"}
apoco = \markup{\italic "a poco"}
loco = \markup{\italic "loco"}
sempre = \markup{\italic "sempre"}
pf = #(make-dynamic-script "pf")
apiacere = \markup{\small\italic "a piacere"}

mbreak = { }
%showLastLength = R1*10

\include "sonata.ly"
\score {
  <<
    \new Staff = "Sonata" \with {
      instrumentName = \markup{\smallCaps "SONATA"}
      midiInstrument = #"acoustic guitar (nylon)"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \key c \major
      \time 4/4
      \clef "treble_8"
      \tempo \markup{\small "Allegro spirito"}
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
  >>
  \layout {}
  \midi { \tempo 4 = 94 }
}

\include "adagio.ly"
\score {
  <<
    \new Staff = "Adagio" \with {
      \consists "Span_arpeggio_engraver"
      instrumentName = \markup {
        \override #'(baseline-skip . 1.5)
        \center-column {
          \line{\smallCaps\raise #1 "ADAGIO"}
          "con grand"
          "espressione"
        }
      }
      midiInstrument = #"acoustic guitar (nylon)"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \key g \major
      \time 2/4
      \clef "treble_8"
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
  >>
  \layout { }
  \midi { \tempo 4 = 94 }
}

\include "finale.ly"
\score {
  <<
    \new Staff = "Finale" \with {
      \consists "Span_arpeggio_engraver"
      instrumentName = \markup{\smallCaps "FINALE"}
      midiInstrument = #"acoustic guitar (nylon)"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \key c \major
      \time 3/8
      \clef "treble_8"
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
  >>
  \layout { }
  \midi { \tempo 4 = 94 }
}
