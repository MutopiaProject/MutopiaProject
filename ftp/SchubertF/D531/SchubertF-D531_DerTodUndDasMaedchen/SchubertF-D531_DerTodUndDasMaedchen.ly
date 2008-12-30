%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D531-DerTodUndDasMaedchen.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Der Tod und das Mädchen", für eine Singstimme mit Klavierbegleitung
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
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Der Tod und das Mädchen (D.531)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Der Tod und das Mädchen (D.531)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 dedication = \markup \center-column { \fontsize #0.5 \bold "Dem Grafen Ludwig Széchényi von Sarvári-Felsö-Vidék gewidmet." " " }
 title = \markup { \fontsize #1.5 "Der Tod und das Mädchen" }
 subsubtitle = " "
 poet = \markup { \bold "Matthias Claudius" \small "(1740-1815)" }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.531 (Op. 7, No 3, Februar 1817)" }
% MUTOPIA
 mutopiatitle = "Der Tod und das Mädchen"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Matthias Claudius"
 mutopiaopus = "D.531 (Op. 7, No. 3)"
 mutopiainstrument = "Voice and Piano"
 date = "1817"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1544"
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
TEMPOBASE = \tempo 2=54
TEMPOA    = \tempo 2=60
TEMPOB    = \tempo 2=50
TEMPOC    = \tempo 2=46
TEMPOD    = \tempo 2=35
TEMPOE    = \tempo 2=18
%----- TONALITÉS ET MESURES
KEY  = { \key re \minor }
TIME = { \time 2/2 }
%----- MOUVEMENTS
MOVEMENT = \markup {
  { \bold \large { \hspace #-4.0 "Mässig. " } }
  { \smaller \general-align #Y #DOWN \note #"2" #1 = 54. }
}
MOVEMENTA = \markup \column {
  { \bold \large { "Etwas geschwinder. " } }
  { \bold "Das Mädchen." }
}
MOVEMENTB = \markup \column {
  { \bold \large { "Wie oben. " } }
  { \bold "Der Tod." }
}
%----- INSTRUMENTS
ICHANTA = {
 \set Staff.midiInstrument = "harmonica"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
ICHANTB = {
 \set Staff.midiInstrument = "pan flute"
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
%----- DYNAMIQUES MANUELLES
CRESC  = \markup { \large \bold \italic "(cresc.)" }
DIMIN  = \markup { \large \bold \italic "dimin." }
DIM    = \markup { \large \bold \italic "dim." }
SFORZATO = \markup { \musicglyph #"scripts.sforzato" }
%----- REPOSITIONNEMENT DES DYNAMIQUES
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
%----- REPOSITIONNEMENT DES MARKUP
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
%----- MARKUP
SEMPRE = \markup { \bold \large \italic "(sempre con Pedale e Sordino)" }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
\set fontSize = #-.5

%--- 8 : Das Mädchen:

Vor -- ü -- ber! ach, vor -- ü -- ber!
geh, wil -- der Kno -- chen -- mann!
Ich bin noch jung, geh’, Lie -- ber!
und rüh -- re mich nicht an, und rüh -- re mich nicht an.

%--- 22 : Der Tod:
Gib dei -- ne Hand, du schön und zart Ge -- bild,
bin Freund und kom -- me nicht zu __  stra -- fen.
Sei gu -- tes Muths! ich bin nicht wild,
Sollst sanft in mei -- nen Ar -- men schla -- fen.

}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chant = \relative do'' {
%--- 1
R1*7 \break
r2 r4 r8 la^\MOVEMENTA
sib4 la r la8. la16
%--- 10
do4 sib r sib
dod4. dod8 dod4. dod8
re2. re4 \break
mib2. la,4
sib2 r4 r8 re
re4 sol, r sol
%--- 16
do4. do8 sib4 la
sol2 r4 sib \break
la4. la8 sol4 fa
mi2 r2
R1
R1^\fermataMarkup \bar "||"
%--- 22
re2^\MOVEMENTB re4 re
re2 r4 re \break
re4. re8 re4 re
%--- 25
re2 r4 re
re2. re4
re4. re8 re4 mi8[ fa]
do1
%--- 29
la1 \break
fa'2 fa4 fa
fa2. fa4
fa2. fa4
%--- 33
fa2. re4
re2. re4
re4. re8 re4 re
la1 \break
<re, re'>2 r2
%--- 38
R1*5
R1^\fermataMarkup
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
 \clef treble
 \KEY \TIME
 \ICHANTA
 \chant
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. CHANT : DYNAMIQUES PARTITION/MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION
dynPartChant = { }

%%%%%%%%%%%%%%%%%%%% MIDI
dynMidiChant = {
%--- 1
s1\pp
s1*7
%--- 9
s1\p
s1*2
%--- 12
s8 s2..\cr
s1
s1\!\fff
s1*5
%--- 20
s1*2
%--- 22
\ICHANTB s1\mf
s1*21
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoHaut = \relative do {
%--- 1
<fa la re>2 <sol sib re>4 <mi sol re'>
<fa la re>2 <sol la mi'>4 <la fa'>
<sol la mi'>2 <fa la re>4 <mi la dod>
<fa la re>2 <fa re'>4 <mi sol re'>
<fa la re>2 <sol sib re>4 <mi sol re'>
%--- 6
<fa la re>2 <sol la mi'>4 <la fa'>
<sol la mi'>2 <fa la re>4 <mi la dod>
<fa la re>2 r \clef treble
r8 <la fa' la> <la fa' la> <la fa' la> <la fa' la>4 r
%--- 10
r8 <sib fa' sib> <sib fa' sib> <sib fa' sib> <sib fa' sib>4 r
r8 <dod sib' dod> <dod sib' dod> <dod sib' dod> <dod sib' dod>4 r
r8 <re la' re> <re la' re> <re la' re> <re la' re>4 r
r8 <mib la mib'> <mib la mib'> <mib la mib'> <mib la mib'>4 r
r8 <re sib' re> <re sib' re> <re sib' re> <re sib' re>4 r
r8 <do sol' do> <do sol' do> <do sol' do> <do sol' do>4 r
%--- 16
<fa do'>2 <mi sib'>4 <fa la>
<mi sol>2 r4 \set doubleSlurs = ##t <dod mi sib'>(
<re fa la>2) \set doubleSlurs = ##f <dod sol'>4 <re fa>
<dod mi>2 r2 \clef bass
<la fa'>2( <sol mi'>4 <fa re'>
<mi dod'>2) \TSCREXO #'(0.8 . 0) r2^\fermataMarkup
%--- 22
<fa la re>2 <fa la re>4 <fa la re>
<sol sib re>2 <sol sib re>4 <sol sib re>
<sol re'>2 <sol re'>4 <sol re'>
%--- 25
<fa la re>2 <fa la re>4 <fa la re>
<mi sib' re>2 <mi la re>4 <mi la re>
<mi sol re'>2 <fa sol re'>4 <fa sol re'>
<fa sol do>2 <mi sol do>4 <mi sol do>
%--- 29
<fa la do>2 <fa la do>4 <fa la do>
<fa sib re>2 <fa la do>4 <fa sib>
<fa la do>2 <fa la do>4 <fa sib re>
<fa la mib'>2 <fa sib re>4 <fa la do>
%--- 33
<fa sib re>2 <fa re'>4 <fa re'>
<mi! si' re>2 <mi la re>4 <mi la re>
<mi sold re'>2 <mi la re>4 <mi si' re>
<fad la re>2 <sol la dod>
<fad la re>2 <sol si re>4 <mi sol re'>
%--- 38
<fad la re>2 <mi sol re'>4 <re fad re'>
<mi sol re'>2 <mi la dod>
<fad la re>2 <sol si re>4 <mi sol re'>
<fad la re>2 <mi sol re'>4 <re fad re'>
<mi sol re'>2 <mi la dod>
<fad re'>2 \TSCREXO #'(0.8 . 0) r2^\fermataMarkup
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef bass
 \KEY \TIME
% \set autoBeaming = ##f
 \pianoHaut
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \clef bass
 \KEY \TIME
 \IPIANOHAUT
 \pianoHaut
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBas = \relative do, {
%--- 1
<re re'>2 <re re'>4 <re re'>
<re re'>2 <re re'>4 <re la'>
<la la'>2 <la la'>4 <la la'>
<re la'>2 <re re'>4 <re re'>
<re re'>2 <re re'>4 <re re'>
%--- 6
<re re'>2 <re re'>4 <re la'>
<la la'>2 <la la'>4 <la la'>
<re la'>2 r2
<re' fa>4 r r8 <re fa> <re fa> <re fa>
%--- 10
<re fa>4 r r8 <re fa> <re fa> <re fa>
<mi sol sib>4 r r8 <mi sol sib> <mi sol sib> <mi sol sib>
<fa la>4 r r8 <fa la> <fa la> <fa la>
<fad la do>4 r r8 <fad la do> <fad la do> <fad la do>
<sol sib>4 r r8 <sol sib> <sol sib> <sol sib>
<mi sol sib>4 r r8 <mi sol sib> <mi sol sib> <mi sol sib>
%--- 16
<la do>2 <sol do>4 <fa do'>
<do do'>2 r4 sol'(
fa2) mi4 re
la2 r2
fa2( sol4 sold
la2) \TSCREXO #'(0.8 . 0) r2^\fermataMarkup
%--- 22
<re, re'>2 <re re'>4 <re re'>
<sol re'>2 <sol re'>4 <sol re'>
<sib re>2 <sib re>4 <sib re>
%--- 25
re2 re4 re
sol,2 la4 la
sib2 <si, si'>4 <si si'>
<do do'>2 <do do'>4 <do do'>
%--- 28
<fa do'>2 fa4 fa
sib2 fa4 re
fa2 fa4 sib
do2 sib4 fa
%--- 33
sib2 sib4 la
sold2 la4 la
si2 la4 sold
la2 <la, la'>
<re re'>2 <re re'>4 <re re'>
%--- 38
<re re'>2 <re la'>4 <re la'>
<la la'>2 <la la'>
<re re'>2 <re re'>4 <re re'>
<re re'>2 <re la'>4 <re la'>
<la la'>2 <la la'>
<re la' re>2 \TSCREXO #'(0.8 . 0) r2^\fermataMarkup
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEY \TIME
% \set autoBeaming = ##f
 \pianoBas
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \clef bass
 \KEY \TIME
 \IPIANOBAS
 \pianoBas
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
%--- 1
\DYNEXO #'(1 . -1.5) \TSCREXO #'(3 . 1.3) s1\pp-\SEMPRE
s1*7
%--- 9
\DYNEXO #'(1 . -1.5) s1\p
s1*2
%--- 12
s8 \TSCREXO #'(0 . 1) s2..-\CRESC
s1*4
s2. \TSCREXO #'(1 . 0) s4-\SFORZATO
s1*2
%--- 20
\DYNEXO #'(1 . -1.5) \TSCREXO #'(3 . 1.3) s1\pp-\DIMIN
s1
%--- 22
\DYNEXO #'(1 . -1.5) s1\pp
s1*21
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = {
%--- 1
\TEMPOBASE s1\pp
s1*6
s2. \TEMPOA s4
%--- 9
s1\p
s1*2
%--- 12
s8 s2..\cr
s1
s1\!\ff
s1*5
%--- 20
s1\pp\decr
s2\!\ppp \TEMPOD s2
%--- 22
\TEMPOBASE s1\pp
s1*19
\TEMPOB s2 \TEMPOC s2
\TEMPOE s1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<
  \new Voice = "chant"  << \notePartChant \dynPartChant >>
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
%                                         FIN DU FICHIER SchubertF-D531-DerTodUndDasMaedchen.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
