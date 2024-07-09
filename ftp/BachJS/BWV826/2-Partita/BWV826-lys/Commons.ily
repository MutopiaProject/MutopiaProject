\version "2.18.2"

shiftR = {
  \once \override NoteColumn.force-hshift = #1
}

up = {
  \change Staff = "up"
}

down = {
  \change Staff = "down"
}

UP = {
  \change Staff = "up"
  \voiceTwo
}

DOWN = {
  \change Staff = "down"
  \voiceOne
}

title-size = 26
composer-size = 26
date-size = -5
opus-size = 12


\header {
  tagline = ""
}

makeTitlePage = #(define-scheme-function (text) (list?)
                   #{

                     \markup \override #'(baseline-skip . 4) {
                       \center-column {
                         \combine \null \vspace #10
                         \line { \abs-fontsize #composer-size \smallCaps { #(car (cdr text)) }} %% composer
                        \fill-line { " " \postscript #"-60 0 moveto 120 0 rlineto stroke" " " }
                        \line { \fontsize #date-size #(car (cdr (cdr text))) } %% born - dead
                         \combine \null \vspace #14
                         \line { \abs-fontsize #title-size \smallCaps #(car text) } %% title
                         \combine \null \vspace #.5
                         \line { \abs-fontsize #opus-size #(car (cdr (cdr (cdr text)))) } %% opus
                         \combine \null \vspace #20                   
                         \line { \abs-fontsize #7 #(car (cdr (cdr (cdr (cdr text))))) } %% score
                         \line { \abs-fontsize #5 { Dauer ca. #(car (cdr (cdr (cdr (cdr (cdr text)))))) }} %% duration
                       }
                     }
                   #}
                   )