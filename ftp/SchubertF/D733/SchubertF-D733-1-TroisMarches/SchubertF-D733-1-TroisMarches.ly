%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D733-1-3Marches.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                              FRANZ SCHUBERT: "Trois Marches militaires", für Klavier zu 4 Händen
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                 1. Allegro vivace in D-Dur
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
  " " { \italic "♫  Franz Schubert: Trois Marches militaires (D.733-1)  ♫" }  \fromproperty #'page:page-number-string }
evenHeaderMarkup = \markup \fontsize #2 \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Trois Marches militaires (D.733-1)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
% MUTOPIA
 mutopiatitle = "Trois Marches militaires"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.733-1 (Op. 51)"
 mutopiainstrument = "Piano"
 date = "1818"
 source = "Breitkopf & Härtel"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1545"
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
%  Sur les pages autres que les premières de chaque piano, les portées ont les mêmes mesures en vis-à-vis (la première 
%  page du Primo commence par 6 mesures silencieuses).
%  Les sauts de page sont gérés manuellement, de même que les sauts de portée, autant que possible.
%
%  La partition a été divisée en quatre parties en raison des reprises, qui sont gérées manuellement (Midi oblige)
%  - Première partie  A: AA, 1 DE LA REPRISE DE AB, 2 DE LA REPRISE DE AC
%  - Deuxième partie  B: BA, 1 DE LA REPRISE DE BB, 2 DE LA REPRISE DE BC
%  - Troisième partie C: reprise à l'identique
%  - Quatrième partie D: reprise à l'identique
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
KEYTIME  = { \key re \major \time 2/4 }
KEYTIMEB = { \key sol \major \time 2/4 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large  { \hspace #-5 "Allegro vivace." } }
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
 \set Staff.midiMaximumVolume = #0.8
}
%----- SCRIPT / MARKUP
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
TSCREXOB =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \override TextScript #'extra-offset = #$beg-end #})
%----- MARKUP
ENTETEA = \markup { \fill-line { \column { \center-column {
 \fontsize #6 \bold "Trois Marches militaires" " "
 \fontsize #3 \bold "D.733 (Op. 51.)" " "
 \fontsize #2 "für Klavier zu 4 Händen"
 } } } }
ENTETEB =  \markup { \fill-line { " "  { \column \center-align {
 \fontsize #4 \bold "Franz Schubert" \fontsize #1.5 "(1797-1828)" " " \fontsize #1.5 "D.733 (Op. 51 No1, 1818)" " "
 } } } }
ENTETEC = \markup { \fill-line { \column { \center-column {
 \fontsize #4 \bold "1. Allegro vivace in D-Dur" " "
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
CRESCM    = \markup { \bold \italic "cresc." }
CRESC     = { \set crescendoText   = \markup { \bold \italic "cresc." }   \set crescendoSpanner = #'dashed-line }
%----- DEPLACER UNE DYNAMIQUE OU MODIFIER SON LIBELLE
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. SECONDO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A1. SECONDO NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
secHautAA = \relative do' {
%--- 1
re8-.[ la16-. la-.] sold8([ la])
re8-.[ la16-. la-.] sold8([ la])
re8-.[ la-. re-. la-.]
re8-.[ la-. fad-. la-.]
re8-.[ la-. re-. fad-.]
%--- 6
la2
r8 <fad, la re>16[ <fad la re>] <fad la re>8-.[ <fad la re>-.] \break
r8 <la dod mi>16[ <la dod mi>] <la dod mi>8-.[ <la dod mi>-.]
r8 <fad la re>16[ <fad la re>] <la dod mi>8-.[ <la re fad>-.]
r8 <la dod mi>16[ <la dod mi>] <la dod mi>8-.[ <la dod mi>-.]
%--- 11
r8 <fad la re>16[ <fad la re>] <fad la re>8[ <fad la re>]
r8 <fad la red>16[ <fad la red>] <fad la red>8[ <fad la red>]
r8 <sol si mi> r <si red>
<sol si mi>4 r4 \clef treble
<la dod mi>8[ <la dod mi>16 <la dod mi>] <la si re>8-.[ <la dod mi>-.] \break
%--- 16
<la re fad>8-.[ <la mi' sol>-.] <la fad' la>4
<la dod mi>8-.[ <la re fad>-.] <la mi' sol>4
<la re fad>8-.[ <la dod mi>-.] <fad la re>4
<la dod mi>8[ <la dod mi>16 <la dod mi>] <la si re>8-.[ <la dod mi>-.]
<la re fad>8-.[ <la mi' sol>-.] <la fad' la>4
%--- 21
<si mi>8-.[ <dod mi>-.] <re mi>8.[ mi16]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE A
secHautAB = \relative do' {
%--- 22
\set Score.repeatCommands = #'((volta "1")) <dod mi>8[ la16 la] la8[ \TSCREXO #'(1 . 6.9) la_\CLEFBASS]
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE A
secHautAC = \relative do' {
%--- 23
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) <dod mi>8 [ mi16 mi] mi8[ mi] \pageBreak
\set Score.repeatCommands = #'((volta #f)) sol8^\SECONDOB [ mi16-. mi-.] red8([ mi])
sol8[ mi16-. mi-.] red8([ mi])
}


%%%%%%%%%%%%%%%%%%%% PARTIE B
secHautBA = \relative do'' {
\set Score.repeatCommands = #'(start-repeat)
%--- 26
sol8 [( mi) sol( mi)]
sol8 [( mi) sol( mi)]  
<mi sol do>8[ <mi sol do>16 <mi sol do>]      <re sol si>8-.[ <mi sol do>-.]
<fa sol re'>8[ <mi sol do>16-. <mi sol do>-.] <re sol si>8-.[ <mi sol do>-.]
<fa sol re'>8-.[ <mi sol do>-. <fa sol re'>8-. <mi sol do>-.]  \break
%--- 31
<fa sol re'>8-.[ <mi sol do>-. <fa sol re'>8-. <mi sol do>-.] 
r8 \clef bass <mi, sold si>8[ <mi sold si> <mi sold si>]
r8 <mi la do>8[ <mi la do> <mi la do>]
r8 <mi si' re>8[ <mi do' mi> <mi sold re'>]
r8 <mi la do>8[ <mi la do> <mi sol! la>]
%--- 36
r8 <re fad la>8[ <re mi sol> <re fad la>]
r8 <re sol si>8[ <re sol si> <re sol si>] \break
r8 <re la' do>8[ <re si' re> <re la' do>]
r8 <re sol si>8 <re sol si>8[ si'16 si]
si8[ si16 si] <lad si>8[ <la si>]
%--- 41
<sol si>8[ <fad si> <mi si'> <re si'>]
<dod mi la>4 <mi sold re'>
<mi la dod>8 \clef treble la'16[ la] la8[la]
r8 \clef bass <fad, la re>16[ <fad la re>] <fad la re>8-.[ <fad la re>-.] \break
r8 <la dod mi>16[ <la dod mi>] <la dod mi>8-.[ <la dod mi>-.]
%--- 46
r8 <fad la re>16[ <fad la re>] <la dod mi>8-.[ <la re fad>-.]
r8 <la dod mi>16[ <la dod mi>] <la dod mi>8[ <la dod mi>]
r8 <fad la re>16[ <fad la re>] <fad la re>8[ <fad la re>]
r8 <fad si red>16[ <fad si red>] <fad si red>8[ <fad si red>]
r8 <sol si mi> r <si red>
%--- 51
<sol si mi>4 r4 \clef treble \pageBreak
<la dod mi>8^\SECONDOB [ <la dod mi>16 <la dod mi>] <la si re>8-.[ <la dod mi>-.]
<la re fad>8-.[ <la mi' sol>-.] <la fad' la>4_>
<la dod mi>8-.[ <la re fad>-.] <la mi' sol>4_> 
<la re fad>8-. [ <la dod mi>-.] <fad la re>4
%--- 56
<la dod mi>8[ <la dod mi>16 <la dod mi>] <la si re>8-.[ <la dod mi>-.]
<la re fad>8-.[ <la mi' sol>-.] <la fad' la>4
<la mi' la>8-.[ <la fad' la>-.] <la sol' la>8.[ <la la'>16] \break
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
secHautBB = \relative do' {
%--- 59
\set Score.repeatCommands = #'((volta "1")) <la fad' la>8 si16[ si] si8[ si]
<sol si mi>8[ mi'16-. mi-.] red8([ mi])
sol8[ mi16-. mi-.] red8([ mi])
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
secHautBC = \relative do' {
%--- 62
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) <la fad' la>8 \clef bass la16-.[ la-.] sold8(( la])
\set Score.repeatCommands = #'((volta #f)) re8[ la16-. la-.] sold8(( la])
re8[ la16-. la-.] sold8(( la])
re8-.[ la-. re-. la-.] \break
%--- 66
re8-.[ la-. fad-. la-.]
re8[ la16 la] la8[ la]
<fad la re>2
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
secHautC = \relative do {
\KEYTIMEB
%--- 69
r8^\TRIO <re sol si> r <re sol si>
r8 <re sol si> r <re sol si>
%--- 71
r8 <re sol si> r <re fad do'>^>
r8 <re sol si> r <re sol si>
r8 <re sol si> r <re sol si> \break
r8 <re sol si> r <re sol si>
r8 <re sol si> r <mi sol do>^>
%--- 76
r8 <re sol si> r <re sol si>
r8 <re sol si> r <re sol si>
r8 <re sol si> r <re sol si>
r8_\CRESCM <mi sol dod>8 r <mi sol dod>
r8 <fad la re> r <fad la re> \pageBreak
%--- 81
<sol dod>8-.^\SECONDOB ([ <fad dod'>-. <sol dod>-. <la dod>-.])
r8 <fad la re> r <fad la re>
r8 <mi la dod> r <mi la dod>
r8 <fad la re> r <fad la re>
<sol dod>8-.([ <fad dod'>-. <sol dod>-. <la dod>-.])
%--- 86
<fad re'>8[ <re fad re'>( <mi sol dod> <fad la do>)]
\bar ":|:"
}

%%%%%%%%%%%%%%%%%%%% PARTIE D
secHautD = \relative do {
%--- 87
r8 <re sol sib> r <re sol sib>
r8 <re sol sib> r <re sol sib> \break
r8 <re sol sib> r <fa la do>^>
r8 <fa sib re> r <fa sib re>
%--- 91
r8 <fa sib re> r <fa sib re>
r8 <fa sib re> r <sol sib mib>
r8 <fa sib re> r <fa la do mib>^>
r8 <fa sib re> r <fa sib re>
r8 <sol sib re> r <sol sib re> \break
%--- 96
r8 <sol sib re> r <sol sib re>
r8 <sol sib re> r <fa la do mib>^>
r8 <fa sib re> r <fa sib re>
r8 <fa sib re> r <fa sib re>
r8 <fa sib re> r <sol sib sol'>^>
%--- 101
r8 <sol sib re> r <fad! do' re>
r8 <sol sib re> r <sol sib re> \break
r8 <re la' do> r <re la' do>
r8 <re sol si!> r <re sol si>
r8 <re fad do'> r <re fad do'>
%--- 106
<re sol si>8[ <mi sol do>] <sol si>4^>
r8 <re la' do> r <re la' do>
r8 <re sol si> r <re sol si>
r8 <re la' do> r <re la' do>
r8 <re sol si> r <re sol si>
\bar "|."
\pageBreak
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION SECONDO HAUT
notePartSecHaut = {
 \clef bass
 \KEYTIME
 s1*0 ^\MOVEMENT
 \set autoBeaming = ##f
 \secHautAA \secHautAB \secHautAC
 \secHautBA \secHautBB \secHautBC
 \secHautC \secHautD
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI SECONDO HAUT
noteMidiSecHaut = {
 \clef bass
 \KEYTIME
 \ISECONDO
 \secHautAA \secHautAB \secHautAA \secHautAC
 \secHautBA \secHautBB \secHautBA \secHautBC
 \secHautC  \secHautC  \secHautD  \secHautD
 \secHautAA \secHautAC \secHautBA \secHautBC
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A2. SECONDO NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
secBasAA = \relative do {
%--- 1
re8-.[ la16-. la-.] sold8([ la])
re8-.[ la16-. la-.] sold8([ la])
re8-.[ la-. re-. la-.]
re8-.[ la-. fad-. la-.]
re8-.[ la-. re-. fad-.]
%--- 6
la2
<re,, re'>4 r
<la la'>4 r
<re re'>4 r
<la la'>4 r
%--- 11
<re re'>4 r
<si si'>4 r
<mi mi'>8 r <si si'> r
<mi mi'>4 r
<la, la'>4 r8 <la la'>
%--- 16
<re re'>4 r8 <fad, fad'>
<la la'>4 r8 <la la'>
<re re'>8-.[ <la la'>-.] <re re'>4
<la la'>4 r8 <la la'>
<re re'>4 r8 <re re'>
%--- 21
<mi mi'>8-.[ <mi mi'>-.] <mi mi'>8.[ <mi mi'>16]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE A
secBasAB = \relative do, {
%--- 22
<la la'>8[ la'16 la] la8[ la]
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE A
secBasAC = \relative do, {
%--- 23
<la la'>8 mi''16[ mi] mi8[ mi]
sol8[ mi16-. mi-.] red8([ mi])
sol8[ mi16-. mi-.] red8([ mi])
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
secBasBA = \relative do' {
%--- 26
sol8 [( mi) sol( mi)] 
sol8 [( mi) sol( mi)] 
do8[ do16 do] sol8-.[ do-.]
sol8-.[ do16-. do-.] sol8-.[ do-.]
sol8-.[ do-. sol-. do-.]
%--- 31
sol8-.[ do-. sol-. do-.]
mi,4 r
mi4 r
mi4 r
la4 r
%--- 36
re,4 r
re4 r
re4 r
sol4 r8 si16[ si]
si4 <lad si>8[ <la si>]
%--- 41
<sol si>8[ <fad si> <mi si'> re]
dod4 mi
la8 r8 r4
<re, re'>4 r
<la la'>4 r
%--- 46
<re re'>4 r
<la la'>4 r
<re re'>4 r
<si si'>4 r
<mi mi'>8 r <si si'> r
%--- 51
<mi mi'>4 r
<la, la'>4 r8 <la la'>
<re re'>4 r8 <fad, fad'>
<la la'>4 r8 <la la'>
<re re'>8-.[ <la la'>-.] <re re'>4
%--- 56
<la la'>4 r8 <la la'>
<re re'>4 r8 <fad, fad'>
<la la'>8-.[ <la la'>-.] <la la'>8.[ <la la'>16]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
secBasBB = \relative do, {
%--- 59
<re re'>8 si'16[ si] si8[ si]
<mi, mi'>8 mi'16-.[ mi-.] red8([ mi])
sol8[ mi16-. mi-.] red8([ mi])
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
secBasBC = \relative do, {
%--- 62
<re re'>8 la'16-.[ la-.] sold8(( la])
re8[ la16-. la-.] sold8(( la])
re8[ la16-. la-.] sold8(( la])
re8-.[ la-. re-. la-.]
%--- 66
re8-.[ la-. fad-. la-.]
re8[ la16 la] la8[ la]
<re, la' re>2_\FINE
\bar "||"
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
secBasC = \relative do {
\KEYTIMEB
%--- 69
sol8 r si r
sol8 r si r
%--- 71
sol8 r re4_>(
sol8) r si r
sol8 r si r
sol8 r si r
sol8 r sol,4_>(
%--- 76
sol'8) r si r
sol8 r si r
sol8 r si r
la8 r la,8 r
la'8 r la,8 r
%--- 81
la'8 r la,8 r
re8 r fad8 r
la8 r la,8 r
la'8 r la,8 r
la'8 r la,8 r
%--- 86
re4 r
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
secBasD = \relative do {
%--- 87
sol8 r sib r
sol8 r sib r
sol8 r fa4_>(
sib8) r sib, r
%--- 91
sib'8 r re r
sib8 r mib, r
sib'8 r fa4_>(
sib8) r sib, r
sol'8 r sib r
%--- 96
sol8 r sib r
sol8 r fa4_>(
sib8) r sib, r
sib'8 r re r
sib8 r mib,4_>(
%--- 101
re8) r re r
sol8 r sol, r
fad'!8 r re r
sol8 r re r
la'8 r re, r
%--- 106
sol8 r re r
fad8 r re r
sol8 r re r
fad8 r re_\DACAPO r
sol8 r sol, r
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION SECONDO BAS
notePartSecBas = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 \secBasAA \secBasAB \secBasAC
 \secBasBA \secBasBB \secBasBC
 \secBasC  \secBasD
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI SECONDO BAS
noteMidiSecBas = {
 \clef bass
 \KEYTIME
 \ISECONDO
 \secBasAA \secBasAB \secBasAA \secBasAC
 \secBasBA \secBasBB \secBasBA \secBasBC
 \secBasC  \secBasC  \secBasD  \secBasD
 \secBasAA \secBasAC \secBasBA \secBasBC
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A3. SECONDO DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
dynPartSecAA = {
%--- 1
s2\f
s2-\SFORZATO
s4-\SFORZATO s4-\SFORZATO
s2-\SFORZATO
s2
%--- 6
s2\sf
\DYNEXO #'(1 . 0) s2\p
s2*3
%--- 11
s2
\DYNEXO #'(1.5 . 0) s2\fp
s2*2
\DYNEXO #'(1 . -1) s2\f
%--- 16
s2*5
%--- 21
s2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE A
dynPartSecAB = {
%--- 22
s2
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE A
dynPartSecAC = {
%--- 23
s2
\DYNEXO #'(1 . 0) s2\fp
\DYNEXO #'(1 . 0) s2\fp
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
dynPartSecBA = {
%--- 26
s4\sf s4\sf 
s4\sf s4\sf 
s2\fp
s2-\SFORZATO
s4\fp s4\fp 
%--- 31
s4\fp s4\fp 
\DYNEXO #'(0.5 . 0) s2\p
s2*3
%--- 36
s2*3
s4. s8\f
\DYNEXO #'(0.5 . 0) s2\sf
%--- 41
s4.\cr s8\!
\DYNEXO #'(1 . 0) \PINEXO #'(1 . 0) s4.\ff\decr s8\!
s2
\DYNEXO #'(1 . 0) s2\p
s2
%--- 46
s2*3
\DYNEXO #'(1 . 0) s2\fp
s2
%--- 51
s2
\DYNEXO #'(0 . -1) s2\f
s2*3
%--- 56
s2*3
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynPartSecBB = {
%--- 59
s8 s4.\sf
s2
\DYNEXO #'(0.5 . 0) s2\sf
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
dynPartSecBC = {
%--- 62
s2
\DYNEXO #'(0.5 . 0) s2\sf
\DYNEXO #'(0.5 . 0) s2\sf
\DYNEXO #'(0.5 . 0) s4\sf s4\sf 
%--- 66
\DYNEXO #'(0.5 . 0) s2\sf
\DYNEXO #'(1.5 . 0) s2\ff
s2\sf
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
dynPartSecC = {
%--- 69
s2\p
s2
%--- 71
s2*5
%--- 76
s2*3
s8\cr s8\! s8\decr s8\!
s2
%--- 81
s2*2
s8\cr s8\! s8\decr s8\!
s2*2
%--- 86
s2
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
dynPartSecD = {
%--- 87
s2\p
s2*3
%--- 91
s2*5
%--- 96
s2*5
%--- 101
s2*2
\DYNEXO #'(1 . 0) s2\p
s2
\CRESC s2\cr
%--- 106
s2\!
\DYNEXO #'(1 . 0) s2\p
\CRESC s8\cr s8\! s8 s16\cr s16\!
s8 s4\decr s8\!
s2
}


%%%%%%%%%%%%%%%%%%%% SYNTHESE DYNAMIQUES PARTITION SECONDO
dynPartSec = {
 \override DynamicTextSpanner #'dash-period = #-1
 \TSCREXOB #'(1 . 1) 
 \dynPartSecAA \dynPartSecAB \dynPartSecAC
 \dynPartSecBA \dynPartSecBB \dynPartSecBC
 \dynPartSecC  \dynPartSecD
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. PRIMO NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
priHautAA = \relative do'' {
%--- 1
R2*6
%--- 7
<fad la>4 <mi sol>8-.[ <re fad>-.] \break
<dod mi>4 <dod fad>8-.[ <dod mi>-.]
re4 <dod mi>8-.[ <re fad>-.]
la8.([ si16] la8) r8
%--- 11
<fad' la>4 <mi sol>8-.[ <re fad>-.]
<red fad si>4 <red la'>8-.[ <red fad>-.]
<< { sol8[ la16 sol] fad8[ sol16 fad] } \\ { mi4 red } >>
mi16-.[ mi( fad sol] la[ si dod re!])
mi8[ mi16 mi] re8-.[ mi-.] \break
%--- 16
fad8-.[ sol-.] la4
mi8-.[ fad-.] sol4
fad8-.[ mi-.] re4
mi8[ mi16 mi] re8-.[ mi-.]
fad8-.[ sol-.] la4
%--- 21
\OCTAVEBEG sold8-.[ la-.] si8.([ dod16])
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE A
priHautAB = \relative do'''' {
%--- 22
\set Score.repeatCommands = #'((volta "1")) la4 \OCTAVEEND r4
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE A
priHautAC = \relative do'''' {
%--- 23
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) la8[ mi16 mi] mi8[ mi] \pageBreak
\set Score.repeatCommands = #'((volta #f)) sol!8-.^\PRIMOB [ mi16-. mi-.] red8([ mi])
sol8-.[ mi16-. mi-.] red8([ mi])
}


%%%%%%%%%%%%%%%%%%%% PARTIE B
priHautBA = \relative do'''' {
\set Score.repeatCommands = #'(start-repeat)
%--- 26
sol8 [( mi) sol( mi)]
sol8[( mi) sol( mi)]
<sol, do>8[ <sol do>16 <sol do>] <sol si>8-.[ <sol do>-.]
\slurUp \acciaccatura mi'8 <sol, re'>8-.[ <sol do>16-. <sol do>-.] <sol si>8-.[ <sol do>-.]
\slurUp \acciaccatura mi'8 <sol, re'>8-.[ <sol do>-. \slurUp \acciaccatura mi'8 <sol, re'>-. <sol do>-.] \break
%--- 31
\slurUp \acciaccatura mi'8 <sol, re'>8-.[ <sol do>-. \slurUp \acciaccatura mi'8 <sol, re'>-. <sol do>-.] \slurNeutral
mi'4 red8-.[ re-.]
do4 si8-.[ la-.]
sold4 la8-.[ si-.]
\acciaccatura si8 la16([ sold la si] do8-.)[ dod-.]
%--- 36
re4 dod!8-.[ do-.]
si4 la8-.[ sol-.] \break
fad4 sol8-.[ la-.]
\acciaccatura la8 sol16([ fad sol la] si8)[ si16 si]
si4 dod!8-.[ red-.]
%--- 41
mi8-.[ fad-. sol-. sold-.]
\OCTAVEBEG la4 \acciaccatura dod8 si16([ la si dod])
la8 \OCTAVEEND r r4
<fad, la>4 <mi sol>8-.[ <re fad>-.] \break
<dod mi>4 <dod fad>8-.[ <dod mi>-.]
%--- 46
re4 <dod mi>8-.[ <re fad>-.]
la8.([ si16] la8) r8
<fad' la>4 <mi sol>8-.[ <re fad>-.]
<red fad si>4 <red la'>8-.[ <red fad>-.]
<< { sol8[ la16 sol] fad8[ sol16 fad] } \\ { mi4 red } >>
%--- 51
mi16-.[ mi( fad sol] la[ si dod re!]) \pageBreak
mi8 ^\PRIMOB [ mi16 mi] re8-.[ mi-.]
fad8-.[ sol-.] la4
mi8-. [ fad-.] sol4
fad8-.[ mi-.] re4
%--- 56
mi8[ mi16 mi] re8-.[ mi-.]
fad8-.[ sol-.] la4
dod,8-.[ re-.] mi8.([ fad16]) \break
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
priHautBB = \relative do''' {
%--- 59
\set Score.repeatCommands = #'((volta "1")) re8 <fad, la si red>16[ <fad la si red>] <fad la si red>8[ <fad la si red>]
<sol si mi>8 mi'16-.[ mi-.] red8([ mi])
sol8-.[ mi16-. mi-.] red8([ mi])
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
priHautBC = \relative do''' {
%--- 62
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) re4 r
\set Score.repeatCommands = #'((volta #f)) R2*3 \break
R2
%--- 67
r8 \OCTAVEBEG la'16[ la] la8[ la]
<re, fad la re>2 \OCTAVEEND
\bar "||"

}


%%%%%%%%%%%%%%%%%%%% PARTIE C
priHautC = \relative do''' {
\KEYTIMEB
%--- 69
re4-.^\TRIO ( re-. 
re4-. re-.)
%--- 71
re8([ do16 si] la8[ si16 la]
sol8)[ r16 fad]( sol16[ la si do])
re4-.( re-. \break
re4-. re-.)
mi8([ fad16 sol] la8[ sol16 mi]
%--- 76
re8-.) r16 re,( sol[ la si do])
re4-.( re-.
re4-. re-.)
dod8([ si la sol]
fad8[ la re fad]) \pageBreak
%--- 81
\acciaccatura fad8 mi8-.^\PRIMOB ([ red-. mi-. fad-.])
re!4 ( la8) la16([ re])
re16[( dod) dod( si)] si16[( la) la( sol)]
fad8([ la re fad])
\acciaccatura fad8 mi8-.([ red-. mi-. fad-.])
%--- 86
re!4 r
\bar ":|:"
}


%%%%%%%%%%%%%%%%%%%% PARTIE D
priHautD = \relative do'' {
%--- 87
re4-.( re-.
re4-. re-.) \break
re8([ do!16 re] mib8[ fa16 mib])
re8.([ do16] sib[ do re mib])
%--- 91
fa4-.( fa-.
fa4-. sol-.)
fa8([ mib16 re] do8[ re16 mib])
re4 r
re'4-.( re-. \break
%--- 96
re4-. re-.)
re8([ do16 re] mib8[ fa16 mib])
re8.([ do16] sib[ do re mib])
fa4-.( fa-.
fa4-. sol-.)
%--- 101
re8([ do16 sib] la8[ sib16 la])
sol4 r \break
re4-.( re-.
re4-. re-.)
re8([ fad la do])
%--- 106
si!8([ <do mi>] <si re>4)
re,4-. re-.
re8([ sol si re]
fad8[ mi do la])
sol4 r
\bar "|."
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION PRIMO HAUT
notePartPriHaut = {
 \clef treble
 \KEYTIME
 s1*0 ^\MOVEMENT
 \set autoBeaming = ##f
 \priHautAA \priHautAB \priHautAC
 \priHautBA \priHautBB \priHautBC
 \priHautC  \priHautD
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI PRIMO HAUT
noteMidiPriHaut = {
 \clef treble
 \KEYTIME
 s1*0 ^\MOVEMENT
 \IPRIMOHAUT
 \priHautAA \priHautAB \priHautAA \priHautAC
 \priHautBA \priHautBB \priHautBA \priHautBC
 \priHautC  \priHautC  \priHautD  \priHautD
 \priHautAA \priHautAC \priHautBA \priHautBC
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. PRIMO NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
priBasAA = \relative do'' {
%--- 1
R2*6
%--- 7
la4 la8-.[ la-.]
<sol la>4 la8-.[ <sol la>-.]
<fad la>4 la8-.[ la-.]
sol4. r8
%--- 11
<fad la>4 la8-.[ la-.]
<la si>4 <la si>8-.[ <la si>-.]
<sol si>4 <la si>
<sol si>4 r4
<dod mi>8[ <dod mi>16 <dod mi>] <si re>8-.[ <dod mi>-.]
%--- 16
<re fad>8-.[ <mi sol>-.] <fad la>4
<dod mi>8-.[ <re fad>-.] <mi sol>4
<re fad>8-.[ <la dod mi>-.] <fad la re>4
<dod' mi>8[ <dod mi>16 <dod mi>] <si re>8-.[ <dod mi>-.]
<re fad>8-.[ <mi sol>-.] <fad la>4
%--- 21
sold8-.[ la-.] si8.([ dod16])
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE A
priBasAB = \relative do''' {
%--- 22
la4 r4
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE A
priBasAC = \relative do''' {
%--- 23
la8[ mi16 mi] mi8[ mi]
sol!8-.[ mi16-. mi-.] red8([ mi])
sol8-.[ mi16-. mi-.] red8([ mi])
}


%%%%%%%%%%%%%%%%%%%% PARTIE B
priBasBA = \relative do''' {
%--- 26
sol8[( mi) sol( mi)]
sol8[( mi) sol( mi)]
mi8[ mi16 mi] re8-.[ mi-.]
fa8-.[ mi16 mi] re8-.[ mi-.]
fa8-.[ mi-. fa8-. mi-.]
%--- 31
fa8-.[ mi-. fa8-. mi-.]
mi4 red8-.[ re-.]
do4 si8-.[ la-.]
si8[(fa') mi-. re-.]
\acciaccatura re8 do16([ si do re] mi8-.)[ mi-.]
%--- 36
re4 dod!8-.[ do-.]
si4 la8-.[ sol-.]
la8[( <do mi>) <si re>-. <la do>-.]
si16([ la si do] re8)[ si16 si]
si4 dod!8-.[ red-.]
%--- 41
mi8-.[ fad-. sol-. sold-.]
la4 \acciaccatura dod8 si16([ la si dod])
la8 r r4
la,4 la8-.[ la-.]
<sol la>4 la8-.[ <sol la>-.]
%--- 46
<fad la>4 la8-.[ la-.]
sol4. r8
<fad la>4 la8-.[ la-.]
<la si>4 <la si>8-.[ <la si>-.]
<sol si>4 <la si>
%--- 51
<sol si>4 r4
<dod mi>8[ <dod mi>16 <dod mi>] <si re>8-.[ <dod mi>-.]
<re fad>8-.[ <mi sol>-.] <fad la>4
<dod mi>8-.[ <re fad>-.] <mi sol>4
<re fad>8-.[ <la dod mi>-.] <fad la re>4
%--- 56
<dod' mi>8[ <dod mi>16 <dod mi>] <si re>8-.[ <dod mi>-.]
<re fad>8-.[ <mi sol>-.] <fad la>4
dod8-.[ re-.] mi8.([ fad16])
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
priBasBB = \relative do'' {
%--- 59
re8 <fad, la si red>16[ <fad la si red>] <fad la si red>8[ <fad la si red>]
<sol si mi>8 mi'16-.[ mi-.] red8([ mi])
sol8-.[ mi16-. mi-.] red8([ mi])
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
priBasBC = \relative do'' {
%--- 62
re4 r
R2*4
%--- 67
r8 <la la'>16[ <la la'>] <la la'>8[ <la la'>]
<la re fad>2_\FINE
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
priBasC = \relative do'' {
\KEYTIMEB
%--- 69
re4-.( re-.
re4-. re-.)
%--- 71
re8([ do16 si] la8[ si16 la]
sol8)[ r16 fad]( sol16[ la si do])
re4-.( re-.
re4-. re-.)
mi8([ fad16 sol] la8[ sol16 mi]
%--- 76
re8-.) r16 re,( sol[ la si do])
re4-.( re-.
re4-. re-.)
dod8([ si la sol]
fad8[ la re fad])
%--- 81
\acciaccatura fad8 mi8-.([ red-. mi-. fad-.])
re!4( la8) la16([ re])
re16[( dod) dod( si)]
si16[( la) la( sol)]
fad8([ la re fad])
\acciaccatura fad8 mi8-.([ red-. mi-. fad-.])
%--- 86
re!4 r
}


%%%%%%%%%%%%%%%%%%%% PARTIE D
priBasD = \relative do' {
%--- 87
R2*2
r4 \set doubleSlurs = ##t <fa la do>(
<fa sib>8) r r4
%--- 91
R2*2
r4 <fa la>(
<fa sib>8) \set doubleSlurs = ##f r sib16([ la sib do])
re4-.( re-.
%--- 96
re4-. re-.)
<< { \stemDown re8([ do16 re] \stemUp mib8[ fa16 mib]) \stemNeutral } \\ { s4 <la, do> } >>
<sib re>8.([ do16] sib[ do re mib])
fa4-.( fa-.
fa4-. sol-.)
%--- 101
re8([ do16 sib] la8[ sib16 la])
sol4 r \break
re4-.( re-.
re4-. re-.)
re8([ fad la do])
%--- 106
si!8([ <do mi>] <si re>4)
re,4-. re-.
re8([ sol si re]
fad8 [ mi do_\DACAPO la])
sol4 r
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION PRIMO BAS
notePartPriBas = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 \priBasAA \priBasAB \priBasAC
 \priBasBA \priBasBB \priBasBC
 \priBasC  \priBasD
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI PRIMO BAS
noteMidiPriBas = {
 \clef treble
 \KEYTIME
 \IPRIMOBAS
 \priBasAA \priBasAB \priBasAA \priBasAC
 \priBasBA \priBasBB \priBasBA \priBasBC
 \priBasC  \priBasC  \priBasD  \priBasD
 \priBasAA \priBasAC \priBasBA \priBasBC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B3. PRIMO DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
dynPartPriAA = {
%--- 1
s2*6
%--- 7
\DYNEXO #'(-0.5 . 0) s2\p-\SFORZATO
s2-\SFORZATO
s2-\SFORZATO
s2
%--- 11
s2-\SFORZATO
\TSCREXO #'(0.5 . 0) s2\fp-\SFORZATO
s2
s4 \CRESC s8.\cr s16\!
\DYNEXO #'(1 . -1) s2\f
%--- 16
s2*4
s4 s4-\SFORZATO
%--- 21
s2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE A
dynPartPriAB = {
%--- 22
s2
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE A
dynPartPriAC = {
%--- 23
s2
\DYNEXO #'(1 . 0) s2\fp
\DYNEXO #'(1 . 0) s2\fp
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
dynPartPriBA = {
%--- 26
s4\sf s4\sf 
\DYNEXO #'(1 . 0) s4\sf \DYNEXO #'(1 . 0) s4\sf 
\DYNEXO #'(1 . 0) s2\fp
s2-\SFORZATO
s4\fp s4\fp 
%--- 31
s4\fp s4\fp 
\DYNEXO #'(0.5 . 0) \TSCREXO #'(0.5 . 0) s2\p-\SFORZATO
s2-\SFORZATO
s2-\SFORZATO
s2
%--- 36
s2-\SFORZATO
s2-\SFORZATO
s2
s4. s8\f
s2-\SFORZATO
%--- 41
s4.\cr s8\!
\DYNEXO #'(1 . 0) s4\ff s8.\decr s16\!
s2
\DYNEXO #'(0.5 . 0) \TSCREXO #'(0.5 . 0) s2\p-\SFORZATO
s2-\SFORZATO
%--- 46
s2-\SFORZATO
s2
s2-\SFORZATO
\TSCREXO #'(0.5 . 0) s2\fp-\SFORZATO
s2
%--- 51
s2
s2\f
s4 s4-\SFORZATO
s4 s4-\SFORZATO
s4 s4-\SFORZATO
%--- 56
s2*2
s4 s4-\SFORZATO
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynPartPriBB = {
%--- 59
s8 s4.\sf
s2
s2\sf
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
dynPartPriBC = {
%--- 62
s2
s2*4 
%--- 67
\DYNEXO #'(1 . 0) s2\ff
s2\sf
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
dynPartPriC = {
%--- 69
s2\p
s2
%--- 71
s4 s4-\SFORZATO
s2*3
s8.\cr s16\! s8.\decr s16\!
%--- 76
s2*3
\TSCREXO #'(-2 . 2) s8-\CRESCM s8 \PINEXO #'(-1 . 0) s16\cr s16\! \PINEXO #'(-2 . 0) s16\decr s16\!
s2
%--- 81
s2*2
s8\cr s8\! s8\decr s8\!
s2*2
%--- 86
s2
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
dynPartPriD = {
%--- 87
s2\p
s2
s4 s4-\SFORZATO
s2
%--- 91
s2*2
s4 s4-\SFORZATO
s2*2
%--- 96
s2
s4 s4-\SFORZATO
s2*2
s4 s4-\SFORZATO
%--- 101
s2*2
\DYNEXO #'(1 . 0) s2\p
s2-\SFORZATO
\CRESC s2\cr
%--- 106
s2\!
\DYNEXO #'(1 . 0) s8\p \CRESC s4\cr s8\!
s4.\cr s8\!
s4\decr s8 s8\!
s2
}


%%%%%%%%%%%%%%%%%%%% SYNTHESE DYNAMIQUES PARTITION PRIMO
dynPartPri = {
 \override DynamicTextSpanner #'dash-period = #-1
 \TSCREXOB #'(1 . 1) 
 \dynPartPriAA \dynPartPriAB \dynPartPriAC
 \dynPartPriBA \dynPartPriBB \dynPartPriBC
 \dynPartPriC  \dynPartPriD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. SECONDO/PRIMO DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
dynMidiAA = {
%--- 1
s2\f
s2*4
%--- 6
s2\fff
s2\p
s2*3
%--- 11
s2
s4\mf s4\p
s2
s4 s4\cr
s2\!\f
%--- 16
s2*5
%--- 21
s2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE A
dynMidiAB = {
%--- 22
s2
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE A
dynMidiAC = {
%--- 23
s2
s8\ff s4.\f
s8\ff s4.\f
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
dynMidiBA = {
%--- 26
s8\ff s8\f s8\ff s8\f 
s8\ff s8\f s8\ff s8\f 
s8\ff s4.\p
s2
s8\f s8\p s8\f s8\p 
%--- 31
s8\f s8\p s8\f s8\p 
s2\p
s2*3
%--- 36
s2*3
s4. s8\f
s4\ff s4\f
%--- 41
s2\cr
s2\!\ff
s2\!\f
s2\p
s2
%--- 46
s2*3
s4\mf s4\p
s2
%--- 51
s2
s2\f
s2*3
%--- 56
s2*3
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynMidiBB = {
%--- 59
s2
s2
s8\ff s4.\f
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
dynMidiBC = {
%--- 62
s2
s8\ff s4.\f
s8\ff s4.\f
s8\ff s8\f s8\ff s8\f 
%--- 66
s8\ff s4.\f
s2\ff
s2\fff
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
dynMidiC = {
%--- 69
s2\p
s2
%--- 71
s2*4
s8\cr s8\!\mf s8\decr s8\!\p
%--- 76
s2*3
s8\cr s8\!\mf s8\decr s8\!\p
s2
%--- 81
s2*2
s8\cr s8\!\mf s8\decr s8\!\p
s2*2
%--- 86
s2
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
dynMidiD = {
%--- 87
s2\p
s2*3
%--- 91
s2*5
%--- 96
s2*5
%--- 101
s2*2
s2\p
s2
s2\cr
%--- 106
s2\!\f
s2\p\cr
s2
s8\!\f s4.\decr
s2\!\p
}


%%%%%%%%%%%%%%%%%%%% SYNTHESE DYNAMIQUES MIDI
dynMidi = {
 \dynMidiAA \dynMidiAB \dynMidiAA \dynMidiAC
 \dynMidiBA \dynMidiBB \dynMidiBA \dynMidiBC
 \dynMidiC  \dynMidiC  \dynMidiD  \dynMidiD
 \dynMidiAA \dynMidiAC \dynMidiBA \dynMidiBC
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
   \new Staff = "secUpA" << \notePartSecHaut >>
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
   \new Staff = "PriUpA" << \notePartPriHaut >>
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
 ("f" .     0.80)
 ("mf" .    0.68)
 ("mp" .    0.61)
 ("p" .     0.55)
 ("pp" .    0.50)
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
SILENCE = { \KEYTIME s2 s2 }

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
   tempoWholesPerMinute = #(ly:make-moment 120 4)
  }
 }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER SchubertF-D733-1-3Marches.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
