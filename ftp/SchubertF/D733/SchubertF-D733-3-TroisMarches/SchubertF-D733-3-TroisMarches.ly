%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D733-3-3Marches.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                              FRANZ SCHUBERT: "Trois Marches militaires", für Klavier zu 4 Händen
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                              3. Allegro moderato in Es-Dur
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.57"
\include "italiano.ly"


\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")

line-width = 186\mm
#(define left-margin (/ (- paper-width  (* 186 mm)) 2))
ragged-last-bottom = #f
oddHeaderMarkup  = \markup \fontsize #2 \fill-line {
  " " { \italic "♫  Franz Schubert: Trois Marches militaires (D.733-3)  ♫" }  \fromproperty #'page:page-number-string }
evenHeaderMarkup = \markup \fontsize #2 \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Trois Marches militaires (D.733-3)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
% MUTOPIA
 mutopiatitle = "Trois Marches militaires"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.733-3 (Op. 51)"
 mutopiainstrument = "Piano"
 date = "1818"
 source = "Breitkopf & Härtel"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1547"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  Ordre de la sortie Partition: Secondo en continu, puis Primo en continu
%  Le titre devant être présenté sur la première page du Secondo et du Primo, il a été totalement remplacé par
%  3 \markup identifiés par \ENTETEA, \ENTETEB et \ENTETEC
%  Sur toutes les pages les portées ont les mêmes mesures en vis-à-vis.
%  Les sauts de page sont gérés manuellement, de même que les sauts de portée en cas de besoin.
%
%  La partition a été divisée en six parties en raison des reprises, qui sont gérées manuellement (Midi oblige)
%  - Première partie  A: pas de reprise
%  - Deuxième partie  B: BA, 1 DE LA REPRISE DE BB, 2 DE LA REPRISE DE BC
%  - Troisième partie C: CA, 1 DE LA REPRISE DE CB, 2 DE LA REPRISE DE CC
%  - Quatrième partie D: pas de reprise
%  - Cinquième partie E: EA, 1 DE LA REPRISE DE EB, 2 DE LA REPRISE DE EC
%  - Sixième   partie F: FA, 1 DE LA REPRISE DE FB, 2 DE LA REPRISE DE FC
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. NOTES SECONDO: A1. PIANO HAUT  A2. PIANO BAS
%  B. NOTES PRIMO  : B1. PIANO HAUT  B2. PIANO BAS
%  C. DYNAMIQUES PARTITION: C1. SECONDO  C2. PRIMO
%  D. DYNAMIQUES MIDI     : D1. SECONDO  D2. PRIMO
%  E. SORTIE PARTITION
%  F. SORTIE MIDI
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TONALITE ET MESURE
KEYTIME  = { \key mib \major \time 4/4 }
KEYTIMEB = { \key lab \major \time 4/4 }
%----- MOUVEMENT
%----- INSTRUMENTS
MOVEMENT = \markup { \bold \large  { \hspace #-5 "Allegro moderato." } }
ISECONDO = {
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
}
IPRIMOHAUT = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
}
IPRIMOBAS = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
%----- MARKUP
ENTETEA = \markup { \fill-line { \column { \center-column {
 \fontsize #6 \bold "Trois Marches militaires" " "
 \fontsize #3 \bold "D.733 (Op. 51.)" " "
 \fontsize #2 "für Klavier zu 4 Händen"
 } } } }
ENTETEB =  \markup { \fill-line { " "  { \column \center-align {
 \fontsize #4 \bold "Franz Schubert" \fontsize #2 "(1797-1828)" " " \fontsize #1.5 "D.733 (Op. 51 No3, 1818)" " "
 } } } }
ENTETEC = \markup { \fill-line { \column { \center-column {
 \fontsize #4 \bold "3. Allegro moderato in Es-Dur" " "
 } } } }

PRIMO    = \markup { \fill-line { \column { \center-column { \bold \fontsize #2 "Primo" " " " " } } } }
PRIMOB   = \markup { \fill-line { \column { \center-column { \bold \fontsize #2 "Primo                     " " " " " } } } }
SECONDO  = \markup { \fill-line { \column { \center-column { \bold \fontsize #2 "Secondo" " " " " } } } }
SECONDOB = \markup { \fill-line { \column { \center-column { \bold \fontsize #2 "Secondo                      " " " " " } } } }
FINE   = \markup { \bold \large "Fine" }
TRIO   = \markup { \hspace #-5 \bold \large "Trio" }
DACAPO = \markup { \bold \large "Marcia D.C." }
SFORZATO = \markup { \musicglyph #"scripts.sforzato" }
CLEFBASS   = \markup { \musicglyph #"clefs.F_change" }
CLEFTREBLE = \markup { \musicglyph #"clefs.G_change" }
%----- OCTAVES: DEBUT ET FIN
OCTAVEBEG = { #(set-octavation 1) \set Staff.ottavation = #"8" }
OCTAVEEND = #(set-octavation 0)
%----- CRESCENDOS
CRESC     = { \set crescendoText   = \markup { \bold \italic "cresc." }   \set crescendoSpanner = #'dashed-line }
CRESCB    = \markup { \bold \italic "cresc." }
%----- DEPLACER UNE DYNAMIQUE OU MODIFIER SON LIBELLE
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
%----- SCRIPT / MARKUP
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
TSCREXOB =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \override TextScript #'extra-offset = #$beg-end #})


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. SECONDO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A1. SECONDO NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
secHautA = \relative do' {
%--- 1
\clef treble sib4.. sib16 sib4.. sib16
<sib fa'>8[ <sib fa'>16 <sib fa'>] <sib fa'>8[ <sib fa'>] <sib fa'>[ <sib fa'> <sib fa'> <sib fa'>]
<lab sib re fa>8[ <lab sib re fa>16 <lab sib re fa>] <lab sib re fa>8[ <lab sib re fa>] <lab sib re fa>[ <lab sib re fa> <lab sib re fa>8.]
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
secHautBA = \relative do' {
%--- 3 suite
\bar "|:" r16 \break
r8 <sol sib mib>16[ <sol sib mib>] <sol sib mib>4 r8 <sol sib mib>16[ <sol sib mib>] <sol sib mib>4
r8 <sib re fa lab>16[ <sib re fa lab>] <sib re fa lab>8[ <sib re fa lab>] <sib re fa lab>2
%--- 6
r8 <sib mib sol>16[ <sib mib sol>] <sib mib sol>4 r8 <sol sib mib>16[ <sol sib mib>] <sol sib mib>4 \clef bass
r8 <fa sib re>16[ <fa sib re>] <fa sib re>8[ <lab sib re>] <sol sib>2 \break
r8 <sol sib mib>16[ <sol sib mib>] <sol sib mib>4 r8 <sol sib mib>16[ <sol sib mib>] <sol sib mib>4
r8 \clef treble <sib re fa lab>16[ <sib re fa lab>] <sib re fa lab>8[ <sib re fa lab>] <sib re fa lab>2
r8 <sib mib sol>16[ <sib mib sol>] <sib mib sol>4 r8 <sib reb mi>16[ <sib reb mi>] <sib reb mi>4 \clef bass \pageBreak
%--- 11
<fa sib re! fa>8.^\SECONDOB [ <fa la do>16 <fa sib re>8. <fa do' mib!>16] <fa sib re>8 fa'16[ fa] fa8[ fa]
r8 <fa, do' mib fa>-. <fa do' mib fa>4_> r8 <fa sib re>-. <fa sib re fa>4_>
<< { <mib' fa>4 } \\ { fa,8([ do']) } >> <la mib' fa>8-.[ <fa mib' fa>-.] <fa sib re fa> fa'16[ fa] fa8[ fa] \break
r8 <fa, do' mib fa> <fa do' mib fa>4_> r8 <fa sib re> <fa sib re fa>4_>
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
secHautBB = \relative do' {
%--- 15
\set Score.repeatCommands = #'((volta "1")) 
\partial 2... << { <mib fa>4 } \\ { fa,8([ do']) } >> <la mib' fa>8-.[ <fa mib' fa>-.] \TSCREXO #'(2.9 . 6) <fa sib re fa>4.._\CLEFTREBLE
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
secHautBC = \relative do' {
%--- 16
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2"))
<< { <mib fa>4 } \\ { fa,8([ do']) } >> <la mib' fa>8-.[ <fa mib' fa>-.] <fa sib re fa>4.
\set Score.repeatCommands = #'((volta #f)) 
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
secHautCA = \relative do {
%--- 16 suite
\bar "|:" \partial 8 <sib sib'>8
<dob dob'>8.[ <dob dob'>16] <dob dob'>2 ~ <dob dob'>8[ <sib sib'>-.] \break   \set Score.currentBarNumber = #18
<dob dob'>8.[ <dob dob'>16] <dob dob'>2. \set Score.currentBarNumber = #19
<solb' dob mib>8.[ <solb dob mib>16 <solb dob mib>8 <solb dob mib>] r8 <solb dob mib>[ <solb dob mib> <solb dob mib>]
r8 <solb reb' fab>8[ <solb reb' fab> <solb reb' fab>] r8 <solb dob mib>8[ <solb dob mib> <solb sib fab'>] \break
%--- 21
<solb dob mib>8.[ <solb dob mib>16 <solb dob mib>8 <solb dob mib>] r8 <solb dob mib>[ <solb dob mib> <solb dob mib>]
r8 <solb reb' fab>8[ <solb reb' fab> <solb reb' fab>] r8 <solb dob mib>8[ <solb dob mib> mib]
mib8.[ mib16-. mib8-. fa!-.] solb-.[ fa-. solb-. lab-.] \pageBreak
sib8^\SECONDOB [ sib16 sib] sib8[ sib] solb8.[ sib16 solb8. mib16]
sib8 sib'16[ sib] sib8[ sib] solb8.[ sib16 solb8. mib16]
%--- 26
sib8[ <sib sib'>16 <sib sib'>] <sib sib'>8[ <sib sib'>] <sib sib'>4.. r16
r8 \clef treble <sol' sib mib>16[ <sol sib mib>] <sol sib mib>4 r8 <sol sib mib>16[ <sol sib mib>] <sol sib mib>4 \break
r8 <sib re fa lab>16[ <sib re fa lab>] <sib re fa lab>8[ <sib re fa lab>] <sib re fa lab>2
r8 <sib mib sol>16[ <sib mib sol>] <sib mib sol>4 r8 <sol sib mib>16[ <sol sib mib>] <sol sib mib>4
r8 <fa sib re>16[ <fa sib re>] <fa sib re>8[ <lab sib re>] <sol sib>2
%--- 31
r8 <sol sib mib>16[ <sol sib mib>] <sol sib mib>4 r8 <sol sib reb mib>16[ <sol sib reb mib>] <sol sib reb mib>4 \break
r8 <lab do mib>16[ <lab do mib>] <lab do mib>8[ <do mib lab>] <la mib' solb>4. <la mib' solb>8
<sib mib sol!>8.[ <sib re fa>16 <sib mib sol>8. <sib fa' lab>16] <sib mib sol>8 sib'16[ sib] sib8[ sib]
r8 <sib, fa' lab sib> <sib fa' lab sib>4 r8 <sib mib sol> <sib mib sol sib>4
<< { <lab' sib>4 <lab sib>8-.[ <lab sib>-.] sib8[ sib16 sib] sib8[ sib] } \\ { sib,8[( fa') re sib] <mib sol>4 s4 } >> \break
%--- 36
r8 <sib fa' lab sib> <sib fa' lab sib>4 r8 <sib mib sol> <sib mib sol sib>4
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
secHautCB = \relative do'' {
%--- 37
\set Score.repeatCommands = #'((volta "1")) 
\partial 2.. << { <lab sib>4 <lab sib>8[ <lab sib>] } \\ { sib,8[( fa') re-. sib-.] } >> \TSCREXO #'(2.2 . 4.7) <mib sol sib>4._\CLEFBASS
 \set Score.currentBarNumber = #38
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
secHautCC = \relative do'' {
%--- 38
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) 
<< { <lab sib>4 <lab sib>8[ <lab sib>] } \\ { sib,8[( fa') re-. sib-.] } >> <mib sol sib>8 mib16-.[ mib-.] mib8-.[ reb-.] \clef bass
\set Score.repeatCommands = #'((volta #f)) 
dob8[ dob16 dob] dob8[ dob] dob8[ dob16 dob] dob8[ dob]  \pageBreak
sib8^\SECONDOB [ sib16 sib] sib8[ sib] lab8[ lab16 lab] lab8[ lab]
%--- 41
sol!8.[ sol16 lab8. lab16] sib8.[ sib16 sib8. sib16]
sol8 <mib mib'>16[ <mib mib'>] <mib mib'>8[ <mib mib'>] <mib mib'>[ <mib mib'> <mib mib'> <reb reb'>] \break
<dob dob'>8[ <dob dob'>16 <dob dob'>] <dob dob'>8[ <dob dob'>] <dob dob'>8[ <dob dob'>16 <dob dob'>] <dob dob'>8[ <dob dob'>] 
<sib sib'>8 [ <sib sib'>16 <sib sib'>] <sib sib'>8[ <sib sib'>] <lab lab'>8[ <lab lab'>16 <lab lab'>] <lab lab'>8[ <lab lab'>] 
<sol sol'>8.[ <sol' mib'>16 <lab mib'>8. <lab mib'>16] <sib mib>8.[ sib16 sib8. sib16] \break
%--- 46
sol8[ sib16 sib] sib8[ <fa sib re>] <sol sib mib>[ sib16 sib] sib8[ <fa sib re>]
<sol sib mib>8 mib16[ mib] mib8[ mib] mib2
\bar "||" 
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
secHautD = \relative do' {
\KEYTIMEB
%--- 48
\clef treble <do mib>8^\TRIO [ <do mib> <do mib> <do mib>] <do mib>8[ <do mib> <do mib> <do mib>] \break
}

%%%%%%%%%%%%%%%%%%%% PARTIE E
secHautEA = \relative do' {
%--- 49
\bar "|:"  <reb mib>8[ <reb mib> <reb mib> <reb mib>] <reb mib>8[ <reb mib> <reb mib> <reb mib>]
do8[ <do mib> <do mib> <do mib>] <do mib>8[ <do mib> <do mib> <do mib>]
%--- 51
<reb mib>8[ <reb mib> <reb mib> <reb mib>] <reb mib>8[ <reb mib> <sib mib> <sib mib>]  \pageBreak
<do mib>8^\SECONDOB [ <do mib> <reb fa> <reb fa>] <do mib>[ <do mib> <do mib> <do mib>]
<reb mib>8[ <reb mib> <reb mib> <reb mib>] <reb mib>8[ <reb mib> <reb mib> <reb mib>]
<do mib>8[ <do mib> <do mib> <do mib>] <do mib>8[ <do mib> <do mib> <do mib>] \break
<sib re lab'>8[ <sib re lab'> <sib re lab'> <sib re lab'>] <sib re lab'>8[ <sib re lab'> <sib re lab'> <sib re lab'>]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE E
secHautEB = \relative do' {
%--- 56
\set Score.repeatCommands = #'((volta "1")) 
<sib mib sol>8[ <sib mib sol> <fa' lab> <sib, re lab'>] <sib mib sol>8[ <sib mib sol> <sib mib sol> <sib mib sol>] \break
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE E
secHautEC = \relative do' {
%--- 57
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) 
<sib mib sol>8[ <sib mib sol> <fa' lab> <sib, re lab'>] <sib mib sol>8[ <sib mib sol> <lab mib' solb> <lab do solb'>]
\set Score.repeatCommands = #'((volta #f)start-repeat) 
}

%%%%%%%%%%%%%%%%%%%% PARTIE F
secHautFA = \relative do' {
%--- 58
<lab reb fa>8[ <lab reb> <lab reb> <lab reb>] <lab reb>[ <lab reb> <lab reb fa> <lab reb fa>]
<lab reb>8[ <lab reb> <lab reb> <lab reb>] <lab reb>[ <lab reb> <lab reb fa> <lab reb fa>] \break
<lab do mib solb>8[ <lab do mib solb> <lab do mib solb> <lab do mib solb>] <lab reb fa>[ <lab mib'> <lab reb> <lab reb fa>]
%--- 61
<lab do mib>8([ <fa lab reb> <lab do mib> <reb fa>]) <lab do mib>[ do <sib reb> <do mib>]
<lab reb fa>8[ <lab reb> <lab reb> <lab reb>] <lab reb>[ <lab reb> <lab reb fa> <lab reb fa>]  \pageBreak
<lab reb>8^\SECONDOB [ <lab reb> <lab reb> <lab reb>] <lab reb>[ <lab reb> <lab reb fa> <lab reb fa>]
<lab do fa>8  [ <lab do fa> <lab do fa> <lab do fa>] <sib do mi>[ <sib do mi> <sib do mi> <sib do mi>]
<lab do fa>8[ <lab do fa> <sib do sol'> <sib do mi>] <lab do fa>[ <lab do fa> <lab do fa> <lab do fa>] 
%--- 66
<reb mib!>8[ <reb mib> <reb mib> <reb mib>] <reb mib>8[ <reb mib> <reb mib> <reb mib>]
do8[ <do mib> <do mib> <do mib>] <do mib>8[ <do mib> <do mib> <do mib>]
<reb mib>8[ <reb mib> <reb mib> <reb mib>] <reb mib>8[ <reb mib> <reb mib> <reb mib>]
<do mib>8[ <do mib> <reb fa> <reb fa>] <do mib>8[ <do mib> <do mib> <do mib>]
<do mi sol>8[ <do mi sol> <do mi sol> <do mi sol>] <do mi sol>8[ <do mi sol> <do mi sol> <do mi sol>]
%--- 71
<do fa lab>8[ <do fa lab> <do fa lab> <do fa lab>] <si fa' lab>[ <si fa' lab> <si fa' lab> <si fa' lab>]
<do mib! lab>8[ <do mib lab> <do mib> <do mib>] <sib! reb mib>[ <sib reb mib> <sib reb mib> <sib reb mib>]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE F
secHautFB = \relative do' {
%--- 73
\set Score.repeatCommands = #'((volta "1")) 
<lab do mib>8[ <lab do mib> <sib reb mib> <sol reb' mib>] <lab do mib>[ <lab do lab'>( <lab do sol'> <lab do solb'>)]
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE F
secHautFC = \relative do' {
%--- 74
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) 
<lab do mib>8[ <lab do mib> <sib reb mib> <sol reb' mib>] <lab do mib>[ <lab do mib> <lab do mib>] r8
\set Score.repeatCommands = #'((volta #f)) 
\bar "|."

}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION SECONDO HAUT
notePartSecHaut = {
 \clef bass
 \KEYTIME
 s1*0 ^\MOVEMENT
 \set autoBeaming = ##f
 \secHautA
 \secHautBA \secHautBB \secHautBC
 \secHautCA \secHautCB \secHautCC
 \secHautD
 \secHautEA \secHautEB \secHautEC
 \secHautFA \secHautFB \secHautFC
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI SECONDO HAUT
noteMidiSecHaut = {
 \clef bass
 \KEYTIME
 \ISECONDO
 \secHautA
 \secHautBA \secHautBB \secHautBA \secHautBC
 \secHautCA \secHautCB \secHautCA \secHautCC
 \secHautD
 \secHautEA \secHautEB \secHautEA \secHautEC
 \secHautFA \secHautFB \secHautFA \secHautFC
 \secHautA  \secHautBA \secHautBC \secHautCA \secHautCC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A2. SECONDO NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
secBasA = \relative do {
%--- 1
R1
sib8[ sib16 sib] sib8[ sib] sib8[ sib sib sib]
<sib, sib'>8[ <sib sib'>16 <sib sib'>] <sib sib'>8[ <sib sib'>] <sib sib'>8[ <sib sib'> <sib sib'>8.]
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
secBasBA = \relative do, {
%--- 3 suite
r16
<mib mib'>4 r <mib mib'> r 
<sib sib'>4 r r8 sib'16[ sib] sib8[ sib]
%--- 6
<mib, mib'>4 r <mib mib'> r 
<sib sib'>2 r8 mib'16[ mib] sib8[ sol]
<mib mib'>4 r <mib mib'> r 
<sib sib'>2 r8 sib'16[ sib] sib8[ sib]
<mib, mib'>4 r8 <mib mib'> <solb solb'>4 r8 <solb solb'>
%--- 11
fa8.[ <fa, fa'>16 <fa fa'>8. <fa fa'>16] <sib sib'>4 r
fa'4 r8 fa sib4 r8 sib
fa8[( do') la-. fa-.] sib4 r
fa4 r8 fa sib4 r8 sib
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
secBasBB = \relative do, {
%--- 15
\partial 2... fa8[( do') la-. fa-.] sib4..
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
secBasBC = \relative do, {
%--- 16
fa8[( do') la-. fa-.] sib4.
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
secBasCA = \relative do, {
%--- 16 suite
\partial 8 sib8
dob8.[ dob16] dob2 ~ dob8[ sib-.]
dob8.[ dob16] dob2.
<dob dob'>4 r mib r
solb8-.[ reb'-. sib-. solb-.] dob4 mib,8-.[ solb-.]
%--- 21
<dob, dob'>4 r mib r
solb8-.[ reb'-. sib-. solb-.] dob4 r8 mib,8
<dob dob'>8.[ <dob dob'>16 <dob dob'>8 <dob dob'>] <dob dob'>8[ <dob dob'> <dob dob'> <dob dob'>]
<sib sib'>4 r8 sib'8 solb8.[ sib16 solb8. mib16]
sib4 r8 sib'8 solb8.[ sib16 solb8. mib16]
%--- 26
sol,8[ sol16 sol] sol8[ sol] sol4.. r16
<mib' mib'>4 r <mib mib'> r 
<sib sib'>2 r8 sib'16[ sib] sib8[ sib]
<mib, mib'>4 r <mib mib'> r 
<sib sib'>2 r8 mib'16[ mib] sib8[ sol]
%--- 31
<mib mib'>4 r <mib mib'> r 
<lab, lab'>4 r8 <lab lab'> <dob dob'>4. <dob dob'>8
<sib sib'>8.[ <sib sib'>16 <sib sib'>8. <sib sib'>16] <mib mib'>4 r
sib'4 r8 sib mib4 r8 mib
sib8[( fa') re-. sib-.] mib4 r
%--- 36
sib4 r8 sib mib4 r8 mib
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
secBasCB = \relative do {
%--- 37
\partial 2.. sib8[( fa') re-. sib-.] mib4.
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
secBasCC = \relative do {
%--- 38
sib8[( fa') re-. sib-.] mib8[ mib16-. mib-.] mib8-.[ reb-.]
dob8[ dob16 dob] dob8[ dob] dob8[ dob16 dob] dob8[ dob] 
sib8[ sib16 sib] sib8[ sib] lab8[ lab16 lab] lab8[ lab]
%--- 41
sol!8.[ sol16 lab8. lab16] sib8.[ sib16 sib8. sib16]
mib8 mib,16[ mib] mib8[ mib] mib[ mib mib reb]
dob8[ dob16 dob] dob8[ dob] dob8[ dob16 dob] dob8[ dob] 
sib8[ sib16 sib] sib8[ sib] lab8[ lab16 lab] lab8[ lab]
sol8.[ <sol sol'>16 <lab lab'>8. <lab lab'>16] <sib sib'>8.[ <sib sib'>16 <sib sib'>8. <sib sib'>16] 
%--- 46
<mib mib'>4 r8 <sib sib'> <mib mib'>4 r8 <sib sib'>
<mib mib'>8 mib16[ mib] mib8[ mib] mib2_\FINE
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
secBasD = \relative do {
\KEYTIMEB
%--- 48
<< { r8 mib-.[ do-. lab'-.] r8 mib-.[ do-. lab'-.] } \\ { lab,4 r lab r } >>
}

%%%%%%%%%%%%%%%%%%%% PARTIE E
secBasEA = \relative do {
<< {
%--- 49
r8 mib-.[ reb-. sol-.]  r8 mib-.[ reb-. sol-.]
r8 mib-.[ do-. lab'-.]  r8 mib-.[ do-. lab'-.]
%--- 51
r8 mib-.[ reb-. sol-.]  r8 mib-.[ reb-. sol-.]
r8 mib-.[ reb-. fa-.]   lab-.[ mib-. do-. lab-.]
r8 mib'-.[ reb-. sol-.] r8 mib-.[ reb-. sol-.]
r8 mib-.[ do-. lab'-.]  r8 mib-.[ do-. lab'-.]
r8 fa-.[ sib,-. lab'-.] r8 fa-.[ sib,-. lab'-.]   } \\ {
%--- 49
mib,4 r mib r
lab4  r lab r
%--- 51
mib4  r mib r
lab4  r r2
mib4  r mib r
lab4  r lab r
sib,4 r sib r   } >>
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE E
secBasEB = \relative do' {
%--- 56
<< { r8 sol-.[ sib-. sib,-.] r mib-.[ sib-. sol-.] } \\ { mib4 r mib r } >>
}


%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE E
secBasEC = \relative do' {
%--- 57
<< { r8 sol-.[ sib-. sib,-.] mib,[ mib' do lab] } \\ { mib4 r mib8[ mib' do lab] } >>
}

%%%%%%%%%%%%%%%%%%%% PARTIE F
secBasFA = \relative do {
<< {
%--- 58
r8 reb-.[ lab-. fa'-.]  r8 reb-.[ lab-. fa'-.] 
r8 reb-.[ lab-. fa'-.]  r8 reb-.[ lab-. fa'-.] 
r8 lab,-.[ do-. lab-.]  r8 lab-.[ fa'-. reb-.] 
%--- 61
lab8[ reb lab fa]         lab[ lab'_( sol solb)]
fa8-.[ reb-. lab-. fa'-.] r8 reb-.[ lab-. fa'-.]
r8 reb-.[ lab-. fa'-.]    r8 reb-.[ lab-. fa'-.] 
r8 do-.[ lab-. fa'-.]     r8 do-.[ mi-. do-.] 
fa-.[ lab,-. do-. do,-.]  fa[ lab do fa] 
%--- 66
r8 mib-.[ reb-. sol-.]  r8 mib-.[ reb-. sol-.]
r8 mib-.[ do-. lab'-.]  r8 mib-.[ do-. lab'-.]
r8 mib-.[ reb-. sol-.]  r8 mib-.[ reb-. sol-.]
r8 mib-.[ reb-. fa-.]   lab-.[ mib-. do-. lab-.]
r8 mi'-.[ do-. sol'-.]  r8 mi-.[ do-. sol'-.]
%--- 71
r8 fa-.[ do-. lab'-.]   r8 fa-.[ si,-. lab'-.]
r8 mib-.[ do-. lab'-.]  r8 reb,!-.[ sib!-. mib-.]   } \\ {
%--- 58
reb,4 r reb r
reb4  r reb r
lab4  r reb r
%--- 61
lab4 r r2
reb4 r reb r
reb4 r reb r
do4  r do4 r
fa8-.[ lab-. do-. do,-.] fa4 r
%--- 66
mib4 r mib r
lab4 r lab r
mib4 r mib r
lab4 r r2
do,4 r do4 r
%--- 71
fa4 r re r
mib!4 r mib r      } >>
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE F
secBasFB = \relative do {
%--- 73
<< { lab8[ do mib mib,] lab4 r } \\ {  lab8[ do mib mib,] lab4 s4 } >>
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE F
secBasFC = \relative do {
%--- 74
<< { lab8[ do mib mib,] } \\ { lab8[ do mib mib,] } >> lab8_\DACAPO [ mib lab,] r
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION SECONDO HAUT
notePartSecBas = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 \secBasA
 \secBasBA \secBasBB \secBasBC
 \secBasCA \secBasCB \secBasCC
 \secBasD
 \secBasEA \secBasEB \secBasEC
 \secBasFA \secBasFB \secBasFC
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI SECONDO HAUT
noteMidiSecBas = {
 \clef bass
 \KEYTIME
 \ISECONDO
 \secBasA
 \secBasBA \secBasBB \secBasBA \secBasBC
 \secBasCA \secBasCB \secBasCA \secBasCC
 \secBasD
 \secBasEA \secBasEB \secBasEA \secBasEC
 \secBasFA \secBasFB \secBasFA \secBasFC
 \secBasA  \secBasBA \secBasBC \secBasCA \secBasCC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A3. SECONDO DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
dynPartSecA = {
%--- 1
\DYNEXO #'(0 . -1.5) s1\f
\DYNEXO #'(1 . -1.5) s1\sf
s2...
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
dynPartSecBA = {
%--- 3 suite
s16
s1\f
s1
%--- 6
s1*4
s2 s2\sf
%--- 11
s2 s8 s4.\p
s1*3
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynPartSecBB = {
%--- 15
\partial 2... s2...
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
dynPartSecBC = {
%--- 16
s2..
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
dynPartSecCA = {
%--- 16 suite
\DYNEXO #'(0 . -1.5) s8\f
\DYNEXO #'(0 . -1.5) s1\sf
\DYNEXO #'(0 . -1.5) s1\sf
s1\fp
s1
%--- 21
s1\fp
s1
s1\f
s2 s2\sf
s2 s2\sf
%--- 26
s1
\DYNEXO #'(1 . 0) s1\p
s1*3
%--- 31
\DYNEXO #'(1 . -0.5) s1\f
s2 s2\sf
s2 s8 s4.\p
s1*2
%--- 36
s1
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
dynPartSecCB = {
%--- 37
\partial 2.. s2..
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
dynPartSecCC = {
%--- 38
s2 s8 s4\cr s8\!
s2\sf s2\sf
\DYNEXO #'(1 . 0) s2\sf s2\sf
%--- 41
s1
s2 s8 s4\cr s8\!
\DYNEXO #'(0 . -1.5) s2\sf \DYNEXO #'(0 . -1.5) s2\sf
\DYNEXO #'(0.5 . -1.5) s2\sf \DYNEXO #'(0 . -1.5) s2\sf
s1
%--- 46
s4. s8\sf s4.s8\sf
s1
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
dynPartSecD = {
%--- 48
s2\p-\SFORZATO s2-\SFORZATO
}

%%%%%%%%%%%%%%%%%%%% PARTIE E
dynPartSecEA = {
%--- 49
s2-\SFORZATO s2-\SFORZATO
s1
%--- 51
s1
s8 s4\cr s8\! s4\decr s8\! s8
s1*3
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE E
dynPartSecEB = {
%--- 56
s1
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE E
dynPartSecEC = {
%--- 57
s1
}

%%%%%%%%%%%%%%%%%%%% PARTIE F
dynPartSecFA = {
%--- 58
\DYNEXO #'(1 . -1) s1\mf
s1*2
%--- 61
s8 s4\cr s8\! s4\decr s8\! s8
s1
s2 s8 s4\cr s8\!
\DYNEXO #'(0.5 . -1) \PINEXO #'(0.5 . 0) s4\f\decr s8\! s8 s2
s2 \DYNEXO #'(0 . -1.5) s2\p
%--- 66
s1*4
\CRESC s2\cr s2\!
%--- 71
s1*2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE F
dynPartSecFB = {
%--- 73
\DYNEXO #'(1 . 0) s1\p
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE F
dynPartSecFC = {
%--- 74
\DYNEXO #'(1 . 0) s1\p
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION SECONDO HAUT
dynPartSec = {
 \override DynamicTextSpanner #'dash-period = #-1
 \TSCREXOB #'(1 . 1) 
 \dynPartSecA
 \dynPartSecBA \dynPartSecBB \dynPartSecBC
 \dynPartSecCA \dynPartSecCB \dynPartSecCC
 \dynPartSecD
 \dynPartSecEA \dynPartSecEB \dynPartSecEC
 \dynPartSecFA \dynPartSecFB \dynPartSecFC
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. PRIMO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. PRIMO NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
priHautA = \relative do'' {
%--- 1
R1
<re fa sib>8[ <re fa sib>16 <re fa sib>] <re fa sib>8[ <re fa sib>] <re fa sib>[ <re fa sib> <re fa sib> <re fa sib>]
\OCTAVEBEG <re' fa sib>8[ <re fa sib>16 <re fa sib>] <re fa sib>8[ <re fa sib>] <re fa sib>[ <re fa sib> <re fa sib>8.]
\OCTAVEEND
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
priHautBA = \relative do'' {
%--- 3 suite
\bar "|:" sol32^([ lab] \break
sib8.)[ sib16 sib8. mib16] sib8.[ sib16 sib8. sol'16]
lab8.[ sib16 lab8. sol16] fa4..( mib32[ fa]
%--- 6
sol8.)[ sol16] sol4..^> fa16[ mib8. re16]
do8.[ sib16 do8. sib16] sib4( sol8) r16 sol'32^([lab] \break
<sol sib>8.)[ <sol sib>16 <sol sib>8. <sib mib>16] <sol sib>8.[ <sol sib>16 <sol sib>8. \OCTAVEBEG <mib' sol>16]
<fa lab>8.[ <sol sib>16 <fa lab>8. <mib sol>16] <re fa>4..( <do mib>32[ <re fa>]
<mib sol>8. )[ <mib sol>16 <mib sol>8. mib16] <reb mi sib'>8.[ <reb mi sib'>16 <reb mi sib'>8. <reb mi>16] \OCTAVEEND \pageBreak
%--- 11
<re! fa>8.^\PRIMOB [ <do mib!>16 <sib re>8. <fa la do>16] <re fa sib>4. fa8
fa4 fa8-.[ fa-.] fa4. fa8
\acciaccatura la8 sol8[( fa) sol-. la-.] sib8.([ la32 sol]) fa8[ fa] \break
fa4 fa8-.[ fa-.] fa4. fa8-.
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
priHautBB = \relative do''' {
%--- 15
\set Score.repeatCommands = #'((volta "1")) 
\partial 2... \acciaccatura la8 sol8[( fa) sol-. la-.] sib4..
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
priHautBC = \relative do''' {
%--- 16
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2"))
\acciaccatura la8 sol8[( fa) sol-. la-.] sib4.
\set Score.repeatCommands = #'((volta #f)) 
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
priHautCA = \relative do'' {
%--- 16 suite
\bar "|:" \partial 8 r8
r4 r8 <dob mib> <dob mib solb>8.[ <dob mib solb>16] <dob mib solb>4 \break   \set Score.currentBarNumber = #18
r4 r8 <mib solb> <mib solb dob>8.[ <mib solb dob>16 <mib solb dob>8 <mib solb>]
<solb mib'>8.[ <solb mib'>16 <solb mib'>8-.( <mib solb reb'>-.] <mib solb dob>8-.[ <mib solb sib>-. <mib solb lab>-. <mib solb>-.])
\acciaccatura sib'8 <fab lab>8-.[ <fab solb>-. <fab lab>-. <fab sib>-.] <mib dob'>4 _~ ( <mib solb>8)[ <fab solb>-.] \break
%--- 21
<mib solb mib'>8.[ <mib solb mib'>16 <mib solb mib'>8-.( <mib solb reb'>-.] <mib solb dob>8-.[ <mib solb sib>-. <mib solb lab>-. <mib solb>-.])
\acciaccatura sib'8 <fab lab>8-.[ <fab solb>-. <fab lab>-. <fab sib>-.] <mib dob'>4. mib8
<mib mib'>8.[ <mib mib'>16-. <mib mib'>8-. <fa! mib'>-.] <solb mib'>-.[ <fa mib'>-. <solb mib'>-. <lab mib'>-.] \pageBreak
<sib re!>4^\PRIMOB r8 sib <sib mib solb>8.[ <sib mib solb>16 <sib mib solb>8. <sib mib solb>16]
<sib re fa>4 r8 sib <sib mib solb>8.[ <sib mib solb>16 <sib mib solb>8. <sib mib solb>16]
%--- 26
<sib re fa>8[ <sib sib'>16 <sib sib'>] <sib sib'>8[ <sib sib'>] <sib sib'>4.. sol,!32([ lab])
sib8.[ sib16 sib8. mib16] sib8.[ sib16 sib8. sol'16] \break
lab8.[ sib16 lab8. sol16] fa4..( mib32[ fa])
sol8.[ sol16] sol4.. fa16[ mib8. re16]
do8. [ sib16 do8. sib16] sib4( sol8) r16 sol'32^([lab])
%--- 31
<sol sib>8.[ <sol sib>16 <sol sib>8. <sib mib>16] <sol sib>8.[ <sol sib>16 <sol sib>8. <reb' mib>16] \break
\OCTAVEBEG <do mib>8.[ <do mib>16 <mib lab>8. <lab do>16] <solb la mib'>4. <solb la>8
<sol! sib>8.[ <fa lab!>16 <mib sol>8. <sib re fa>16] <sol sib mib>4 \OCTAVEEND r8 sib
sib4 sib8[ sib] sib4. sib8-.
\acciaccatura re8 do8[( sib) do-. re-.] mib8.([ re32 do]) sib8-.[ sib-.] \break
%--- 36
sib4 sib8[ sib] sib4. sib8-.
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
priHautCB = \relative do''' {
%--- 37
\set Score.repeatCommands = #'((volta "1")) 
\partial 2.. \acciaccatura re8 do8[( sib) do-. re-.] mib4. \set Score.currentBarNumber = #38
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
priHautCC = \relative do''' {
%--- 38
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) 
\acciaccatura re8 do8[( sib) do-. re-.] mib8 mib,16-.[ mib-.] mib8-.[ <mib fa>-.]
\set Score.repeatCommands = #'((volta #f)) 
<mib solb>8[ <mib solb>16 <mib solb>] <mib solb>8[ <mib solb>] <reb fa lab>8[ <reb fa lab>16 <reb fa lab>] <reb fa lab>8[ <reb fa lab>] \pageBreak
<reb solb sib>8^\PRIMOB [ <reb solb sib>16 <reb solb sib>] <reb solb sib>8[ <reb solb sib>]
 <re fa sib re!>8[ <re fa sib re>16 <re fa sib re>] <re fa sib re>8[ <re fa sib re>]
%--- 41
<mib sib' mib>8.[ <sib' mib>16 <lab re>8. <mib lab do>16] <mib sol sib>8.[ <mib sol>16 <re fa>8. <re fa sib>16]
<mib sol>8[ <mib mib'>16 <mib mib'>] <mib mib'>8[ <mib mib'>] <mib mib'>[ <mib mib'> <mib mib'> <fa mib' fa>] \break
\OCTAVEBEG <solb mib' solb>8[ <solb mib' solb>16 <solb mib' solb>] <solb mib' solb>8[ <solb mib' solb>]
 <lab reb fa lab>8[ <lab reb fa lab>16 <lab reb fa lab>] <lab reb fa lab>8[ <lab reb fa lab>]
<sib reb solb sib>8 [ <sib reb solb sib>16 <sib reb solb sib>] <sib reb solb sib>8[ <sib reb solb sib>]
 <re fa sib re!>8[ <re fa sib re>16 <re fa sib re>] <re fa sib re>8[ <re fa sib re>]
<mib sib' mib>8.[ <mib mib'>16 <re re'>8. <do do'>16] <sib sib'>8.[ <sol sol'>16 <fa fa'>8. <sib sib'>16] \break
%--- 46
<mib, mib'>4 r8 <sib' sib'> mib4 r8 <sib sib'>8
mib8[ <mib mib'>16 <mib mib'>] <mib mib'>8[ <mib mib'>] <mib mib'>2 \OCTAVEEND
\bar "||"
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
%%%%%%%%%%%%%%%%%%%% PARTITION (trille)
priHautDP = \relative do''' {
\KEYTIMEB
%--- 48
r2^\TRIO r4 do8.\trill ([ sib32 do] \break
}

%%%%%%%%%%%%%%%%%%%% MIDI (trille)
priHautDM = \relative do''' {
\KEYTIMEB
%--- 48
r2 r4 reb32([ do reb do reb do sib do]
}

%%%%%%%%%%%%%%%%%%%% PARTIE E PARTITION (trille)
priHautEAP = \relative do''' {
%--- 49
\bar "|:"  reb8-.)[ do-.] sib4. lab8-.[ sol-. fa-.]
mib8-.[ do'-.] lab4. do,8([ reb mib])
%--- 51
fa8([ mib16]) r fa8([ mib16]) r fa8([ mib16]) r sib'8([ sol16]) r  \pageBreak
lab4^\PRIMOB sib16([ lab sol fa] mib8) r8 \OCTAVEBEG do''8.\trill ([ sib32 do])
<reb, reb'>8-.[ <do do'>-.] <sib sib'>4._> <lab lab'>8-.[ <sol sol'>-. <fa fa'>-.]
<mib mib'>8-.[ <do' do'>-.] <lab lab'>4. \OCTAVEEND sol8([ lab sib]) \break
<re, do'>8([ <fa sib>16]) r <re do'>8([ <fa sib>16]) r <re do'>8([ <fa sib>16]) r <lab fa'>8([ <sib re>16]) r 
}
%%%%%%%%%%%%%%%%%%%% PARTIE E MIDI (trille)
priHautEAM = \relative do''' {
%--- 49
\bar "|:"  reb8-.)[ do-.] sib4. lab8-.[ sol-. fa-.]
mib8-.[ do'-.] lab4. do,8([ reb mib])
%--- 51
fa8([ mib16]) r fa8([ mib16]) r fa8([ mib16]) r sib'8([ sol16]) r 
lab4 sib16([ lab sol fa] mib8) r8 \OCTAVEBEG reb''32([ do reb do reb do sib do])
<reb, reb'>8-.[ <do do'>-.] <sib sib'>4._> <lab lab'>8-.[ <sol sol'>-. <fa fa'>-.]
<mib mib'>8-.[ <do' do'>-.] <lab lab'>4. \OCTAVEEND sol8([ lab sib])
<re, do'>8([ <fa sib>16]) r <re do'>8([ <fa sib>16]) r <re do'>8([ <fa sib>16]) r <lab fa'>8([ <sib re>16]) r 
}


%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE E PARTITION (trille)
priHautEBP = \relative do''' {
%--- 56
\set Score.repeatCommands = #'((volta "1")) 
<sol mib'>4 re'16([mib fa sol]) mib8 r8 sib8.\trill ([la32 sib]) \break
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE E MIDI (trille)
priHautEBM = \relative do''' {
%--- 56
\set Score.repeatCommands = #'((volta "1")) 
<sol mib'>4 re'16([mib fa sol]) mib8 r8 do32([ sib do sib do sib la sib])
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE E PARTITION (trille)
priHautECP = \relative do''' {
%--- 57
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) 
mib4 re16([mib fa sol]) mib8 r8 mib,8.\trill ([reb!32 mib])
\set Score.repeatCommands = #'((volta #f)start-repeat) 
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE E MIDI (trille)
priHautECM = \relative do''' {
%--- 57
mib4 re16([mib fa sol]) mib8 r8 fa,32([ mib fa mib fa mib reb mib])
}

%%%%%%%%%%%%%%%%%%%% PARTIE F PARTITION (trilles)
priHautFAP = \relative do'' {
%--- 58
fa8. ([mib16]) reb4. reb8([ mib fa])
lab,8.([ sib16]) lab4. lab8([ reb fa])  \break
solb8([ fa mib solb] fa[ mib reb fa])
%--- 61
mib8([ reb mib fa]) mib4 lab8.\trill ([ sol32 lab])
<reb fa>8.([<lab mib'>16]) <fa reb'>4. <fa reb'>8([ <lab mib'> <reb fa>])  \pageBreak
<fa, lab>8.^\PRIMOB ([ <solb sib>16]) <fa lab>4. <fa lab>8([ <lab reb> <reb fa>])
\OCTAVEBEG <fa lab>8 ([ <sol! sib> <lab do> <fa lab>]) <do sol'>([ <fa lab> <sol sib> <do, sol'>])
<lab fa'>4 mi'16([ fa sol lab]) fa8 \OCTAVEEND r8 do8.\trill ([ sib32 do]
%--- 66
reb8-.)[ do-.] sib4. lab8-.[ sol-. fa-.]
mib8-.[ do'-.] lab4. do,8([ reb mib])
fa8([ mib16]) r fa8([ mib16]) r fa8([ mib16]) r sib'8([ sol16]) r 
lab4 sib16([ lab sol fa] mib8) r8 \OCTAVEBEG do''8.\trill ([ sib32 do])
<reb, reb'>8-.[ <do do'>-.] <sib sib'>4._> <reb reb'>8-.[ <do do'>-. <sib sib'>-.]
%--- 71
<lab lab'>8-.[ <do do'>-.] <fa fa'>4._> fa8-.[ sol-. lab-.]
do,8-.[ mib-.] <lab, lab'>8-.[ <do do'>-.] <mib mib'>4. <sol, sol'>8
}

%%%%%%%%%%%%%%%%%%%% PARTIE F MIDI (trilles)
priHautFAM = \relative do'' {
%--- 58
fa8.([mib16]) reb4. reb8([ mib fa])
lab,8.([ sib16]) lab4. lab8([ reb fa]) 
solb8([ fa mib solb] fa[ mib reb fa])
%--- 61
mib8([ reb mib fa]) mib4 sib'32([ lab sib lab sib lab sol lab])
<reb fa>8.([<lab mib'>16]) <fa reb'>4. <fa reb'>8([ <lab mib'> <reb fa>])
<fa, lab>8.([ <solb sib>16]) <fa lab>4. <fa lab>8([ <lab reb> <reb fa>])
\OCTAVEBEG <fa lab>8([ <sol! sib> <lab do> <fa lab>]) <do sol'>([ <fa lab> <sol sib> <do, sol'>])
<lab fa'>4 mi'16([ fa sol lab]) fa8 \OCTAVEEND r8 reb32([ do reb do reb do sib do])
%--- 66
reb8-.)[ do-.] sib4. lab8-.[ sol-. fa-.]
mib8-.[ do'-.] lab4. do,8([ reb mib])
fa8([ mib16]) r fa8([ mib16]) r fa8([ mib16]) r sib'8([ sol16]) r 
lab4 sib16([ lab sol fa] mib8) r8 \OCTAVEBEG reb''32([ do reb do reb do sib do])
<reb, reb'>8-.[ <do do'>-.] <sib sib'>4._> <reb reb'>8-.[ <do do'>-. <sib sib'>-.]
%--- 71
<lab lab'>8-.[ <do do'>-.] <fa fa'>4._> fa8-.[ sol-. lab-.]
do,8-.[ mib-.] <lab, lab'>8-.[ <do do'>-.] <mib mib'>4. <sol, sol'>8
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE F PARTITION (trille)
priHautFBP = \relative do''' {
%--- 73
\set Score.repeatCommands = #'((volta "1")) 
<lab lab'>4 sol'16([ lab sib do]) lab8 \OCTAVEEND r8 mib,8.\trill ([reb!32 mib])
}
%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE F MIDI (trille)
priHautFBM = \relative do''' {
%--- 73
\set Score.repeatCommands = #'((volta "1")) 
<lab lab'>4 sol'16([ lab sib do]) lab8 \OCTAVEEND r8 fa,32([ mib fa mib fa mib reb mib])
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE F
priHautFC = \relative do''' {
%--- 74
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) 
\OCTAVEBEG <lab lab'>4 sol'16([ lab sib do]) lab8 \OCTAVEEND r8 r4
\set Score.repeatCommands = #'((volta #f)) 
\bar "|."
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION SECONDO HAUT
notePartPriHaut = {
 \clef treble
 \KEYTIME
 s1*0 ^\MOVEMENT
 \set autoBeaming = ##f
 \priHautA
 \priHautBA \priHautBB \priHautBC
 \priHautCA \priHautCB \priHautCC
 \priHautDP
 \priHautEAP \priHautEBP \priHautECP
 \priHautFAP
 \priHautFBP \priHautFC
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI SECONDO HAUT
noteMidiPriHaut = {
 \clef treble
 \KEYTIME
 \IPRIMOHAUT
 \priHautA
 \priHautBA  \priHautBB  \priHautBA  \priHautBC
 \priHautCA  \priHautCB  \priHautCA  \priHautCC
 \priHautDM
 \priHautEAM \priHautEBM \priHautEAM \priHautECM
 \priHautFAM \priHautFBM \priHautFAM \priHautFC
 \priHautA   \priHautBA  \priHautBC  \priHautCA  \priHautCC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. PRIMO NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
priBasA = \relative do'' {
%--- 1
sib4.. sib16 sib4.. sib16 
<lab sib>8[ <lab sib>16 <lab sib>] <lab sib>8[ <lab sib>] <lab sib>[ <lab sib> <lab sib> <lab sib>]
<sib re fa lab>8[ <sib re fa lab>16 <sib re fa lab>] <sib re fa lab>8[ <sib re fa lab>]
 <sib re fa lab>[ <sib re fa lab> <sib re fa lab>8.]
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
priBasBA = \relative do'' {
%--- 3 suite
r16
sol8.[ sol16 sol8. sib16] sol8.[ sol16 sol8. mib'16] 
fa8.[ sol16 fa8. mib16] re4..( do32[ re]
%--- 6
mib8.)[ mib16] mib4..^> re16[ do8. sib16]
lab8.[ fa16 lab8. fa16] sol4( mib8) r16 <mib sol>32([ <fa lab>]
<sol sib>8.)[ <sol sib>16 <sol sib>8. <sib mib>16] <sol sib>8.[ <sol sib>16 <sol sib>8. <mib' sol>16] 
<fa lab>8.[ <sol sib>16 <fa lab>8. <mib sol>16] <re fa>4..( <do mib>32[ <re fa>]
<mib sol>8.)[ <mib sol>16 <mib sol>8. mib16] <reb mi sib'>8.[ <reb mi sib'>16 <reb mi sib'>8. <reb mi>16] \OCTAVEEND
%--- 11
<re! fa>8.[ <do mib!>16 <sib re>8. <la do>16] sib4. re8
mib8[( la,) do-. mib-.] re[( fa,) sib-. re-.]
<do mib>4 <do mib>8[ <do mib>] <sib re>4. re8 
mib8[( la,) do-. mib-.] re[( fa, sib) re-.]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
priBasBB = \relative do'' {
%--- 15
\partial 2... <do mib>4 <do mib>8-.[ <do mib>-.] <sib re>4.. 
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
priBasBC = \relative do'' {
%--- 16
<do mib>4 <do mib>8-.[ <do mib>-.] <sib re>4.
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
priBasCA = \relative do' {
%--- 16 suite
\partial 8 r8
r4 r8 mib <mib solb>8.[ <mib solb>16] <mib solb>4
r4 r8 <mib solb> <mib solb dob>8.[ <mib solb dob>16 <mib solb dob>8 solb]
mib'8.[ mib16 mib8-.( reb-.] dob-.[ sib-. lab-. solb-.])
<lab reb>8-.[ <solb reb'>-. <lab reb>-. <sib reb>-.] dob4( solb!8)[ solb-.]
%--- 21
solb8.[ solb16 solb8 reb'-.]( dob-.[ sib-. lab-. solb-.])
<lab reb>8-.[ <solb reb'>-. <lab reb>-. <sib reb>-.] dob4. mib,8
mib8.[ mib16-. mib8-. <fa! mib'>-.] <solb mib'>-.[ <fa mib'>-. <solb mib'>-. <lab mib'>-.]
<sib re!>8[ sib16 sib] sib8[ sib] <sib mib solb>8.[ <sib mib solb>16 <sib mib solb>8. <sib mib solb>16]
<sib re fa>8[ sib16 sib] sib8[ sib] <sib mib solb>8.[ <sib mib solb>16 <sib mib solb>8. <sib mib solb>16]
%--- 26
<sib re fa>8[ sib16 sib] sib8[ sib] sib4.. r16
sol8.[ sol16 sol8. sib16] sol8.[ sol16 sol8. mib'16]
fa8.[ sol16 fa8. mib16] re4..( do32[ re])
mib8.[ mib16] mib4.. re16[do8. sib16]
lab8.[ fa16 lab8. fa16] sol4( mib8) r16 <mib sol>32([<fa lab>])
%--- 31
<sol sib>8.[ <sol sib>16 <sol sib>8. <sib mib>16] <sol sib>8.[ <sol sib>16 <sol sib>8. <reb' mib>16]
<do mib>8.[ <do mib>16 <mib lab>8. <lab do>16] <solb la mib'>4. <solb la>8
<sol! sib>8.[ <fa lab!>16 <mib sol>8. <re fa>16] mib4 r8 sol
lab8[( re,) fa-. lab-.] sol[( sib,) mib-. sol-.]
<fa lab>4 <fa lab>8-.[ <fa lab>-.] <mib sol>4. sol8-.
%--- 36
lab8[( re,) fa-. lab-.] sol[( sib,) mib-. sol-.]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
priBasCB = \relative do'' {
%--- 37
\partial 2.. <fa lab>4 <fa lab>8-.[ <fa lab>-.] <mib sol>4.
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
priBasCC = \relative do'' {
%--- 38
<fa lab>4 <fa lab>8-.[ <fa lab>-.] <mib sol>8 r r <mib, fa>
<mib solb>8[ <mib solb>16 <mib solb>] <mib solb>8[ <mib solb>] <reb fa lab>8[ <reb fa lab>16 <reb fa lab>] <reb fa lab>8[ <reb fa lab>]
<reb solb sib>8[ <reb solb sib>16 <reb solb sib>] <reb solb sib>8[ <reb solb sib>]
 <re fa sib>8[ <re fa sib>16 <re fa sib>] <re fa sib>8[ <re fa sib>]
%--- 41
<mib sib'>8.[ <sib' mib>16 <lab re>8. <lab do>16] <sol sib>8.[ <mib sol>16 <re fa>8. <fa lab>16]
<mib sol>8 r8 r4 r r8 <mib fa>
<mib solb>8[ <mib solb>16 <mib solb>] <mib solb>8[ <mib solb>] <reb fa lab>8[ <reb fa lab>16 <reb fa lab>] <reb fa lab>8[ <reb fa lab>]
<reb solb sib>8[ <reb solb sib>16 <reb solb sib>] <reb solb sib>8[ <reb solb sib>]
 <re fa sib>8[ <re fa sib>16 <re fa sib>] <re fa sib>8[ <re fa sib>]
<mib sib'>8.[ <sib' mib>16 <lab re>8. <lab do>16] <sol sib>8.[ <mib sol>16 <re fa>8. <re fa lab>16]
%--- 46
<mib sol>8 sib'16[ sib] sib8[ <sib re fa lab>] <sib mib sol>[ sib16 sib] sib8[ <sib re fa lab>]
<sib mib sol>8 <mib, mib'>16[ <mib mib'>] <mib mib'>8[ <mib mib'>_\FINE] <mib mib'>2
}

%%%%%%%%%%%%%%%%%%%% PARTIE D PARTITION (trille)
priBasDP = \relative do'' {
\KEYTIMEB
%--- 48
r2 r4 do8.\trill ([ sib32 do]
}

%%%%%%%%%%%%%%%%%%%% PARTIE D MIDI (trille)
priBasDM = \relative do'' {
\KEYTIMEB
%--- 48
r2 r4 reb32([ do reb do reb do sib do]
}

%%%%%%%%%%%%%%%%%%%% PARTIE E PARTITION (trilles)
priBasEA = \relative do'' {
%--- 49
reb8-.)[ do-.] sib4. lab8-.[ sol-. fa-.]
mib8-.[ do'-.] lab4. lab8([ sib do])
%--- 51
sol8([ sib16]) r sol8([ sib16]) r sol8([ sib16]) r reb8([ mib16]) r 
do4 sol'16([ fa mib reb] do8) r8 r4
r4 <sol sol'>8-.[ <sib fa'>-.] <reb mib>4_> r
r4 lab8-.[ sib-.] <lab do>4_> lab8([ sib])
do8([ sib16]) r do8([ sib16]) r do8([ sib16]) r fa'8([ re16]) r 
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE E PARTITION (trille)
priBasEBP = \relative do'' {
%--- 56
mib4 re16([mib fa sol]) mib8 r8 sib8.\trill ([la32 sib])
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE E MIDI (trille)
priBasEBM = \relative do'' {
%--- 56
mib4 re16([mib fa sol]) mib8 r8 do32([ sib do sib do sib la sib])
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE E
priBasEC = \relative do'' {
%--- 57
mib4 re16([mib fa sol]) mib8 r8 r4
}

%%%%%%%%%%%%%%%%%%%% PARTIE F PARTITION (trilles)
priBasFAP = \relative do'' {
%--- 58
reb!8.([lab16]) fa4. fa8([ lab reb])
fa,8.([ solb16]) fa4. fa8([ lab reb])
mib8([ reb lab mib'] reb[ lab fa reb'])
%--- 61
lab8([ fa lab reb]) lab4 lab8.\trill ([ sol32 lab])
<reb fa>8.([<lab mib'>16]) <fa reb'>4. <fa reb'>8([ <lab mib'> <reb fa>])
<fa, lab>8.([ <solb sib>16]) <fa lab>4. <fa lab>8([ <lab reb> <reb fa>])
<fa lab>8([ <sol! sib> <lab do> <fa lab>]) <do sol'>([ <fa lab> <sol sib> <do, sol'>])
<lab fa'>4 mi'16([ fa sol lab]) fa8 r8 do8.\trill ([ sib32 do]
%--- 66
reb8-.)[ do-.] sib4. lab8-.[ sol-. fa-.]
mib8-.[ do'-.] lab4. lab8([ sib do])
sol8([ sib16]) r sol8([ sib16]) r sol8([ sib16]) r reb8([ mib16]) r 
do4 sol'16([ fa mib reb] do8) r8 do'8.\trill ([sib32 do])
r4 sol8-.[ fa-.] mi2
%--- 71
r4 fa8-.[ sol-.] lab4 sol8-.[ lab-.]
do,8-.[ mib-.] r4 r8 sol,8-.[ sib-. reb-.]
}

%%%%%%%%%%%%%%%%%%%% PARTIE F MIDI (trille)
priBasFAM = \relative do'' {
%--- 58
reb!8.([lab16]) fa4. fa8([ lab reb])
fa,8.([ solb16]) fa4. fa8([ lab reb])
mib8([ reb lab mib'] reb[ lab fa reb'])
%--- 61
lab8([ fa lab reb]) lab4 sib32([ lab sib lab sib lab sol lab])
<reb fa>8.([<lab mib'>16]) <fa reb'>4. <fa reb'>8([ <lab mib'> <reb fa>])
<fa, lab>8.([ <solb sib>16]) <fa lab>4. <fa lab>8([ <lab reb> <reb fa>])
<fa lab>8([ <sol! sib> <lab do> <fa lab>]) <do sol'>([ <fa lab> <sol sib> <do, sol'>])
<lab fa'>4 mi'16([ fa sol lab]) fa8 r8 reb32([ do reb do reb do sib do])
%--- 66
reb8-.)[ do-.] sib4. lab8-.[ sol-. fa-.]
mib8-.[ do'-.] lab4. lab8([ sib do])
sol8([ sib16]) r sol8([ sib16]) r sol8([ sib16]) r reb8([ mib16]) r 
do4 sol'16([ fa mib reb] do8) r8 reb'32([ do reb do reb do sib do])
r4 sol8-.[ fa-.] mi2
%--- 71
r4 fa8-.[ sol-.] lab4 sol8-.[ lab-.]
do,8-.[ mib-.] r4 r8 sol,8-.[ sib-. reb-.]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE F
priBasFB = \relative do'' {
%--- 73
do8[ lab] sol16([ lab sib do]) lab8 r r4
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE F
priBasFC = \relative do'' {
%--- 74
do8([ lab] sol16[ lab sib_\DACAPO do]) lab8 r r4
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION SECONDO HAUT
notePartPriBas = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 \priBasA
 \priBasBA  \priBasBB  \priBasBC
 \priBasCA  \priBasCB  \priBasCC
 \priBasDP
 \priBasEA  \priBasEBP \priBasEC
 \priBasFAP \priBasFB  \priBasFC
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI SECONDO HAUT
noteMidiPriBas = {
 \clef treble
 \KEYTIME
 \IPRIMOBAS
 \priBasA
 \priBasBA  \priBasBB  \priBasBA  \priBasBC
 \priBasCA  \priBasCB  \priBasCA  \priBasCC
 \priBasDM
 \priBasEA  \priBasEBM \priBasEA  \priBasEC
 \priBasFAM \priBasFB  \priBasFAM \priBasFC
 \priBasA   \priBasBA  \priBasBC  \priBasCA \priBasCC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B3. PRIMO DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% PARTIE A
dynPartPriA = {
%--- 1
s1\f
\DYNEXO #'(1 . 0) s1\sf
s2...
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
dynPartPriBA = {
%--- 3 suite
s16
s2\sf s2\sf
\DYNEXO #'(1 . 0) s1\sf
%--- 6
s1*2
\DYNEXO #'(1 . 0) s2\sf s2\sf
\DYNEXO #'(1 . 0) s1\sf
\DYNEXO #'(0.5 . 0) s2\sf s2\sf
%--- 11
s2.. s8\p
s2-\SFORZATO s2-\SFORZATO
s1
s2-\SFORZATO s2-\SFORZATO
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynPartPriBB = {
%--- 15
\partial 2... s2...-\SFORZATO
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
dynPartPriBC = {
%--- 16
s2..-\SFORZATO
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
dynPartPriCA = {
%--- 16 suite
s8
s2 \TSCREXO #'(1 . 0) s2\sf-\SFORZATO
s2 s2\sf
\TSCREXO #'(1 . 0) s1\fp-\SFORZATO
s1
%--- 21
s1\fp
s1
\DYNEXO #'(1 . -0.5) s1\f
s2 s2\sf
s2 s2\sf
%--- 26
s2... s16\p
\TSCREXO #'(1 . -0.5) s2-\SFORZATO \TSCREXO #'(1 . -0.5) s2-\SFORZATO
s1-\SFORZATO
s4 s2.-\SFORZATO
s2... s16\f
%--- 31
\DYNEXO #'(1 . 0) s2\sf s2\sf
s2 s2\sf
s2.. s8\p
s2-\SFORZATO s2-\SFORZATO
s1
%--- 36
s2-\SFORZATO s2-\SFORZATO
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
dynPartPriCB = {
%--- 37
\partial 2.. s2..
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
dynPartPriCC = {
%--- 38
s1
s2\sf s2\sf
s2\sf s2\sf
%--- 41
s1
s2 s8 s4\cr s8\!
\DYNEXO #'(0 . -1.5) s2\sf \DYNEXO #'(0 . -1.5) s2\sf
s2\sf s2\sf
s1
%--- 46
s4. s8\sf s4.s8\sf
s1
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
dynPartPriD = {
%--- 48
s2. s4\p
}

%%%%%%%%%%%%%%%%%%%% PARTIE E
dynPartPriEA = {
%--- 49
s4 s2.-\SFORZATO
s4 s2.-\SFORZATO
%--- 51
s4-\SFORZATO s4-\SFORZATO s4-\SFORZATO s4-\SFORZATO
s4 s8\cr s16\! s8\decr s16\! s4.
s1*2
s4-\SFORZATO s4-\SFORZATO s4-\SFORZATO s4-\SFORZATO
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE E
dynPartPriEB = {
%--- 56
s1
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE E
dynPartPriEC = {
%--- 57
s1
}

%%%%%%%%%%%%%%%%%%%% PARTIE F
dynPartPriFA = {
%--- 58
\TSCREXO #'(1 . 0) s1\mf-\SFORZATO
s1-\SFORZATO
s2-\SFORZATO s2-\SFORZATO
%--- 61
s8 s4\cr s8\! s4 s8.\decr s16\!
s2-\SFORZATO s8 s4\cr s8\!
s2-\SFORZATO s8 s4\cr s8\!
s4.\f-\SFORZATO\decr s8\! s2-\SFORZATO
s2. s4\p
%--- 66
s4 s2.-\SFORZATO
s4 s2.-\SFORZATO
s1
s4\cr s16\! s8\decr s16\! s2
\CRESC s2\cr s2\!
%--- 71
s1*2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE F
dynPartPriFB = {
%--- 73
\DYNEXO #'(1 . 0) s1\p
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE F
dynPartPriFC = {
%--- 74
\DYNEXO #'(1 . 0) s1\p
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION PRIMO HAUT
dynPartPri = {
 \override DynamicTextSpanner #'dash-period = #-1
 \TSCREXOB #'(1 . 1) 
 \dynPartPriA
 \dynPartPriBA \dynPartPriBB \dynPartPriBC
 \dynPartPriCA \dynPartPriCB \dynPartPriCC
 \dynPartPriD
 \dynPartPriEA \dynPartPriEB \dynPartPriEC
 \dynPartPriFA \dynPartPriFB \dynPartPriFC
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D1. SECONDO DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
dynMidiSecA = {
%--- 1
s1\f
s8\ff s2..\f
s2...
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
dynMidiSecBA = {
%--- 3 suite
s16
s1\f
s1
%--- 6
s1*4
s2 s4\ff s4\f
%--- 11
s2 s8 s4.\p
s1*3
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynMidiSecBB = {
%--- 15
\partial 2... s2...
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
dynMidiSecBC = {
%--- 16
s2..
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
dynMidiSecCA = {
%--- 16 suite
s8\f
s8.\ff s16\f s2.
s8.\ff s16\f s2.
s8.\ff s16\mp s2.
s1
%--- 21
s8.\f s16\mp s2.
s1
s1\f
s2 s8.\ff s16\f s4
s2 s8.\ff s16\f s4
%--- 26
s1
s1\p
s1*3
%--- 31
s1\f
s2 s4.\ff s8\f
s2 s2\p
s1*2
%--- 36
s1
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
dynMidiSecCB = {
%--- 37
\partial 2.. s2..
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
dynMidiSecCC = {
%--- 38
s2 s8 s4\cr s8
s8\!\ff s4.\f s8\ff s4.\f
s8\ff s4.\f   s8\ff s4.\f
%--- 41
s1
s2 s8 s4\cr s8
s8\!\ff s4.\f s8\ff s4.\f
s8\ff s4.\f   s8\ff s4.\f
s1
%--- 46
s4. s8\ff s8\f s4 s8\ff
s1\f
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
dynMidiSecD = {
%--- 48
s1\p
}

%%%%%%%%%%%%%%%%%%%% PARTIE E
dynMidiSecEA = {
%--- 49
s1*2
%--- 51
s1
s4.\cr s8\!\f s4.\decr s8\!\p
s1*3
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE E
dynMidiSecEB = {
%--- 56
s1
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE E
dynMidiSecEC = {
%--- 57
s1
}

%%%%%%%%%%%%%%%%%%%% PARTIE F
dynMidiSecFA = {
%--- 58
s1\mf
s1*2
%--- 61
s4.\cr s8\!\f s4.\decr s8\!\mf
s1
s2 s2\cr
s4.\!\f\decr s8\!\mf s2
s2 s2\p
%--- 66
s1*4
\CRESC s2\cr s2\!\f
%--- 71
s1*2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE F
dynMidiSecFB = {
%--- 73
s1\p
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE F
dynMidiSecFC = {
%--- 74
s1\p
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION SECONDO HAUT
dynMidiSec = {
 \override DynamicTextSpanner #'dash-period = #-1
 \dynMidiSecA
 \dynMidiSecBA \dynMidiSecBB \dynMidiSecBA \dynMidiSecBC
 \dynMidiSecCA \dynMidiSecCB \dynMidiSecCA \dynMidiSecCC
 \dynMidiSecD
 \dynMidiSecEA \dynMidiSecEB \dynMidiSecEA \dynMidiSecEC
 \dynMidiSecFA \dynMidiSecFB \dynMidiSecFA \dynMidiSecFC
 \dynMidiSecA \dynMidiSecBA  \dynMidiSecBC \dynMidiSecCA \dynMidiSecCC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D2. PRIMO DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% PARTIE A
dynMidiPriA = {
%--- 1
s1\f
s8\ff s2..\f
s2...
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
dynMidiPriBA = {
%--- 3 suite
s16
s8.\ff s16\f s4 s8.\ff s16\f s4 
s8.\ff s16\f s2.
%--- 6
s1*2
s8.\ff s16\f s4 s8.\ff s16\f s4 
s8.\ff s16\f s2.
s8.\ff s16\f s4 s8.\ff s16\f s4 
%--- 11
s2.. s8\p
s1*3
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynMidiPriBB = {
%--- 15
\partial 2... s2...
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
dynMidiPriBC = {
%--- 16
s2..
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
dynMidiPriCA = {
%--- 16 suite
s8
s2 s8.\ff s16\f s4
s2 s8.\ff s16\f s4
s8.\ff s16\mp s2.
s1
%--- 21
s8.\f s16\mp s2.
s1
s1\f
s2 s8.\ff s16\f s4
s2 s8.\ff s16\f s4
%--- 26
s2... s16\p
s1*3
s2... s16\f
%--- 31
s8.\ff s16\f s4 s8.\ff s16\f s4 
s2 s8.\ff s16\f s4 
s2.. s8\p
s1*2
%--- 36
s1
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
dynMidiPriCB = {
%--- 37
\partial 2.. s2..
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
dynMidiPriCC = {
%--- 38
s1
s8.\ff s16\f s4 s8.\ff s16\f s4 
s8.\ff s16\f s4 s8.\ff s16\f s4 
%--- 41
s1
s2 s2\cr
s8.\!\ff s16\f s4 s8.\ff s16\f s4 
s8.\ff s16\f s4 s8.\ff s16\f s4 
s1
%--- 46
s4. s8\ff s4.\f s8\ff
s1\f
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
dynMidiPriD = {
%--- 48
s2. s4\p
}

%%%%%%%%%%%%%%%%%%%% PARTIE E
dynMidiPriEA = {
%--- 49
s1
s1
%--- 51
s1
s4 s8\cr s16\!\ff s8\decr s16\!\f s4.
s1*3
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE E
dynMidiPriEB = {
%--- 56
s1
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE E
dynMidiPriEC = {
%--- 57
s1
}

%%%%%%%%%%%%%%%%%%%% PARTIE F
dynMidiPriFA = {
%--- 58
s1\mf
s1*2
%--- 61
s8 s4\cr s8\!\f s4 s8.\decr s16\!\mf
s2 s8 s4.\cr
s8.\!\f\decr s16\!\mf s4. s4.\cr
s4.\!\f\decr s8\! s2
s2. s4\p
%--- 66
s1*3
s4\cr s16\!\f s8\decr s16\!\p s2
s1\cr
%--- 71
s1\!\f
s1
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE F
dynMidiPriFB = {
%--- 73
s1\p
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE F
dynMidiPriFC = {
%--- 74
s1\p
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI SECONDO HAUT
dynMidiPri = {
 \override DynamicTextSpanner #'dash-period = #-1
 \dynMidiPriA
 \dynMidiPriBA \dynMidiPriBB \dynMidiPriBA \dynMidiPriBC
 \dynMidiPriCA \dynMidiPriCB \dynMidiPriCA \dynMidiPriCC
 \dynMidiPriD
 \dynMidiPriEA \dynMidiPriEB \dynMidiPriEA \dynMidiPriEC
 \dynMidiPriFA \dynMidiPriFB \dynMidiPriFA \dynMidiPriFC
 \dynMidiPriA \dynMidiPriBA  \dynMidiPriBC \dynMidiPriCA \dynMidiPriCC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           E. SORTIE PARTITION (pas de \midi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\ENTETEA
\ENTETEB
\ENTETEC
\SECONDO

\score {
 <<
  \new PianoStaff <<
   \new Staff = "secUpA"   << \notePartSecHaut >>
   \new Dynamics = "dynamics" \dynPartSec
   \new Staff = "secDownA" << \notePartSecBas >>
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


\ENTETEA
\ENTETEB
\ENTETEC
\PRIMO

\score {
 <<
  \new PianoStaff <<
   \new Staff = "PriUpA"   << \notePartPriHaut >>
   \new Dynamics = "dynamics" \dynPartPri
   \new Staff = "PriDownA" << \notePartPriBas >>
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
%                                           F. SORTIE MIDI COMMUNE (pas de \layout)
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
 ("ff" .    0.95)
 ("f" .     0.75)
 ("mf" .    0.68)
 ("mp" .    0.61)
 ("p" .     0.55)
 ("pp" .    0.49)
 ("ppp" .   0.35)
 ("pppp" .  0.18)
 ("ppppp" . 0.00) )
 my-absolute-volume-alist))

%%%%%%%%%%%%%%%%%%%% CHAQUE DYNAMIQUE RENCONTREE PRENDRA LE NOUVEAU VOLUME SPECIFIE
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \KEYTIME s1 }

\score {
 <<
   \new Staff = "secUp"   { \SILENCE << \noteMidiSecHaut \dynMidiSec >> }
   \new Staff = "secDown" { \SILENCE << \noteMidiSecBas  \dynMidiSec >> }
   \new Staff = "PriUp"   { \SILENCE << \noteMidiPriHaut \dynMidiPri >> }
   \new Staff = "PriDown" { \SILENCE << \noteMidiPriBas  \dynMidiPri >> }
 >>
 \midi {
 \context {
   \Score
% ECHELLE DU VOLUME DE SORTIE MIDI
   dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
   tempoWholesPerMinute = #(ly:make-moment 108 4)
  }
 }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER SchubertF-D733-3-3Marches.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
