%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                          FICHIER SchubertF-D827-NachtUndTraeume.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                  FRANZ SCHUBERT: Gesang "Nacht und Träume", für eine Singstimme mit Klavierbegleitung
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
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
  " " { \italic "♫  Franz Schubert: Nacht und Träume (D.827)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Nacht und Träume (D.827)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "Nacht und Träume" }
 subsubtitle = " "
 poet = \markup { \bold "Matthäus von Collin" \small "(1779-1824)" }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1827)" "D.827 (Op. 43, No 2, 1825 (1822?))" }
% MUTOPIA
 mutopiatitle = "Nacht und Träume"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Matthäus von Collin"
 mutopiaopus = "D.827 (Op. 43, No. 2)"
 mutopiainstrument = "Voice and Piano"
 date = "1825"
 source = "C.F. Peters (Band I)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1548"
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
TEMPOBASE = \tempo 8=50
%----- TONALITÉS ET MESURES
KEYTIME = { \key si \major  \time 4/4 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large { \hspace #-4 "Sehr langsam." } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "church organ"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUTI = {
 \set Staff.midiInstrument = "acoustic guitar (nylon)"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUTII = {
 \set Staff.midiInstrument = "acoustic guitar (nylon)"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.7
}
IPIANOBAS = {
 \set Staff.midiInstrument = "acoustic guitar (nylon)"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.7
}
%----- DEPLACER UNE DYNAMIQUE
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
\set fontSize = #-.5

%--- 5
Heil’ -- ge Nacht, __ du sin -- kest nie -- der;
nie -- der wal -- len auch die Träu -- me,
wie dein Mond -- licht durch die Räu -- me,
durch __ der __ Men -- schen stil -- le, stil -- le Brust.

%--- 15
Die be -- lau -- schen sie __ mit __ Lust,
die be -- lau -- schen sie __ mit __ Lust,
ru -- fen, wenn der Tag er -- wacht:
keh -- re wie -- der, hol -- de Nacht!
hol -- de Träu -- me keh -- ret  wie -- der,
hol -- de __ Träu -- me keh -- ret  wie -- der!
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chant = \relative do'' {
%--- 1
R1*4
%--- 5
red2.. lad8
si2 ~ si8 si dod red
%--- 7
fad,2 red4 r
red'4. dod8 dod si lad sold
dod2 lad4 r
%--- 10
red4. dod8 dod si lad sold
dod2 lad4 r
fad8[ si] dod[ red] mi4 red
%--- 13
red4 dod si lad
si2 r2
r2 r4 r8 si16. si32
%--- 16
si4 si si8[ sol] si[ re]
mi2. r8 mi16. mi32
mi4 mi  mi8[ do] sol[ mi']
%--- 19
re2. r4
mi4 dod!8 dod16 dod mi8. re16 dod4
red!4.. dod16 dod8 si lad sold
%--- 22
dod2. r8 mi(
red4..) dod16 dod8 si lad sold
%--- 24
dod2 lad4 r
fad8[ si] dod[ red] mi4 red
red4 dod si( lad)
%--- 27
si2 r2
R1
R1^\fermataMarkup
\bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme "
 \chant
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \clef treble
 \KEYTIME
 \ICHANT
 \chant
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. CHANT : DYNAMIQUES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiChant = {
%--- 1
\TEMPOBASE s1\pp
s1*28
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX II
pianoHautII = \context Staff \relative do' \new Voice { \voiceTwo
%--- 1
<si red>16^([ fad <si red> fad] <si red>[ fad <si red> fad]  <si red>[ fad <si red> fad] <si red>[ fad <red' fad> fad,])
red'[ fad, red' fad,]         dod'[ fad, dod' fad,]        dod'[ fad, dod' fad,]       si[ fad si fad] 
si[ red, si' red,]            lad'[ red, lad' red,]        lad'[ red, sold red]        si[ red si red]
%--- 4
mi[ dod mi dod] mi[ dod mi dod] mi[ dod mi dod] mi[ dod mi dod] 
\repeat tremolo 4 { <si' red> fad } \repeat tremolo 4 { <si red> fad } 
\repeat tremolo 4 { <si red> fad } \repeat tremolo 4 { <si red> fad } 
%--- 7
\repeat tremolo 4 { <lad mi'> fad } \repeat tremolo 4 { <si red> fad } 
\repeat tremolo 4 { <si red> fadd } \repeat tremolo 4 { <si red> sold } 
\repeat tremolo 4 { <si mid> sold } \repeat tremolo 4 { <lad fad'> fad } 
%--- 10
\repeat tremolo 4 { <dod' red> fadd, } \repeat tremolo 4 { <si red> sold } 
\repeat tremolo 4 { <si mid> sold }    \repeat tremolo 4 { <lad fad'> fad } 
\repeat tremolo 4 { <si fad'> fad }    \repeat tremolo 2 { <lad fad'> fad }  \repeat tremolo 2 { <la fad'> fad } 
%--- 13
\repeat tremolo 2 { <sold fad'> fad } \repeat tremolo 2 { <sold mi'> mi }
 \repeat tremolo 2 { <fad red'> red } \repeat tremolo 2 { <fad dod'> mi } 
<red si'>[ fad <si red> fad]          \repeat tremolo 2 { <si red> fad } \repeat tremolo 4 { <si red> fad }
\repeat tremolo 4 { <si re> sol }     \repeat tremolo 4 { <si re> sol } 
%--- 16
\repeat tremolo 4 { <si re> sol }  \repeat tremolo 4 { <si re> sol } 
\repeat tremolo 4 { <do mi> sol }  \repeat tremolo 4 { <do mi> sol } 
\repeat tremolo 4 { <do mi> sol }  \repeat tremolo 4 { <do mi> sol } 
%--- 19
\repeat tremolo 4 { <si re> sol }         \repeat tremolo 4 { <si re> sol } 
\repeat tremolo 4 { <sol dod!> mi }       \repeat tremolo 4 { <sol dod> mi } 
\repeat tremolo 4 { <fadd dod' red> red } \repeat tremolo 4 { <sold si red> red } 
%--- 22
\repeat tremolo 4 { <si' mid> sold }   \repeat tremolo 4 { <lad fad'> fad } 
\repeat tremolo 4 { <dod' red> fadd, } \repeat tremolo 4 { <si red> sold } 
%--- 24
\repeat tremolo 4 { <si mid> sold }   \repeat tremolo 4 { <lad fad'> fad } 
\repeat tremolo 4 { <si fad'> fad }   \repeat tremolo 2 { <lad fad'> fad } \repeat tremolo 2 { <la fad'> fad } 
\repeat tremolo 2 { <sold fad'> fad } \repeat tremolo 2 { <sold mi'> mi }
 \repeat tremolo 2 { <fad red'> red } \repeat tremolo 2 { <fad dod'> mi } 
%--- 27
<red si'>[ fad <si red> fad]       \repeat tremolo 2 { <si red> fad } \repeat tremolo 4 { <lad dod mi> sol }
\repeat tremolo 4 { <si red> fad } \repeat tremolo 4 { <lad dod mi> sol }
<fad si red>1^\fermata
}

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoHautI = \context Staff \relative do' \new Voice { \voiceOne
%--- 1
s1
fad4^>( mi) mi^>( red)
red4^>( dod) dod8([ si lad sold])
%--- 4
sold4.( sol8) fad8[ fad fad fad]
s1*25
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 << \pianoHautII \pianoHautI >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉS MIDI
noteMidiPianoHautI = {
 \clef bass
 \KEYTIME
 \IPIANOHAUTI
 \unfoldRepeats { \pianoHautI }
}
noteMidiPianoHautII = {
 \clef bass
 \KEYTIME
 \IPIANOHAUTII
 \unfoldRepeats { \pianoHautII }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBas = \relative do, {
%--- 1
si16[ fad' si, fad']  si,[ fad' si, fad']    si,[ fad' si, fad']       si,[ fad' si, fad'] 
lad,[ fad' lad, fad'] lad,[ fad' lad, fad']  si,[ fad' si, fad']       si,[ fad' si, fad'] 
red[ fadd red fadd]   red[ fadd red fadd]    sold,[ sold' sold, sold'] sold,[ sold' sold, sold']
%--- 4
lad,[ fad' lad, fad'] lad,[ fad' lad, fad'] lad,[ fad' lad, fad'] lad,[ fad' lad, fad'] 
\repeat tremolo 4 { si, fad' } \repeat tremolo 4 { si, fad' } 
\repeat tremolo 4 { si, fad' } \repeat tremolo 4 { si, fad' } 
%--- 7
\repeat tremolo 4 { si, fad' }  \repeat tremolo 4 { si, fad' } 
\repeat tremolo 4 { si, fadd' } \repeat tremolo 4 { si, sold' } 
\repeat tremolo 4 { dod, dod' } \repeat tremolo 4 { fad, dod' } 
%--- 10
\repeat tremolo 4 { lad, fadd' } \repeat tremolo 4 { si, sold' }  
\repeat tremolo 4 { dod, dod' }  \repeat tremolo 2 { fad, dod' } fad,[ dod' mi,! dod']
\repeat tremolo 4 { red, si' }   \repeat tremolo 2 { dod, lad' } \repeat tremolo 2 { sid, la' }
%--- 13
\repeat tremolo 4 { dod, sold' } \repeat tremolo 4 { fad, fad' } 
\repeat tremolo 4 { si, fad' }   \repeat tremolo 4 { si, fad' } 
\repeat tremolo 4 { sol, sol' }  \repeat tremolo 4 { sol, sol' } 
%--- 16
\repeat tremolo 4 { sol, sol' } \repeat tremolo 4 { sol, sol' } 
\repeat tremolo 4 { do, sol' }  \repeat tremolo 4 { do, sol' } 
\repeat tremolo 4 { do, sol' }  \repeat tremolo 4 { do, sol' } 
%--- 19
\repeat tremolo 4 { sol, sol' } \repeat tremolo 4 { sol, sol' } 
\repeat tremolo 4 { lad,! sol' } \repeat tremolo 4 { lad, sol' } 
\repeat tremolo 4 { lad, fadd' } \repeat tremolo 4 { si, sold' } 
%--- 22
\repeat tremolo 4 { dod, dod' }  \repeat tremolo 4 { fad, dod' }
\repeat tremolo 4 { lad, fadd' } \repeat tremolo 4 { si, sold' }
%--- 24
\repeat tremolo 4 { dod, dod' }  \repeat tremolo 2 { fad, dod' } fad,[ dod' mi,! dod']
\repeat tremolo 4 { red, si' }   \repeat tremolo 2 { dod, lad' } \repeat tremolo 2 { sid, la' }
\repeat tremolo 4 { dod, sold' } \repeat tremolo 4 { fad, fad' } 
%--- 27
\repeat tremolo 4 { si, fad' }   \repeat tremolo 4 { si, sol' } 
\repeat tremolo 4 { si, fad' }   \repeat tremolo 4 { si, sol' } 
<si, fad'>1-\fermata
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 \pianoBas
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \clef bass
 \KEYTIME
 \IPIANOBAS
 \unfoldRepeats { \pianoBas }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { \dynamicDown
%--- 1
\DYNEXO #'(0 . -1) s1\pp
s1*28
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. : PIANO DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPianoHaut = {
%--- 1
s1\pp\sustainOn
s1*25
s2 s2\decr
s1
s1\!\pppp
}
dynMidiPianoBas = {
%--- 1
s1\pp
s1*25
s2 s2\decr
s1
s1\!\pppp
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
   \new Staff = "pianoUp"    << \notePartPianoHaut \dynPartPiano >>
   \new Staff = "pianoDown"  << \notePartPianoBas >>
  >>
 >>

 \layout { }
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           E. SORTIE MIDI SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \partial 2 s2 }

\score {
 <<
  \new Staff = "chant"      { \SILENCE << \noteMidiChant       \dynMidiChant >> }
  \new Staff = "pianoUpI"   { \SILENCE << \noteMidiPianoHautI  \dynMidiPianoHaut >> }
  \new Staff = "pianoUp"    { \SILENCE << \noteMidiPianoHautII \dynMidiPianoHaut >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBas    \dynMidiPianoBas >> }
 >>
 \midi { }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         FIN DU FICHIER SchubertF-D827-NachtUndTraeume.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
