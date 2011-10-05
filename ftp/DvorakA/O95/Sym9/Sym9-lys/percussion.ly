\version "2.14.0"

\include "header.ily"
\include "woods.notesA.ily"
\include "brass.notesA.ily"
\include "strings.notesA.ily"
\include "percussion.notesA.ily"

\addQuote "horn1mA"  \keepWithTag#'quote \hornImA
\addQuote "horn3mA"  \keepWithTag#'quote \hornIIImA
\addQuote "trombone1mA" \keepWithTag#'quote \tromboneImA
\addQuote "flute1mA" \keepWithTag#'quote \fluteImA
\addQuote "violin1mA" \keepWithTag#'quote \violinImA
\addQuote "clarinet1mA" \keepWithTag#'quote \clarinetImA

\include "woods.notesL.ily"
\include "brass.notesL.ily"
\include "strings.notesL.ily"
\include "percussion.notesL.ily"

\addQuote "violin1mL" \keepWithTag#'quote \violinImL
\addQuote "flute1mL" \keepWithTag#'quote \fluteImL
\addQuote "trombonemL" \keepWithTag#'quote <<\tromboneImL \tromboneIImL>>
\addQuote "trumpet1mL" \keepWithTag#'quote \trumpetImL

\include "woods.notesS.ily"
\include "brass.notesS.ily"
\include "strings.notesS.ily"
\include "percussion.notesS.ily"

\addQuote "violin1mS" \keepWithTag#'quote \violinImS
\addQuote "flute1mS" \keepWithTag#'quote \fluteImS
\addQuote "oboe1mS" \keepWithTag#'quote \oboeImS
\addQuote "horn3mS" \keepWithTag#'quote \hornIIImS
\addQuote "clarinet1mS" \keepWithTag#'quote \clarinetImS

\include "woods.notesF.ily"
\include "brass.notesF.ily"
\include "strings.notesF.ily"
\include "percussion.notesF.ily"

\addQuote "violin1mF" \keepWithTag#'quote \violinImF
\addQuote "cymbalmF" \keepWithTag#'quote \cymbalmF
\addQuote "clarinetsmF" \keepWithTag#'quote \clarinetImF
\addQuote "flutesmF" \keepWithTag#'quote \fluteImF
\addQuote "oboesmF" \keepWithTag#'quote \oboeImF
\addQuote "cellomF" \keepWithTag#'quote \cellomF
\addQuote "bassmF" \keepWithTag#'quote \bassmF

\paper {
  #(layout-set-staff-size 20)
  system-system-spacing #'basic-distance = #18
  score-markup-spacing #'basic-distance = #20
  page-breaking-system-system-spacing #'basic-distance = #12
}
#(define output-suffix "Timpani")
#(define output-count 0)
\book {
  \header { instrument = "Timpani" }
  %%{%A
  \score {
    \keepWithTag #'part \new Staff << \timpanimA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } %}
  %%{%L
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \timpanimL \conductormL >>
    \header { piece = \markup\huge"Movement II" }
    \layout { system-count = 5 }
  } } %}
  \bookpart {
    \paper { bookTitleMarkup = "" }
    %%{%S
    \score {
      \keepWithTag #'part \removeWithTag #'alt \new Staff
      << \timpanimS \conductormS >>
      \header { piece = \markup\huge"Movement III" }
    } %}
    %%{%F
    \score {
      \keepWithTag #'part \new Staff <<
        #(add-grace-property 'Staff 'Stem 'stroke-style "grace")
        \timpanimF \conductormF
      >>
      \header { piece = \markup\huge"Movement IV" }
    } %}
  }
}
#(define output-suffix "TriangleCymbal")
#(define output-count 0)
\book{
  \header { instrument = "Triangle, Cymbal" }
  \bookpart {
    \markup\huge{"Movement I & II Tacet"}
    %%{%S
    \score {
      \keepWithTag #'part \removeWithTag #'alt
      \new Staff \with { instrumentName = #"Triangle" }
      << \trianglemS \conductormS >>
      \header { piece = \markup\huge"Movement III" }
    } %}
  }
  %%{%F
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff \with { instrumentName = #"Cymbal" }
    << \cymbalmF \conductormF >>
    \header {piece = \markup\huge"Movement IV"}
    \layout { system-count = 4 }
  } } %}
}
