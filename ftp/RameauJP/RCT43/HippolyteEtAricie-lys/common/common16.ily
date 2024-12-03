\include "italiano.ly"
\include "common/includes.ily"
\include "common/clef-key.ily"
\include "common/titling.ily"
\include "common/music-commands.ily"
\include "common/marks.ily"
\include "common/staff.ily"
\layout { incipit-width = 12\mm }
\include "common/layout.ily"

#(set-global-staff-size 16)


%%% Title page
%%%
\paper {
  bookTitleMarkup = \markup \when-property #'header:title \column {
    \vspace #8
    \fill-line { \fontsize #10 \italic \fromproperty #'header:composer }
    \vspace #1
    \fill-line { \fontsize #10 \italic \fromproperty #'header:poet }
    \vspace #8
    \fill-line { \fontsize #12 \fromproperty #'header:title }
    \vspace #8
    \fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
    \vspace #8
    \fill-line { \fontsize #5 \fromproperty #'header:date }
    \vspace #1 
    \fill-line {
      \when-property #'header:arrangement \column {
        \vspace #5
        \fill-line { \fontsize #3 \fromproperty #'header:arrangement }
      }
    }
  }
  scoreTitleMarkup = \markup \null
}

