%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D899-4-Impromptu.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                      FRANZ SCHUBERT: "Impromptu in As-dur", für Klavier
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
oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Impromptu in As-dur (D.899-4)  ♫" }  \fromproperty #'page:page-number-string }
evenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Impromptu in As-dur (D.899-4)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}


\header {
 title = \markup \center-column { \fontsize #1.5 "Impromptu in As-dur" " " }
 subtitle = \markup { \fontsize #2.5 "D.899-4 (Opus 90 No 4.)" }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.899 (Op. 90 No4., 1827)" }
% MUTOPIA
 mutopiatitle = "Impromptu in As-dur"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.899 (Op. 90, No. 4)"
 mutopiainstrument = "Piano"
 date = "1827"
 source = "Breitkopf & Härtel, 1888"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1552"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  La partition a été divisée en quatre parties en raison des reprises, qui sont gérées manuellement (Midi oblige)
%  - Première partie  A: avec reprise presque à l'identique en partie E (quelques dynamiques varient,
%    et la fin diffère)
%  - Deuxième partie  B: avec reprise 1 et 2
%  - Troisième partie C: avec reprise à l'identique
%  - Quatrième partie D: sans reprise
%  - Quatrième partie D: (voir Première partie)
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. NOTES: A1. PIANO HAUT: VOIX 1, 2  A2. PIANO BAS: VOIX 1, 2
%  B. DYNAMIQUES PARTITION: communes aux deux portées
%  C. DYNAMIQUES MIDI: différentes pour chaque voix
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TEMPI
TEMPOBASE = \tempo 4=130
TEMPOFINA = \tempo 4=120
TEMPOFINB = \tempo 4=65
%----- INSTRUMENTS
IPIANOHAUTI = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUTII = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
}
IPIANOBASI = {
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
}
IPIANOBASII = {
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
}
%----- TONALITE ET MESURE
KEYA = { \key lab \major }
KEYB = { \key mi  \major }
TIME = { \time 3/4 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large  { \hspace #-5 "Allegretto." } }
TRIO   = \markup { \hspace #-5 \bold \large "Trio" }

%----- NOLET: CACHER OU AFFICHER LE NOMBRE OU LE CROCHET 
TUPNNO = \override TupletNumber #'transparent = ##t
TUPBNO = \override TupletBracket #'transparent = ##t
TUPNO  = { \TUPNNO \TUPBNO }
TUPNOK = \override TupletNumber #'transparent = ##f
TUPBOK = \override TupletBracket #'transparent = ##f
TUPOK  = { \TUPNOK \TUPBOK }
%----- LIAISON: ECHAPPEMENT 
SLURIN  = \override Script #'avoid-slur = #'inside
SLURINR = \revert Script #'avoid-slur
%----- CACHER UNE NOTE ET UNE LIAISON DE PROLONGATION 
NOTEHIDE = {
 \once \override NoteHead #'transparent = ##t
 \once \override Stem #'transparent = ##t }
TIEHIDE =  \once \override Tie #'transparent = ##t
%----- LIAISON DE PHRASÉ: HAUTEUR 
PSLURPOS =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override PhrasingSlur #'positions = #$beg-end #})
PSLURHLIM =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override PhrasingSlur #'height-limit = #$beg-end #})
%----- OCTAVES: DEBUT ET FIN
OCTAVEBEG = { #(set-octavation 1) \set Staff.ottavation = #"8" }
OCTAVEEND = #(set-octavation 0)
%----- SUPPRESSION ET RETABLISSEMENT DU "dash"
DTSDASHNO = \override DynamicTextSpanner #'dash-period = #-1
DTSDASHOK = \override DynamicTextSpanner #'dash-period = #2.0
%----- CRESCENDOS
DECRESCM  = \markup { \bold \italic "decresc." }
CRESC     = { \set crescendoText   = \markup { \bold \italic "cresc." }   \set crescendoSpanner = #'dashed-line }
DECRESC   = { \set decrescendoText = \markup { \bold \italic "decresc." } \set decrescendoSpanner = #'dashed-line }
DIMIN     = { \set decrescendoText = \markup { \bold \italic "dimin." } \set decrescendoSpanner = #'dashed-line }
CREScendo = { \set crescendoText   = \markup { \bold \italic "cres  " }   \set crescendoSpanner = #'dashed-line }
cresCENdo = { \set crescendoText   = \markup { \bold \italic "cen  " }    \set crescendoSpanner = #'dashed-line }
crescenDO = { \set crescendoText   = \markup { \bold \italic "do  " }     \set crescendoSpanner = #'dashed-line }
%----- DEPLACER UNE DYNAMIQUE
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
%----- DYNAMIQUE SPECIALE
FFZ = #(make-dynamic-script "ffz")


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A11. NOTES PIANO HAUT:  VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
hautIA = \relative do''' { \voiceOne
\oneVoice
%--- 1-4
\repeat unfold 2 {
dob16[ mib dob lab] lab[ dob lab mib] mib[ lab mib dob]
dob16[ mib dob lab] lab[ dob lab mib] <sol sib>8^| r }
%--- 5
<lab dob>4-.( <sol sib fab'>-. <sol sib fab'>-.
<sol sib fab'>4-. <sol sib mib>-. <sol sib reb>-.)
%--- 7-10
\repeat unfold 2 {
dob'16[ mib dob lab] lab[ dob lab mib] mib[ lab mib dob]
dob16[ mib dob lab] lab[ dob lab mib] <sol sib>8^| r }
%--- 11
<lab dob>4-.( <solb sib fab'>-. <solb sib fab'>-.
<solb sib fab'>4-. <solb sib mib>-. <solb sib re>-.)
%--- 13-16
\repeat unfold 2 {
mib''16[ solb mib dob] dob[ mib dob solb] solb[ dob solb mib]
mib16[ solb mib dob] dob[ mib dob solb] <sib reb>8^| r }
%--- 17
<dob mib>4-.( <sib reb lab'>-. <sib reb lab'>-.
<sib reb lab'>4-. <sib mib solb>-. <sib fab'>-.)
%--- 19-22
\repeat unfold 2 {
re'16[ fad re si] si[ re si fad] fad[ si fad re]
re16[ fad re si] si[ re si fad] <lad dod>8^| r }
%--- 23
<fad si re>4^.( <dod' mi si'>-. <dod mi si'>-.
<dod mi si'>4-. <dod fad la>-. <dod sol'>-.)
%--- 25
<re fad>4 <lad dod sol'>-.( <lad dod sol'>-.
<lad dod sol'>4-. <lad dod fad>-. <dod mi>-.)
<si red>4 <fab lab! fab'>-.( <fab lab fab'>-.
<fab lab fab'>4-. <mib lab mib'>^. <reb lab' reb>^.)
%--- 29
<mib lab dob>4-.( <mib lab dob>-. <mib lab dob>-.
<mib sol sib>4-. <mib sol sib>-. <mib sol sib>-.)
%--- 31
do''!16[ mib do lab] lab[ do lab mib] mib[ lab mib do]
do16[ mib do lab] lab[ do lab mib] <sol sib>8^| r
do'16[ mib do lab] lab[ do lab mib] mib[ lab mib do]
do16[ mib do lab] lab[ do lab mib] <sol sib>8^| r
%--- 35-38
\repeat unfold 2 {
mib''16[ lab mib do] do[ mib do lab] lab[ do lab mib]
mib16[ lab mib do] do[ mib do lab] <sol sib>8^| r }
%--- 39
do16[ mib do lab] lab[ do lab mib] lab8^| r
reb16[ fa reb lab] lab[ reb lab fa] lab8^| r
mib'16[ sol mib sib] sib[ mib sib sol] sib8^| r
mib16[ lab mib do] do[ mib do lab] do8^| r
%--- 43
do'16[ mib do lab] lab[ do lab mib] lab8^| r
reb16[ fa reb lab] lab[ reb lab fa] lab8^| r
mib'16[ sol mib sib] sib[ mib sib sol] sib8^| r
mib16[ lab mib do] do[ mib do lab] do8^| r
%--- 47
do,16[ mib do lab] lab[ do lab mib] lab8 r
reb16[ fa reb lab] lab[ reb lab fa] lab8 r
mib'16[ sol mib sib] sib[ mib sib sol] sib8 r
mib16[ lab mib do] do[ mib do lab] do8 r
%--- 51
do'16[ mib do lab] lab[ do lab mib] lab8 r
reb16[ fa reb lab] lab[ reb lab fa] lab8 r
%--- 53
mib'16[ sol mib sib] sib[ mib sib sol] sib8 r
mib16[ lab mib do] do[ mib do lab] do8 r
mib16[ sol mib sib] sib[ mib sib sol] sib8 r
mib16[ lab mib do] do[ mib do lab] do8 r 
%--- 57
\OCTAVEBEG fa16[ la fa do] do[fa do la] do8-> r
fa16[ sib fa reb] reb[fa reb sib] reb8-> r
fa16[ la fa do] do[fa do la] do8-> r
fa16[ sib fa reb] reb[fa reb sib] reb8-> r
%--- 61
lab'16[ do lab mib] mib[ lab mib do] mib8 r
lab16[ reb lab fa] fa[ lab fa reb] fa8 r
lab16[ do lab mib] mib[ lab mib do] mib8 r
lab16[ reb lab fa] fa[ lab fa reb] reb[ fa reb lab] \OCTAVEEND
%--- 65
lab16[ reb lab fa] fa[ lab fa reb] reb[ fa reb lab]
lab'16[ reb lab fa] fa[ lab fa reb] reb[ fa reb lab]
lab16[ reb lab fa] fa[ lab fa reb] reb[ fa reb lab]
%--- 68
reb16[ fab reb sib] sib[ reb sib sol] reb'[ fab reb sib]
sib16[ reb sib sol] reb'[ fab reb sib] sib[ reb sib sol]
reb'16^>[ mib reb sib] sib[ reb sib sol] reb'^>[ mib reb sib]
sib16[ reb sib sol] reb'^>[ mib reb sib] sib[ reb sib sol]     \voiceOne
%--- 72-75
\TUPNO \PSLURHLIM #5 \PSLURPOS #'(1 . 0) mib'4\( lab sol
fa reb' \times 2/3 { \TIEHIDE sib4 ~ \NOTEHIDE sib8\) }
sib4( lab) lab
lab( sol) sol
%--- 76-79
\PSLURHLIM #5 \PSLURPOS #'(1 . 0) mib4\( lab sol
fa fa' \times 2/3 { \TIEHIDE reb4 ~ \NOTEHIDE reb8\) }
reb4( do) do
do( sib) sib
%--- 80-95
\oneVoice \repeat unfold 2 { do16[ mib do lab] lab[ do lab mib] lab8 r
reb16[ fa reb lab] lab[ reb lab fa] lab8 r
mib'16[ sol mib sib] sib[ mib sib sol] sib8 r
mib16[ lab mib do] do[ mib do lab] do8 r
%--- 
do'16[ mib do lab] lab[ do lab mib] lab8 r
reb16[ fa reb lab] lab[ reb lab fa] lab8 r
mib'16[ sol mib sib] sib[ mib sib sol] sib8 r
mib16[ lab mib do] do[ mib do lab] do8 r        }
%--- 96
mib16[ sol mib sib] sib[ mib sib sol] sib8 r
mib16[ lab mib do] do[ mib do lab] do8 r
mib16[ sol mib sib] sib[ mib sib sol] sib8 r
%--- 99-102
mib16[ lab mib do] do[ mib do lab] lab[ do lab mib]
mib16[ lab mib do] do[ mib do lab] lab[ do lab mib]
mib'16[ lab mib do] do[ mib do lab] lab[ do lab mib]
mib16[ lab mib do] do[ mib do lab] mib'[ lab mib do]
%--- 103-106
\clef bass lab16[ do lab mib] lab[ do lab mib] lab[ do lab mib]
lab16[ do lab mib] lab[ do lab mib] lab[ do lab mib]  \clef treble     \voiceOne
lab'2.^\DECRESCM ~
lab2.
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
hautIBA = \relative do'' { \voiceOne
\KEYB \bar "|:" 
%--- 107
sold2.^\TRIO
sold4( la sold)
la2.(
sold2.)
%--- 111
sold2.
mi'4( red dod)
dod2.(
sid2.)
%--- 115
sid4( dod2) ~
dod4 dod dod
dod4 dodd2 ~
dodd4 dodd dodd
%--- 119
mi4 red2
mi4 red2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
hautIBB = \relative do'' { \voiceOne
%--- 121
\set Score.repeatCommands = #'((volta "1"))
sold2.
sold2.
}

%%%%%%%%%%%%%%%%%%%% 2 DE LA REPRISE DE B
hautIBC = \relative do'' { \voiceOne
%--- 123
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) 
sold2. ~
sold4 sold sold
\set Score.repeatCommands = #'((volta #f)) 
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
hautIC = \relative do'' { \voiceOne
\bar "|:" 
%--- 125
sold4( la2) ~
la4( sold fad)
mi4 sold dod
mi4 sold dod
%--- 129
red4 mi2 ~
mi4 red dod
dod4 sid sold
red4 sid sold
%--- 133
sold4( la2) ~
la4 sold fad
mi4 sold dod
mi4 sold dod
%--- 137
red4 mi2 ~
mi4 red dod
dod2.(
sold2.)
%--- 141
sold,2.
sold4( lad sold)
lad2.(
sold2.)
%--- 145
sold2.(
mid'4 red dod)
dod2.(
sid2.)
%--- 149
sid4( dod2) ~
dod4 dod dod
dod4( dodd2) ~
dodd4 dodd dodd
%--- 153
mid4( fad2) ~
fad4 fad fad
fad4 fadd2 ~
fadd4 fadd fadd
%--- 157
la4^> sold2
la4^> sold2
dod,2. ~
dod4^\DECRESCM sold-.( sold-.) \bar ":|" 
}


%%%%%%%%%%%%%%%%%%%% PARTIE D
hautID = \relative do'' { \voiceOne
%--- 161
sold2. ~
sold4 sold( lad)
%--- 163
sold2. ~
sold2.
fadd2. ~
fadd2. \KEYA    \oneVoice
%--- 167
sol16\([ sib sol fab] sib[ reb sib sol]  reb'[ fab reb sib]
fab'16[ sol fab reb]  sol[ sib sol fab]  sib[ reb sib sol]
reb'16[ fab reb sib]  reb[ fab reb sib]  reb[ fab reb sib]
reb16[ fab reb sib]   reb[ fab reb sib]  reb[ fab reb sib] \)
%--- 171
reb16[ mib reb sib]   reb[ mib reb sib]  reb[ mib reb sib]
reb16[ mib reb sib]   reb[ mib reb sib]  reb[ mib reb sib]
}


%%%%%%%%%%%%%%%%%%%% PARTIE E (= PARTIE A LEGEREMENT MODIFIEE)
hautIE = \relative do''' { \voiceOne
\oneVoice
%--- 173-176
\repeat unfold 2 {
dob16[ mib dob lab] lab[ dob lab mib] mib[ lab mib dob]
dob16[ mib dob lab] lab[ dob lab mib] <sol sib>8^| r }
%--- 177
<lab dob>4-.( <sol sib fab'>-. <sol sib fab'>-.
<sol sib fab'>4-. <sol sib mib>-. <sol sib reb>-.)
%--- 179-182
\repeat unfold 2 {
dob'16[ mib dob lab] lab[ dob lab mib] mib[ lab mib dob]
dob16[ mib dob lab] lab[ dob lab mib] <sol sib>8^| r }
%--- 183
<lab dob>4-.( <solb sib fab'>-. <solb sib fab'>-.
<solb sib fab'>4-. <solb sib mib>-. <solb sib re>-.)
%--- 185-188
\repeat unfold 2 {
mib''16[ solb mib dob] dob[ mib dob solb] solb[ dob solb mib]
mib16[ solb mib dob] dob[ mib dob solb] <sib reb>8^| r }
%--- 189
<dob mib>4-.( <sib reb lab'>-. <sib reb lab'>-.
<sib reb lab'>4-. <sib mib solb>-. <sib fab'>-.)
%--- 191-194
\repeat unfold 2 {
re'16[ fad re si] si[ re si fad] fad[ si fad re]
re16[ fad re si] si[ re si fad] <lad dod>8^| r }
%--- 195
<fad si re>4^.( <dod' mi si'>-. <dod mi si'>-.
<dod mi si'>4-. <dod fad la>-. <dod sol'>-.)
%--- 197
<re fad>4-.( <lad dod sol'>-. <lad dod sol'>-.
<lad dod sol'>4-. <lad dod fad>-. <dod mi>-.)
<si red>4-.( <fab lab! fab'>-. <fab lab fab'>-.
<fab lab fab'>4-. <mib lab mib'>^. <reb lab' reb>^.)
%--- 201
<mib lab dob>4-.( <mib lab dob>-. <mib lab dob>-.
<mib sol sib>4-. <mib sol sib>-. <mib sol sib>-.)
%--- 203
do''!16[ mib do lab] lab[ do lab mib] mib[ lab mib do]
do16[ mib do lab] lab[ do lab mib] <sol sib>8^| r
do'16[ mib do lab] lab[ do lab mib] mib[ lab mib do]
do16[ mib do lab] lab[ do lab mib] <sol sib>8^| r
%--- 207-210
\repeat unfold 2 {
mib''16[ lab mib do] do[ mib do lab] lab[ do lab mib]
mib16[ lab mib do] do[ mib do lab] <sol sib>8^| r }
%--- 211
do16[ mib do lab] lab[ do lab mib] lab8^| r
reb16[ fa reb lab] lab[ reb lab fa] lab8^| r
mib'16[ sol mib sib] sib[ mib sib sol] sib8^| r
mib16[ lab mib do] do[ mib do lab] do8^| r
%--- 215
do'16[ mib do lab] lab[ do lab mib] lab8^| r
reb16[ fa reb lab] lab[ reb lab fa] lab8^| r
mib'16[ sol mib sib] sib[ mib sib sol] sib8^| r
mib16[ lab mib do] do[ mib do lab] do8^| r
%--- 219
do,16[ mib do lab] lab[ do lab mib] lab8 r
reb16[ fa reb lab] lab[ reb lab fa] lab8 r
mib'16[ sol mib sib] sib[ mib sib sol] sib8 r
mib16[ lab mib do] do[ mib do lab] do8 r
%--- 223
do'16[ mib do lab] lab[ do lab mib] lab8 r
reb16[ fa reb lab] lab[ reb lab fa] lab8 r
%--- 225
mib'16[ sol mib sib] sib[ mib sib sol] sib8 r
mib16[ lab mib do] do[ mib do lab] do8 r
mib16[ sol mib sib] sib[ mib sib sol] sib8 r
mib16[ lab mib do] do[ mib do lab] do8 r 
%--- 229
\OCTAVEBEG fa16[ la fa do] do[fa do la] do8-> r
fa16[ sib fa reb] reb[fa reb sib] reb8-> r
fa16[ la fa do] do[fa do la] do8-> r
fa16[ sib fa reb] reb[fa reb sib] reb8-> r
%--- 233
lab'16[ do lab mib] mib[ lab mib do] mib8 r
lab16[ reb lab fa] fa[ lab fa reb] fa8 r
lab16[ do lab mib] mib[ lab mib do] mib8 r
lab16[ reb lab fa] fa[ lab fa reb] reb[ fa reb lab] \OCTAVEEND
%--- 237
lab16[ reb lab fa] fa[ lab fa reb] reb[ fa reb lab]
lab'16[ reb lab fa] fa[ lab fa reb] reb[ fa reb lab]
lab16[ reb lab fa] fa[ lab fa reb] reb[ fa reb lab]
%--- 240
reb16[ fab reb sib] sib[ reb sib sol] reb'[ fab reb sib]
sib16[ reb sib sol] reb'[ fab reb sib] sib[ reb sib sol]
reb'16^>[ mib reb sib] sib[ reb sib sol] reb'^>[ mib reb sib]
sib16[ reb sib sol] reb'^>[ mib reb sib] sib[ reb sib sol]     \voiceOne
%--- 244-247
\TUPNO \PSLURHLIM #5 \PSLURPOS #'(1 . 0) mib'4\( lab sol
fa reb' \times 2/3 { \TIEHIDE sib4 ~ \NOTEHIDE sib8\) }
sib4( lab) lab
lab( sol) sol
%--- 248-251
\PSLURHLIM #5 \PSLURPOS #'(1 . 0) mib4\( lab sol
fa fa' \times 2/3 { \TIEHIDE reb4 ~ \NOTEHIDE reb8\) }
reb4( do) do
do( sib) sib
%--- 252-267
\oneVoice
\repeat unfold 2 { do16[ mib do lab] lab[ do lab mib] lab8 r
reb16[ fa reb lab] lab[ reb lab fa] lab8 r
mib'16[ sol mib sib] sib[ mib sib sol] sib8 r
mib16[ lab mib do] do[ mib do lab] do8 r
%--- 
do'16[ mib do lab] lab[ do lab mib] lab8 r
reb16[ fa reb lab] lab[ reb lab fa] lab8 r
mib'16[ sol mib sib] sib[ mib sib sol] sib8 r
mib16[ lab mib do] do[ mib do lab] do8 r        }
%--- 268
mib16[ sol mib sib] sib[ mib sib sol] sib8 r
mib16[ lab mib do] do[ mib do lab] do8 r
mib16[ sol mib sib] sib[ mib sib sol] sib8 r
%--- 271-274
mib16[ lab mib do] do[ mib do lab] lab[ do lab mib]
mib16[ lab mib do] do[ mib do lab] lab[ do lab mib]
mib'16[ lab mib do] do[ mib do lab] lab[ do lab mib]
mib16[ lab mib do] do[ mib do lab] mib'[ lab mib do]
%--- 275-277
lab4 r r
<mib'' sol sib mib>4 r r
<do mib lab do>4 r r
\bar "|."
}


%%%%%%%%%%%%%%%%%%%% SYNTHESES PIANO HAUT VOIX I
hautIPart = \context Staff \new Voice { \voiceOne
 \hautIA
 \hautIBA \hautIBB \hautIBC
 \hautIC
 \hautID  \hautIE
}

hautIMidi = \context Staff \new Voice { \voiceOne
 \hautIA
 \hautIBA \hautIBB \hautIBA \hautIBC
 \hautIC  \hautIC
 \hautID  \hautIE
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A12. NOTES PIANO HAUT:  VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
hautIIAA = \relative do' { \voiceTwo
%--- 1-71
s2.*71
%--- 72-75
\TUPNOK \times 2/3 { mib8^[ do lab] }    \times 2/3 { lab'[ mib do] }    \times 2/3 { sol'[ mib do] }
\times 2/3 { fa[ reb lab] }     \times 2/3 { reb'[ fa, reb] }   \times 2/3 { sib'[ fa reb] }  \TUPNO
\times 2/3 { sib'[ mib, reb] }  \times 2/3 { lab'[ mib do] }    \times 2/3 { lab'[ mib do] }
\times 2/3 { lab'[ mib do] }    \times 2/3 { sol'[ mib sib] }   \times 2/3 { sol'[ mib sib] }
%--- 76-79
\times 2/3 { mib8^[ do lab] }    \times 2/3 { lab'[ mib do] }    \times 2/3 { sol'[ mib do] }
\times 2/3 { fa[ reb lab] }     \times 2/3 { fa''[ lab, fa] }   \times 2/3 { reb'[ fa, reb] }
\times 2/3 { reb'[ lab mib] }   \times 2/3 { do'[ lab mib] }    \times 2/3 { do'[ lab mib] }
\times 2/3 { do'[ mib, reb] }   \times 2/3 { sib'[ mib, reb] }  \times 2/3 { sib'[ mib, reb] }
%--- 80-102
s2.*23
}

%%%%%%%%%%%%%%%%%%%% FIN PREMIERE FOIS
hautIIAB = \relative do' { \voiceTwo
%--- 103-104
s2.*2
%--- 105-106
mib16[ solb mib lab,] mib'[ solb mib lab,] mib'[ solb mib lab,] 
mib'16[ solb mib lab,] mib'[ solb mib lab,] mib'[ solb mib lab,] \KEYB
}

%%%%%%%%%%%%%%%%%%%% FIN DEUXIEME FOIS
hautIIAC = \relative do' { \voiceTwo
%--- 275-277
s2.*3
}


%%%%%%%%%%%%%%%%%%%% PARTIE B
hautIIBA = \relative do' { \voiceTwo
\KEYB
%--- 107
r8 <sold! mi'!>[ <sold mi'> <sold mi'> <sold mi'> <sold mi'>]
r8 <sold mi'> r <sold mi'> r <sold mi'>
r8 <la fad'>[ <la fad'> <la fad'> <la fad'> <la fad'>]
r8 <sold fad'>[ <sold fad'> <sold fad'> <sold fad'> <sold fad'>]
%--- 111
r8 <sold mi'>[ <sold mi'> <sold mi'> <sold mi'> <sold mi'>]
r8 <mi' sold> r <red sold> r <dod sold'>
r8 <dod sold'>[ <dod sold'> <dod sold'> <dod sold'> <dod sold'>]
r8 <sid sold'>[ <sid sold'> <sid sold'> <sid sold'> <sid sold'>]
%--- 115
r8 <sid la'> r <dod la'>[ <dod la'> <dod la'>]
<dod la'>8[ <dod la'>] r <dod la'> r <dod la'>
r8 <dod sold'> r <dodd sold'>[ <dodd sold'> <dodd sold'>]
<dodd sold'>8[ <dodd sold'>] r <dodd sold'> r <dodd sold'>
%--- 119
r8 <mi sold> r <red sold>[ <red sold> <red sold>]
r8 <mi fadd> r <red fadd>[ <red fadd> <red fadd>]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
hautIIBB = \relative do' { \voiceTwo
%--- 121
r8 <si red>[ <si red> <si red> <si red> <si red>]
r8 <sid red fad>[ <sid red fad> <sid red fad> <sid red fad> <sid red fad>]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
hautIIBC = \relative do' { \voiceTwo
%--- 123
r8 <si red>[ <si red> <si red> <si red> <si red>]
<si red>[ <si red>] r <si red> r <si red>
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
hautIIC = \relative do' { \voiceTwo
%--- 125
r8 <sid red> r <sid red>[ <sid red> <sid red>]
<sid red>8[ <sid red>] r <sid red> r <sid red>
mi8[ <sold, dod>] sold'[ <dod, mi>] dod'[ <mi, sold>]
mi'8[ <sold, dod>] sold'[ <dod, mi>] dod'[ <mi, sold>]
%--- 129
r8 <red fadd> r <mi fadd>[ <mi fadd> <mi fadd>]
<mi fadd>8[ <mi fadd>] r <red fadd> r <dod fadd>
dod'8[ <red, sold>] sid'8[ <red, sold>] sold8[ <sid, red>]
red8[ <sold, sid>] sid8[ <red, sold>] sold8[ <sid, red>]
%--- 133
r8 <sid red> r <sid red>[ <sid red> <sid red>]
<sid red>8[ <sid red>] r <sid red> r <sid red>
mi8[ <sold, dod>] sold'[ <dod, mi>] dod'[ <mi, sold>]
mi'8[ <sold, dod>] sold'[ <dod, mi>] dod'[ <mi, sold>]
%--- 137
r8 <red fadd> r <mi fadd>[ <mi fadd> <mi fadd>]
<mi fadd>8[ <mi fadd>] red'[ <red, fadd>] dod'[ <dod, fadd>]
r8 <dod mi sold>[ <dod mi sold> <dod mi sold> <dod mi sold> <dod mi sold>]
r8 <sid red>[ <sid red> <sid red> <sid red> <sid red>]
%--- 141
r8 <sold, mid'>[ <sold mid'> <sold mid'> <sold mid'> <sold mid'>]
sold'8[ <sold, mid'>] lad'[ <lad, mid'>] sold'[ <sold, mid'>]
r8 <sold fad'>[ <sold fad'> <sold fad'> <sold fad'> <sold fad'>]
r8 <sold fad'>[ <sold fad'> <sold fad'> <sold fad'> <sold fad'>]
%--- 145
r8 <sold mid'>[ <sold mid'> <sold mid'> <sold mid'> <sold mid'>]
r8 <mid' sold> r <red sold> r <dod sold'>
r8 <dod sold'>[ <dod sold'> <dod sold'> <dod sold'> <dod sold'>]
r8 <sid sold'>[ <sid sold'> <sid sold'> <sid sold'> <sid sold'>]
%--- 149
r8 <sid la'> r <dod la'>[ <dod la'> <dod la'>]
<dod la'>8[ <dod la'>] r <dod la'> r <dod la'>
r8 <dod sold'> r <dodd sold'>[ <dodd sold'> <dodd sold'>]
<dodd sold'>8[ <dodd sold'>] r <dodd sold'> r <dodd sold'>
%--- 153
r8 <mid re'> r <fad re'>[ <fad re'> <fad re'>]
<fad re'>8[ <fad re'>] r <fad re'> r <fad re'>
r8 <fad dod'> r <fadd dod'>[ <fadd dod'> <fadd dod'>]
<fadd dod'>8[ <fadd dod'>] r <fadd dod'> r <fadd dod'>
%--- 157
r8 <la dod> r <sold dod>[ <sold dod> <sold dod>]
r8 <la sid> r <sold sid>[ <sold sid> <sold sid>]
r8 <dod, mi sold>[ <dod mi sold> <dod mi sold> <dod mi sold> <dod mi sold>]
<dod mi sold>8[ <dod mi sold>] r <dod mi> r <dod mi>
}


%%%%%%%%%%%%%%%%%%%% PARTIE D
hautIID = \relative do' { \voiceTwo
%--- 161
r8 <dod mi>[ <dod mi> <dod mi> <dod mi> <dod mi>]
<dod mi>8[ <dod mi>] r <dod mi> r <dod mi>
%--- 163
r8 <lad dod>[ <lad dod> <lad dod> <lad dod> <lad dod>]
<lad dod>8[ <lad dod> <lad dod> <lad dod> <lad dod> <lad dod>]
r8 <lad dod>[ <lad dod> <lad dod> <lad dod> <lad dod>]
<lad dod>8[ <lad dod> <lad dod> <lad dod> <lad dod> <lad dod>] \bar "||"
%--- 167
\KEYA
s2.*4
%--- 171
s2.*2
}

%%%%%%%%%%%%%%%%%%%% SYNTHESES PIANO HAUT VOIX 2
hautIIPart = \context Staff \new Voice { \voiceTwo
 \hautIIAA \hautIIAB
 \hautIIBA \hautIIBB \hautIIBC
 \hautIIC  \hautIID
 \hautIIAA \hautIIAC
}

hautIIMidi = \context Staff \new Voice { \voiceTwo
 \hautIIAA \hautIIAB
 \hautIIBA \hautIIBB \hautIIBA \hautIIBC
 \hautIIC  \hautIIC
 \hautIID
 \hautIIAA \hautIIAC
}


%%%%%%%%%%%%%%%%%%%% SYNTHESE POUR LA PARTITION: NOTES PIANO HAUT
notePartHaut = {
 \clef treble
 \KEYA \TIME
 s1*0 ^\MOVEMENT
 \set autoBeaming = ##f
 << \hautIPart \hautIIPart >>
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE POUR LE MIDI: NOTES PIANO HAUT
noteMidiHautI = {
 \clef treble
 \KEYA \TIME
 \IPIANOHAUTI
 \hautIMidi
}
noteMidiHautII = {
 \clef treble
 \KEYA \TIME
 \IPIANOHAUTII
 \hautIIMidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A21. NOTES PIANO BAS:  VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
basIA = \context Staff \relative do \new Voice { \voiceOne
 \oneVoice
%--- 1-4
\repeat unfold 2 {
lab4-. <lab' dob mib>2 ~
<lab dob mib>2 <mib sib' mib>8 r }
%--- 5
<lab dob mib>4-.( <mib sib' fab'>-. <mib sib' fab'>-.
<mib sib' fab'>4-. <mib sib' mib>-. <mib sib' reb>-.)
%--- 7-10
\repeat unfold 2 {
lab,4-. <lab' dob mib>2 ~
<lab dob mib>2 <mib sib' mib>8 r }
%--- 11
<lab dob mib>4-.( <solb sib fab'>-. <solb sib fab'>-.
<solb sib fab'>4-. <solb sib mib>-. <solb sib re>-.)
%--- 13-16
\repeat unfold 2 {
dob,4-. <solb' dob mib>2 ~
<solb dob mib>2 <solb fab'>8 r }
%--- 17
<dob mib>4-.( <solb fab'>-. <solb fab'>-.
<solb fab'>4-. <solb mib'>-. <solb reb'>-.)
%--- 19-22
\repeat unfold 2 {
si,4-. <fad' si re>2 ~
<fad si re>2 <fad mi'>8 r }
%--- 23
<si re>4-.( <la sol'>-. <la sol'>-.
<la sol'>4-. <la fad'>-. <la mi'>-.)
%--- 25-28
<si re>4 <fad mi'>-.( <fad mi'>-.
<fad mi'>4-. <fad dod'>-. <fad lad>-.)
<sold si>4 <reb! lab'! reb!>-.( <reb lab' reb>-.
<reb lab' reb>4-. <mib lab dob>-. <fab lab>-.)
%--- 29
<mib lab dob>4-.( <mib lab dob>-. <mib lab dob>-.
<mib sol sib>4-. <mib sol sib>-. <mib sol sib>-.)
%--- 31-38
\repeat unfold 4 {
lab,4-. <mib' lab do>2 ~
<mib lab do>2 <mib reb'>8 r }
%--- 39-46
\repeat unfold 2 {
lab,4 <solb' lab do>2
reb4 <fa lab reb>2
mib,4 <mib' sib' reb>2
lab,4 <mib' lab do>2 } \voiceOne
%--- 47-50
mib4( lab4._> sol8)
fa4( reb'4._> do8)
sib4( mib4._> reb8)
do4 mib2_>
%--- 51-52
mib,4( lab4._> sol8)
fa4( reb'4._> do8)
%--- 53-56
sib4( mib4._> reb8)
do4( mib4._> do8)
sib4( mib4._> reb8)
do4( mib4._> do8)
%--- 57-60
do4( fa4._> mib8)
reb4( fa4._> reb8)
do4( fa4._> mib8)
reb4( fa4._> reb8)    \clef treble
%--- 61-64
mib4( lab4._> solb8)
fa4( lab4._> fa8)
mib4( lab4._> solb8)
fa4 r r                \oneVoice
%--- 65-67
R2.
lab8 r fa r reb r      \clef bass
lab8 r fa r reb r
%--- 68-71
<sol, sib reb fab>2 <sol sib reb fab>4 ~
<sol sib reb fab>4 <sol sib reb fab>2
<sol sib reb mib>2 <sol sib reb mib>4 ~
<sol sib reb mib>4 <sol sib reb mib>2
%--- 72-75
lab2( do4
reb4 sib reb)
mib2.(
mib,2.)
%--- 76-79
lab2( do4
reb sib) \voiceOne sib' ~
sib4( lab) lab ~
lab4( sol) sol          \oneVoice
%--- 80-87
\repeat unfold 2 {
lab,4-. <solb' lab do>2
reb4-. <fa lab reb>2
mib,4-. <mib' sib' reb>2
lab,4-. <mib' lab do>2 } \voiceOne
%--- 88-91
\SLURIN mib4( lab4.-> sol8)
fa4( reb'4.-> do8)
sib4( mib4.-> reb8)
do4( mib2->)
%--- 92-93
mib,4( lab4.-> sol8)
fa4( reb'4.-> do8)
%--- 94-97
sib4( mib4.-> reb8)
do4( mib4.-> do8)
sib4( mib4.-> reb8)
do4( mib4.-> do8)
%--- 98-99
sib4( mib4.-> reb8)
do4  \oneVoice r r
%--- 100-102
R2.
mib8 r do r lab r
mib8 r do r mib r
%--- 103-104
lab,4 r r
R2.
%--- 105-106
<do, lab' do>2. ~
<do lab' do>2.
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
basIBA = \relative do, { \voiceOne
\KEYB \bar "|:" \oneVoice
%--- 107
dod8[ <sold' dod mi> <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi>]
<sold dod mi>8[ <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi>]
sid,8[ <sold' red' fad> <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad>]
<sold red' fad>8[ <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad>]
%--- 111
dod,8[ <sold' dod mi> <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi>]
<sold dod mi>8[ <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi>]
red8[ <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad>]
<sold red' fad>8[ <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad>]
%--- 115
mi8[ <la mi'> <la mi'> <la mi'> <la mi'> <la mi'>] \voiceOne
<la mi'>8[ <la mi'>] mi[ <la mi'>] mi[ <la mi'>]
si,8[ <mi si'> <mi si'> <mi si'> <mi si'> <mi si'>]
<mi si'>8 <mi si'>] si[ <mi si'>] mi[ <si' mi>]
%--- 119
r8 <si red>[ <si red> <si red> <si red> <si red>]
r8 <lad dod red>[ <lad dod red> <lad dod red> <lad dod red> <lad dod red>]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
basIBB = \relative do { \voiceOne
%--- 121
\set Score.repeatCommands = #'((volta "1"))
r8 <si red>[ <si red> <si red> <si red> <si red>]
r8 <red fad>[ <red fad> <red fad> <red fad> <red fad>]
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
basIBC = \relative do { \voiceOne
%--- 123
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "2")) 
r8 <red sold>[ <red sold> <red sold> <red sold> <red sold>]
<red sold>8[ <red sold>] r <red sold> r <red sold>
\set Score.repeatCommands = #'((volta #f)) 
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
basIC = \relative do, { \voiceOne
\bar "|:"  \oneVoice
%--- 125
sold8[ <sold' red' fad> <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad>]
<sold red' fad>8[ <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad>]
sold,8[ <sold' dod mi> <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi>]
<sold dod mi>8[ <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi>]
%--- 129
la,8[ <la' dod mi> <la dod mi> <la dod mi> <la dod mi> <la dod mi>]
<la dod mi>8[ <la dod mi> <la red> <la red> <la red> <la red>]
sold,8[ <sold' sid red> <sold sid red> <sold sid red> <sold sid red> <sold sid red>]
<sold sid red>8[ <sold sid red> <sold sid red> <sold sid red> <sold sid red> <sold sid red>]
%--- 133
sold,8[ <sold' red' fad> <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad>]
<sold red' fad>8[ <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad>]
sold,8[ <sold' dod mi> <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi>]
<sold dod mi>8[ <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi>]
%--- 137
la,8[ <la' dod mi> <la dod mi> <la dod mi> <la dod mi> <la dod mi>]
<la dod mi>8[ <la dod mi> <la dod mi> <la dod mi> <la dod mi> <la dod mi>]
sold,8[ <sold' dod mi> <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi>]
sold,8[ <sold' sid red> <sold sid red> <sold sid red> <sold sid red> <sold sid red>]
%--- 141
dod,8[ <sold' dod mid> <sold dod mid> <sold dod mid> <sold dod mid> <sold dod mid>]
<sold dod mid>8[ <sold dod mid> <sold dod mid> <sold dod mid> <sold dod mid> <sold dod mid>]
sid,8[ <sold' red' fad> <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad>]
<sold red' fad>8[ <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad>]
%--- 145
dod,8[ <sold' dod mid> <sold dod mid> <sold dod mid> <sold dod mid> <sold dod mid>]
<sold dod mid>8[ <sold dod mid> <sold dod mid> <sold dod mid> <sold dod mid> <sold dod mid>]
red8[ <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad>]
<sold red' fad>8[ <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad>]
%--- 149
mi8[ <la mi'> <la mi'> <la mi'> <la mi'> <la mi'>]    \voiceOne
<la mi'>8[ <la mi'>] mi[ <la mi'>] mi[ <la mi'>]
si,8[ <mi si'> <mi si'> <mi si'> <mi si'> <mi si'>]
<mi si'>8[ <mi si'>] si[ <mi si'>] si[ <mi si'>]
%--- 153
re8[ <la' re> <la re> <la re> <la re> <la re>]
<la re>8[ <la re>] re,[ <la' re>] re,[ <la' re>]
la,8[ la'] la,[ <mi' la> <mi la> <mi la>]
<mi la>8[ <mi la>] la,[ <mi' la>] la,[ <mi' la>]
%--- 157
sold,8[ <sold' dod mi> <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi>]  \oneVoice
sold,8[ <sold' red' fad> <sold red' fad> <sold red' fad> <sold red' fad> <sold red' fad>]
dod,8[ <sold' dod mi> <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi>]
<sold dod mi>8[ <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi> <sold dod mi>]
}


%%%%%%%%%%%%%%%%%%%% PARTIE D
basID = \relative do, { \oneVoice  
%--- 161
dod8[ <dod' mi> <dod mi> <dod mi> <dod mi> <dod mi>]
<dod mi>8[ <dod mi> <dod mi> <dod mi> <dod mi> <dod mi>]
%--- 163
red,8[ red' red red red red]
red8[ red red red red red]
red,8[ red' red red red red]
red8[ red red red red red]
%--- 167
\KEYA mib,4-. <mib' sib' reb>2 ~
<mib sib' reb>2.
<mib sol sib reb>2. ~
<mib sol sib reb>2. ~
%--- 171
<mib sol sib reb>2. ~
<mib sol sib reb>2.
}


%%%%%%%%%%%%%%%%%%%% PARTIE E (= PARTIE A LEGEREMENT MODIFIEE)
basIE = \context Staff \relative do \new Voice { \voiceOne
 \oneVoice
%--- 173-176
\repeat unfold 2 {
lab4-. <lab' dob mib>2 ~
<lab dob mib>2 <mib sib' mib>8 r }
%--- 177
<lab dob mib>4-.( <mib sib' fab'>-. <mib sib' fab'>-.
<mib sib' fab'>4-. <mib sib' mib>-. <mib sib' reb>-.)
%--- 179-182
\repeat unfold 2 {
lab,4-. <lab' dob mib>2 ~
<lab dob mib>2 <mib sib' mib>8 r }
%--- 183
<dob' mib>4-.( <solb sib fab'>-. <solb sib fab'>-.
<solb sib fab'>4-. <solb sib mib>-. <solb sib re>-.)
%--- 185-188
\repeat unfold 2 {
dob,4-. <solb' dob mib>2 ~
<solb dob mib>2 <solb fab'>8 r }
%--- 189
<dob mib>4-.( <solb fab'>-. <solb fab'>-.
<solb fab'>4-. <solb mib'>-. <solb reb'>-.)
%--- 191-194
\repeat unfold 2 {
si,4-. <fad' si re>2 ~
<fad si re>2 <fad mi'>8 r }
%--- 195
<si re>4-.( <la sol'>-. <la sol'>-.
<la sol'>4-. <la fad'>-. <la mi'>-.)
%--- 197-200
<si re>4-.( <fad mi'>-. <fad mi'>-.
<fad mi'>4-. <fad dod'>-. <fad lad>-.)
<sold si>4-.( <reb! lab'! reb!>-. <reb lab' reb>-.
<reb lab' reb>4-. <mib lab dob>-. <fab lab>-.)
%--- 201
<mib lab dob>4-.( <mib lab dob>-. <mib lab dob>-.
<mib sol sib>4-. <mib sol sib>-. <mib sol sib>-.)
%--- 203-210
\repeat unfold 4 {
lab,4-. <mib' lab do>2 ~
<mib lab do>2 <mib reb'>8 r }
%--- 211-218
\repeat unfold 2 {
lab,4-. <solb' lab do>2
reb4-. <fa lab reb>2
mib,4-. <mib' sib' reb>2
lab,4-. <mib' lab do>2 } \voiceOne
%--- 219
\SLURIN mib4( lab4.-> sol8)
fa4( reb'4.-> do8)
sib4( mib4.-> reb8)
do4( mib2->)
%--- 223
mib,4( lab4.-> sol8)
fa4( reb'4.-> do8)
%--- 225
sib4( mib4.-> reb8)
do4( mib4.-> do8)
sib4( mib4.-> reb8)
do4( mib4.-> do8)
%--- 229
do4( fa4.-> mib8)
reb4( fa4.-> reb8)
do4( fa4.-> mib8)
reb4( fa4.-> reb8)    \clef treble
%--- 233
mib4( lab4.-> solb8)
fa4( lab4.-> fa8)
mib4( lab4.-> solb8)
fa4 r r                \oneVoice
%--- 237
R2.
lab8 r fa r reb r      \clef bass
lab8 r fa r reb r
%--- 240
<sol, sib reb fab>2 <sol sib reb fab>4 ~
<sol sib reb fab>4 <sol sib reb fab>2
<sol sib reb mib>2 <sol sib reb mib>4 ~
<sol sib reb mib>4 <sol sib reb mib>2
%--- 244
lab2( do4
reb4 sib reb)
mib2.(
mib,2.)
%--- 248
lab2( do4
reb sib) \voiceOne sib' ~
sib4( lab) lab ~
lab4( sol) sol          \oneVoice
%--- 252-259
\repeat unfold 2 {
lab,4-. <solb' lab do>2
reb4-. <fa lab reb>2
mib,4-. <mib' sib' reb>2
lab,4-. <mib' lab do>2 } \voiceOne
%--- 260
\SLURIN mib4( lab4.-> sol8)
fa4( reb'4.-> do8)
sib4( mib4.-> reb8)
do4( mib2->)
%--- 264
mib,4( lab4.-> sol8)
fa4( reb'4.-> do8)
%--- 266
sib4( mib4.-> reb8)
do4( mib4.-> do8)
sib4( mib4.-> reb8)
do4( mib4.-> do8)
%--- 270
sib4( mib4.-> reb8)
do4  \oneVoice r r
%--- 272
R2.
mib8 r do r lab r
mib8 r do r mib r
%--- 275-277
lab,4 r r
<mib mib'>4 r r
<lab, lab'>4 r r
}

%%%%%%%%%%%%%%%%%%%% SYNTHESES PIANO BAS VOIX 1
basIPart = \context Staff \new Voice { \voiceOne
 \basIA
 \basIBA \basIBB \basIBC
 \basIC
 \basID \basIE
}

basIMidi = \context Staff \new Voice { \voiceOne
 \basIA
 \basIBA \basIBB \basIBA \basIBC
 \basIC  \basIC
 \basID  \basIE
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A22. NOTES PIANO BAS:  VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
basIIAA = \relative do { \voiceTwo
%--- 1-46
s2.*46
%--- 47-50
lab2.  
reb2.
mib2.
lab2.
%--- 51-52
lab,2.
reb2.
%--- 53-56
mib2.
lab2.
mib2.
lab2.
%--- 57-60
fa2.
sib2.
fa2.
sib2.          \clef treble
%--- 61-64
lab2.
reb2.
lab2.
reb4 s4 s4
%--- 65-76
s2.*2          \clef bass
s2.*10
%--- 77-79
s4 s4 reb,4(
mib2.)
mib2.
%--- 80-87
s2.*8
%--- 88-91
lab,2.
reb2.
mib2.
lab2.
%--- 92-95
lab,2.
reb2.
mib2.
lab2.
%--- 96-99
mib2.
lab2.
mib2.
lab4 s4 s4
%--- 100-102
s2.*3
}

%%%%%%%%%%%%%%%%%%%% FIN PREMIERE FOIS
basIIAB = \relative do { \voiceTwo
%--- 103-106
s2.*4
}

%%%%%%%%%%%%%%%%%%%% FIN DEUXIEME FOIS
basIIAC = \relative do { \voiceTwo
%--- 275-277
s2.*3
}


%%%%%%%%%%%%%%%%%%%% PARTIE B
basIIBA = \relative do, { \voiceTwo
\KEYB
%--- 107-115
s2.*9
%--- 116-120
s4 mi mi
si4 s4 s4
s4 si mi
red2.
red2.
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
basIIBB = \relative do { \voiceTwo
%--- 121
sold2.
sold2.
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
basIIBC = \relative do { \voiceTwo
%--- 123
sold2. ~
sold4 sold sold
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
basIIC = \relative do, { \voiceTwo
%--- 125-149
s2.*25
%--- 150
s4 mi mi
si4 s4 s4
s4 si si
re4 s4 s4
%--- 154
s4 re re
la4 la s4
s4 la la
sold4 s4 s4
%--- 158-160
s2.*3
}


%%%%%%%%%%%%%%%%%%%% PARTIE D
basIID = \relative do { \voiceTwo
%--- 161-172
s2.*12
}

%%%%%%%%%%%%%%%%%%%% SYNTHESES PIANO BAS VOIX II
basIIPart = \context Staff \new Voice { \voiceTwo
 \basIIAA \basIIAB
 \basIIBA \basIIBB \basIIBC
 \basIIC  \basIID
 \basIIAA \basIIAC
}

basIIMidi = \context Staff \new Voice { \voiceTwo
 \basIIAA \basIIAB
 \basIIBA \basIIBB \basIIBA \basIIBC
 \basIIC  \basIIC
 \basIID
 \basIIAA \basIIAC
}


%%%%%%%%%%%%%%%%%%%% SYNTHESE POUR LA PARTITION: NOTES PIANO BAS
notePartBas = {
 \clef bass
 \KEYA \TIME
 \set autoBeaming = ##f
 << \basIPart \basIIPart >>
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE POUR LE MIDI: NOTES PIANO BAS
noteMidiBasI = {
 \clef bass
 \KEYA \TIME
 \IPIANOBASI
 \basIMidi
}
noteMidiBasII = {
 \clef bass
 \KEYA \TIME
 \IPIANOBASII
 \basIIMidi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
dynPartA =  {
%--- 1-4
s2.\pp
s2.*3
%--- 5-10
s4\cr s2\!\decr
s2 s4\!
s2.*4
%--- 11-16
s4\cr s2\!\decr
s2 s4\!
s2.*4
%--- 17-22
s4\cr s2\!\decr
s2 s4\!
s2.*4
%--- 23-26
s4\cr s2\!\decr
s2 s4\!
s4\cr s2\!\decr
s2 s4\!
%--- 27-30
s8 s8\f \DECRESC s2\decr
s2.
s2.\!\p
s2.
%--- 31-33
\DYNEXO #'(1.5 . 0) s2.\pp
s2.*3
%--- 34-37
\CRESC s2.\cr
s2.*2
s2 s4\!
%--- 38-42
\DYNEXO #'(1.5 . 0) s2.\pp
s2.*3
%--- 43-46
\CRESC s2.\cr
s2.*2
s2 s4\!
%--- 47-50
\DYNEXO #'(1.5 . 0) s2.\pp
s2.*3
%--- 51-56
\CRESC s2.\cr
s2.*5
%--- 57-61
\DYNEXO #'(1 . 0) s2.\!\f
s2.*4
%--- 62-64
\CRESC s2.\cr
s2.
\DYNEXO #'(1.5 . 0) s2.\!\ff
%--- 65-67
s2.*3
%--- 68-71
s2\fz s4\fz
s4 s2\fz 
\DECRESC s2.\decr
\DYNEXO #'(1 . 0) s2.\p
%--- 72-79
\DYNEXO #'(1.5 . -1) s2.\pp
s2.*7
%--- 80-83
\DYNEXO #'(1.5 . 0) s2.\p
s2.*3
%--- 84-87
\DTSDASHOK  \CREScendo s2. \cr
s4 s8\! \cresCENdo  s4.\cr
s2.
s4.. s16\! \DTSDASHNO \crescenDO s8\cr s8\!
%--- 88-91
\DYNEXO #'(1.5 . 0) s2.\p
s2.*3
%--- 92-95
\DYNEXO #'(1.5 . 0) s2.\f
s2.*3
%--- 96-98
\CRESC s2.\cr
s2.
\DYNEXO #'(1.5 . 0) s2.\!\ff
%--- 99-102
s2.*4
%--- 103-106
s2.*4            % DECRESC sur la portée du haut
}


%%%%%%%%%%%%%%%%%%%% PARTIE B
dynPartBA = {
%--- 107
\DYNEXO #'(-1 . -0.5) s2.\p
s2.*7
%--- 115
\CRESC s2.\cr
s2.*2
s2.\!
\DYNEXO #'(2 . -1) s2.-\FFZ
\DYNEXO #'(2 . -1) s2.-\FFZ
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynPartBB = {
%--- 121
s2.\p
s8 s8\cr s8\! s4\decr s8\!
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynPartBC = {
%--- 123
s2.*2
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
dynPartC =  {
%--- 125
s2.*2
%--- 127
s2.\cr
s2 s8 s8\!
\DYNEXO #'(1.5 . 0) s8\f s8\decr s2
s2 s8\! s8
s4 s2\p
s2.*3
%--- 135
s2.\cr
s2 s8 s8\!
\DYNEXO #'(1 . 0) s4\f s2\decr
s2 s8 s8\!
%--- 139
\DECRESC s2.\decr
s2.
\DYNEXO #'(1.5 . -0.5) s2.\!\p
s2.*7
%--- 149
\DTSDASHOK \CRESC s2.\cr
s2.*2
s2 s8 s8\! \DTSDASHNO
%--- 153
s2.\f
\CRESC s2.\cr
s2.
s2.\!
\DYNEXO #'(2 . 0) s2.-\FFZ
\DYNEXO #'(2 . 0) s2.-\FFZ
s2.*2            % DECRESC sur la portée du haut
}


%%%%%%%%%%%%%%%%%%%% PARTIE D
dynPartD = {
%--- 161
\DYNEXO #'(1.5 . 0) s2.\p
s2.
\DYNEXO #'(1.5 . 0) s2.\pp
s2.*3
%--- 167
s2.\p
s2\cr s8. s16\!
s2\decr s16 s16\! s8
\DIMIN s2.\decr
s2.\!
s2.
}

%%%%%%%%%%%%%%%%%%%% PARTIE E
dynPartE =  {
%--- 173
\DYNEXO #'(1 . 0) s2.\pp
s2.*3
%--- 177
s4\cr s2\!\decr
s2 s4\!
s2.*4
%--- 183
s4\cr s2\!\decr
s2 s4\!
s2.*4
%--- 189
s4\cr s2\!\decr
s2 s4\!
s2.*4
%--- 195
s4\cr s2\!\decr
s2 s4\!
s4\cr s2\!\decr
s2 s4\!
%--- 199
s2.\f\decr
s4 s4\! s4
s2.\p
s2.
%--- 203
\DYNEXO #'(1.5 . 0) s2.\pp
s2.*3
%--- 207
\CRESC s2.\cr
s2.*2
s2 s4\!
%--- 211
\DYNEXO #'(1.5 . 0) s2.\pp
s2.*3
%--- 215
\CRESC s2.\cr
s2.*2
s2 s4\!
%--- 219
\DYNEXO #'(1.5 . 0) s2.\pp
s2.*3
%--- 223
\CRESC s2.\cr
s2.*5
%--- 229
\DYNEXO #'(1 . 0) s2.\!\f
s2.*4
%--- 234
\CRESC s2.\cr
s2.
\DYNEXO #'(1.5 . 0) s2.\!\ff
%--- 237
s2.*3
%--- 240
s2\fz s4\fz
s4 s2\fz 
\DECRESC s2.\decr
\DYNEXO #'(1 . 0) s2.\p
%--- 244
\DYNEXO #'(1.5 . -1) s2.\pp
s2.*7
%--- 252
\DYNEXO #'(1.5 . 0) s2.\p
s2.*3
%--- 256
\CRESC s2. \cr
s2.*2
s2 s8 s8\!
%--- 260
\DYNEXO #'(1.5 . 0) s2.\p
s2.*3
%--- 264
\DYNEXO #'(1.5 . 0) s2.\f
s2.*3
%--- 268
\CRESC s2.\cr
s2.\!
\DYNEXO #'(1.5 . 0) s2.-\FFZ
%--- 271
s2.*4
%--- 275-277
s2.
\DYNEXO #'(1.5 . 0) s2.\ff
s2.
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE DES DYNAMIQUES POUR LA PARTITION
dynPart = {
 \override DynamicTextSpanner #'dash-period = #-1
 \dynPartA \dynPartBA \dynPartBB \dynPartBC \dynPartC \dynPartD \dynPartE
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
%%%%%%%%%%%%%%%%%%%% communes
dynMidiAA = {
%--- 1-4
\TEMPOBASE
s2.\pp
s2.*3
%--- 5-10
s4\cr s2\!\p\decr
s2 s4\!\pp
s2.*4
%--- 11-16
s4\cr s2\!\p\decr
s2 s4\!\pp
s2.*4
%--- 17-22
s4\cr s2\!\p\decr
s2 s4\!\pp
s2.*4
%--- 23-26
s4\cr s2\!\p\decr
s2 s4\!\pp
s4\cr s2\!\p\decr
s2 s4\!\pp
%--- 27-30
s4 s2\mp\decr
s2.
s2.\!\pp
s2.
%--- 31-33
s2.\pp
s2.*3
%--- 34-37
s2.\cr
s2.*2
s2 s4\!\f
%--- 38-42
s2.\pp
s2.*3
%--- 43-46
\CRESC s2.\cr
s2.*2
s2 s4\!\f
}

%%%%%%%%%%%%%%%%%%%% HAUT
dynMidiABA = {
%--- 47-50
s2.\ppp
s2.*3
%--- 51-56
\CRESC s2.\cr
s2.*5
%--- 57-61
s2.\!\mp
s2.*4
%--- 62-64
\CRESC s2.\cr
s2.
s2.\!\ff
}

%%%%%%%%%%%%%%%%%%%% BAS
dynMidiABB = {
%--- 47-50
s2.\mp
s2.*3
%--- 51-56
\CRESC s2.\cr
s2.*5
%--- 57-61
s2.\!\f
s2.*4
%--- 62-64
\CRESC s2.\cr
s2.
s2.\!\ff
}

%%%%%%%%%%%%%%%%%%%% communes
dynMidiAC = {
%--- 65-67
s2.*3
%--- 68-71
s4..\fff\decr s16\!\ff s4\fff\decr
s8. s16\!\ff s2\fff\decr 
s2.
s2.\!\p
}

%%%%%%%%%%%%%%%%%%%% HAUT I
dynMidiACB = {
%--- 72-79
s2.\p
s2.*7
}

%%%%%%%%%%%%%%%%%%%% HAUT II ET BAS
dynMidiACC = {
%--- 72-79
s2.\pp
s2.*7
}

%%%%%%%%%%%%%%%%%%%% communes
dynMidiACD = {
%--- 80-83
s2.\p
s2.*3
%--- 84-87
s2.\cr
s2.*2
s2 s8\!\f s8
}

%%%%%%%%%%%%%%%%%%%% HAUT
dynMidiACE = {
%--- 88-91
s2.\pp
s2.*3
%--- 92-95
s2.\mp
s2.*3
%--- 96-98
\CRESC s2.\cr
s2.
s2.\!\f
%--- 99-102
s2.*4
}

%%%%%%%%%%%%%%%%%%%% BAS
dynMidiACF = {
%--- 88-91
s2.\mf
s2.*3
%--- 92-95
s2.\f
s2.*3
%--- 96-98
\CRESC s2.\cr
s2.
s2.\!\ff
%--- 99-102
s2.*4
}

%%%%%%%%%%%%%%%%%%%% FIN PREMIERE FOIS
dynMidiAD = {
%--- 103-106
s2.*2
s2.\decr            % DECRESC sur la portée du haut
s2 s8. s16\!\p
}

%%%%%%%%%%%%%%%%%%%% FIN DEUXIEME FOIS
dynMidiAE = {
%--- 275-277
s2.
\TEMPOFINA s2.\ff
\TEMPOFINB s2.
}

%%%%%%%%%%%%%%%%%%%% VOIX HAUT I (PARTIES B à D)

%%%%%%%%%%%%%%%%%%%% PARTIE B
dynMidiBAA =  {
\KEYB
%--- 107
s2.\p\sustainOn
s2.*7
%--- 115
\CRESC s2.\cr
s2.*3
s8\!\ff s8\mf s2
s8\ff s8\mf s2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynMidiBAB = {
%--- 121
s2.\p
s2.
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynMidiBAC = {
%--- 123
s2.*2
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
dynMidiCA =  {
%--- 125
s2.
s2.
%--- 127
s2.\cr
s2. 
s2.\!\f\decr
s2.
s4 s2\!\p
s2.*3
%--- 135
s2.\cr
s2.
s2.\!\f\decr
s2.
%--- 139
s2.*2
s2.\!\p
s2.*7
%--- 149
s2.\cr
s2.*3
%--- 153
s2.\!\f
\CRESC s2.\cr
s2.*2
s8\!\ff s8\mf s2
s8\ff s8\mf s2
s2.
s2\decr s8 s8\!\p            % DECRESC sur la portée du haut
}


%%%%%%%%%%%%%%%%%%%% PARTIE D
dynMidiDA = {
%--- 161
s2.\p
s2.
s2.\pp
s2.*3
%--- 167
s2.\sustainOff\p
s2.\cr
s2.\!\mf\decr
s2.*2
s2 s8. s16\!\pp
}

%%%%%%%%%%%%%%%%%%%% VOIX HAUT II ET BAS (PARTIES B à D)

%%%%%%%%%%%%%%%%%%%% PARTIE B
dynMidiBBA =  {
\KEYB
%--- 107
s2.\ppp
s2.*7
%--- 115
\CRESC s2.\cr
s2.*3
s8\!\mp s8\ppp s2
s8\mp s8\ppp s2
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynMidiBBB = {
%--- 121
s2.\ppp
s2.
}

%%%%%%%%%%%%%%%%%%%% 1 DE LA REPRISE DE B
dynMidiBBC = {
%--- 123
s2.*2
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
dynMidiCB =  {
%--- 125
s2.*2
%--- 127
s2.\cr
s2. 
s2.\!\p\decr
s2.
s4 s2\!\ppp
s2.*3
%--- 135
s2.\cr
s2.
s2.\!\p\decr
s2.
%--- 139
s2.*2
s2.\!\ppp
s2.*7
%--- 149
s2.\cr
s2.*3
%--- 153
s2.\!\p
\CRESC s2.\cr
s2.*2
s8\!\mf s8\p s2
s8\mf s8\p s2
s2.
s2\decr s8 s8\!\ppp           % DECRESC sur la portée du haut
}


%%%%%%%%%%%%%%%%%%%% PARTIE D
dynMidiDB = {
%--- 161
s2.\ppp
s2.
s2.\pppp
s2.*3
%--- 167
s2.\ppp
s2.\cr
s2.\!\mf\decr
s2.*2
s2 s8. s16\!\pp
}


%%%%%%%%%%%%%%%%%%%% SYNTHESE DES DYNAMIQUES POUR LA PARTITION
dynMidiHautI = {
 \dynMidiAA  \dynMidiABA \dynMidiAC  \dynMidiACB \dynMidiACD \dynMidiACE \dynMidiAD
 \dynMidiBAA \dynMidiBAB \dynMidiBAA \dynMidiBAC \dynMidiCA  \dynMidiCA  \dynMidiDA
 \dynMidiAA  \dynMidiABA \dynMidiAC  \dynMidiACB \dynMidiACD \dynMidiACE \dynMidiAE
}
dynMidiHautII = {
 \dynMidiAA  \dynMidiABA \dynMidiAC  \dynMidiACC \dynMidiACD \dynMidiACE \dynMidiAD
 \dynMidiBBA \dynMidiBBB \dynMidiBBA \dynMidiBBC \dynMidiCB  \dynMidiCB  \dynMidiDB
 \dynMidiAA  \dynMidiABA \dynMidiAC  \dynMidiACC \dynMidiACD \dynMidiACE \dynMidiAE
}
dynMidiBasI = {
 \dynMidiAA  \dynMidiABB \dynMidiAC  \dynMidiACC \dynMidiACD \dynMidiACF \dynMidiAD
 \dynMidiBBA \dynMidiBBB \dynMidiBBA \dynMidiBBC \dynMidiCB  \dynMidiCB  \dynMidiDB
 \dynMidiAA  \dynMidiABB \dynMidiAC  \dynMidiACC \dynMidiACD \dynMidiACF \dynMidiAE
}
dynMidiBasII = {
 \dynMidiAA  \dynMidiABB \dynMidiAC  \dynMidiACC \dynMidiACD \dynMidiACF \dynMidiAD
 \dynMidiBBA \dynMidiBBB \dynMidiBBA \dynMidiBBC \dynMidiCB  \dynMidiCB  \dynMidiDB
 \dynMidiAA  \dynMidiABB \dynMidiAC  \dynMidiACC \dynMidiACD \dynMidiACF \dynMidiAE
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION (pas de \midi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<
  \new PianoStaff <<
   \new Staff = "up"   << \notePartHaut >>
   \new Dynamics = "dynamics" \dynPart
   \new Staff = "down" << \notePartBas >>
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
%                                           F. SORTIE MIDI (pas de \layout)
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
 ("ff" .    0.90)
 ("f" .     0.75)
 ("mf" .    0.65)
 ("mp" .    0.60)
 ("p" .     0.55)
 ("pp" .    0.50)
 ("ppp" .   0.35)
 ("pppp" .  0.30)
 ("ppppp" . 0.00) )
 my-absolute-volume-alist))

%%%%%%%%%%%%%%%%%%%% CHAQUE DYNAMIQUE RENCONTREE PRENDRA LE NOUVEAU VOLUME SPECIFIE
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { s2. }

\score {
 <<
  \new Staff = "up"     { \SILENCE << \noteMidiHautI  \dynMidiHautI >> }
  \new Staff = "upII"   { \SILENCE << \noteMidiHautII \dynMidiHautII >> }
  \new Staff = "down"   { \SILENCE << \noteMidiBasI   \dynMidiBasI  >> }
  \new Staff = "downII" { \SILENCE << \noteMidiBasII  \dynMidiBasII  >> }
 >>
 \midi {
 \context {
   \Score
% ECHELLE DU VOLUME DE SORTIE MIDI
   dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
  }
 }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER SchubertF-D899-4-Impromptu.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
