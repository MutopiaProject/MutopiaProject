\version "2.14.0"
% Antonín Dvořák
\include "header.ily"

\include "woods.notesA.ily"
\include "brass.notesA.ily"
\include "strings.notesA.ily"
\include "percussion.notesA.ily"

\addQuote "horn3mA" \keepWithTag#'quote \hornIIImA
\addQuote "horn1mA" \keepWithTag#'quote \hornImA
\addQuote "oboe1mA" \keepWithTag#'quote \oboeImA
\addQuote "trumpet1mA" \keepWithTag#'quote \trumpetImA
\addQuote "flute1mA" \keepWithTag#'quote \fluteImA
\addQuote "flute2mA" \keepWithTag#'quote \fluteIImA
\addQuote "violin1mA" \keepWithTag#'quote \violinImA
\addQuote "cellomA" \keepWithTag#'quote \cellomA
\addQuote "clarinet1mA" \keepWithTag#'quote \clarinetImA
\addQuote "bassoon1mA" \keepWithTag#'quote \bassoonImA

\include "woods.notesL.ily"
\include "brass.notesL.ily"
\include "strings.notesL.ily"
\include "percussion.notesL.ily"

\addQuote "violin1mL" \keepWithTag#'quote \violinImL
\addQuote "cellomL" \keepWithTag#'quote \cellomL
\addQuote "horn1mL" \keepWithTag#'quote \hornImL
\addQuote "hornsmL" \keepWithTag#'quote << \hornImL \hornIImL >>
\addQuote "oboe1mL" \keepWithTag#'quote \oboeImL
\addQuote "bassoon1mL" \keepWithTag#'quote \bassoonImL
\addQuote "oboe2mL" \keepWithTag#'quote \oboeIImL
\addQuote "clarinet1mL" \keepWithTag#'quote \clarinetImL
\addQuote "clarinetsmL" \keepWithTag#'quote << \clarinetImL \clarinetIImL >>
\addQuote "flute1mL" \keepWithTag#'quote \fluteImL

\include "woods.notesS.ily"
\include "brass.notesS.ily"
\include "strings.notesS.ily"
\include "percussion.notesS.ily"

\addQuote "violin1mS" \keepWithTag#'quote \violinImS
\addQuote "violamS" \keepWithTag#'quote \violamS
\addQuote "cellomS" \keepWithTag#'quote \cellomS
\addQuote "horn1mS" \keepWithTag#'quote \hornImS
\addQuote "horn3mS" \keepWithTag#'quote \hornIIImS
\addQuote "oboe1mS" \keepWithTag#'quote \oboeImS
\addQuote "clarinet1mS" \keepWithTag#'quote \clarinetImS
\addQuote "flute1mS" \keepWithTag#'quote \fluteImS

\include "woods.notesF.ily"
\include "brass.notesF.ily"
\include "strings.notesF.ily"
\include "percussion.notesF.ily"

\addQuote "horn3mF" \keepWithTag#'quote \hornIIImF
\addQuote "horn1mF" \keepWithTag#'quote \hornImF
\addQuote "oboe1mF" \keepWithTag#'quote \oboeImF
\addQuote "trumpet1mF" \keepWithTag#'quote \trumpetImF
\addQuote "trombone1mF" \keepWithTag#'quote \tromboneImF
\addQuote "flute1mF" \keepWithTag#'quote \fluteImF
\addQuote "flute2mF" \keepWithTag#'quote \fluteIImF
\addQuote "violin1mF" \keepWithTag#'quote \violinImF
\addQuote "cellomF" \keepWithTag#'quote \cellomF
\addQuote "bassmF" \keepWithTag#'quote \bassmF
\addQuote "clarinet1mF" \keepWithTag#'quote \clarinetImF
\addQuote "bassoon1mF" \keepWithTag#'quote \bassoonImF

\paper {
  #(layout-set-staff-size 19)
  system-system-spacing #'basic-distance = #18
  score-markup-spacing #'basic-distance = #20
  page-breaking-system-system-spacing #'basic-distance = #12
}
#(define output-suffix "Flute1")
#(define output-count 0)
\book {
  \header { instrument = "Flute I" }
  %%{%A
  \label #'mA \score {
    \keepWithTag #'part \new Staff << \fluteImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } %}
  %%{%L
  \score {
    \keepWithTag #'part \new Staff << \fluteImL \conductormL >>
    \header { piece = \markup\huge"Movement II" }
  } %}
  %%{%S
  \score {
    \keepWithTag #'part \new Staff << \fluteImS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } %}
  %%{%F
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \fluteImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } } %}
}
#(define output-suffix "Flute2")
#(define output-count 0)
\book {
  \header { instrument = "Flute II, Piccolo" }
  \bookpart {
    %%{%A
    \score {
      \keepWithTag #'part \new Staff << \fluteIImA \conductormA >>
      \header { piece = \markup\huge"Movement I" }
    } %}
    %%{%L
    \score {
      \keepWithTag #'part \new Staff << \fluteIImL \conductormL >>
      \header { piece = \markup\huge"Movement II" }
    } %}
  }
  %%{%S
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \fluteIImS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } } %}
  %%{%F
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \fluteIImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } } %}
}
#(define output-suffix "Oboe1")
#(define output-count 0)
\book {
  \header { instrument = "Oboe I" }
  %%{%A
  \score {
    \keepWithTag #'part \new Staff << \oboeImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } %}
  %%{%L
  \score {
    \keepWithTag #'part \new Staff << \oboeImL \conductormL >>
    \header { piece = \markup\huge"Movement II" }
  } %}
  %%{%S
  \score {
    \keepWithTag #'part \new Staff << \oboeImS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } %}
  %%{%F
  \score {
    \keepWithTag #'part \new Staff << \oboeImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } %}
}
#(define output-suffix "Oboe2")
#(define output-count 0)
\book {
  \header { instrument = "Oboe II, English Horn" }
  %%{%A
  \score {
    \keepWithTag #'part \new Staff << \oboeIImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } %}
  %%{%L
  \score {
    \keepWithTag #'part \new Staff << \oboeIImL \conductormL >>
    \header { piece = \markup\huge"Movement II" }
  } %}
  %%{%S
  \score {
    \keepWithTag #'part \new Staff << \oboeIImS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } %}
  %%{%F
  \score {
    \keepWithTag #'part \new Staff << \oboeIImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } %}
}
#(define output-suffix "Clarinet1")
#(define output-count 0)
\book {
  \header { instrument = "Clarinet I" }
  %%{%L
  \score {
    \keepWithTag #'part \new Staff << \clarinetImL \conductormL >>
    \header { piece = \markup{
      \huge"Movement II"
      \large{ "  (Movement I starts on page" \page-ref #'mA "0" "?" ".)" }
    } }
  } %}
  %%{%S
  \score {
    \keepWithTag #'part \removeWithTag #'alt
    \new Staff << \clarinetImS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } %}
  %%{%F
  \score {
    \keepWithTag #'part \new Staff << \clarinetImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } %}
  %%{%A
  \label #'mA \score {
    \keepWithTag #'part \new Staff << \clarinetImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } %}
}
#(define output-suffix "Clarinet2")
#(define output-count 0)
\book {
  \header { instrument = "Clarinet II" }
  %%{%A
  \score {
    \keepWithTag #'part \new Staff << \clarinetIImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } %}
  %%{%L
  \score {
    \keepWithTag #'part \new Staff << \clarinetIImL \conductormL >>
    \header { piece = \markup \huge"Movement II" }
  } %}
  %%{%S
  \score {
    \keepWithTag #'part \removeWithTag #'alt
    \new Staff << \clarinetIImS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } %}
  %%{%F
  \score {
    \keepWithTag #'part \new Staff << \clarinetIImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } %}
}
%}
#(define output-suffix "Bassoon1")
#(define output-count 0)
\book {
  \header { instrument = "Bassoon I" }
  %%{%L
  \bookpart { \score {
    \keepWithTag #'part \new Staff << \bassoonImL \conductormL >>
    \header { piece = \markup {
      \huge"Movement II"
      \large{ "  (Movement I starts on page" \page-ref #'mA "0" "?" ".)" }
    } }
  } } %}
  \bookpart {
    \paper { bookTitleMarkup = "" }
    %%{%S
    \score {
      \keepWithTag #'part \removeWithTag #'alt
      \new Staff << \bassoonImS \conductormS >>
      \header { piece = \markup\huge"Movement III" }
    } %}
    %%{%F
    \score {
      \keepWithTag #'part \new Staff << \bassoonImF \conductormF >>
      \header { piece = \markup \huge"Movement IV" }
    } %}
    %%{%A
    \label #'mA \score {
      \keepWithTag #'part \new Staff << \bassoonImA \conductormA >>
      \header { piece = \markup\huge"Movement I" }
    } %}
  }
}
#(define output-suffix "Bassoon2")
#(define output-count 0)
\book {
  \header { instrument = "Bassoon II" }
  %%{%A
  \score {
    \keepWithTag #'part \new Staff << \bassoonIImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } %}
  %%{%L
  \score {
    \keepWithTag #'part \new Staff << \bassoonIImL \conductormL >>
    \header { piece = \markup\huge"Movement II" }
  } %}
  %%{%S
  \score {
    \keepWithTag #'part \removeWithTag #'alt
    \new Staff << \bassoonIImS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } %}
  %%{%F
  \score {
    \keepWithTag #'part \new Staff << \bassoonIImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } %}
}
