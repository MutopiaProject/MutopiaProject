\version "2.14.0"
\include "header.ily"

\include "woods.notesA.ily"
\include "brass.notesA.ily"
\include "strings.notesA.ily"
\include "percussion.notesA.ily"

\addQuote "flute1mA" \keepWithTag#'quote \fluteImA
\addQuote "trombone1mA" \keepWithTag#'quote \tromboneImA
\addQuote "violin1mA" \keepWithTag#'quote \violinImA
\addQuote "violin2mA" \keepWithTag#'quote \violinIImA

\include "woods.notesL.ily"
\include "brass.notesL.ily"
\include "strings.notesL.ily"
\include "percussion.notesL.ily"

\addQuote "flute1mL" \keepWithTag#'quote \fluteImL
\addQuote "violin1mL" \keepWithTag#'quote \violinImL
\addQuote "cellomL" \keepWithTag#'quote \cellomL
\addQuote "brassmL" \keepWithTag#'quote <<
  \tromboneImL \tromboneIImL \transpose c c' \bassTrombonemL
>>

\include "woods.notesS.ily"
\include "brass.notesS.ily"
\include "strings.notesS.ily"
\include "percussion.notesS.ily"

\addQuote "flute1mS" \keepWithTag#'quote \fluteImS
\addQuote "cellomS" \keepWithTag#'quote \cellomS
\addQuote "bassmS" \keepWithTag#'quote \bassmS
\addQuote "violin1mS" \keepWithTag#'quote \violinImS
\addQuote "violin2mS" \keepWithTag#'quote \violinIImS
\addQuote "violamS" \keepWithTag#'quote \violamS
\addQuote "clarinet1mS" \keepWithTag#'quote \clarinetImS

\include "woods.notesF.ily"
\include "brass.notesF.ily"
\include "strings.notesF.ily"
\include "percussion.notesF.ily"

\addQuote "flute1mF" \keepWithTag#'quote \fluteImF
\addQuote "clarinet1mF" \keepWithTag#'quote \clarinetImF
\addQuote "cellomF" \keepWithTag#'quote \cellomF
\addQuote "horn1mF" \keepWithTag#'quote \hornImF
\addQuote "violamF" \keepWithTag#'quote \violamF

\paper {
  system-system-spacing #'basic-distance = #18
  score-markup-spacing #'basic-distance = #20
  page-breaking-system-system-spacing #'basic-distance = #12
}
#(define output-suffix "Violin1")
#(define output-count 0)
\book {
  \paper { #(layout-set-staff-size 18) }
  \header { instrument = "Violin I" }
  %%{%A
  \bookpart { \score {
    \keepWithTag #'part \new Staff << \violinImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
    \layout { \context {
      \Score \override SpacingSpanner #'spacing-increment = #1.0
    } }
  } } %}
  %%{%L
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \violinImL \conductormL >>
    \header { piece = \markup\huge"Movement II" }
  } } %}
  %%{%S
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \violinImS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } } %}
  %%{%F
  \bookpart {
    \paper { bookTitleMarkup = "" }
    \score { \keepWithTag #'part \new Staff << \violinImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } } %}
}
#(define output-suffix "Violin2")
#(define output-count 0)
\book {
  \paper { #(layout-set-staff-size 18) }
  \header { instrument = "Violin II" }
  %%{%A
  \bookpart { \score {
    \keepWithTag #'part \new Staff << \violinIImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } } %}
  %%{%L
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \violinIImL \conductormL >>
    \header { piece = \markup\huge"Movement II"}
  } } %}
  %%{%S
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \violinIImS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
    \layout { \context {
      \Score \override SpacingSpanner #'spacing-increment = #1.0
    } }
  } } %}
  %%{%F
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \violinIImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } } %}
}
#(define output-suffix "Viola")
#(define output-count 0)
\book {
  \paper { #(layout-set-staff-size 18) }
  \header { instrument = "Viola" }
  \markup \large{ "Movement I starts on page" \page-ref #'mA "0" "?" "." }
  \pageBreak
  %%{%A
  \label #'mA \score {
    \keepWithTag #'part \new Staff << \violamA \conductormA >>
    \header { piece = \markup\huge"Movement I"  }
  } %}
  %%{%L
  \score {
    \keepWithTag #'part \new Staff << \violamL \conductormL >>
    \header { piece = \markup \huge"Movement II" }
  } %}
  %%{%S
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \removeWithTag #'alt
    \new Staff << \violamS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } } %}
  %%{%F
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \violamF \conductormF >>
    \header { piece = \markup \huge"Movement IV" }
  } } %}
}
#(define output-suffix "Cello")
#(define output-count 0)
\book {
  \paper { #(layout-set-staff-size 18) }
  \header { instrument = "Cello" }
  %%{%F
  \bookpart { \score {
    \keepWithTag #'part \new Staff << \cellomF \conductormF >>
    \header { piece = \markup{
      \huge"Movement IV"
      \large{ "  (Movement I starts on page" \page-ref #'mA "0" "?" ".)" }
    } }
  } } %}
  %%{%A
  \bookpart { \paper { bookTitleMarkup = "" } \label #'mA \score {
    \keepWithTag #'part \new Staff << \cellomA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } } %}
  %%{%L
  \bookpart {
    \paper { bookTitleMarkup = "" }
    \score { \keepWithTag #'part \new Staff << \cellomL \conductormL >>
    \header { piece = \markup\huge"Movement II" }
  } } %}
  %%{%S
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \removeWithTag #'alt
    \new Staff << \cellomS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } } %}
}
#(define output-suffix "Contrabass")
#(define output-count 0)
\book {
  \header { instrument = "Contrabass"}
  \paper { #(layout-set-staff-size 19) }
  %%{%F
  \score {
    \keepWithTag #'part \new Staff << \bassmF \conductormF >>
    \header { piece = \markup{
      \huge"Movement IV"
      \large{ "  (Movement I starts on page" \page-ref #'mA "0" "?" ".)" }
    } }
  } %}
  %%{%A
  \label #'mA \score {
    \keepWithTag #'part \new Staff << \bassmA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } %}
  %%{%L
  \score {
    \keepWithTag #'part \new Staff << \bassmL \conductormL >>
    \header { piece = \markup\huge"Movement II" }
  } %}
  %%{%S
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \removeWithTag #'alt
    \new Staff << \bassmS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } } %}
}
