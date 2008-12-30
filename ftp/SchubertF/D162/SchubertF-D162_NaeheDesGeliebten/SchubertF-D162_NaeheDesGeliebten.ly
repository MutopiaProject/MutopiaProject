%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D162.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                  FRANZ SCHUBERT: Gesang "Nähe des Geliebten", für eine Singstimme mit Klavierbegleitung
%                                    2 VERSIONS, AVEC SORTIES PARTITION ET MIDI SEPAREES
%  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.34"
\include "italiano.ly"

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")
 line-width = 184\mm
 indent = 22\mm
 between-system-padding = 5\mm
 between-system-space = 1\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Nähe des Geliebten (D162)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Nähe des Geliebten (D162)  ♫" } " " }
 #(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \lower #10 \fontsize #1.5 "Nähe des Geliebten" }
 subtitle =  \markup { \lower #3 "Erste und zweite Fassungen " }
 subsubtitle = \markup { \lower #5 " " }
 poet = \markup { \fontsize #1 \bold "Johann Wolfgang von Goethe" \small "(1749-1832)" }
 composer = \markup \center-align { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.162 (1815)" }
% MUTOPIA
 mutopiatitle = "Nähe des Geliebten"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.162"
 mutopiainstrument = "Voice and Piano"
 date = "1815"
 source = "Erste Fassung: Handschrift von Franz Schubert; Zweite Fassung: Breitkopf & Härtel (IMSLP)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = "A source is freely available at http://www.schubert-online.at/ and http://imslp.org/wiki/Accueil"
 footer = "Mutopia-2007/10/13-1050"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GÉNÉRALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. POÈME
%                                             VERSION 1
%  B. NOTES: B1. MÉLODIE
%            B21. PIANO HAUT  B22. PIANO BAS
%  C. DYNAMIQUES PARTITION: C1. MÉLODIE  C2. PIANO
%  D. DYNAMIQUES MIDI:  D1. MÉLODIE  D2. PIANO
%                                             VERSION 2
%  E. NOTES: E1. MÉLODIE
%            E21. PIANO HAUT  E22. PIANO BAS
%  F. DYNAMIQUES PARTITION: F1. PIANO
%  G. DYNAMIQUES MIDI: G1. MÉLODIE  G2. PIANO

%  H. SORTIE PARTITION SÉPARÉE POUR VERSION 1 ET VERSION 2 (suivies du texte complet du poème)
%  I. SORTIE MIDI COMMUNE
%
% 	                BIENVENUE A TOUTE SUGGESTION POUR AMELIORER LA PARTITION, LA SORTIE MIDI OU LE CODAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TONALITÉ ET MESURE (IDENTIQUES POUR LES 2 VERSIONS)
KEYTIME = { \key solb \major  \time 12/8 }
%----- MOUVEMENTS (IDENTIQUES POUR LES 2 VERSIONS)
MOVEMENTA = \markup { \bold \large { \hspace #-4.0 \italic "Sehr langsam, feierlich mit Anmuth." } }
MOVEMENTB = \markup {
  { \bold \large { \hspace #-4.0 \italic "Sehr langsam, feierlich mit Anmuth. " } }
  { (\smaller \general-align #Y #DOWN \note #"4" #1 = 50) }
 }
%----- DÉPLACER UNE NOTEHSHIFT
NOTEHSHIFT = #(define-music-function (parser location beg-end) (number?)
               #{ \once \override NoteColumn #'force-hshift = #$beg-end #})
%----- DÉPLACER UNE DYNAMIQUE
DYNEXO = #(define-music-function (parser location beg-end) (pair?)
           #{ \once \override DynamicText #'extra-offset = #$beg-end #})
%----- MARKUP
TSCRIPTEXO   =  #(define-music-function (parser location beg-end) (pair?)
           #{ \once \override TextScript #'extra-offset = #$beg-end #})
%----- ÉCRITURE SPÉCIALE D'UN CRESCENDO / DECRESCENDO NOTÉ "decresc."
CREScendo = { \set crescendoText = \markup { \italic "c r e s    =" } \set crescendoSpanner = #'dashed-line }
cresCENdo = { \set crescendoText = \markup { \italic "c e n     =" } \set crescendoSpanner = #'dashed-line }
crescenDO = { \set crescendoText = \markup { \italic "d o" } \set crescendoSpanner = #'dashed-line }
DECRESC   = { \set decrescendoText = \markup { \italic "decresc." } \set decrescendoSpanner = #'dashed-line }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POÈME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ApoemeUn = \lyricmode {
 \set fontSize = #-.5
 
 Ich den -- ke dein, wenn mir der Son -- ne Schim -- mer vom Mee -- re strahlt:
 ich den -- ke dein, wenn sich des Mon -- des Flim -- mer in Quel -- len malt.
}

BpoemeUn = \lyricmode {
 \set fontSize = #-.5
 \set stanza = "1. "
 
 Ich den -- ke dein, wenn mir der Son -- ne Schim -- mer vom Mee -- re strahlt:
 ich den -- ke dein, wenn sich des Mon -- des Flim -- mer in Quel -- len malt. \set stanza = "2. " Ich
}

BpoemeDeux = \lyricmode {
 \set fontSize = #-.5
 
 " " \set stanza = "2. " se -- he dich, wenn auf dem fer -- nen We -- ge der Staub sich hebt;
 in tie -- fer Nacht, wenn auf dem schma -- len We -- ge der Wan -- drer bebt.
}

% POÈME ENTIER À LA FIN

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                        ERSTE FASSUNG: 27. februar 1815
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          B. NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          B1. NOTES MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

AmeloNote = \relative do''' \repeat volta 2 {

%1-3
 R1*12/8
 r2*12/8 r4 r8 r4 solb8
 solb4. ~ solb4 reb8 reb4. reb8 dob sib
%4-6
 \stemUp lab4. ^~ lab8[ dob] \stemNeutral mib mib4 reb8 r8 r8 sib
 reb4. ~ reb4 fa,8 solb4. r8 r8 solb'
 fa4. ~ fa8[ mib] reb reb4( solb8) r8 r8 solb
%7-10
 re4. ~ re8[ dob] sib sib4 mib8 mib8. fa16 solb8
 sib,4. ~ sib8[ dob] reb! reb4( sib8) r4 r8
 R1*12/8
 r2*12/8 r2*12/8^\fermataMarkup
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
AmeloNotePart = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENTA
 \set Staff.instrumentName = "Singstimme "
 \AmeloNote
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
AmeloNoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "pan flute"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
 \unfoldRepeats { \AmeloNote }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          B21. NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ApianoHautNote = \relative do' \repeat volta 2 {

%1-3
 <fa sib re>8[ <fa sib re> <fa sib re>] <fa sib re>8[ <fa sib re> <fa sib re>] \stemUp \repeat tremolo 6 <solb sib mib>8
 <solb mib'>8[ <solb mib'> <solb mib'>] <sol mi'>8[ <sol mi'> <sol mi'>]
  <lab re fa>8[ <lab re fa> <lab re fa>] <la mib' solb!>8[ <la mib' solb> <la mib' solb>]
 <sib reb solb>8[ <sib reb solb> <sib reb solb>] \repeat tremolo 3 <sib reb solb>8
  \repeat tremolo 3 <solb reb' solb>8 <solb reb'>8[ <solb dob> <solb sib>]
%4-6
 << { \voiceOne \repeat tremolo 3 <mib solb lab>8 \repeat tremolo 3 <mib solb lab>8
       \repeat tremolo 3 <reb solb sib>8 sib'8[ lab solb]
      \repeat tremolo 3 <reb fa>8  fa8[ solb lab] <reb, solb>8[ solb solb] solb8[ lab sib] } \\
    { \voiceThree s2. s4. \NOTEHSHIFT #1.5  \repeat tremolo 3 reb,8
      s4. \NOTEHSHIFT #1.5 \repeat tremolo 3 reb8 s2. } \\
    { \voiceTwo s2. s4. reb8[ dob sib]
      \repeat tremolo 3 lab8 lab8[ sib dob] sib8[ sib sib] sib8[ reb solb] } >>
 \repeat tremolo 3 <lab dob>8 \repeat tremolo 3 <reb, lab' dob>8
  <reb solb sib>8[ <sib solb'> <sib solb'>] <sib solb'>8[ <reb lab'> <solb sib>]
%7-10
 \repeat tremolo 3 <fa lab sib>8 \repeat tremolo 3 <fa lab sib>8
  r8 <mib solb sib>8[ <mib solb sib>] r8 <mib solb dob>8[ <mib solb dob>]
 << { \voiceOne r8 <reb solb sib>8[ <reb solb sib>] r8 <dob fa lab>8[ <dob fa lab>]
       r8 <solb sib solb'>8-.([ <solb sib solb'>-.] solb'8-.[ fa-. mib-.])
      r8 <lab, dob reb>8-.([ <lab dob reb>-.] \TSCRIPTEXO #'(0.5 . -2.2) \repeat tremolo 3 <lab dob reb>8-.)^\markup { \bold " .." }
       r8 <solb sib solb'>8-.([ <solb sib solb'>-.] solb'8-.[ fa-. mib-.]) } \\
    { \voiceTwo s2. s4. \repeat tremolo 3 <solb, sib>8
       s2. s4. \repeat tremolo 3 <solb sib>8 } >>
 r8 <lab dob reb>8^.^([ <lab dob reb>^.] \TSCRIPTEXO #'(0.5 . -2.2) \repeat tremolo 3 <lab dob reb>8^.)^\markup { \bold " .." } <sib reb>2.\fermata
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
ApianoHautNotePart = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 \ApianoHautNote
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
ApianoHautNoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.6
 \unfoldRepeats { \ApianoHautNote }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          B22. NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ApianoBasNote =  \relative do' \repeat volta 2 {

%1-3
 sib8[ sib sib] sib8[ sib sib] \repeat tremolo 6 sib8
 \repeat tremolo 3 dob!8 \repeat tremolo 3 dob8 \repeat tremolo 3 dob8 \repeat tremolo 3 dob8
 <sib reb>8[ <sib reb> <sib reb>] \repeat tremolo 3 <sib reb>8
  \repeat tremolo 3 <sib reb>8 <sib reb>8[ <lab reb> <solb reb'>]
%4-6
 dob,4.~ dob4( do8) \stemUp reb2. \stemNeutral
 <reb, reb'>2. <solb reb'>2.
 << { \voiceOne  reb'4. ~ reb8_([ mib fa]) solb4. r4 r8 } \\
    { \voiceTwo  solb,2. ~ solb2. } >>
%7-10
 sib4. ~ sib8([ do re]) mib4. dob4.
 \stemUp reb4. \stemNeutral reb,4. <solb reb'>2.
 << { \voiceOne  reb'4. ~ reb8_([ mib fa]) solb8 r8 r8 r4 r8
      reb4. ~ reb8_([ mib fa]) solb2.\fermata } \\
    { \voiceTwo solb,2. solb2.
      solb2. solb2.\fermata } >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
ApianoBasNotePart = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 \ApianoBasNote
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
ApianoBasNoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.6
 \unfoldRepeats { \ApianoBasNote }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. DYNAMIQUES PARTITION MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

AmeloDynPart = \repeat volta 2 {
 \override DynamicTextSpanner #'dash-period = #-1.0

 s1.*2
 s4_\decr s8\! s4. s2.
 s1.*8
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. DYNAMIQUES PARTITION PIANO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ApianoDynPart = \repeat volta 2 {
 \override DynamicTextSpanner #'dash-period = #-1.0

%1-3
 s1. \pp
 \CREScendo s4. \cr s4 \! \cresCENdo s8 \cr s4 s8 \! \crescenDO s4 \cr s8 \!
 s4. \f  \DECRESC s2. \decr s4. \! \p
%4-6
 \DYNEXO #'(1.5 . 0) s1. \pp
 s2. s2. \ppp
 s1.
%7-10
 s1.
 s2. s2. \pp
 s1.*2
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. DYNAMIQUES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D1. DYNAMIQUES MIDI MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

AmeloDynMidiPrep = \repeat volta 2 {

 s1.
 s2. s4. s4 s8\f
 s4.\decr s4\!\p s8 s2.
 s1.*7
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
AmeloDynMidi = {
 \unfoldRepeats { \AmeloDynMidiPrep }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D2. DYNAMIQUES MIDI PIANO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ApianoHautDynMidiPrep = \repeat volta 2 {
%1-3
 s1. \pp
 s2. \cr s2.
 s4. \! \f s2. \decr s4. \! \p
%4-6
 s1. \pp
 s2. s2. \ppp
 s1.
%7-10
 s1.
 s2. s2. \pp
 s1.*2
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
ApianoHautDynMidi = {
 \unfoldRepeats { \ApianoHautDynMidiPrep }
}

ApianoBasDynMidiPrep = \repeat volta 2 {
%1-3
 s1. \mf
 s2. \cr s4. s4.
 s4. \! \fff s2. \decr s4. \! \mf
%4-6
 s1. \mp
 s2. s2. \p
 s1.
%7-10
 s1.
 s2. s2. \mf
 s1.*2
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
ApianoBasDynMidi = {
 \unfoldRepeats { \ApianoBasDynMidiPrep }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          ZWEITE FASSUNG - D162: 27 februar. 1815
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          E. NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          E1. NOTES MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BmeloNoteIntro = \relative do''' {
%1-2
 R1*12/8
 r2*12/8 r4 r8 r4 solb8
}

BmeloNoteCorps = \relative do''' {
%3
 solb4. ~ solb4 reb8 reb4. reb8 dob sib
%4-6
 lab4. ^~ lab8[ dob] mib mib4 reb8 r8 r8 sib
 reb4. ~ reb4 fa,8 solb4. r8 r8 solb'
 fa4. ~ fa8[ mib] reb reb4( solb8) r8 r8 solb
%7-10
 re4. ~ re8[ do] sib sib4 mib8 mib8. fa16 solb8
 sib,4. ~ sib8[ dob] reb reb4( solb,8) r4 r8
 R1*12/8
}

BmeloNoteAlter = \relative do''' {
%3
 r2*12/8 r4 r8 ^\fermataMarkup r4 solb8
}

BmeloNoteFin = \relative do''' {
%3
 r2*12/8 r2*12/8 ^\fermataMarkup \bar "|." \pageBreak
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
BmeloNotePart = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENTB
 \set Staff.instrumentName = "Singstimme "
 \BmeloNoteIntro \repeat volta 4 { \BmeloNoteCorps} \alternative { { \BmeloNoteAlter } { \BmeloNoteFin } }
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
BmeloNoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "pan flute"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
 \BmeloNoteIntro \BmeloNoteCorps \BmeloNoteAlter \BmeloNoteCorps \BmeloNoteFin
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          E21. NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BpianoHautNoteIntro = \relative do' {
%1-3
 <fa sib re>8[ <fa sib re> <fa sib re>] <fa sib re>8[ <fa sib re> <fa sib re>]
  <solb sib mib>8[ <solb sib mib> <solb sib mib>] <solb sib mib>8[ <solb sib mib> <solb sib mib>]
 <solb mib'>8[ <solb mib'> <solb mib'>] <sol mi'>8[ <sol mi'> <sol mi'>]
  <lab re fa>8[ <lab re fa> <lab re fa>] <la mib' solb!>8[ <la mib' solb> <la mib' solb>]
}

BpianoHautNoteCorps = \relative do'' {

%3
 \repeat tremolo 3 <sib reb solb>8 \repeat tremolo 3 <sib reb solb>8
  \repeat tremolo 3 <solb reb' solb>8 \stemDown <solb reb'>8[ <solb dob> <solb sib>] \stemNeutral
%4-6
 \repeat tremolo 3 <mib solb lab>8 \repeat tremolo 3 <mib solb lab>8
  \repeat tremolo 3 <reb solb sib>8 <reb sib'>8[ <dob reb lab'> <sib reb solb>]
 \repeat tremolo 3 <lab reb fa>8  <lab reb fa>8[ <sib reb solb> <dob reb lab'>]
  <sib reb solb>8[ <sib solb'> <sib solb'>]  <sib solb'>8[ <reb lab'> <solb sib>]
 \stemUp \repeat tremolo 3 <lab dob>8 \stemNeutral \repeat tremolo 3 <reb, lab' dob>8
  <reb solb sib>8[ <sib solb'> <sib solb'>] <sib solb'>8[ <reb lab'> <solb sib>]
%7-10
 \repeat tremolo 3 <fa lab sib>8 \repeat tremolo 3 <fa lab sib>8
  r8 <mib solb sib>8[ <mib solb sib>] r8 <mib solb dob>8[ <mib solb dob>]
 r8 <reb solb sib>8[ <reb solb sib>] r8 <dob fa lab>8[ <dob fa lab>]
  r8 <solb sib solb'>8-.([ <solb sib solb'>-.] <solb sib solb'>-.[ <solb sib fa>-. <solb sib mib>-.])
 r8 <lab dob reb>8-.([ <lab dob reb>-.] \TSCRIPTEXO #'(0.5 . 2.4) \repeat tremolo 3 <lab dob reb>8-.)_\markup { \bold " .." }
  r8 <solb sib solb'>8-.([ <solb sib solb'>-.] <solb sib solb'>8-.[ <solb sib fa'>-. <solb sib mib>-.])
}

BpianoHautNoteAlter = \relative do' {
 r8 <lab dob reb>8-.([ <lab dob reb>-.] \TSCRIPTEXO #'(0.5 . 2.4) \repeat tremolo 3 <lab dob reb>8-.)_\markup { \bold " .." }
  <sib reb>2. \fermata
}

BpianoHautNoteFin = \relative do' {
 r8 <lab dob reb>8-.([ <lab dob reb>-.] \TSCRIPTEXO #'(0.5 . 2.4) \repeat tremolo 3 <lab dob reb>8-.)_\markup { \bold " .." }
  <sib reb>2. \fermata \bar "|."
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
BpianoHautNotePart = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 \BpianoHautNoteIntro \repeat volta 4 { \BpianoHautNoteCorps} \alternative { { \BpianoHautNoteAlter } { \BpianoHautNoteFin } }
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
BpianoHautNoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.6
 \unfoldRepeats { \BpianoHautNoteIntro \BpianoHautNoteCorps \BpianoHautNoteAlter \BpianoHautNoteCorps \BpianoHautNoteFin }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          E22. NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BpianoBasNoteIntro =  \relative do' {

%1-3
 sib8[ sib sib] sib8[ sib sib] sib8[ sib sib] sib8[ sib sib]
 dob8[ dob dob] dob8[ dob dob] dob8[ dob dob] dob8[ dob dob]
}

BpianoBasNoteCorps =  \relative do' {

%1-3
 \repeat tremolo 3 <sib reb>8 \repeat tremolo 3 <sib reb>8
  \repeat tremolo 3 <sib reb>8  <sib reb>8[ <lab reb> <solb reb'>]
%4-6
 dob,4.~( dob4 do8) reb2.
 <reb, reb'>2. <solb reb'>2.
 << { \voiceOne  reb'4. ~ reb8([ mib fa]) solb4. r4 r8 } \\
    { \voiceTwo  solb,2. ~ solb2. } >>
%7-9
 sib4. ~ sib8([ do re]) mib4. dob4.
 reb4. reb,4. <solb reb'>2.
 << { \voiceOne reb'4. ~ reb8([ mib fa]) solb8 r8 r8 r4 r8 } \\
    { \voiceTwo solb,2. solb2. } >>
}

BpianoBasNoteAlter =  \relative do {
%10
 << { \voiceOne reb4. ~ reb8([ mib fa]) solb2.\fermata } \\
    { \voiceTwo solb,2. solb2. \fermata } >>
}

BpianoBasNoteFin = \BpianoBasNoteAlter

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
BpianoBasNotePart = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 \BpianoBasNoteIntro \repeat volta 4 { \BpianoBasNoteCorps} \alternative { { \BpianoBasNoteAlter } { \BpianoBasNoteFin } }
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
BpianoBasNoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.6
 \unfoldRepeats { \BpianoBasNoteIntro \BpianoBasNoteCorps \BpianoBasNoteAlter \BpianoBasNoteCorps \BpianoBasNoteFin }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           F. DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           F1. DYNAMIQUES PARTITION PIANO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BpianoDynPart = {
 \override DynamicTextSpanner #'dash-period = #-1.0

%INTRO: 1-2
 s1. \pp
 \setTextCresc s4. \cr s4. \! s2.

%CORPS: 3
 s4. \f \DECRESC s2. \decr s4. \! \p
%4-6
 \DYNEXO #'(1.5 . 0) s1. \pp
 s2. s2. \ppp
 s1.
%7-10
 s1.
 s2. s2. \pp
 s1.*2
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           G. DYNAMIQUES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           G1. DYNAMIQUES MIDI MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BmeloDynMidi = { s1. \p }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           G2. DYNAMIQUES MIDI PIANO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BpianoHautDynMidiIntro = {
%1-2
 s1. \pp
 s2. \cr s2 s4. \! \f
}

BpianoHautDynMidiCorps = \repeat volta 4 {
%1-3
 s4. \f s2. \decr s4. \! \p
%4-6
 s1. \pp
 s2. s2. \ppp
 s1.
%7-10
 s1.
 s2. s2. \pp
 s1.*2
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
BpianoHautDynMidi = {
 \BpianoHautDynMidiIntro \BpianoHautDynMidiCorps \BpianoHautDynMidiCorps
}

BpianoBasDynMidiIntro = {
%1-3
 s1. \mf
 s2. \cr s4. s4. \! \fff
}

BpianoBasDynMidiCorps = \repeat volta 4 {
%3
 s4. \fff s2. \decr s4. \! \mf
%4-6
 s1. \mp
 s2. s2. \p
 s1.
%7-10
 s1.
 s2. s2. \mf
 s1.*2
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
BpianoBasDynMidi = {
 \BpianoBasDynMidiIntro \BpianoBasDynMidiCorps \BpianoBasDynMidiCorps
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           H. SORTIE PARTITION (pas de \midi) : 2 SCORES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {

%%%%%%%%%%%%%%%%%%%% ERSTE FASSUNG

\score {
 <<
  \new Voice = "mel" << \AmeloNotePart >>
  \new Lyrics \lyricsto "mel" \ApoemeUn
  \new PianoStaff <<
   \set PianoStaff.instrumentName = "Fortepiano "

	  \new Staff = "up" << \ApianoHautNotePart >>
   \new Dynamics = "dynamics" \ApianoDynPart
   \new Staff = "down" << \ApianoBasNotePart >>
  >>
 >>
 \layout {
 	\context { \RemoveEmptyStaffContext }
 	\context {
   \Score
   \override VerticalAxisGroup #'remove-first = ##t
	  \override SpacingSpanner #'spacing-increment = #1.0
	 }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice % So that \cresc works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 0.5)
   \override DynamicLineSpanner #'Y-offset = #0

   \consists "Script_engraver"
   \consists "Dynamic_engraver"
   \consists "Text_engraver"

   \override TextScript #'font-size = #2
   \override TextScript #'font-shape = #'italic

   \consists "Skip_event_swallow_translator"

   \consists "Axis_group_engraver"
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
 \header { piece = \markup { \line { \column { { \bold \large "1. Erste Fassung : 27. Februar 1815." }
  "Nach einer Reinschrift von Franz Schubert (Wienbibliothek im Rathaus)" } } } }
}

%%%%%%%%%%%%%%%%%%%% ZWEITE FASSUNG D162

\score {
 <<
  \new Voice = "mel" << \BmeloNotePart >>
  \new Lyrics \lyricsto "mel" \BpoemeUn
  \new Lyrics \lyricsto "mel" \BpoemeDeux
  \new PianoStaff <<
   \set PianoStaff.instrumentName = "Pianoforte "

	  \new Staff = "up" << \BpianoHautNotePart >>
   \new Dynamics = "dynamics" \BpianoDynPart
   \new Staff = "down" << \BpianoBasNotePart >>
  >>
 >>
 \layout {
 	\context { \RemoveEmptyStaffContext }
 	\context {
   \Score
   \override VerticalAxisGroup #'remove-first = ##t
	  \override SpacingSpanner #'spacing-increment = #1.0
	 }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice % So that \cresc works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 0.5)
   \override DynamicLineSpanner #'Y-offset = #0

   \consists "Script_engraver"
   \consists "Dynamic_engraver"
   \consists "Text_engraver"

   \override TextScript #'font-size = #2
   \override TextScript #'font-shape = #'italic

   \consists "Skip_event_swallow_translator"

   \consists "Axis_group_engraver"
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
 \header {  piece = \markup { \fill-line {
 \column {
  \line { \column {
   { \bold \large "2. Zweite Fassung : D162 (Op. 5 No 2), 27. Februar 1815."
     "Nach Breitkopf & Härtel (IMSLP)" } } } }
 \column { \lower #8
  \line { \column {
   \bold \large "Anton Salieri gewidmet" } } }
 } } }
}

%%%%%%%%%%%%%%%%%%%% POÈME ENTIER

\markup { \bold \large "Nähe des Geliebten" }

\markup { \lower #5
 \fill-line {
  \column {
   \line { \bold "1."
    \column {
     "Ich denke dein, wenn mir der Sonne Schimmer"
     "       Vom Meere strahlt."
     "Ich denke dein, wenn sich des Mondes Flimmer"
     "       In Quellen malt."
     " "
    }
   } 
   \line { \bold "2."
    \column {
     "Ich sehe dich, wenn auf dem fernen Wege"
     "       Der Staub sich hebt."
     "In tiefer Nacht, wenn auf dem schmalen Wege"
     "       Der Wandrer bebt."
    }
   }
  }
  \hspace #0.1
  \column {
   \line { \bold "3."
    \column {
     "Ich höre dich, wenn dort mit dumpfen Rauschen"
     "       Die Welle steigt!"
     "Im stillen Hain, da geh' ich oft zu lauschen,"
     "       Wenn alles schweigt."
     " "
    }
   } 
   \line { \bold "4."
    \column {
     "Ich bin bei dir; du seist auch noch so ferne,"
     "       Du bist mir nah!"
     "Die Sonne sinkt, bald leuchten mir die Sterne,"
     "       O, wärst du da!"
    }
   }
  }
 }
}
} % FIN DU BOOK


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           I. SORTIE MIDI COMMUNE (pas de \layout)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% REDÉFINITION DES VOLUMES RESPECTIFS ATTRIBUÉS AUX DYNAMIQUES 
#(define my-absolute-volume-alist '())
#(set! my-absolute-volume-alist
      (append 
      '(
	("sf" .    1.00)
	("ffff" .  1.00)
	("fff" .   0.88)
	("ff" .    0.75)
	("f" .     0.62)
	("mf" .    0.54)
	("mp" .    0.46)
	("p" .     0.40)
	("pp" .    0.33)
	("ppp" .   0.28)
	("pppp" .  0.23)
	("ppppp" . 0.16)
	)
      my-absolute-volume-alist))

% DANS LE BLOC MIDI, CHAQUE DYNAMIQUE RENCONTRÉE PRENDRA LE NOUVEAU VOLUME SPÉCIFIÉ
#(define (my-dynamic-absolute-volume s)
  (let ((entry (assoc s my-absolute-volume-alist)))
    (if entry
	(cdr entry))))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
% ET ENTRE ERSTE ET ZWEITE FASSUNG (SANS CHANGEMENT DE TEMPO)

SILENCE = { \KEYTIME s1. }

\score {
 <<
  \new Voice = "mel"   { \SILENCE << \AmeloNoteMidi \AmeloDynMidi >>  \SILENCE << \BmeloNoteMidi \BmeloDynMidi >> }
  \new PianoStaff <<
   \new Staff = "up"   { \SILENCE << \ApianoHautNoteMidi \ApianoHautDynMidi >> \SILENCE << \BpianoHautNoteMidi \BpianoHautDynMidi >> }
   \new Staff = "down" { \SILENCE << \ApianoBasNoteMidi \ApianoBasDynMidi >>  \SILENCE << \BpianoBasNoteMidi \BpianoBasDynMidi >> }
  >>
 >>
 \midi {
	\context {
   \Score
% CHANGEMENT DU VOLUME DE SORTIE MIDI
    dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
	  tempoWholesPerMinute = #(ly:make-moment 50 4)
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER SchubertF-D162.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
