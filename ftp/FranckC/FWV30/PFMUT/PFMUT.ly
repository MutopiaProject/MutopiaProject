% -*- coding: utf-8 -*-
%8 mars 2007 : rectif doigté pédales mesures 2 et 7
%
%


\include "italiano.ly"

\version "2.10.16"
%%%%%%
\header {
 title = \markup\center-align {"Prélude"  \fontsize #-1 \normal-text "de Prélude, fugue et variation"}
 composer = "César Franck"
 opus = "FWV 30  opus 18"
 mutopiatitle = "Prélude"
 mutopiacomposer = "FranckC"
 mutopiaopus = "FWV 30"
 mutopiainstrument = "Organ"
 date = "1862"
 source = "IMSLP"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Pierre Pouillon"
 maintainerEmail = "pierre@ssji.net"
 lastupdated = "2007/Mar/08"
 footer = "Mutopia-2007/03/08-936"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18.0)
\paper {
top-margin = #0
bottom-margin = #1.0
print-first-page-number = ##f
print-page-number = ##f
ragged-bottom=##f
ragged-last-bottom=##f
%tagline=##f
}
global ={
   \key si \minor
   \time 9/8
}
droite =\relative do
 { \global
\set  Staff.instrumentName =  \markup {\halign #-0.7 \fontsize #0 \column { "Bourdon 8 Flûte 8" "      Hautbois 8"}}
 \clef treble
re''8-- -3 \p dod-2^\markup{" " \raise #3.0 \bold \fontsize #3 "Andantino"} re-3_\markup{\italic "cantabile"} si4-1 dod8-2 re-3 mi-4 fad-5--
 | re---3 dod-2 re-3 si4-1 dod8-2 re-1 mi-2  fad-3 |
 %3
 si---5 sol-4 mi-2 dod4-1 re8-2 sol---5 mi-3 dod-2
 | lad4-1 si8-2 mi---5 dod-3 lad!-2 re---4 si-2 sold-1 |
 %5
 \break \noPageBreak
si16-3 lad-2 sold-1 si-3 lad8-2 dod16-4 si-3 lad!-2 dod-4 si8-1 re16-3 dod-2 si-1
  re-3 dod-2 mi-4
| re8->-3 dod-2 re-3 si4-1 dod8-2 re-3 mi-4 fad-5 |
%7
  re->-3 dod-2 re-3 si4-1 dod8-2 re-1 mi-2 fad-3
| si---5 sold-4 mid-2  dod4-1 re8-2 sold!---5 mid!-4 dod-2|
\break \noPageBreak
%9
 si4^\markup { \finger  "1 - 2" } la?8-1 fad'---5 la,-2 fad-1 fad'^--5 sold,-2 mid-1
 | sold16-3  fad-2 mid-1 sold-3 fad8-2 la16-4 sold-3 fad-2 la-4 sold8-3 si16-5
  lad-4 sold-3 si-5 lad-4 fad-1 |
 %11
 re'8->-3 dod-2 re-3 si4-1 dod8-2  re-1 mi-2 fad-3
| re-1 dod-2 re-3 si4-1 dod8-2 \< re-1 mi-2 fad-3|
  \break \pageBreak
%13
si-5^\markup{ " " \halign #-0.2 {\raise #2.0 {\fontsize #1 "Prélude Franck 2/4"}}} sol-3 \! mi-1 \> dod4-2 re8-1 \! sol-5_\markup{\text \italic "espress."} mi-3 do-1|
 lad4-2_\markup{\text \italic "dim."}  si8-1 si'-5^\markup{\text \fontsize #3 "Poco rall."} re,-2 si-1  si'-5 dod,-2 lad!-1|
 %15
 si4.-2^\markup{\text \fontsize #3 "a Tempo"}~si8 r r r4 r8|
fad8-1 sol4-2 \< fad8-1 lad4-3 fad8-1 si4-4 \!  \break \noPageBreak
%17
  fad8-1 dod'-5 mi,-1 re-3 dod-2 si-1 fad'4.-5| \noBreak
 fad8-1 si4-4 \< fad8-1 dod'4-5 fad,8-1 re'4-5 \!| \noBreak
 %19
 fad,8-1 mi'-5 mi,-1 re-3 dod-2 si-1 fad'4.-5| \noBreak
 fad8-1 fad'-5 re-3 <<{si2.-2}\\{ s4 s4  \> s4 \!}>>| \noBreak
%21
 fad8-1 fad'-5 re-3 si2.-2| \break \noPageBreak
sol8-1 sol'-5 fad-4 mi-3 fad-4 sol-5 fad4-4 mi8-3|
%23
re4.-2 ~re8 r r r4 r8 |
la8-1 sib4-2 \< la8-1 dod4-3 la8-1 re4-4 \!|
%25
 la8-1 mi'-5 sol,!-1 fa!-3 mi-2 re-1 la'4.-5| \break \pageBreak
la8-1^\markup{ " " \halign #-0.2 {\raise #2.0 {\fontsize #1 "Prélude Franck 3/4"}}} re4-4 \< la8-1 mi'4-5 la,8-1 fa'!4-5 \! |
 %27
 la,8-1 sol'!-5 sol,!-1 fa!-3 mi-2 re-1 la'4.^\markup { \finger  "5 - 1" }
| la8-1 la'8-5 fa!-4 re2.-2_\markup{\text \italic "cresc."}|
%29
 la8-1 la'8-5 fad!-4 re2.-2| \break \noPageBreak
  si8-1 si'-5 la-4 sold-3_\markup{\text \italic "dim."} la-4 si-5 la4-4 sold!8-3 |
 %31
  fad4.-2 ~fad8 r r r4 r8
dod8-2_\markup{\text \italic "piu forte"} re4-3  dod8-2\< mi4-4 dod8-2 fad4-5 \!
  %33
 |dod8-2 si-1 la-3 si4-4\> sold8-2 la4-3\! fad8-1
  \break \noPageBreak
|dod'-2 fad4-4 dod8-2\< sold'4-5 dod,8-2 la'4-5\!
 %35
 |dod,8-2 si-1 la-3 si4-4\> sold8-2 la4-3 fad8-1\!
|fad'-4 \f sold4-5 fad8-3 la4-5 fad8-3 si4-5
%37
 |mi,8-2 fad4-3 mi8-2 sold4-4 mi8-2 la4-5
\break \pageBreak
|re,8-1^\markup{ " " \halign #-0.2 {\raise #2.0 {\fontsize #1 "Prélude Franck 4/4"}}} mi4-2 re8-1 fad4-3 re8-1 sold4-4
%39
 |dod,8-2 re-3  mi-4 dod-2 si-1 la-3 sold4-2 fad8-1
|si-2 dod-3 re-4 si-2 la-1 sold-3 fad4-2 mid8-1
%41
 |la8-2 si-3 dod-4 la-1 sold-2 fad-1 re'4-5 mid,8-1
\break
|la8-2 si-3 dod-4 la-1 sold-2 fad-1 re'4-5 mid,8-1
  %43
 |la-2 si-3_\markup{\text \italic "dim."} dod-4 la-1 sold-3 fad-2 la-4 sold-3 fad-2
  |la-4\pp sold-3 la-4 fad4-2 sold!8-3 la-1 si-2 dod-3
%45
 |la-1 sold-3 la-4 fad4-2 sold!8-3 la-1 si-2 dod-3
\break
|fad-5 re-3 si-2 sold4-1 la8-2 re-5 si-3 sold!-2
 %47
 |mid4-1 fad8^\markup{\finger{2-1}} fad'-5 la,-2 fad-1 fad'-5 sold,-2 mid!-1
|fad4.-2 ~fad8 \<la-4 fad-1\! fad'-5\> sold,-2 mid-1\!
  %49
 |fad4.-2^\markup{\text \fontsize #4 "Rall."} ~fad8 la-4 fad-1 fad'-5 sold,-2 mid-1
|fad2.-2\fermata r4 r8 \bar "|."  }

gauche = \relative do
 {   \global
\set  Staff.instrumentName =  \markup {\halign #-0.3 \fontsize #0 { "Bourdon 8  "} }
  \clef treble
 r8 fad'-3 ( si-1) r8 re,-5 (fad-3 si-1 dod-2 re-1 )
r8 fad,-3 si-1 r re,-5 fad-3 si-1 dod-2 re-1
%3
r mi,-4 si'-1 r fad-3 si-1 r dod,-5 sol'-1|
 r re-4 fad-2 r mi-3 fad-2 r re-4 fad-2 |
%5
r dod-5 fad-2 r re-4 fad-2 r mi-3 sol-1|
 r  fad-3 si-1 r re,-5 fad-3 si-1 dod-2 re-1|
%7
r fad,-3 si-1 r re,-5 fad-3 si-1 dod-2 re-1|
r8 mid,-5 si'-1 r fad-3 si-1 r dod,-5 sold'-2 |
%9
r re-4 fad-2 r dod-3 re-2 r si-4  dod-3 |
 r la-5 dod-2 r si-4 re-2 r dod-3 mi-1 |
%11
r fad-3 si-1 r re,-5 fad-3 si-1 dod-2 re-1 |
 r fad,-3 si-1 r re,-5 fad-3 si-1 dod-2 re-1|
%13
r mi,-5 si'-1 r fad-4 si-1 r do,-5 sol'-1 |
 r re-4 fad-2 r mid-3 sold-1 r mi-3 fad-2 |
%15
<<{r8 fad8^\markup{\fontsize #-2 {\column  {2 4}}} sol^\markup{\fontsize #-2 {\column  {1 5}}} r mi^\markup{\fontsize #-2 {\column  {2 4}}} fad^\markup{\fontsize #-2 {\column  {1 5}}} r re^\markup{\fontsize #-2 {\column  {2 4}}} mi^\markup{\fontsize #-2 {\column  {1 5}}}}\\{r8 re si r dod lad r si sol}>>|
 r re'-2 si-4 r mi-1 dod-3 r fad-1 re-3 |
%17
<<{r8 lad-5 sol'-5-1 fad^\markup{\fontsize #-2 {\column  {"2" "5-"}}} mi^\markup{\fontsize #-2 {\column  {"1-" "4-"}}} re^\markup{\fontsize #-2 {\column  {1 3}}} dod4.}\\{r8 lad!4 si4. ~si8

 \set fingeringOrientations = #'(up) <lad-4> <fad-5>}>>|
r8  \clef bass sold!-4 fad-5 r lad-3 fad-5 r si-2 fad-5 |
%19
r dod'-1 sol!-4 <<{fad-5 mi'-1 re^\markup{\fontsize #-2 {\column  {1 3}}} dod4.^\markup{\fontsize #-2 {\column  {"2" "-"}}}
r8 re-1 si-3 r mi-1 si-3 r fad'-1 si,-3
r re-1 si-3 r mi-1  si-3 r fad'^\markup{\fontsize #-2 {\column  {"1" " "}}}~fad^\markup{\fontsize #-2 {\column  {"-" "3-4"}}}
~fad^\markup{\fontsize #-2 {\column  {"-" "-"}}} mi^\markup{\fontsize #-2 {\column  {"2" "4"}}} re^\markup{\fontsize #-2 {\column  {1 3}}} dod^\markup{\fontsize #-2 {\column  {2 5}}} re^\markup{\fontsize #-2 {\column  {"2" "-"}}} mi^\markup{\fontsize #-2 {\column  {"1" "-"}}} r la-1 sol-1
fad-2}
\\
{fad,4 si8 ~si <lad-4> < fad-5>
~fad2.~fad4.
~fad2.~fad4 si8
~si4. sol4. <la-5>4.
~la8
}>>
  \clef treble
<<{la'8^\markup{\fontsize #-2 {\column  {"1-2" "2-3"}}} sib^\markup{\fontsize #-2 {\column  {1 5}}} r sol^\markup{\fontsize #-2 {\column  {2 4}}} la^\markup{\fontsize #-2 {\column  {1 5}}} r fa^\markup{\fontsize #-2 {\column  {2 4}}} sol^\markup{\fontsize #-2 {\column  {1 5}}}}\\{fad re s mi dod s re sib}>>|
 %24
 r fa'-2 re-4 r sol!-1 mi-3 r la-1 fa!-3|
%25
 <<{r8 dod!8-5 sib'^\markup \finger \column {1 -5} la^\markup{\fontsize #-2 {\column  {1 5}}} sol^\markup{\fontsize #-2 {\column  {"2" "-"}}} fa!^\markup{\fontsize #-2 {\column  {"1" "-"}}} mi4.^\markup{\fontsize #-2 {\column  {1 3}}}}\\{r8 dod!4 re4. ~re8 dod^\markup{\fontsize #-2 {\column  {"-" "4"}}} la^\markup{\fontsize #-2 {\column  {"-" "5"}}}}>>|
 r8 si!-4 la-5 r dod!-3 la-5 r re-2 la-5|
%27
r mi'-2 sib-4

 <<{\override Rest  #'extra-offset = #'(-0.0 . -2.0){la-5 sol'-1 fa!^\markup{\fontsize #-2 {\column  {"2" "3"}}} mi4.^\markup{\fontsize #-2 {\column  {" 1" "-"}}}
r8 fa!-1 re-3 r sol-1 re-3 r la'-1 re,-3
r fad-2 re-3 r sol-1 re-3 r la'-1 ~la^\markup{\fontsize #-2 {\column  {"1" "3"}}}
~la sol!-1 fad-2 mid-1 fad-2 sold-1 r dod-1 si-1
la-2 dod^\markup{\fontsize #-2 {\column  {"1" "2"}}} re^\markup{\fontsize #-2 {\column  {"1" "5"}}} r si^\markup{\fontsize #-2 {\column  {"2" "4"}}} dod^\markup{\fontsize #-2 {\column  {"1" "5"}}} r la^\markup{\fontsize #-2 {\column  {"2" "3"}}} si^\markup{\fontsize #-2 {\column  {"1" "5"}}}}
}\\{la,4 re8 ~re dod^\markup{\fontsize #-2 {\column  {"-" "4"}}} la^\markup{\fontsize #-2 {\column  {"-" "5"}}}
~la2. ~la4.
~la2. ~la4 re8
~re4. ~re4. dod4.
~dod8 la' fad s8 sold mid s fad re
}>>
%32
|r8_\markup \fontsize #1 {Flûte 8 pieds} la'-1 fad-3 r la-1 fad-3 r la-1 fad-3
|<<{\override Rest  #'extra-offset = #'(-0.0 . -2.0)
la^\markup{\fontsize #-2 {\column  {"1" "5"}}} sold^\markup{\fontsize #-2 {\column  {"2" "-"}}} fad^\markup{\fontsize #-2 {\column  {"3" "---4"}}} r sold!^\markup{\fontsize #-2 {\column  {"1" "3"}}} mid^\markup{\fontsize #-2 {\column  {"2" "5"}}} r fad^\markup{\fontsize #-2 {\column  {"1" "3"}}} dod^\markup{\fontsize #-2 {\column  {"3" "5"}}}
%34
|r re'^\markup{\fontsize #-2 {\column  {"1" "4"}}} dod^\markup{\fontsize #-2 {\column  {"2" "-"}}} r mi^\markup{\fontsize #-2 {\column  {"1" "4"}}} dod^\markup{\fontsize #-2 {\column  {"2" "-"}}} r fad^\markup{\fontsize #-2 {\column  {"1" "4"}}} dod^\markup{\fontsize #-2 {\column  {"2" "-"}}}
|la^\markup{\fontsize #-2 {\column  {"1" "5"}}} sold^\markup{\fontsize #-2 {\column  {"2" "-"}}} fad^\markup{\fontsize #-2 {\column  {3 -}}} r sold!^\markup{\fontsize #-2 {\column  {"2" "4"}}} mid^\markup{\fontsize #-2 {\column  {"1" "5"}}} r fad^\markup{\fontsize #-2 {\column  {"1" "3"}}} dod^\markup{\fontsize #-2 \bold \column  {3 5}}}\\{
dod4. ~dod8^\markup{\finger{-}} re si r dod la
|r la'4 r8 la4 r8 la4
|dod,4. ~dod8 re si r dod la}>>
%36
|r8 re'-1 si-3 r re si r re si
|r dod-2 la-4 r dod la r dod la
%38
|r si-1 sold-3 r si-1 sold-3 r si-1
%39
<<{\override Rest
#'extra-offset = #'(-0.0 . -2.0)
sold!-2 ~sold8^\markup{\fontsize #-2 \column{- 4}} fad-3 sold-2 mi4.^\markup{\fontsize #-2 \column{"3" " "}} ~mi8 mid^\markup{\fontsize #-2 \column{"2" "5-4"}} fad^\markup{\fontsize #-2 \column{"1-" "5"}}
~fad^\markup{\fontsize #-2 \column{- 3}} mi!-2 fad-1 re4.^\markup{\finger {3-2}} ~re8^\markup{\fontsize #-2 \column{- 4}} red^\markup{\fontsize #-2 \column{"1-2" "5-4"}} mid^\markup{\fontsize #-2 \column{1 5}}
|r fad^\markup{\fontsize #-2 \column{2 3}} mid^\markup{\fontsize #-2 \column{1 4}} r dod^\markup{\fontsize #-2 \column{3 5}} la'^\markup{\fontsize #-2 \column{1 3}} ~la fad^\markup{\fontsize #-2 \column{2 5}} sold^\markup{\fontsize #-2 \column{1 4}}
|r fad^\markup{\fontsize #-2 \column{2 3}} mid^\markup{\fontsize #-2 \column{1 4}} r dod^\markup{\fontsize #-2 \column{3 5}} la'^\markup{\fontsize #-2 \column{1 3}} ~la fad^\markup{\fontsize #-2 \column{2 5}} sold^\markup{\fontsize #-2 \column{1 4}}}\\{
\override Rest
#'extra-offset = #'(-0.0 . -2.0)
s8 mi r r r4 dod8^\markup{\fontsize #-2 \column{- 4}} ~dod si la
|re r r r4 si8^\markup{\fontsize #-2 \column{- 4}} ~si la sold
|r re' si r la dod ~dod si re
|r8 re si r la dod ~dod si re}>>
%43
|r8 dod-3 fad-1 r re-2 fad-1 r si,-4 fad'-1

|r_\markup \fontsize #1 \column {"  " "Bourdon 8 pieds"} dod-3 fad-1 r la,-5 dod-3 fad-1 sold-2 la-1
%45
|r dod,-3 fad-1 r la,-5 dod-3 fad-1 sold-2 la-1
|r si,-5 fad'-1 r dod-3 fad-1 r sold,-5 re'-2
%47
|r la-5 dod-3 r sid-4 red-2 r si-4 dod-2
|r \clef bass la-3 sold-4 fad4-5 la8-3 ~la si-2 sold!-4
%49
|r dod-1  la-3 fad4-5 la8-3 ~la si-2 sold-4
la2.-3\fermata r4 r8
}



pieds = \relative do { \global
\set  Staff.instrumentName =  \markup {\halign#-0.7 {"Flûtes 16, 8 "} }
\clef bass
si'2.\rtoe   ~si4.
  la2.^\lheel ~la4.
  %3
(sol8)\rtoe r r fad\rtoe r r mi\rtoe r r
   | re\rtoe r r dod\rtoe r r si\rtoe r r |
%5
 fad2._\rtoe ~ fad4.|
   si'2.\rtoe ~ si4.|
%7
 la2.^\lheel ~ la4. (sold8\rtoe) r r fad\rtoe r
   r mid\rtoe r r |
%9
fad\rtoe r r si,_\rtoe r r dod\rtoe r r |
   fad,2._\rtoe ~ fad4.|
 %11
 si'2.\rtoe ~ si4.| la2.^\lheel ~ la4.
   %13
 (sol8\rtoe) r r fad\rtoe r r mi\rtoe r r | re\rtoe r r dod_\rtoe
   r r fad\rtoe r r |
%15
 <<{r4 r8 si\rtoe r r si\rtoe r r}\\{si,2._\rtoe  ~si4.}>>|
si8_\rtoe r r si_\rtoe r r si_\rtoe r r|
 %17
 si2._\rtoe~si4.
| si8_\rtoe r r si8_\rtoe r r si8_\rtoe r r si2._\rtoe ~si4.
 %20
 |si4._\rtoe dod4.\rtoe re4.^\lheel
 %21
   si4._\rtoe dod4.\rtoe re4.^\lheel
| mi4.\rtoe sib4._\rtoe la4._\lheel |
 %23
 <<{r4^\rtoe r8_\rtoe re'^\rtoe r r re r r}\\{re,2. ~re4.}>>
 re8_\rtoe r r re8_\rtoe r r re_\rtoe r r|
 %25
 re2._\rtoe ~re4.
| re8_\rtoe r r re8_\rtoe r r re_\rtoe r r |
 %27
 re2._\rtoe~re4.
| re4._\rtoe mi4.^\lheel fa!4.^\rtoe |
 %29
 re4._\rtoe mi4.^\lheel fad4.^\rtoe |
 sol!4.^\lheel si,4._\rtoe dod4.^\rtoe |
 %31
 <<{fa4\rest r8 fad^\rtoe r r fad^\rtoe r r}\\{fad,2._\rtoe ~fad4.}>>

|fad'8^\rtoe r r mi^\rtoe r r re^\rtoe r r
   %33
|dod2.^\rtoe fad,8_\rtoe r r
|fad'^\rtoe r r mi^\rtoe r r re^\rtoe r r
 %35
 |dod2.^\rtoe fad,8_\rtoe r r
 |si'^\rtoe r r la^\rtoe r r sold^\rtoe r r
 %37
 |la^\rtoe r r sold^\rtoe r r fad^\rtoe r r
 |sold^\rtoe r r fad^\rtoe r r mi^\rtoe r r
 %39
 |la,_\rtoe _\markup \fontsize#1 {Ajoutez un jeu de 8 ou 4 à la pédale}  si4_\lheel la8_\rtoe dod4^\rtoe la8_\rtoe re4^\rtoe
 |sold,8_\rtoe la4_\lheel sold!8_\rtoe si4^\rtoe sold8_\rtoe dod4^\rtoe
 %41
 |fad,8_\rtoe sold4^\rtoe fad8_\rtoe la4^\rtoe fad8_\rtoe si4^\rtoe
 |fad8_\rtoe sold4^\rtoe fad8_\rtoe la4^\rtoe fad8_\rtoe si4^\rtoe
 %43
 |fad2._\rtoe _\markup \fontsize#1 {Otez le jeu de 8 ou 4} ~fad8 r r
 |fad'2.^\rtoe ~fad4.
 %45
 |mi2.^\lheel ~mi4.
 (re8)^\rtoe r r dod^\rtoe r r si_\rtoe r r
 %47
 |la_\rtoe r r sold_\rtoe r r dod^\rtoe r r
 |fad,4._\rtoe si4.^\lheel dod4.^\rtoe
 %49
|fad,4._\rtoe re'4.^\lheel dod4.^\rtoe
fad,2._\rtoe \fermata r4 r8
  }

\score

{
\new StaffGroup
\with{
\remove System_start_delimiter_engraver}
<<
\new InnerStaffGroup
\with {systemStartDelimiter = #'SystemStartBrace }
<<
\droite
\gauche>>
 \new Staff
\pieds>>
}

  \layout {
    indent = 3.0\cm }


\score {
<<
    \new Staff {
      \set Staff.midiInstrument = "church organ"
      \droite
    }
    \new Staff {
      \set Staff.midiInstrument = "reed organ"
      \droite
    }
    \new Staff {
      \set Staff.midiInstrument = "church organ"
      \gauche
    }
    \new Staff {
      \set Staff.midiInstrument = "church organ"
       \pieds
    }
    \new Staff {
      \set Staff.midiInstrument = "church organ"
      \transpose do do,
      \pieds
    }
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 8)
      }
    }



}
