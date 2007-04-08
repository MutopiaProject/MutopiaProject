% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

markingsIII = {
    \time 2/4

    \override Voice.TextScript #'extra-offset = #'(-6.0 . 2.25)
    s2*16

    s2^\markup { \large { \bold "Var. I." } }
    s2*17

    s2^\markup { \large \bold "Var. II." }
    s2*15

    s2^\markup { \large \bold "Var. III." }
    s2*15
   
    s2^\markup { \large \bold "Var. IV." }
    s2*15

    s2^\markup { \large \bold "Var. V. Adagio" }
    s2*15

    s2^\markup { \large \bold "Allegretto" }
    s2*33
}