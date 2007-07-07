% -*- coding: utf-8 -*-
\version "2.10.16"
\include "italiano.ly"

\header{
    title = \markup {\center-align { \small "Petit livre d'orgue" \medium "O Mensch, bewein dein' Sünde gross" \small\medium "O mortel ! pleure sur tes péchés sans nombre"} }
    composer = "Jean-Sebastien Bach (1685-1750)"
    copyright = "Public Domain"
    source = "University of Rochester - Fauré 1917"
    opus = "BWV 622"
    lastupdated = "2007-07-01"
    enteredby = "Pierre Pouillon"
    maintainer = "Pierre Pouillon"
	maintainerEmail = "pierre@ssji.net"
    mutopiatitle = "O Mensch, bewein dein' Sünde gross"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Organ"
    style="Baroque"
 footer = "Mutopia-2007/07/07-1000"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}




\paper {}

#(set-default-paper-size "a4" 'landscape)

global = { \key mib \major
\time 4/4
\override Script #'avoid-slur = #'outside
\partial 4
}

soprano = \relative do'{
\global
\once \override TextScript #'extra-offset = #'( 0 . 1 )
 mib4^\markup{Adagio assai}
|%1
mib8.*5/6 \mordent fa32 [mib fa]   fa8. \trill mib32 fa   sol16 lab sol fa32 mib   mib8 sol16 fa
|%2
sol8.*5/6 la!32 [sol la]    la8. \trill sol32 la sib4 \fermata    sib8 reb16 do
|%3
lab4   sol   fa16 sol32 lab sol16 fa   mib fa32 re mib16. fa32
|%4
sol16 [lab32 fa sol16. la32]    la8.\trill sib16   sib4\fermata   do16 mib! reb do32\prall sib
|%5
sib8.*5/6 lab32 sol lab   lab8.\trill sol32 lab   \appoggiatura lab16 sol4    lab16 sol32 fa sol16. \mordent lab32
|%6
\appoggiatura sol16 fa16. sol32 lab sib do sib   \appoggiatura lab16 sol8 ~ (fa16) \trill mib32 fa   mib4 \fermata   mib
|%7
mib   r16 fa [lab32 sol16 \prall lab32]   sol8. \prall fa16  mib16 re mib sol32 fa
|%8
sol32 fa mib re mib fa sol la  la8. sib16  sib4 \fermata  sib
|%9
lab!16 \prall do sib lab  sol lab32 sib lab16\prall sol  fa lab sol lab32 fa  mib sib do re mib re mib fa
|%10
sol re mib fa sol fa sol la  la8.\trill sol32 la  sib4\fermata  do16. re!32 mib re mib fa
|%11
sib,8.\prall do16  sib8 lab16\prall sol32 lab  sol4  la16\rest sol lab do32 sib
|%12
do16 re! re mib  lab,8 sol16\prall fa32 mib  mib4\fermata  mib'\mordent
|%13
mib16 re do mib32 re  mib8. fa16  re8.\prall do32 sib  sib8. do32 reb
|%14
do4  ~do16 re!32 do si do si do  sol4\fermata  ~sol32 sol la si! do16 mib32 re
|%15
mib8. fa32 sol  \grace fa16 mib8.\prall re32 mib  mib16 re do sib  sib4
%16
~sib16 sol'32 la, sib16.\mordent mib!32  re8 (do16\prall) sib  sib4\fermata  sol32 lab sol lab lab16\prall sol32 lab
|%17
sib8. do32 reb  \grace reb16 do4  sib8. do32 lab  sol16 reb'! do sib
|%18
sib8 ~sib32 lab sol lab  lab8.\trill sol32 lab  lab16 sol8.\prall  fa4
|%19
sol la sib ~sib16 reb do sib
|%20
lab sol32 do sib16  lab  sol8. fa16  fa4\fermata  sib
|%21
do16 re re mib  mib re re fa  fa32 re sib re mib  sol fa mib  re4\prall
%22
~re16 sib' la32 sib la sib  re,8 do16 sib  sib4\fermata  mib,
|%23
fa  sol  lab?^\markup{Adagiosissimo} sol8 solb
|%24
fa16 fab re mib  mib16. lab32 sol?16 fa32 mib  mib4\fermata
\bar "|."}


alto = \relative do' {
\global
\clef bass
\stemUp
\tieUp
 sib8 do16 reb
|%1
do4 ~   do16 re! si! do   re4   do
|%2
sib!8 do16 re   mib4   ~ mib8 re16 do   reb4
|%3
do8 mib16 re!   mib4   ~ mib8 re   mib4
|%4
sib  mib  ~mib8 re16 mi  fa4
%5
~fa8 sib, mib fa  ~fa mib16 re  mib4
%6
~mib4.  re8  mib16 sib do8  mi16\rest sib do re
|%7
mib4  ~mib8 re  mib4  mi\rest
|%8
mi16\rest sib do re  mib sol fa mib  re4  fa16\rest fa mib reb
|%9
do8 re  mib16 sol, lab sib  do8 sib  ~sib16 sib do re
|%10
mib4  ~mib16 mib re do  sib sol'\rest sol8\rest   s4
|%11
fa16\rest fa mib reb  do sib do re   \clef treble mib4  la16\rest mib fa sol
|%12
lab lab lab sib  si\rest mib,8 re16  mib16 re mib fa  sol fa lab sol
|%13
sol4 ~sol16 sib la sol  fa4 ~fa16 fa sol lab
|%14
sol4 ~sol16 sol fa mib  re si do re  mib re mib fa
|%15
sol fa mib re  la'\rest sol la8  sib fad!  sol4
%16
~sol  fa8 [mib  ~mib16 mib ] \stemDown \tieDown  re do  sib4
%17
~sib16 sib lab sol  lab4  ~lab16 lab sol fa  sol8 lab16 sib
|%18
do4. \stemUp \tieUp \clef bass re8 ~re16 reb do sib  lab8 sib16 do
|%19
reb8 do16 reb  mib8 re16 mib  fa8 mi!16 fa  \clef treble sol fa sol mi!
|%20
fa4 ~fa16 mib!8. ~mib16 mib re do  re8 mib16 fa
|%21
sol lab lab sib   sib lab lab8  sol8. la!16  sib4
%22
~sib ~sib8 la sib4  si16\rest sib, do reb!
|%23
\clef bass do8 re16 mib  re8 mib16 fa  mib8 sib! ~sib \slurUp dob
%24
(do4) sib8. lab16 sol4\fermata

}


tenor = \relative sol {
\global
\clef bass
\stemDown
\tieDown
 sol4
|%1
lab2  sol2
|%2
sol4  ~ sol8 fa16 mib   fa4   sol
|%3
lab   sib2   sib8 lab
|%4
sol8 fa   mib fa  sol fa16 sol lab!4
%5
~lab8 sol ~sol fa  sib4  lab8 sib
|%6
do sib16 lab  sib8 lab  sol8. lab16  sol4
|%7
re16\rest sol lab sib  do8 sib  ~sib16 do sib lab  sol fa mib re
|%8
mib4 do\rest do16\rest do' sib lab  sol4
|%9
re16\rest lab' sol fa  mib4 ~mib16 mib re do  sib8  la\rest
|%10
do16\rest lab' sol fa  mib sol fa mib  re reb' do sib  lab! sib lab sol
|%11
fa8 sol lab fa   \clef treble sol16\rest sol lab sib  do8. reb16
|%12
mib fa fa sol  do,\rest do sib lab  sol fa sol lab   sib4
%13
~sib16 sol la sib  do4  ~do16 do sib la  sib4
%14
~sib16 sib lab! sol  lab mib' re do  si sol la si  do4
%15
~do4  do8. do16  sib8 do  re16 do re sib
|%16
do8 sib  ~sib16 [sib8 lab16  sib8 ] \stemUp \tieUp  fa' ~  fa16 fa mib re
|%17
mib4  ~mib16 mib re do  fa8 mib16 re  mib8 fa
%18
~fa16 mi fa mi \stemDown \tieDown fa8  \clef bass fa, ~fa mi fa16 sol lab8
|%19
sol16 lab sib8  la16 sib do8  sib16 do reb8  \clef treble do4
%20
~ do16 lab sol fa  sol8 la16 sib  do4  la16\rest sib do re
|%21
mib fa fa sol  sol fa fa re  re8 do  si16\rest re mib fa
|%22
sol8 fa16 mi  fa8 mib  re16 fa, sol lab!
  sib4
|%23
\clef bass lab16 si do8  sib16 do re8  do16 lab sol fa  mib re mib8
|%24
lab4 sol16 mib re8  mib4

}

basse = \relative mi {
\global
\clef bass
 mib4
|%1
lab8 sol   fa4   si,!  do8 re
|%2
mib re   do4  sib  mib
|%3
fa  sol8 sib16 lab   sib8 lab sol fa
|%4
mib re do4 sib fa'8 mib
|%5
re! mib do re  mib re do sib
|%6
lab fa  sib4  mib,  mib'8 re
|%7
do sib lab sib mib, fa sol fa
|%8
mib re do fa  sib4  r4
|%9
r4   do8 sib   lab sib  sol fa
|%10
mib re  do fa  sib4  fa'8 mib
|%11
re mib fa sib, mib re do sib
|%12
lab sol fa sib mib,4  mib'8 re
|%13
do sib la fa  sib do re sib
|%14
mib mi  fa4  fa,8 fa' mib re
|%15
do re mib fa  sol la sib sol
|%16
mi do fa fa, sib4  mib8 fa
|%17
sol mib do fa re sib mib reb
|%18
do fa,  fa'16 mi fa si,  do4  reb8 re
|%19
mib mi fa fad sol fa! mi! do
|%20
fa re mib do la4  lab8 lab'!
|%21
sol fa16 mib  fa8 sib,  mib re16 do  sol'8 fa
|%22
mi do fa fa,  sib lab! solb sol
|%23
lab la sib si  do re mib dob
|%24
lab fa  sib4  mib,\fermata

}

\score
{\new StaffGroup
\with{ \remove System_start_delimiter_engraver}
<<
\new PianoStaff{
\set PianoStaff.instrumentName = \markup\column{\center-align\italic{"à deux " "claviers "}}
<<
\new Staff
<<\soprano>>
\new Staff
<< \tenor \\ \alto >> >>}
 \new Staff{\set Staff.instrumentName = \markup\italic"pédale   "
\basse }>>
}

\layout {
 indent = 2.0\cm
}

\score {
<<
    \new Staff {
      \set Staff.midiInstrument = "reed organ"
\soprano
    }
    \new Staff {
\transpose do do,
      \set Staff.midiInstrument = "church organ"
      \alto
    }
    \new Staff {
      \set Staff.midiInstrument = "church organ"
\transpose do do,
\tenor
    }
\new Staff {
      \set Staff.midiInstrument = "church organ"
\transpose do do,
\basse
    }
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 16)
      }
    }

}
