%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D296-AnDenMond.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "An den Mond", für eine Singstimme mit Klavierbegleitung
%                                       AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.60"
\include "italiano.ly"
#(set-global-staff-size 19)

\paper {

line-width = 186\mm
#(define left-margin (/ (- paper-width  (* 186 mm)) 2))
#(define top-margin (/ (- paper-height (* 259 mm)) 2))
#(define bottom-margin (/ (- paper-height (* 253 mm)) 2))
after-title-space = 60\mm

 indent = 28\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: An den Mond (D.296)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: An den Mond (D.296)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "An den Mond" }
 subsubtitle = " "
 poet = \markup { \hspace #19  \column { \center-column {
  \line { \fontsize #2 \bold "Johann Wolfgang von Goethe" }
  \line { \small "(1787-1862)" }
  } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.296 (1815)" }
% MUTOPIA
 mutopiatitle = "An den Mond"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Johann Wolfgang von Goethe"
 mutopiaopus = "D.296"
 mutopiainstrument = "Voice and Piano"
 date = "1815"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/10/30-1581"
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
TEMPOBASE = \tempo 4=46
TEMPOFINA = \tempo 4=42
TEMPOFINB = \tempo 4=34
%----- TONALITÉS ET MESURES
KEY   = { \key lab \major }
TIME  = { \time 3/4 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-4.0 "Langsam. " } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "pan flute"
 \set Staff.midiMinimumVolume = #0.4
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.85
}
IPIANOBAS = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.75
}
%----- CHANGER DE PORTÉE
STAFFDO = { \change Staff = pianoDown \voiceOne}
STAFFUP = { \change Staff = pianoUp \voiceTwo }
%----- DYNAMIQUE SPECIALE
SFORZATO = \markup { \musicglyph #"scripts.sforzato" }
CRESC    = \markup { \bold \italic "cresc." }
%----- REPOSITIONNEMENT DES MARKUP / SCRIPT
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
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

%--- partie 1
Fül -- lest wie -- der Busch und Thal __
still mit Ne -- bel -- glanz,
lö -- sest end -- lich auch ein -- mal
mei -- ne See -- le ganz; __

brei -- test ü -- ber __ mein Ge -- fild __
lin -- dernd dei -- nen __ Blick,
wie des Freun -- des Au -- ge __ mild __
ü -- ber mein __ Ges -- chick.

%--- partie 3

Ich be -- sass es doch ein -- mal, __
was so köst -- lich ist!
Dass man doch zu sei -- ner Qual
Nim -- mer es ver -- gisst! __

Rau -- sche, Fluss, das __ Thal ent -- lang, __
oh -- ne Rast und oh -- ne Ruh,
rau -- sche, flüs -- tre mei -- nem Sang __
Me -- lo -- di -- en zu,

wenn du in der Win -- ter -- nacht
wü -- thend ü -- ber -- schwillst,
o -- der um die Früh -- lings -- pracht
jun -- ger Knos -- pen __ quillst.

Se -- lig, wer sich vor der Welt __
oh -- ne Hass ver -- schliesst,
ei -- nen Freund am Bu -- sen __ hält
und mit dem ge -- niesst, __

was, von Men -- schen nicht ge -- wusst
o -- der nicht be -- dacht,
durch das La -- by -- rinth der Brust
wan -- delt __ in der Nacht,
wan -- delt __ in der Nacht.
}

poemeB = \lyricmode {
\set fontSize = #-.5

%--- partie 2
Je -- den Nach -- klang fühlt mein Herz __
froh und trü -- ber Zeit,
wand -- le zwi -- schen Freud’ und Schmerz
in der Ein -- sam -- keit.

Flie -- sse, flie -- sse, __ lie -- ber Fluss! __
Nim -- mer werd’ ich __ froh,
so ver -- rausch -- te Scherz und __ Kuss,
und die Treu -- e so.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chantA = \relative do'' {
%--- 0
\partial 4 r4
%--- 1-5
R2.*4
r4 r
}

chantB = \relative do'' {
%--- 5
\bar "|:"
mib8. fa16
fa4. mib8 reb sib
lab4( sol) lab8 sib
do8. reb16 sib4 mib8. fa16
fa4. mib8 reb sib
%--- 10
lab4 sol8 lab do8. sib16
sib4( lab) r
R2.
r4 r reb8. do16
sib4. do16[ reb] mib8. reb16
reb4( do) fa8. do16
%--- 10
reb8 fa16[ mib] do4 do8. do16
mib4. reb8 sib reb16[ do]
sib4( lab) la8. la16
la4.( sib8[ reb8.]) sol,16
lab2 r4
R2.
r4 r \bar ":|"
}

chantC = \relative do'' {
%--- 22
mib8. fa16 \set Score.currentBarNumber = #23
fa4. mib8 reb sib
lab4( sol) lab8 sib
do8. reb16 sib4 mib8. fa16
fa4. mib8 reb sib
%--- 27
lab4 sol8 lab do8. sib16
sib4( lab) r
R2.
r4 r reb8. dob16
sib4. dob16[ reb] mib8. reb16
%--- 32
reb4( dob) fab8. mib16
reb4. reb8 solb8. fab16
mib2 mib8. mib16
fab4. fab8 fa8. fa16
%--- 36
solb4( mib) dob8. reb16
mib2~ mib8 reb
do!4 do8. do16 do8 do
mib8. reb16 reb4 mib8. lab,16
%--- 40
solb'8. fab16 fab4 fab8. reb16
sib4. sib8 do!16[ mib] reb[ do]
sib4 sib8 reb do16[ mib] reb[ do]
sib4 r r
%--- 44
r4 r mib8. fa!16
fa4. mib8 reb sib
lab4( sol) lab8 sib
do8. reb16 sib4 mib8. fa16
fa4. mib8 mib16[ reb] reb[ sib]
%--- 49
lab4 sol8 lab do8. sib16
sib4( lab) mib8. mib16
mib4. mib8 mib8 fa16[ sol]
lab2 la8. la16
sib8 sol lab4 solb8. solb16
%--- 54-60
fa4. fa8 sol! mi
fa2 mib!4~
mib4. reb16[ do] sib8 mib
lab,4 r mib''~
mib4. reb16[ do] sib8 mib
lab,2 r4
R2.^\fermataMarkup
\bar "|."
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme."
 \chantA \chantB \chantC
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \KEY \TIME
 \ICHANT
 \chantA \chantB \chantB \chantC
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. CHANT : DYNAMIQUES PARTITION/MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION
dynPartChant = { }

%%%%%%%%%%%%%%%%%%%% MIDI
dynMidiChant = { s4\pp }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoHautIA = \relative do'' { \voiceOne
%--- 0
\partial 4 do8.([ lab16]
%--- 1-5
do4 sib8) sib8\rest reb8.([ sib16]
reb4 do8) sib8\rest fa'8.([ reb16]
fa4. fab8[ mib reb])
do16([ mib reb sib] lab4 sol)
<< { \voiceOne sib4( lab) } \\ { \voiceThree mib2 } >>
}

pianoHautIB = \relative do'' { \voiceOne
%--- 5
mib8.([ fa16]
fa4. mib8[ reb sib])
\oneVoice lab4( sol) lab8([ sib])
do8.([ reb16] sib4) \voiceOne mib8.([ fa16])
fa4.( mib8[ reb sib])
%--- 10
lab4 sol8([ lab <mib do'>8. <reb mib sib'>16])
<< { \voiceOne sib'4( lab) } \\ { \voiceThree mib2 } >> \voiceOne do'8.([ lab16])
do4( sib8) sib8\rest fa'8.([ re16]
fa4 mib8) sib8\rest reb!8.[ do16]
sib4.( do16[ reb] mib8[ reb])
reb4( do) fa8.([ do16]
%--- 16-22
reb8 fa16[ mib]) do4 do(
mib4.) ( reb8 sib[ reb16 do])
sib4( lab) \oneVoice <solb la>8.[ <solb la>16]
<solb la>4.^( <fa sib>8 <reb sol>4)
<do lab'>2 <la' la'>8.[ <la la'>16]
<la la'>4.( <sib sib'>8[ <reb reb'>8. <sol, sol'>16])
<lab lab'>2
\bar ":|"
}

pianoHautIC = \relative do'' { \voiceOne
%--- 22
mib8.([ fa16]
fa4. mib8[ reb sib])
\oneVoice lab4( sol) lab8([ sib])
do8.([ reb16] sib4) \voiceOne mib8.([ fa16])
fa4.( mib8[ reb sib])
%--- 27
lab4 sol8([ lab <mib do'>8. <reb mib sib'>16])
<< { \voiceOne sib'4( lab) } \\ { \voiceThree mib2 } >> \voiceOne do'8.([ lab16]
do4 sib8) sib8\rest fa'8.([ re16]
fa4 mib8) sib8\rest reb8.[ dob16]
sib4. dob16[ reb] mib8.[ reb16]
%--- 32
reb4( dob) fab8.[ mib16]
reb!4. reb8[ solb8. fab16]
\oneVoice <solb, mib'>8[ mib'16 dob] solb[ dob mib dob] solb[ dob mib dob]
solb[ reb' fab reb] solb,[ reb' fab reb] solb,[ re' fa re] 
%--- 36
solb,[ mib' solb mib] solb,[ dob mib dob] mib,[ lab dob lab]
solb[ dob mib dob] solb[ dob mib dob] fab,[ solb sib solb]
solb[ la do! la] solb[ la do la] solb[ la do la] 
fab[ lab! reb lab] fab[ lab reb lab] solb[ lab mib' lab,]
%--- 40
fab[ lab fab' lab,] fab[ lab fab' lab,] fab[ sib reb sib]
mib,[ sol sib sol] mib[ sol sib sol] mib[ do' sib lab]
\voiceOne sib4.( reb8) do16[ mib reb do]
sib4~ sib16([ reb do sib] fa'8.[ fab16]
%--- 44
mib2) \oneVoice <mib mib'>8.([ <fa! fa'!>16])
<fa fa'>4.( <mib mib'>8 <reb reb'> <sib sib'>])
\set doubleSlurs = ##t <lab lab'>4( <sol sol'>) \set doubleSlurs = ##f <lab lab'>8([ <sib sib'>]
<do do'>8.[ <reb reb'>16] <sib sib'>4) <mib mib'>8.([ <fa fa'>16])
<fa fa'>4.( <mib mib'>8) <mib mib'>16([ <reb reb'>]) <reb reb'>([ <sib sib'>])
%--- 49
<lab lab'>4( <sol sol'>8[ <lab lab'> <do do'>8. <sib sib'>16])
\set doubleSlurs = ##t <sib sib'>4( <lab lab'>) \set doubleSlurs = ##f \voiceOne reb8.([ do16])
sib4.( do16[ reb] mib8[ reb])
reb4( do) fa8.([do16]
reb8[ fa16 mib] do4) do(
%--- 54-60
mib4. reb8 sib[ reb16 do])
sib4( lab) \oneVoice <solb la>8.[ <solb la>16]
\set doubleSlurs = ##t <solb la>4.( <fa sib>8) \set doubleSlurs = ##f \voiceOne reb'8.([ sol,16])
\oneVoice <do, lab'>2 <la' la'>8.[ <la la'>16]
<la la'>4.( <sib sib'>8[ <reb reb'>8. <sol, sol'>16])
<lab lab'>2 <do, mib do'>4
<do mib lab>2.^\fermata
}

pianoHautIPart = \context Staff \new Voice { \voiceOne
 \pianoHautIA \pianoHautIB \pianoHautIC }
 
pianoHautIMidi = \context Staff \new Voice { \voiceOne
 \pianoHautIA \pianoHautIB \pianoHautIB \pianoHautIC }

 
%%%%%%%%%%%%%%%%%%%% VOIX II
pianoHautIIA = \relative do' { \voiceTwo
%--- 0
\partial 4 fa4(
%--- 1-5
mib4~ mib8) s8 sol4
sol4( lab8) s8 lab4
sib2.
lab8[ fa] mib4 <reb mib>
reb4( do)
}

pianoHautIIB = \relative do' { \voiceTwo
%--- 5
mib8.[ fa16]
fa4. mib8[ \STAFFDO<lab, reb> <fa sib>] \STAFFUP
s2.
s2 mib'8.[ fa16]
fa4. mib8[ \STAFFDO <lab, reb> <fa sib>] \STAFFUP
%--- 10
s2.
reb'4 do fa(
mib4~) mib8 s lab4
lab4( sol8) s mib4
mib2 mib4
mib2 fa4
%--- 16
fa8[ <mib sib'>] mib4 solb(
fa2) sol4
sol4( lab) s4
s2.*3
s2
}

pianoHautIIC = \relative do' { \voiceTwo
%--- 22
mib8.[ fa16]
fa4. mib8[ \STAFFDO<lab, reb> <fa sib>] \STAFFUP
s2.
s2 mib'8.[ fa16]
fa4. mib8[ \STAFFDO <lab, reb> <fa sib>] \STAFFUP
%--- 27
s2.
reb'4( do) fa
mib4~ mib8 s lab4
lab4( sol8) s mib4
mib2 mib4
%--- 32
mib2 solb4
solb2 solb4
s2.*8
%--- 42
mib2 mib4
mib2 fa8.[ fab16]
mib2 s4
s2.*5
%--- 50
s2 mib4
mib2 mib4
mib2 <fa do'>4
fa8[ <mib sib'>] mib4 solb
%--- 54-60
fa2 sol!4
sol4 lab s4
s2 <reb, sol!>4
s2.*4
}

pianoHautIIPart =  \context Staff \new Voice { \voiceTwo
 \pianoHautIIA \pianoHautIIB \pianoHautIIC }

pianoHautIIMidi =  \context Staff \new Voice { \voiceTwo
 \pianoHautIIA \pianoHautIIB \pianoHautIIB \pianoHautIIC }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 << \pianoHautIPart \pianoHautIIPart >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEY \TIME
 \IPIANOHAUT
 << \pianoHautIMidi \pianoHautIIMidi >>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoBasIA = \relative do' { \voiceOne
%--- 0
\partial 4 lab8.\([ do16]
%--- 1-5
lab4( sol8)\) s sib8.\([ reb16]
sib4( lab8)\) s reb8.([ fa16]
reb2 mib8.[ fab16])
\oneVoice <lab, mib'>8[ <reb, reb'>] <mib do'>4 <mib sib'>
\voiceOne sol4( lab)
}

pianoBasIB = \relative do' { \oneVoice
%--- 5
s4
s2.
<< { \voiceOne lab4( sol) } \\ { \voiceThree mib2 } >> \voiceOne <mib lab>8([ <lab sib>])
<lab do>8.([ <sib reb>16] <sol sib>4) s4
s2.
%--- 10
lab4 sol8([ lab <lab do>8. sol16])
sol4( lab) lab8.([ do16])
lab4( sol8) s8 dob8.[ sib16] 
s2 <sib reb!>8.[ <lab do>16]
<sol sib>4. <lab do>16[ <sib reb>] <do mib>8[ <sib reb>]
<sib reb>4( <lab do>) mib'(
%--- 16
reb8)[ reb] do4 la(
sib2) reb8([ sib16 do])
reb4( do) <solb la>8.[ <solb la>16] 
<solb la>4.( <fa sib>8) sib4
<mib, lab>2 <solb la>8.[ <solb la>16] 
<solb la>4.( <fa sib>8 <sol sib reb>4) 
do2
}

pianoBasIC = \relative do' { \oneVoice
%--- 22
s4
s2.
<< { \voiceOne lab4( sol) } \\ { \voiceThree mib2 } >> \voiceOne <mib lab>8([ <lab sib>])
<lab do>8.([ <sib reb>16] <sol sib>4) s4
s2.
%--- 27
lab4 sol8([ lab <lab do>8. sol16])
sol4( lab) lab8.[ do16]
lab4( sol8) s8 dob8.[ sib16] 
sib4~ sib8 s <sib reb>8.[ <lab dob>16]
<sol sib>4. <lab dob>16[ <sib reb>] <dob mib>8[ <sib reb>]
%--- 32
<sib reb>4( dob) \clef treble <reb fab>8.[ <dob mib>16]
<sib reb>4. <sib reb>8[ <mib solb>8. <reb fab>16]
\oneVoice <dob mib>2 <dob mib>4
<dob reb fab>2 <dob re fa>4
%--- 36
<dob mib solb>2 \clef bass <lab dob>8.([ <fa dob' reb>16])
<solb dob mib>2 <solb sib>4
<mib solb la do!>2.
<fab lab! reb>2 <do solb' lab>4
%--- 40
\voiceOne lab'2 sib4
\oneVoice <mib, sol sib>2 <mib lab do>4
<mib sol sib>2 <mib lab do>4
<mib sol sib>2 <sol sib reb>4~
%--- 44
<sol sib reb>2 \voiceOne mib'8.([ fa!16])
fa4.( mib8[ reb sib])
<< { \voiceOne lab4( sol) } \\ { \voiceThree mib2 } >> \voiceOne lab8([ sib]
<lab do>8.[ <sib reb>16] <sol sib>4) mib'8.([ fa16])
fa4.( mib8[ reb sib])
%--- 49
<mib, lab>4( <mib sol>8[ <mib lab> do'8. reb16])
<sol, reb'>4( do) <sib reb>8.([ <lab do>16])
<sol sib>4.( <lab do>16[ <sib reb>] <do mib>8[ <sib reb>])
<sib reb>4( do) mib
s2 la,4
%--- 54-60
sib2 reb8[ sib16 do]
reb4( do) <solb la>8.[ <solb la>16]
<solb la>4.( <fa sib>8) s4
<mib lab>2 <solb la>8.[ <solb la>16]
<solb la>4.( <fa sib>8) s4
s2.*2
}

pianoBasIPart = \context Staff \new Voice { \voiceOne
 \pianoBasIA \pianoBasIB \pianoBasIC }

pianoBasIMidi = \context Staff \new Voice { \voiceOne
 \pianoBasIA \pianoBasIB \pianoBasIB \pianoBasIC }

 
%%%%%%%%%%%%%%%%%%%% VOIX II
pianoBasIIA = \relative do { \voiceTwo
%--- 0
\partial 4 re4(
%--- 1-5
mib4~ mib8) reb8\rest mi4(
fa4~) fa8 reb8\rest fa4(
sol2.)
s2.
<lab, mib'>2
}

pianoBasIIB = \relative do' { \voiceTwo
%--- 5
<lab do>4
<sol sib>2 fa8[ reb]
do4( sib) do8[ reb]
mib2 <lab do>4
<sol sib>2 fa8[ reb]
%--- 10
<do mib>4 <sib mib>8[ <do mib> mib8. mib16]
<lab, mib'>2 re4(
mib4~) mib8 re8\rest re8.[ fa16]
\oneVoice <mib sib'>4~ <mib sib'>8 r \voiceTwo mib4
mib2 mib8[ fa16 sol]
lab2 <mib la>4(
%--- 16
<mib sib'>8)[ <mib sol>] <mib lab>4 mib~
mib2 mi4
fa2 do8.[ do16]
reb2 mib4
lab,2 do8.[ do16]
reb2 mib4
lab2
}

pianoBasIIC = \relative do' { \voiceTwo
%--- 22
<lab do>4
<sol sib>2 fa8[ reb]
do4( sib) do8[ reb]
mib2 <lab do>4
<sol sib>2 fa8[ reb]
%--- 27
<do mib>4 <sib mib>8[ <do mib> mib8. mib16]
<lab, mib'>2 re4(
mib4~) mib8 re8\rest re8.[ fa16]
mib4~ mib8 re8\rest mib4
mib2 mib8[ fa16 sol]
%--- 32
lab2 \clef treble solb4
solb2 solb8[ lab16 sib]
s2.*6
%--- 40
<reb, fab>2.
s2.*3
%--- 44
s2 <lab' do>4
<sol sib>2 <fa lab>8[ <reb fa>]
do4( sib) <do mib>8[ <reb lab'>]
mib2 <lab do>4
<sol sib>2 <fa lab>8[ <reb fa>]
%--- 49
do4 sib8[ do <mib lab>8. <mib sol>16]
mib4( lab) mib
mib2 mib8[ fa16 sol]
lab2 <mib la>4
<mib sib' reb>8[ <mib sol reb'>] <mib lab do>4 mib
%--- 54-60
mib2 mi4
fa2 do8.[ do16]
reb2 <mib sib'>4
lab,2 do8.[ do16]
reb2 <mib sol! sib reb>4
<lab do>2 <lab, mib' lab>4
<lab mib' lab>2.^\fermata
}

pianoBasIIPart = \context Staff \new Voice { \voiceTwo
 \pianoBasIIA \pianoBasIIB \pianoBasIIC }

pianoBasIIMidi = \context Staff \new Voice { \voiceTwo
 \pianoBasIIA \pianoBasIIB \pianoBasIIB \pianoBasIIC }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEY \TIME
 \set autoBeaming = ##f
 << \pianoBasIPart \pianoBasIIPart >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \KEY \TIME
 \IPIANOBAS
 << \pianoBasIMidi \pianoBasIIMidi >>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
%--- 0
s4\pp
%--- 1
s2.*5
%--- 6
\TSCREXO #'(1 . 1) s4-\SFORZATO s2
s2.*3
%--- 10
s2 \TSCREXO #'(1 . 1) s4-\SFORZATO
s2.*6
%--- 17
\PINEXO #'(3 . 0) s4.\decr s8\! s4
s2.
s2\decr s4\!
s2.
s4.\decr s16\! s16 s4
%--- 22
s2.*13
%--- 35
\PINEXO #'(1.5 . 0) s2\cr s8 s16\! s16
s2.*2
s2\cr s8. s16\!
\TSCREXO #'(0 . 1.5) s2.-\CRESC
s2\decr s4\!\p
s2.*2
%--- 43
s2 s8.\decr s16\!
s2.*13
%--- 57-60
s2 s4\ppp
s2.*3
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPianoA = {
\TEMPOBASE
%--- 0
s4\pp
%--- 1-5
s2.*4
s2
}
dynMidiPianoB = {
%--- 5
s4
s2.*11
%--- 17
s4.\mp\decr s8\!\pp s4
s2.
s2\mp\decr s4\!\pp
s2.
s4.\mf\decr s8\!\pp s4
%--- 22
s2
}
dynMidiPianoC = {
%--- 22
s4
s2.*12
%--- 35
s2\cr s8. s16\!\mp
s2.*2
s2.\cr
s2.
s2\!\mf\decr s4\!\p
%--- 41
s2.*3
s2 s4\pp
%--- 45
s2.*12
%--- 57-60
s2 s4\ppp
s2 \TEMPOFINA s4
s2 \TEMPOFINB s4
s2.
}

dynMidiPiano = { \dynMidiPianoA \dynMidiPianoB \dynMidiPianoB \dynMidiPianoC }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\score {
 <<
  \new Voice = "chant"  << \notePartChant \dynPartChant >>
  \new Lyrics  \lyricsto "chant" \poemeA
  \new Lyrics  \lyricsto "chant" \poemeB

  \new PianoStaff <<
   \set PianoStaff.instrumentName = "PianoForte."
   \new Staff = "pianoUp"    << \notePartPianoHaut >>
   \new Dynamics = "dynamics" \dynPartPiano
   \new Staff = "pianoDown"  << \notePartPianoBas >>
  >>
 >>

 \layout {
  \context {
   \Score
   \override SpacingSpanner #'spacing-increment = #1.2
   \override TextScript #'font-size = #1
  }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice % So that \CRESC works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 1)
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

%{ --------------------
-------------------- %}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           E. SORTIE MIDI SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME \partial 2 s2 }

\score {
 <<
  \new Staff = "chant"      { \SILENCE << \noteMidiChant      \dynMidiPiano >> }
  \new Staff = "pianoUp"    { \SILENCE << \noteMidiPianoHaut  \dynMidiPiano >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBas   \dynMidiPiano >> }
 >>
 \midi { }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         FIN DU FICHIER SchubertF-D296-AnDenMond.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
