\version "2.16.2"

#(set-global-staff-size 16)



\include "flauti.ly"
\include "oboi.ly"
\include "clarinetti.ly"
\include "fagotti.ly"
\include "cornic.ly"
\include "trombec.ly"
\include "timpani.ly"
\include "violinoone.ly"
\include "violinotwo.ly"
\include "viola.ly"
\include "violoncello.ly"
\include "basso.ly"

% information valid for all instruments
\include "struktur.ly"

\header {
  title = "Symphony No. 5 - Opus 67"
  subtitle = "2nd Movement"
  composer =  "Ludwig van Beethoven"
  mutopiatitle = "Symphony No. 5 - Opus 67 (2nd Movement)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Orchestra"
  mutopiaopus = "Op. 67"
  date = "1807/08"
  source = "Breitkopf and Härtel (1862-1865)"
  style = "Classical"
  maintainer = "Stelios Samelis (adapted to v2.16 by Johannes Heinecke)"
  lastupdated = "2017/March/11"
  version = "2.16.2"
 %tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
  license = "Public Domain"
  footer = "Mutopia-2017/12/08-1437"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}


\score {
  \new StaffGroup { <<
    \new Staff = "one" {
      \set Staff.shortInstrumentName = "Fl"
      <<
        \context Voice = "text"\struktur
        %\context Voice = "umbruch"\partiturUmbruch
        \context Voice = fl\flauti
      >>
    }

    \new Staff = "two" {
      \set Staff.shortInstrumentName = "Ob"
      \oboi
    }

    \new Staff = "three" {
      \set Staff.shortInstrumentName = "Cl"
      \transposition bes
      \clarinetti
    }

    \new Staff = "four" {
      \set Staff.shortInstrumentName = "Fa"
      \fagotti
    }

    \new Staff = "five" {
      \set Staff.shortInstrumentName = "Co"
      \cornic
    }

    \new Staff = "six" {
      \set Staff.shortInstrumentName = "Tb"
      \trombec
    }

    \new Staff = "seven" {
      \set Staff.shortInstrumentName = "Ti"
      \timpani
    }

    \new PianoStaff <<
      \new Staff = "eight" {
        \set Staff.shortInstrumentName = "Vi1"
        \violinoone
      }

      \new Staff = "nine" {
        \set Staff.shortInstrumentName = "Vi2"
        \violinotwo
      }
    >>

    \new Staff = "ten" {
      \set Staff.shortInstrumentName = "Va"
      \viola
    }

    \new PianoStaff <<
      \new Staff = "eleven" {
        \set Staff.shortInstrumentName = "Vc"
        \violoncello
      }

      \new Staff = "twelve" {
        \set Staff.shortInstrumentName = "Cb"
        \basso
      }
    >>

  >> }

  \layout {
    indent = 3.0\cm
    \context {
      \Staff \RemoveEmptyStaves
      %% To use the setting globally, uncomment the following line:
      %%\override VerticalAxisGroup #'remove-first = ##t
    }
  }


  \midi { }

}

\paper {
  after-title-space = 2\cm
  system-separator-markup = \slashSeparator
}
