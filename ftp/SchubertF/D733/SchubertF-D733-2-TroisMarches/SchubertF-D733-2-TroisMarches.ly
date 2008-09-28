%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D733-2-3Marches.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                              FRANZ SCHUBERT: "Trois Marches militaires", für Klavier zu 4 Händen
%                                             2. Allegro molto moderato in G-Dur
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.57"
\include "italiano.ly"
#(set-global-staff-size 19)

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")

line-width = 186\mm
#(define left-margin (/ (- paper-width  (* 186 mm)) 2))
ragged-last-bottom = #f
oddHeaderMarkup  = \markup \fontsize #2 \fill-line {
  " " { \italic "♫  Franz Schubert: Trois Marches militaires (D.733-2)  ♫" }  \fromproperty #'page:page-number-string }
evenHeaderMarkup = \markup \fontsize #2 \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Trois Marches militaires (D.733-2)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}


\header {
% MUTOPIA
 mutopiatitle = "Trois Marches militaires"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.733-2 (Op. 51)"
 mutopiainstrument = "Piano"
 date = "1818"
 source = "Breitkopf & Härtel"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1546"
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
%  La partition a été divisée en quatre parties en raison des reprises, qui sont gérées manuellement (Midi oblige)
%  - Première partie  A: reprise à l'identique
%  - Deuxième partie  B: BA, 1 DE LA REPRISE DE BB, 2 DE LA REPRISE DE BC
%  - Troisième partie C: CA, 1 DE LA REPRISE DE CB, 2 DE LA REPRISE DE CC
%  - Quatrième partie D: reprise à l'identique
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. NOTES SECONDO: A1. PIANO HAUT  A2. PIANO BAS
%  B. NOTES PRIMO  : B1. PIANO HAUT  B2. PIANO BAS
%  C. DYNAMIQUES PARTITION: C1. SECONDO  C2. PRIMO
%  D. DYNAMIQUES MIDI     : communes
%  E. SORTIE PARTITION
%  F. SORTIE MIDI
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TONALITE ET MESURE
KEYTIME  = { \key sol \major \time 4/4 }
KEYTIMEB = { \key do \major \time 4/4 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large  { \hspace #-6 "Allegro molto moderato." } }
%----- INSTRUMENTS
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
 \set Staff.midiMaximumVolume = #0.9
}
%----- MARKUP
ENTETEA = \markup { \fill-line { \column { \center-column {
 \fontsize #6 \bold "Trois Marches militaires" " "
 \fontsize #3 \bold "D.733 (Op. 51.)" " "
 \fontsize #2 "für Klavier zu 4 Händen"
 } } } }
ENTETEB =  \markup { \fill-line { " "  { \column \center-align {
 \fontsize #4 \bold "Franz Schubert" \fontsize #2 "(1797-1828)" " " \fontsize #1.5 "D.733 (Op. 51 No2, 1818)" " "
 } } } }
ENTETEC = \markup { \fill-line { \column { \center-column {
 \fontsize #4 \bold "2. Allegro molto moderato in G-Dur" " "
 } } } }

PRIMO    = \markup { \fill-line { \column { \center-column { \bold \fontsize #2 "Primo" " " " " } } } }
PRIMOB   = \markup { \fill-line { \column { \center-column { \bold \fontsize #2 "Primo                     " " " " " } } } }
SECONDO  = \markup { \fill-line { \column { \center-column { \bold \fontsize #2 "Secondo" " " " " } } } }
SECONDOB = \markup { \fill-line { \column { \center-column { \bold \fontsize #2 "Secondo                      " " " " " } } } }
FINE   = \markup { \bold \large "Fine" }
TRIO   = \markup { \hspace #-5 \bold \large "Trio" }
DACAPO = \markup { \bold \large "Marcia D.C." }
SFORZATO = \markup { \musicglyph #"scripts.sforzato" }
CLEFBASS = \markup { \musicglyph #"clefs.F_change" }
%----- OCTAVES: DEBUT ET FIN
OCTAVEBEG = { #(set-octavation 1) \set Staff.ottavation = #"8" }
OCTAVEEND = #(set-octavation 0)
%----- CRESCENDOS
CRESC     = { \set crescendoText   = \markup { \bold \italic "cresc." }   \set crescendoSpanner = #'dashed-line }
%----- DEPLACER UNE DYNAMIQUE
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
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
%                                           A1. SECONDO NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
secHautA = \relative do' {
%--- 1
<sol si re>8[ <sol si re>16 <sol si re>] <sol si re>8-.[ <sol do mi>-.] <sol si re>4 <sol si>
<la do re>4 <la do re>8-.[ <la do re>-.] <sol si re>-.[ <re sol>-.] <fad la>4
<sol si re>8[ <sol si re>16 <sol si re>] <sol si re>8-.[ <sol do mi>-.] <sol si re>4 <mi sol si mi> \break
<la do fad>4 <si mi sol>8[ <la si fad'>] <sol si mi>4 r
<dod sol'>8([ la <dod sol'> la]) <re fad>([ la <re fad> la])
%--- 6
<mi' sol>8([ la, <mi' sol> la,]) <re fad>([ la <re fad> la]) \break
<dod sol'>8([ la <dod sol'> la]) <re fad>([ la <re fad> la])
<mi' sol>8([ la, <mi' sol> la,]) re-.[ la-. fad-. re-.]
\bar ":|:"
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
secHautBA = \relative do' {
%--- 9
<sol do!>8[ <sol do>16 <sol do>] <sol do>8[ <sol do>] <sol si>4 <sol do> \pageBreak
<fa si re>4^\SECONDOB <mi la do>8-.[ <mi sold si>-.] <do mi la>4 r
<la' do mi>8 [ <la do mi>16 <la do mi>] <la do mi>8[ <sol! si mi>] <fad re'>4 <la do>
<sol si>8-.[ sol-. la-. <sol la dod>-.] <fad la re>4 r \clef treble \break
%--- 13
<fad' la>8([ re <fad la> re]) <sol si>([ re <sol si> re])
<la' do>8([ re, <la' do> re,]) <sol si>([ re <sol si> re])
<fad la>8([ re <fad la> re]) <sol si>([ re <sol si> re]) \break
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
secHautBB = \relative do'' {
%--- 16
\set Score.repeatCommands = #'((volta "1"))
<la do>8([ re, <la' do> re,]) sol-.[ re-. si-. \TSCREXO #'(1.6 . 7.9) sol-._\CLEFBASS]
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
secHautBC = \relative do'' {
%--- 17
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) 
<la do>8([ re, <la' do> re,]) \clef bass sol,16([ fad mi re]) sol8-.[ la-.]
%--- 18
\set Score.repeatCommands = #'((volta #f)) 
si4 <lad si>8-.[ <la si>-.] <sol si>8-.[ <fad si>-. <mi si'>-. <re re'>-.] \pageBreak
%--- 19
<do do'>8-.^\SECONDOB [ <si si'>-.] <la la'>-. \tupletUp \times 2/3 { sol'16[ fad mi] } re4-. <re la' do>-.
<sol si>16 ([ fad mi re]) sol8-.[ la-.] si4 <lad si>8-.[ <la si>-.]
<sol si>8-.[ <fad si>-. <mi si'>-. re-.] do-.[ si-.] la-. \times 2/3 { sol'16[ fad mi] } \break
re4-. <re la' do>-. <sol si>-. r
\bar "||"
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
secHautCA = \relative do' {
\KEYTIMEB
%--- 23
<do mi>16^\TRIO [( sol) <sol do mi>-. <sol do mi>-.]  <sol do mi>8-.[  <sol si re fa>-.]
 <do mi>16[( sol) <sol do mi>-. <sol do mi>-.]  <sol do mi>8-.[  <sol do mi>-.]
<si fa'>16[( sol) <sol si fa'>-. <sol si fa'>-.]  <sol si fa'>8-.[  <sol si fa'>-.]
 <do mi>16[( sol) <sol do mi>-. <sol do mi>-.]  <sol do mi>8-.[  <sol do mi>-.] \break
<do mi>16[( sol) <sol do mi>-. <sol do mi>-.]  <sol do mi>8-.[  <sol si re fa>-.]
 <do mi>16[( sol) <sol do mi>-. <sol do mi>-.]  <sol do mi>8-.[  <sol do mi>-.]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
secHautCB = \relative do' {
%--- 26
\set Score.repeatCommands = #'((volta "1")) 
<si re fa>16[( sol) <sol si re fa>-. <sol si re fa>-.]  <sol si re fa>8-.[  <sol re' fa>-.]
 <do mi>16[( sol) <sol do mi>-. <sol do mi>-.]  <sol do mi>8-.[  <sol do mi>-.]
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
secHautCC = \relative do' {
%--- 27
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) 
<si re fa>16[( sol) <sol si re fa>-. <sol si re fa>-.]  <sol si re fa>8-.[  <sol re' fa>-.]
 <do mi>16[( sol) <sol do mi> <sol do mi>]  <sol do mi>8[  mi] \pageBreak
\set Score.repeatCommands = #'((volta #f)start-repeat) 
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
secHautDA = \relative do {
%--- 28
mi8^\SECONDOB ([ fa16 mi]) mi8-.[ mi-.] la-.[ mi-. do-. mi-.]
la8 \clef treble re16([ mi]) mi8-. <si mi sold>16([ <do mi la>]) <do mi la>8-. \clef bass mi,32([ re do si] la8-.)[ re-.]
re8 ([ mi16 re]) re8-.[ re-.] sol-.[ re-. si-. re-.] \break
%--- 31
sol8-. \clef treble dod16([ re]) re8-. <la re fad>16([ <si re sol>]) <si re sol>8 \clef bass sol8-.[ sol-. sol-.]
<lab do>16[( mib) <mib lab do>-. <mib lab do>-.] <mib lab do>8-.[ <mib sol sib reb>-.]
 <lab do>16[( mib) <mib lab do>-. <mib lab do>-.] <mib lab do>8-.[ <mib lab do>-.]
%--- 33
<sol reb'>16[( mib) <mib sol reb'>-. <mib sol reb'>-.] <mib sol reb'>8-.[ <mib sol reb'>-.]
 <lab do>16[( mib) <mib lab do>-. <mib lab do>-.] <mib lab do>8-.[ <lab do>-.] \break
<do mi!>16[( sol) <sol do mi>-. <sol do mi>-.]  <sol do mi>8-.[  <sol si re fa>-.]
 <do mi>16[( sol) <sol do mi>-. <sol do mi>-.]  <sol do mi>8-.[  <sol do mi>-.]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE D
secHautDB = \relative do' {
%--- 35
\set Score.repeatCommands = #'((volta "1")) 
<si re fa>16[( sol) <sol si re fa> <sol si re fa>]  <sol si re fa>8-.[  <sol re' fa>-.]
 <do mi>16[( sol) <sol do mi> <sol do mi>]  <sol do mi>8-.[  mi-.]
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE D
secHautDC = \relative do' {
%--- 36
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) 
<si re fa>16[( sol) <sol si re fa> <sol si re fa>]  <sol si re fa>8-.[  <sol re' fa>-.]
 <do mi>16[( sol) <sol do mi> <sol do mi>]  <sol do mi>8 r
\set Score.repeatCommands = #'((volta #f)) 
\bar "|."
\pageBreak
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
 \secHautDA \secHautDB \secHautDC
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI SECONDO HAUT
noteMidiSecHaut = {
 \clef bass
 \KEYTIME
 \ISECONDO
 \secHautA  \secHautA
 \secHautBA \secHautBB \secHautBA \secHautBC
 \secHautCA \secHautCB \secHautCA \secHautCC
 \secHautDA \secHautDB \secHautDA \secHautDC
 \secHautA  \secHautBA \secHautBC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A2. SECONDO NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
secBasA = \relative do, {
%--- 1
<sol sol'>8[ <sol sol'>16 <sol sol'>] <sol sol'>8-.[ <sol sol'>-.] <sol sol'>4 <sol sol'>
<re' re'>4 <re re'>8-.[ <re re'>-.] sol-.[ si-.] re4
<sol,, sol'>8[ <sol sol'>16 <sol sol'>] <sol sol'>8-.[ <sol sol'>-.] <sol sol'>4 mi'
<la, la'>4 <si si'>8[ <si si'>] <mi mi'>4 r
R1
%--- 6
la8[ la16 la] la8[ la] fad-.[ la-. fad-. re-.]
la4 r r2
la'8[ la16 la] la8[ la] re-.[ la-. fad-. re-.]
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
secBasBA = \relative do, {
%--- 9
<do! do'!>8[ <do do'>16 <do do'>] <do do'>8[ <do do'>] <si si'>4 <do do'>
<re re'>4 mi8-.[ mi-.] la4 r
la8 [ la16 la] la8[ sol] fad4 <red red'>
<mi mi'>8-.[ sol-. la-. <la, la'>-.] <re re'>4 r
%--- 13
R1
re'8[ re16 re] re8[ re] si8-.[ re-. si-. sol-.]
re4 r r2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
secBasBB = \relative do {
%--- 16
re8[ re16 re] re8[ re] sol,8-.[ re'-. si-. sol-.]
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
secBasBC = \relative do {
%--- 17
re8 [ re16 re] re8[ re] sol,16([ fad mi re]) sol8-.[ la-.]
si4 <lad si>8-.[ <la si>-.] <sol si>-.[ <fad si>-. <mi si'>-. re-.]
%--- 19
do8-.[ si-.] la-. \tupletDown \times 2/3 { sol'16[ fad mi] } re4-. re-.
sol16([ fad mi re]) sol8-.[ la-.] si4 <lad si>8-.[ <la si>-.]
<sol si>8-.[ <fad si>-. <mi si'>-. re-.] do-.[ si-.] la-. \times 2/3 { sol'16[ fad mi] }
re4-. re-. sol-._\FINE r
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
secBasCA = \relative do {
\KEYTIMEB
%--- 23
do4^> do8-.[ do-.] do4^> do8-.[ mi-.]
sol,4^> si8-.[ sol-.] do4 mi8-.[ sol-.]
do,4 do8-.[ do-.] do4 do8-.[ mi-.]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
secBasCB = \relative do {
%--- 26
sol4 sol8-.[ sol-.] do4 r8 do
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
secBasCC = \relative do {
%--- 27
sol4 sol8-.[ sol-.] do4 r
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
secBasDA = \relative do, {
%--- 28
r4 r8 mi8-. la-.[ mi-. do-. mi-.]
la8 re16([ mi]) mi8-. <mi, mi'>16([ la]) la8-. mi32([ re do si] la8) r
r4 r8 re8-. sol-.[ re-. si-. re-.]
%--- 31
sol8-. dod16([ re]) re8 <re, re'>16([ sol]) sol8 r8 r4
lab4 lab8-.[ lab-.] lab4 lab8-.[ do-.]
mib,4 sol8-.[ mib-.] lab4 do8-.[ lab-.]
sol4 sol8-.[ sol-.] sol4 mi!8-.[ do-.]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE D
secBasDB = \relative do {
%--- 35
sol4 sol8-.[ sol-.] do4. r8
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE D
secBasDC = \relative do {
%--- 36
sol4 sol8-.[ sol-.] do4._\DACAPO r8
}


%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION SECONDO BAS
notePartSecBas = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 \secBasA
 \secBasBA \secBasBB \secBasBC
 \secBasCA \secBasCB \secBasCC
 \secBasDA \secBasDB \secBasDC
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI SECONDO BAS
noteMidiSecBas = {
 \clef bass
 \KEYTIME
 \ISECONDO
 \secBasA  \secBasA
 \secBasBA \secBasBB \secBasBA \secBasBC
 \secBasCA \secBasCB \secBasCA \secBasCC
 \secBasDA \secBasDB \secBasDA \secBasDC
 \secBasA  \secBasBA \secBasBC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A3. SECONDO DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
dynPartSecA = {
%--- 1
s1\f
s1*3
s1\p
%--- 6
s1*3
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
dynPartSecBA = {
%--- 9
s1\f
s1*3
%--- 13
\DYNEXO #'(1.5 . 0) s1\p
s1*2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynPartSecBB = {
%--- 16
s1
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
dynPartSecBC = {
%--- 17
s2 s2\f
s1*2
%--- 20
s2 s2\sf
s1*2
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
dynPartSecCA = {
%--- 23
s1\p
s1*2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
dynPartSecCB = {
%--- 26
s1
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
dynPartSecCC = {
%--- 27
s2.. s8\f
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
dynPartSecDA = {
%--- 28
s4. s8\f s2
s1*2
%--- 31
s2 s8 s4\p\decr s8\!
\DYNEXO #'(1 . 0) s1\pp
s1
\CRESC s2\cr s4\! s8\cr s8\!
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE D
dynPartSecDB = {
%--- 35
s8.\decr s16\! s2 s8 s8\f
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE D
dynPartSecDC = {
%--- 36
s1
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE DYNAMIQUES PARTITION SECONDO
dynPartSec = {
 \override DynamicTextSpanner #'dash-period = #-1
 \dynPartSecA
 \dynPartSecBA \dynPartSecBB \dynPartSecBC
 \dynPartSecCA \dynPartSecCB \dynPartSecCC
 \dynPartSecDA \dynPartSecDB \dynPartSecDC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. PRIMO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. PRIMO NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%% PARTIE A
%%%%%%%%%%%%%%%%%%%% PARTITION (\trill et \prall)
priHautAP = \relative do''' {
%--- 1
<sol si re>8[ <sol si re>16 <sol si re>] <sol si re>8-.[ <sol do mi>-.] <sol si re>4  <sol si>
<< { do8-\trill ([ si16 do]) } \\ { sol4 } >> <fad re'>8-.[ <fad do'>-.] <sol si>8-.[ <re sol>-.] <re fad la>8[ sol32( la si do)]
<sol si re>8[ <sol si re>16 <sol si re>] <sol si re>8-.[ <sol do mi>-.] <sol si re>4  <si sol'> \break
fad'8-\prall [ mi16 fad] <si, si'>8-.[ <fad la si red>-.] <sol si mi>4 r
mi8-.[ mi16-. mi-.] mi8-.[ mi-.] mi([ fad16]) r re4
%--- 6
re16([ dod si la]) si8-.[ dod-.] dod4( re8) r \break
<mi la>8[ <mi la>16 <mi la>] <mi la>8[ <mi la>] << { la2 } \\ { mi8([ sol16 fad] re8.[ mi16]) } >>
<< { la4 } \\ { re,16([ dod si la]) } >> <si si'>8-.[ <dod! dod'>-.] <re re'>2
\bar ":|:"
}

%%%%%%%%%%%%%%%%%%%% MIDI (\trill et \prall)
priHautAM = \relative do''' {
%--- 1
<sol si re>8[ <sol si re>16 <sol si re>] <sol si re>8-.[ <sol do mi>-.] <sol si re>4  <sol si>
<< { re'32([ do re do re do si do]) } \\ { sol4 } >>
 <fad re'>8-.[ <fad do'>-.] <sol si>8-.[ <re sol>-.] <re fad la>8[ sol32( la si do)]
<sol si re>8[ <sol si re>16 <sol si re>] <sol si re>8-.[ <sol do mi>-.] <sol si re>4  <si sol'>
fad32[( sol fad'16) mi16 fad] <si, si'>8-.[ <fad la si red>-.] <sol si mi>4 r
mi8-.[ mi16-. mi-.] mi8-.[ mi-.] mi([ fad16]) r re4
%--- 6
re16([ dod si la]) si8-.[ dod-.] dod4( re8) r
<mi la>8[ <mi la>16 <mi la>] <mi la>8[ <mi la>] << { la2 } \\ { mi8([ sol16 fad] re8.[ mi16]) } >>
<< { la4 } \\ { re,16([ dod si la]) } >> <si si'>8-.[ <dod! dod'>-.] <re re'>2
\bar ":|:"
}


%%%%%%%%%%%%%%%%%%%% PARTIE B
%%%%%%%%%%%%%%%%%%%% PARTITION (\prall)
priHautBAP = \relative do''' {
%--- 9
<sol do! mi>8[ <sol do mi>16 <sol do mi>] <sol do mi>8[ <sol do mi>] <sol re' sol>4 <sol do mi> \pageBreak
<si re>8-\prall^\PRIMOB [ do16( si)] <la do>8-.[ <re, mi sold si>-.] <do mi la>8.-.[ sold'16] la([ si do re])
<la do mi>8 [ <la do mi>16 <la do mi>] <la do mi>8[ <si mi>] <do re la'>4 <do fad>
<si sol'>8-\prall ([ la'16 si]) <la, re fad>8-.[ <sol la dod mi>-.] <fad la re>4 r \break
%--- 13
la8[ la16 la] la8[ la] la([ si16]) r sol4
sol16([ fad mi re]) mi8-.[ fad-.] fad4( sol8) r
<la re>8[ <la re>16 <la re>] <la re>8[ <la re>] << { re2 } \\ { la8([ do16 si] sol8. la16]) } >> \break
}

%%%%%%%%%%%%%%%%%%%% MIDI (\prall)
priHautBAM = \relative do''' {
%--- 9
<sol do! mi>8[ <sol do mi>16 <sol do mi>] <sol do mi>8[ <sol do mi>] <sol re' sol>4 <sol do mi>
<si re>32[( <do mi> <si re>16) do16( si)] <la do>8-.[ <re, mi sold si>-.] <do mi la>8.-.[ sold'16] la([ si do re])
<la do mi>8[ <la do mi>16 <la do mi>] <la do mi>8[ <si mi>] <do re la'>4 <do fad>
<si sol'>32([ <do la'> <si sol'>16 la'16 si]) <la, re fad>8-.[ <sol la dod mi>-.] <fad la re>4 r
%--- 13
la8[ la16 la] la8[ la] la([ si16]) r sol4
sol16([ fad mi re]) mi8-.[ fad-.] fad4( sol8) r
<la re>8[ <la re>16 <la re>] <la re>8[ <la re>] << { re2 } \\ { la8([ do16 si] sol8. la16]) } >>
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
priHautBB = \relative do''' {
%--- 16
\set Score.repeatCommands = #'((volta "1"))
<< { re4 } \\ { sol,16([ fad mi re]) } >> <mi mi'>8-.[ <fad fad'>-.] <sol sol'>2
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
priHautBC = \relative do''' {
%--- 17
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) 
<< { re4 } \\ { sol,16([ fad mi re]) } >> <mi mi'>8-.[ <fad fad'>-.] <sol sol'>4-. r
%--- 18
\set Score.repeatCommands = #'((volta #f)) 
\OCTAVEBEG 
<< { mi'16 ([ red dod si]) } \\ { fad4 } >> <fad dod'>8-.[ <fad si red>-.] <sol si mi>-.[ <si red fad>-. <si mi sol>-. <si mi sold>-.] \pageBreak
%--- 19
<do! mi la>8-.^\PRIMOB [ <mi sold si>-. <mi la do>-. <dod sol' lad dod>-.] <re sol si re>4-. <la! do re fad>-.
<si re sol>4 r << { mi16([ red dod si]) } \\ { fad4 } >> <fad dod'>8-.[ <fad si red>-.]
<sol si mi>8-.[ <si red fad>-. <si mi sol>-. <si mi sold>-.] <do! mi la>8-.[ <mi sold si>-. <mi la do>-. <dod sol' lad dod>-.] \break
<re sol si re>4-. <la! do! re fad>-. <sol si re sol>-. \OCTAVEEND r
\bar "||"
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
priHautCA = \relative do'' {
\KEYTIMEB
%--- 23
<do mi>8^\TRIO ([ <re fa>16 <do mi>]) <do mi>8-.[ <re fa>-.] <mi sol>([ do']) <mi, sol>8[ la16( sol)]
sol8[ <fa' la>16( <mi sol>)] <mi sol>8-.[ <red fad>-.] <mi sol>4( <do mi>8)[ <mi, sol>-.] \break
<do mi>8-.[ <re fa>16( <do mi>]) <do mi>8-.[ <re fa>-.] <mi sol>([ do']) <mi, sol>8[ la16( sol)]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
priHautCB = \relative do''' {
%--- 26
\set Score.repeatCommands = #'((volta "1")) 
sol8[( <si sol'>) <la fa'>-. <fa si re>-.] <mi do'>4 r8 <do mi>
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
priHautCC = \relative do''' {
%--- 27
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) 
sol8[( <si sol'>) <la fa'>-. <fa si re>-.] <mi do'>4 r \pageBreak
\set Score.repeatCommands = #'((volta #f)start-repeat) 
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
priHautDA = \relative do'' {
%--- 28
r4^\PRIMOB r8 <mi sold si>-. <mi la do>-.[ <mi sold si>-. <mi la>-. <mi sold si>-.]
%--- 29
<mi la do>8 <<
 { \voiceOne <si' fa'>16([ <do mi>]) <do mi>8 si'16([ la]) la8 } \\
 { \voiceTwo la,8 la\noBeam re16([ do]) <do mi>8 } \\
 { \voiceThree s8 s8 mi8 s8 } >>
 mi,32([ re do si] la8) r
%--- 30
r4  r8 <re fad la>-. <re sol si>-.[ <re fad la>-. <re sol>-. <re fad la>-.] \break
%--- 31
<re sol si>8 <<
 { \voiceOne <la' mi'>16([ <si re>]) <si re>8 la'16([ sol]) sol8 } \\
 { \voiceTwo sol,8 sol\noBeam do16([ si]) <si re>8 } \\
 { \voiceThree s8 s8 re8 s8 } >>
 <si, sol'>8([ <do fad> <re fa>])
%--- 32
<do mib>8[ <sib reb>16 <lab do>] <lab do>8-.[ <sib reb>-.] <do mib>([ lab']) <do, mib>[ fa16 mib]
mib8 <reb' fa>16([ <do mib>]) <do mib>8-.[ <si! re>-.] <do mib>4( <lab do>8)[ <do, mib>-.] \break
<do mi!>8[ <re! fa>16( <do mi>)] <do mi>8-.[ <re fa>-.] <mi sol>([ do']) <mi, sol>[ la16( sol)]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE D
priHautDB = \relative do''' {
%--- 35
\set Score.repeatCommands = #'((volta "1")) 
sol8[( <si sol'>) <la fa'>-. <fa si re>-.] <mi do'>4 r
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE D
priHautDC = \relative do''' {
%--- 36
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) 
sol8[( <si sol'>) <la fa'>-. <fa si re>-.] <mi do'>4 r
\set Score.repeatCommands = #'((volta #f)) 
\bar "|."
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION PRIMO HAUT
notePartPriHaut = {
 \clef treble
 \KEYTIME
 s1*0 ^\MOVEMENT
 \set autoBeaming = ##f
 \priHautAP
 \priHautBAP \priHautBB \priHautBC
 \priHautCA  \priHautCB \priHautCC
 \priHautDA  \priHautDB \priHautDC
}


%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI PRIMO BAS
noteMidiPriHaut = {
 \clef bass
 \KEYTIME
 \IPRIMOHAUT
 \priHautAM  \priHautAM
 \priHautBAM \priHautBB  \priHautBAM \priHautBC
 \priHautCA  \priHautCB  \priHautCA  \priHautCC
 \priHautDA  \priHautDB  \priHautDA  \priHautDC
 \priHautAM  \priHautBAM \priHautBC
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. PRIMO NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%% PARTIE A
%%%%%%%%%%%%%%%%%%%% PARTITION (\trill)
priBasAP = \relative do'' {
%--- 1
<sol si re>8[ <sol si re>16 <sol si re>] <sol si re>8-.[ <sol do mi>-.] <sol si re>4  <sol si>
<< { do8-\trill ([ si16 do]) } \\ { sol4 } >> <fad re'>8-.[ <fad do'>-.] <sol si>8-.[ <re sol>-.] <re fad la>8[ sol32( la si do)]
<sol si re>8[ <sol si re>16 <sol si re>] <sol si re>8-.[ <sol do mi>-.] <sol si re>4  <sol si sol'>
<do fad>4 <si mi sol>8-.[ <la si red>-.] <sol mi'>4 mi16([ fad sol sold])
la2 la8[ la16 la] la8[ la]
%--- 6
la2 la8[ la16 la] la8[ la]
la2 la8[ la16 la] la8[ la]
la8 r r <sol la> <fad la>2
}

%%%%%%%%%%%%%%%%%%%% MIDI (\trill)
priBasAM = \relative do'' {
%--- 1
<sol si re>8[ <sol si re>16 <sol si re>] <sol si re>8-.[ <sol do mi>-.] <sol si re>4  <sol si>
<< { re'32([ do re do re do si do]) } \\ { sol4 } >>
 <fad re'>8-.[ <fad do'>-.] <sol si>8-.[ <re sol>-.] <re fad la>8[ sol32( la si do)]
<sol si re>8[ <sol si re>16 <sol si re>] <sol si re>8-.[ <sol do mi>-.] <sol si re>4  <sol si sol'>
<do fad>4 <si mi sol>8-.[ <la si red>-.] <sol mi'>4 mi16([ fad sol sold])
la2 la8[ la16 la] la8[ la]
%--- 6
la2 la8[ la16 la] la8[ la]
la2 la8[ la16 la] la8[ la]
la8 r r <sol la> <fad la>2
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
priBasBA = \relative do'' {
%--- 9
<sol do! mi>8[ <sol do mi>16 <sol do mi>] <sol do mi>8[ <sol do mi>] <sol re'>4 <sol do mi>
<< { re'8[ do16( si)] } \\ { fa4 } >> <mi la do>8-.[ <re mi sold si>-.] <do mi la>8.-.[ sold'16] la([ si do re])
<la do mi>8[ <la do mi>16 <la do mi>] <la do mi>8[ <si mi>] <la do re la'>4 <do fad>
<si sol'>8([ la'16 si]) <la, re fad>8-.[ <sol la dod mi>-.] <fad la re>4 la16([ si do dod])
%--- 13
re2 re8[ re16 re] re8[ re]
re2 re8[ re16 re] re8[ re]
re2 re8[ re16 re] re8[ re]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
priBasBB = \relative do'' {
%--- 16
re8 r r <do re> <si re>2
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
priBasBC = \relative do'' {
%--- 17
re8 r r <do re> <si re>4 r
%--- 18
<< { mi16([ red dod si]) } \\ { fad4 } >> <fad dod'>8-.[ <fad si red>-.] <sol si mi>-.[ <si red fad>-. <si mi sol>-. <si mi sold>-.]
%--- 19
<do! mi la>8-.[ <mi sold si>-. <mi la do>-. <sol,! lad dod>-.] <sol si re>4-. <la! do re fad>-.
<si re sol>4 r << { mi16([ red dod si]) } \\ { fad4 } >> <fad dod'>8-.[ <fad si red>-.]
<sol si mi>8-.[ <si red fad>-. <si mi sol>-. <si mi sold>-.] <do! mi la>8-.[ <mi sold si>-. <mi la do>-. <sol,! lad dod>-.]
<sol si re>4-. <la! do! re fad>-. <sol si re>-._\FINE r
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
priBasCA = \relative do'' {
%--- 23
\KEYTIMEB
sol4 sol8-.[ sol-.] sol4. la16([ sol])
sol8[ <fa' la>16( <mi sol>)] <mi sol>8-.[ <red fad>-.] \set doubleSlurs = ##t <mi sol>4( <do mi>8)[ sol-.] \set doubleSlurs = ##f
sol4 sol8-.[ sol-.] sol4. la16([ sol])
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
priBasCB = \relative do'' {
%--- 26
sol8[( <si sol'>) <la fa'>-. <si re>-.] do4 r8 sol
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
priBasCC = \relative do'' {
%--- 27
sol8[( <si sol'>) <la fa'>-. <si re>-.] do4 r8 mi,
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
priBasDA = \relative do' {
%--- 28
mi8([ fa16 mi]) mi8-.[ <mi sold si>-.] <mi la do>-.[ <mi sold si>-. <mi la>-. <mi sold si>-.]
%--- 29
<mi la do>8 <<
 { \voiceOne <si' fa'>16([ <do mi>]) <do mi>8 si'16([ la]) la8 } \\
 { \voiceTwo la,8 la\noBeam re16([ do]) <do mi>8 } \\
 { \voiceThree s8 s8 mi8 s8 } >>
 mi,32([ re do si] la8)[ re-.]
%--- 30
re8([ mi16 re]) re8-.[ <re fad la>-.] <re sol si>-.[ <re fad la>-. <re sol>-. <re fad la>-.]
%--- 31
<re sol si>8 <<
 { \voiceOne <la' mi'>16([ <si re>]) <si re>8 la'16([ sol]) sol8 } \\
 { \voiceTwo sol,8 sol\noBeam do16([ si]) <si re>8 } \\
 { \voiceThree s8 s8 re8 s8 } >>
 sol,8([ la si])
%--- 32
mib,4 mib8-.[ mib-.] mib4. fa16([ mib])
mib8 <reb' fa>16([ <do mib>]) <do mib>8-.[ <si! re>-.] \set doubleSlurs = ##t <do mib>4( <lab do>8)[ fad-.] \set doubleSlurs = ##f
sol4 sol8-.[ sol-.] sol4. la16([ sol])
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE D
priBasDB = \relative do'' {
%--- 35
sol8[( <si sol'>) <la fa'>-. <si re>-.] do4 r8 mi,
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE D
priBasDC = \relative do'' {
%--- 36
sol8[( <si sol'>) <la fa'>-. <si re>-._\DACAPO] do4 r
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION PRIMO BAS
notePartPriBas = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 \priBasAP
 \priBasBA \priBasBB \priBasBC
 \priBasCA \priBasCB \priBasCC
 \priBasDA \priBasDB \priBasDC
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI PRIMO BAS
noteMidiPriBas = {
 \clef bass
 \KEYTIME
 \IPRIMOBAS
 \priBasAM \priBasAM
 \priBasBA \priBasBB \priBasBA \priBasBC
 \priBasCA \priBasCB \priBasCA \priBasCC
 \priBasDA \priBasDB \priBasDA \priBasDC
 \priBasAM \priBasBA \priBasBC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B3. PRIMO DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
dynPartPriA =  {
%--- 1
s1\f
s1*2
s2. s4\p
\DYNEXO #'(0.3 . 0) \TSCREXO #'(1.5 . 0.5) s2.\p-\SFORZATO s4-\SFORZATO
%--- 6
s1
s2. s4-\SFORZATO
s1
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
dynPartPriBA = {
%--- 9
s2\f s2-\SFORZATO
s1-\SFORZATO
s2 s2-\SFORZATO
s2. s4\p
%--- 13
\DYNEXO #'(1.5 . 0) s2.\p s4-\SFORZATO
s1*2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynPartPriBB = {
%--- 16
s1
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
dynPartPriBC = {
%--- 17
s1
\DYNEXO #'(1 . 0) s1\f
s1
s2 s2\sf
s1*2
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
dynPartPriCA = {
%--- 23
s1\p
s1*2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
dynPartPriCB = {
%--- 26
s1
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
dynPartPriCC = {
%--- 27
s2.. s8\f
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
dynPartPriDA = {
%--- 28
s4. s8\f s2
s1*2
%--- 31
s2 s8 s4\p\decr s8\!
s1\pp
s1
\CRESC s2\cr s4\! s8 s16\cr s16\!
}


%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE D
dynPartPriDB = {
%--- 35
s16\decr s16\! s2. s8\f
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE D
dynPartPriDC = {
%--- 36
s1
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION PRIMO
dynPartPri = {
 \override DynamicTextSpanner #'dash-period = #-1
 \TSCREXOB #'(1 . 1) 
 \dynPartPriA
 \dynPartPriBA \dynPartPriBB \dynPartPriBC
 \dynPartPriCA \dynPartPriCB \dynPartPriCC
 \dynPartPriDA \dynPartPriDB \dynPartPriDC
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. SECONDO/PRIMO DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
dynMidiA = {
%--- 1
s1\f
s1*2
s2. s4\p
s1\p
%--- 6
s1*3
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
dynMidiBA = {
%--- 9
s1\f
s1*2
s2. s4\p
%--- 13
s1\p
s1*2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynMidiBB = {
%--- 16
s1
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
dynMidiBC = {
%--- 17
s2 s2\f
s1*2
%--- 20
s2 s4\ff s4\f
s1*2
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
dynMidiCA = {
%--- 23
s1\p
s1*2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE C
dynMidiCB = {
%--- 26
s1
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE C
dynMidiCC = {
%--- 27
s2.. s8\f
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
dynMidiDA = {
%--- 28
s4. s8\f s2
s1*2
%--- 31
s2 s8 s4.\p\decr
s1\!\pp
s1
s2..\cr s8\!\f
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE D
dynMidiDB = {
%--- 35
s4\f\decr s4\!\p s4. s8\f
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE D
dynMidiDC = {
%--- 36
s1
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE DYNAMIQUES MIDI
dynMidi = {
 \dynMidiA  \dynMidiA
 \dynMidiBA \dynMidiBB \dynMidiBA \dynMidiBC
 \dynMidiCA \dynMidiCB \dynMidiCA \dynMidiCC
 \dynMidiDA \dynMidiDB \dynMidiDA \dynMidiDC
 \dynMidiA  \dynMidiBA \dynMidiBC
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
   \new Staff = "secUp"   { \SILENCE << \noteMidiSecHaut \dynMidi >> }
   \new Staff = "secDown" { \SILENCE << \noteMidiSecBas  \dynMidi >> }
   \new Staff = "PriUp"   { \SILENCE << \noteMidiPriHaut \dynMidi >> }
   \new Staff = "PriDown" { \SILENCE << \noteMidiPriBas  \dynMidi >> }
 >>
 \midi {
 \context {
   \Score
% ECHELLE DU VOLUME DE SORTIE MIDI
   dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
   tempoWholesPerMinute = #(ly:make-moment 80 4)
  }
 }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER SchubertF-D733-2-3Marches.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
