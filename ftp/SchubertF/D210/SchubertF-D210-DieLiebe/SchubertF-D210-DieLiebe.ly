%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D210-DieLiebe.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Die Liebe", für eine Singstimme mit Klavierbegleitung
%                                       AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.60"
\include "italiano.ly"
#(set-global-staff-size 19)

\paper {
after-title-space = 20\mm

line-width = 186\mm
#(define left-margin (/ (- paper-width  (* 186 mm)) 2))
#(define top-margin (/ (- paper-height (* 259 mm)) 2))
#(define bottom-margin (/ (- paper-height (* 253 mm)) 2))

 indent = 28\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Die Liebe (D.210)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Die Liebe (D.210)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "Die Liebe" }
 subsubtitle = " "
 poet = \markup { \hspace #19  \column { \center-column {
  \line { \fontsize #2 \bold "Johann Wolfgang von Goethe" }
  \line { \small "(1787-1862)" }
  \line { \fontsize #1 \bold "„Egmont“" }
  } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.210 (8. Juni 1815)" }
% MUTOPIA
 mutopiatitle = "Die Liebe"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Johann Wolfgang von Goethe"
 mutopiaopus = "D.210"
 mutopiainstrument = "Voice and Piano"
 date = "1815"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/10/30-1579"
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
TEMPOBASE = \tempo 8=60
TEMPOFIN  = \tempo 8=30
%----- TONALITÉS ET MESURES
KEY   = { \key sib \major }
TIME  = { \time 2/4 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-4.0 "Sehr langsam. " } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "pan flute"
 \set Staff.midiMinimumVolume = #0.3
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.7
}
IPIANOBAS = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.7
}
%----- NOLET: SUPPRIMER OU ECRIRE LE NOMBRE OU LE CROCHET 
TUPNNO = \override TupletNumber #'stencil = ##f
TUPBNO = \override TupletBracket #'stencil = ##f
TUPNO  = { \TUPNNO \TUPBNO }
TUPNOK = {
 \revert TupletNumber #'stencil
 \override TupletNumber #'transparent = ##f }
TUPBOK = \override TupletBracket #'transparent = ##f
TUPOK  = { \TUPNOK \TUPBOK }
%----- DIRECTION DE LA HAMPE 3e LIGNE
STEMDIRUP = \override Stem #'neutral-direction = #'1
%----- CACHER UNE HAMPE
STEMNO = \once \override Stem #'transparent = ##t
%----- REPOSITIONNEMENT D'UNE BARRE DE LIAISON 
BEAMPOS =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Beam #'positions = #$beg-end #})
%----- REPOSITIONNEMENT D'UNE NOTE
NOTEHS =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override NoteColumn #'force-hshift = #$beg-end #})
%----- IGNORER UNE COLLISION
IGNCOLL = \once \override NoteColumn #'ignore-collision = ##t
%----- CRESCENDO
CRESC    = \markup { \bold \italic "cresc." }
%----- REPOSITIONNEMENT DES MARKUP
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
%----- REPOSITIONNEMENT DES DYNAMIQUES
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})

 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
\set fontSize = #-.5

Freud -- voll und leid -- voll,
ge -- dan -- ken -- voll sein;
lan -- gen und ban -- gen
in schwe -- ben -- der Pein;
him -- mel -- hoch jauch -- zend,
zum To -- de be -- trübt; __
glück -- lic al -- lein __ ist
die See -- le die liebt,
glück -- lic al -- lein __ ist
die See -- le die liebt,
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chantA = \relative do'' {
%--- 1
re4 sib8 r16 re   fa4 si,8 r16 si
%--- 3
do4~ do16[ mib] do la   sib!4 r   fa'4 re8 r16 fa
%--- 6
lab4 si,8 r16 si   do8( sol'4) dod,16 dod   re4. r8
%--- 9
mib4 fa8. fa16   sol8 mib r mib   mib4. re16 mib
%--- 12
fa4( re8) r
\tupletUp \TUPBNO sol8~[ \times 2/3 { sol16]\( fa mib\) } re8~[ \times 2/3 { re16]\( mib mi\) }
}

%%%%%%%%%%%%%%%%%%%% ORNEMENT PARTITION
chantAP = \relative do'' {
%--- 14
fa8~[ \times 2/3 { fa16]\( do mib!\) } \appoggiatura mib8 re4
}

%%%%%%%%%%%%%%%%%%%% ORNEMENT MIDI
chantAM = \relative do'' {
%--- 14
fa8~[ \times 2/3 { fa16]\( do mib!\) } \times 2/3 { mib16 re8~ } re8
}

%%%%%%%%%%%%%%%%%%%% suite
chantB = \relative do''' {
%--- 15
sib4 mi,8 mi   fa2~   fa8 do16. re32 mib8~ \times 2/3 { mib16 sol, la }
%--- 18-21
sib4 r   R2*2   R2^\fermataMarkup
\bar "|."
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
 \chantA \chantAM \chantB
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. CHANT : DYNAMIQUES PARTITION/MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartChant = { s2^\p }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX 
pianoHautA = \relative do' {
%--- 1
\STEMDIRUP \tupletDown \TUPBNO \times 2/3 { re16([ fa sib] } \times 2/3 { re,[ fa sib] }
 \times 2/3 { re,[ fa sib] }  \times 2/3 { re,[ fa sib]) } 
\TUPNNO \times 2/3 { \BEAMPOS #'(2.5 . 3.5) fa([ lab si] } \times 2/3 { fa[ lab si] }
 \times 2/3 { fa[ lab si] } \times 2/3 { fa[ lab si]) }
%--- 3
\times 2/3 { mib,([ sol do] }  \times 2/3 { mib,[ sol do] }
 \times 2/3 { \BEAMPOS #'(2.3 . 3.3) mib,[ solb la!] } \times 2/3 { mib[ solb la]) }
\times 2/3 { re,([ fa sib!] } \times 2/3 { re,[ fa sib] }  \times 2/3 { re,[ fa sib] }    \times 2/3 { re,[ fa sib]) } 
\times 2/3 { fa([ sib re] }   \times 2/3 { fa,[ sib re] }  \times 2/3 { fa,[ sib re] }    \times 2/3 { fa,[ sib re]) }
%--- 6
\times 2/3 { lab([ si re] } \times 2/3 { lab[ si re] } \times 2/3 { lab[ si re] } \times 2/3 { lab[ si re]) }
\times 2/3 { sol,([ si do] } \times 2/3 { sol[ si do] } \times 2/3 { sol[ sib dod] } \times 2/3 { sol[ la dod]) } 
\times 2/3 { fad,([ la re] } \times 2/3 { fad,[ la re] } \times 2/3 { sol,[ sib re] } \times 2/3 { fa,[ sib re]) } 
%--- 9
\TUPNOK \times 2/3 { <mib, sib' mib>[ <mib sib' mib> <mib sib' mib>] } <mib sib' mib>  r
 \tupletUp \times 2/3 { <lab sib re fa>[ <lab sib re fa> <lab sib re fa>] } <lab sib re fa> r
\TUPNNO \times 2/3 { <sol sib mib sol>[ <sol sib mib sol> <sol sib mib sol>] } <sol sib mib sol> r r4
\times 2/3 { r16 <fa la! mib' fa>-.([ <fa la mib' fa>-.] }  <fa la mib' fa>8-.)
 \times 2/3 { r16 <fa sib mib fa>-.([ <fa sib mib fa>-.] }  <fa sib mib fa>8-.)
%--- 12
\times 2/3 { r16 <fa dob' re fa>[ <fa dob' re fa>] } <fa dob' re fa>8
 \times 2/3 { r16 <fa sib re fa>[ <fa sib re fa>] } <fa sib re fa>8
\times 2/3 { <mib sib' mib>16[ <mib sib' mib> <mib sib' mib>] } <mib sib' mib>  r
 \times 2/3 { <fa sib re>[ <fa sib re> <fa sib re>] } <fa sib re>  r
\times 2/3 { <mib la do>[ <mib la do> <mib la do>] } <mib la do> r
 \times 2/3 { <re sol sib>[ <re sol sib> <re sol sib>] } <re sol sib> r
%--- 15
r8 \times 2/3 { <sib' reb mi>16[ <sib reb mi> <sib reb mi>] } r8 \times 2/3 { <sib reb mi>16[ <sib reb mi> <sib reb mi>] }
r8 \times 2/3 { <sib re! fa>16[ <sib re fa> <sib re fa>] }    r8 \times 2/3 { <si re fa>16[ <si re fa> <si re fa>] }
r8 \times 2/3 { <do mib fa>16[ <do mib fa> <do mib fa>] }     r8 \times 2/3 { <la do fa>16[ <la do fa> <la do fa>]}
%--- 18-19
\times 2/3 { re,([ fa sib] }  \times 2/3 { re[ fa sib] } \times 2/3 { si[ lab fa] } \times 2/3 { re[ si lab]) } 
\times 2/3 { sol([ do mib] } \times 2/3 { sol[ si do] } \times 2/3 { mib[ do la] } \times 2/3 { solb[ mib do]) }
}

pianoHautAPart = \relative do'' {
%--- 20-21
\times 2/3 { fa16([ mib do] } \times 2/3 { la[ fa mi]) } \set doubleSlurs = ##t <mib fa do'>4(
<re fa sib>2\arpeggio\fermata) \set doubleSlurs = ##f
}

pianoHautAMidi = \relative do'' {
%--- 20-21
\times 2/3 { fa16([ mib do] } \times 2/3 { la[ fa mi]) }  <mib fa do'>4
s2
}

pianoHautPart = { \pianoHautA \pianoHautAPart }
pianoHautMidi = { \pianoHautA \pianoHautAMidi }


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 \pianoHautPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEY \TIME
 \IPIANOHAUT
 \pianoHautMidi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I PARTITION
pianoBasIAPart = \relative do { \oneVoice
%--- 1
<sib re fa sib>2\arpeggio
<sib! re fa lab si>2\arpeggio
%--- 3
<sib mib sol do>4\arpeggio <sib do mib solb la!>4\arpeggio 
<sib re fa sib>8\arpeggio sib-.[ re-. fa-.]
<lab sib re>2\arpeggio
%--- 6
<fa lab si re>2\arpeggio
<mib sol do>4\arpeggio <mib sol>
<re la'>4 sib'8([ lab])
%--- 9
\tupletUp \TUPNOK \times 2/3 { <sol sib>16[ <sol sib> <sol sib>] } <sol sib>  r
 \times 2/3 { <fa sib re>[ <fa sib re> <fa sib re>] } <fa sib re> r
\TUPNNO \times 2/3 { <mib sib' mib>[ <mib sib' mib> <mib sib' mib>] } <mib sib' mib>  r
 \times 2/3 { <mib, mib'>[ <mib mib'> <mib mib'>] } <mib mib'> r
<dob dob'>4( <sib sib'>)
%--- 12
<lab lab'>4 lab'
\times 2/3 { <sol' sib>16[ <sol sib> <sol sib>] } <sol sib>  r
 \times 2/3 { <fa sib re>[ <fa sib re> <fa sib re>] } <fa sib re> r
\times 2/3 { <fa la do>[ <fa la do> <fa la do>] } <fa la do> r
 \times 2/3 { <sol sib>[ <sol sib> <sol sib>] } <sol sib>  r
%--- 15
\times 2/3 { <sol sib reb mi>16[ <sol sib reb mi> <sol sib reb mi>] } r8
 \times 2/3 { <sol sib reb mi>16[ <sol sib reb mi> <sol sib reb mi>] } r8
\times 2/3 { <fa sib re! fa>16[ <fa sib re fa> <fa sib re fa>] } r8
 \times 2/3 { <fa si re>16[ <fa si re> <fa si re>] } r8
\times 2/3 { <fa do' mib>16[ <fa do' mib> <fa do' mib>] } r8
 \times 2/3 { <fa do' mib>16[ <fa do' mib> <fa do' mib>] } r8
%--- 18-19
<< { \voiceOne \STEMNO <sib, re fa sib>4\arpeggio \STEMNO <sib re fa lab si>\arpeggio
     \STEMNO <sib mib sol do>\arpeggio( <do mib solb la!>\arpeggio) }
 \\ { \voiceThree \NOTEHS #'-1 \IGNCOLL <re fa sib>( \NOTEHS #'-1 \IGNCOLL <re fa lab si>)
     \NOTEHS #'-1 \IGNCOLL <mib sol do> s4 } >>
}

%%%%%%%%%%%%%%%%%%%% VOIX I ARPEGE FINAL PARTITION
pianoBasIBPart = \relative do { \voiceOne
%--- 20-21
<do mib fa la>4\arpeggio \oneVoice \set doubleSlurs = ##t <sib fa' la>(
<sib re fa sib>2\arpeggio\fermata) \set doubleSlurs = ##f
}

pianoBasIPart = \context Staff \new Voice { \voiceOne
 \pianoBasIAPart \pianoBasIBPart }

%%%%%%%%%%%%%%%%%%%% VOIX II PARTITION
pianoBasIIPart = \relative do { \voiceTwo
%--- 1
s2*17
%--- 18-21
\TUPNO \times 2/3 { \IGNCOLL sib16-.([ sib-. sib-. } sib8-.]) \times 2/3 { \IGNCOLL sib!16-.([ sib-. sib-. } sib8-.]) 
\times 2/3 { \IGNCOLL sib16-.([ sib-. sib-. } sib8-.]) \times 2/3 { sib16-.([ sib-. sib-. } sib8-.]) 
\times 4/6 { sib16-.([ sib-. sib-. sib-. sib-. sib-.]) } s4
s2
}


%%%%%%%%%%%%%%%%%%%% VOIX I MIDI ET ARPEGE FINAL 
pianoBasIMidi = \context Staff \relative do \new Voice { \oneVoice
%--- 1
<< { sib2 }   \\ { s64 re4.... }  \\ { s32 fa8..~ fa4 }   \\ { s32. sib64~ sib4.. } >>
<< { sib,2 }  \\ { s64 re4.... }  \\ { s32 fa8..~ fa4 }   \\ { s32. lab64~ lab4.. } \\ { s16 si4.. } >>
%--- 3
<< { sib,4 }  \\ { s64 mib8... }  \\ { s32 sol16.~ sol8 } \\ { s32. do64~ do8. } >>
 << { sib,4 }  \\ { s64 do8... }   \\ { s32 mib16.~ mib8 } \\ { s32. sol64~ sol8. }  \\ { s16 la8. } >>
<< { sib,8 }  \\ { s64 re16.. }   \\ { s32 fa16. }        \\ { s32. sib64~ sib16 } >>  sib,8-.[ re-. fa-.]
<< { lab2 }  \\ { s64 sib4.... } \\ { s32 re8..~ re4 } >>
%--- 6
<< { fa,2 }   \\ { s64 lab4.... } \\ { s32 si8..~ si4 }   \\ { s32. re64~ re4.. } >>
<< { mib,4 }  \\ { s64 sol8... }  \\ { s32 do16.~ do8 } >> <mib, sol>4
<re la'>4 sib'8([ lab])
%--- 9
\times 2/3 { <sol sib>16[ <sol sib> <sol sib>] } <sol sib>  r
 \times 2/3 { <fa sib re>[ <fa sib re> <fa sib re>] } <fa sib re> r
\times 2/3 { <mib sib' mib>[ <mib sib' mib> <mib sib' mib>] } <mib sib' mib>  r
 \times 2/3 { <mib, mib'>[ <mib mib'> <mib mib'>] } <mib mib'> r
<dob dob'>4( <sib sib'>)
%--- 12
<lab lab'>4 lab'
\times 2/3 { <sol' sib>16[ <sol sib> <sol sib>] } <sol sib>  r
 \times 2/3 { <fa sib re>[ <fa sib re> <fa sib re>] } <fa sib re> r
\times 2/3 { <fa la do>[ <fa la do> <fa la do>] } <fa la do> r
 \times 2/3 { <sol sib>[ <sol sib> <sol sib>] } <sol sib>  r
%--- 15
\times 2/3 { <sol sib reb mi>16[ <sol sib reb mi> <sol sib reb mi>] } r8
 \times 2/3 { <sol sib reb mi>16[ <sol sib reb mi> <sol sib reb mi>] } r8
\times 2/3 { <fa sib re! fa>16[ <fa sib re fa> <fa sib re fa>] } r8
 \times 2/3 { <fa si re>16[ <fa si re> <fa si re>] } r8
\times 2/3 { <fa do' mib>16[ <fa do' mib> <fa do' mib>] } r8
 \times 2/3 { <fa do' mib>16[ <fa do' mib> <fa do' mib>] } r8
%--- 18-19
<< { s64 re8... }  \\ { s32 fa16.~ fa8 } \\ { s32. sib64~ sib8. } >>
 << { s64 re,8... }  \\ { s32 fa16.~ fa8 } \\ { s32. lab64~ lab8. } \\ { s16 sib8. }  >>
<< { s64 mib,8... } \\ { s32 sol16.~ sol8 } \\ { s32. do64~ do8. } >>
 << { do,8... }  \\ { s64 mib8... }  \\ { s32 solb16.~ solb8 } \\ { s32. la64~ la8. } >>
%--- 20-21
<< { do,4 }  \\ { s64 mib8... }  \\ { s32 fa16.~ fa8 }   \\ { s32. la64~ la8. } >>   <sib, fa' la>4
<< { sib2 } \\ { s64 re4.... }  \\ { s32 fa8..~ fa4 }   \\ { s32. sib64~ sib4.. }
            \\ { s16 re4.. }    \\ { s16 s64 fa32.~ fa4. } \\ { s16. sib32~ sib4. } >>
}

%%%%%%%%%%%%%%%%%%%% VOIX II MIDI
pianoBasIIMidi = \context Staff \relative do \new Voice { \voiceTwo
%--- 1-17
s2*17
%--- 18-21
\times 2/3 { sib16\mf sib sib} sib8 \times 2/3 { sib16 sib sib} sib8
\times 2/3 { sib16 sib sib} sib8 \times 2/3 { sib16 sib sib} sib8
\times 4/6 { sib16-.([ sib-. sib-. sib-. sib-. sib-.]) } s4
s2
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEY \TIME
 \set autoBeaming = ##f
 << \pianoBasIPart \pianoBasIIPart >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBasI = {
 \KEY \TIME
 \IPIANOBAS
 \pianoBasIMidi
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBasII = {
 \KEY \TIME
 \IPIANOBAS
 \pianoBasIIMidi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
%--- 1
s2\fp
s2*3
%--- 5
s2\fp
s2\fp
s2
%--- 8
s2\pp
s4\f \TSCREXO #'(0 . 1.5) s4-\CRESC
\DYNEXO #'(1.5 . 0) s4\ff s4\p
s2\pp
%--- 12
s4\fz s4\p
s2\ff
\DYNEXO #'(1 . 0) s2\p
s2\ff
s2*2
%--- 18-21
s2\pp
s4 \times 2/3 { s8\fp\decr s16\! } s8
s4\pp s8\decr s8\!
s2\ppp
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPianoHaut = {
\TEMPOBASE 
%--- 1-7
s2*7\p
%--- 8
s2\pp
s4\f s4\cr
s4\!\ff s4\p
s2\pp
%--- 12
s4 s4\p
s2\ff
s2\p
s2\ff
s2*2
%--- 18-21
s2\pp
s4 \times 2/3 { s8\mf\decr s16\!\p } s8
s4\pp s4\decr
\TEMPOFIN s2\!\ppp
}

dynMidiPianoBas = {
%--- 1
s4\f\decr s8\!\p s8
s2*3
%--- 5
s4\f\decr s8\!\p s8
s4\f\decr s8\!\p s8
s2
%--- 8
s2\pp
s4\f s4\cr
s4\!\ff s4\p
s2\pp
%--- 12
s4\mf s4\p
s2\ff
s2\p
s2\ff
s2*2
%--- 18-21
s2\p
s4 \times 2/3 { s8\mf\decr s16\!\mp } s8
s4\pp s4\decr
s2\!\ppp
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<
  \new Voice = "chant"  << \notePartChant \dynPartChant >>
  \new Lyrics  \lyricsto "chant" \poeme

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
   \override SpacingSpanner #'spacing-increment = #2
   \override TextScript #'font-size = #1
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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           E. SORTIE MIDI SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME s2 }

\score {
 <<
  \new Staff = "chant"      { \SILENCE << \noteMidiChant      \dynMidiPianoHaut >> }
  \new Staff = "pianoUp"    { \SILENCE << \noteMidiPianoHaut  \dynMidiPianoHaut >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBasI  \dynMidiPianoBas >> }
  \new Staff = "pianoDown2" { \SILENCE << \noteMidiPianoBasII >> }
 >>
 \midi { }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         FIN DU FICHIER SchubertF-D210-DieLiebe.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
