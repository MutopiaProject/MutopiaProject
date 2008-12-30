%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D777-LachenUndWeinen.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Lachen und Weinen", für eine Singstimme mit Klavierbegleitung
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

 indent = 22\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Lachen und Weinen (D.777)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Lachen und Weinen (D.777)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "Lachen und Weinen" }
 subsubtitle = " "
 poet = \markup { \hspace #24  \column { \center-column {
  \line { \fontsize #2 \bold "Johann Michael Friedrich Rückert" }
  \line { \small "(1788-1866)" }
  } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.777 (Op. 59, No 4, 1823)" }
% MUTOPIA
 mutopiatitle = "Lachen und Weinen"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Friedrich Rückert"
 mutopiaopus = "D.777 (Op. 59, No 4)"
 mutopiainstrument = "Voice and Piano"
 date = "1823"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/10/30-1588"
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
TEMPOBASE    = \tempo 4=120
TEMPORALENTI = \tempo 4=100
%----- TONALITÉS ET MESURES
KEY   = { \key lab \major }
TIME  = { \time 2/4 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-5.0 "Etwas geschwind. " } }
ATEMPO   = \markup { \bold \large { \hspace #-1.0 "a tempo " } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "oboe"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
IPIANOBAS = {
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
}
%----- REPOSITIONNEMENT DES SCRIPT
SCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Script #'extra-offset = #$beg-end #})
%----- DYNAMIQUE SPECIALE
SFORZATO = \markup { \musicglyph #"scripts.sforzato" }
%----- REPOSITIONNEMENT DES MARKUP
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
TSCREXOB =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \override TextScript #'extra-offset = #$beg-end #})
%----- CRESCENDOS
CRESCM    = \markup { \bold \italic "cresc." }
DECRESCM  = \markup { \bold \italic "decresc." }
DIMINM    = \markup { \bold \italic "dimin." }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
\set fontSize = #-.5

La -- chen und Wei -- nen zu je -- gli -- cher Stun -- de
ruht __ bei der Lieb’ __ auf so man -- cher -- lei Grun -- de.
Mor -- gens lacht’ __ ich vor Lust; __
und wa -- rum ich nun wei -- ne
bei des A -- ben -- des Schei -- ne,
ist mir selb’ __ nicht be -- wusst, ist mir selb’ __ nicht be -- wusst.

Wei -- nen und La -- chen zu je -- gli -- cher Stun -- de
ruht __ bei der Lieb’ __ auf so man -- cher -- lei Grun -- de.
A -- bends weint’ __ ich vor Schmerz; __
und wa -- rum du er -- wa -- chen
kannst am Mor -- gen mit La -- chen,
muss ich dich fra -- gen, o Herz, muss ich dich fra -- gen, o Herz.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chant = \relative do'' {
%--- 0
\partial 8 r8
%--- 1
R2*8
%--- 9
do8[ fa] mib mib
mib8[ reb] do do
sib8[ reb] do sib
lab4 mib8 r
do'8[ fa] mib mib
mib8[ reb] do do
%--- 15
sib8[ reb] do sib
lab4 mib8 r
R2
reb'4. sib8
do8[ lab] sol lab
sib8( mib4.~)
mib4 r
r4 mib8 mib
%--- 23
mib2
mib4 mib
fab2
mib4 r
dob4. dob8
mib4 mib8 mib
lab,4.( sib8)
dob4 r
%--- 31
r4^\fermataMarkup do!8 do
reb8[ sib] lab sol
mib'4 do8 do
reb8[ sib] lab sol
lab4 r
R2
%--- 37
R2*7
%--- 44
R2*4
%--- 48
do8[ fa] mib mib
mib8[ reb] do do
sib8[ reb] do sib
%--- 51
lab4 mib8 r
do'8[ fa] mib mib
mib8[ reb] do do
sib8[ reb] do sib
lab4 mib8 r
R2
%--- 57
reb'4. sib8
dob8[ lab] sol lab
sib8( mib4.~)
mib4 r
r4 mib8 mib
mib4 do8 lab
%--- 63
lab8 reb mib fa
solb4 do,8 do
\grace mib8 reb4 reb
R2^\fermataMarkup
r8. sib16 sib8 do
%--- 68
reb8[ sib] lab sol
mib'8. do16 sib8 do
reb8[ sib] lab sol
lab4 r
R2
%--- 73-83
R2*11
\bar "|."
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme "
 \chant
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \KEY \TIME
 \ICHANT
 \chant
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoHautIA = \relative do'' { \oneVoice
%--- 0
\partial 8 lab8(
%--- 1
sib8.[ reb16 fa,8 sol])
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO PARTITION
pianoHautIAP = \relative do'' {
%--- 2
\SCREXO #'(3 . 0.5) lab8.\turn ([ do16 mib,8 lab])
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO MIDI
pianoHautIAM = \relative do'' {
%--- 2
lab16[ sib32 lab sol lab do16] mib,8 lab
}

%%%%%%%%%%%%%%%%%%%% suite
pianoHautIB = \relative do'' {
%--- 3
sib8.([ reb16 fa,8 sol])
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO PARTITION
pianoHautIBP = \relative do'' {
%--- 4-5
\SCREXO #'(3 . 0.5) lab8.\turn [( do16 mib,8) <mib mib'>-.]( \stemUp
<fa mib'>8-.[ <sol mib'>-. <lab mib'>-. <sib mib>-.]) \stemNeutral
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO MIDI
pianoHautIBM = \relative do'' {
%--- 4-5
lab16[ sib32 lab sol lab do16] mib,8 <mib mib'>-.](
<fa mib'>8-.[ <sol mib'>-. <lab mib'>-. <sib mib>-.])
}

%%%%%%%%%%%%%%%%%%%% suite
pianoHautIC = \relative do'' {
%--- 6
\voiceOne mib4. mib8
%--- 7
mib4. mib8
mib2 \oneVoice
do8([ fa mib sib]
lab8[ reb do lab]) \voiceOne
%--- 11
fab8([ sib mib, sol]) \oneVoice
<do, lab'>8([ mib lab sib])
do8([ fa mib sib]
lab8[ reb do lab]) \voiceOne
%--- 15
fab8([ sib mib, sol]) \oneVoice
<do, lab'>8([ mib lab sib])
<do, mib do'>4 <do mib lab>8-.([ <do mib lab>-.])
<reb mib reb'>4 <reb mib sib'>8[ <reb mib sib'>] \voiceOne
%--- 19
do'8[ lab sol lab] \oneVoice
<sib, mib sol sib>4. mib8
<dob mib dob'>4 <dob mib lab>8[ <dob mib lab>]
<reb mib reb'>4 <reb mib sib'>8[ <reb mib sib'>]
%--- 23
<reb mib reb'>4 <reb mib sib'>8[ <reb mib sib'>]
<reb mib reb'>4 <reb mib sib'>8[ <reb mib sib'>]
<reb mib reb'>4 <reb mib sib'>8[ <reb mib sib'>]
<reb mib reb'>4 <reb mib sib'>8[ <reb mib sib'>]
%--- 27
<dob~ fab lab>2^( \set doubleSlurs = ##t 
<dob mib solb>2) ( \set doubleSlurs = ##f
<lab~ reb fab>2) ^(
<lab dob mib>2)
%--- 31
r4^\fermataMarkup <lab do! mib>8-.^\ATEMPO [ <lab do mib>-.]
<sol reb' mib>4 <lab reb mib>8[ <sib reb mib>]
<lab do mib>4 <lab do mib>8[ <lab do mib>]
%--- 34
<sol reb' mib>4 <lab reb mib>8[ <sib reb mib>]
<lab do mib>4 <do mib do'>8[ <do mib do'>] \voiceOne
reb'8[( sib) lab-. sol-.] \oneVoice
%--- 37
<mib lab mib'>4 <do mib do'>8[ <do mib do'>] \voiceOne
reb'8[( sib) lab-. sol-.] \oneVoice
<do, mib lab>4 r8 lab'8(
sib8.[ reb16 fa,8 sol])
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO PARTITION
pianoHautICP = \relative do'' {
%--- 41
\SCREXO #'(3 . 0.5) lab8.\turn ([ do16 mib,8 lab])
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO MIDI
pianoHautICM = \relative do'' {
%--- 41
lab16[ sib32 lab sol lab do16] mib,8 lab
}

%%%%%%%%%%%%%%%%%%%% suite
pianoHautID = \relative do'' {
%--- 42
sib8.([ reb16 fa,8 sol])
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO PARTITION
pianoHautIDP = \relative do'' {
%--- 43-44
\SCREXO #'(3 . 0.5) lab8.\turn [( do16 mib,8) <mib mib'>-.]( \stemUp
<fa mib'>8-.[ <sol mib'>-. <lab mib'>-. <sib mib>-.]) \stemNeutral
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO MIDI
pianoHautIDM = \relative do'' {
%--- 43-44
lab16[ sib32 lab sol lab do16] mib,8 <mib mib'>-.](
<fa mib'>8-.[ <sol mib'>-. <lab mib'>-. <sib mib>-.])
}

%%%%%%%%%%%%%%%%%%%% suite
pianoHautIE = \relative do'' {
%--- 45
\voiceOne mib4. mib8
mib4. mib8
mib2 \oneVoice
do8([ fa mib sib]
lab8[ reb do lab]) \voiceOne
fab8([ sib mib, sol]) \oneVoice
%--- 51
<do, lab'>8([ mib lab sib])
do8([ fa mib sib]
lab8[ reb do lab]) \voiceOne
%--- 54
fab8([ sib mib, sol]) \oneVoice
<do, lab'>8([ mib lab sib])
<dob, mib dob'>4 <dob mib lab>8-.([ <dob mib lab>-.])
%--- 57
<reb mib reb'>4 <reb mib sib'>8[ <reb mib sib'>] \voiceOne
dob'8[ lab sol lab] \oneVoice
<sib, mib sol sib>4. mib8
%--- 60
<do! mib do'!>4 <do mib lab>8[ <do mib lab>]
<reb mib reb'>4 <reb mib sib'>8[ <reb mib sib'>]
<do solb' lab do>4 <do solb' lab>8[ <do solb' lab>]
%--- 63
<reb fa reb'>4 <reb fa lab>8[ <reb fa lab>]
<do solb' lab do>4 <do solb' lab>8[ <do solb' lab>]
<reb fa reb'>2
R2^\fermataMarkup
R2
%--- 68
<sol, reb' mib>4 <lab reb mib>8[ <sib reb mib>]
<lab do mib>4 <lab do mib>8[ <lab do mib>]
<sol reb' mib>4 <lab reb mib>8[ <sib reb mib>]
<lab do mib>4 <do mib do'>8[ <do mib do'>] \voiceOne
reb'8[( sib) lab-. sol-.] \oneVoice
%--- 73
<mib lab mib'>4 <do mib do'>8[ <do mib do'>] \voiceOne
reb'8[( sib) lab-. sol-.] \oneVoice
<do, mib lab>4 r8 lab'8(
%--- 76
sib8.[ reb16 fa,8 sol])
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO PARTITION
pianoHautIEP = \relative do'' {
%--- 77
\SCREXO #'(3 . 0.5) lab8.\turn ([ do16 mib,8 lab])
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO MIDI
pianoHautIEM = \relative do'' {
%--- 77
lab16[ sib32 lab sol lab do16] mib,8 lab
}

%%%%%%%%%%%%%%%%%%%% suite
pianoHautIF = \relative do'' {
%--- 78
sib8.([ reb16 fa,8 sol])
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO PARTITION
pianoHautIFP = \relative do'' {
%--- 79-80
\SCREXO #'(3 . 0.5) lab8.\turn [( do16 mib,8) <mib mib'>-.]( \stemUp
<fa mib'>8-.[ <sol mib'>-. <lab mib'>-. <sib mib>-.]) \stemNeutral
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO MIDI
pianoHautIFM = \relative do'' {
%--- 79-80
lab16[ sib32 lab sol lab do16] mib,8 <mib mib'>-.](
<fa mib'>8-.[ <sol mib'>-. <lab mib'>-. <sib mib>-.])
}

%%%%%%%%%%%%%%%%%%%% suite
pianoHautIG = \relative do'' {
%--- 81-83
\voiceOne mib4. mib8
mib4. mib8
mib2
}

pianoHautIPart = \context Staff \new Voice { \voiceOne
 \pianoHautIA \pianoHautIAP \pianoHautIB \pianoHautIBP \pianoHautIC \pianoHautICP \pianoHautID \pianoHautIDP
 \pianoHautIE \pianoHautIEP \pianoHautIF \pianoHautIFP \pianoHautIG
}

pianoHautIMidi = \context Staff \new Voice { \voiceOne
 \pianoHautIA \pianoHautIAM \pianoHautIB \pianoHautIBM \pianoHautIC \pianoHautICM \pianoHautID \pianoHautIDM
 \pianoHautIE \pianoHautIEM \pianoHautIF \pianoHautIFM \pianoHautIG
}


%%%%%%%%%%%%%%%%%%%% VOIX II
pianoHautII = \context Staff \relative do'' \new Voice { \voiceTwo
%--- 0
\partial 8 s8
%--- 1
s2*5
do8.([ reb16 do8]) lab8
%--- 7
sib8.([ do16 sib8 sol])
lab2
s2*2
%--- 11
reb,4 reb
s2*3
%--- 15
reb4 reb
s2*3
%--- 19
<do mib>4 <do mib>8[ <do mib>]
s2*3
%--- 23
s2*8
%--- 31
s2*5
<reb mib>4 <reb mib>8[ <reb mib>]
%--- 37
s2
<reb mib>4 <reb mib>8[ <reb mib>]
s2*5
%--- 44
s2
do'8.([ reb16 do8]) lab8
sib8.([ do16 sib8 sol])
lab2
s2*2
reb,4 reb
%--- 51
s2*3
reb4 reb
s2*2
%--- 57
s2
<dob mib>4 <dob mib>8[ <dob mib>]
s2*4
%--- 63
s2*5
%--- 68
s2*4
<reb mib>4 <reb mib>8[ <reb mib>]
%--- 73
s2
<reb mib>4 <reb mib>8[ <reb mib>]
s2*4
%--- 79
s2*2
do'8.([ reb16 do8]) lab8
%--- 7
sib8.([ do16 sib8 sol])
lab2
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 << \pianoHautIPart \pianoHautII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEY \TIME
 \IPIANOHAUT
 << \pianoHautIMidi \pianoHautII >>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBasI = \relative do' { \oneVoice
%--- 0
\partial 8 do8(
%--- 1
reb4 sib8[ mib])
do4( lab8[ do])
reb4( sib8[ mib])
%--- 4
do4( lab8\noBeam) \clef treble do8-.(
reb8-.[ mib-. fa-. sol-.])
lab8.([ sib16 lab8]) \clef bass \voiceOne do,8
%--- 7
reb8.([ mib16 reb8 sib])
do2 \oneVoice
lab'4( sol
fa4 mib)
%--- 11
<reb, fab>4( mib)
lab,4 r
lab''4( sol
fa4 mib)
%--- 15
<reb, fab>4( mib)
lab,4 r
<lab mib'>4 <lab mib'>8-.([ <lab mib'>-.])
<sol mib'>4 <sol mib'>8[ <sol mib'>]
%--- 19
<lab mib'>4 <lab mib'>8[ <lab mib'>]
<mib mib'>4. mib'8
<lab, mib'>4 <lab mib'>8[ <lab mib'>]
<sol mib'>4 <sol mib'>8[ <sol mib'>]
%--- 23
<mib' sol>4 <mib sol>8[ <mib sol>]
<mib sol>4 <mib sol>8[ <mib sol>]
<mib sol>4 <mib sol>8[ <mib sol>]
<mib sol>4 <mib sol>8[ <mib sol>]
%--- 27
fab2(
dob2) (
reb2) (
lab)
%--- 31
r4^\fermataMarkup <lab mib'>8-.[ <lab mib'>-.]
<mib mib'>4 mib'8[ mib]
<lab, mib'>4 mib'8[ mib]
%--- 34
<mib, mib'>4 mib'8[ mib]
<lab, mib'>4 <mib' lab>8[ <mib lab>]
<mib sol>4 <mib lab>8[ <mib sib'>]
%--- 37
<mib lab do>4 <mib lab>8[ <mib lab>]
<mib sol>4 <mib lab>8[ <mib sib'>]
<lab, mib' lab>4 r8 do'8(
reb4 sib8[ mib])
do4( lab8[ do])
reb4( sib8[ mib])
do4( lab8\noBeam) \clef treble do8-.(
%--- 44
reb8-.[ mib-. fa-. sol-.])
lab8.([ sib16 lab8]) \clef bass \voiceOne do,8
reb8.([ mib16 reb8 sib])
%--- 47
do2 \oneVoice
lab'4( sol
fa4 mib)
<reb, fab>4( mib)
%--- 51
lab,4 r
lab''4( sol
fa4 mib)
%--- 54
<reb, fab>4( mib)
lab,4 r
<lab mib'>4 <lab mib'>8[ <lab mib'>]
%--- 57
<sol mib'>4 <sol mib'>8[ <sol mib'>]
<lab mib'>4 <lab mib'>8[ <lab mib'>]
<mib mib'>4. mib'8
%--- 60
<lab, mib'>4 <lab mib'>8[ <lab mib'>]
<sol mib'>4 <sol mib'>8[ <sol mib'>]
<lab mib'>4 <lab lab'>8[ <lab lab'>]
%--- 63
<lab fa'>4 <lab lab'>8[ <lab lab'>]
<lab mib'>4 <lab lab'>8[ <lab lab'>]
<reb lab'>2
R2^\fermataMarkup
R2
%--- 68
<mib, mib'>4 mib'8[ mib]
<lab, mib'>4 mib'8[ mib]
<mib, mib'>4 mib'8[ mib]
<lab, mib'>4 <mib' lab>8[ <mib lab>]
<mib sol>4 <mib lab>8[ <mib sib'>]
%--- 73
<mib lab do>4 <mib lab>8[ <mib lab>]
<mib sol>4 <mib lab>8[ <mib sib'>]
<lab, mib' lab>4 r8 do'8(
%--- 76
reb4 sib8[ mib])
do4( lab8[ do])
reb4( sib8[ mib])
%--- 79-83
do4( lab8\noBeam) \clef treble do8-.(
reb8-.[ mib-. fa-. sol-.])
lab8.([ sib16 lab8]) \clef bass \voiceOne do,8
reb8.([ mib16 reb8 sib])
do2 
}

pianoBasIPart  = \context Staff \new Voice { \voiceOne
 \pianoBasI
}

pianoBasIMidi  = \context Staff \new Voice { \voiceOne
 \pianoBasI
}


pianoBasII = \context Staff \relative do \new Voice { \voiceTwo
%--- 0
\partial 8 s8
%--- 1
s2*5
%--- 6
s4. mib8
mib4. mib8
lab2
%--- 9-44
s2*36
%--- 45
s4. mib8
mib4. mib8
lab2
%--- 48-80
s2*33
%--- 81
s4. mib8
mib4. mib8
lab2
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEY \TIME
 \set autoBeaming = ##f
 << \pianoBasIPart \pianoBasII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \KEY \TIME
 \IPIANOBAS
 << \pianoBasIMidi \pianoBasII >>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
\TSCREXOB #'(1 . 0)
%--- 0
\partial 8 s8\pp
%--- 1
s2*3
%--- 4
s4. s8\cr
s4. s8\!
s4\decr s8\! s8
%--- 7
s2-\SFORZATO
s2*3
s2-\SFORZATO
s2*3
%--- 15
s2-\SFORZATO
s2
s2-\SFORZATO
s2-\SFORZATO
s2-\SFORZATO
s2
s2\pp
s2
%--- 23
s2-\SFORZATO
s8-\SFORZATO \TSCREXO #'(-1 . 0.5) s4.-\DECRESCM
s2-\SFORZATO
s2-\SFORZATO
s2*2
s2-\DIMINM
s2
%--- 31
s4 s4\mf
s2-\SFORZATO
s2-\SFORZATO
s2-\SFORZATO
s2
s2-\SFORZATO
%--- 37
s2-\SFORZATO
s2-\SFORZATO
s4. s8\pp
%--- 40
s2*3
%--- 43
s4. s8\cr
s4. s8\!
s4\decr s8\! s8
%--- 46
s2-\SFORZATO
s2*3
s2-\SFORZATO
%--- 51
s2*3
%--- 54
s2-\SFORZATO
s2
s2-\SFORZATO
%--- 57
s2*6
%--- 63
s4 s4-\CRESCM
s2*4
%--- 68
s2-\SFORZATO
s2-\SFORZATO
s2-\SFORZATO
s2
s2-\SFORZATO
%--- 73
s2-\SFORZATO
s2-\SFORZATO
s4. s8\pp
s2*3
%--- 79-83
s4. s8\cr
s4. s8\!
s4\decr s8\! s8
s2-\SFORZATO
s2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = {
%--- 1
\TEMPOBASE
\partial 8 s8\pp
%--- 1
s2*3
%--- 4
s4. s8\cr
s2
s4\!\mf\decr s8\!\pp s8
%--- 7
s2
s2*3
s2
s2*3
%--- 15
s2
s2
s2
s2
s2
s2
s2\pp
s2
%--- 23
s2
s2\decr
s2
s2\!\ppp
s2*2
\TEMPORALENTI s2
s2
%--- 31
s4 \TEMPOBASE s4\mf
s2
s2
s2
s2
s2
%--- 37
s2
s2
s4. s8\pp
s2*3
%--- 43
s4. s8\cr
s2
s4\!\mf\decr s8\!\pp s8
%--- 46-62
s2*17
%--- 63
s4 s4\cr
s2
s4 s4\!\mf
%--- 66-74
s2*9
%--- 75
s4. s8\pp
s2*3
%--- 79-83
s4. s8\cr
s2
s4\!\mf\decr s8\!\pp s8
s2*2
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
   \override SpacingSpanner #'spacing-increment = #2.5
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
SILENCE = { \TIME s2 }

\score {
 <<
  \new Staff = "chant"      { \SILENCE << \noteMidiChant      \dynMidiPiano >> }
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
%                                         FIN DU FICHIER SchubertF-D777-LachenUndWeinen.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
