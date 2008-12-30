%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D257-Heidenroeslein.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Heidenröslein", für eine Singstimme mit Klavierbegleitung
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
  " " { \italic "♫  Franz Schubert: Heidenröslein (D.257)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Heidenröslein (D.257)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 dedication = \markup \center-column { \fontsize #0.5 \bold "Ignaz Edlen von Mosel gewidmet." " " }
 title = \markup { \fontsize #1.5 "Heidenröslein" }
 subsubtitle = " "
 poet = \markup { \column {
  \line { \bold "Johann Wolfgang von Goethe" }
  \line { \small "(1749-1832)" } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.257 (Op. 3, No 3, August 1815)" }
% MUTOPIA
 mutopiatitle = "Heidenröslein"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "J. W. von Goethe"
 mutopiaopus = "D.257 (Op. 3, No. 3)"
 mutopiainstrument = "Voice and Piano"
 date = "1815"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1555"
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
TEMPOBASE = \tempo 4=69
TEMPORIT  = \tempo 4=35
TEMPOFIN  = \tempo 4=60
%----- TONALITÉS ET MESURES
KEY   = { \key sol \major }
TIME  = { \time 2/4 }
%----- MOUVEMENT
MOVEMENT = \markup {
  { \bold \large { \hspace #-4.0 "Lieblich. " } }
  { \smaller \general-align #Y #DOWN \note #"4" #1 = 69. }
}
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
CRESCM     = \markup { \large \bold \italic "cresc." }
NACHGEBEND = \markup { \large \bold \italic { \hspace #-2 "nachgebend" } }
WIEOBEN    = \markup { \large \bold \italic { \hspace #-2 "wie oben" } }
%----- DYNAMIQUE SPECIALE
SFORZATO = \markup { \musicglyph #"scripts.sforzato" }
%----- REPOSITIONNEMENT DES DYNAMIQUES
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
%----- REPOSITIONNEMENT DES MARKUP
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \override TextScript #'extra-offset = #$beg-end #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poemeA = \lyricmode {
\set fontSize = #-.5
Sah ein Knab’ ein Rös -- lein __ stehn,
Rös -- lein auf der Hei -- den,
War so jung und mor -- gen -- schön,
Lief er schnell, es nah __ zu __ sehn,
Sah’s __ mit __ vie -- len __ Freu -- den.
Rös -- lein, Rös -- lein, Rös -- lein __ rot,
Rös -- lein auf der Hei -- den.
}

poemeB = \lyricmode {
\set fontSize = #-.5

Kna -- be sprach: Ich bre -- che __ dich,
Rös -- lein auf der Hei -- den!
Rös -- lein sprach: Ich ste -- che __ dich,
Dass du e -- wig denkst __ an __ mich,
Und __ ich __ will’s __ nicht __ lei -- den.
Rös -- lein, Rös -- lein, Rös -- lein __ rot,
Rös -- lein auf der Hei -- den.
}

poemeC = \lyricmode {
\set fontSize = #-.5

Und der wil -- de Kna -- be brach
’sRös -- lein auf der Hei -- den;
Rös -- lein wehr -- te sich __ und __ stach,
Half ihm doch kein Weh __ und __ Ach,
Musst __ es __ e -- ben __ lei -- den.
Rös -- lein, Rös -- lein, Rös -- lein __ rot,
Rös -- lein auf der Hei -- den.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chant = \relative do'' {
%--- 1
si8 si si si
re16[ do] do[ si] la4
la8 la si do
re4 sol8 r
%--- 5
si,8 si si si
re16[ dod] dod[ si] la4
re8 re mi8. re16
dod16[ re] mi[ fad] re4
re16[ fad] mi[ re] dod[ si] lad[ si]
sol'8.[ dod,16] re4\fermata
%--- 11
la8 la si do!
re8 mi16[ fad] sol4\fermata
mi8 sol do, mi
sol,[ si16 la] sol4
R2*2
\bar ":|"
}

chantPart = { \chant }
chantMidi = \repeat unfold 3 { \chant }

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
%                                           B2. CHANT : DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION
dynPartChant = {
\dynamicUp
%--- 1
s2*10
%--- 11
s2^\NACHGEBEND
s2
s2^\WIEOBEN
s2*3
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoHaut = \relative do' {
%--- 1
r8 <re sol si> r <re sol si> 
r8 <mi la do> r <mi la do> 
r8 <re la' do> r <re fad la> 
r8 <re sol re'> r <re sol si> 
%--- 5
r8 <re sol si> r <re sol si> 
r8 <mi la dod> r <mi la dod> 
r8 <la re> r <si mi>
r8 <sol dod> r <fad re'>
r8 <la re> r <si mi>
r8 <sol dod> r <fad re'>\fermata
%--- 11
r8 <fad la> r <re fad la> 
r8 <re sol re'> r <re sol si>\fermata
r8 <mi sol do> r <do sol' do>
<sol' si>8([ <fad la>]) sol16-.[ si( do re)]
%--- 15-16
<< { \stemDown mi8-.[ \stemUp \slurDown \appoggiatura mi16 \stemDown \slurUp sol8]( do,8-.)[
     \stemUp \slurDown \appoggiatura do16 \stemDown \slurUp mi8]( | \stemUp sol,8-.)[ la16.( si32)] sol4 } 
\\ { s2 | sol8[ fad]( sol4) } >> 
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEY \TIME
% \set autoBeaming = ##f
 \pianoHaut
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEY \TIME
 \IPIANOHAUT
 \repeat unfold 3 { \pianoHaut }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBas = \relative do' {
%--- 1
sol8 r sol r
sol8 r sol r
fad8 r do r
si8 r sol r
%--- 5
sol'8 r sol r
sol8 r sol r
fad8 r sol r
la8 r si r
fad8 r sol r
la8 r re, r^\fermataMarkup
%--- 11
re8 r do! r
si r sol4^\fermataMarkup
do8 r mi r
<< { re'8([ do]) si16 s8. } \\ { re,4( sol16)[ sol^( la si)] } >>
do8-.[ \appoggiatura do16 mi8]( la,-.)[ \appoggiatura la16 do8](
<re, si'>8-.)[ \set doubleSlurs = ##t <re do'>]( <sol si>4) \set doubleSlurs = ##f
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
 \KEY \TIME
 \IPIANOBAS
 \repeat unfold 3 { \pianoBas }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
\TSCREXO #'(1 . 1)
%--- 1
s2\pp
s2*7
%--- 9
s2-\CRESCM
s2
%--- 11
\DYNEXO #'(1 . 0) s2\pp
s2*3
s8 s8-\SFORZATO s8 s8-\SFORZATO
s2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPianoA = {
%--- 1
\TEMPOBASE s2\pp
s2*7
%--- 9
s2\cr
s4 \TEMPORIT s4\!\mf
%--- 11
\TEMPOBASE s2\pp
s4 \TEMPORIT s4
\TEMPOBASE s2*3
s4 \TEMPOFIN s4
}

dynMidiPiano = \repeat unfold 3 { \dynMidiPianoA }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<
  \new Voice = "chant"  << \notePartChant \dynPartChant >>
  \new Lyrics \lyricsto "chant" \poemeA
  \new Lyrics \lyricsto "chant" \poemeB
  \new Lyrics \lyricsto "chant" \poemeC

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
%                                         FIN DU FICHIER SchubertF-D257-Heidenroeslein.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
