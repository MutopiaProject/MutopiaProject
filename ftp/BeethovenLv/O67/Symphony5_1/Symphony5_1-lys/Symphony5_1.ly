\version "2.16.2"

%#(set-global-staff-size 16)



\include "flauti.ly"
\include "oboi.ly"
\include "clarinetti.ly"
\include "fagotti.ly"
\include "cornies.ly"
\include "trombec.ly"
\include "timpani.ly"
\include "violinoone.ly"
\include "violinotwo.ly"
\include "viola.ly"
\include "violoncello.ly"
\include "basso.ly"

\include "struktur.ly"


\header {
  title = "Symphony No. 5 - Opus 67"
  subtitle = "1st Movement"
  composer =  "Ludwig van Beethoven"
  mutopiatitle = "Symphony No. 5 - Opus 67 (1st Movement)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Orchestra"
  mutopiaopus = "Op. 67"
  date = "1807/08"
  source = "Breitkopf and Härtel (1862-1865)"
  style = "Classical"
  maintainer = "Stelios Samelis (adapted to 2.16.2 by Johannes Heinecke)"
  lastupdated = "2017/March/11"
  version = "2.16.2"
  instrument = ""
% tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
  license = "Public Domain"
  footer = "Mutopia-2017/11/05-941"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}


\score {
  \new StaffGroup { <<

    \new Staff = "one" {
      \set Staff.instrumentName = "Flauti."
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
     \transposition ees
     \cornies
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
        \set Staff.instrumentName = "Violino I."
        \set Staff.shortInstrumentName = "Vi1"
        \violinoone
      }

      \new Staff = "nine" {
        \set Staff.instrumentName = "Violino II."
        \set Staff.shortInstrumentName = "Vi2"
        \violinotwo
      }
    >>

    \new Staff = "ten" {
      \set Staff.instrumentName = "Viola."
      \set Staff.shortInstrumentName = "Va"
      \viola
    }

    \new PianoStaff <<
      \new Staff = "eleven" {
       \set Staff.instrumentName = "Violoncello."
       \set Staff.shortInstrumentName = "Vc"
       \violoncello
      }

      \new Staff = "twelve" {
        \set Staff.instrumentName = "Basoo."
        \set Staff.shortInstrumentName = "Cb"
        \basso
      }
     >>
  >> }

  \layout {
    \context {
      \Staff \RemoveEmptyStaves
      %% To use the setting globally, uncomment the following line:
      %%\override VerticalAxisGroup #'remove-first = ##t
    }
  }
  \midi {
    \context{
      \Voice\remove "Dynamic_performer"
    }
  }
}

%{
\score {

 \unfoldRepeats

 \new StaffGroup {
 <<

 \new Staff = "one" {
 \flauti
 }

 \new Staff = "two" {
 \oboi
 }

 \new Staff = "three" {
 \transposition bes
 \clarinetti
 }

 \new Staff = "four" {
 \fagotti
 }

 \new Staff = "five" {
 \transposition ees
 \cornies
 }

 \new Staff = "six" {
 \trombec
 }

 \new Staff = "seven" {
 \timpani
 }

 \new PianoStaff <<
 \new Staff = "eight" {
 \violinoone
 }

 \new Staff = "nine" {
 \violinotwo
 }
 >>

 \new Staff = "ten" {
 \viola
 }

 \new PianoStaff <<
 \new Staff = "eleven" {
 \violoncello
 }

 \new Staff = "twelve" {
 \basso
 }
 >>

 >>
 }

 \midi { }

}
%}

\paper {
 after-title-space = 2\cm
 left-margin = 2.0\cm
 paper-width = 22\cm
}
