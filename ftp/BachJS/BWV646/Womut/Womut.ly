% -*- coding: utf-8 -*-
%
% 9 février 2007
%  corrigé mesures 4, 6, 10, 30 et 33 et adressé à Mutopia
%
% 12 février 2007
%   mis à jour doigté main gauche mesure 6
%   pour stabiliser l'impression sur 3 pages :
%    between-system-space mis de 2.4 à 1.0 pour faire place au tagline Mutopia
%    ajouté system-count = 8
%    pageBreak après mesures 8 et 20
%   qq explications dans le texte
%
%14 mars 2007
% ajouté bécarre de précaution au do de mesure 28 main gauche

\include "italiano.ly"
\header {
  title = \markup\center-align {"Wo soll ich fliehen hin" \fontsize #-1 \normal-text "Choral Schübler"}
  composer = "Bach"
opus = "BWV 646"
 mutopiatitle = "Wo soll ich fliehen hin ?"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 646"
 mutopiainstrument = "Organ"
 date = "1747"
 source = "University of Rochester - Fauré 1917"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Pierre Pouillon"
 maintainerEmail = "pierre@ssji.net"
 lastupdated = "2007/Fev/09"
 footer = "Mutopia-2007/03/15-925"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


\paper {
between-system-space = 1.0\cm
top-margin = 0.0\cm
bottom-margin = 1.0 \cm
raggedbottom=##f
raggedlastbottom=##f
tagline= ##t
system-count = 8
print-page-number = ##f
}

\version "2.10.10"

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 19)


soprano = \relative do'
{
\clef treble
\key mi \minor
\time 4/4
\set Staff.instrumentName = \markup {8 pieds }
r16 mi-1 fad sol fad-2 sol la fad-2 sol8-1 mi'4-5 red8-4 |
%2
mi16-5 si-2 la-1 sol-3 la-4 sol-3 fad-2 la-4 sol8-1 do-4 fad,-1 re'-5 |
%3
si16-3 mi,-1 fad sol do,-1 re mi do-1 la'-5 re,-1 mi fad si,-1 do re si-1|
%4
sol'-5 do,-1 re mi la,-1 si do la-1 fad'2-5
%5
~fad16 si-5 la sol la-4 sol fad la-4 sol-3 mi-1 fad-2 sol fad-2 sol la fad-2 |
%6
sol8-3 si-5 si,-1 red-3 mi4-4 r4 |
%7
r16 si'-5 la sol la-4 sol fad la-4 sol8-3 sol4-3 fad16-2 mi-1 |
%8
fad-2 mi-1 fad sol fad-2 sol la fad-2 sol-3 fad-2 sol la sol-3 la si-5 sol-3 |
\pageBreak
%9
la-4
 ^\markup {  " " \halign#-0.5  {\raise #4.0 \line {\fontsize #2  2" "/ \fontsize#-1 3 " "" "" "" "    Wo soll ich fliehen hin }}}
      sol-3 la-1 si-2 la-1 si do la-1 si8-2 mi-5 fad,-1 red'-4|
%10
mi16-5 mi,-1 fad sol fad-2 sol la fad-2 sol8-1 si-2 mi4-5
%11
~mi16 dod-3 re mi fad,-1 sold-2 lad-3 fad-1 re'-5 si-3 dod!-4 re-5 mi,-1 fad sol! mi-1 |
%12
dod'-5 lad-3 si-4 dod-5 re,-1 mi fad re-1 si'2-5
%13
~si16 fad-2 mi-1 re-3    mi re dod mi re si-1 dod re dod-2 re mi dod-2 |
%14
re8-1 si'-5 dod,-1 lad'-5 si,16-1 si'-5 la sol la sol fad la-4 |
%15
sol8-3 mi-1 r4 r16 la-4 sol fad sol-3 fad mi sol-3 |
do,-1si'-5 la sol la-4 sol fad la-4 red,-1 do'-5 si la si-4 la sol si-4 |
%17
mi,-1 re'-5 do si do-4 si la do-4 fad,-1 mi'-5 re do re-4 do si re-4 |
mi,8-1 sol4-3 fad16-2 mi-1 fad8-2 red'-5 mi-5 sol,-1
%19
~sol mi'-5 re! fad,-1 sol16-1 re'-5 do si do-4 si la do-4 |
si8-3 sol4-1 fad8-4 sol16-5 sol,-1 la si la-2 si do la-2 |
\pageBreak
%21
si-1
 ^\markup {  " " \halign#-0.5  {\raise #4.0 \line {\fontsize #2  3" "/ \fontsize#-1 3 " "" "" "" "    Wo soll ich fliehen hin }}}
     si'-5 do-4 re-5 sol,-1 la si sol-1 mi'-5 la,-2 si do fad,-1 sol la fad-1 |
re'-5 sol,-1 la si mi,-1 fad sol mi-1 do'2^\markup\finger{5- -4}
%23
~do16 re-5 do si do-4 si la do-4 si-3 sol-1 la si la-2 si do la-2 |
si8-3 re-5 re,-1 fad-3 sol4 r4 |
%25
r16 la-4 sol fad sol-3 fad mi sol-3 fad8^\markup \bold {1} red'-4 mi-5 sol,-1
%26
~sol16 la-4 sol fad sol-3 fad mi sol-3 fad8^\markup \bold {1} re'4-5 dod8-4 |
re16-5 re,-1 mi fad mi-2 fad sol mi^"1" fad-2 re'-5 do! si do-4 si la do |
%28
si-3 mi,-1 fad sol fad-2 sol la fad sol8^\markup\finger{3-5} si,-1 mi4^\markup\finger{4-1}
~mi16 si'-5 la sol la-4 sol fad la-4 sol8^"1" mi'4-5 re16-4 do |
%30
si-2 mi,-1 fad sol-1 do,-2 re mi do-1 la'-5 re,-1 mi fad si,-1 do re si-1 |
sol'-5 do,-1 re mi la,-1 si do la fad'2^\markup\finger{5---2}
%32
~fad16 si-5 la sol  la-4 sol fad la-4  sol mi^"1" fad sol  fad sol la fad-2 |
sol8-3 si-5 si,-1 red-3 mi4 r |
}

 tenor = \relative do
 {
\clef bass
\key mi \minor
\time 4/4
\set Staff.instrumentName = \markup{16 pieds}
mi8-1 mi,-5 r4 r16 mi'-5 fad sol fad-4 sol la fad-4 |
%2
 sol8-3 mi'4-1 red8-2 mi16-1 si-3 la-1 sol-2 la-1 sol fad la-1 |
%3
 sol8-2 mi-4 la-1 sol fad re-5 sol-2 fad-3 |
%4
mi -4 do-5 fad-2 mi red16 si'-1 la sol la-2 sol fad-4 la-2 |
%5
sol8^\markup\finger{3--5} mi'-1 fad,-5 red'-1 mi-1 mi,4-5 red8-4 |
%6
mi-3 sol16-1 la-2 si8-1 si,-5 mi16-2 si'-1 la-2 sol la sol fad la-2 |
%7
sol8-1 mi4-2 red8-3 mi16-2 si-5 dod-4 red!-3 dod-4 red mi dod-4 |
%8
red8-3 si'-1 red,-3 si-5 mi-3 do'-1 mi,-3 do-5 |
%9
fad-3 re'-1 fad,-3 re-5 sol16-2 si-1 la sol la-2 sol fad la-2 |
%10
sol8^\markup\finger{3--5} mi'4-1 red8-2 mi16-1 si-4 dod-3 re-2 dod!-3 re mi dod^"2" |
lad8-3 sold-4 lad-3 fad-5 si-1 la sol mi-5 |
%12
lad-2 fad-4 si-1 la-2 sol16-1 fad mi re-4 mi^"2" re dod mi-2 |
re8^\markup\finger{3-5} si'-1 dod,-5 lad'-1 si-1 si,4-5 lad8-4 |
%14
si-3 re16-1 mi-2 fad?8-1 fad,-5 si-3 mi4-1 red8^\markup\finger{2-1} |
%15
mi,16-5 mi'-1 fad-3 sol-2 fad-3 sol la fad-3 sol8-2 red-4 mi-3 sol-1
~sol fad16-2 mi-3 fad8-2 la4-1 sol16-2 fad-3 sol8-2 si-1
%17
~si la16-2 sol-3 la8-2 do8.-1 fad,16-4 sol la sol-3 la si sol-3 |
do-1 re-2 do-3 si    do la-5 si do^\markup \bold {1}    fad,-5 la-1 sol fad     sol^\markup \bold {1} fad mi sol-1 |
%19
dod,-5 sol'-1 fad mi fad-2 mi re fad-2 si,8-5 sol'-1 la,-5 fad'-1 |
sol16-1 sol,-5 la si la-4 si do la-4 si8-3 sol'4-1 fad8-2 |
%21
sol-1 fad mi-3 re-1 do la-4 re-1 do |
si-3 sol-5 do-2 si la16^\markup\finger{4-5} la'-1 sol fad sol-2 fad mi sol-2 |
%23
fad8-3 re-5 mi-4 fad-2 sol-1 sol,4-5 fad8-4 |
sol-3 si16-1 do-2   re8-1 re,-5   sol16-3 re'-1 mi^\markup \bold {3} fad-2 mi-3 fad sol mi-3 |
%25
fad8-2 re-4 sol-1 sol,^\markup\finger{5-3} red16-5 la'' sol fad sol-2 fad mi sol-2 |
%26
dod,8-5 mi^"1" la,-5 dod-1 re,16-5 re'-1 mi-4 fad mi-4 fad sol mi-4 |
fad8 re'4-1 dod8-2 re-1 sol,4^\markup\finger{5-1} fad8-2
%28
~fad mi4-1 red8 mi16 si-4 do? re! do re mi do |
la8-5 fad'^\markup\finger{1-2} si-1 si,^\markup\finger{5-1} mi,16-5 mi'-1 fad-3 sol fad-3 sol la fad |
%30
sol8-2 mi la-1 sol fad re-5 sol^"1" fad |
mi-3 do-5 fad-2 mi red16-4 si'-1 la sol la-2 sol fad la-2 |
%32
sol8^\markup\finger{3-5} mi'-1 fad,-5 red'-1 mi-1 mi,4-5 red8-4  |
mi-3 sol16-1 la-2 si8-1 si,-5 mi4-2 r4 |}

a = \rtoe
q = \lheel

pieds = \relative do {
\clef bass
\key mi \minor
\time 4/4
\set Staff.instrumentName = \markup{"4 pieds"" "}
r1|
%2
 r1|
%3
 r1|
%4

r1|
%5
% le markup transparent sert à écarter la seconde ligne du bas de page
r1 _\markup \transparent { {prem} \lower#6   {sec}} |
%6
r2 r4 mi4_\a |
%7
mi_\a fad\rtoe sol_\a la^\q |
%8
si2^\a r2 |
%9
r2 r4 si4\rtoe |
%10
si\rtoe la^\lheel sol\rtoe sol8

^\markup {"  "  \musicglyph #"scripts.upedalheel"}
%ça sert à écarter les doigtés pédale de la liaison

 (fad)
^\markup {"  "  \musicglyph #"scripts.dpedaltoe"}
 |
fad2\rtoe r2 |
%12
r1|
r1|
%14
r2 r4 fad4\rtoe |
%15
sol^\lheel la\rtoe si^\lheel si\rtoe |
la2^\lheel si4\rtoe r4|
%17
r2 r4 si\rtoe |
sol^\lheel la\rtoe si^\lheel si8^\lheel do^\rtoe |
%19
la2^\lheel sol4\rtoe r4 |
r1 |
%21
r1 |
r1 |
%23
r1 |
r2 r4 si^\lheel |
%25
re\rtoe si^\lheel si\rtoe si\rtoe |
%26
la2^\lheel la4\rtoe r4 |
r2 r4 la\rtoe |
%28
si^\lheel la\rtoe sol^\lheel la8\rtoe sol^\lheel |
fad2\rtoe mi4^\lheel r4 |
%30
r1|
r1|
%32
r1
r1|
\bar "|."
}

\score

{
% compliqué mais : les barres de mesures traversent en un seul trait les 3 portées :
\new StaffGroup
\with{
\remove System_start_delimiter_engraver
}
<<
\new InnerStaffGroup
\with {systemStartDelimiter = #'SystemStartBrace }
<<
\new Staff
\soprano
\new Staff
\tenor>>
 \new Staff
\pieds>>

\layout {
 indent = 1.0\cm }
}

\score {
<<
    \new Staff {
      \set Staff.midiInstrument = "church organ"
\soprano
    }
    \new Staff {
\transpose do do,
      \set Staff.midiInstrument = "church organ"
      \tenor
    }
    \new Staff {
      \set Staff.midiInstrument = "reed organ"
\transpose do do''
\pieds
    }
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 16)
      }
    }



}
