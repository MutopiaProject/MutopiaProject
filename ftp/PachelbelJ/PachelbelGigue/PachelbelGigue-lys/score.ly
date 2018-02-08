\version "2.18.2"
\include "deutsch.ly"

\header {
  title = "Gigue"
  composer = "Johann Pachelbel"

  mutopiatitle = "Gigue"
  mutopiacomposer = "PachelbelJ"
  mutopiainstrument = "3 Violins, Continuo"
  date = "1694"
  source = "Manuscript 1838-1842"
  style = "Baroque"
  license = "Creative Commons Attribution 4.0"
  maintainer = "Urs Metzger"

 footer = "Mutopia-2018/02/08-2212"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2018 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper{
  ragged-last-bottom = ##f
}

\include "voices.ily"

\score {
  \new StaffGroup {
    <<
      \new Staff = vl_i {
        \set Staff.instrumentName = "Violino 1"
        \set Staff.midiInstrument = #"violin"
        \set Staff.midiPanPosition = #-1.0
        \set Staff.midiMaximumVolume = #0.9
        \violin_i
      }
      \new Staff = vl_ii {
        \set Staff.instrumentName = "Violino 2"
        \set Staff.midiInstrument = #"viola"
        \set Staff.midiPanPosition = #0
        \set Staff.midiMaximumVolume = #0.95
        \violin_ii
      }
      \new Staff = vl_iii {
        \set Staff.instrumentName = "Violino 3"
        \set Staff.midiInstrument = #"violin"
        \set Staff.midiPanPosition = #1.0
        \set Staff.midiMaximumVolume = #0.9
        \violin_iii
      }
      \new Staff {
        \set Staff.instrumentName = "Basso"
        \set Staff.midiInstrument = #"harpsichord"
        \set Staff.midiPanPosition = #0
        \set Staff.midiMaximumVolume = #1
        \bass
      }
    >>
  }
  \layout{ indent = 20 \mm }
  \midi { \tempo 4. = 90 }
}
