% -*- coding: utf-8 -*-

%8 mars 2007 : rectif doigté pédales mesures 2 et 7

%16 juin 2007 simplifié et amélioré l'écriture du programme.
%repris la présentation de silences
%mis en clef de sol la main gauche mesures 17 et sqq.
%simplifié qq doigtés
%amélioré doigté mesures 23, 29 main gauche
%tous les doigtés en police emmentaler
%présentation assoupli : chacun peut  changer nombres de pages ou de lignes en modifiant system-count, lanscape-portrait et éventuellement  global-staff-size
%mis avoid-slur en marche. Pas trouvé de avoid-tie ?

\include "italiano.ly"
\version "2.10.16"

\header {
 title = \markup\center-align {"Prélude"  \fontsize #-1 \normal-text "de Prélude, fugue et variation"}
 composer = \markup {{"César Franck "} \tiny {" opus 18 FWV 30"}}
% opus =
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
 footer = "Mutopia-2007/06/19-936"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 19)

ot = {\once \override TextScript #'extra-offset = #'( 0 . 1 )}
ott = {\once \override TextScript #'extra-offset = #'( 0 . 2 )}
of = {\once \override Fingering #'extra-offset = #'( 0 . 1 )}
off = {\once \override Fingering #'extra-offset = #'( 0 . 2 )}

\paper {
top-margin = #4
bottom-margin = #6
head-separation = #0
print-first-page-number = ##f
print-page-number = ##t
ragged-bottom=##f
ragged-last-bottom=##f
system-count = 12
oddFooterMarkup = \markup\tiny "Prélude Franck Op. 18"
evenFooterMarkup = \markup\tiny "Prélude Franck Op. 18"
page-top-space = #1
foot-separation = #1
}

global ={
   \key si \minor
   \time 9/8}

droite =\relative do
 { \global
\set  Staff.instrumentName =  \markup {\halign #-0.7 \fontsize #0 \column { "Bourdon 8 Flûte 8" "      Hautbois 8"}}
 \clef treble
re''8-- -3 \p dod-2^\markup{" " \raise #1.5 \bold \fontsize #2 "Andantino"} re-3_\markup{\italic "cantabile"} si4-1 dod8 re mi fad---5
|%2
re---3 dod-2 re-3 si4-1 dod8-2 re-1 mi  fad-3
|%3
si---5 sol-4 mi-2 dod4-1 re8-2 sol---5 mi-3 dod-2
|%4
lad4-1 si8-2 mi---5 dod-3 lad!-2 re---4 si-2 sold-1 |
|%5
si16-3 lad sold-1 si-3 lad8-2 dod16-4 si lad!-2 dod-4 si8-1 re16-3 dod si-1 re-3 dod-2 mi-4
|%6
re8->-3 dod re-3 si4-1 dod8 re mi fad-5
|%7
re->-3 dod-2 re-3 si4-1 dod8-2 re-1 mi fad-3
|%8
si---5 sold-4 mid-2  dod4-1 re8-2 sold!---5 mid!-4 dod-2|
|%9
si4^\markup { \finger  "1 - 2" } la?8-1 fad'---5 la,-2 fad-1 fad'^--5 sold,-2 mid-1
|%10
sold16-3  fad mid-1 sold-3 fad8-2 la16-4 sold fad-2 la-4 sold8-3 si16-5 lad sold-3 si-5 lad-4 fad-1
|%11
re'8->-3 dod re-3 si4-1 dod8-2  re-1 mi fad-3
|%12
re-1 dod-2 re-3 si4-1 dod8-2 \< re-1 mi fad-3
|%13
si-5 sol-3 \! mi-1 \> dod4-2 re8-1 \! sol-5_\markup\italic "espress." mi-3 do-1
|%14
lad4-2_\markup\italic "dim."  si8-1 \once \override Fingering #'extra-offset = #'(-2 .  -2) \once \override TextScript #'extra-offset = #'(0 . -2) si'-5^\markup\fontsize #2 "Poco rall." re,-2 si-1  si'-5 dod,-2 lad!-1|
|%15
si4.-2^\markup\fontsize #2 "a Tempo" ~si8 r r r4 r8
|%16
fad8-1 sol4-2 \< fad8-1 lad4-3 fad8-1 si4-4 \!
|%17
fad8-1 [dod'-5] mi,-1 re-3 dod-2 si-1 fad'4.-5
|%18
fad8-1 si4-4 \< fad8-1 dod'4-5 fad,8-1 re'4-5 \!
|%19
fad,8-1 [mi'-5] mi,-1 re-3 dod si-1 fad'4.-5
|%20
fad8-1 fad'-5 re-3 <<{si2.-2}\\{ s4 s4  \> s4 \!}>>
|%21
fad8-1 fad'-5 re-3 si2.-2
|%22
sol8-1 sol'-5 fad mi-3 fad sol-5 fad4 mi8
|%23
re4.-2 ~re8 r r r4 r8
|%24
la8-1 sib4-2 \< la8-1 dod4-3 la8-1 re4-4 \!
|%25
la8-1 mi'-5 sol,!-1 fa!-3 mi re-1 la'4.-5
|%26
la8-1 re4-4 \< la8-1 mi'4-5 la,8-1 fa'!4-5 \!
|%27
la,8-1 sol'!-5 sol,!-1 fa!-3 mi re-1 la'4.^\markup { \finger  "5 - 1" }
|%28
la8-1 la'8-5 fa!-4 re2.-2_\markup\italic "cresc."
|%29
la8-1 la'8-5 fad!-4 re2.-2
|%30
si8-1 si'-5 la sold-3_\markup\italic "dim." la si-5 la4 sold!8-3
|%31
fad4.-2 ~fad8 r r r4 r8
dod8-2_\markup\italic "piu forte" re4-3  dod8-2\< mi4-4 dod8-2 fad4-5 \!
|%33
dod8-2 si-1 la-3 si4-4\> sold8-2 la4-3\! fad8-1
|%34
dod'-2 fad4-4 dod8-2\< sold'4-5 dod,8-2 la'4-5\!
|%35
dod,8-2 si-1 la-3 si4-4\> sold8-2 la4-3 fad8-1\!
|%36
fad'-4 \f sold4-5 fad8-3 la4-5 fad8-3 si4-5
|%37
mi,8-2 fad4-3 mi8-2 sold4-4 mi8-2 la4-5
|%38
re,8-1 mi4-2 re8-1 fad4-3 re8-1 sold4-4
|%39
dod,8-2 re  mi-4 dod-2 si-1 la-3 sold4 fad8-1
|%40
si-2 dod re-4 si-2 la-1 sold-3 fad4-2 mid8-1
|%41
la8-2 si dod-4 la-1 sold-2 fad-1 re'4-5 mid,8-1
|%42
la8-2 si dod-4 la-1 sold-2 fad-1 re'4-5 mid,8-1
|%43
la-2 si_\markup{\text \italic "dim."} dod-4 la-1 sold-3 fad-2 la-4 sold fad-2
|%44
la-4\pp sold-3 la-4 fad4-2 sold!8-3 la-1 si dod-3
|%45
la-1 sold-3 la-4 fad4-2 sold!8-3 la-1 si dod-3
|%46
fad-5 re-3 si-2 sold4-1 la8-2 re-5 si-3 sold!-2
|%47
mid4-1 fad8^\markup{\finger{2-1}} fad'-5 la,-2 fad-1 fad'-5 sold,-2 mid!-1
|%48
fad4.-2 ~fad8 \<la-4 fad-1\! fad'-5\> sold,-2 mid-1\!
|%49
fad4.-2^\markup\fontsize #4 "Rall." ~fad8 la-4 fad-1 fad'-5 sold,-2 mid-1
|%50
\override Script #'script-priority = #1
fad2.-2\fermata r4 r8 \bar "|."  }

gauche = \relative do
 {   \global
\set  Staff.instrumentName =  \markup {\halign #-0.3 \fontsize #0 { "Bourdon 8  "} }
  \clef treble
\override Staff.TextScript #'font-name = #"Emmentaler"
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
<<{s8 fad8-4-2 sol-5-1 s mi-4-2 fad-5-1 s re-4-2 mi-5-1}\\{r8 re si r dod lad r si sol}>>|
 r re'-2 si-4 r mi-1 dod-3 r fad-1 re-3 |
%17
<<{ s8 lad-5 \of sol'-1 fad^"5---3"^"2" \off mi-1 \off re-1 \off dod4.-2}\\{ r8 lad!4 si4. ~si8 lad^"4" fad^"5"}>>|
r8 sold!-4 fad-5 r lad-3 fad-5 r si-2 fad-5 |
%19
r dod'-1 sol!-4 <<{ fad-5 mi'-1 re-3-1 \off dod4.-2
%20
la'8\rest re,-1 si-3 la'\rest mi-1 si-3 la'\rest fad-1 si,-3
|%21
la'\rest re,-1 si-3 la'\rest mi-1  si-3 la'\rest \off fad-1 ~ fad^"3-4"
%22
~fad mi-4-2 re-3-1 dod-5-2 \off re-2 \off mi-1 la\rest-5 \off la-1 \off sol-1
fad-2}
\\
{ \override Fingering #'direction = #UP fad,4 si8 ~si lad-4 fad-5
%20
~
fad2.~fad4.
~fad2.~fad4 si8
~si4. sol4. la4.
~la8
}>>
<<{la'8^"2-3"^"1" sib-5-2 si\rest sol-4-2 la-5-1 si\rest fa-4-2 sol-5-1}\\{fad re s mi dod s re sib}>>|
 %24
 r fa'-2 re-4 r sol!-1 mi-3 r la-1 fa!-3|
%25
 <<{s8 dod!8-5 \of sib'-1 la-5-1 \off sol-2 \off fa!-1 mi4.-3-1}\\{ r8 dod!4 re4. ~re8 dod-4 la-5}>>|
 r8 si!-4 la-5 r dod!-3 la-5 r re-2 la-5|
%27
r mi'-2 sib-4
 <<{\override Rest  #'extra-offset = #'(-0.0 . -2.0){la-5 \of sol'-1 fa!-3-2} \off mi4.-1
r8 fa!-1 re-3 r sol-1 re-3 r la'-1 re,-3
|%29
r fad-2 re-3 r sol-1 re-3 r \off la'-1 ~la-3
~la sol!-1 fad-2 mid-1 fad-2 sold-1 r dod-1 si-1
la-2 dod-2-1 re-5-1 r si-4-2 dod-5-1 r la-3-2 si-5-1}
\\{la,4 re8 ~re dod-4 la-5
%28
~la2. ~la4.
%29
~la2. ~la4 re8
%30
~re4. ~re4. dod4.
%31
~dod8 la' fad s8 sold mid s fad re
}>>
|%32
r8_\markup {\override #'(font-name . "New Century Schoolbook") {Flûte 8 pieds}} la'-1 fad-3 r la-1 fad-3 r la-1 fad-3
|%33
<<{\override Rest  #'extra-offset = #'(-0.0 . -2.0)
la-5-1 \off sold-2 \ot fad^"3-2" r sold!-3-1 mid-5-2 r fad-3-1 dod-5-3
|%34
r re'-4-1 \off dod-2 r mi-4-1 \off dod-2 r fad-4-1 \off dod-2
|%35
|la-5-1 \off sold-2 \off fad-3 r sold!-4-2 mid-5-1 r fad-3-1 dod-5-3}\\{
%33
dod4. ~dod8 re si r dod la
|%34
s la'4 s8 la4 s8 la4
|%35
dod,4. ~dod8 re si s dod la}>>
%36
|r8 re'-1 si-3 r re si r re si
|r dod-2 la-4 r dod la r dod la
%38
|r si-1 sold-3 r si-1 sold-3 r si-1
%38
<<{\override Rest #'extra-offset = #'(-0.0 . -2.0)
\of sold!-2
%39
 ~sold8- 4 fad-3 sold-2 \of mi4.-3 ~mi8 mid^"5-4"^"2" fad-5-1
%40
~fad-3 mi!-2 \of fad-1  re4.^"3-2" ~re8-4 red^"5-4"^"1-2" mid-5-1
|%41
r fad-3-2 mid-4-1 r dod-5-3 la'-3-1 ~la fad-5-2 sold-4-1
|%42
r fad-3-2 mid-4-1 r dod-5-3 la'-3-1 ~la fad-5-2 sold-4-1}
\\{
%38
s8
%39
mi r r r4 dod8-4 ~dod si la
|%40
re r r r4 si8-4 ~si la sold
|%41
r re' si r la dod ~dod si re
|%42
r8 re si r la dod ~dod si re}>>
|%43
r8 dod-3 fad-1 r re-2 fad-1 r si,-4 fad'-1
|%44
r_\markup{\override #'(font-name . "New Century Schoolbook") \column {"  " "Bourdon 8 pieds"}} dod-3 fad-1 r la,-5 dod-3 fad-1 sold-2 la-1
%45
|r dod,-3 fad-1 r la,-5 dod-3 fad-1 sold-2 la-1
|r si,-5 fad'-1 r dod-3 fad-1 r sold,-5 re'-2
%47
|r la-5 dod-3 r sid-4 red-2 r si-4 dod-2
|r \clef bass la-3 sold-4 fad4-5 la8-3 ~la si-2 sold!-4
%49
|r dod-1  la-3 fad4-5 la8-3 ~la si-2 sold-4
\override Script #'script-priority = #1
la2.-3\fermata r4 r8
}



pieds = \relative do { \global
\set  Staff.instrumentName =  \markup {\halign#-0.7 {"Flûtes 16, 8 "} }
\override Script #'avoid-slur = #'outside
\clef bass
si'2.\rtoe  ~ si4.
la2.^\lheel ~ la4.
 %3
(sol8)\rtoe r r fad\rtoe r r mi\rtoe r r
|%4
 re\rtoe r r dod\rtoe r r si\rtoe r r
%5
fad2._\rtoe ~ fad4.
|%6
si'2.\rtoe ~ si4.
|%7
 la2.^\lheel ~ la4. (sold8\rtoe) r r fad\rtoe r
r mid\rtoe r r
%9
fad\rtoe r r si,_\rtoe r r dod\rtoe r r
   fad,2._\rtoe ~ fad4.
%11
 si'2.\rtoe ~ si4.
|%12
la2.^\lheel ~ la4.
%13
(sol8\rtoe) r r fad\rtoe r r mi\rtoe r r
|%14
re\rtoe r r dod_\rtoe r r fad\rtoe r r
%15
 <<{r4 r8 si r r si r r}\\{si,2._\rtoe  ~si4.}>>|
si8_\rtoe r r si r r si r r|
 %17
 si2._\rtoe~si4.
|%18
si8_\rtoe r r si8 r r si8 r r si2. ~si4.
 %20
 |si4._\rtoe dod4.\rtoe re4.^\lheel
 %21
   si4._\rtoe dod4.\rtoe re4.^\lheel
| mi4.\rtoe sib4._\rtoe la4._\lheel |
 %23
 <<{s4^\rtoe r8_\rtoe re' r r re r r}\\{re,2. ~re4.}>>
 re8_\rtoe r r re8 r r re r r|
 %25
 re2._\rtoe ~re4.
| re8_\rtoe r r re8 r r re r r |
 %27
 re2._\rtoe~re4.
| re4._\rtoe mi4.^\lheel fa!4.^\rtoe |
 %29
 re4._\rtoe mi4.^\lheel fad4.^\rtoe |
 sol!4.^\lheel si,4._\rtoe dod4.^\rtoe |
 %31
 <<{fa4\rest r8 fad^\rtoe r r fad r r}\\{fad,2._\rtoe ~fad4.}>>
|%32
fad'8^\rtoe r r mi r r re r r
|%33
dod2.^\rtoe fad,8_\rtoe r r
fad'^\rtoe r r mi r r re r r
|%35
dod2.^\rtoe fad,8_\rtoe r r
 |si'^\rtoe r r la^\rtoe r r sold^\rtoe r r
 %37
 |la^\rtoe r r sold^\rtoe r r fad^\rtoe r r
 |sold^\rtoe r r fad^\rtoe r r mi^\rtoe r r
 %39
 |la,_\rtoe _\markup  {\column {"Ajoutez un jeu de 8 ou 4"" à la pédale"}}  si4_\lheel la8_\rtoe dod4^\rtoe la8_\rtoe re4^\rtoe
 |sold,8_\rtoe la4_\lheel sold!8_\rtoe si4^\rtoe sold8_\rtoe dod4^\rtoe
 %41
 |fad,8_\rtoe sold4^\rtoe fad8_\rtoe la4^\rtoe fad8_\rtoe si4^\rtoe
 |fad8_\rtoe sold4^\rtoe fad8_\rtoe la4^\rtoe fad8_\rtoe si4^\rtoe
 %43
 |fad2._\rtoe _\markup {Otez le jeu de 8 ou 4} ~fad8 r r
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
