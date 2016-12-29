\version "2.19.46"

\include "flauti.ly"
\include "oboi.ly"
\include "clarinetti.ly"
\include "fagotti.ly"
\include "cornies.ly"
\include "trombe.ly"
\include "timpani.ly"
\include "pianoone.ly"
\include "pianotwo.ly"
\include "violinoone.ly"
\include "violinotwo.ly"
\include "viola.ly"
\include "bassi.ly"

\header {
  title = "Piano Concerto No. 3 in C Minor, Opus 37"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Piano Concerto No. 3 in C Minor (1st Movement: Allegro con brio)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano and Orchestra"
  mutopiaopus = "Op. 37"
  date = "19th Century"
  source = "Breitkopf and Hartel (1862-1865)"
  style = "Classical"
  license = "Public Domain"
  maintainer = "Stelios Samelis"

 footer = "Mutopia-2016/12/29-899"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\score {

 <<

 \context StaffGroup = "firstsystem" <<

 \context Staff = "one" {
 \flauti
}

 \context Staff = "two"  {
 \oboi
 }

 \context Staff = "three" {
 \transposition bes'
 \clarinetti
}

 \context Staff = "four" {
 \fagotti
 }

 \context Staff = "five"  {
 \transposition ees
 \cornies 
 }

 \context Staff = "six"  {
 \trombe
 }

 \context Staff = "seven" {
 \timpani
 }
 >>

 \context PianoStaff <<

 \context Staff = "eight"  {
 \pianoone
 }

 \context Staff = "nine"  {
 \pianotwo
 }
>>

 \context StaffGroup = "secondsystem" <<

 \context Staff = "ten"  {
 \violinoone
 }

 \context Staff = "eleven"  {
 \violinotwo
 }

 \context Staff = "twelve"  {
 \viola
 }

 \context Staff = "thirteen"  {
 \bassi
 }
>>

 >>

 \layout {
   \context {
   \Staff
   \override VerticalAxisGroup.minimum-Y-extent = #'(-5.0 . 5.0)
   fontSize = #-1
   }
 }

 
  \midi {
    \tempo 4 = 132
    }



}

\paper {
 line-width = 18.0\cm
}
