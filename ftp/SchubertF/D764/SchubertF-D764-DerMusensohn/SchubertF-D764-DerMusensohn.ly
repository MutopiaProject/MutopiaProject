%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D764-DerMusensohn.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Der Musensohn", für eine Singstimme mit Klavierbegleitung
%                                       AVEC SORTIES PARTITION ET MIDI SEPAREES
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
  " " { \italic "♫  Franz Schubert: Der Musensohn (D.764)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Der Musensohn (D.764)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 dedication = \markup \center-column { \fontsize #0.5 \bold "Frau Josephine von Franck gewidmet." " " }
 title = \markup { \fontsize #1.5 "Der Musensohn" }
 subsubtitle = " "
 poet = \markup { \column {
  \line { \bold "Johann Wolfgang von Goethe" }
  \line { \small "(1749-1832)" } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.764 (Op. 92, No 1, Dezember 1822)" }
% MUTOPIA
 mutopiatitle = "Der Musensohn"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "J. W. von Goethe"
 mutopiaopus = "D.764 (Op. 92, No. 1)"
 mutopiainstrument = "Voice and Piano"
 date = "1822"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1558"
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
TEMPOBASE = \tempo 8=320
TEMPORIT  = \tempo 8=240
TEMPOFIN  = \tempo 8=120
%----- TONALITÉS ET MESURES
KEYA  = { \key sol \major }
KEYB  = { \key si \major }
TIME  = { \time 6/8 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large { \hspace #-5 "Ziemlich lebhaft." } }
ATEMPO   = \markup { \bold \large { \hspace #-2 "a tempo" } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "oboe"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
}
IPIANOBAS = {
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.9
}
%----- CRESCENDO et MARKUP
CRESCM    = \markup { \large \bold \italic "cresc." }
DECRESCM  = \markup { \large \bold \italic "decresc." }
RIT       = \markup { \large \bold \italic "rit." }
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

poemeA = \lyricmode {
\set fontSize = #-.5
Durch Feld und Wald zu schwei -- fen,
mein Lied -- chen weg -- zu -- pfei -- fen,
so geht’s von Ort zu Ort, so geht’s von Ort zu Ort!
Und nach dem Tak -- te re -- get,
und nach dem Mass be -- we -- get
sich al -- les an __ mir fort, __
und nach dem Mass be -- we -- get
sich al -- les an mir fort.

Ich kann sie kaum er -- war -- ten,
die er -- ste Blum’ im Gar -- ten,
die er -- ste Blüth’ am Baum.
Sie grü -- ssen mei -- ne Lie -- der,
und kommt der Win -- ter wie -- der,
sing’ ich noch je -- nen __ Traum,
sing’ ich __ noch je -- nen, __ je -- nen Traum.

Ich sing’ ihn in der
}

poemeB = \lyricmode {
\set fontSize = #-.5

" "  " "  " "  " "  " " Wei -- te,
auf Ei -- ses Läng’ und Brei -- te,
da blüht der Win -- ter schön, da blüht der Win -- ter schön!
Auch die -- se Blü -- the schwin -- det,
und neu -- e Freu -- de fin -- det
sich auf be -- bau -- ten Höh’n, __
und neu -- e Freu -- de fin -- det
sich auf be -- bau -- ten Höh’n.

Denn wie ich bei der Lin -- de
das jun -- ge Völk -- chen fin -- de,
so -- gleich er -- reg’ ich __ sie.
Der stump -- fe Bur -- sche bläht sich,
das stei -- fe Mäd -- chen dreht sich
nach mei -- ner Me -- lo -- die,
nach mei -- ner, mei -- ner Me -- lo -- die.

Ihr gebt den Soh -- len
}

poemeC = \lyricmode {
\set fontSize = #-.5

Flü -- gel
Und treibt durch Thal und Hü -- gel
den Lieb -- ling weit von Haus, den Lieb -- ling weit __ von Haus.
Ihr lie -- ben, hol -- den Mu -- sen,
wann ruh’ ich ihr am Bu -- sen
auch end -- lich wie -- der aus, __
wann ruh’ ich ihr am Bu -- sen
auch end -- lich wie -- der aus?
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chantA = \relative do'' {
%--- 1
R2.*5 \break
r4 r8 r4 si8
si4 si8 si4 si8
}

chantB = \relative do'' {
%--- 8
\bar "|:"
re4. sol,4 re'8
mi4 mi8 sol4 mi8 \break
re4. si4 si8
do4 si8 la4 re8
si4. r8 r si
%--- 13
do4 si8 la[ mi'] re
sol,4. r8 r si
si4 si8 si4 si8
re4. sol,4 re'8
mi4 mi8 sol4 mi8
re4. si4 si8
%--- 19
dod4 dod8 dod[ si] la
re4.~ re4 re8
mi4 mi8 mi4 mi8
fad4. sol4 si,8
re4 si8 do4 fad,8
sol4 r8 r4 r8
%--- 25
R2.*4
r4 r8 r4 si8
%--- 30
\bar "||" \KEYB
si4 si8 si4 si8
lad4. si4 fad8
fad4 sold8 lad4 si8
dod4. si4 red8
mi4. red
%--- 35
dod4. red4( si8)
dod4. r4 r8
r4 r8 r4 fad,8
si4 si8 red[ dod] si
lad4. si4 fad8
%--- 40
fad4 sold8 lad4 si8
dod4. si4 red8
mi4. red
dod4. red4( si8)
dod4. r8 r red
fad4( mi8) red4.
%--- 46
dod4. red4( si8)
red4.~ red4 dod8
si4. r4 r8
r4 r8 r4 si8
\bar "||" \KEYA
si4 si8 si4 si8 \break
}

chantC = \relative do'' {
%--- 51
\bar ":|"
re4. sol,4 re'8
mi4 mi8 sol4 mi8
re4. si4 si8
do4 si8 la4 re8
si4. r8 r si
%--- 56
do4 si8 la[ mi'] re
sol,4. r8 r si
si4 si8 si4 si8
re4. sol,4 re'8
mi4 mi8 sol4 mi8
re4. si4 si8
%--- 62
dod4 dod8 dod[ si] la
re4.~ re4 re8
mi4 mi8 mi4 mi8
fad4. sol4 si,8
re4 si8 do4 fad,8
sol4 r8 r4 r8
%--- 68-73
s2.*6
\bar "|."
}

chantPart = { \chantA \chantB \chantC }
chantMidi = { \chantA \chantB \chantB \chantC }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEYA \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme "
 \chantPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \KEYA \TIME
 \ICHANT
 \chantMidi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. CHANT : DYNAMIQUES PARTITION/MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION
dynPartChant = {
\dynamicUp
%--- 1-56
s2.*56
%--- 57
s4. s4 s8\p
%--- 58-64
s2.*7
%--- 65
s2.^\RIT
s2.^\ATEMPO
%--- 67-73
s2.*7
}

%%%%%%%%%%%%%%%%%%%% MIDI

dynMidiChantA = {
%--- 1
\TEMPOBASE
s2.\p
s2.*6
}

dynMidiChantBA = {
%--- 8
s2.\p
s2.*20
%--- 29
s4. s4 s8\pp
s2.*19
%--- 49
s2.\p
s2.
}

dynMidiChantBB = {
%--- 8
s2.\p
s2.*20
%--- 29
s4. s4 s8\pp
s2.*19
%--- 49
s4. s4 s8\mf
s2.
}

dynMidiChantC = {
%--- 51
s2.*6
%--- 57
s4. s4 s8\p
s2.*7
%--- 65
\TEMPORIT s2.
\TEMPOBASE s2.
%--- 67-73
s2.*6
\TEMPOFIN s2.
}

dynMidiChant = { \dynMidiChantA \dynMidiChantBA \dynMidiChantBB \dynMidiChantC }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoHautA = \relative do' {
%--- 1
r8 <si re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
r <la do re sol>[ <la do re fad>] r <fad do' mi>[ <fad do' re>]
r <sol si mi>->[ <sol si re>] r <re sol do>[ <re sol si>]
r <do fad re'>->[ <do fad do'>] r <do fad si>[ <do fad la>]
r <si re la'>[ <si re sol>] r <si re la'>[ <si re sol>]
r <si re la'>[ <si re sol>] r <si re la'>[ <si re sol>]
%--- 7
r <si re>[ <si re sol>] r <re sol do>[ <re sol si>]
}

pianoHautB = \relative do' {
%--- 8
r8 <si re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
r <do, mi>[ <do mi sol>] r <do' mi la>[ <do mi sol>]
r <si, re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
r <do, re>[ <do re fad>] r <fad do' mi>[ <fad do' re>]
r <si, re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
%--- 13
r <do, re>[ <do re fad>] r <fad do' mi>[ <fad do' re>]
r <si, re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
r <si, re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
r <si, re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
r <do, mi>[ <do mi sol>] r <do' mi la>[ <do mi sol>]
r <si, re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
%--- 19
r <la, dod sol>[ <dod sol' la>] r <dod' sol' si>[ <dod sol' la>]
r <la, re fad>[ <re fad la>] r <re' fad si>[ <re fad la>]
r <dod, sol'>[ <dod sol' la>] r <dod' sol' si>[ <dod sol' la>]
r <do! fad>[ <fad do'>] r <si, sol'>[ <sol' si>]
r <sol, si mi>[ <sol si re>] r <fad do' mi>[ <fad do' re>]
r <si, re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
%--- 25
r <la do re sol>[ <la do re fad>] r <fad do' mi>[ <fad do' re>]
r <sol si mi>->[ <sol si re>] r <re sol do>[ <re sol si>]
r <do fad re'>->[ <do fad do'>] r <do fad si>[ <do fad la>]
r <si re la'>[ <si re sol>] r <si re la'>[ <si re sol>]
r <si re la'>[ <si re sol>] r <si re la'>[ <si re sol>]
%--- 30
\KEYB
r <red fad>[ <red fad>] r <red fad>[ <red fad>]
r <mi fad>[ <mi fad>] r <red fad>[ <red fad>]
r <red fad>[ <red fad>] r <red fad>[ <red fad>]
r <mi fad>[ <mi fad>] r <red fad>[ <red fad>]
r <dod fad>[ <dod fad>] r <si fad'>[ <si fad'>]
%--- 35
r <lad fad'>[ <lad fad'>] r <si fad'>[ <sold fad'>]
r <lad fad'>[ <lad fad'>] r <si red fad>[ <sold si fad'>]
r <fad lad fad'>[ <lad dod fad>] << { fad'4 fad8 } \\ { <sid, red>8[( <dod mi>) <dod mi>] } >>
r <red fad>[ <red fad>] r <red fad>[ <red fad>]
r <mi fad>[ <mi fad>] r <red fad>[ <red fad>]
%--- 40
r <red fad>[ <red fad>] r <red fad>[ <red fad>]
r <mi fad>[ <mi fad>] r <red fad>[ <red fad>]
r <dod fad>[ <dod fad>] r <si fad'>[ <si fad'>]
r <lad fad'>[ <lad fad'>] r <si fad'>[ <sold fad'>]
r <lad fad'>[ <lad fad'>] r <lad fad'>[ <si fad'>]
r <dod fad>[ <dod fad>] r <si fad'>[ <si fad'>]
%--- 46
r <lad fad'>[ <lad fad'>] r <si fad'>[ <sold fad'>]
r <si red fad>[ <si red fad>] r <lad mi' fad>[ <lad mi' fad>]
r <si red>[ <si red fad>] r <si red fad>[ <si red si'>]
r <si red>[ <si red fad>] r <si red fad>[ <si red si'>]
\KEYA
r <si re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
}

pianoHautC = \relative do' {
%--- 51
r8 <si re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
r <do, mi>[ <do mi sol>] r <do' mi la>[ <do mi sol>]
r <si, re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
r <do, re>[ <do re fad>] r <fad do' mi>[ <fad do' re>]
r <si, re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
%--- 56
r <do, re>[ <do re fad>] r <fad do' mi>[ <fad do' re>]
r <si, re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
r <si, re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
r <si, re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
r <do, mi>[ <do mi sol>] r <do' mi la>[ <do mi sol>]
r <si, re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
%--- 62
r <dod, sol'>[ <dod sol' la>] r <dod' sol' si>[ <dod sol' la>]
r <re, fad>[ <re fad la>] r <re' fad si>[ <re fad la>]
r <dod, sol'>[ <dod sol' la>] r <dod' sol' si>[ <dod sol' la>]
r <do! fad>[ <fad do'>] r <si, sol'>[ <sol' si>]
r <sol, si mi>[ <sol si re>] r <fad do' mi>[ <fad do' re>]
r <si, re>[ <si re sol>] r <sol' si mi>[ <sol si re>]
%--- 68-73
r <la do re sol>[ <la do re fad>] r <fad do' mi>[ <fad do' re>]
r <sol si mi>->[ <sol si re>] r <re sol do>[ <re sol si>]
r <do fad re'>->[ <do fad do'>] r <do fad si>[ <do fad la>]
r <si re la'>[ <si re sol>] r <si re la'>[ <si re sol>]
r <si re la'>[ <si re sol>] r <si re la'>[ <si re sol>]
<sol' si re sol>4 r8 r4 r8
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEYA \TIME
% \set autoBeaming = ##f
 \pianoHautA \pianoHautB \pianoHautC
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEYA \TIME
 \IPIANOHAUT
 \pianoHautA \pianoHautB \pianoHautB \pianoHautC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBasA = \relative do, {
%--- 1
<sol sol'>4-> r8 <sol' re'>4 r8
<re re'>4 r8 <re' la'>4 r8
<sol,, sol'>4-> r8 <sol' re'>4 r8
<re' la'>4-> r8 <re, re'>4 r8
<sol, sol'>4 r8 <sol' re'>4 r8
<sol, sol'>4 r8 <sol' re'>4 r8
%--- 7
<sol, sol'>4 r8 <sol' re'>4 r8
}

pianoBasB = \relative do, {
%--- 8
<sol sol'>4 r8 <sol' re'>4 r8
<sol, sol'>4 r8 <sol' do mi>4 r8
<sol, sol'>4 r8 <sol' re'>4 r8
<re re'>4 r8 <re' la'>4 r8
<sol,, sol'>4-> r8 <sol' re'>4 r8
%--- 13
<re re'>4 r8 <re' la'>4 r8
<sol,, sol'>4-> r8 <sol' re'>4 r8
<sol, sol'>4 r8 <sol' re'>4 r8
<sol, sol'>4 r8 <sol' re'>4 r8
<sol, sol'>4 r8 <sol' do mi>4 r8
<sol, sol'>4 r8 <sol' re'>4 r8
%--- 19
mi4 r8 mi'4 r8
fad,4 r8 fad'4 r8
<la,, la'>4 r8 <la' mi'>4 r8
<re, re'>4 r8 <mi mi'>4 r8
<re' sol si>4 r8 <re la' do>4 r8
<sol,, sol'>4-> r8 <sol' re'>4 r8
%--- 25
<re re'>4 r8 <re' la'>4 r8
<sol,, sol'>4-> r8 <sol' re'>4 r8
<re' la'>4-> r8 <re, re'>4 r8
<sol, sol'>4 r8 <sol' re'>4 r8
<sol, sol'>4 r8 <sol' re'>4 r8
%--- 30
\KEYB
si4 r8 si'4 r8
si,4 r8 si'4 r8
si,4 r8 si'4 r8
si,4 r8 si'4 r8
fad, 4 r8 fad'4 r8
%--- 35
fad, 4 r8 fad'4 r8
fad, 4 r8 fad'4 r8
fad, 4 r8 fad'4 r8
si,4 r8 si'4 r8
si,4 r8 si'4 r8
%--- 40
si,4 r8 si'4 r8
si,4 r8 si'4 r8
fad, 4 r8 fad'4 r8
fad, 4 r8 fad'4 r8
fad, 4 r8 fad'4 r8
fad, 4 r8 fad'4 r8
%--- 46
fad, 4 r8 fad'4 r8
fad, 4 r8 fad'4 r8
si,,4 r8 si'4 r8
si,4 r8 si'4 r8
\KEYA
<sol, sol'>4 r8 <sol' re'>4 r8
}

pianoBasC = \relative do, {
%--- 51
<sol sol'>4 r8 <sol' re'>4 r8
<sol, sol'>4 r8 <sol' do mi>4 r8
<sol, sol'>4 r8 <sol' re'>4 r8
<re re'>4 r8 <re' la'>4 r8
<sol,, sol'>4 r8 <sol' re'>4 r8
%--- 56
<re re'>4 r8 <re' la'>4 r8
<sol,, sol'>4 r8 <sol' re'>4 r8
<sol, sol'>4 r8 <sol' re'>4 r8
<sol, sol'>4 r8 <sol' re'>4 r8
<sol, sol'>4 r8 <sol' do mi>4 r8
<sol, sol'>4 r8 <sol' re'>4 r8
%--- 62
mi4 r8 mi'4 r8
fad,4 r8 fad'4 r8
<la,, la'>4 r8 <la' mi'>4 r8
<re, re'>4 r8 <mi mi'>4 r8
<re' sol si>4 r8 <re la' do>4 r8
<sol,, sol'>4 r8 <sol' re'>4 r8
%--- 68-73
<re re'>4 r8 <re' la'>4 r8
<sol,, sol'>4-> r8 <sol' re'>4 r8
<re' la'>4-> r8 <re, re'>4 r8
<sol, sol'>4 r8 <sol' re'>4 r8
<sol, sol'>4 r8 <sol' re'>4 r8
<sol, sol'>4 r8 r4 r8
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEYA \TIME
% \set autoBeaming = ##f
 \pianoBasA \pianoBasB \pianoBasC
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \KEYA \TIME
 \IPIANOBAS
 \pianoBasA \pianoBasB \pianoBasB \pianoBasC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
%--- 1
s4.\p\cr s4 s8\!
\DYNEXO #'(1 . 0) \PINEXO #'(0.5 . 0) s4.\fp\decr s4 s8\!
s2.*4
%--- 7
s2.*2
s4\cr s8\! s4\decr s8\!
s2.*3
%--- 13
s2.*4
s4\cr s8\! s4\decr s8\!
s2.
%--- 19
s2.*2
s4 s16 s16\cr s4 s8\!
\DYNEXO #'(0.5 . 0) s4.\f\decr s4 s8\!
\DYNEXO #'(0.5 . 0) s2.\p
s4. s4\cr s8\!
%--- 25
s4\decr s8\! s4.
s2.*4
%--- 30
s2.\pp
s2.*4
%--- 35
s2.*5
%--- 40
s2.*4
s4 s16 \PINEXO #'(2 . 0) s4\cr s8\! s16
s4\decr s8\! s4.
%--- 46
s2.*2
s4 s8-\CRESCM s4.
s2.
\DYNEXO #'(0 . -0.5) s2.\mf
%--- 51
s2.*5
%--- 56
s2.*2
\DYNEXO #'(1.5 . -1) s2.\pp
s2.*3
%--- 62
s2.*3
s2.-\RIT
s2.
s4.\mf\cr s4 s8\!
%--- 68-73
s4.\decr s4 s8\!
s2.*2
s2.-\DECRESCM
s2.
\DYNEXO #'(0.5 . 0) s2.\f
}


%%%%%%%%%%%%%%%%%%%% SPECIALES PIANO HAUT
dynPartPianoHaut = { 
\dynamicUp
%--- 1-36
s2.*36
%--- 37
s4\cr s8\! s4\decr s8\!
%--- 38-65
s2.*28
%--- 66
s2.^\ATEMPO
%--- 67-73
s2.*7
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPianoA = {
%--- 1
\TEMPOBASE
s4.\p\cr s4.
s4.\!\mf\decr s4 s8\!\p
s2.*4
%--- 7
s2.
}

dynMidiPianoB = {
%--- 8
s2.
s4\p\cr s8\!\mf s4\decr s8\!\p
s2.*3
%--- 13
s2.*4
s4\cr s8\!\mf s4\decr s8\!\p
s2.
%--- 19
s2.*2
s4. s4.\cr
s4.\!\f\decr s4.
s2.\!\p
s4. s4.\cr
%--- 25
s4\!\mf\decr s8\!\p s4.
s2.*4
%--- 30
s2.\pp
s2.*4
%--- 35
s2.*5
%--- 40
s2.*4
s4. s4.\cr
s4\!\mp\decr s8\!\pp s4.
%--- 46
s2.*2
s4 s8\cr s4.
s2.
s2.\!\mf
}

dynMidiPianoC = {
%--- 51
s2.*5
%--- 56
s2.*2
s2.\pp
s2.*3
%--- 62
s2.*3
s2.-\RIT
s2.
s4.\mf\cr s4.
%--- 68-73
s4.\!\f\decr s4.
s2.\!\mf
s2.
s2.\decr
s4. s4 s8\!\mp
s2.\f
}

dynMidiPiano = { \dynMidiPianoA \dynMidiPianoB \dynMidiPianoB \dynMidiPianoC }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<
  \new Voice = "chant"  << \notePartChant \dynPartChant >>
  \new Lyrics \lyricsto "chant" { \poemeA \poemeC }
  \new Lyrics \lyricsto "chant" \poemeB

  \new PianoStaff <<
   \set PianoStaff.instrumentName = "PianoForte "
   \new Staff = "pianoUp"    << \notePartPianoHaut \dynPartPianoHaut >>
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

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME s2. }

\score {
 <<
  \new Staff = "chant"      { \SILENCE << \noteMidiChant      \dynMidiChant >> }
  \new Staff = "pianoUp"    { \SILENCE << \noteMidiPianoHaut  \dynMidiPiano >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBas   \dynMidiPiano >> }
 >>
 \midi { }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         FIN DU FICHIER SchubertF-D764-DerMusensohn.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
