\include "italiano.ly"
\include "common/includes.ily"
\include "common/clef-key.ily"
\include "common/titling.ily"
\include "common/music-commands.ily"
\include "common/marks.ily"
\include "common/staff.ily"
\layout { incipit-width = 10.5\mm }
\include "common/layout.ily"

#(set-global-staff-size 14)


%%% Title page
%%%
\paper {
  bookTitleMarkup = \markup \when-property #'header:title \column {
    \vspace #9
    \fill-line { \fontsize #11 \italic \fromproperty #'header:composer }
    \vspace #1
    \fill-line { \fontsize #11 \italic \fromproperty #'header:poet }
    \vspace #9
    \fill-line { \fontsize #13 \fromproperty #'header:title }
    \vspace #9
    \fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
    \vspace #9
    \fill-line { \fontsize #6 \fromproperty #'header:date }
    \vspace #1 
    \fill-line {
      \when-property #'header:arrangement \column {
        \vspace #6
        \fill-line { \fontsize #3 \fromproperty #'header:arrangement }
      }
    }
  }
  scoreTitleMarkup = \markup \null
}

