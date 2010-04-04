% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.12.3"
\include "italiano.ly"
fu = \override Fingering #'direction = #UP
fd = \override Fingering #'direction = #DOWN

ot = {\once \override TextScript #'extra-offset = #'( 0 . 1 )}
ott = {\once \override TextScript #'extra-offset = #'( 0 . 2 )}
otm = {\once \override TextScript #'extra-offset = #'( 0 . -1 )}
of = {\once \override Fingering #'extra-offset = #'( 0 . 1 )}
off = {\once \override Fingering #'extra-offset = #'( 0 . 2 )}
offf = {\once \override Fingering #'extra-offset = #'( -1.5 . 3 )}
ofm = {\once \override Fingering #'extra-offset = #'( 0 . -1 )}
offm = {\once \override Fingering #'extra-offset = #'( 0 . -2 )}

a = \rtoe
q = \lheel

global = {  \key sol \minor   %\override Score.Fingering #'color = #white
\override Score.Fingering #'font-size = #-3 }
e = {% \once \override TextScript #'color = #white
\once \override TextScript #'font-size = #1
 \override TextScript #'font-name = #"Emmentaler" }
choral = \relative do'' {   \global \fd
%1
r16 sol-1  sib-3 sol-1 re'-5 la-2 sib-3 fad-2   sol4-1~sol16 fad-2 sol-1 la-2
|%2
sib4-3~sib16 do-4 sib la sol4-1~sol16 sib-3 la sol-1
|%3
fad8-2 sol16-1 la-2 sol8.-1 \prall fad16-2 sol4-1 la8.-2 \prall sol32-1 la-2
|%4
sib2-3 \mordent ~ sib16 la do-4 sib  la sol-1 la8-2
|%5
sol16-1 la sib-3 do-1  re mi fad-4 re-2 sol2-5
|%6
R1
%7
R1
|%8
r2 sib,4.-2 la16-1 sib-2
|%9
\of do2-1~do16 fa-4 mib-3 re-2  do-1 mib-3 re-2 do-1
|%10
re8-2 mib16-3 re do8-1 re16-2 do-1 sib4-3~sib16 sol-1 la sib-3
|%11
do8-4 sib16-3 do-1 re8-2  mib16-3 re  do4.-1 \prall  sib16-2 do-1
|%12
re2-2 r2
|%13
R1
|%14
r2 r4 re-2
|%15cho
mib2-3 \mordent re4-2~re16 do-1 re mib
|%16 cho
fa8.-4 sol16-5 fa8.-4 \prall mib16  re4.-2  mib16 fa
|%17 cho
\e do2-"1-3"~do16 sib-2 do-3 re-4  do8-3 re16-4 do-3
|%18 cho
sib2-2 r2
|%19
R1
|%20 cho
r2 re4.-4 do8-3
|%21 cho
sib2-2 do4.-3 re8-4
|%22 cho
sib2-2 la-1
|%23 cho
la4-1 sol2-3 fad4-2
|%24
sol1-3 \fermata
\bar "|."
}
fo = \set fingeringOrientations = #'(left)
ufo = \unset fingeringOrientations
ttt = \relative do' {
\global
\stemUp \tieUp \fd
|%1 ttt
s2 s4 re
|%2 ttt
sol re2 do4
|%3 ttt
re2 sib4 do
|%4 ttt
re2~re4. \e do8_"2--1"
|%5 ttt
sib2~ sib8 do16 re mib4~
|%6 ttt
mib8 re \offm do8.-2 re16 sib4 r
|%7 ttt
r mib \offm fa-2 fa
|%8 ttt
\once \override TextScript #'extra-offset = #'( 4 . 0 ) sol4.^\markup\teeny MD
\once \override TextScript #'extra-offset = #'( 0 . 0.5 )
 \e  lab8^"1" re,4 sol4~
|%9 ttt
sol fa8-2 \prall mi-3 fa2-2_"-4"~
|%10 ttt
fa4 fad sol2 ~
|%11 ttt
sol4 fa-2 \offf sol-1 \offf fa-1~
|%12 ttt
fa fa sib8 sib la sib
|%13 ttt
do4 sib8 do re do sib4~
|%14 ttt
sib8 re do re   sol, \offm la-2  sib4~
|%15 ttt
sib  do2-1 sib4-2
|%16 ttt
do2 fa,-2-4
|%17 ttt
sol \e fa4._"4"_"2--1" mib8-2
|%18 ttt
re4 si'\rest si2\rest
|%19 ttt
si4\rest sol fa8 sol fa^\markup\teeny MD  \once \override Fingering #'direction = #UP mib-2
|%20 ttt
re do-3 re-1 mi-2 \fo <fa-1>4 \ufo si\rest
|%21 ttt
si\rest si8\rest re,-2 sol4-1 fa~
|%22 ttt
fa sib,8 do16-1 re-2 mib4-1-4 \fo <re-1> ~
|%23 ttt
re2~re8 mib-2 re-1 do-2
|%24 ttt
si1 \fermata
}

bbb = \relative do' {
\global
\stemDown \tieDown
\fd
 \override Fingering #'extra-offset = #'( 0.3 . 1.5 )
|%1 bbb
si'2\rest si4\rest sib,-2-4
|%2 bbb
re-1-2 \e \ot sib_"4--3"_"2--1" ~sib8 la-4 sol4-2-5
|%3 bbb
la-1-4  \revert Fingering #'extra-offset sib8-2 la-3  \override Fingering #'extra-offset = #'( 0.3 . 1.5 ) sol4-2-4 mib-1-5
|%4 bbb
re-1-5 \revert Fingering #'extra-offset sol2-3 fad4-5
|%5 bbb
\once \override Fingering #'extra-offset = #'( 0.3 . 1.5 )
sol2_"4--5"_"2--3" ~sol8 la16-2-4 sib-1-"3-4"  do8.-2-3 sib16-4
|%6 bbb
la8-5 sib4-1-4 la8-5 sib4-4 sib
|%7 bbb
do do2-3-5 re4-2-4~
|%8 bbb
re do-4 sib-3-5 mib-1-2
|%9 bbb
do1-"5 -"
|%10 bbb
\of sib4-2-5 do-1-4 re-1-3 mib8.-2 re16-3
|%11 bbb
do4.-4 sib8-5~sib sib-4 \of la4-5
|%12 bbb
\of sib2-4 r4 re
|%13 bbb
mib8 mib re mib fa4. mib8
|%14 bbb
re4 fa \of mib-3-5 fa-"1-2"-"4-5"
|%15 bbb
sol2-4 \e fa_"5-         -4"
|%16 bbb
\of do2.-1-5 sib4-5~
|%17 bbb
\of sib2.-1-5 \of la4-5
|%18 bbb
\of sib-1-4 re sib8 do sib la
|%19 bbb
sol la sib sol la4. do8-3
|%20 bbb
\of sib2-2-4 \fo <la-5>8 <sib-2> la sol
|%21 bbb
\ufo \of fa4-5 sib2-3 \of la4-1-4~
|%22 bbb
la \of sol2-3-5 \fo <fa-5>4  ~
|%23 bbb
fa8 sol16-4 la-3  sib4-2  la2-4
|%24 bbb
\fo sol1-3-5
}

mmm = \relative do {
\global
\clef bass
|%1 mmm
r2 r4 sol
|%2 mmm
sol'2 mib_\a
|%3 mmm
re_\q mib4^\a do_\q
|%4 mmm
sib4._\a do8_\q re2^\a
|%5 mmm
r2 mib_\a
|%6 mmm
fa4 fa^\q sol4.^\a fa8^\q
|%7 mmm
mib_\a re_\q do_\a sib^\a la4_\a sib^\a
|%8 mmm
mib,_\a fa_\q sol2_\a
|%9 mmm
la2._\a la4
|%10 mmm
sib la sol2
|%11 mmm
la4 sib^\a mib,_\a fa_\q
|%12 mmm
sib2^\a r2
|%13 mmm
r2 r4 sol'_\a
|%14 mmm
sib8^\a sib la^\q sib  do4^\q sib^\a
|%15 mmm
sol_\a la^\q sib2^\a~
|%16 mmm
sib4 la^\q sib^\a re,_\a
|%17 mmm
mib^\a mi^\q fa^\a fa,_\a
|%18 mmm
sib2^\a r
|%19 mmm
R1
|%20 mmm
r4 sol'^\a fa8^\q sol^\a fa^\q mib_\a
|%21 mmm
re4_\q sol^\a mib_\a fa^\a
|%22 mmm
re_\a mib^\a do_\a re^\a
|%23 mmm
sib4._\a do8_\q re2^\a
|%24 mmm
sol,1 \fermata
\set Score.midiInstrument = "church organ"
}


titre = "Erhalt uns, Herr, bei deinem Wort.  BuxWV 185."
#(set-global-staff-size 18)
#(set-default-paper-size "a4" 'landscape)

\header{
 mutopiatitle =  "Erhalt uns, Herr, bei deinem Wort"
 mutopiacomposer = "BuxtehudeD"
 mutopiaopus =  "BuxWV 185"
 mutopiainstrument = "Organ"
 date = ""
 source = "icking-music-archive.org"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Pierre Pouillon"
 maintainerEmail = "pierre(at)ssji.net"
 lastupdated = "2010 mars"

title = \markup\column\center-align { " " " " "Erhalt uns, Herr, bei deinem Wort"
"prélude de choral" }
subtitle = \markup\column\center-align\italic { " " " " "à deux claviers et pédale"  }
composer = \markup\column\center-align  { " " "Dietrich Buxtehude (1637-1707)" }
opus = "BuxWV 185"

 footer = "Mutopia-2010/04/04-1745"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {% system-count = #4
between-system-space = 40
%page-count = #2
%tagline = ##f
print-page-number = ##t
print-first-page-number = ##f
%oddHeaderMarkup = \markup \fill-line { " " }
%evenHeaderMarkup = \markup \fill-line { " " }
%oddFooterMarkup = \markup {  \on-the-fly #print-page-number-check-first  \bold \fontsize #-1 {  \titre " page " } \bold \on-the-fly #print-page-number-check-first    \fromproperty #'page:page-number-string \bold \on-the-fly #print-page-number-check-first "sur 2" }
ragged-bottom = ##f
ragged-last-bottom = ##t
%top-margin = 0.0\cm
%bottom-margin = 1\cm
}


\score{ \new StaffGroup \with { systemStartDelimiter = #'SystemStartBar  }
<<  \new PianoStaff
<<
 \new Staff  \choral
 \new Staff  << \ttt \\ \bbb >>
 >>
\new Staff   \mmm
 >>
%\header { breakbefore = ##t }
\layout{  }
\midi {}
}

