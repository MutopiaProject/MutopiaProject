%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D259-AnDenMond.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "An den Mond", für eine Singstimme mit Klavierbegleitung
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

 indent = 28\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: An den Mond (D.259)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: An den Mond (D.259)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "An den Mond" }
 subsubtitle = " "
 poet = \markup { \hspace #19  \column { \center-column {
  \line { \fontsize #2 \bold "Johann Wolfgang von Goethe" }
  \line { \small "(1787-1862)" }
  } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.259 (19. August 1815)" }
% MUTOPIA
 mutopiatitle = "An den Mond"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Johann Wolfgang von Goethe"
 mutopiaopus = "D.259"
 mutopiainstrument = "Voice and Piano"
 date = "1815"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/10/30-1580"
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
TEMPOBASE = \tempo 4=60
TEMPOFIN  = \tempo 4=36
%----- TONALITÉS ET MESURES
KEY   = { \key mib \major }
TIME  = { \time 2/2 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-4.0 "Ziemlich langsam. " } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "church organ"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
}
IPIANOBAS = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.7
}
%----- CHANGER DE PORTÉE
STAFFDO = { \change Staff = pianoDown \voiceOne}
STAFFUP = { \change Staff = pianoUp \voiceTwo }
%----- DYNAMIQUE SPECIALE
SFORZATO = \markup { \musicglyph #"scripts.sforzato" }
CRESC    = \markup { \small \bold \italic "cresc." }
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

Fül -- lest wie -- der Busch __ und __ Thal
still mit Ne -- bel -- glanz, __
lö -- sest end -- lich auch __ ein -- mal
mei -- ne See -- le __ ganz; __

brei -- test ü -- ber mein __ Ge -- fild
lin -- dernd dei -- nen Blick, __
wie __ des __ Freun -- des Au -- ge __ mild __
ü -- ber __ mein __ Ges -- chick. __
}

poemeB = \lyricmode {
\set fontSize = #-.5

Je -- den Nach -- klang fühlt __ mein __ Herz
froh- und trü -- ber __ Zeit, __
wand -- le zwi -- schen Freud’ __ und __ Schmerz
in der Ein -- sam -- keit. __

Flie -- sse, flie -- sse, lie -- ber Fluss! __
Nim -- mer werd’ ich froh, __
so __ ver -- rausch -- te Scherz __ und __ Kuss,
und __ die __ Treu -- e __ so. __
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chantA = \relative do'' {
%--- 1
sol4 sol sib sib   lab8[ sol] fa[ sol] mib2   fa4 fa fa8[ do'] sib[ lab]   lab2( sol4) r
%--- 5
sol4 sol sib sib   lab8[ sol] fa[ sol] mib'2  re4 fa sol,8[ do] sib[ la]   do2( sib4) r   do do fa fa
}

%%%%%%%%%%%%%%%%%%%% ORNEMENT PARTITION
chantAP = \relative do'' {
%--- 10
mib4( \grace { fa16[ mib] } re8) do sib2
}

%%%%%%%%%%%%%%%%%%%% ORNEMENT MIDI
chantAM = \relative do'' {
%--- 10
mib8~ ([ \times 2/3 { mib16 fa mib] } re8) do sib2
}

%%%%%%%%%%%%%%%%%%%% SUITE
chantB = \relative do'' {
%--- 11
do4 do fa fa   mib8([ fa sol mib] sib2)
lab8[ sib] do[ lab] fa4. fa8   sol[ lab] sib[ sol] mi2
%--- 15
fa8[ mib'!] re[ do] sib[ sol] lab[ fa]   fa2( mib4) r   R1*3   r2 r4 r4^\fermataMarkup
\bar ":|"
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme."
 \chantA \chantAP \chantB
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \KEY \TIME
 \ICHANT
 \repeat unfold 2 { \chantA \chantAM \chantB }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. CHANT : DYNAMIQUES PARTITION/MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% MIDI
dynMidiChant = { s1\pp }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoHautI = \context Staff \relative do' \new Voice { \voiceOne
%--- 1
\oneVoice r4 <sib mib sol> r <sib fa'>
r <do mib> r <sib mib>
r <do mib fa> r <re fa lab>
\set doubleSlurs = ##t <sib~ fa' lab>2( <sib mib sol>8) \set doubleSlurs = ##f sib([ do re])
%--- 5
mib4 <sib mib sol> r <sib fa'>
r <do mib> r \set doubleSlurs = ##t <mib la>(
<re sib'>) \voiceOne sib'2 la4
\oneVoice <mib fa~ do'>2( <re fa sib>4) \set doubleSlurs = ##f r \voiceOne  do' do do do
%--- 10
sib sib sib sib   do do do do   sib sib sib sib   lab lab lab lab   sol sol mi2
%--- 15
fa2 mib!4 re
\oneVoice \set doubleSlurs = ##t <lab sib~ fa'>2( <sol sib mib>8) \set doubleSlurs = ##f  mib'([ fa sol])
\voiceOne lab8([ sib do lab]) fa4. fa8
sol8([ lab sib sol]) \oneVoice <sib, reb mib>4. <sib reb mib>8
<do mib>8 <do' mib>([ <sib re!> <lab do>] <sol sib>[ <mib sol> <fa lab> <re fa>])
\set doubleSlurs = ##t <lab sib~ fa'>2( <sol sib mib>4) r4^\fermataMarkup
}

%%%%%%%%%%%%%%%%%%%% VOIX II
pianoHautII = \context Staff \relative do' \new Voice { \voiceTwo
%--- 1
s1*6
%--- 7
s4 fa sol mib
s1
do8[ mib do mib] re[ fa re fa]
%--- 10
sib,[ mib sib mib] sib[ mib sib mib] 
do[ mib do mib] re[ fa re fa]
sib,[ mib sib mib] sib[ mib sib mib] 
do[ mib do mib] re[ fa re fa]
sib,[ mib sib mib] sib[ reb sib reb] 
%--- 15
lab[ do lab do] sol[ sib lab sib]
s1
do4 do sib4. sib8
sib4 sib s2
s1*2
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 << \pianoHautI \pianoHautII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEY \TIME
 \IPIANOHAUT
 \repeat unfold 2 { << \pianoHautI \pianoHautII >> }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoBasI = \context Staff \relative do \new Voice { \voiceOne
%--- 1
\oneVoice mib2 re   do sol   lab sib \voiceOne r8 sib8([ do re] mib4) r
%--- 5
\oneVoice mib2 re   do <fa, fa'>   sib4 re mib fa \voiceOne r8 fa([ sol la] sib4) r \oneVoice <lab,! lab'!>2 lab'4 lab
%--- 10
sol2( sol,)   <lab lab'> lab'4 lab   sol2( sol,)   <fa fa'>( sib)   <mib, mib'>( sol)
%--- 15
lab sib4 sib
\voiceOne r8 sib8([ do re] mib4) re4\rest
fa4 fa \oneVoice <re lab'>4. <re lab'>8
<mib sol>4 <mib sol> <sol, mib'>4. <sol mib'>8
\voiceOne mib'4( mi8[ fa] sol4 lab)
r8 sib,8([ do re] mib4) re4\rest^\fermataMarkup
}

%%%%%%%%%%%%%%%%%%%% VOIX II
pianoBasII = \context Staff \relative do, \new Voice { \voiceTwo
%--- 1
s1*3   mib2~ mib4 r
%--- 5
s1*3   sib'2~ sib4 r   s1
%--- 10
s1*5
%--- 15
s1   mib,2~ mib4 s4   mib' mib s2   s1   lab,2 sib   mib,2~ mib4 s4
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEY \TIME
 \set autoBeaming = ##f
 << \pianoBasI \pianoBasII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \KEY \TIME
 \IPIANOBAS
 \repeat unfold 2 { << \pianoBasI \pianoBasII >> }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
%--- 1
s1\pp
s1*4
%--- 6
s2 s2\fp
s1*11
%--- 18
s2 s2\fp
s1*2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = \repeat unfold 2{
\TEMPOBASE
%--- 1
s1\pp
s1*4
%--- 6
s2 s4\mp s4\pp
s1*11
%--- 18
s2 s4\p\decr s4\!\pp
s1
s2 \TEMPOFIN s4 \TEMPOBASE s4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\markup { \lower #5
\fill-line {
\column { \line { \column { " " }}}
\column { \line { \column {
\bold "1."
"Füllest wieder Busch und Thal"
"Still mit Nebelglanz,"
"Lösest endlich auch einmal"
"Meine Seele ganz;"
" "
"Breitest über mein Gefild"
"Lindernd deinen Blick,"
"Wie des Freundes Auge mild"
"Über mein Geschick."
" "
\bold "2."
"Jeden Nachklang fühlt mein Herz"
"Froh- und trüber Zeit,"
"Wandle zwischen Freud’ und Schmerz"
"In der Einsamkeit."
" "
"Fließe, fließe, lieber Fluss!"
"Nimmer werd’ ich froh,"
"So verrauschte Scherz und Kuss,"
"Und die Treue so."
" "
"(Ich besaß es doch einmal,"
"Was so köstlich ist!"
"Dass man doch zu seiner Qual"
"Nimmer es vergisst!)"
}}}
\column { \line { \column { " " }}}
\column { \line { \column {
\bold "3."
"Rausche, Fluss, das Thal entlang,"
"Ohne Rast und Ruh,"
"Rausche, flüstre meinem Sang"
"Melodien zu,"
" "
"Wenn du in der Winternacht"
"Wüthend überschwillst,"
"Oder um die Frühlingspracht"
"Junger Knospen quillst."
" "
\bold "4."
"Selig, wer sich vor der Welt"
"Ohne Hass verschließt,"
"Einen Freund am Busen hält"
"Und mit dem genießt,"
" "
"Was, von Menschen nicht gewusst"
"Oder nicht bedacht,"
"Durch das Labyrinth der Brust"
"Wandelt in der Nacht."
}}}
\column { \line { \column { " " }}}
}}
\markup { " " }


\score {
 <<
  \new Voice = "chant"  << \notePartChant >>
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
   \override SpacingSpanner #'spacing-increment = #2.5
  }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice % So that \CRESC works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 1.5)
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
  \new Staff = "chant"      { \SILENCE << \noteMidiChant      \dynMidiChant >> }
  \new Staff = "pianoUp"    { \SILENCE << \noteMidiPianoHaut  \dynMidiPiano >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBas   \dynMidiPiano >> }
 >>
 \midi { }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         FIN DU FICHIER SchubertF-D259-AnDenMond.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
