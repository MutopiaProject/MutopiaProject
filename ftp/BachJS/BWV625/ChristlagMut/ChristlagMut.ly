% -*- mode: LilyPond ; coding: utf-8 -*-
% juillet 2007 : écrit la reprise le plus simplement possible contrairement à la tradition,
% simplifié écriture,
% doigté et mis notes de la main droite à la première portée, gauche seconde portée
% présenté sur une seule page A4 paysage hors titre et bas de page Mutopia.
\version "2.10.16"
\include "italiano.ly"

\header {
 mutopiatitle = "Christ lag in Todesbanden"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 625"
 mutopiainstrument = "Organ"
 date = ""
 source = "fichier Mutopia de Urs Metzger"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Pierre Pouillon"
 maintainerEmail = "pierre(at)ssji.net"
 lastupdated = "2007 juillet"

 title = "Christ lag in Todesbanden"
subtitle = "à un clavier et pédale"
 composer = "Jean-Sebastien Bach"
 opus="BWV 625"

 footer = "Mutopia-2007/07/07-999"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


global = {\key la \minor
\time 4/4
\override TextScript #'font-name = #"Emmentaler"
\override Script #'script-priority = #1
\partial 4
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 17)

halsup = {\stemUp \tieUp}
halsdown = {  \stemDown  \tieDown }

staffup = {   \change Staff = dessus \halsdown }
staffdown = {   \change Staff = basse \halsup }

oo = {\once \override TextScript #'extra-offset = #'( 0 . 2 )}
oom = {\once \override TextScript #'extra-offset = #'( 0 . -0.5 )}
of = {\once \override Fingering #'extra-offset = #'( 0 . 2 )}
ofp = {\once \override Fingering #'extra-offset = #'( 0 . 1.2 )}
ofm = {\once \override Fingering #'extra-offset = #'( 0 . -1 )}

a = \rtoe
q = \lheel

choral = \relative do'' {
\global
\halsup
\repeat volta 2 {
 la4-2-4
|%1
    sold4-1-3 la8-1-4 si^"3--2"^"5--4" do4-1-5 re^"1--2"^"5"
|%2
do^"4-5" si^"1--2"^"4--5"
 la-1-4^\fermata la4-1-5
|%3
    fa-1-3 sol-2-4 la^" "-5 sol8-1^"4--5" fa-1-4
%4
|mi2^"1--2"^"3--5" }
\alternative {    {
\once \override Fingering #'extra-offset = #'( -0.5 . -4 )
 re4-4 \fermata    }
{ \set Score.measurePosition = #(ly:make-moment 2 4 )
\once \override Fingering #'extra-offset = #'( -0.5 . -4 )
 re2-4 \fermata }}
\bar "||"

|%5
  re8-1 mi-2-3 fa4-1-4 \of sol-5 re8-1-2 \of mi-4
|%6
  fa4-1^"5--3" sol-2-4  la-5 \fermata la^"5--1"
|%7
  re16-4 mi dod-1-3 re  dod4-1-2 \prall re4-1-3 mi16-4 fa re mi-5
|%8
 \of do!4-4 \of si-3  la-1 \fermata la-2
|%9
  do-5 la8-1-3 sib-2-4 \ofp do4-5 sol-2-3
|%10
\ofp  fa-3 \ofp mi-3  re2-1\fermata
|%11
  la'4-1-5 sol-3 fa-2 mi-1
|%12
 \partial 2. \ofp re2.-4 \fermata
\bar "|."
}

alto = \relative do' {
\global
\override Fingering #'direction = #UP
\halsdown
\repeat volta 2 {fa4
|%1
    mi4  mi16
\once \override Fingering #'extra-offset = #'(0 . 1)
fad-2 sold!8   la16 si-4 sol-1 la-2-4   fa8 mi-1 ~
|%2
    mi16 fa-2 mi fa   re mi re mi    dod re-1 mi fa    re mi re dod-2
|%3
    re8 [ \staffdown la] \staffup re do!-1 ~ do dod-2 re16 mi-3 do re-2
|%4
sib8 sol-1   la16-2 sib-3 sol-1 la }
 \alternative {
   {  \staffdown fa4 \staffup }
{
\set Score.measurePosition = #(ly:make-moment 2 4 )
\staffdown
  fa16 la sol sib!   la4 \fermata
 }}
|%5
  la16 si! \staffup dod8  re4 ~ re16 mi16-3 do16 re16-2 sib16 re8-3 dod16-2
|%6
  re8 [\staffdown la8] \staffup re8 do!8-1 ~ do16  re-2 sib!-1 do   \staffdown la sib! sol la_"1"
|%7
  fa8 \staffup la'8 la4 la \staffdown  sol8 fa_"2"
|%8
  mi8 [\staffup  la-1]  ~ la sold-2   la16 sib-5 sol-4 la   fa sol fa sol
|%9
  mi4  fa8 sol   ~ sol8 [ fa8-1 ]  ~ fa8 mi8-1-4 ~
|%10
  mi16 mi-2 re8-1-4 ~ re16 re-1 dod8-2 sol16\rest \of la'16-5 sol la   fa sol mi fa
|%11
  re4 ~  re8 do16\rest \staffdown \oom sol16_"3"  \oom do8_"1" si16\rest fa16_"3"   sib8 la16 sol16_"2"
%12
  \partial 2. fad8 \staffup sib!8-2 la16-1 sib16-2 sol16-1 sib16-2  la4-1 \fermata
}

tenor = \relative do' {
\global
\clef bass
\override Fingering #'direction = #DOWN
\repeat volta 2 {
 re16-2 mi do re
%1
    si4-4  do8-3 re   mi-1 mi  re16 do si do-1
|%2
    la8-3 la4 sold8   la16 sib sol la-1   fa sol mi fa
|%3
    re8-5 fa-1-3 ~ fa16 sol-2 mi sol   fa sol mi fa   re4-5
|%4
   mi16-2 fa-1 re-3 mi-2   dod-4 re-3 si!-5 dod-4 }
\alternative {
{re4-1-3 }
{
\set Score.measurePosition = #(ly:make-moment 2 4 )
 re8-3-5 mi_"2"_"4--5" fa4-2-4
}}
%5
  fa16-2-4 sol-1-3 mi fa   re8-5 la'-1 sol4-2 ~ sol16 fa mi fa
|%6
 re8-5 fa8-1-3 ~ fa16 sol16-2 mi16 sol16 fa4-3 fa8-2-4 mi8_"2"_"5--4"
|%7
 re8_"3--4"_"5" fa'8-1 mi4-2 re16-3 mi16 do!16 re16 \tieDown si!4-1-5 ~
|%8
si16-1-5 \tieUp do16-3 la8   mi'16-2 fa16 re16 mi16   dod8-4 la8-5  re16-2 mi16 re16 mi16
|%9
 do!4-2  ~ do16 re sib do   la16-4 sib la sib   do4-2 ~
|%10
do8 fa,16\rest fa16-5 sib8-2 fa16\rest mi16-5   fa8-4 sib!16-2 do   la sib sol la
|%11
\stemDown
fa4-5 ~   fa16 \ofm fa-4
\tieDown \ofm
mi8-5 ~    mi16 \ofm mi-4 \ofm re8-5 ~   re16-1 \of re-4 dod8-1-5
%12
re16-3-5 la'-1 sol-2 la-1    fad-3 sol-2 mi-4 sol    fad4-3 \fermata
}


pedale = \relative do {
  \global
  \clef bass
  \repeat volta 2 { r8 re_\a
%1
    mi16^\q fa^\a re_\a mi^\a   do_\a re^\a si_\a do^\a   la8_\a la'4^\q sold8^\a
|%2
    la8^\q [do,_\a]   re_\q [mi^\a]   la,4_\a r8 la_\a
|%3
    re16^\q mi^\a do_\a re^\a   sib8_\a do^\a   fa,_\a la_\q sib16_\a do^\a la_\a sib^\a
|%4
 sol8_\q mi8_\a la4^\a
}
\alternative {{ re,4_\a}
{
\set Score.measurePosition = #(ly:make-moment 2 4 )
re2_ \a
}}
  re'4_\a  ~ re16 mi^\a do!_\a re^\a   sib!_\a do^\a la_\a sib^\a  sol4_\a
%6
  re'16^\q mi^\a do_\a re^\a   sib8_\a do^\a  fa,4_\a r
|%7
  r8 re'_\a   la'16^\q sib^\a sol_\a la^\a   fa8_\q [fad_\a]   sol^\q [sold^\a]
|%8
  la^\q do,16_\a re^\q mi8^\a mi,_\a   la4^\a   r8 re_\a
|%9
  la'16^\q sib^\a sol_\a la^\a   fa4_\a ~  fa8^\a fa,_\a  do'16^\q re^\a sib_\a do^\a
|%10
  la8_\a [sib^\a] sol_\a [la^\a]  re,4_\a re'^\a ~
%11
  re16 mi^\q do_\a re^\a    sib8_\a do^\a    la_\a [ sib^\a] sol_\a [la^\a] re,2._\a \fermata
}

\paper {system-count = 3
  indent = 2\cm
}

\score {\new StaffGroup
\with{ \remove System_start_delimiter_engraver }
  <<
    \new PianoStaff {
           <<
	\context Staff = dessus <<
	  \new Voice \choral
	  \new Voice \alto
	>>
	\context Staff = basse {
	  \new Voice \tenor
	}
      >>
    }
    \context Staff = pedal {
        \context Voice \pedale
    }
  >>
  \layout{}
}

\score {\unfoldRepeats
\new StaffGroup
\with{ \remove System_start_delimiter_engraver }
  <<
    \new PianoStaff {
          <<
	\context Staff = dessus <<
	  \new Voice
        \set Staff.midiInstrument = "oboe" \choral
	  \new Voice
 \set Staff.midiInstrument = "church organ" \alto
	>>
	\context Staff = basse {
	  \new Voice
 \set Staff.midiInstrument = "church organ" \tenor
	}
      >>
    }
    \context Staff = pedal {
        \context Voice
 \set Staff.midiInstrument = "church organ"\pedale
    }
\new Staff {
         \set Staff.midiInstrument = "church organ"
         \transpose do do, \pedale
      }
  >>
   \midi{ tempoWholesPerMinute = #(ly:make-moment 40 4) }
}
