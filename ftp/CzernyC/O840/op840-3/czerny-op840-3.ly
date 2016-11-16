\version "2.18.2"

\language "deutsch"

\include "stile.ily"
\include "defn.ily"

exercise = "3"
tonality_deutsch = "C Moll"
tonality_fr = "Ut mineur."
meter = { \tempo 4 = 78 }

\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke"
  mutopiatitle        =       \markup { "50 Melodische Übungsstücke, No." \exercise }

  opus                =       "Op. 840"
  piece               =       \markup { "Etüde" \number \tiny \exercise }
  mutopiaopus         =       "Op. 840, No." \exercise

  source              =       "IMSLP; Mainz: Schott, n.d.[1855]. Plate 13253"
  style               =       "Romantic"
  moreInfo	      =       "Exercices Progressifs dans tous les tons majeurs et mineurs; Melodic studies"
  license             =       "Public Domain"
  license           =       "public domain"
  enteredby           =       "Manuela" %Manuela Gößnitzer
  maintainer          =       "Manuela"
  maintainerEmail     =       "pressephotografin--gmail.com"
  maintainerWeb       =       "https://github.com/CarlCzerny/Op-840"
  mutopiainstrument   =       "Piano"
  
 footer = "Mutopia-2016/11/16-1"
 tagline = ""
}

\include "etude-03.ily"

\include "score-layout.ily"
\include "score-midi.ily"
