%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D686B-Fruehlingsglaube.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Fruehlingsglaube", für eine Singstimme mit Klavierbegleitung
%                                       AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.60"
\include "italiano.ly"

\paper {

line-width = 186\mm
#(define left-margin (/ (- paper-width  (* 186 mm)) 2))
#(define top-margin (/ (- paper-height (* 259 mm)) 2))
#(define bottom-margin (/ (- paper-height (* 253 mm)) 2))
between-system-padding = 8\mm
 indent = 22\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Frühlingsglaube (D.686B)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Frühlingsglaube (D.686B)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 dedication = \markup \center-column { \fontsize #0.5 \bold "Frau Justina von Bruchmann gewidmet." " " }
 title = \markup { \fontsize #1.5 "Frühlingsglaube" }
 subtitle = "Zweite Fassung"
 subsubtitle = " "
 poet = \markup { \hspace #15.5  \column { \center-column {
  \line { \fontsize #2 \bold "Johann Ludwig Uhland" }
  \line { \small "(1787-1862)" }
  } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.686B (Op. 20, No 2, November 1822)" }
% MUTOPIA
 mutopiatitle = "Frühlingsglaube"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Johann Ludwig Uhland"
 mutopiaopus = "D.686B (Op. 4, No 1)"
 mutopiainstrument = "Voice and Piano"
 date = "1822"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/10/30-1582"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%  Des "\break" ont été introduits pour unifier les deux formats de sortie PDF
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. POÈME
%  B. CHANT: B1: Notes
%  C. PIANO: C1: Notes PIANO HAUT  C2: Notes PIANO BAS  C3: Dynamiques partition  C4: Dynamiques midi
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TEMPI
TEMPOBASE = \tempo 8=60
%----- TONALITÉS ET MESURES
KEY   = { \key lab \major }
TIME  = { \time 2/4 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-5 "Ziemlich langsam. " } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "pan flute"
 \set Staff.midiMinimumVolume = #0.3
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic guitar (nylon)"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.9
}
IPIANOBAS = {
 \set Staff.midiInstrument = "acoustic guitar (nylon)"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.6
}
%----- NOLET: CACHER OU AFFICHER LE NOMBRE OU LE CROCHET 
TUPNNO = \override TupletNumber #'transparent = ##t
TUPBNO = \override TupletBracket #'transparent = ##t
TUPNO  = { \TUPNNO \TUPBNO }
TUPNOK = \override TupletNumber #'transparent = ##f
TUPBOK = \override TupletBracket #'transparent = ##f
TUPOK  = { \TUPNOK \TUPBOK }
%----- REPOSITIONNEMENT DES DYNAMIQUES
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
%----- CRESCENDOS
CRESCM     = \markup { \large \bold \italic "cresc." }
%----- REPOSITIONNEMENT DES SCRIPT
SCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Script #'extra-offset = #$beg-end #})
%----- REPOSITIONNEMENT DES MARKUP
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
\set fontSize = #-.5

Die lin -- den __  Lüf -- te sind __ er -- wacht,
sie säu -- seln und we -- ben Tag __ und __ Nacht,
sie schaf -- fen an al -- len En -- den, __ an __ al -- len En -- den.
O fri -- scher __ Duft, o neu -- er Klang! o neu -- er Klang!
Nun, ar -- mes Her -- ze, sei nicht bang!
nun muss sich al -- les, al -- les wen -- den,
nun muss sich al -- les, al -- les __ wen -- den.

Die Welt __ wird __ schö -- ner mit je -- dem __ Tag,
Man weiss __ nicht, __ was __ noch wer -- den __ mag,
Das Blü -- hen will nicht en -- den, es __ will nicht en -- den.
Es blüht das __ fern -- ste, tief -- ste Thal, es blüht das tief -- ste Thal
nun, ar -- mes Herz, ver -- giss der Qual,
nun muss sich al -- les, al -- les wen -- den,
nun muss sich al -- les, al -- les __ wen -- den.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% DEBUT
chantA = \relative do'' {
%--- 1
R2*4
%--- 5
r4 r8. do16
do16[ mib] reb[ do] do8 sib
mib,16[ lab] sol[ lab] sib8. sib16
do16[ mib] reb do do8 sib
%--- 9
mib,16[ lab] sol[ lab] sib8. sib16
sib8 sib16 sib do8. do16
reb8[ fa] reb16[ do] sib[ lab]
lab8. lab16 sol([ mib'8 sol,16])
%--- 13
lab4 r8 mib'
sib8 lab16[ sib] do8. do16
mib16[ reb8] do16 sib4
r4 r8. do16
%--- 17
mib16[ reb8] do16 sib4
dob8 dob16. dob32 \grace dob16 sib8 sib
fa'8. re16 mib4
do8 reb!16. sib32 mib8 do8
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO PARTITION
chantAP = \relative do'' {
%--- 21
\SCREXO #'(3.5 . 0) do8\turn [reb16.] sib32 mib8 do
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO MIDI
chantAM = \relative do'' {
%--- 21
do16[ reb64 do sib do reb16.] sib32 mib8 do
}

%%%%%%%%%%%%%%%%%%%% suite
chantB = \relative do'' {
%--- 22
r16 lab lab sib sib[ reb8] do16
fa8. mib32[ reb] do16[ \grace { reb32[ do] } sib32 do reb16. sol,32]
lab4 r4
%--- 25
R2*3
r4 r8. do16
%--- 29
do16[ mib] reb[ do] do8 sib16 mib,
mib16[ lab] sol[ lab] sib8. sib16
do16[ mib] reb[ do] do8[ sib16] mib,
mib16[ lab] sol[ lab] sib8. sib16
%--- 33
sib8. sib16 do8. do16
reb8[ fa] reb16[ do] sib[ lab]
lab8. lab16 sol([ mib'8 sol,16])
lab4 r8. mib'16
%--- 37
sib8 lab16[ sib] do8. do16
mib16[ reb8] do16 sib4
r8. sib16 do8. do16
%--- 40
mib16[ reb8] do16 sib4
dob8 dob16. dob32 \grace dob16 sib8. sib16
fa'8. re16 mib4
do8 reb!16. sib32 mib8 do8
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO PARTITION
%--- 44
chantBP = \chantAP

%%%%%%%%%%%%%%%%%%%% GRUPPETTO MIDI
%--- 44
chantBM = \chantAM

%%%%%%%%%%%%%%%%%%%% FIN
chantC = \relative do'' {
%--- 45
r16 lab lab sib sib[ reb8] do16
fa8. mib32[ reb] do16[ \grace { reb32[ do] } sib32 do reb16. sol,32]
lab4 r4
%--- 48-52
R2*5
\bar "|."
}

chantPart = { \chantA \chantAP \chantB \chantBP \chantC }
chantMidi = { \chantA \chantAM \chantB \chantBM \chantC }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme "
 \chantPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \KEY \TIME
 \ICHANT
 \chantMidi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoHautI = \context Staff \relative do' \new Voice { \voiceOne
\oneVoice
%--- 1
\stemUp <mib do'>8[ <mib do'>16. <mib do'>32] <mib do'>8.([ <reb sib'>16])
<reb sib'>16([ <do lab'> <si sol'> <do lab'>]) <reb mib>4
<do mib do'>8[ <mib do'>16. <mib do'>32] <solb mib'>8.->([ <fa reb'>16])
<fab reb'>8.->([ <mib do'>16]) <mib do'>16([ <reb sib'> <do lab'> <reb sib'>])
%--- 5
<do lab'>2
<do mib>8[ <do mib>16. <do mib>32] <reb mib>4
<do mib>8[ <do mib>16. <do mib>32] <reb mib>4
<do mib>8[ <do mib>16. <do mib>32] <reb mib>4
%--- 9
<do mib>8[ <do mib>16. <do mib>32] <sib mib>4
<mib sib'>8.[ <mib sib'>16] <mi sib' do>8.[ <mi sib' do>16]
<fa lab reb>4 \voiceOne <fa reb'>16([ <mib do'> <reb sib'> <do lab'>]) \oneVoice
<do mib lab>8.[ <do mib lab>16] <reb mib sib'>4
%--- 13
<do mib lab>4 r \voiceOne
mib'2
mib2
mib2
%--- 17
mib2 \oneVoice
\TUPNO \times 4/6 { r16 re,([ fa dob' fa, re]) } \times 4/6 { r16 mib([ sol sib sol mib]) }
\times 4/6 { r16 re([ fa sib fa re]) } \times 4/6 { r16 mib([ sol sib sol mib]) } \voiceOne
do'8([ reb!16. sib32]) mib8->([ do])
%--- 21
do8([ reb16. sib32]) mib8->([ do]) \oneVoice
r16 <solb lab>[ <fa lab> <lab sib>] <sol sib>[ <sol reb'>8 <lab do>16]
<fa lab fa'>4 <mib lab do>8([ <reb mib sol sib>])
<do mib lab do>8[ <mib do'>16. <mib do'>32] <mib do'>8.([ <reb sib'>16])
%--- 25
<reb sib'>16([ <do lab'> <si sol'> <do lab'>]) <reb mib>4
<do mib do'>8[ <mib do'>16. <mib do'>32] <solb mib'>8.->([ <fa reb'>16])
<fab reb'>8.->([ <mib do'>16]) <mib do'>16([ <reb sib'> <do lab'> <reb sib'>])
<do lab'>2
%--- 29
<do mib>8[ <do mib>16. <do mib>32] <reb mib>4
<do mib>8[ <do mib>16. <do mib>32] <reb mib>4
<do mib>8[ <do mib>16. <do mib>32] <reb mib>4
<do mib>8[ <do mib>16. <do mib>32] <sib mib>4
%--- 33
<mib sib'>8.[ <mib sib'>16] <mi sib' do>8.[ <mi sib' do>16]
<fa lab reb>4 \voiceOne <fa reb'>16([ <mib do'> <reb sib'> <do lab'>]) \oneVoice
<do mib lab>8.[ <do mib lab>16] <reb mib sib'>4
<do mib lab>4 r \voiceOne
%--- 37
mib'2
mib2
mib2
%--- 40
mib2 \oneVoice
\TUPNO \times 4/6 { r16 re,([ fa dob' fa, re]) } \times 4/6 { r16 mib([ sol sib sol mib]) }
\times 4/6 { r16 re([ fa sib fa re]) } \times 4/6 { r16 mib([ sol sib sol mib]) } \voiceOne
%--- 43
do'8([ reb!16. sib32]) mib8->([ do])
do8([ reb16. sib32]) mib8->([ do]) \oneVoice
r16 <solb lab>[ <fa lab> <lab sib>] <sol sib>[ <sol reb'>8 <lab do>16]
%--- 46
<fa lab fa'>4 <mib lab do>8([ <reb mib sol sib>])
<do mib lab do>8[ <mib do'>16. <mib do'>32] <mib do'>8.([ <reb sib'>16])
<reb sib'>16([ <do lab'> <si sol'> <do lab'>]) <reb mib>4
%--- 49-52
<do mib do'>8[ <mib do'>16. <mib do'>32] <solb mib'>8.->([ <fa reb'>16])
<fab reb'>8.->([ <mib do'>16]) <mib do'>16([ <reb sib'> <do lab'> <reb sib'>])
<do lab'>4 <do lab'>
<do mib lab>2
}

%%%%%%%%%%%%%%%%%%%% VOIX II
pianoHautII = \context Staff \relative do'' \new Voice { \voiceTwo
%--- 1-10
s2*10
%--- 11
s4 lab8[ mib]
s2
%--- 13
s2
\TUPNO \times 4/6 { sib'16[ mib, sib' lab mib sib'] } \times 4/6 { do[ mib, do' mib, do' mib,] }
\times 4/6 { reb'[ mib, reb' mib, reb' do] } \times 4/6 { sib[ mib, sib' mib, sib' mib,] }
\times 4/6 { sib'[ mib, sib' lab mib sib'] } \times 4/6 { do[ mib, do' mib, do' mib,] }
%--- 17
\times 4/6 { reb'[ mib, reb' mib, reb' do] } \times 4/6 { sib[ mib, sib' mib, sib' mib,] }
s2*2
\times 4/6 { mib16[ mib mib mib mib mib] } \times 4/6 { mib[ mib mib mib mib mib] }
%--- 21
\times 4/6 { mib[ mib mib mib mib mib] } \times 4/6 { mib[ mib mib mib mib mib] }
%--- 22-33
s2*12
%--- 34
s4 lab8[ mib]
s2*2
%--- 37
\times 4/6 { sib'16[ mib, sib' lab mib sib'] } \times 4/6 { do[ mib, do' mib, do' mib,] }
\times 4/6 { reb'[ mib, reb' mib, reb' do] } \times 4/6 { sib[ mib, sib' mib, sib' mib,] }
\times 4/6 { sib'[ mib, sib' lab mib sib'] } \times 4/6 { do[ mib, do' mib, do' mib,] }
%--- 40
\times 4/6 { reb'[ mib, reb' mib, reb' do] } \times 4/6 { sib[ mib, sib' mib, sib' mib,] }
s2*2
%--- 43
\times 4/6 { mib16[ mib mib mib mib mib] } \times 4/6 { mib[ mib mib mib mib mib] }
\times 4/6 { mib[ mib mib mib mib mib] } \times 4/6 { mib[ mib mib mib mib mib] }
%--- 45-52
s2*8
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEY \TIME
% \set autoBeaming = ##f
 << \pianoHautI \pianoHautII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEY \TIME
 \IPIANOHAUT
 << \pianoHautI \pianoHautII >>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoBasI =  \context Staff \relative do \new Voice { \voiceOne
%--- 1
\TUPBNO
\times 4/6 { r16 mib([ lab mib lab mib]) } \TUPNO \times 4/6 { r16 mib([ sol mib sol mib]) }
\times 4/6 { r16 mib([ lab mib lab mib]) } \times 4/6 { r16 mib([ sol mib sol mib]) }
\times 4/6 { r16 mib([ lab mib lab mib]) } \oneVoice \times 4/6 { lab,16-. lab'([ do lab do reb]) }
\times 4/6 { lab,16-. sol'([ sib sol sib lab]) } \times 4/6 { mib,16-. mib'([ sol mib sol mib]) } \voiceOne
%--- 5
\times 4/6 { r16 mib([ lab mib lab mib]) } \times 4/6 { r16 mib([ lab mib lab mib]) }
\times 4/6 { r16 mib([ lab mib lab mib]) } \times 4/6 { r16 mib([ sol mib sol mib]) }
\times 4/6 { r16 mib([ lab mib lab mib]) } \times 4/6 { r16 mib([ sol mib sol mib]) }
\times 4/6 { r16 mib([ lab mib lab mib]) } \times 4/6 { r16 mib([ sol mib sol mib]) }
%--- 9
\times 4/6 { r16 mib([ lab mib lab mib]) } \oneVoice \times 4/6 { mib,16 mib'([ sol mib sol mib]) }
\times 4/6 { sol,16 sol'([ sib sol sib sol]) } \times 4/6 { sol,16 sol'([ <sib do> sol <sib do> sol]) }
\times 4/6 { fa,16 fa'([ <lab reb> fa <lab reb> fa]) } \voiceOne lab8[ mib] \oneVoice 
\times 4/6 { mib,16-. mib'([ lab mib lab mib]) } \times 4/6 { mib,16-. mib'([ sol mib sol mib]) }
%--- 13
\times 4/6 { lab,16-. mib'([ lab mib lab mib] } \times 4/6 { do'[ mib, do' mib mib, mib']) }
<sol, sib>8([ <fa lab>16. <sol sib>32] <lab do>4)
<sib reb>8.([ <lab do>16] <sol sib>4)
<sol sib>8([ <fa lab>16. <sol sib>32] <lab do>4)
%--- 17
<sib reb>8.([ <lab do>16] <sol sib>4)
lab4( sol) \voiceOne
sib2 \oneVoice
<lab do>8([ <sib reb!>16. <sol sib>32]) do8->([ sib])
%--- 21
<lab do>8([ <sib reb>16. <sol sib>32]) do8->([ sib])
r16 do([ reb re] mib[ mi8 fa16])
<reb, lab' reb>4 <mib lab do>8([ <mib sol sib>]) \voiceOne
\times 4/6 { r16 mib([ lab mib lab mib]) } \times 4/6 { r16 mib([ sol mib sol mib]) }
%--- 25
\times 4/6 { r16 mib([ lab mib lab mib]) } \times 4/6 { r16 mib([ sol mib sol mib]) }
\times 4/6 { r16 mib([ lab mib lab mib]) } \oneVoice \times 4/6 { lab,16 lab'([ do lab do reb]) }
\times 4/6 { lab,16-. sol'([ sib sol sib lab]) } \times 4/6 { mib,16 mib'([ sol mib sol mib]) } \voiceOne
\times 4/6 { r16 mib([ lab mib lab mib]) } \times 4/6 { r16 mib([ lab mib lab mib]) }
%--- 29
\times 4/6 { r16 mib([ lab mib lab mib]) } \times 4/6 { r16 mib([ sol mib sol mib]) }
\times 4/6 { r16 mib([ lab mib lab mib]) } \times 4/6 { r16 mib([ sol mib sol mib]) }
\times 4/6 { r16 mib([ lab mib lab mib]) } \times 4/6 { r16 mib([ sol mib sol mib]) }
\times 4/6 { r16 mib([ lab mib lab mib]) } \oneVoice \times 4/6 { mib,16 mib'([ sol mib sol mib]) }
%--- 33
\times 4/6 { sol,16 sol'([ sib sol sib sol]) } \times 4/6 { sol,16 sol'([ <sib do> sol <sib do> sol]) }
\times 4/6 { fa,16 fa'([ <lab reb> fa <lab reb> fa]) } \voiceOne lab8[ mib] \oneVoice 
\times 4/6 { mib,16 mib'([ lab mib lab mib]) } \times 4/6 { mib,16 mib'([ sol mib sol mib]) }
\times 4/6 { lab,16 mib'([ lab mib lab mib] } \times 4/6 { do'[ mib, do' mib mib, mib']) }
%--- 37
<sol, sib>8([ <fa lab>16. <sol sib>32] <lab do>4)
<sib reb>8.([ <lab do>16] <sol sib>4)
<sol sib>8([ <fa lab>16. <sol sib>32] <lab do>4)
%--- 40
<sib reb>8.([ <lab do>16] <sol sib>4)
lab4( sol) \voiceOne
sib2 \oneVoice
%--- 43
<lab do>8([ <sib reb!>16. <sol sib>32]) do8->([ sib])
<lab do>8([ <sib reb>16. <sol sib>32]) do8->([ sib])
r16 do([ reb re] mib[ mi8 fa16])
%--- 46
<reb, lab' reb>4 <mib lab do>8([ <mib sol sib>]) \voiceOne
\times 4/6 { r16 mib([ lab mib lab mib]) } \times 4/6 { r16 mib([ sol mib sol mib]) }
\times 4/6 { r16 mib([ lab mib lab mib]) } \times 4/6 { r16 mib([ sol mib sol mib]) }
%--- 49-52
\times 4/6 { r16 mib([ lab mib lab mib]) } \oneVoice \times 4/6 { lab,16 lab'([ do lab do reb]) }
\times 4/6 { lab,16 sol'([ sib sol sib lab]) } \times 4/6 { mib,16 mib'([ sol mib sol mib]) } \voiceOne
\times 4/6 { r16 mib([ lab mib lab mib]) } \times 4/6 { r16 mib([ lab mib lab mib]) } \oneVoice
<lab, mib' lab>2
}

%%%%%%%%%%%%%%%%%%%% VOIX II
pianoBasII = \context Staff \relative do \new Voice { \voiceTwo
%--- 1
lab4 lab
lab4 lab
lab4 s4
s2
%--- 5
lab4 lab
lab4 lab
lab4 lab
lab4 lab
%--- 9
lab4 s4
s2
s4 <fa' reb'>16([ <mib do'> <reb sib'> <do lab'>])
s2
%--- 13
s2*4
%--- 17
s2*2
lab'4( sol)
s2
%--- 21
s2*3
lab,4 lab
%--- 25
lab4 lab
lab4 s4
s2
lab4 lab
%--- 29
lab4 lab
lab4 lab
lab4 lab
lab4 s4
%--- 33
s2
s4 <fa' reb'>16([ <mib do'> <reb sib'> <do lab'>])
s2*2
%--- 37
s2*3
%--- 40
s2*2
lab'4( sol)
%--- 43
s2*3
%--- 46
s2
lab,4 lab
lab4 lab
%--- 49-52
lab4 s4
s2
lab4 lab
s2
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEY \TIME
% \set autoBeaming = ##f
 << \pianoBasI \pianoBasII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \KEY \TIME
 \IPIANOBAS
 << \pianoBasI \pianoBasII >>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
%--- 1
s2\pp
s2*4
%--- 6
\DYNEXO #'(1.5 . 0) s2\pp
%--- 7
s2*3
%--- 10
s4 s8.\cr s16\!
\times 4/6 { s4\decr s16 s16\! } s4
%--- 12
s2*3
%--- 15
\times 4/6 { s8\decr s16\! s8. } s4
s2
\times 4/6 { s8\decr s16\! s8. } s4
%--- 18
s2*4
%--- 22
s4 \TSCREXO #'(0 . 0.5) s4-\CRESCM
\DYNEXO #'(1 . -0.5) \PINEXO #'(0.7 . -0.5) s4.\fp\decr s8\!
\DYNEXO #'(1.5 . 0) s2\pp
%--- 25
s2*4
%--- 29
\DYNEXO #'(1.5 . 0) s2\pp
s2*3
%--- 33
s4 s8.\cr s16\!
\times 4/6 { s4\decr s16 s16\! } s4
%--- 35
s2*10
%--- 45
s4 \TSCREXO #'(0 . 0.5) s4-\CRESCM
\DYNEXO #'(1 . -0.5) \PINEXO #'(1 . -0.5) s4.\fp\decr s8\!
\DYNEXO #'(1.5 . 0) s2\pp
%--- 48-52
s2*5
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = {
%--- 1
\TEMPOBASE
s2\pp
s2*4
%--- 6
s2\pp
%--- 7
s2*3
%--- 10
s4 s4\cr s16
\times 4/6 { s4\!\mp\decr s16 s16\!\pp } s4
%--- 12
s2*3
%--- 15
\times 4/6 { s8\mp\decr s16\!\pp s8. } s4
s2
\times 4/6 { s8\mp\decr s16\!\pp s8. } s4
%--- 18
s2*4
%--- 22
s4 s4\cr
s2\mf\decr
s2\!\pp
%--- 25
s2*4
%--- 29
s2\pp
s2*3
%--- 33
s4 s4\cr s16
\times 4/6 { s4\!\mp\decr s16 s16\!\pp } s4
%--- 35
s2*10
%--- 45
s4 s4\cr
s2\mf\decr
s2\!\pp
%--- 48-52
s2*5
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<
  \new Voice = "chant"  << \notePartChant >>
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
   \override TextScript #'font-size = #1
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

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME s2 }

\score {
 <<
  \new Staff = "chant"      { \SILENCE << \noteMidiChant      \dynMidiPiano >> }
  \new Staff = "pianoUp"    { \SILENCE << \noteMidiPianoHaut  \dynMidiPiano >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBas   \dynMidiPiano >> }
 >>
 \midi { }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         FIN DU FICHIER SchubertF-D686B-Fruehlingsglaube.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
