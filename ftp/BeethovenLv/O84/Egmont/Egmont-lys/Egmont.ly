\version "2.4.0"

\include "flautoone.ly"
\include "flautotwo.ly"
\include "oboi.ly"
\include "clarinetti.ly"
\include "fagotti.ly"
\include "cornif.ly"
\include "cornies.ly"
\include "trombe.ly"
\include "timpani.ly"
\include "violinoone.ly"
\include "violinotwo.ly"
\include "viola.ly"
\include "violoncello.ly"
\include "basso.ly"

\header {
  title = "Overture to Egmont - Opus 84"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Overture to Egmont - Opus 84"
  mutopiacomposer = "Ludwig van Beethoven"
  mutopiapoet = "Ludwig van Beethoven"
  mutopiainstrument = "orchestra"
  date = "19th Century"
  source = "Dover Publications - Breitkopf and Hartel"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2005/March/29"
  
  footer = "Mutopia-2005/04/10-547"
  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

#(set-global-staff-size 16)

\score {

  {
 \context StaffGroup <<

 \context GrandStaff = "firstsystem" <<

 \context Staff = "one" {
 \set Staff.midiMaximumVolume = 1
 \flautoone
}

 \context Staff = "two" {
 \set Staff.midiMaximumVolume = 1
 \flautotwo
} >>

 \context Staff = "three"  {
 \set Staff.midiMaximumVolume = 1
 \oboi
 }

 \context Staff = "four" {
 \transposition ais 
 \set Staff.midiMaximumVolume = 1
 \clarinetti
}

 \context Staff = "five" {
 \set Staff.midiMaximumVolume = 1
 \fagotti
 }

 \context GrandStaff = "secondsystem"
 <<
 \context Staff = "six" {
 \set Staff.midiMaximumVolume = 1
 \transposition f 
 \cornif
 }

 \context Staff = "seven"  {
 \set Staff.midiMaximumVolume = 1
 \transposition dis 
 \cornies 
 }
 >>

 \context Staff = "eight"  {
 \set Staff.midiMaximumVolume = 1
 \transposition f 
 \trombe
 }

 \context Staff = "nine" {
 \set Staff.midiMaximumVolume = 1
 \timpani
 }

 \context GrandStaff = "thirdsystem" <<

 \context Staff = "ten"  {
 \set Staff.midiMaximumVolume = 1
 \violinoone
 }

 \context Staff = "eleven"  {
 \set Staff.midiMaximumVolume = 1
 \violinotwo
 } >>

 \context Staff = "twelve"  {
 \set Staff.midiMaximumVolume = 1
 \viola
 }

 \context GrandStaff = "fourthsystem" <<

 \context Staff = "thirteen"  {
 \set Staff.midiMaximumVolume = 1
 \violoncello
 }

 \context Staff = "fourteen"  {
 \set Staff.midiMaximumVolume = 1
 \basso
 } >>

>>
}

 \layout {}

 \midi { \tempo 4 = 84 }

}
