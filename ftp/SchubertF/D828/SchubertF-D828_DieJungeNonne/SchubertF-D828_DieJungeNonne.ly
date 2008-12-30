%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                   FICHIER SchubertF-D828-DieJungeNonne.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Die junge Nonne", für eine Singstimme mit Klavierbegleitung
%                                   AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.57"
\include "italiano.ly"

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")

line-width = 186\mm
#(define left-margin (/ (- paper-width  (* 186 mm)) 2))
 indent = 22\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Die junge Nonne (D.828)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Die junge Nonne (D.828)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "Die junge Nonne" }
 subsubtitle = " "
 poet = \markup { \column {
  \line { \bold "Jakob Nikolaus, Reichsfreiherr von" }
  \line { \bold "Craigher de Jachelutta" \small "(1797-1855)" } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.828 (Op. 43, No 1, März 1825)" }
% MUTOPIA
 mutopiatitle = "Die junge Nonne"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Jakob Nikolaus, Reichsfreiherr von Craigher de Jachelutta"
 mutopiaopus = "D.828 (Op. 43, No. 1)"
 mutopiainstrument = "Voice and Piano"
 date = "1825"
 source = "C.F. Peters (Band I)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1549"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. POÈME
%  B. CHANT: B1: Notes B2: dynamiques
%  C. PIANO: C1: Notes PIANO HAUT  C2: Notes PIANO BAS  C3: Dynamiques partition  C4: Dynamiques midi
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TEMPI
TEMPOBASE = \tempo 4=120
TEMPOFIN  = \tempo 4=90
%----- TONALITÉS ET MESURES
KEYA = { \key lab \major }
KEYB = { \key fa \major }
TIME = { \time 12/8 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large { \hspace #-4 "Mässig." } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "harmonica"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.4
}
IPIANOBAS = {
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
}
%----- DYNAMIQUES MANUELLES
CRESCM = \markup { \large \bold \italic "cresc." }
DIMIN  = \markup { \large \bold \italic "dimin." }
DIM    = \markup { \large \bold \italic "dim." }
%----- REPOSITIONNEMENT DES DYNAMIQUES
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
\set fontSize = #-.5

%--- 9
Wie braust __ durch die Wip -- fel der heu -- len -- de Sturm!
Es klir -- ren die Bal -- ken, es zit -- tert das Haus!
Es rol -- let der Don -- ner, es leuch -- tet der Blitz!
Und fin -- ster die Nacht,
und fin -- ster die Nacht, wie __ das Grab!

%--- 31
Im -- mer -- hin, im -- mer -- hin! 
So tobt' es auch jüngst noch in mir!
Es brau -- ste das Le -- ben, wie je -- tzo der Sturm! __
Es beb -- ten die Glie -- der, wie je -- tzo das Haus! __
Es flamm -- te die Lie -- be, wie je -- tzo der Blitz!
Und fin -- ster die Brust, __
und fin -- ster die Brust, wie __ das Grab.

%--- 51
Nun to -- be, du wil -- der ge -- walt’ -- ger Sturm! __
Im Her -- zen ist Frie -- de, im Her -- zen ist Ruh! __
Des Bräu -- ti -- gams har -- ret die lie -- ben -- de Braut,
ge -- rei -- nigt in prü -- fen -- der Gluth, __
der e -- wi -- gen, e -- wi -- gen Lie -- be ge -- traut.

%--- 61
Ich har -- re, mein Hei -- land, mit seh -- nen -- dem Blick; __
komm, himm -- li -- scher Bräu -- ti -- gam, ho -- le die Braut!
Er -- lö -- se die See -- le von ir -- di -- scher Haft!
Horch! Fried -- lich er -- tö -- net das Glöck -- lein vom Turm; __
es lockt mich das sü -- ße Ge -- tön __
all -- mäch -- tig zu e -- wi -- gen Höh’n, __
es lockt mich das sü -- ße Ge -- tön __
all -- mäch -- tig zu e -- wi -- gen, e -- wi -- gen Höh’n:
Al -- le -- lu -- ja! Al -- le -- lu -- ja! 
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chant = \relative do' {
%--- 1
R1.*8
%--- 9
r2. r4 r8 r4 fa8
fa4. ~ fa8 lab sib do4. ~ do8 lab fa
reb'4. reb4 reb8 reb2.
R1.
%--- 13
r2. r4 r8 r4 fa,8
fa4. ~ fa8 lab do reb4. ~ reb8 lab fa
reb'4. reb4 reb8 reb2.
R1.
%--- 17
r2. r4 r8 r4 fad,8
fad4. ~ fad8 la si dod4. ~ dod8 la fad
re'4. re4 re8 re2.
R1.
%--- 21
r2. r4 r8 r4 re8
re2. re4. re
re2. r4 r8 re4.
reb!2. reb4. reb
%--- 25
reb2. r
R1.
do2. ~ do4. do
do1.
R1.*2
%--- 31
re4. ~ re4 re8 do2.
fa4. ~ fa8[ mi] re do2.
r2. r4 r8 r4 lab8
sol4. sib4 reb8 do4. mi,4 mi8
%--- 35
fa4. r4 r8 r4 r8 r4 fa8
fa4. ~ fa8 lab sib do4. ~ do8 lab fa
reb'4. reb4 reb8 reb4. ~ reb4 fa,8
%--- 38
fa4. ~ fa8 lab do reb4. ~ reb8 lab fa
reb'4. reb4 reb8 reb4. ~ reb4 fad,8
fad4. ~ fad8 la si dod4. ~ dod8 la fad
%--- 41
re'4. re4 re8 re2.
r2. r4 r8 r4 re8
re2. re4. re
%--- 44
re2. ~ re4. re
reb!2. reb4. reb
reb2. r2.
%--- 47
R1.
do2. ~ do4. do
do1.
R1.
r2. r4 r8 r4 fa,8
%--- 52
\bar "||" \KEYB
fa4. ~ fa8 la sib do4. ~ do8 la fa
do'4. do do ~ do4 do8
%--- 54
re4. ~ re8 mi fa mi4. do4 do8
re4. ~ re8 mi fa mi4. ~ mi8 r mi
%--- 56
mi4. ~ mi8 dod sib! la4. ~ la8 dod re
mi4. ~ mi8 dod sib! la4. r4 mi'8
fa4. do4 la8 fa4( la8) do4 fa8
%--- 59
fa4. ~ fa4 fa8 mi!4( re8) do4 sib8
la4. ~ la8 sib do do4. ~ do8 re mi
%--- 61
fa2. r4 r8 r4 do8
do4. do4 do8 do4. do4 do8
do4( reb8) reb4 reb8 reb4. ~ reb4 reb8
%--- 64
reb4( mib8) mib4 mib8 mib4 fa8 mib4.
mib4. ~ mib8 fa solb fa2.
r2. r4 r8 r4 dod8
%--- 67
dod4. ~ dod8 re dod dod4. dod4 dod8
dod4. ~ dod8 re dod dod2.
R1.
r2. r4 r8 do!4.
%--- 71
fa4. ~ fa4( si,8) si4. si
do4. ~ do4( re8) do4. do
re2. do4. do
re2.( do4) r8 r4 r8
%--- 75
r2. r4 r8 r4 do8
do4. sol4 mi8 do4( fa8) la4 do8
do2. ~ do4 r8 r4 do8
re4. la4 fad8 re4( sol8) sib4 re8
%--- 79
re2. ~ re4 r8 r4 re8
fa4. do4 la8 fa4( sib8) re4 fa8
fa4. ~ fa4 fa8 mi!4( re8) do4 sib8
%--- 82
la4. ~ la8 sib do do4. ~ do8 re mi
fa2. r
R1.
do2. re
%--- 86
do1.
la4. r4 r8 r2.
R1.
do2. re
do1.
%--- 91-94
la4. r4 r8 r2.
R1.*2
R1.^\fermataMarkup
\bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEYA \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme "
 \chant
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \clef treble
 \KEYA \TIME
 \ICHANT
 \chant
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. CHANT : DYNAMIQUES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION
dynPartChant = { }

%%%%%%%%%%%%%%%%%%%% MIDI
dynMidiChant = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoHaut = \relative do' {
%--- 1
<lab do>16[ fa' <lab, do> fa' <lab, do> fa'] <lab, do>[ fa' <lab, do> fa' <lab, do> fa'] \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <sol, do>16 mi' } \repeat tremolo 6 { <sol, do>16 mi' }
%--- 4
\repeat tremolo 6 { <sol, do>16 mi' } \repeat tremolo 6 { <sol, do>16 mi' }
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <sol, sib reb>16 fa' } \repeat tremolo 6 { <sol, sib reb>16 fa' }
\repeat tremolo 6 { <lab, do>16 fa' } <sol, do>16[ fa' <sol, do> fa' <sol, do> fa'] <sol, do>16[ mi' <sol, do> mi' <sol, do> mi']
%--- 8
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <lab, reb>16 fa' } \repeat tremolo 6 { <lab, reb>16 fa' }
\repeat tremolo 6 { <lab, reb>16 fa' } \repeat tremolo 6 { <lab, reb>16 fa' }
%--- 13
\repeat tremolo 6 { <lab, reb>16 fa' } \repeat tremolo 6 { <lab, reb>16 fa' }
\repeat tremolo 6 { <lab, reb>16 fa' } \repeat tremolo 6 { <lab, reb>16 fa' }
\repeat tremolo 6 { <la, dod>16 fad' } \repeat tremolo 6 { <la, dod>16 fad' }
\repeat tremolo 6 { <la, dod>16 fad' } \repeat tremolo 6 { <la, dod>16 fad' }
%--- 17
\repeat tremolo 6 { <la, dod>16 fad' } \repeat tremolo 6 { <la, dod>16 fad' }
\repeat tremolo 6 { <la, dod>16 fad' } \repeat tremolo 6 { <la, dod>16 fad' }
\repeat tremolo 6 { <la, re>16 fad' } \repeat tremolo 6 { <la, re>16 fad' }
\repeat tremolo 6 { <la, re>16 fad' } \repeat tremolo 6 { <la, re>16 fad' }
%--- 21
\repeat tremolo 6 { <la, re>16 fad' } \repeat tremolo 6 { <la, re>16 fad' }
\repeat tremolo 6 { <si, re>16 fad' } \repeat tremolo 6 { <si, re>16 fa' }
\repeat tremolo 6 { <si, re>16 fad' } \repeat tremolo 6 { <si, re>16 fa' }
\repeat tremolo 6 { <sib,! reb!>16 fa'! } \repeat tremolo 6 { <sib, reb>16 mi }
%--- 25
\repeat tremolo 6 { <sib reb>16 fa' } <sib, reb>16[ mi <sib reb> mi <sib reb> mi] <lab,! si>[ fa' <lab, si> fa' <lab, si> fa']
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <sol, do>16 fa' } \repeat tremolo 6 { <sol, do>16 mi' }
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <la, do>16 fa' }
%--- 31
\repeat tremolo 6 { <sib, re>16 fa' } \repeat tremolo 6 { <la, do>16 fa' }
\repeat tremolo 6 { <sib, re>16 fa' } \repeat tremolo 6 { <la, do>16 fa' }
\repeat tremolo 6 { <la, do>16 fa' } \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <sol, reb'!>16 fa' } <lab, do>16[ fa' <lab, do> fa' <lab, do> fa'] <sib, do>16[ mi <sib do> mi <sib do> mi]
%--- 35
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <lab, reb>16 fa' } \repeat tremolo 6 { <lab, reb>16 fa' }
%--- 38
\repeat tremolo 6 { <lab, reb>16 fa' } \repeat tremolo 6 { <lab, reb>16 fa' }
\repeat tremolo 6 { <la, dod>16 fad' } \repeat tremolo 6 { <la, dod>16 fad' }
\repeat tremolo 6 { <la, dod>16 fad' } \repeat tremolo 6 { <la, dod>16 fad' }
%--- 41
\repeat tremolo 6 { <la, re>16 fad' } \repeat tremolo 6 { <la, re>16 fad' }
\repeat tremolo 6 { <la, re>16 fad' } \repeat tremolo 6 { <la, re>16 fad' }
\repeat tremolo 6 { <si, re>16 fad' } \repeat tremolo 6 { <si, re>16 fa' }
%--- 44
\repeat tremolo 6 { <si, re>16 fad' }    \repeat tremolo 6 { <si, re>16 fa' }
\repeat tremolo 6 { <sib,! reb!>16 fa' } \repeat tremolo 6 { <sib, reb>16 mi }
\repeat tremolo 6 { <sib reb>16 fa' } <sib, reb>16[ mi <sib reb> mi <sib reb> mi] <lab,! si>[ fa' <lab, si> fa' <lab, si> fa']
%--- 47
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <sol, do>16 mi' }
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <lab, do>16 fa' }
\repeat tremolo 6 { <lab, do>16 fa' } \repeat tremolo 6 { <la, do>16 fa' }
%--- 52
\KEYB
\repeat tremolo 6 { <la, do>16 fa' } \repeat tremolo 6 { <la, do>16 fa' }
<do fa>16[ sol <do fa> sol <do fa> sol] <do mi>[ sol <do mi> sol <do mi> sol] \repeat tremolo 6 { <do mi>16 sol }
%--- 54
<do re>16[ sol <do re> sol <do re> sol] <si re>[ sol <si re> sol <si re> sol] \repeat tremolo 6 { <do mi>16 sol }
<do re>16[ sol <do re> sol <do re> sol] <si re>[ sol <si re> sol <si re> sol] \repeat tremolo 6 { <do mi>16 sol }
%--- 56
\repeat tremolo 6 { <dod mi>16 la } \repeat tremolo 6 { <dod mi>16 la }
\repeat tremolo 6 { <dod mi>16 la } <dod mi>16[ la <dod mi> la <dod mi> la]  <la' dod>[ mi <la dod> mi <la dod> mi] 
\repeat tremolo 6 { <la do!>16 mib } \repeat tremolo 6 { <la do>16 mib } 
%--- 59
<mib la>16[ do' <mib, la> do' <mib, la> do'] <re, sib'>16[ re' <re, sib'> re' fa, re']
 mi,[ do' mi, do' re, sib'] <do, re>[ la' <do, re> la' <sib, re> sol']
<la, do>16[ fa' <la, do> fa' <la, do> fa'] <la, do>[ fa' sib, sol' do, la']
 do,[ la' do, la' do, la'] <sib, do>[ sol' <sib, do> sol' <sib, do> sol']
%--- 61
\repeat tremolo 6 { <la, do>16 fa' } \repeat tremolo 6 { <la, do>16 fa' }
\repeat tremolo 6 { <do fa>16 la' } \repeat tremolo 6 { <do, fa>16 la' }
<do, fa>16[ la' <do, fa>16 la' <reb, fa>16 lab'] <reb, fa>[ lab' <reb, fa>16 lab' <reb, fa>16 lab']
 \repeat tremolo 6 { <reb, fa>16 lab' }
%--- 64
\repeat tremolo 6 { <reb, mib>16 sib' } \repeat tremolo 6 { <reb, mib>16 sib' } 
<do, solb'>16[ lab' <do, solb'> lab' <do, solb'> lab'] <do, solb'>[ lab' <do, fa> lab' <do, mib> lab']
 \repeat tremolo 6 { <reb, fa>16 lab' }
<do, solb'>16[ lab' <do, solb'> lab' <do, solb'> lab'] <do, solb'>[ lab' <do, fa> lab' <do, mib> lab']
 \repeat tremolo 6 { <reb, fa>16 lab' }
%--- 67
\repeat tremolo 6 { <dod, fad>16 la'! } \repeat tremolo 6 { <dod, mid>16 sold' }
\repeat tremolo 6 { <dod, fad>16 la' } \repeat tremolo 6 { <dod, mid>16 sold' }
\repeat tremolo 6 { <si, fa'!>16 lab' } \repeat tremolo 6 { <si, fa'>16 lab' }
\repeat tremolo 6 { <do, fa>16 la'! } \repeat tremolo 6 { <do, fa>16 la' }
%--- 71
\repeat tremolo 6 { <si, fa'>16 lab' } \repeat tremolo 6 { <si, fa'>16 lab' }
\repeat tremolo 6 { <do, fa>16 la'! } \repeat tremolo 6 { <do, fa>16 la' }
\repeat tremolo 6 { <re, fa>16 sib' } \repeat tremolo 6 { <do, fa>16 la' }
\repeat tremolo 6 { <re, fa>16 sib' } \repeat tremolo 6 { <do, fa>16 la' }
%--- 75
\repeat tremolo 6 { <sib, mi>16 sol' } \repeat tremolo 6 { <la, fa'>16 la' }
\repeat tremolo 6 { <sib, mi>16 sol' } \repeat tremolo 6 { <la, fa'>16 la' }
\repeat tremolo 6 { <sib, mi>16 sol' } \repeat tremolo 6 { <la, fa'>16 la' }
\repeat tremolo 6 { <do, fad>16 la' } \repeat tremolo 6 { <sib, sol'>16 sib' }
%--- 79
\repeat tremolo 6 { <do, fad>16 la' } \repeat tremolo 6 { <sib, sol'>16 sib' }
\repeat tremolo 6 { <mib, la>16 do' } \repeat tremolo 6 { <re, sib'>16 re' }
<mib, la>16[ do' <mib, la> do' <mib, la> do'] <re, sib'>16[ re' <re, sib'> re' fa, re']
 mi,[ do' mi, do' re, sib'] <do, re>[ la' <do, re> la' <sib, re> sol']
%--- 82
<la, do>16[ fa' <la, do> fa' <la, do> fa'] <la, do>[ fa' sib, sol' do, la']
 do,[ la' do, la' do, la'] <sib, do>[ sol' <sib, do> sol' <sib, do> sol']
\repeat tremolo 6 { <la, do>16 fa' } \repeat tremolo 6 { <sib, mi>16 sol' }
\repeat tremolo 6 { la,16 fa' } \repeat tremolo 6 { <sib, mi>16 sol' }
\repeat tremolo 6 { <la, do>16 fa' } \repeat tremolo 6 { <sib, re>16 fa' }
%--- 86
\repeat tremolo 6 { <sol, do>16 fa' } \repeat tremolo 6 { <sol, do>16 mi' }
\repeat tremolo 6 { <la, do>16 fa' } \repeat tremolo 6 { <sib, mi>16 sol' }
\repeat tremolo 6 { la,16 fa' } \repeat tremolo 6 { <sib, mi>16 sol' }
\repeat tremolo 6 { <la, do>16 fa' } \repeat tremolo 6 { <sib, re>16 fa' }
\repeat tremolo 6 { <sol, do>16 fa' } \repeat tremolo 6 { <sol, do>16 mi' }
%--- 91-94
<la, do>16[ fa' <la, do> fa' <la, do> fa'] la,[ fa' la, fa' la, fa'] \repeat tremolo 6 { <sib, mi>16 sol' }
\repeat tremolo 6 { la,16 fa' } \repeat tremolo 6 { <sib, mi>16 sol' }
\repeat tremolo 6 { la,16 fa' } \repeat tremolo 6 { la,16 fa' } 
<la, fa'>1.\fermata
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEYA \TIME
 \set autoBeaming = ##f
 \pianoHaut
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \clef treble
 \KEYA \TIME
 \IPIANOHAUT
 \unfoldRepeats { \pianoHaut }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBas = \relative do,, {
%--- 1
<fa fa'>4. ~ <fa fa'>8[ <lab lab'>-. <sib sib'>-.] <do do'>4. r4 <fa fa'>8
<fa fa'>4 r8 \clef treble do'''4. do r4 r8 \clef bass
do,,,4. ~ do8[ mi-. fa-.] sol4. r4 do8
%--- 4
do4 r8 \clef treble do''4. do r4 r8 \clef bass
<fa,,,, fa'>4. ~ <fa fa'>8[ <lab lab'>-. <sib sib'>-.] <do do'>4. r4 <fa fa'>8
<sol, sol'>4 r8 \clef treble reb''''4. reb fa8[ mib reb]
do4. \clef bass <lab,,, lab'>8-.[ <sib sib'>-. <do do'>-.] <do do'>4. <do do'>
%--- 8
<fa, fa'>4. ~ <fa fa'>8[ <lab lab'>-. <sib sib'>-.] <do do'>4. r4 <fa fa'>8
<fa fa'>4 r8 \clef treble do'''4. do r4 r8 \clef bass
R1.*2
<fa,,,, fa'>4. ~ <fa fa'>8[ <lab lab'>-. <do do'>-.] <reb reb'>4. r4 <fa fa'>8
%--- 13
<fa fa'>4 r8 \clef treble reb'''4. reb r4 r8
R1.*2 \clef bass
<fad,,,, fad'>4. ~ <fad fad'>8[ <la la'> <si si'>] <dod dod'>4. r4 <fad fad'>8
%--- 17
<fad fad'>4 r8 \clef treble dod'''4. dod r4 r8
R1. \clef bass
R1.
<fad,,,, fad'>4. ~ <fad fad'>8[ <la la'> <dod dod'>] <re re'>4. r4 <fad fad'>8
%--- 21
<fad fad'>4 r8 \clef treble re'''4. re r4 \clef bass <re,,, re'>8
<sold, sold'>2. ~ <sold sold'>4. ~ <sold sold'>4 <re' re'>8
<sold, sold'>2. ~ <sold sold'>4. ~ <sold sold'>4 <re' re'>8
<sol,! sol'!>2. ~ <sol sol'>4. ~ <sol sol'>4 <reb'! reb'!>8
%--- 25
<sol, sol'>2. ~ <sol sol'>4. <reb' reb'>4.
<do do'>2. <lab lab'>4. ~ <lab lab'>8[ <sib sib'> <do do'>]
<do do'>2. <do do'>4. <do do'>
<fa, fa'>2. ~ <fa fa'>4. ~ <fa fa'>4 <lab lab'>8
<fa fa'>2. ~ <fa fa'>4. ~ <fa fa'>4 <lab lab'>8
<fa fa'>2. ~ <fa fa'>4. r4 <fa' fa'>8
%--- 31
<fa fa'>4 r8 \clef treble fa'''4. fa r4 \clef bass <fa,,, fa'>8
<fa fa'>4 r8 \clef treble fa'''4. fa r4 \clef bass <fa,,, fa'>8
<fa fa'>4. <do do'> <lab lab'> <fa fa'>
<sib sib'>2. <do do'>
%--- 35
<fa, fa'>4. ~ <fa fa'>8[ <lab lab'> <sib sib'>] <do do'>4. r4 <fa fa'>8
<fa fa'>4 r8 \clef treble do'''4. do r4 r8 \clef bass
<fa,,,, fa'>4. ~ <fa fa'>8[ <lab lab'> <do do'>] <reb reb'>4. r4 <fa fa'>8
%--- 38
<fa fa'>4 r8 \clef treble reb'''4. reb r4 r8 \clef bass
<fad,,,, fad'>4. ~ <fad fad'>8[ <la la'> <si si'>] <dod dod'>4. r4 <fad fad'>8
<fad fad'>4 r8 \clef treble dod'''4. dod r4 r8 \clef bass
%--- 41
<fad,,,, fad'>4. ~ <fad fad'>8[ <la la'> <dod dod'>] <re re'>4. r4 <fad fad'>8
<fad fad'>4 r8 \clef treble re'''4. re r4 \clef bass <re,,, re'>8
<sold, sold'>2. ~ <sold sold'>4. ~ <sold sold'>4 <re' re'>8
%--- 44
<sold, sold'>2. ~ <sold sold'>4. ~ <sold sold'>4 <re' re'>8
<sol,! sol'!>2. ~ <sol sol'>4. ~ <sol sol'>4 <reb'! reb'!>8
<sol, sol'>2. ~ <sol sol'>4. <reb' reb'>4.
%--- 47
<do do'>2. <lab lab'>4. ~ <lab lab'>8[ <sib sib'> <do do'>]
<do do'>2. <do do'>
<fa, fa'>2. ~ <fa fa'>4. ~ <fa fa'>4 <lab lab'>8
<fa fa'>2. ~ <fa fa'>4. ~ <fa fa'>4 <lab lab'>8
<fa fa'>1.
%--- 52
\KEYB
<fa fa'>2. ~ <fa fa'>4. <la la'>
<do do'>4. ~ <do do'>8[ sol'-. mi-.] do4. ~ do8[ mi-. fa-.]
%--- 54
<sol, sol'>4. <sol sol'> <sol sol'> mi'8-.[ fa-. sol-.]
<sol, sol'>4. <sol sol'> <sol sol'> ~ <sol sol'>8[ <la la'> <sib! sib'!>]
%--- 56
<la la'>4. <la la'> <la la'> r4 r8
<la la'>4. <la la'> <la la'> r4 r8
<fa fa'>4. <fa fa'> <fa fa'> r4 r8
%--- 59
<sib sib'>4. <sib sib'> <sib sib'>2.
<do do'>4. <do do'> <do do'>2.
%--- 61
<fa, fa'>4. ~ <fa fa'>8[ <la la'> <do do'>] <do do'>4. ~  <do do'>8[ <re re'> <mi mi'>]
<fa fa'>4. <fa fa'> <fa fa'> <fa fa'>
<fa fa'>4. <fa fa'> <fa fa'>2.
%--- 64
<solb solb'>4. ~ <solb solb'>4 <sol sol'>8 <sol sol'>4. ~ <sol sol'>4 <sol sol'>8
<lab lab'>4. ~ <lab lab'>4 <lab lab'>8 << { lab'4. ~ lab4 fa8 } \\ { reb2.} >>
<< { mib4. ~ mib8[ fa solb] } \\ { lab,2.} >> <reb lab'>4. ~ <reb lab'>4 <dod, dod'>8
%--- 67
<la la'>4. ~ <la la'>8[ <si si'> <dod dod'>] <dod dod'>4. ~ <dod dod'>4 <dod dod'>8
<la la'>4. ~ <la la'>8[ <si si'> <dod dod'>] <dod dod'>2.
<reb reb'>4. \clef treble fa'''4. fa r4 \clef bass <reb,,, reb'>8
<fa fa'>4. \clef treble fa'''4. fa r4 \clef bass <fa,,, fa'>8
%--- 71
<reb reb'>4. \clef treble fa'''4. fa r4 \clef bass <reb,,, reb'>8
<fa fa'>4. \clef treble fa'''4. fa r4 \clef bass <fa,,, fa'>8
<fa fa'>4. \clef treble fa'''4. fa r4 \clef bass <fa,,, fa'>8
<fa fa'>4. \clef treble fa'''4. fa r4 \clef bass <la,,,, la'>8
%--- 75
<do do'>4. \clef treble do'''4. do r4 \clef bass <do,,, do'>8
<do do'>4. \clef treble do'''4. do r4 \clef bass <do,,, do'>8
<do do'>4. \clef treble do'''4. do r4 \clef bass <do,,, do'>8
<re re'>4. \clef treble re'''4. re r4 \clef bass <re,,, re'>8
%--- 79
<re re'>4. \clef treble re'''4. re r4 \clef bass <re,,, re'>8
<fa fa'>4. \clef treble fa'''4. fa r4 \clef bass <fa,,, fa'>8
<fa fa'>4. <fa fa'>4 <sib, sib'>8 <sib sib'>4. <sib sib'>4. 
%--- 82
<do do'>2. <do do'>
<fa, fa'>4. \clef treble do''''4. do r4 \clef bass <fa,,,, fa'>8
<fa fa'>4. \clef treble do''''4. do r4 \clef bass <fa,,,, fa'>8
<fa fa'>2. <sib sib'>
%--- 86
<do do'>1.
<fa, fa'>4. \clef treble do''''4. do r4 \clef bass <fa,,,, fa'>8
<fa fa'>4. \clef treble do''''4. do r4 \clef bass <fa,,,, fa'>8
<fa fa'>2. <sib sib'>
<do do'>1.
%--- 91-94
<fa, fa'>4. do'''4. do r4 <fa,,, fa'>8
<fa fa'>4. do'''4. do r4 <fa,,, fa'>8
<fa fa'>2. <fa' do'>
<fa do'>1._\fermata
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEYA \TIME
 \set autoBeaming = ##f
 \pianoBas
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \clef bass
 \KEYA \TIME
 \IPIANOBAS
 \unfoldRepeats { \pianoBas }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
%--- 1
\DYNEXO #'(0 . -0.5) s1.\pp
s1.*9
%--- 11
\DYNEXO #'(1 . -1) s1.\fp
s1.*2
%--- 14
s2. s2\cr s4\!
s2\decr s8... s64\! s2.
s1.*2
%--- 18
s2. s2\cr s4\!
s2\decr s4\! s2.
s1.*2
%--- 22
s1.\p
s1.
s1.\pp
s1.*3
%--- 28
\DYNEXO #'(2 . -1) s1.\ppp
s1.*2
%--- 31
s2\decr s4\! s2.
s1.*3
%--- 35
\DYNEXO #'(1 . -1) s1.\p
s1.
s1.-\CRESCM
s1.
s1.\f
%--- 40
s1.-\CRESCM
s1.*2
%--- 43
s1.\p
s1.
s1.\p
s1.
%--- 47
\DYNEXO #'(1.5 . -1) s1.\pp
s1.*4
%--- 52
\DYNEXO #'(0 . -1) s1.\mf
\DYNEXO #'(0.5 . -1) s1.\f
%--- 54
\DYNEXO #'(0 . -0.5) s1.\p
s1.
%--- 56
s1.-\CRESCM
s1.
%--- 58
s4. \PINEXO #'(1.5 . 0) s2.\cr s4.\!
s2\f\decr s8 s8\! s2.
s1.*2
%--- 62
\DYNEXO #'(0.5 . 0) s1.\p
s2. s4.\cr s4.\!
s1.*2
%--- 66
s1.\p
s1.\pp
s1.
%--- 69
s1.\pp
s1.*8
%--- 78
s1.-\CRESCM
s1.
s2.\f s4.\cr s4 s8\!
s4\decr s16 s16\! s4. s2.
s4. \DYNEXO #'(0 . -0.5) s4\p\cr s8\! s4\decr s16 s16\! s4.
%--- 83
\DYNEXO #'(0.5 . -0.5) s1.\p
s1.
\DYNEXO #'(2 . -0.5) s1.\ppp
s1.
%--- 87
s2. s2.-\DIMIN
s1.*3
%--- 91-94
s2. s4. s4.-\DIM
s1.*3
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. : PIANO DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = {
%--- 1
\TEMPOBASE s1.\pp
s1.*9
%--- 11
s4.\mf\decr s4.\!\pp s2.
s1.*2
%--- 14
s2. s2\cr s4\!\mf
s2\decr s4\!\pp s2.
s1.*2
%--- 18
s2. s2\cr s4\!\mf
s2\decr s4\!\pp s2.
s1.*2
%--- 22
s1.\p
s1.
s1.\pp
s1.*3
%--- 28
s1.\ppp
s1.*2
%--- 31
s2\p\decr s4\!\ppp s2.
s1.*3
%--- 35
s1.\p
s1.
s1.\cr
s1.
s1.\!\f
%--- 40
s1.\cr
s2. s2.\!\ff
s1.
%--- 43
s1.\p
s1.
s1.\p
s1.
%--- 47
s1.\pp
s1.*4
%--- 52
s1.\mf
s1.\f
%--- 54
s1.\p
s1.
%--- 56
s1.\cr
s2. s2.\!\mf
%--- 58
s4. s2.\cr s4.
s2\!\f\decr s8 s8\!\mf s2.
s1.*2
%--- 62
s1.\p
s2. s2.\cr
s1.\!\mf
s1.
%--- 66
s1.\p
s1.\pp
s1.
%--- 69
s1.\pp
s1.*8
%--- 78
s1.\cr
s1.
s2.\!\f s2.\cr
s1.\!\ff\decr 
s4. s4.\!\p\cr s4\!\mf\decr s8\!\p s4.
%--- 83
s1.\p\decr
s1.
s1.\!\ppp
s1.
%--- 87
s2. s2.\decr
s1.\!\pppp
s1.*2
%--- 91-94
s2. s4. s4.\decr
s1.*2
\TEMPOFIN s1.\!\ppppp
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<
  \new Voice = "chant"        << \notePartChant \dynPartChant >>
  \new Lyrics \lyricsto "chant" \poeme

  \new PianoStaff <<
   \set PianoStaff.instrumentName = "PianoForte "
   \new Staff = "pianoUp"    << \notePartPianoHaut >>
   \new Dynamics = "dynamics" \dynPartPiano
   \new Staff = "pianoDown"  << \notePartPianoBas >>
  >>
 >>

 \layout {
  \context {
   \Score
   \override SpacingSpanner #'spacing-increment = #1
  }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice % So that \CRESC works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 0.5)
   \override DynamicLineSpanner #'Y-offset = #0

   \consists "Script_engraver"
   \consists "Dynamic_engraver"
   \consists "Text_engraver"
   \consists "Skip_event_swallow_translator"
   \consists "Axis_group_engraver"
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           E. SORTIE MIDI SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% REDEFINITION DES VOLUMES RESPECTIFS ATTRIBUES AUX DYNAMIQUES 
% volumes par défaut (LilyPond\usr\share\lilypond\current\scm\midi.scm):
% sf    1.00     ff  0.80     mp   0.61     ppp    0.42     fp: 0.50
% ffff  0.92     f   0.75     p    0.55     pppp   0.34
% fff   0.85     mf  0.68     pp   0.49     ppppp  0.25

#(define my-absolute-volume-alist '())
#(set! my-absolute-volume-alist (append '(
 ("sf" .    1.00)
 ("ffff" .  1.00)
 ("fff" .   1.00)
 ("ff" .    1.00)
 ("f" .     0.85)
 ("mf" .    0.75)
 ("mp" .    0.70)
 ("p" .     0.60)
 ("pp" .    0.50)
 ("ppp" .   0.45)
 ("pppp" .  0.40)
 ("ppppp" . 0.30) )
 my-absolute-volume-alist))

%%%%%%%%%%%%%%%%%%%% CHAQUE DYNAMIQUE RENCONTREE PRENDRA LE NOUVEAU VOLUME SPECIFIE
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME \partial 2. s2. }

\score {
 <<
  \new Staff = "chant"       { \SILENCE << \noteMidiChant       \dynMidiPiano >> }
  \new Staff = "pianoUp"    { \SILENCE << \noteMidiPianoHaut  \dynMidiPiano >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBas   \dynMidiPiano >> }
 >>
 \midi {
 \context {
   \Score
% ECHELLE DU VOLUME DE SORTIE MIDI
   dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
  }
 }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         FIN DU FICHIER SchubertF-D828-DieJungeNonne.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
