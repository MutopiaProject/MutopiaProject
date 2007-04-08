% -*- coding: utf-8 -*-
\version "2.10.16"

\include "defs.ly"


\header {

title =  \markup \override #'(baseline-skip . 18)  \center-align { \fontsize #12.0 "" \fontsize #12.0 "Hans Sitt" \fontsize #6.0 "100 Etudes, Op. 32"}

subtitle =  \markup \override #'(baseline-skip . 6) \center-align { \fontsize #4.0 " "  \fontsize #4.0 "Book 1  (first position)"}

subsubtitle =  \markup \override #'(baseline-skip . 4) \center-align {\lower #44 \fontsize #25.0 ""  \fontsize #2.0  "Free sheet music from"  \line {\fontsize #5.0 \with-url #"http://www.mutopiaproject.org" www.mutopiaproject.org }} 

composer = " "
poet = " "
dedication = " "
lastupdated = "2007/Feb/13"
tagline =  \markup \center-align \fontsize #-3 {\line { Published under the \with-url #"http://creativecommons.org/licenses/by-sa/2.5" Creative Commons Attribution-ShareAlike license} \line { "Last update:" \lastupdated }    } 
oddheader = " "


}


\score {
{\lyrics { " " }}
\layout { }
}



