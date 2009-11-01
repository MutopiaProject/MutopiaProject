% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.12.0"
\include "italiano.ly" 

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 16.1)

a = \rtoe
q = \lheel

global = {  \key fa \minor   \time 4/4 }

choral = \relative do'' {   \global
\override Script #'script-priority = #1
%1
\repeat volta 2 {
\partial 4
 do4-5
\once \override TextScript #'extra-offset = #'(-7 . 0)   lab4^\markup\tiny\italic{"Choral"}
 sib4 lab8. sol16 fa8.-1 sol16
%2
\override TextScript #'font-name = #"Emmentaler"{
lab16-3 sib lab-1 sib-2  \once \override TextScript #'extra-offset = #'(1 . -1) sib8.^\markup\combine\raise#'1.3 " 3 3 3 " "  2 2 2"  \trill lab32-1 sib-2 \stemUp do4-3 \fermata \stemNeutral do8.-3 reb16
}
%3
mib4-5 \appoggiatura reb16 do8. sib16 lab4-1 sib8-2 do8-1
%4
reb4-2 ~ reb16 [ mib32-3 fa32  reb16^\markup\combine\raise#'1.3 " 3 ""2 2"  \prall do16-1 ]
}
\alternative{ { do4 \fermata  }
{
\set Score.measurePosition = #(ly:make-moment 2 4 )
do4 \fermata mib4-3 }
}
%5
fa4-4 mib8-3 [ reb32^\markup\combine\raise#'1.3 " 3 ""2 2" \prall do-1 reb16 ] do8-1 sib-3 lab-2 sib
%6
do4-4 sib lab \fermata do
%7
do-4 do-5 sib lab
%8
sol2  fa-1 \fermata
%9
lab4-4 sol fa2
%10
mib2.-1 \fermata mib4-1
%11
lab-2 lab sib sib
%12
do2.-4 \fermata reb4-5
%13
do sib lab-2 fa8.-1 sol16
%14
\partial 2. lab4-3 sol4 fa4 \fermata \bar "|."
}

altop = \relative do' {
\global
\clef treble
\override Fingering #'direction = #DOWN
\repeat volta 2 {
\partial 4 \once \override TextScript #'extra-offset = #'(-4 . 0)   lab16-5^\markup\tiny\italic{"sempre legato"}

do fa-1 mi
|%1
fa16-1 do-2 lab-4 fa-5   sol-4 sib reb-1 do    fa,-5 lab-4 do-2 sib-3    lab-4 fa-5 lab-4 do
|%2
fa-1 mi-4 fa lab-2   sol-1 fa mi fa   mi!-1 do sol sib   lab-5 do-3 fa-1 lab-2
|%3
sol-3 mib! lab-2 sol-1   lab-2 mib-5 fa-3 solb   fa reb-5 fa lab-2   sol-1 reb-4 do solb'!-2
|%4
fa-1 sib,-5 reb-4 fa-2    sib-1 lab-2 sol-1 lab-2
}
\alternative {
{sol-1 do,-4 mi-1 sib-4}
{sol'-1 sib,-4 lab-5 fa'-1   sol,-5 reb'-2 lab-4 do-1}
}
|%5
lab-5 do sib reb   sib-5 reb lab'-1 sol   lab16 mib-4 reb-5 sol-1   do,-5 fa lab-1 sol
|%6
lab-1 mib lab,-5 solb'-2   fa-1 lab, sol!-5 reb'   do-3 lab-5 do-4 mib    sol!-1 do, sib sol'
|%7
la,-5 do-3 fa-1 sol-2    la!-1 fa mib la   reb,-5 sol lab sol   do,-5 fa sol fa
|%8
reb-4 fa sol fa     mi-1 sib reb do    lab-5 do fa mi!    fa-1 do-2 lab fa-5
|%9
sib-4 fa'-2 sol-1 fa   sib,-5 mib-2 fa mib    do-4 mib fa mib    re-1 sol, si re
|%10
sol,-5 do-2 mib-1 reb!-2   sol,-5 sib-3 reb-2 do-1   mib,-5 lab-3 do-1 sib-2    reb-1 sib mib, reb'
|%11
fa,-5 lab-3 reb-1 do    fa, lab-3 do-1 sib   fa lab-3 sib-2 lab   sol-5 sib-4 reb-2 do-3
|%12
lab-5 do mib-2 lab-1    mib-5 sib'-2 do-1 sib    la-1 mib-3 solb-2 la,!-5    sib-4 sol'-1 lab,-5 fa'-1
|%13
sol,-5 mi'-2 fa  mib   fa,-5 reb'-2 mib reb   mib,-5 do'-1 reb-3 do   sib-5 fa'-2 sol-1 fa
%14
\partial 2. re!-4 fa sol-1 fa-2    mi-1 reb sib sol-5   la-4 do fa8-1 \fermata
}


basse = \relative do, { \pageBreak
  \global
\clef "bass"
  \repeat volta 2 {
  \partial 4 \once \override TextScript #'extra-offset = #'(-4 . 0)  fa8_\a ^\markup\tiny\italic{"sempre staccato"} fa

%1
    fa'^\a [ fa ] fa^\a [ mi!_\a ] fa^\a [ fa ] fa mib!^\a
%2
    reb_\a [ reb ] reb [ reb ] do_\a [ do_\a ] fa^\a fa_\a
%3
    do'^\a [ do ] do [ do ] do [ do ] sib^\a la_\a
%4
sib^\a [ lab!^\a ] sol^\q [ fa_\a ]
}
  \alternative {
    {     mi!_\a [ do_\a ] }
    {  mi!_\a [ fa^\a ] do_\a do_\a }
  }
  reb_\a [ reb ] mib_\a [ mib_\a ] lab^\a [ mib_\a ] fa^\a reb_\a
%6
  mib^\a [ do_\a ] reb_\a [ mib^\a ] lab,_\a [ lab_\a ] mi!_\a mi_\a
%7
  fa_\a [ fa_\a ] fa'^\a [ fa^\a ] fa^\a [ mi!_\a ] fa^\a reb_\a
%8
  sib_\a [ sol_\a ] do^\a [ do_\a ] reb!_\a [ reb] reb [reb_\a ]
%9
re!_\a [ re_\a] mib^\a [mib^\a ] la,!_\a [ la] si_\a [si ]
%10
  do^\a [ do^\a] sib!_\a [sib ] lab [ lab] sol [sol_\a ]
%11
  fa_ \q [fa_\q] mib_\a [mib_\a] re!_\a [re] mib [mib_\a]
%12
  lab^\a [lab^\a] solb_\a [solb] fa [fa_\a] sib^\a [sib^\a]
%13
  sib^\a [ lab_\a ] lab_\a [ sol_\a ] sol_\a [ fa_\a ] reb'^\a [ reb^\a ]
%14
  \partial 2. si_\a [ si_\a ] do^\a [ do^\a ] fa,4_\a
}

titre = "Ich ruf zu Dir, Herr Jesus Christ "

\header{
    title = \markup {\center-column { """""""""""""" \small "Petit livre d'orgue" \medium "Ich ruf ' zu dir, Herr Jesu Christ." \small\medium "Je crie vers Toi, Seigneur Jésus." \medium\small "Unto Thee I cry, Lord Jesus." " "} }
    subtitle = "à deux claviers et pédale"
    source = "Bach-Gesellschaft Edition, OrgelWerke 1893"
    lastupdated = "2006-05-02"
    enteredby = "Gérard Gréco,revu Pierre Pouillon"
    maintainer = "Pierre Pouillon"
    mutopiatitle = "Ich ruf' zu dir, Herr Jesu Christ"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Organ"
    style="Baroque"
    composer = \markup\column {  "Johann Sebastian Bach (1685-1750)" "BWV 639" }

 mutopiaopus = "BWV 639"
 mutopiacopyright = "Creative Commons Attribution-ShareAlike 3.0"
 footer = "Mutopia-2009/11/01-997"
 copyright = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}



\paper {%annotate-spacing = ##t
 page-top-space = 0\mm
head-separation = 0\mm
between-system-space = 0.1\cm
between-system-padding = #0
system-count = #4
tagline = ##f
print-page-number = ##f
print-first-page-number = ##f
foot-separation = 0
evenFooterMarkup = \markup { \bold \fontsize #-1 \titre }
ragged-bottom = ##f
ragged-last-bottom = ##f
top-margin = 0.4\cm
bottom-margin = 0.4\cm
}


\score{ \new StaffGroup \with { systemStartDelimiter = #'SystemStartBar  }
<<  \new PianoStaff\with {  \override VerticalAlignment #'forced-distance = #8
 }
 <<
    \new Staff = "dessus"   \choral
    \new Staff {      \clef "bass"  \altop } >>
    \new Staff {  \clef "bass"  \basse }
  >>
\header { breakbefore = ##t }
\layout{  }}


\score {
  \unfoldRepeats {
  <<
    \new Staff {
      \set Staff.midiInstrument = "oboe"
      \choral
    }
    \new Staff {
      \set Staff.midiInstrument = "church organ"
      \altop
    }
  \new Staff {
      \set Staff.midiInstrument = "vibraphone"
      \basse
    }

    \new Staff       {
\tempo 8 = 75
\repeat volta 2 {
\partial 4 s4
s1*3            }
\alternative {
	{ s4 }
	{\set Score.measurePosition = #(ly:make-moment 2 4 )  s2 }
             }
s1*9
\partial 2.
\tempo 8 = 70
      s2
\tempo 8 = 60
s4
                    }
  >>
}
  \midi{  }
}
