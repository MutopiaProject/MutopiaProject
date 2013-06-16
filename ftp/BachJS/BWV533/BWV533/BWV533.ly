% -*- coding: utf-8 -*-
\include "italiano.ly"
\version "2.16.1"

fff = { \override Score.Fingering #'font-size = #-3.5 }
fu = \override Fingering #'direction = #UP
fd = \override Fingering #'direction = #DOWN
hu = { \stemUp \tieUp }
hd = { \stemDown \tieDown }
su = { \change Staff = premiere \hd  \fu }
sd = { \change Staff = seconde \hu \fd }

b = \breathe


ofi = #(define-music-function (parser location extra-offset )
                        (pair?)
#{  \override Fingering #'extra-offset = $extra-offset #} )
ofd = { \ofi #'( 0 . 0.5 ) }
ofdd = { \ofi #'( 0 . 1 ) }
ofddd = { \ofi #'( 0 . 1.5 ) }
ofdddd = { \ofi #'( 0 . 2 ) }
ofm = { \ofi #'( 0 . -0.5 ) }
ofmm = { \ofi #'( 0 . -1 ) }
ofmmm = { \ofi #'( 0 . -1.5 ) }
ofmmmm = { \ofi #'( 0 . -2 ) }
rr = \revert Fingering #'extra-offset
fi = \once \override Fingering #'staff-padding = #'()

oft = #(define-music-function (parser location extra-offset )
                        (pair?)
#{  \override TextScript #'extra-offset = $extra-offset #} )
otd = { \oft #'( 0 . 0.5 ) }
otdd = { \oft #'( 0 . 1 ) }
otddd = { \oft #'( 0 . 1.5 ) }
otdddd = { \oft #'( 0 . 2 ) }
otm = { \oft #'( 0 . -0.5 ) }
otmm = { \oft #'( 0 . -1 ) }
otmmm = { \oft #'( 0 . -1.5 ) }
otmmmm = { \oft #'( 0 . -2 ) }
rrt = \revert TextScript #'extra-offset

fff = { \override Score.Fingering #'font-size = #-3.5 }
eet = {\once \override TextScript #'script-priority = #100
 \once\override TextScript #'color = #white }

soprano = \relative si
{\key mi \minor \fff
\set baseMoment = #(ly:make-moment 1 16)
\set beatStructure = #'(1 3 1 3 1 3 1 3)
\set beamExceptions = #'()
r16 \fd si-1 \fu mi-3 sol-5 fad-4 \fd \sd do-2 si-1 la sol-3 \b si-1 sol-3 mi-5 si'-1 fad-2 red-3 si-5
|%soprano2
mi-2 \b si'-1 sol-3 mi-5 \fu mi'-3 \fd mi,-1 do-3 la-5 la'-1 \fu \su mi'-3 do-1 \fd la-5  \fu  do'-4 \fd mi,-1 do-3 la-5
|%soprano3
\set beatStructure = #'(1 2 2 2 1 6 2)
\fu la'-2 re-5 do si la-2 si do-4 sold-2 la-1 si do-3 si la-1 sol-3 fad-2 mi-1
|%soprano4
\set beatStructure = #'(1 5 3 5 2)
red-2 mi-1 fad-2 mi-1 red-2 do-1 \fd \sd si-1 la sol-3 la si-1 la-2 sol-1 fad-2 mi-3 red-4
|%soprano5
\set beatStructure = #'(1 3 1 3 2 2 4)
mi-3 mi-1 re do-3 si-1 la sol fad mi8 r r4
|%soprano6
\su \fu \set beatStructure = #'(4 4 4 4)
r4   <si''' red>32-1-3 mi-4   <si red>32 mi <si red>32 mi <si dod>-1-2 red-3   <si mi>16-1-3 fad' sol red!-2 mi-3 r r8
|%soprano7
r16 fad-4 sol red-2 mi r r8 r16 fad-4 sol red-2 mi r16 r8
|%soprano8
r16 fad-4 sol red-3  <lad dod>32-1-2 mi'-4 <lad, dod> mi' <lad, dod> mi' <lad, dod> mi'  << {\stemDown si4 r}\\{\stemUp \fu red!4-1-2~red16 fad-3 si8 }>>
|%soprano9
R1
|%soprano10
 r4 r32 mi,32-4 re! do! si s16. r32 \fd fad-3 sold la-1 \fu si-1 do re mi-4 <si re>-1-3 mi-1-4  <si re> mi <si re> mi <si re>-1-3 mi-1-4
|%soprano11
r16 sold,-2 la-1 si-2 la8.-2 \prall sold?16 << {\ofm <la do>4-1-3-5 r8 q} \\{mi4 s8 mi}>> \b }
sopranoDouze = \relative si
{<< \new Voice = "SopranOne" { \voiceOne
|%sopranoOne12
\ofm <fad' si>4-1-2-4 r8 si8-1-4 \b  la4-1-3 r8 la8-1-3 \b
|%sopranoOne13
sol4-1-2 r8 do-2-5 \b \rr fad,4-1 si4-2-5~
|%sopranoOne14
si8-1 mi,-1 la4-4~la8 red,   sol4^\markup{\finger\teeny \column{\lower #1 "3--5" "1--3"}}~
|%sopranoOne15
sol8-1-5 do,-1 fa4-4~fa8-1 mi-3 la4-5~
|%sopranoOne16
la8-1 re,-1 sol4-4~ sol8-1 fad!-3 si4-5~
|%sopranoOne17
si8-1 mi,-1  la4-4~la8-1 sol-3 do-5 si-4
|%sopranoOne18
lad4-2-3 r8 dod-4 r dod r dod-4
|%sopranoOne19
re4-1-5 r8 red-4 r red r red-4
|%sopranoOne20
mi4-2-5 r8 re-2-4 r re r re
|%sopranoOne21
do4-1-3 r8 fad-1-5 r fad r fad
|%sopranoOne22
si,4-1-2 r r r8 red-2-4
|%sopranoOne23
mi4-1-5 r8 re-2-4 r re r re-2-4
|%sopranoOne24
do4-1-3 r r r8 \ofm sold'-1-2-4
|%sopranoOne25
la4-1-2-5 r8 la-1-3-5 r la r la-1-3-5
|%sopranoOne26
sol4-1-2-4 \rr r r r8 <fad, si>~
|%sopranoOne27
si la r4 r16 mi'-5 lad,8-2 dod32-1-3 \ofdd mi-5 \rr dod mi dod mi dod-1-3 \ofdd mi-5 \rr
|%sopranoOne28
\ofm <si red>4-1-2-4 r r r8 < sold re'>-1-3 \rr
|%sopranoOne29
<la do>4-1-2 fad'16-4 sol-5 mi-3 fad-4  red-2 mi-3 dod-1 mi-3  red?8-2 <si red>-1-3 \ofm
|%sopranoOne30
<si mi>4-1-4 r r r8 red-1-2-4
mi4-1-2-5 s2.
}
\new Voice = "sopranTwo" \relative re'' { \voiceTwo
|%sopranoTwo12
red,4 s8 mi mi4 s8 red?
|%sopranoTwo13
mi4 s8 sol8 s4 fad
|%sopranoTwo14
\fu
mi r8 mi-1 red4-2 mi
|%sopranoTwo15
do r8 re-2 do4 r8 dod-2
|%sopranoTwo16
re4 r8 mi-2 re4 r8 red-2
|%sopranoTwo17
mi4 r8 fad-2 mi4 r16 sol r sol
|%sopranoTwo18
fad4 \ofd sol-1 sol-2 fad-1
|%sopranoTwo19
\ofddd fad do'!-3 do si-2 \rr
|%sopranoTwo20
si4 s8 si s si s si
|%sopranoTwo21
la4 s8 la s la s la
|%sopranoTwo22
sol4 s s s8 la
|%sopranoTwo23
sol4 s8 si s si s si
|%sopranoTwo24
la4 s s s8 <re mi>
|%sopranoTwo25
<do mi>4 s8 <do fad> s q s q
|%sopranoTwo26
<si mi>4 s s s8 red,
|%sopranoTwo27
mi4 s s fad16 fad fad fad
|%sopranoTwo28
fad4 r r \sd r8 \clef treble mi
|%sopranoTwo29
\fd mi4  la16-2 si-1 sol-3 la-2  fad-4 sol-3 mi-5 sol-1 fad8-2 <fad la>
|%sopranoTwo30
<mi sol>4 \rr \su r r r8 <la si>
|%sopranoTwo31
\fu <sol si>4 r8 <si, red>-1-3 <si mi>4-1-4 \fermata r
}>>}

 tenor = \relative do {\key mi \minor \clef bass
s1*2
\set Staff.baseMoment = #(ly:make-moment 1 16)
\set Staff.beatStructure = #'(1 2 2 2 1 6 2)
\set Staff.beamExceptions = #'()
s1*3
|%tenor6
\set Staff.beatStructure = #'(4 4 4 4)
r4 \clef treble \fd fad'32-3 la-1 fad32 la fad32 la fad32-3 la-1 sol16-2 r r8 r16 la-2 si-1 \fu do!-1
|%tenor7
<< { \stemDown \fd mi,4-1-3-5 r16 si'-2 do-1 \fu re!-1 \fd mi,4-1-2-5 r16 fad-2-4 sol-1-3 la-2
|%tenor8
sol4-1-3  } \\ { \stemUp <sol si>4 s <la do> s16 la si \fu do-1 si4 } >> \fd mi,32-5 sol-1 mi32-3 sol-1 mi32 sol mi32-3 sol-1   fad16-2 si,-5 red-3 fad-2 si4-1
|%tenor9
R1
|%tenor10
s4 s8 r32 \fd la-1 sold fad mi4 << {\stemUp sold?32 si sold si sold si sold si} \\{\stemDown \fd mi,16-2-4 mi mi mi-1-2}>>
|%tenor11
\fd \clef bass r16 si-3 do re-1 do8.-1 \prall si16 la4-4 r8 la-3 \b
}
tenorDouze = \relative si
{<< \new Voice = "TenorThree" { \voiceThree
|%tenorThree12
s4 r8 si dod4  r8 la
|%tenorThree13
si4 r8 do  <la do>4 si
|%tenorThree14
sold r8 la si4 si
|%tenorThree15
la r8 sol sol4 r8 la
|%tenorThree16
sol4 r8 la la4 r8 si
|%tenorThree17
\fd sol4 r8 si si4 mi8-2 re-1
|%tenorThree18
dod4 s8 mi r mi r mi
|%tenorThree19
re4 s8 la' r la r fad
|%tenorThree20
mi4 fa fa mi
|%tenorThree21
mi r8 fad-1 r fad r fad-1
|%tenorThree22
mi4 r r r8 fad
|%tenorThree23
mi4 fa-1 fa mi
|%tenorThree24
<la, mi'> r r r8 si'
|%tenorThree25
la4 r8 <fad la> r <fad la> r fad-2
|%tenorThree26
sol4 r r s
|%tenorThree27
s1
|%tenorThree28
s1
|%tenorThree29
s1
|%tenorThree30
s2. r8 fad
|%tenorThree31
mi4 r8 <la, > <sol >4 \fermata r
}
 \new Voice = "TenorFour" \relative si { \voiceFour
|%tenorFour12
si4-2 s8 sol8-2-4 la4-1-3 s8 fad-3-5
|%tenorFour13
sol4-2-4 s8 mi-1-5 fad4-1-2-4 fad8-1-4 si-1
|%tenorFour14
mi,4-3-5 s8 mi-2-5 fad4-1-4 mi-1-5
|%tenorFour15
mi-2-5 s8 re8-2-5 mi4-2-4 r8 mi-1-4
|%tenorFour16
re4-2-5 s8 mi-1-4  fad4-1-3 r8 fad-1-3
|%tenorFour17
mi4-2-4 s8 fad-2-5 sol4-2-4 s
|%tenorFour18
fad-3-5 r8 dod'-1-3 r dod r dod
|%tenorFour19
si4-2-4 r8 \clef treble fad'-1-2 r fad r si,-1-5
|%tenorFour20
si4-2-5 r8-1 si-3 r si r-1 si-3
|%tenorFour21
la4-2-5 do-4 do si-5
|%tenorFour22
si-2-5 s s  \clef bass  s8 si-1-5
|%tenorFour23
si4-2-5 si,8\rest si'-4 si,8\rest si' \oft #'(-1 . 0.5) si,8\rest_\markup{\finger\teeny {\lower #1 "2-1"}}  <mi si'>-2-5
|%tenorFour24
mi4-1-3-5 r r  \clef treble r8 mi'-1-3
|%tenorFour25
mi4 do-5 do-4 si-5
|%tenorFour26
<si mi>-1-3-5 r r \clef bass r8 si
|%tenorFour27
mi,4 r r lad32 dod lad32 dod lad32 dod lad32 dod
|%tenorFour28
si4 s s s8 si-1-4
|%tenorFour29
la4-1-5 s s s8 si-1-2-5
|%tenorFour30
si4-1-3-5 r r r8 \clef bass si-1-5
|%tenorFour31
si4-2-5 r8 fad-1-2 \ofd <si, mi>4-1-3-5 r
}>>
}

a = \rtoe
w = \lheel


pieds = \relative mi, {
\clef bass
\key mi \minor
R1*5
|%pieds6
mi4 r mi r
|%pieds7
sol r la r
|%pieds8
si r si r
|%pieds9
\set baseMoment = #(ly:make-moment 1 16)
\set beatStructure = #'(1 2 2 2 2 2 2 3)
\set beamExceptions = #'()
r16 lad' si lad   si mid, fad mid   fad dod red dod  red si32 fad' red fad si, fad'
|%pieds10
\set beatStructure = #'(4 4 4 4)
sold,4 r r mi
|%pieds11
la r la \b la'~
|%pieds12
la8 red, sol4~sol8 dod, \b fad4~
|%pieds13
fad8 si, mi4~mi8 re16 (do re8) do16 (si
|%pieds14
do4) r8 do si4 mi8 sol,
|%pieds15
la4 r8 si8 do4 r8 la \b
|%pieds16
si4 r8 dod re4 r8 si
|%pieds17
dod4 r8 red mi4 r
|%pieds18
fad4 r8 lad r lad r lad
| si4 r8 si r si r la!
|%pieds20
sol4 r8 sold r sold r sold
|%pieds21
la4 r8 red, r8 red r8 red_\a
|%pieds22
mi4_\a mi16_\a sol^\a fad_\a la  sol si la do^\a si8^\a  \noBeam si,8_\a
|%pieds23
mi4^\a r8 sold, r sold r sold_\a
|%pieds24
la4_\w la16_\a do si re  do mi re fa mi8 mi,
|%pieds25
la4 r8 red r8 red r8 red
|%pieds26
mi4 mi16 sol fad la sol si la do   si8 si,
|%pieds27
do4 r dod r8 fad
|%pieds28
si,4_\a si'16^\w do!^\a la! si  sold la fad la^\w  sold8^\a mi_\a
|%pieds29
la4^\a r8 la, si4 r8 si
|%pieds30
mi4 mi,16 sol' fad, la' sol, si' la, do' si8 si,
|%pieds31
mi4 mi, mi \fermata r
 \bar "|." \pageBreak }

\header{
 mutopiatitle =  "Prélude en mi mineur"
 mutopiacomposer = "BachJS"
 mutopiaopus =  "BWV 533"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Gesellschaft Ausgabe IMSLP"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Pierre Pouillon"
 maintainerEmail = "pierre(at)ssji.net"
 lastupdated = "2013 mai"

 footer = "Mutopia-2013/06/16-1843"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }

title = \markup\column\center-align { " " " " "Prélude et fugue en mi mineur" }
subtitle = \markup\column\center-align\italic { " " " " "à un clavier et pédale"  }
composer = \markup\column\center-align  { " " "Jean-Sébastien Bach" }
opus = "BWV 533" }

#(set-global-staff-size 19.5)

\paper {
print-page-number = ##t
print-first-page-number = ##f
ragged-bottom = ##f
ragged-last-bottom = ##f
}
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fsoprano = \relative si
{\key mi \minor
\revert MultiMeasureRest #'staff-position
\override Score.TextScript #'font-encoding = #'fetaText \override Score.TextScript #'font-size = #-3.5 \override Score.TextScript #'font-series = #'bold
\fff
R1*5
|%soprano2
|%soprano3
|%soprano4
|%soprano5
|%soprano6
r2 r8 si'-3 si4-\mordent
|%soprano7
r8 si-3 si4-\mordent r8 si-5 mi,-2 fad-3
|%soprano8
\stemUp sol-1-4 si-2-5 \eet  mi,-"1"-1 fad-2-3 sol4 do8-5 si-1-4
|%soprano9
la-1-"3-5" sol-2-4 fad-1-"3-4" mi-3  red4-1-2 r16 red!-2 mi-1 fad-2
|%soprano10
sol4-3 r8 do-5 si4-4 r8 la-5
|%soprano11
sol4-4 r8 lad8-2-5 si2-1-5~
|%soprano12
si16-1-5 lad-3 si-4 dod-5  lad!8.-3 si16-4 si8-1 fad'16-5 dod-3 re8-4 lad!-2
|%soprano13
si-1 fad'16-5 dod-3  re8-4 lad-2  si4-1 r8 mi-3
|%soprano14
fad-4 dod-1 re-2 mi fad sol16-5 dod,-1 dod8.-1 re16-2   \pageBreak
|%soprano15
si-1 do!-2 si-1 la!-2  sol-1 la-3 fad-2 sol-1  la-2 si-3 la sol-1  fad-2 sol-3 mi-1 fad-2
|%soprano16
sol8-1 re'16-5 la-2 si8-1 mi16-4 si-1 dod8-2 fad16-5 dod-2 red8-3 sol16-5 red-3
|%soprano17
mi8-1 la16-4 mi-1 fad8-2 si16-5 fad-2 sol8-3 red!-1 mi-2 mi16-4 si-1
|%soprano18
do8-2 si-1 la-2 do-4  si fad'16-5 la,-2 sol-1 si-2 mi-5 lad,-2
|%soprano19
red4-1-3-5 r8 red-1-2-4 mi4-1-2-5 r8 fad-1-2-5
|%soprano20
si,4-1-2-4 r8 si-2-3-4 si4-1-2-4 r8 si-1-3-4
|%soprano21
si4-1-2-4 r8 do-1-2-5  la-1-4 \ofddd sol16-3 \ofdd la-4 \rr  fad8.-1-2 fad16
|%soprano22
sol8-3  fad16-2  sol-3  mi8.-1 mi16 fad8 mi16-1 fad-3  red8.-2 \eet red16-2
|%soprano23
mi8-1 si'16-5 mi,-1 do'4-1-5 si2-1-"4-5"~
|%soprano24
si8 mi mi4-\mordent-\markup\magnify # 0.8 \natural r8 mi mi4-\mordent
|%soprano25
r8 mi-4 mi4-\mordent-\markup\magnify # 0.8 \natural r8 fad-5 si,-1 dod-2
|%soprano26
re-3 fad-5 si,-1 dod-2-3  re-1-4 fad-5 si,-1 dod-2
|%soprano27
re8.-3 mi16-4 dod8.-2 si16-1 si4 r8 fad'-4
|%soprano28
sol4-5 r8 si16-5 fad-3 sol4-4 r8 fad16-3 si,-1
|%soprano29
mi4-2 r8 si'16-5 si,-1 mi8. re16 do4~
|%soprano30
do-3-5 si ~si-3-5 la~
|%soprano31
la-3-5 sol-"2--1"-"4--3" fad8.-1-2 sol16 la8 sol16-1-3 fad^\markup\transparent - ^"2"
|%soprano32
sol8-1-3 la16^\markup\transparent 0 ^"5" sol^\markup\transparent 0 ^"4"  fad4-2-3 mi-1~mi16 sol-3 fad-2 mi-1
|%soprano33
si'-5 red,8-2 mi16-1~mi fad8-1-2 sol16-4  fad4-2-3 r8 red'-1-3-5
|%soprano34
mi4-1-3-5 r8 dod-1-2-4 red8.-1-3-5 \ofdddd red16-4 \rr mi8-1-5 red-2-4
|%soprano35
mi-3-5 fad,-1-2 sol la si-1-4 \ofddd do-5 \rr fad,8.-2-3 mi16-1
|%soprano36
mi1 \fermata \bar "|."
}
falto = \relative si
{\key mi \minor
\revert MultiMeasureRest #'staff-position
s1*9
|%alto2

|%alto3

|%alto4


|%alto5

|%alto6

|%alto7

|%alto8

|%alto9
\revert Fingering  #'direction
|%alto10
r8 mi mi4_\mordent_\markup\sharp r8 mi-1 mi4-\mordent
|%alto11
r8 mi-2 \ofd si-1 \rr dod   re fad-3 si,-1 dod-2
|%alto12
re dod ~dod \ofmm fad16-1 \rr \fd dod-2 re8-1 lad-4 si  fad'16-1  dod-2
|%alto13
re8-1 lad-4 si-3 fad'16-1 dod-2 re4-1 r8 \su \fd lad'!8-2
|%alto14
si-1 lad-2 si4-1 si4. lad!8
|%alto15
si si,-4 mi-1 re dod-3 la-5 re-2 do-1
|%alto16
si-2 fad-4 sol-3 sold-2 la-1 lad-4 si-5 si'-1
|%alto17
do-3 dod-2 re!-1 red-2 mi-1 si16-2 fad-5 sol8-4 sold-3
|%alto18
la16-2 si-1 sol!-2 la-1   fad-2 sol-1 mi-2 fad-1   red8-3 si-5 mi-2 sol-1
|%alto19
fad4 r8 fad sol4 r8 fad
|%altotenor20
mi4 r8 fad mi4 r8 red
|%altotenor21
\override VoiceFollower #'style = #'dashed-line
mi4 r8 mi   re!4.  \showStaffSwitch \sd do8-1  \hideStaffSwitch
|%alto22
si4 do~do si~
|%alto23
si8. \su  mi16  mi8 la16-3 red,-1  mi8 fad16-2 mi-1  red8.-2 mi16-1
|%alto24
mi4 s2.
|%alto25
s1
|%alto26
r4 r8 lad si \showStaffSwitch \sd fad4 mi8 \hideStaffSwitch
|%alto27
fad4 \ofmmmm mi-2-4 red8 \rr \su si' si4-\mordent
|%alto28
r8 si^1 si4-\mordent r8 si^1 \sd mi, fad
|%alto29
sol \su si^1 \sd mi, fad sol\ofmmmm mi_3 \rr \su la4~
|%alto30
la8 fad16 red sol4~sol8 mi16 dod  fad4 ~
|%alto31
fad8 red16 si  mi4~mi4. mi8~
|%alto32
mi4 red \sd re!8 do16 si_2 do8  si
|%alto33
la sol si \su mi red4 r8 fad
|%alto34
mi4 r8 mi fad4  sol8 [ la]
|%alto35
si red, mi red mi4  red8. mi16
|%alto36
mi1
}

ftenor = \relative si
{\key mi \minor
\revert MultiMeasureRest #'staff-position
\revert Fingering #'direction
r8 si^3 si4-\mordent-\markup\magnify #0.8 \parenthesize\natural r8 si^3 si4-\mordent
|%tenor2
r8 si^3 mi,_3 fad sol_1 si^3 mi,_3 fad
|%tenor3
sol4 r8 si16^3 fad_2 sol4 r8 si16^2 fad_2
|%tenor4
sol4 \fu r8 mi'-4 fad-5 lad,-1 r16 si-3 la sol-1
|%tenor5
fad8-2 si16-5 fad-2  sol8-1 do16-4 sol-1  la8-2  re!16-5 la-2  si8-1 mi16-5 si-2
|%tenor6
do8-3 si la-1 sol  fad4 r8 fad
|%tenor7
sol4 r8 si16 fad sol4 r8 si16 fad
|%tenor8
\su si8 red mi red!  mi4 mi8\rest red
|%tenor9
mi re! do4 si  \sd si8 la
|%tenor10
si4 s2.
|%tenor11
s1*8
|%tenor12
|%tenor13
|%tenor14
|%tenor15
|%tenor16
|%tenor17
|%tenor18
|%tenor19
|%tenor22
s1*5
|%tenor23
|%tenor24
s4 r8 sold' la4 r8 sold
|%tenor25
la4 r8 lad si4 r8 fad
|%tenor26
fad4 r8 \stemDown mi-2 fad-1 dod-1-4 re_\markup\transparent 0 _"3" dod16-2-4 si_\markup\transparent 0 _"5-4"
|%tenor27
lad8-1-5 si4_\markup\transparent 0 _"4" lad8 si4-1-4 r8  red-2
|%tenor28
mi4-1 si8\rest red-4 mi4-3 la,8\rest red-2-4
|%tenor29
s1*6
|%tenor30
|%tenor31
|%tenor32
|%tenor33
|%tenor34
|%tenor35
r8 \stemUp si si4 r r8 si
}

voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)
ftenorB = \relative si
{\key mi \minor \clef treble
\revert MultiMeasureRest #'staff-position
s1*18
si'4 r8 si si4 r8 la!
|%tenorB20
sol4 r8 la sol4 r8 la
|%tenorB21
sol4 r8 sol s2
s1*11
|%tenorB33
s2. s8 si
|%tenorB34
si4 s8 \ofdddd lad  si [ la!-2 ] \rr

}

fbasse = \relative si,
{\key mi \minor \clef bass
\override MultiMeasureRest #'staff-position = #-2
R1*2
|%basse2

|%basse3
r8-1 mi-2 mi4-\mordent-\markup\sharp
 r8-1 mi-2 mi4-\mordent
|%basse4
r8-1 mi-2 si-5 dod-4 re-3 fad-1 si,-5 dod-4
|%basse5
re-3 red-2 mi-1 mi,-5 fad-4 fad'-1 sol-1 sold-2
|%basse6
la-1 sol!-2 fad-3 mi-2-4  red4-3-5 r8 red-3-5
|%basse7
mi4-2-4 r8 red-1-5 mi4-2-4 r8 red-1-5
|%basse8
mi-1 si16 la  sol8-4 si-2  mi,-5 do'16-1 sol-4 la8 si-2
|%basse9
do-1 si la4-"3-5"  si8-4 si'16-1 la-2  sol8-1-3 fad-2-4
|%basse10
mi4-1-5 r8 la-2 sol4-3 r8 fad-4
|%basse11
mi4-5 r16 mi-2 re dod  si4-5 r16 sol'-3 fad mi-5
|%basse12
fad8-4 mi-1-5 fad4-2-"4-5" r2
|%basse13
R1*6
|%basse14
|%basse15
|%basse16
|%basse17
|%basse18
|%basse19
r8 si si4-\mordent r8 si si4-\mordent
|%basse20
r8 si-1 mi,-5 fad  sol si-1 mi,-5 fad
|%basse21
sol-3 si16-1 sol-3  do4-1~do8 si16-2 do-1  la4-3
|%basse22
sol-2-4 sol-1-4 \ofmm la8-3 sol16-4 la-3 \rr  fad4-1-4
|%basse23
mi4.-5 fad8 sol la16-2 sol  fad8 la
|%basse24
sol4 \clef treble r8 si-1-5 do4-1-4 r8 re-2-5
|%basse25
mi4-1-4 r8 mi-2-4 re4-1-5 r8 mi-2-3
|%basse26
re4-2-4 r s2
|%basse27
s1*2
|%basse28

|%basse29
mi4-1-3 r8-3 re!-2-4 \autoBeamOff
\ofd \otd do4-1-"5--         --1"~do8 \rr \rrt \clef bass \autoBeamOn fad,?16-2 red-3
|%basse30
sol4-1 ~ sol8 mi16-2 dod-4  fad4-1~fad8 red16-3 si-5
|%basse31
mi4-2~mi8 sol16-1 mi-2  la8-1 si-2  do-1 si16-2 la-3
|%basse32
si4-2~si16 do-1 si-2 la-3  sold8-1-4 mi-1-5 la-1-3 sol-2-4
|%basse33
fad-1-"5-3" mi-2-4 red-1-5 mi  si'4  r8 la
|%basse34
sol4 r8 sol fad4 r
|%basse35
r8 fad-1-4 mi-1-5 \ofmmm la-2 \rr sol-3 fad-4~fad la-1-2
|%basse36
<mi sold si>1-1-3-5 ^\fermata
}
fpied = \relative si
{\key mi \minor \clef bass
\revert MultiMeasureRest #'staff-position
R1*11
|%pied2

|%pied3

|%pied4


|%pied5

|%pied6

|%pied7

|%pied8

|%pied9

|%pied10

|%pied11
%\revert Fingering #'direction
|%pied12
r2 r8 fad^\a fad4  ^\markup {  \musicglyph #"scripts.dpedaltoe" \lower#1 "-" \musicglyph #"scripts.dpedaltoe" } _\markup { " " \musicglyph #"scripts.dpedaltoe"} ^\mordent
|%pied13
r8 fad fad4-\mordent r8 fad^\a si,_\w dod_\a
|%pied14
re_\w fad^\a si,_\w dod_\a  re_\w mi^\w fad^\a fad,_\a
|%pied15
si4 r r2
|%pied16
R1*3
|%pied17

|%pied18

|%pied19
r4 r8 la'^\a sol4^\w r8 red_\a
|%pied20
mi4^\a r8 red8_\a mi4^\a r8 si_\a
|%pied21
mi4^\a r8 mi_\a fad^\a sol^\w re!4_\a
|%pied22
mi8^\a re_\a do_\w si_\a  la4_\w si8^\a la_\a
|%pied23
sol_\w sold_\a la4_\w si2_\a
|%pied24
mi4^\a r8 mi_\a la4^\a r8 si^\w
|%pied25
do4^\a r8 dod^\a si4^\w r8 lad^\a
|%pied26
si4^\w r8 fad_\a si la! sol4
|%pied27
fad2^\a si,4_\a r
|%pied28
R1*5
|%pied29
|%pied30
|%pied31
|%pied32
|%pied33
r2 r8 si^\a si4-\mordent
|%pied34
r8 si^\a si4-\mordent r8 si^\a mi,_\w fad_\a
|%pied35
sol_\w si^\a mi,_\w fad_\a sol_\w la_\a si4^\a
|%pied36
mi,1_\a \fermata
}

\markup\bold\large "                  Prélude"
\score
{\new StaffGroup
\with{ \remove System_start_delimiter_engraver  }
<< \new PianoStaff { <<
\new Staff = premiere { \soprano \sopranoDouze }
\new Staff = seconde {\tenor \tenorDouze} >> }
 \new Staff \pieds >>
\layout {
\context {    \PianoStaff \remove "Keep_alive_together_engraver"   }
\context { \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup #'remove-first = ##t
}
}
}

\markup\bold\large "                  Fugue"
\score
{\new StaffGroup
\with{ \remove System_start_delimiter_engraver  }
<< \new PianoStaff <<
\new Staff = premiere { \clef treble <<{\new Voice \voiceOne \fsoprano} {\new Voice \voiceTwo \falto} {\new Voice \voiceFive \ftenorB} >> }

\new Staff = seconde { \clef bass << {\new Voice \voiceThree \ftenor}  { \new Voice \voiceFour \fbasse} >> }
>>
\new Staff \fpied
>>
  }
\layout {
\context { \Staff \RemoveEmptyStaves     \override VerticalAxisGroup #'remove-first = ##t }
}
%%%%%%%%%%%%%%%
\score {
\new StaffGroup
<<
\new Staff = premiere { \set Staff.midiInstrument = "church organ"
  \soprano \sopranoDouze  <<{\new Voice \voiceOne \fsoprano} {\new Voice \voiceTwo \falto} {\new Voice \voiceFive \ftenorB} >> }
\new Staff = seconde {  \set Staff.midiInstrument = "church organ" \tenor \tenorDouze << {\new Voice \voiceThree \ftenor}  { \new Voice \voiceFour \fbasse} >> }
\new Staff   { \set Staff.midiInstrument = "church organ" \pieds \fpied }
\new Staff   { \set Staff.midiInstrument = "church organ" \transpose do do, \pieds \fpied }

>>

\midi{ }
}
