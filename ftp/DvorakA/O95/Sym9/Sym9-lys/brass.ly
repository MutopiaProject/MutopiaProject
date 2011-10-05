\version "2.14.0"
% Antonín Dvořák
\include "header.ily"

\include "woods.notesA.ily"
\include "brass.notesA.ily"
\include "strings.notesA.ily"
\include "percussion.notesA.ily"
%% Quotes for each movement get separate names so we can define them
%  all just once and re-use them for the four movements for each part
\addQuote "cellomA" \keepWithTag#'quote \cellomA
\addQuote "horn1mA" \keepWithTag#'quote \hornImA
\addQuote "horn3mA" \keepWithTag#'quote \hornIIImA
\addQuote "trombone1mA" \keepWithTag#'quote \tromboneImA
\addQuote "trumpet1mA" \keepWithTag#'quote \trumpetImA
\addQuote "flute1mA" \keepWithTag#'quote \fluteImA
\addQuote "flute2mA" \keepWithTag#'quote \fluteIImA
\addQuote "violin1mA" \keepWithTag#'quote \violinImA
\addQuote "clarinet1mA" \keepWithTag#'quote \clarinetImA
\addQuote "oboe1mA" \keepWithTag#'quote \oboeImA
\addQuote "bassoon1mA" \keepWithTag#'quote \bassoonImA

\include "woods.notesL.ily"
\include "brass.notesL.ily"
\include "strings.notesL.ily"
\include "percussion.notesL.ily"

\addQuote "horn1mL" \keepWithTag#'quote \hornImL
\addQuote "horn3mL" \keepWithTag#'quote \hornIIImL
\addQuote "flute1mL" \keepWithTag#'quote \fluteImL
\addQuote "clarinet1mL" \keepWithTag#'quote \clarinetImL
\addQuote "trumpet1mL" \keepWithTag#'quote \trumpetImL
\addQuote "violin1mL" \keepWithTag#'quote \violinImL
\addQuote "oboe2mL" \keepWithTag#'quote \oboeIImL
\addQuote "oboe1mL" \keepWithTag#'quote \oboeImL

\include "woods.notesS.ily"
\include "brass.notesS.ily"
\include "strings.notesS.ily"
\include "percussion.notesS.ily"

\addQuote "cellomS" \keepWithTag#'quote \cellomS
\addQuote "bassmS" \keepWithTag#'quote \bassmS
\addQuote "horn1mS" \keepWithTag#'quote \hornImS
\addQuote "flute1mS" \keepWithTag#'quote \fluteImS
\addQuote "violin1mS" \keepWithTag#'quote \violinImS
\addQuote "oboe1mS" \keepWithTag#'quote \oboeImS

\include "woods.notesF.ily"
\include "brass.notesF.ily"
\include "strings.notesF.ily"
\include "percussion.notesF.ily"

\addQuote "cellomF" \keepWithTag#'quote \cellomF
\addQuote "violamF" \keepWithTag#'quote \violamF
\addQuote "horn1mF" \keepWithTag#'quote \hornImF
\addQuote "horn3mF" \keepWithTag#'quote \hornIIImF
\addQuote "trombone1mF" \keepWithTag#'quote \tromboneImF
\addQuote "trumpet1mF" \keepWithTag#'quote \trumpetImF
\addQuote "flute1mF" \keepWithTag#'quote \fluteImF
\addQuote "flute2mF" \keepWithTag#'quote \fluteIImF
\addQuote "violin1mF" \keepWithTag#'quote \violinImF
\addQuote "clarinet1mF" \keepWithTag#'quote \clarinetImF
\addQuote "oboe1mF" \keepWithTag#'quote \oboeImF
\addQuote "bassoonmF" \keepWithTag#'quote << \bassoonImF \bassoonIImF >>

\paper {
  system-system-spacing #'basic-distance = #18
  score-markup-spacing #'basic-distance = #20
  page-breaking-system-system-spacing #'basic-distance = #12
}
#(define output-suffix "Horn1")
#(define output-count 0)
\book{
  \header { instrument = "Horn I" }
  %%{A
  \score {
    \keepWithTag #'part \new Staff << \hornImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } %}
  %%{L
  \score {
    \keepWithTag #'part \new Staff << \hornImL \conductormL >>
    \header { piece = \markup\huge"Movement II" }
  } %}
  %%{S
  \score {
    \keepWithTag #'part \removeWithTag #'alt
    \new Staff << \hornImS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } %}
  %%{F
  \score {
    \keepWithTag #'part \new Staff << \hornImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } %}
}
#(define output-suffix "Horn2")
#(define output-count 0)
\book{
  \header { instrument = "Horn II" }
  %%{A
  \score {
    \keepWithTag #'part \new Staff << \hornIImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } %}
  %%{L
  \score {
    \keepWithTag #'part \new Staff << \hornIImL \conductormL >>
    \header { piece = \markup\huge"Movement II" }
  } %}
  %%{S
  \score {
    \keepWithTag #'part \removeWithTag #'alt
    \new Staff << \hornIImS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } %}
  %%{F
  \score {
    \keepWithTag #'part \new Staff << \hornIImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } %}
}
#(define output-suffix "Horn3")
#(define output-count 0)
\book {
  \header {  instrument = "Horn III" }
  %%{L
  \bookpart { \score {
    \keepWithTag #'part \new Staff << \hornIIImL \conductormL >>
    \header { piece = \markup {
      \huge"Movement II"
      \large{ "  (Movement I starts on page" \page-ref #'mA "0" "?" ".)" }
    } }
    \layout { system-count = 5 }
  } } %}
  %%{S
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \removeWithTag #'alt
    \new Staff << \hornIIImS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } } %}
  %%{F
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \hornIIImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } } %}
  %%{A
  \bookpart { \paper { bookTitleMarkup = "" } \label #'mA \score {
    \keepWithTag #'part \new Staff << \hornIIImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } } %}
}
#(define output-suffix "Horn4")
#(define output-count 0)
\book {
  \header { instrument = "Horn IV" }
  %%{L
  \bookpart { \score {
    \keepWithTag #'part \new Staff << \hornIVmL \conductormL >>
    \header { piece = \markup {
      \huge"Movement II"
      \large{ "  (Movement I starts on page" \page-ref #'mA "0" "?" ".)" }
    } }
    \layout { system-count = 5 }
  } } %}
  %%{S
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \removeWithTag #'alt
    \new Staff << \hornIVmS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } } %}
  %%{F
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \hornIVmF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } } %}
  %%{A
  \bookpart { \paper { bookTitleMarkup = "" } \label #'mA \score {
    \keepWithTag #'part \new Staff << \hornIVmA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } } %}
}
#(define output-suffix "Trumpet1")
#(define output-count 0)
\book {
  \header { instrument = "Trumpet I" }
  %%{L
  \bookpart { \score {
    \keepWithTag #'part \new Staff << \trumpetImL \conductormL >>
    \header { piece = \markup {
      \huge"Movement II"
      \large{ "  (Movement I starts on page" \page-ref #'mA "0" "?" ".)" }
    } }
    \layout { system-count = 5 }
  } } %}
  %%{S
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \removeWithTag #'alt
    \new Staff << \trumpetImS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } } %}
  %%{F
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \trumpetImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } } %}
  %%{A
  \bookpart { \paper { bookTitleMarkup = "" } \label #'mA \score {
    \keepWithTag #'part \new Staff << \trumpetImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } } %}
}
#(define output-suffix "Trumpet2")
#(define output-count 0)
\book {
  \header { instrument = "Trumpet II" }
  %%{L
  \bookpart { \score {
    \keepWithTag #'part \new Staff << \trumpetIImL \conductormL >>
    \header { piece = \markup {
      \huge"Movement II"
      \large{ "  (Movement I starts on page" \page-ref #'mA "0" "?" ".)" }
    } }
    \layout { system-count = 5 }
  } } %}
  %%{S
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \removeWithTag #'alt \new Staff
    << \trumpetIImS \conductormS >>
    \header { piece = \markup\huge"Movement III" }
  } } %}
  %%{F
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \trumpetIImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } } %}
  %%{A
  \bookpart { \paper { bookTitleMarkup = "" } \label #'mA \score {
    \keepWithTag #'part \new Staff << \trumpetIImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } } %}
}
#(define output-suffix "AltoTrombone")
#(define output-count 0)
\book {
  \header { instrument = "Alto Trombone" }
  %%{A
  \bookpart { \score {
    \keepWithTag #'part \new Staff << \tromboneImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } } %}
  %%{L
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \tromboneImL \conductormL >>
    \header { piece = \markup\huge"Movement II" }
    \layout { system-count = 5 }
  } \markup\huge{"Movement III Tacet"} } %}
  %%{F
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \tromboneImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } } %}
}
#(define output-suffix "TenorTrombone")
#(define output-count 0)
\book {
  \header { instrument = "Tenor Trombone" }
  %%{A
  \score {
    \keepWithTag #'part \new Staff << \tromboneIImA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } %}
  %%{L
  \score {
    \keepWithTag #'part \new Staff << \tromboneIImL \conductormL >>
    \header { piece = \markup\huge"Movement II" }
  } %}
  \markup\huge{"Movement III Tacet"}
  %%{F
  \score {
    \keepWithTag #'part \new Staff << \tromboneIImF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } %}
}
#(define output-suffix "BassTrombone")
#(define output-count 0)
\book {
  \header { instrument = "Bass Trombone & Tuba" }
  %%%{L
  \bookpart { \score {
    \keepWithTag #'part \new Staff << \bassTrombonemL \conductormL >>
    \header { piece = \markup{
      \huge"Movement II"
      \large{ "  (Movement I starts on page" \page-ref #'mA "0" "?" ".)" }
    } }
    \layout { system-count = 5 }
  } \markup\huge{"Movement III Tacet"} } %}
  %%%{F
  \bookpart { \paper { bookTitleMarkup = "" } \score {
    \keepWithTag #'part \new Staff << \bassTrombonemF \conductormF >>
    \header { piece = \markup\huge"Movement IV" }
  } } %}
  %%%{A
  \bookpart { \paper { bookTitleMarkup = "" } \label #'mA \score {
    \keepWithTag #'part \new Staff << \bassTrombonemA \conductormA >>
    \header { piece = \markup\huge"Movement I" }
  } } %}
}
