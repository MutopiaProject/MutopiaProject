  % -*- coding: utf-8 -*-
\version "2.10.16"
\include "italiano.ly"
%les ligatures de phrasé ont été remplacées par des souffles, ça allège la partition
%titres sur une première page et musique sur deux pages par book
%main gauche première portée, droite seconde portée en accord avec les doigtés de mon cru

al = {} te = {} ba = {} nu = {}
%ligne suivante activée colore les voix et affiche les numéros de mesures
%al =   { \override NoteHead #'color = #red \override Stem #'color = #red \override Fingering #'color = #red  \override TextScript #'color = #red }  te =   { \override NoteHead #'color = #green  \override Fingering #'color = #green  \override TextScript #'color = #green }   ba =  {\override NoteHead #'color = #blue  \override Fingering #'color = #blue  \override TextScript #'color = #blue }  nu = { \override Score.BarNumber  #'break-visibility = #end-of-line-invisible  \override Score.BarNumber #'X-offset = #2  \override Score.BarNumber #'font-shape = #'italic \override Score.BarNumber #'Y-offset = #-13    \override Score.BarNumber #'color = #magenta    }

\header{
 mutopiatitle = "Final de la sixième sonate"
 mutopiacomposer = "Mendelssohn-BartholdyF"
 mutopiaopus = "Opus 65 n°6"
 mutopiainstrument = "Organ"
 date = "1845"
 source = "Wima éditions Outremontaises"
 style = "Romantic"
 mutopiacopyright = "Public Domain"
 maintainer = "Pierre Pouillon"
 maintainerEmail = "pierre(at)ssji.net"
 lastupdated = "2008 avril"

 title =  \markup\fontsize #3 \center-align{ " " " " " " " " " " " " "Final de la sixième sonate" }
 composer = \markup\fontsize #3 \bold \center-align{  " " " " " "  " " " "" " "FélixMendelssohn" "Opus 65 n°6"}
 subtitle = \markup\fontsize #3 \center-align{ " " " "  " " "pour orgue à un clavier et pédale"}

 footer = "Mutopia-2008/04/21-1383"
 copyright = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
breakbefore = ##t
}


\paper {
%annotate-spacing = ##t
top-margin = 2\mm
head-separation = 0\mm
page-top-space = 0\mm
system-count = 6
ragged-bottom=##f
ragged-last-bottom=##f
tagline= ##f

}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18.2)

global = {
\key re \major
\time 6/8
\override Staff.NoteCollision #'merge-differently-headed = ##t
\override Staff.NoteCollision #'merge-differently-dotted = ##t
\override Script #'avoid-slur = #'inside
\override Fingering #'font-size = #'-4
}

ot = {\once \override TextScript #'extra-offset = #'( 0 . 1 )}
ott = {\once \override TextScript #'extra-offset = #'( 0 . 2 )}
otm = {\once \override TextScript #'extra-offset = #'( 0 . -1 )}
of = {\once \override Fingering #'extra-offset = #'( 0 . 1 )}
off = {\once \override Fingering #'extra-offset = #'( 0 . 2 )}
ofm = {\once \override Fingering #'extra-offset = #'( 0 . -1 )}
offm = {\once \override Fingering #'extra-offset = #'( 0 . -2 )}

e = { \once \override TextScript #'font-name = #"Emmentaler"}


fu = \override Fingering #'direction = #UP
fd = \override Fingering #'direction = #DOWN

hu = {
  \stemUp
  \tieUp }
hd = {
  \stemDown
  \tieDown }
su = { \change Staff = "dessus" \hd  \fu }
sd = { \change Staff = "gauche" \hu \fd }
b = \breathe

soprano =  \relative do' {
\global
\nu
\hu
\partial 8
fad8-2-4
~
|%1
fad sol-1-5 \off mi-3   re-1 \off fad-2 \off si-5
|%2
\e \ott la4^"4--5" sol8-2-4  fad-1-3 [ mi-1 ] \b la-2
|%3
re4-5 dod8-1-4 \e si4^"1"^"3--5"  \e la8-2-4 ~
|%4
la \e sol8.^"1-2"^"3-4" fad16-1-3   mi4-2 \b mi8-1
|%5soprano
fad-2 mi-1 \e sol^"3-4"   fad-1-3 \of mi-2 \of re-1
|%6
\of fad-2 \e si^"1"^"4-3" re-3-5  \e dod-2^"4-5" \e si^"1"^"4-5" la-2-4 ~
|%7
la sold-3 si-5   fad-3 mid-2 fad-1-3
|%8soprano
la-1-5 \of sold8.-4 \of fad16-3  \b \of fad4.-4 ~
|%9
fad8 sol-1-5 \of mi-3    re-1 fad-2 si-5
|%10 soprano
\e la4^"4--5"-1  sol8-4-2 [ fad-1-3 ] \b mi-1 la-2
|%11
re4-5 dod8-1-4 \e si4^"1"^"3-5"  \e la8-2-4 ~
|%12
la \e sol8.^"1-2"^"3-4" fad16-1-3   mi4-2 \b mi8-1
|%13 soprano
fad-2 la-1 re-2-4   dod-1-3 \of si-2 la-1
|%14
\e dod-2 fad-1-4 la-5   sold-4 fad-3 mi-1 ~
|%15
mi red-3 fad-1-5   dod-3 sid-2 dod-1-3
|%16
mi-5 red8.-4 dod16-3   dod4 ~ \offm <la dod mi>8-1-3-5 ~
|%17 soprano
<la dod mi> <si re>-2-4 \e <la dod>^"1"^"3-4"   <sold si>4-2-3 <la dod>8-2-4
%\break
|%18
<sold re'>-1-4 <la fad'>-1-5  \e <si ~ mi>^"2"^"4-5" \off <si re>-4  <la dod>-1-3  <fad la dod>-1-2-4 ~
|%19
<fad la dod> <sold si>-1-3 la-2 \e sold!^"1--3" ~  sold4
|%20 soprano
<fad la>8-2-4 <mid si'>-1-5 <fad sid>-2-4 <mid dod'>4-1-5 \b fad8-1-4
|%21
fad sol-5 mi   re-1 \of fad-2 \of si-5
|%22
\e la4^"4-5"-1  sol8-4-2 [ fad-1-3 ] \b mi-1 la-2
|%23 soprano
re4-5 dod8-1-4 \e si4^"1"^"3-5"  \e la8-2-4 ~
|%24
sold-3 la-4 si-1    dod-2 re-3 mi-4
|%25
fad4-5 mi8-4   re-1-3 dod-2 si-1
|%26 soprano
la-3 si-4 sol-2   fad-1 si-2 re-3
|%27
sol4.-5 ~sol8 \b mi-3 [ dod-1]
|%28
la'4.-5~   la8 \b sol-4 [ fad-3 ]
|%29
mi-2 re-1 dod-4   re-5 fad,-2 si-5
|%30soprano
la-4 sol-3 mi-1   re4-2 \b  fad8-2-4
|%31
fad \of sol-5 mi-1-3   re-1 \of fad-3 \of  la-5 ~
|%32
la re,-2 sol-1-5   fad-1-2 \of la-3 \of do-5
|%33
\of si4-4 dod!8-1-5 re-1-5 la sol
|%34
\ot \e fad4.^"2-5"~ fad8 re-3 si-2
|%35soprano
la-1 re-3 ~ <re fad>-5 ~ <re fad>4 <dod mi>8-2-4
|%36
re2.-3 \fermata
}


alto =    \relative do' {
\al
\global
\hd
re8 ~
|%1alto
re8 dod4 re4. ~
|%2
re4 mi8  re \sd dod4-2
|%3
re8 mi \su fad   sol4 fad8 ~
|%4
fad mi8.  re16 \sd dod4-2   dod8
|%5
re < \parenthesize mi >8 re \su dod4 \sd si8
|%6
dod \su mid si'   sold mid? fad ~
|%7alto
fad4 s8 s4 dod8 ~
|%8
dod4. ~ dod8 r \fu re-2 ~
|%9
re dod4 re4. ~
|%10
re4 mi8 re \sd dod4-2
|%11
re8 mi \su fad   sol4 fad8 ~
|%12
fad mi8.  re16 \sd dod4-2   dod8
|%13
re  fad \su si   sold4 \sd fad8-2
|%14
sold \su la \sd fad ~ fad red dod ~
|%15
dod4 \su fad8 \sd  mi red-2 \su sold
|%16
s2.
|%17alto
\sd fad4.-1 ~ fad8 mi4-2
|%18
s4. mi4-1 dod8-2
|%19
s s fad-1 ~  fad mi4
|%20
s2 s8 \su
dod8 ~
|%21alto
dod4. re ~
|%22
re4 mi8    re  \sd dod4-2
|%23
re8 mi \su fad   sol4 fad8
|%24
\sd  mi fad-2 sold!    la4 sol8
|%25
fad8 sol-2 la  \su si \sd la sol
|%26alto
fad sol-1 mi  re4      fad8-2 ~
|%27
fad mi4-1 ~mi8 fa\rest mi~
|%28
mi re dod   re4.~
|%29
re8 mi4-1   re4.~
|%30alto
re4 dod8   <\parenthesize re>4 \su re8~
|%31
re4 dod!8  re \sd la-2 do
|%32
si4 \su dod!8   re4.~
|%33
re4 mi8 re4.~
|%34alto
re s
|%35
la~la~
|%36
la2.
}

tenor = \relative do' {

\global
\clef bass
\te
\hu
\fd
\otm
la8  ^\markup { \musicglyph #"p" \italic { \null\null\null\null "(legato e dolce)" } } ~
|%1
la4. s8 \of dod-1 si
|%2tenor
s2.
|%3
s2.
|%4
s2.
|%5
s2.
|%6
s2.
|%7tenor
re4._1 ~ re4 s8
|%8
s4. s4 la8 ~
|%9
la4.  s8 dod_1 si \b
|%10
s4 s8 \b
s4 s8
|%11
s2.*9

|%20
s8 s red dod4 la8 ~
|%21
la4.  s8 \of dod-1 si
|%22tenor
s2.*13
|%35
s8 fad4 ~ fad sol8
|%36tenor
s2.
}

basse =    \relative do {
\ba
\global
\fd
\slurDown
\tieDown
\partial 8
\clef "bass"
fad8-2-4
|%1
fad mi-5 sol-3  \e fad4_"4--5" sol8-2-4
|%2
la-3  si4-2 la-3 sol8-4 \b
|%3
fad-1-5  sol-2-5 la-4   si-3 dod-2 re-1  ~
|%4
re \b la4-4 ~ la  la8-2-4 ~
|%5
la-1-4 lad-3 si-1-2   < \parenthesize dod >8 lad?-3 fad-1-5 ~
|%6
fad-2 re'-1 fad-2   dod4.-5 \b
|%7basse
s4 si8-2   la-3 sold-4 la-3
|%8
fad-5 mid-5 si'-1 la-2 r fad-2-4 ~
|%9
fad \ofm mi-5 \ofm sol-3  \otm \e fad4_"4-5" sol8-2-4
|%10
la-3 si4-2 \ofm la-3 \ofm sol8-4 \b
|%11
fad-1-5  sol-2-5 la-4   si-3 dod-2 re-1  ~
|%12 basse
re \b la4-4 ~ la  la8-3-5 ~
|%13
\ofm la-2 re-1-2 fad-1   mid-2 dod4-4
|%14
dod8-1-4 \ofm sid-5 dod-1-4 \b red-1-2 sid-2-4 dod-3
|%15
\ofm la4.-5 ~
la4-1-4 sold8-5
|%16basse
dod-2 sid-3 fad'-1 mi-2 sol,\rest mi'-2
|%17
sol,4\rest re'8-3 ~ re4 dod8-4
|%18
\e <si re>_"3-1"_"5-3" \e <la dod>-2-4 \ofm <sold si>-3-5 ~ <sold si>  <la dod >-2-4 mi8\rest
|%19
\e re'4._"1-3" ~ re8  dod4-2-4 ~
|%20basse
\e dod8_"4-2" si-3 la-1-4   \e sold4_"2-1"_"5-3" fad8-2-4 ~
|%21
fad mi-5 sol-3  \e fad4_"4--5" sol8-2-4
|%22
la-3 si4-2 \ofm la-3 \ofm sol8-4 \b
|%23
fad-1-5  sol-2-5 la-4   si-3 dod-2 re-1 \b
|%24
mi4-3 re8-1-4  \e dod_"1"_"5-4" \ofm si-5 dod  \b
|%25basse
re4-2-4 \e dod8_"1"_"5-4"   \ofm si-5 dod-1-4 re-1-4~
|%26
re4-2 \b dod8-3-5   \ofm re4-4 mi,8\rest
|%27
mi8\rest mi\rest re'-2~re \e dod_"3-2" sol-1-5
|%28
\ofm fad4.-4 ~   fad8-1 \ofm sol-5 \ofm la-4
|%29
si4-2-3 \ofm la8-4 ~    la-1 mi\rest \ofm sol-3
|%30basse
fad-1-4 \ofm mi-5 sol-2-4   \ofm fad-5 \ofm la-3 do-2
|%31
si-1 mi,-5 sol-3   fad-4 mi\rest fad-1-4~
|%32
fad \offm sol-3 mi-4  re-5 fad-3 la-1~
|%33
la \b sol4-2 la8-1 fad-2 sol-1 \b
|%34
la,-5 re-3 fad-2   la-1 mi\rest mi\rest
|%35basse
mi\rest fad-2 re-4~   re4 mi8-1-3
|%36
fad2.-2 \fermata
}

a = \rtoe
q = \lheel

pieds =    \relative do {
\global
\clef "bass"
\nu
re8^\a
|%1
la4._\a si8^\a la_\a sol_\q
|%2basse
fad_\a sol^\a mi_\a   la4.^\a ~
|%3
la2._\q \b
|%4
si8_\a  dod^\a re^\q  la4_\a \b la8 \b
|%5
re^\q  dod^\a si_\a lad^\a fad_\a si^\a
|%6
la!_\a sold^\a fad_\a  mid_\q dod'^\a fad,_\a
|%7
si4.^\a  ~ si4 \b \b la8_\a \b
|%8
dod4.^\a ( fad,8 ) r re' ~
|%9
la4.  si8^\a la_\a sol-\q
|%10
fad_\a sol^\a mi_\a   la4.^\a ~
|%11
la2. \b
|%12
si8_\a dod^\a re^\q  la4_\a \b la8
|%13
re^\q dod^\a si_\q   dod_\a mid^\q fad^\a
|%14
mi!_\a red^\a dod_\a  sid_\q sold'^\a dod,_\a
|%15
fad4.^\a ~ fad4 \b mi8_\a
|%16
sold4.^\a (dod,8_\a)  r dod
|%17
re4._\q mi^\a ~
|%18
mi  la,4_\a \b la8_\a
|%19
si4._\q ~ si8 dod^\a si_\q
|%20
la_\a sold^\a fad_\a   dod'4^\a r8
|%21
la4._\a si8^\a la_\a sol_\q
|%22
fad_\a sol^\a mi_\a   la4.^\a ~
|%23
la2. ~
|%24
la4. ~ la4  \b la8_\a
|%25
re8^\a mi^\q fad^\a   sol4.^\q
|%26
la^\a si^\q \b
|%27
mi,8\rest mi\rest mi_\a   la4.^\a
|%28
mi8\rest mi8\rest fad_\a   si4^\a la8^\q
|%29
sol4.^\a   fad8_\a si^\a sol_\a
|%30
la4.^\a \b re,_\a ~
|%31
re2.~
|%32
re4.~re8 re\rest fad^\a~
|%33
fad sol^\q mi_\a    fad^\a re_\a si^\a
|%34
la4._\a r
|%35
r la^\a
|%36
re,2._\a \fermata
\bar "|."
}


\book {
\score{
\new StaffGroup
\with{ \remove System_start_delimiter_engraver }
    <<
    \new PianoStaff {
           <<
	\context Staff = dessus <<
	  \new Voice \soprano
	  \new Voice \alto
	>>
	\context Staff = gauche <<
	  \new Voice \tenor
\new Voice \basse
	>>
      >>
    }
    \context Staff = pedal {
        \context Voice \pieds
    }
  >>
\header { breakbefore = ##t }
 \layout{
indent = 5\mm }
}
}

\score{
\new StaffGroup
\with{ \remove System_start_delimiter_engraver }
    <<
    \new PianoStaff {
           <<
	\context Staff = dessus <<
	  \new Voice  \set Staff.midiInstrument = "oboe" \soprano
	  \new Voice  \set Staff.midiInstrument = "church organ" \alto
	>>
	\context Staff = gauche <<
	  \new Voice \set Staff.midiInstrument = "church organ" \tenor
\new Voice \set Staff.midiInstrument = "church organ" \basse
	>>
      >>
    }
    \context Staff = pedal <<
        \new Voice \set Staff.midiInstrument = "church organ" \pieds
\new Voice  \set Staff.midiInstrument = "clarinet" \transpose do' do \pieds
>>
>>
\midi {  tempoWholesPerMinute = #(ly:make-moment 50 4) }
}



