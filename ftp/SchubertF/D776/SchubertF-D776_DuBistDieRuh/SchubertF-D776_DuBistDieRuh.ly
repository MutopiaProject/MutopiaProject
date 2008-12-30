%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                                FICHIER SchubertF-D776.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                   FRANZ SCHUBERT: Gesang "Du bist die Ruh", für eine Singstimme mit Klavierbegleitung
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.34"
\include "italiano.ly"

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")
 line-width = 180\mm
 between-system-padding = #2
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Du bist die Ruh (D 776)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Du bist die Ruh (D 776)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "Du bist die Ruh" }
 subsubtitle = " "
 poet = \markup { \bold "Friedrich Rückert" \small "(1788-1866)" }
 composer = \markup \center-align { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D 776 (Op. 59, No 3, 1823)" }
% MUTOPIA
 mutopiatitle = "Du bist die Ruh"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Friedrich Rückert (1788-1866)"
 mutopiaopus = "D.776 (Op. 59, No. 3)"
 mutopiainstrument = "Voice and Piano"
 date = "1823"
 source = "C.F. Peters (Band I)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = "A source is freely available at http://www.dlib.indiana.edu/variations/scores/"
 footer = "Mutopia-2007/10/13-1053"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. POEME
%  B. NOTES: B1. MÉLODIE
%            B3. PIANO HAUT: VOIX I, II et III   B4. PIANO BAS: VOIX I, II, III ET IV
%  C. DYNAMIQUES PARTITION: C1. MÉLODIE  C2. PIANO
%  D. DYNAMIQUES MIDI: D1. MÉLODIE  D2. PIANO
%  E. SORTIE PARTITION
%  F. SORTIE MIDI
%
% 	                BIENVENUE A TOUTE SUGGESTION POUR AMELIORER LA PARTITION, LA SORTIE MIDI OU LE CODAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%----- TONALITÉS ET MESURES
KEYTIME = { \key mib \major \time 3/8 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large { \hspace #-4.0 \italic "Langsam." } }
%----- VARIER LA HAUTEUR D'UNE BARRE DE LIGATURE
BEAMPOS = #(define-music-function (parser location beg-end) (pair?)
           #{ \once \override Beam #'positions = #$beg-end #})
%----- AUGMENTER LA HAUTEUR D'UNE LIAISON DE PHRASÉ
PSLURPOS = #(define-music-function (parser location beg-end) (pair?)
             #{ \once \override PhrasingSlur #'positions = #$beg-end #})
%----- DÉPLACER UNE NOTEHSHIFT
NOTEHSHIFT = #(define-music-function (parser location beg-end) (number?)
               #{ \once \override NoteColumn #'force-hshift = #$beg-end #})
IGNORECOLL = \once \override NoteColumn #'ignore-collision = ##t
%----- DÉPLACER UN DOTEXO
DOTEXO   =  #(define-music-function (parser location beg-end) (pair?)
           #{ \once \override Dots #'extra-offset = #$beg-end #})
%----- DÉPLACER UNE DYNAMIQUE
DYNEXO   =  #(define-music-function (parser location beg-end) (pair?)
           #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO   =  #(define-music-function (parser location beg-end) (pair?)
           #{ \once \override Hairpin #'extra-offset = #$beg-end #})
%----- MARKUP: PAUSE 1 MESURE
PAUSEun     = \markup { \hspace #0.3 \bold "1" }
PAUSEdeux   = \markup { \hspace #-0.1 \bold "1" }
PAUSEtrois  = \markup { \hspace #0.15 \bold "1" }
PAUSEquatre = \markup { \hspace #-0.2 \bold "1" }



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POÈME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
 \set fontSize = #-0.5

Du bist die Ruh'
Der Frie -- de mild,
Die Sehn -- sucht du
Und was sie stillt.

Ich wei -- he dir
Voll Lust und Schmerz
Zur Woh -- nung hier
Mein Aug' und Herz,
Mein Aug' und Herz.

Kehr' ein bei mir,
Und schlie -- ße du
Still hin -- ter dir
Die Pfor -- ten zu.

Treib an -- dern Schmerz
Aus die -- ser Brust!
Voll sei dies Herz
Von dei -- ner Lust,
Von dei -- ner Lust.

Dies Au -- gen -- zelt
Von dei -- nem Glanz
Al -- lein er -- hellt,
O füll' es ganz,
O füll' es ganz.

Dies Au -- gen -- zelt
Von dei -- nem Glanz
Al -- lein er -- hellt,
O füll' es ganz,
O füll' es ganz.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          B. NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          B1. NOTES MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

meloNote = \relative do'' {

% 1
 R4.*5
 R4.*2
% 8
 sib8 sib8. sib16
 do4 do8
 mib4 re8
% 11
 mib4.
 sib8 sib8. sib16
 do4 do8
 mib4 re8
 mib4.
% 16
 do8 do8. do16
 do4( sib8)
 la16[( sib)] do[( re)] mib16.[( re32)]
 sib4 r8
 do8 do8. do16
 do4( sib8)
% 22
 lab!16[( sib)] do[( re)] mib16.[( re32)]
 mib4( sol,8)
 fa16[( sol)] lab[( la)] sib16.[( la32)]
 sib4( mib,8)
% 26-30
 R4.*5
 
% 31
 sib'8 sib8. sib16
 do4 do8
 mib4 re8
% 34
 mib4.
 sib8 sib8. sib16
 do4 do8
 mib4 re8
 mib4.
% 39
 do8 do8. do16
 do4( sib8)
 la16[( sib)] do[( re)] mib16.[( re32)]
 sib4.
 do8 do8. re16
 do4( sib8)
% 45
 lab!16[( sib)] do[( re)] mib16.[( re32)]
 mib4( sol,8)
 fa16[( sol)] lab[( la)] sib16.[( la32)]
 sib4( mib,8)
% 49-53
 R4.*5
 
% 54
 sib'8 sib8. sib16
 dob4 dob8
 reb4 reb8
% 57
 mib4 mib8
 fa4 fa8
 sol!4.(
 lab4.)
 R4.
% 62
 lab,16[( sib)] do[( re)] mib16.[( re32)]
 mib4( sol,8)
 fa16[( sol)] lab[( la)] sib16.[( la32)]
 sib4( mib,8)
% 66
 R4.*2

% 68
 sib'8 sib8. sib16
 dob4 dob8
 fab4 fab8
% 71
 mib4 mib8
 fa!4 fa8
 sol!4.(
 lab4.)
 R4.
 lab,16[( sib)] do[( re)] mib16.[( re32)]
% 77
 mib4( sol,8)
 fa16[( sol)] lab[( la)] sib16.[( la32)]
 sib4. ~
 sib4 r8
% 81-82
 R4.*2
 \bar "||"
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
meloNotePart = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 \meloNote
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
meloNoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "pan flute"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
 \meloNote
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B21. NOTES PIANO HAUT VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoHautI = \relative do'' {

%--------------------------------------------------------------------- 1-5: une seule voix
 \oneVoice
 sol16([ sib sol sib sol sib]
 sol16[ do sol do sol do])
 do16([ fa, do' fa, sib fa])
 mib'4.(
 <sib mib sib'>4.) \break
%--------------------------------------------------------------------- 6-7: VOIX 1
 \voiceOne
 sib'4. ~
 sib8
%--------------------------------------------------------------------- 7-9: une seule voix
 \oneVoice
      sol,16[( sib sol sib)]
 sol16([ sib sol sib sol sib]
 sol16[ do sol do sol do])
%--------------------------------------------------------------------- 10-11: VOIX 1
 \voiceOne
 mib4( re8
 mib4.) \break
%--------------------------------------------------------------------- 12-13: une seule voix
 \oneVoice
 sol,16[ sib sol sib sol sib]
 sol16[ do sol do sol do]
%--------------------------------------------------------------------- 14-15: VOIX 1
 \voiceOne
 mib4( re8
 mib4.)
%--------------------------------------------------------------------- 16-25: une seule voix
 \oneVoice
 <solb, la>16[ do <solb la> do <solb la> do]
 fa,16[ do' fa, do' fa, sib] \break
 <mib, solb>16[ la <mib solb> do' <mib, fa> la]
 <re, fa>16[ sib' <re, fa> sib' fa sib]
 <solb la>16[ do <solb la> do <solb la> do]
% 21
 fa,16[ do' fa, do' fa, sib]
 mib,16[ lab! mib lab mib lab] \break
 sol!16[ mib sol mib sol mib]
 re16[ fa re fa re fa]
 mib4.
%--------------------------------------------------------------------- 26-30: VOIX 1
 \voiceOne
 re16([ lab' dob,_> fa sib, re]
 mib16[ sol do,! mib sib mib])
 re16([ lab' dob,_> fa sib, re]) \break
 \BEAMPOS #'(3.4 . 4.4) mib16\([ fa sol lab \grace { \BEAMPOS #'(2.1 . 2.4) sib16_([ do] } sib16.) la32]\)
 sib4.
%--------------------------------------------------------------------- 31-32: une seule voix
 \oneVoice
 sol16[ sib sol sib sol sib]
 sol16[ do sol do sol do]
%--------------------------------------------------------------------- 33-34: VOIX 1
 \voiceOne
 mib4( re8
 mib4.) \break
%--------------------------------------------------------------------- 35-36: une seule voix
 \oneVoice
 sol,16[ sib sol sib sol sib]
 sol16[ do sol do sol do]
%--------------------------------------------------------------------- 37-38: VOIX 1
 \voiceOne
 mib4( re8
 mib4.)
%--------------------------------------------------------------------- 39-48: une seule voix
 \oneVoice
 <solb, la>16[ do <solb la> do <solb la> do]
 fa,16[ do' fa, do' fa, sib] \break
 <mib, solb>16[ la <mib solb> do' <mib, fa> la]
 <re, fa>16[ sib' <re, fa> sib' fa sib]
 <fa la>16->[ do' <fa, la> do' <fa, la> do']
 fa,16[ do' fa, do' fa, sib]
% 45
 mib,16[ lab! mib lab mib lab]
 sol16[ mib sol mib sol mib] \break
 re16[ fa re fa re fa]
 mib4.
%--------------------------------------------------------------------- 49-53: VOIX 1
 \voiceOne
 re16([ lab' dob, fa sib, re]
 mib[ sol do,! mib sib mib])
 re([ lab' dob,_> fa sib, re])
 \BEAMPOS #'(3.4 . 4.4) mib16\([ fa sol lab \grace { \BEAMPOS #'(2.1 . 2.4) sib16_([ do] } sib16.->) la32]\) \break
 sib4.
%--------------------------------------------------------------------- 54-55: une seule voix
 \oneVoice
 sol16([ sib sol sib sol sib])
 solb16[ dob solb dob solb dob]
%--------------------------------------------------------------------- 56-58: VOIX 1
 \voiceOne
 reb4.
 \IGNORECOLL \NOTEHSHIFT  #-2 mib4. \break
 \IGNORECOLL \NOTEHSHIFT  #-2 fa4.
%--------------------------------------------------------------------- 59-65: une seule voix
 \oneVoice
 \set doubleSlurs = ##t <sol,! reb' mib sol!>4.(
 <lab do! mib lab>4.) \set doubleSlurs = ##f
 R4.
 mib16[ lab mib lab mib lab]
 sol16[ mib sol mib sol mib]
 re16[ fa re fa re fa]( \break
 mib4.)
%--------------------------------------------------------------------- 66: VOIX 1
 \voiceOne
 \BEAMPOS #'(3.4 . 4.4) fa16\([ sol lab la \grace { \BEAMPOS #'(2.1 . 2.4) sib16_([ do] } sib16.->) la32]\)
%--------------------------------------------------------------------- 67-69: une seule voix
 \oneVoice
 <mib sib'>4.
 sol16([ sib sol sib sol sib])
 solb16[ dob solb dob solb dob] \break
%--------------------------------------------------------------------- 70-72: VOIX 1
 \voiceOne
 reb4.
 \IGNORECOLL \NOTEHSHIFT  #-2 mib4.
 \IGNORECOLL \NOTEHSHIFT  #-2 fa4.
%--------------------------------------------------------------------- 73-78: une seule voix
 \oneVoice
 \set doubleSlurs = ##t <sol,! reb' mib sol!>4.(
 <lab do! mib lab>4.) \set doubleSlurs = ##f
 R4.
 R4. \break
 \PSLURPOS #'(-1 . 1) mib'16\([ fa sol lab  \grace { \stemUp  sib16[ do] } \stemNeutral sib16.-> la32]\)
 <re, sib'>4.(
%--------------------------------------------------------------------- 79: VOIX 1
 \voiceOne
 mib8) s4
%--------------------------------------------------------------------- 80-82: une seule voix
 \oneVoice
 \set doubleSlurs = ##t <re, fa sib>4.(
 \set doubleSlurs = ##f <mib sol sib>4) ^( sol8
 <sol, sib mib>4.)
 \bar "||"
}
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B22. NOTES PIANO HAUT VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoHautII = \relative do'' {

%--------------------------------------------------------------------- 1-5: une seule voix
 \voiceTwo
 s4.*5
%--------------------------------------------------------------------- 6-7: VOIX 2
 mib8[ re16 do re8]
 mib8 s4
%--------------------------------------------------------------------- 8-9: une seule voix
 s4.*2
%--------------------------------------------------------------------- 10-11: VOIX 2
 sol,16[ sib sol sib lab sib]
 sol16[ sib sol sib sol sib]
%--------------------------------------------------------------------- 12-13: une seule voix
 s4.*2
%--------------------------------------------------------------------- 14-15: VOIX 2
 sol16[ sib sol sib lab sib]
 sol16[ sib sol sib sol sib]
%--------------------------------------------------------------------- 16-25: une seule voix
 s4.*10
%--------------------------------------------------------------------- 26-30: VOIX 2
 lab,4.
 mib'8[ do!_> sib]
 lab4.
 sol4 r8
 mib'16_([ sol mib sol mib sol])
%--------------------------------------------------------------------- 31-32: une seule voix
 s4.*2
%--------------------------------------------------------------------- 33-34: VOIX 2
 sol16[ sib sol sib lab sib]
 sol16[ sib sol sib sol sib]
%--------------------------------------------------------------------- 35-36: une seule voix
 s4.*2
%--------------------------------------------------------------------- 37-38: VOIX 2
 sol16[ sib sol sib lab sib]
 sol16[ sib sol sib sol sib]
%--------------------------------------------------------------------- 39-48: une seule voix
 s4.*10
%--------------------------------------------------------------------- 49-53: VOIX 2
 re,8[ dob_> sib]
 mib8[ do!_> sib]
 lab4.
 sol4 r8
 mib'16_([ sol mib sol mib sol])
%--------------------------------------------------------------------- 54-55: une seule voix
 s4.*2
%--------------------------------------------------------------------- 56-58: VOIX 2
 dob16[ solb dob solb sib solb]
 solb16[ mib solb mib solb mib]
 sib'16[ fa sib fa sib fa]
%--------------------------------------------------------------------- 59-65: une seule voix
 s4.*7
%--------------------------------------------------------------------- 66: VOIX 2
 re4.
%--------------------------------------------------------------------- 67-69: une seule voix
 s4.*3
%--------------------------------------------------------------------- 70-72: VOIX 2
 dob'16[ solb dob solb sib solb]
 solb16[ mib solb mib solb mib]
 sib'16[ fa sib fa sib fa]
%--------------------------------------------------------------------- 73-78: une seule voix
 s4.*6
%--------------------------------------------------------------------- 79: VOIX 2
 \PSLURPOS #'(-1 . 1) mib16^\([ fa sol lab \grace { \stemUp sib16[ do] } \stemNeutral sib16. la32]\)
%--------------------------------------------------------------------- 80-82: une seule voix
 s4.*3
}

 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B23. NOTES PIANO HAUT VOIX 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoHautIII = \relative do'' { \voiceThree
%--------------------------------------------------------------------- 1-56 ----
 s4.*56
%--------------------------------------------------------------------- 57-58: VOIX 3
 \NOTEHSHIFT  #2 reb4 dob8
 \NOTEHSHIFT  #2 mib4 re!8
%--------------------------------------------------------------------- 59-70 ----
 s4.*12
%--------------------------------------------------------------------- 71-72: VOIX 3
 \NOTEHSHIFT  #2 reb4( dob8)
 \NOTEHSHIFT  #2 mib4( re!8)
%--------------------------------------------------------------------- 73-82 ----
 s4.*10
}

%%%%%%%%%%%%%%%%%%%% COMBINAISON DES VOIX
pianoHautNote = {
 <<
  \context Voice = hautI   { \pianoHautI }
  \context Voice = hautIII { \pianoHautIII }
  \context Voice = hautII  { \pianoHautII }
 >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
pianoHautNotePart = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \pianoHautNote
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
pianoHautNoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "acoustic grand"
 \pianoHautNote
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B3. NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B31. NOTES PIANO BAS VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBasI = \relative do' {
 
%--------------------------------------------------------------------- 1-3: une seule voix
 \oneVoice
 \clef treble
 mib8[ mib8. mib16]
 mib4.
 re4.
%--------------------------------------------------------------------- 4-6: VOIX 1
 \voiceOne
 sib'16[ mib, sib' mib, lab mib]
 lab16[ mib lab mib sol mib]
 \NOTEHSHIFT  #2 fa16[ lab fa lab fa lab]
%--------------------------------------------------------------------- 7-23: une seule voix
 \oneVoice
 <mib sol sib>8  r8 r8 \clef bass
 mib8[ mib8. mib16]
 mib4.
 \set doubleSlurs = ##t <sol, mib'>4( <sib fa'>8) \set doubleSlurs = ##f
 mib4.
 mib8[ mib8. mib16]
 mib4.
% 14
 \set doubleSlurs = ##t <sol, mib'>4( \set doubleSlurs = ##f <sib fa'>8) (
 mib4.)
 mib8[ mib8. mib16](
 re4.)
 do8([ la fa])
 sib4( re8)
% 20
 mib8[ mib8. mib16](
 re4.)
 do4.(
 sib4.)
%--------------------------------------------------------------------- 24-28: VOIX 1
 \voiceOne
 lab4.
 sol16[ sib sol sib sol sib]
 re,8([ dob sib])
 \IGNORECOLL \NOTEHSHIFT  #-2 sol'4.
 re8([ dob sib])
%--------------------------------------------------------------------- 29-46: une seule voix
 \oneVoice
 <mib, sib' mib>4 r8
 s4.
 mib''8[ mib8. mib16]
% 32
 mib4.
 \set doubleSlurs = ##t <sol, mib'>4( <sib fa'>8) \set doubleSlurs = ##f
 mib4.
 mib8[ mib8. mib16]
 mib4.
 \set doubleSlurs = ##t <sol, mib'>4( <sib fa'>8) \set doubleSlurs = ##f
% 38
 mib4.
 mib8[ mib8. mib16](
 re4.)
 do8([ la fa]
 sib4)( re8)
 mib8[ mib8. mib16](
% 44
 re4.)
 do4.(
 sib4.)
%--------------------------------------------------------------------- 47-52: VOIX 1
 \voiceOne
 lab4.(
 sol16)[ sib sol sib sol sib]
 \BEAMPOS #'(3.4 . 2.4) \NOTEHSHIFT  #2 re,8([ dob sib])
 \NOTEHSHIFT  #2 mib8_([ do! sib])
 re8_([ dob sib])
 <sib mib>4
%--------------------------------------------------------------------- 52-63: une seule voix
 \oneVoice
            r8
 s4.
 mib'8[ mib8. mib16]
 mib4.
% 56
 <solb, reb'>4.
 <dob, solb' dob>4.
 <sib fa' sib>4.
 \set doubleSlurs = ##t <mib, sib' mib>4.(
 <lab, lab'>4.) \set doubleSlurs = ##f
 R4.
 do''4.(
% 63
 sib4.)
%--------------------------------------------------------------------- 64-67: VOIX 1
 \voiceOne
 lab4.
 sol16[ sib sol sib sol sib]
 lab16[ sib lab sib lab sib]
 sol16[ sib sol sib sol sib]
%--------------------------------------------------------------------- 68-75: une seule voix
 \oneVoice
 mib8[ mib8. mib16]
% 69
 mib4.
 <solb, reb'>4.
 <dob, solb' dob>4.
 <sib fa' sib>4.
 \set doubleSlurs = ##t <mib, sib' mib>4.(
 <lab, lab'>4.) \set doubleSlurs = ##f
 R4. \clef treble
%--------------------------------------------------------------------- 76-81: VOIX 1
 \voiceOne
 mib'''16[ lab mib lab mib lab]
 sol16[ mib sol mib sol mib]  \clef bass
 lab,16[ sib lab sib lab sib]
 sol16[ sib sol sib sol sib]
 lab16[ sib lab sib lab sib]
 sol16([ sib sol sib mib sib])
%--------------------------------------------------------------------- 82: une seule voix
 \oneVoice
 <mib, sib' mib>4.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B32. NOTES PIANO BAS VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBasII = \relative do' {

%--------------------------------------------------------------------- 1-3: une seule voix
 \voiceTwo
 \clef treble
 s4.*3
%--------------------------------------------------------------------- 4-6: VOIX 2
 do4.
 sib4.
 \NOTEHSHIFT  #2 sib4.
%--------------------------------------------------------------------- 7-23: une seule voix
 s4.*17
%--------------------------------------------------------------------- 24-28: VOIX 2
 sib,4.
 mib,4.
% 26
 mib4.
 \NOTEHSHIFT  #-1 mib4.
 mib4.
%--------------------------------------------------------------------- 29-46: une seule voix
 s4.*18
%--------------------------------------------------------------------- 47-52: VOIX 2
 sib'4.(
 mib,4.) ~
 \NOTEHSHIFT  #2 mib4. ~
% 50
 \NOTEHSHIFT  #2 mib4. ~
 mib4. ~
 mib4 s8
%--------------------------------------------------------------------- 53-63: une seule voix
 s4.*11
%--------------------------------------------------------------------- 64-67: VOIX 2
 sib'4.(
 mib,4.)
 mib'4.
 mib4.
%--------------------------------------------------------------------- 68-75: une seule voix
 s4.*8 \clef treble
%--------------------------------------------------------------------- 76-81: VOIX 2
 do'4.(
 sib4.)  \clef bass
 sib,4.
 mib4.
 mib4.
 mib4.
%--------------------------------------------------------------------- 82: une seule voix
 s4.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B33. NOTES PIANO BAS VOIX 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBasIII = \relative do' { \voiceThree
%--------------------------------------------------------------------- 1-5 ----
 s4.*5
%--------------------------------------------------------------------- 6: VOIX 3
 \DOTEXO #'(-2 . 0) sib'4.
%--------------------------------------------------------------------- 7-48 ----
 s4.*42
%--------------------------------------------------------------------- 49-50: VOIX 3
 \DOTEXO #'(-2 . 0) lab,4.
 \DOTEXO #'(-2 . 0) sol4.
%--------------------------------------------------------------------- 51-82 ----
 s4.*32
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B34. NOTES PIANO BAS VOIX 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBasIV = \relative do' { \voiceFour
%--------------------------------------------------------------------- 1-26 ----
 s4.*26
%--------------------------------------------------------------------- 27: VOIX 4
 \NOTEHSHIFT  #1 mib,8^([ do! sib])
%--------------------------------------------------------------------- 28-82 ----
 s4.*55
}

%%%%%%%%%%%%%%%%%%%% COMBINAISON DES VOIX
pianoBasNote = {
 <<
  \context Voice = basI   { \pianoBasI }
  \context Voice = basIII { \pianoBasIII }
  \context Voice = basII  { \pianoBasII }
  \context Voice = basIV  { \pianoBasIV }
 >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
pianoBasNotePart = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 \pianoBasNote
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
pianoBasNoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "acoustic grand"
 \pianoBasNote
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. DYNAMIQUES PARTITION MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

meloDynPart = {
% 1-60
 s4.*60
% 61
 s4.^\PAUSEun
% 62-74
 s4.*13
% 75
 s4.^\PAUSEdeux
% 76
 \DYNEXO #'(1 . 0) s4. ^\pp
% 77-82
 s4.*6
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. DYNAMIQUES PARTITION PIANO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynPart = {
 \override DynamicTextSpanner #'dash-period = #-1.0

% 1
 s4. \pp
% 2
 s4.*3
% 5
 s4 \cr s16 s16 \!
 s4 \decr s16 s16 \!
 s4.
% 8
 \DYNEXO #'(2 . 0) s4. \pp
% 9
 s4.*30
% 39
 \PINEXO #'(1.5 . 0) s8 \decr s8 s8 \!
 s4.
% 41
 s4.*2
% 43
 \PINEXO #'(1.5 . 0) s8 \decr s8 s8 \!
 s4.
% 45
 s4.*12
% 57
 s8 \setTextCresc s8 \cr s8
 s4. \!
 s4. \f
 s4.
% 61
 s4.-\PAUSEtrois
% 62
 \DYNEXO #'(2 . 0) s4. \pp
% 63
 s4.*7
% 70
 s8 \setTextCresc s8 \cr s8
 s4. \!
% 72
 \PINEXO #'(1.5 . 0) s8 \cr s8 s8 \!
 s4. \f \decr
 s4 s8 \!
 s4.-\PAUSEquatre
% 76
 \DYNEXO #'(2 . 0) s4. \pp
% 77-82
 s4.*6
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DYNAMIQUES SUPPLÉMENTAIRES POUR LA PORTÉE DU HAUT

pianoHautDynPart = {
% 1
 s4.*25
% 26
 s4. ^\pp
% 27-82
 s4.*56
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. DYNAMIQUES POUR MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D1. DYNAMIQUES MIDI MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

meloDynMidi = {
% 1
 s4.*7
% 8
 s4. \pp
% 9-75
 s4.*67
% 76
 s4.
% 77-82
 s4.*6
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D2. DYNAMIQUES MIDI PIANO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynMidi = {
% 1
 s4. \pp
% 2
 s4.*3
% 5
 s4. \cr
 s4. \! \mf \decr
 s4. \! \p
% 8
 s4. \pp
% 9
 s4.*22
% 31
 s4.*6
% 37
 s4. \cr
 s4.
% 39
 s4. \! \mp \decr
 s4. \! \pp
% 41
 s4. \cr
 s4.
% 43
 s4. \! \mp \decr
 s4. \! \pp
% 45
 s4.*12
% 57
 s8 s4 \cr
 s4.
 s4. \! \f
 s4.*2
% 62
 s4. \pp
% 63
 s4.*7
% 70
 s8 s4 \cr
 s4.
 s4.
 s4. \! \f \decr
 s4. \!
 s4.
% 76
 s4. \pp
% 77-82
 s4.*6
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           E. SORTIE PARTITION (pas de \midi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
 <<
  \new Voice = "mel" << \meloDynPart \meloNotePart >>
  \new Lyrics \lyricsto "mel" \poeme
  \new PianoStaff <<
   \new Staff = "up" << \pianoHautDynPart \pianoHautNotePart >>
   \new Dynamics = "dynamics" \pianoDynPart
   \new Staff = "down" << \pianoBasNotePart >>
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
%   \override TextScript #'font-shape = #'italic

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
%                                           F. SORTIE MIDI (pas de \layout)
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
SILENCE = { \KEYTIME s4. }

\score {
 <<
  \new Voice = "mel"   { \SILENCE << \meloNoteMidi \meloDynMidi >> }
  \new PianoStaff <<
   \new Staff = "up"   { \SILENCE << \pianoHautNoteMidi \pianoDynMidi >> }
   \new Staff = "down" { \SILENCE << \pianoBasNoteMidi \pianoDynMidi >> }
  >>
 >>
 \midi {
	\context {
  \Score
% CHANGEMENT DU VOLUME DE SORTIE MIDI
   dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
	 tempoWholesPerMinute = #(ly:make-moment 50 8)
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                         FIN DU FICHIER SchubertF-D776.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
