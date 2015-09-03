\version "2.18.2"

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


%#(set-default-paper-size "letter")
#(set-global-staff-size 16)

\header {
  title = "Overture to Egmont - Opus 84"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Overture to Egmont"
  mutopiacomposer = "BeethovenLv"
  mutopiaopus = "Op. 84"
  mutopiainstrument = "Orchestra: Flutes, Oboe, Clarinet, Bassoon, Horns, Trumpets, Timpani, Violins, Viola, 'Cello, Bass"
  date = "1810"
  source = "Breitkopf and Hartel"
  style = "Classical"
  maintainer = "Stelios Samelis"
  maintainerEmail = "1zante@otenet.gr"
  license = "Public Domain"

 footer = "Mutopia-2015/09/03-547"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-margin = 15 \mm
  ragged-bottom = ##t
}

\score {

  {
 \new StaffGroup <<

 \new GrandStaff = "firstsystem" <<

 \new Staff = "one" 
    {
      \set Staff.midiMaximumVolume = 1
      \flautoone
 }

 \new Staff = "two" {
   \set Staff.midiMaximumVolume = 1
   \flautotwo
   }
 >>

 \new Staff = "three"  {
   \set Staff.midiMaximumVolume = 1
   \oboi
 }

 \new Staff = "four" {
   \transposition ais 
   \set Staff.midiMaximumVolume = 1
   \clarinetti
}

 \new Staff = "five" {
   \set Staff.midiMaximumVolume = 1
   \fagotti
 }

 \new GrandStaff = "secondsystem"
 <<
 \new Staff = "six" {
   \set Staff.midiMaximumVolume = 1
   \transposition f 
   \cornif
 }

 \new Staff = "seven"  {
   \set Staff.midiMaximumVolume = 1
   \transposition dis 
   \cornies 
 }
 >>

 \new Staff = "eight"  {
   \set Staff.midiMaximumVolume = 1
   \transposition f 
   \trombe
 }

 \new Staff = "nine" {
   \set Staff.midiMaximumVolume = 1
   \timpani
 }

 \new GrandStaff = "thirdsystem" <<

 \new Staff = "ten"  {
   \set Staff.midiMaximumVolume = 1
   \violinoone
 }

 \new Staff = "eleven"  {
   \set Staff.midiMaximumVolume = 1
   \violinotwo
 } 
 >>

 \new Staff = "twelve"  {
   \set Staff.midiMaximumVolume = 1
   \viola
 }

 \new GrandStaff = "fourthsystem" <<

 \new Staff = "thirteen"  {
   \set Staff.midiMaximumVolume = 1
   \violoncello
 }

 \new Staff = "fourteen"  {
   \set Staff.midiMaximumVolume = 1
   \basso
 }
 >>

>>
}

 \layout { }

 
  \midi {
    \tempo 4 = 84
    }

}
