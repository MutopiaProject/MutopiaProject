%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D935-1-Impromptu.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                      FRANZ SCHUBERT: "Impromptu D935-1 in f-moll", für Klavier
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.34"
\include "italiano.ly"

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")
 line-width = 190\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Impromptu in f-moll (D935-1)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Impromptu in f-moll (D935-1)  ♫" } " " }
 #(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup \center-align { \fontsize #1.5 "Impromptu in f-moll" " " }
 subtitle = \markup { \fontsize #2.5 "D 935-1 (Opus 142 No 1.)" }
 composer = \markup \center-align { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D935 (Op. 142 No 1., 1827)" }
% MUTOPIA
 mutopiatitle = "Impromptu in f-moll"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.935 (Op. 142, No. 1)"
 mutopiainstrument = "Piano"
 date = "1827"
 source = "Breitkopf & Härtel, 1888"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2007/12/29-1194"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GÉNÉRALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. NOTES: A1. PIANO HAUT: VOIX 1, 2, 3  A2. PIANO BAS: VOIX 1, 2, 3, 4
%  B. DYNAMIQUES PARTITION
%  C. DYNAMIQUES MIDI
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
% 	                BIENVENUE A TOUTE SUGGESTION POUR AMELIORER LA PARTITION, LA SORTIE MIDI OU LE CODAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           COMMANDES ET FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- VOLUMES
VOLMIN =
 #(define-music-function (parser location beg-end) (number?)
 #{ \set Staff.midiMinimumVolume = #$beg-end #})
VOLMAX =
 #(define-music-function (parser location beg-end) (number?)
 #{ \set Staff.midiMaximumVolume = #$beg-end #})
%----- MOUVEMENT
MOVEMENT = \markup { \hspace #-1.5 \bold \large \italic { "Allegro moderato." } }
%----- CHANGER DE PORTÉE
STAFFDO = { \change Staff = down \voiceOne }
STAFFUP = { \change Staff = up   \voiceOne }
%----- OCTAVES
OCTAVEBEG = { #(set-octavation 1) \set Staff.ottavation = #"8" }
OCTAVEEND = #(set-octavation 0)
%----- CACHER OU AFFICHER LE NOMBRE OU LE CROCHET D'UN NOLET
TUPNNO = \override TupletNumber #'transparent = ##t
TUPBNO = \override TupletBracket #'transparent = ##t
TUPNO  = { \TUPNNO \TUPBNO }
TUPNOK = \override TupletNumber #'transparent = ##f
TUPBOK = \override TupletBracket #'transparent = ##f
TUPOK  = { \TUPNOK \TUPBOK }
%----- VARIER LA HAUTEUR D'UNE BARRE DE LIGATURE
BEAMPOS =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Beam #'positions = #$beg-end #})
%----- NUMÉROTER UNE BARRE DE MESURE
BARNUM = \set Score.currentBarNumber = #1
%----- GRUPPETTO
GRUPPETTO = \markup { \musicglyph #"scripts.turn" }
%----- POSITIONNER UN MARKUP
SCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \override Script #'extra-offset = #$beg-end #})
SCREXONO = \revert Script #'extra-offset
%----- POSITIONNER UN MARKUP
TSCRPAD =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override TextScript #'padding = #$beg-end #})
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \override TextScript #'extra-offset = #$beg-end #})
TSCREXONO = \revert TextScript #'extra-offset
%----- VARIER LA HAUTEUR D'UNE LIAISON
SLURIN   = \once \override Script #'avoid-slur = #'inside
SLURHLIM =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override Slur #'height-limit = #$beg-end #})
SLURPOS =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Slur #'positions = #$beg-end #})
SLUREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Slur #'extra-offset = #$beg-end #})
%----- DÉPLACER UNE NOTE
NOTEHSHIFT =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override NoteColumn #'force-hshift = #$beg-end #})
IGNORECOLL = \once \override NoteColumn #'ignore-collision = ##t
% CACHER UNE NOTE
NOTEHIDE = {
 \once \override NoteHead #'transparent = ##t
 \once \override Dots #'transparent = ##t
 \once \override Accidental #'transparent = ##t
 \once \override Stem #'transparent = ##t
 \once \override Tie #'transparent = ##t }
%----- CACHER UNE HAMPE
STEMTR = \once \override Stem #'transparent = ##t
%----- VARIER LA HAUTEUR D'UNE HAMPE
STEML = \once \override Stem #'length = #2
%----- HAMPE TRAVERSANTE
STEMCR = {
 \override Stem #'length = #32
 \override Stem #'cross-staff = ##t
 \override Stem #'flag-style = #'no-flag }
STEMCRNO = {
 \revert   Stem #'length
 \override Stem #'cross-staff = ##f 
 \revert Stem #'flag-style }
%----- DÉPLACER UNE DYNAMIQUE
DYNEXO   =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO   =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
%----- DYNAMIQUES
DECRESC = { \set decrescendoText = \markup { \italic "decresc." } \set decrescendoSpanner = #'dashed-line }
DIMIN   = { \set decrescendoText = \markup { \italic "dimin." } \set decrescendoSpanner = #'dashed-line }
%----- MARKUP
APPASSIONATO = \markup { \italic "appassionato" }
SINISTRA = \markup { \italic "sinistra" }
SEMPRELIGATO = \markup { \italic "sempre ligato" }
%----- TONALITÉ ET MESURE
KEYTIME = { \key fa \minor \time 4/4 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A1. NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A11. NOTES PIANO HAUT:  VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% MESURES 1-12 SPÉCIAL PARTITION
%%%%%%%%%%%%%%%%%%%% (Quelques liaisons de prolongation remplacées par liaisons d'articulation)

hautIaPart = \relative do' { \voiceOne
%1-5
\oneVoice \grace { \BEAMPOS #'(3.0 . 3.5) do32_([ fa lab] } do4..) ( sib16 lab8.[ sib16 sol8. lab16]
fa8.[ solb16 mib!8. fa16] reb8.[ mib16 do8. reb16])
\clef bass sib8.([ do16 lab8. sib16] solb8.[ lab16 fa8. sol16])
mi8 r8 \clef treble <sol' sib reb>8 r8 r4 \grace { \BEAMPOS #'(5.0 . 5.5) do32([ reb mib!] } reb8.) ([ do16])
do4( fa_>) ~ \tupletUp \times 2/3 { fa8([ \SLURIN sol, sib] } \times 2/3 { reb8[ sib sol]) }
%6
fa2( mi8) fad'16([sol] lab[ la sib si])
%7
\grace { \BEAMPOS #'(6.0 . 7.0) do,32[ fa! lab!] } \SLURHLIM #3   do4..( sib!16
 \SCREXO #'(2.2 . 1) lab8. ^\turn [ sib16  sol8. ^\turn lab16]
%8
 \SCREXO #'(2.2 . 1.5) fa8. ^\turn [ solb16 \SCREXO #'(1.7 . 1.5) mib8. ^\turn fa16]
 \SCREXO #'(2.2 . 0.7) reb8. ^\turn [ mib16 \SCREXO #'(2.2 . -0.5)  do8. ^\turn reb16]) \SCREXONO
%9-10
sib16([ reb sib reb] lab[ reb lab reb] solb,[ reb' solb, reb'] fa,[ reb' fa, reb'])
mi,8-| r8 <sol'! sib reb> r8 r4 \grace { \BEAMPOS #'(5.0 . 5.4) do,32([ reb mib!] } reb8.) ([ do16])
%11
\times 2/3 { do8([ \SLURIN  lab'_> sol] } \times 2/3 { fa[ do lab]) }
 \times 2/3 { sol8([ \SLURIN  mib'_> do] } \times 2/3 { reb[ sib sol]) }
%12
\tupletDown \times 2/3 { fa8^([ do fa] } \times 2/3 { lab fa reb'] } \tupletNeutral do8-|) r8 <sol do mi>-| r8
}

%%%%%%%%%%%%%%%%%%%% MESURES 1-12 SPÉCIAL MIDI avec résolution des agréments (32 -> 16 ou 8)

hautIaMidi = \relative do' { \voiceOne
%1-5
\oneVoice \grace { do8([ fa lab] } do4..) ( sib16 lab8.[ sib16 sol8. lab16]
fa8.[ solb16 mib!8. fa16] reb8.[ mib16 do8. reb16])
sib8.([ do16 lab8. sib16] solb8.[ lab16 fa8. sol16])
mi8 r8 <sol' sib reb>8 r8 r4 \grace { do8([ reb mib] } reb8.) ([ do16])
do4( fa->) ~ \times 2/3 { fa8([ sol, sib] } \times 2/3 { reb8[ sib sol]) }
%6-10
fa2( mi8) fad'16([sol] lab[ la sib si])
\times 2/3 { do,16[ fa lab] }  do4~ do16 ( sib16  lab16[ sib32 lab sol lab sib16]  sol16[ lab32 sol fa sol lab16]
fa16[ sol32 fa mi fa solb16]  mib16[ fa32 mib re mib fa16]  reb16[ mib32 reb do reb mib16]  do16[ reb32 do si do reb16])
sib16([ reb sib reb] lab[ reb lab reb] solb,[ reb' solb, reb'] fa,[ reb' fa, reb'])
mi,8-| r8 <sol' sib reb> r8 r4 \grace { do,8([ reb mib] } reb8.) ([ do16])
%11
\times 2/3 { do8([ lab'-> sol] } \times 2/3 { fa[ do lab]) }
 \times 2/3 { sol8([ mib'-> do] } \times 2/3 { reb[ sib sol]) }
%12
\times 2/3 { fa8([ do fa] } \times 2/3 { lab fa reb'] } do8-|) r8 <sol do mi>-| r8
}

%%%%%%%%%%%%%%%%%%%% SUITE Ib

hautIb = \relative do' { \voiceOne
%13-15
\oneVoice <lab' do fa>8-| lab16([ do] lab[ do lab do] sol[ si lab do] lab[ do lab do]
la16[ mib' sib! reb] sib[ reb sib reb] reb[ fa sib, reb] lab[ reb sol, reb'])
lab16^>([ reb lab do] lab[ do lab do] lab^>[do solb sib] solb[ sib solb sib])
%16-20
solb16->([ sib fa lab] fa[ lab fa lab]) fa->([lab mi sol] mi[ sol mi sol])
fa8 lab16([ do] lab[ do lab do] sol[ si lab do] lab[ do lab do])
la16([ mib' sib! reb] sib[ reb sib reb] reb[ fa sib, reb] lab[ reb sol, reb'])
lab16([ reb lab do] lab[ do lab do]) do->([ mib fa, sib] reb[ fa mib reb])
sib16^>([ reb mib, lab] do[ mib reb do]) la^>([ do mib, sol] sib[ reb do sib])
%21-25
lab!8 do16[ mib] do[ mib do mib] si->[ re do mib] do[ mib do mib]
do16[ mib reb! fab] sol[ sib do, mib] reb[ fab sol sib] lab[ sol fa sol]
lab8 do,16[ mib] do[ mib do mib] si->[ re do mib] do[ mib do mib]
re16[ fa mib solb] la[ do re, fa] mib[ solb la do] sib[ la sol la]
sib8 reb,!16[ fa] reb[ fa reb fa] do[ mi reb fa] reb[ fa reb fa]
%26-30
sib16_>[ reb, fab reb] mib![ reb fab reb] lab'_>[ do, fa do] mib[ do lab' do,]
<sib' reb>16_>[ reb, fab reb] mib[ reb fab reb] <lab' do>_>[ do, fa do] mib[ do lab' do,]
do'16[ mib fa, sib] reb[ fa mib reb] sib[ reb mib, lab] do[ mib reb do]
la16[ do mib, sol] sib[ reb do sib] lab[ sol fa fab] mib[ reb do sib]
lab8 lab,-.[ lab-. lab-.] sol->[( lab) lab-. lab-.]
%31-35
la8.^>([ sib32 do] sib8.^>[ do32 reb] mib8-|) sol16([ sib] mib[ sol sib mib])
lab,!8 lab,,[ lab lab] sol->[( lab) lab lab]
la8.^>([ sib32 do] sib8.^>[ do32 reb] mib8-|) mi16([ sol] do[ mi sol do])
fa,8 <lab,,! fa'>[ <lab fa'> <lab fa'>] \voiceOne mi'->[( fa) fa fa]
fa8.^>[ solb32 lab] solb8.^>[lab32 sibb] <solb lab>8-| \oneVoice do16([ mib!] lab[ do mib lab])
%36-40
reb,8 <lab,,! fa'>[ <lab fa'> <lab fa'>] \voiceOne mi'->[( fa) fa fa]
<re fa dob'>8[( <re fa sib>) <re fa sib>_. <re fa sib>_.] <mib! sol>8 \NOTEHSHIFT #-1.3 sol16[ sib] mib[ sol sib mib]
<mi,, sol reb'!>8[( <mi sol do!>) <mi sol do>_. <mi sol do>_.] <fa la> \NOTEHSHIFT #-1.3 la16[ do] fa[ la do fa]
\oneVoice <solb, solb'>8[( <fa fa'>) <fa fa'>( <mi mi'>)] <mi mi'>8[( <fa fa'>) <fa fa'>( <do do'>)]
<sib sib'>8[( <la la'>) <la la'>( <sol sol'>)] <sol sol'>8[( <fa fa'>) <fa fa'>-. <fa fa'>-.]
%41-45
<solb solb'>8[( <fa fa'>) <fa fa'>( <mi mi'>)] <mi mi'>8[( <fa fa'>) <fa fa'>( <do do'>)]
<sib sib'>8[( <la la'>) <la la'>( <sol! sol'!>)] <sol sol'>8[( <fa fa'>) <fa fa'>-. <fa fa'>-.]
<fa fa'>8_._([ <fa fa'>_. <fa fa'>_. <fa fa'>_.] <fa fa'>_.[ <fa fa'>_. <fa fa'>_. <fa fa'>_.])
\voiceOne fab'8->[( mib) <sol, sib reb mib>_._( <sol sib reb mib>_.]
 <sol sib reb mib>_.[ <sol sib reb mib>_. <sol sib reb mib>_. <sol sib reb mib>_.]) \oneVoice
<lab do mib>8[( <mib' lab do>) <mib lab do>-. <mib lab do>-.] <re lab' si>[( <mib lab do>) <mib lab do>-. <mib lab do>-.]
%46-50
<solb lab mib'>8[( <fa lab reb!>) <fa lab reb>-. <fa lab reb>-.] <fa lab reb>([ <mib fa do'> <reb fa sib!> <do fa lab>])
<do mib lab>8[( <sib mib sol!>) <sib mib sol>-.( <sib mib sol>-.] <sib mib sol>-.[ <sib mib sol>-.) <do mib lab>( <reb mib sib'>)]
<reb mib>8[( <do mib lab>) <do mib lab> <do mib lab>] <do mib lab>[ <do mib lab> \grace lab'16~ <mib lab do>8. <do mib lab>16]
<do mib lab>8[( <sib mib sol>) <sib mib sol> <sib mib sol>] <sib mib sol>[ <sib mib sol>( <do mib lab> <reb mib sib'>)]
<reb mib>8[( <do mib lab>) <do mib lab> <do mib lab>] <do mib lab> <do' mib>[( <do mib lab> <mib sol sib>)]
%51-55
r8 <mib lab do>8[ <mib lab do> <mib lab do>] <re lab' si>[( <mib lab do>) <mib lab do> <mib lab do>]
<solb lab mib'>8[( <fa lab reb>) <fa lab reb> <fa lab reb>] <fa lab reb>([ <mib fa do'> <reb fa sib!> <do fa lab>])
<do mib lab>8[( <sib mib sol!>) <sib mib sol> <sib mib sol>] <sib mib sol>[ <sib mib sol>( <do mib lab> <reb mib sib'>)]
<reb mib>8[( <do mib lab>) <do mib lab> <do mib lab>] <do mib lab>[ <do mib lab> \grace lab'16~ <mib lab do>8.( <do mib lab>16)]
<do mib lab>8[( <sib mib sol>) <sib mib sol> <sib mib sol>] <sib mib sol>[ <sib mib sol>( <do mib lab> <reb mib sib'>)]
%56-60
<reb mib>8[( <do mib lab>) <do mib lab> <do mib lab>] <do mib lab> mib16([ mib'] lab,[ mib' sib mib])
mib,16([ mib' do mib,]) mib([ mib' do mib,]) mib([ mib' do mib,]) mib([ mib' lab, lab'])
\OCTAVEBEG lab,16([ lab' fa lab,]) lab([ lab' fa lab,]) lab([ lab' la, la']) sib,([sib' <do, do'> <reb reb'>])
mib16([ mib' reb mib,]) mib([ mib' reb mib,]) mib([ mib' reb mib,]) do'([ mib sib mib])
mib,16([ mib' do mib,]) \OCTAVEEND mib,([ mib' do mib,]) mib([ mib' do mib,]) lab_>([ lab' mib, mib'])
%61-65
mib,16([ mib' reb mib,]) mib([ mib' reb mib,]) mib([ mib' reb mib,]) do'_>([ mib sib mib])
mib,16[ mib' do mib,] mib[ mib' do mib,] mib[ mib' do mib,] lab_>[ lab' mib, mib']
\OCTAVEBEG mib16[ mib' reb mib,] mib[ mib' reb mib,] mib[ mib' reb mib,] do'[ mib sib mib]
sib2 ~ sib8([ do reb re]
mib2. sol,4)
%66-68
do16[ mib lab, do] mib,[ lab do, mib] \OCTAVEEND lab,[ do mib, lab] do,[ mib lab, do]
mib,16[ lab do, mib] \STAFFDO lab,16[ do mib, lab] do[ mib mib, lab] do[ mib mib, lab]
do16[ mib mib, lab] do[ mib mib, lab] do[ mib mib, lab] do[ mib mib, lab]
%69-70
dob16[ mib mib, lab] dob[ mib mib, lab] dob[ mib mib, lab] dob[ mib reb mib]
dob16[ mib mib, lab] dob[ mib mib, lab] dob[ mib <lab, dob> mib'] <sol, reb'>[ mib' <lab, dob> mib']
%71-75
<sol, sib>16[ mib' mib, sol] sib[ mib mib, sol] sib[ mib mib, sol] sib[ mib reb mib]
dob16[ mib mib, lab] dob[ mib mib, lab] dob[ mib mib, lab] dob[ mib <sol, reb'> mib']
<lab, dob>16[ mib' mib, lab] dob[ mib mib, lab] dob[ mib mib, lab] \STAFFUP \stemDown dob![ mib <solb, reb'> solb']
<dob, mib>16[ solb' solb, dob] mib[ solb solb, dob] mib[ solb <dob, mib> solb'] <sib, fab'>[ solb' <dob, mib> solb']
<sib, reb>16[ solb' solb, sib] reb[ solb solb, sib] reb[ solb solb, sib] reb[ solb fab solb]
%76-80
mib16[ solb solb, dob] mib[ solb solb, dob] mib[ solb solb, dob] <dob mib>[ solb' <solb, fab'> solb']
<dob, mib>16[ solb' solb, dob] mib[ solb solb, dob] mib[ solb solb, dob] mib[ solb solb, dob]
fab16[ dob lab dob] fab[ lab lab, dob] fab[ lab lab, reb] fab[ lab lab, reb]
fab16[ solb solb, reb'] fab[ solb solb, reb'] mib[ solb solb, dob] mib[ solb solb, dob]
reb16[ solb solb, dob] reb[ solb solb, dob] reb[ solb solb, sib] reb[ solb solb, sib]
%81-85
mib16[ solb solb, dob] mib[ solb solb, dob] mibb[ solb solb, dob] mibb[ solb solb, dob]
\stemUp reb16[ solb solb, dob] reb[ solb solb, dob] reb[ solb solb, sib] reb[ solb solb, sib]
\STAFFDO dob16[ mib mib, solb] dob[ mib mib, solb] reb'[ mib mib, sol] reb'[ mib mib, sol]
dob16[ mib mib, lab] dob[ mib mib, lab] dob[ mib mib, lab] dob[ mib reb mib]
dob16[ mib mib, lab] dob[ mib mib, lab] dob[ mib <lab, dob> mib'] <sol, reb'>[ mib' <lab, dob> mib']
%86-90
<sol, sib>16[ mib' mib, sol] sib[ mib mib, sol] sib[ mib mib, sol] sib[ mib reb mib]
dob16[ mib mib, lab] dob[ mib mib, lab] dob[ mib mib, lab] dob[ mib <sol, reb'> mib']
<lab, dob>16[ mib' mib, lab] dob[ mib mib, lab] dob[ mib mib, lab] \STAFFUP \stemDown dob![ mib <solb, reb'> solb']
<dob, mib>16[ solb' solb, dob] mib[ solb solb, dob] mib[ solb <dob, mib> solb'] <sib, fab'>[ solb' <dob, mib> solb']
<sib, reb>16[ solb' solb, sib] reb[ solb solb, sib] reb[ solb solb, sib] reb[ solb fab solb]
%91-95
mib16[ solb solb, dob] mib[ solb solb, dob] mib[ solb solb, dob] <dob mib>[ solb' <solb, fab'> solb']
<dob, mib>16[ solb' solb, dob] mib[ solb solb, dob] mib[ solb solb, dob] mib[ solb solb, dob]
fab16[ dob lab dob] fab[ lab lab, dob] fab[ lab lab, reb] fab[ lab lab, reb]
fab16[ solb solb, reb'] fab[ solb solb, reb'] mib[ solb solb, dob] mib[ solb solb, dob]
reb16[ solb solb, dob] reb[ solb solb, dob] reb[ solb solb, sib] reb[ solb solb, sib]
%96-100
mib16[ solb solb, dob] mib[ solb solb, dob] mibb[ solb solb, dob] mibb[ solb solb, dob]
reb16[ solb solb, dob] reb[ solb solb, dob] reb[ solb solb, sib] reb[ solb solb, sib]
mib16[ solb solb, dob] mib[ solb solb, dob]  mib[ solb solb, dob]  mib[ solb solb, dob] 
mib16[ sol! sol,! sib] mib[ sol sol, sib] mib[ sol sol, sib] mib[ sol sol, sib]
mib16[ lab lab, dob] mib[ lab lab, dob] mib[ lab lab, dob] mib[ lab lab, dob]
%101-105
mib16[ sol sol, sib] mib[ sol sol, sib] mib[ sol sol, sib] mib[ sol sol, sib]
mib16[ lab lab, dob] mib[ lab lab, dob] mib[ lab lab, dob] mib[ lab lab, dob]
mi16[ sold sold, si] mi[ sold sold, si] mi[ la la, do!] mi[ la la, do]
mi16[ sold sold, si] mi[ sold sold, si] mi[ la la, do] mi[ la la, do]
mi16[ sold sold, si] mi[ sold sold, si] mi[ sold sold, si] mib[ lab! lab,! dob]
%106-110
fa16[ lab lab, sib!] fa'[ lab lab, sib]  fa'[ lab lab, sib] fa'[ lab lab, sib]
mib16[ sol sol, sib] mib[ sol sol, sib] mib[ sol sol, sib] mib[ sol sol, sib]
mib16[ lab lab, do] mib[ lab lab, do] mib[ lab lab, do] mib[ lab lab, do]
fa16[ lab lab, re] fa[ lab lab, re]  fa[ lab lab, re] fa[ lab lab, re]
mib16[ sol sol, sib] mib[ sol sol, sib] mib[ sol sol, sib] mib[ sol sol, sib]
%111-115
re16[ lab' lab, sib] re[ lab' lab, sib] \STAFFDO reb![ mib mib, sib'] reb[ mib mib, sib']
do16[ mib mib, lab] do[ mib mib, lab] do[ mib mib, lab] do[ mib sib mib]
do16[ mib mib, lab] do[ mib mib, lab] do[ mib <lab, do> mib'] <sol, reb'>[ mib' <lab, do> mib']
<sol, sib>16[ mib' mib, sol] sib[ mib mib, sol] sib[ mib mib, sol] sib[ mib reb mib]
do16[ mib mib, lab] do[ mib mib, lab] do[ mib mib, lab] do[ mib <sol, reb'> mib']
%116-120
<lab, do>16[ mib' mib, lab] do[ mib mib, lab] do[ mib mib, lab] do[ mib reb mib]
do16[ mib mib, lab] do[ mib mib, lab] \STAFFUP \stemDown do[ mib do mib] reb[ fa sib, sol']
do,16[ lab' lab, do] mib[ lab lab, do] mib[ lab do, lab'] mib[ sol reb fa] \STAFFDO
do16[ mib mib, lab] do[ mib mib, lab] do[ mib <lab, do> mib'] <sol, reb'>[ mib' <sol, sib> mib']
<lab, do>16[ mib' mib, lab] do[ mib mib, lab] do[ mib mib, lab] do[ mib reb mib]
%121-123
do16[ mib mib, lab] do[ mib mib, lab] \STAFFUP \stemDown do[ mib do mib] reb[ fa sib, sol']
do,16[ lab' lab, do] mib[ lab lab, do] mib[ lab do, lab'] mib[ sol reb fa] \STAFFDO
do16[ mib mib, lab] do[ mib mib, lab] do[ mib <lab, do> mib'] <sol, reb'>[ mib' <sol, sib> mib']
}

%%%%%%%%%%%%%%%%%%%% SUITE Ic: FIN

hautIc = \relative do' { \voiceOne
%124-126
\STAFFDO <lab do>16[ mib' mib, lab] do[ mib mib, lab] do[ mib <lab, do> mib'] <sol, reb'>[ mib' <sol, sib> mib'] \set Score.currentBarNumber = #125
<lab, do>16[ mib' mib, lab] do[ mib mib, lab] do[ mib <lab, do> mib'] <sol, reb'>[ mib' <sol, sib> mib']
lab,16[ do do, mib] lab[ do do, mib] lab[ do do, mib] lab[ do do, mib]
}


%%%%%%%%%%%%%%%%%%%% MESURES 127-130 SPÉCIAL PARTITION
%%%%%%%%%%%%%%%%%%%% (Quelques liaisons de prolongation remplacées par liaisons d'articulation)

hautIdPart = \relative do' { \voiceOne
%127-130
\oneVoice \STAFFDO lab16[ do do, mib] lab[ do do, mib] lab[ do do, mib] lab[ do do, mib]
sib'16[ do do, mi] sib'[ do mi, sib'] \STAFFUP \stemNeutral do[ mi sib do] mi[ sib' do, mi]
sib'16[ do do, mi] sib'[ do do, mi] sib'[ do do, mi] sib'[ do do, mi]
\grace { \BEAMPOS #'(3.0 . 3.5) do32_([ fa lab] } \SLURHLIM #5 \SLURPOS #'(-8 . -14) do4..) ( sib16 lab8.[ sib16 sol8. lab16]
%131-135
fa8.[ solb16 mib8. fa16] reb8.[ mib16 do8. reb16]
\voiceOne sib8.[ do16 lab8. sib16] \STAFFDO solb8.[ lab16 fa8. sol16]
mi8) r8 \STAFFUP \oneVoice  <sol' sib reb>8 r8 r4 \grace { \BEAMPOS #'(5.0 . 5.5) do32([ reb mib!] } reb8.) ([ do16])
do4( fa_>) ~ \tupletUp \times 2/3 { fa8([ \SLURIN sol, sib] } \times 2/3 { reb8[ sib sol]) }
fa2( mi8) fad'16([sol] lab[ la sib si])
%136-139
\grace { \BEAMPOS #'(6.0 . 7.0) do,32[ fa! lab!] } do4..( sib!16) lab8._>([ lab'16 sol,8._> sol'16]
fa,8._>[ fa'16 mib,8._> mib'16] reb,8._>[ reb'16 do,8._> do'16])
sib,16([ sib' sib, sib'] lab,[ lab' lab, lab'] solb,[ solb' solb, solb'] fa,[ fa' fa, fa']
<mi, mi'>8-|) r8 <sol'! sib reb> r8 r4 \grace { \BEAMPOS #'(5.0 . 5.4) do,32([ reb mib!]) } reb8.([ do16])
}


%%%%%%%%%%%%%%%%%%%% MESURES 127-130 SPÉCIAL MIDI avec résolution des agréments (32 -> 16 ou 8)

hautIdMidi = \relative do' { \voiceOne
%127-130
\oneVoice \STAFFDO lab16[ do do, mib] lab[ do do, mib] lab[ do do, mib] lab[ do do, mib]
sib'16[ do do, mi] sib'[ do mi, sib'] \STAFFUP \stemNeutral do[ mi sib do] mi[ sib' do, mi]
sib'16[ do do, mi] sib'[ do do, mi] sib'[ do do, mi] sib'[ do do, mi]
\grace { do16([ fa lab]) } do4..( sib16 lab8.[ sib16 sol8. lab16]
%131-135
fa8.[ solb16 mib8. fa16] reb8.[ mib16 do8. reb16])
\voiceOne sib8.([ do16 lab8. sib16] \STAFFDO solb8.[ lab16 fa8. sol16])
mi8 r8 \STAFFUP \oneVoice  <sol' sib reb>8 r8 r4 \grace { do8([ reb mib]) } reb8.([ do16])
do4( fa->) ~ \times 2/3 { fa8[ sol,( sib] } \times 2/3 { reb8[ sib sol]) }
fa2( mi8) fad'16([sol] lab[ la sib si])
%136-139
\times 2/3 { do,16[ fa lab] } do4~ do16( sib16 lab8._>[ lab'16 sol,8._> sol'16]
fa,8._>[ fa'16 mib,8._> mib'16] reb,8._>[ reb'16 do,8._> do'16])
sib,16([ sib' sib, sib'] lab,[ lab' lab, lab'] solb,[ solb' solb, solb'] fa,[ fa' fa, fa']
<mi, mi'>8) r8 <sol' sib reb> r8 r4 \grace { do,8([ reb mib] } reb8.) ([ do16])
}

%%%%%%%%%%%%%%%%%%%% SUITE Ie

hautIe = \relative do' { \voiceOne
%140
\oneVoice \TUPNO \times 2/3 { do'8([ lab'_> sol] } \times 2/3 { fa[ do lab]) }
 \times 2/3 { sol8([  mib'_> do] } \times 2/3 { reb[ sib sol]) }
%141-145
\tupletDown \times 2/3 { fa8([ do fa] } \times 2/3 { lab fa reb']) } \tupletNeutral do8-| r8 <sol do mi> r8
<lab do fa>8-| lab16[ do] lab[ do lab do] sol[ si lab do] lab[ do lab do]
la16[ mib' sib! reb] sib[ reb sib reb] reb[ fa sib, reb] lab[ reb sol, reb']
lab16[ reb lab do] lab[ do lab do] lab->[do solb sib] solb[ sib solb sib]
solb16->[ sib fa lab] fa[ lab fa lab] fa->[lab mi sol] mi[ sol mi sol]   \bar "||" \key fa \major % CHANGEMENT DE TONALITÉ
%146-150
fa8 la!16[ do] la[ do la do] sold[ si la do] la[ do la do]
la16[ mib' sib! re] sib[ re sib re] re[ fa sib, re] la[ re sold, re']
la16[ re la do] la[ do la do] la->[ do re, sol!] sib[ re do sib]
sol16->[ sib do, fa] la[ do sib la] fad->[ la do, mi] sol[ sib la sol]
fa!8 la16[ do] la[ do la do] sold[ si la do] la[ do la do]
%151-155
la16[ do sib! reb] mi[ sol! la, do] sib[ reb mi sol] fa[ mi re mi]
fa8 la,16[ do] la[ do la do] sold->[ si la do] la[ do la do]
si16[ re do mib] fad[ la si, re] do[ mib fad la] sol[ fad mi fad]
sol8 sib,!16[ re] sib[ re sib re] la->[ dod sib re] sib[ re sib re]
sol16_>[ sib, reb sib] do![ sib reb sib] fa'_>[ la, re la] do[ la fa' la,]
%156-160
<sol' sib>16_>[ sib, reb sib] do[ sib reb sib] <fa' la>_>[ la, re la] do[ la fa' la,]
la'16[ do re, sol] sib[ re do sib] sol[ sib do, fa] la[ do sib la]
fad16[ la do, mi] sol[ sib la sol] fa[ mi re reb] do[ sib la sol]
fa8 \STAFFDO fa,[ fa fa] mi->[( fa) fa fa]
fad8.->([ sol32 la] sol8.->[ la32 sib] do8-|) \STAFFUP \oneVoice mi16[ sol] do[ mi sol do]
%161-165
fa,!8 \STAFFDO fa,,[ fa fa] mi->[( fa) fa fa]
fad8.->([ sol32 la] sol8.->[ la32 sib] do8-|) \STAFFUP \oneVoice dod16[ mi] la[ dod mi la]
re,8 \STAFFDO <fa,, re'>[ <fa re'> <fa re'>] <fa dod'>->[( <fa re'>) <fa re'> <fa re'>]
\STAFFUP \voiceOne re'8.->([ mib32 fa] mib8.->[ fa32 solb] \oneVoice <la,! mib' fa>8-|) la'!16([ do!] fa[ la do fa])
sib,8 \STAFFDO <fa,, re'>[ <fa re'> <fa re'>] <fa dod'>->[( <fa re'>) <fa re'> <fa re'>]
%166-170
\STAFFUP \oneVoice <si re lab'>8[( <si re sol>) <si re sol> <si re sol>] <do! mi!> mi16[ sol] do[ mi sol do]
<dod,, mi sib'!>8[( <dod mi la!>) <dod mi la> <dod mi la>] <re fad> fad16[ la] re[ fad la re]
<mib, mib'>8[( <re re'>) <re re'>( <dod dod'>)]  <dod dod'>[( <re re'>) <re re'>( <la la'>)]
<sol sol'>8[( <fad fad'>) <fad fad'>( <mi! mi'!>)] <mi mi'>[( <re re'>) <re re'>-. <re re'>-.]
<mib mib'>8[( <re re'>) <re re'>( <dod dod'>)]  <dod dod'>[( <re re'>) <re re'>( <la la'>)]
%171-175
sol'8[^( fad) fad^( mi!)] \STAFFDO <mi, mi'>->[( <re re'>) <re re'>( <re re'>)]
<re re'>8-.([ <re re'>-. <re re'>-. <re re'>-.] <re re'>-.[ <re re'>-. <re re'>-. <re re'>-.])
reb'8->[( do) <mi, sol sib do>-.( <mi sol sib do>-.]
 <mi sol sib do>-.[ <mi sol sib do>-. <mi sol sib do>-. <mi sol sib do>-.)]
\STAFFDO \STEMCR <fa la do>8[( \STAFFUP <do' fa la>) <do fa la>-. <do fa la>-.] \STEMCRNO
 <si fa' sold>[( <do fa la>) <do fa la>-. <do fa la>-.]
\slurDown <mib fa do'>8[( <re fa sib!>) <re fa sib>-. <re fa sib>-.] <re fa sib>[( <do re la'> <sib re sol!> <la re fa>)]
%176-180
<la do fa>8[( <sol do mi>) <sol do mi> <sol do mi>] <sol do mi>[ <sol do mi>( <la do fa> <sib do sol'>)]
<sib do>8[( <la do fa>) <la do fa> <la do fa>] <la do fa>[ <la do fa> \grace fa'16_~ <do fa la>8.( <la do fa>16)]
<la do fa>8[( <sol do mi>) <sol do mi> <sol do mi>] <sol do mi>[ <sol do mi>( <la do fa> <sib do sol'>)]
<sib do>8[( <la do fa>) <la do fa> <la do fa>] <la do fa> \slurNeutral \voiceOne <la' do>[( <la do fa> <do mi sol>)]
\oneVoice r8 <do fa la>8[ <do fa la> <do fa la>] <si fa' sold>[( <do fa la>) <do fa la> <do fa la>]
%181-185
<mib fa do'>8[( <re fa sib!>) <re fa sib> <re fa sib>] <re fa sib>[( <do re la'> <sib re sol!> <la re fa!>)]
<la do fa>8[( <sol do mi>) <sol do mi> <sol do mi>] <sol do mi>[ <sol do mi>( <la do fa> < sib do sol'>)]
<sib do>8[( <la do fa>) <la do fa> <la do fa>] <la do fa>[ <la do fa> \grace fa'16~ <do fa la>8.( <la do fa>16)]
<la do fa>8[( <sol do mi>) <sol do mi> <sol do mi>] <sol do mi>[ <sol do mi>( <la do fa> <sib do sol'>)]
<sib do>8[( <la do fa>) <la do fa> <la do fa>] <la do fa> do16[ do'] fa,[ do' sol do]
%186-190
do,16[ do' la do,] do[ do' la do,]  do[ do' la do,]  do[ do' fa, fa']
fa,16[ fa' re fa,] fa[ fa' re fa,] fa[ fa' fad, fad'] sol,[ sol' <la, la'> <sib sib'>]
\OCTAVEBEG do16[ do' sib do,] do[ do' sib do,] do[ do' sib do,] la'[ do sol do]
do,16[ do' la do,] do[ do' la do,] do[ do' la do,] fa->[ fa' do, do']
do,16[ do' sib do,] do[ do' sib do,] do[ do' sib do,] la'[ do sol do]
%191-195
do,16[ do' la do,] do[ do' la do,] do[ do' la do,] fa[ fa' do, do']
do,16[ do' sib do,] do[ do' sib do,] do[ do' sib do,] la'[ do sol do]
sol2~ sol8([ la sib si]
do2. mi,4)
fa16[ la do, fa] \OCTAVEEND la,[ do fa, la] do,[ fa la, do] fa,[ la do, fa]
%196-200
la16[ do do, fa] la[ do do, fa] la[ do do, fa] la[ do do, fa] \bar "||" \key fa \minor % CHANGEMENT DE TONALITÉ
lab16[ do do, fa] lab[ do do, fa] lab[ do do, fa] \stemDown lab[ do sib do]
lab16[ do do, fa] lab[ do do, fa] lab[ do <fa, lab> do'] <mi, sib'>[ do' <fa, lab> do']
<mi, sol>16[ do' do, mi] sol[ do do, mi] sol[ do do, mi] sol[ do sib do]
lab16[ do do, fa] lab[ do do, fa] lab[ do do, fa] lab[ do <mi, sib'> do']
%201-205
<fa, lab>16[ do' do, fa] lab[ do do, fa] lab[ do do, fa] lab[ do <mib,! sib'> mib']
<lab, do>16[ mib' mib, lab] do[ mib mib, lab] do[ mib <lab, do> mib'] <sol, reb'>[ mib' <lab, do> mib']
<sol, sib>16[ mib' mib, sol] sib[ mib mib, sol] sib[ mib mib, sol] sib[ mib reb mib]
do16[ mib mib, lab] do[ mib mib, lab] do[ mib mib, lab] <lab do>[ mib' <sol, reb'> mib']
<lab, do>16[ mib' mib, lab] do[ mib mib, lab] do[ mib mib, lab] do[ mib mib, lab]
%206-210
reb16[ lab fa lab] reb[ fa fa, lab] reb[ fa fa, lab] reb[ fa fa, sib]
reb16[ mib mib, sib'] reb[ mib mib, sib'] do[ mib mib, lab] do[ mib mib, lab]
sib16[ mib mib, lab] sib[ mib mib, lab] sib[ mib mib, sol] sib[ mib mib, sol]
do16[ mib mib, lab] do[ mib mib, lab] dob[ mib mib, lab] dob[ mib mib, lab]
sib16[ mib mib, lab] sib[ mib mib, lab] sib[ mib mib, sol] sib[ mib mib, sol]
%211-215
do!16[ mib mib, lab] do[ mib mib, lab] do[ mib mib, lab] do[ mib mib, lab]
do16[ mi mi, sol] do[ mi mi, sol] do[ mi mi, sol] do[ mi mi, sol]
do16[ fa fa, lab] do[ fa fa, lab] do[ fa fa, lab] do[ fa fa, lab]
do16[ mi mi, sol] do[ mi mi, sol] do[ mi mi, sol] do[ mi mi, sol]
do16[ fa fa, lab] do[ fa fa, lab] do[ fa fa, lab] do[ fa fa, lab]
%216-220
reb16[ fa fa, lab] reb[ fa fa, lab] reb[ solb solb, sibb] reb[ solb solb, sibb]
reb16[ fa fa, lab] reb[ fa fa, lab] reb[ solb solb, sibb] reb[ solb solb, sibb]
reb16[ fa fa, lab] reb[ fa fa, lab] reb[ fa fa, lab] do![ fa fa, lab]
re16[ fa fa, sol!] re'[ fa fa, sol] re'[ fa fa, sol] re'[ fa fa, sol]
do16[ mi mi, sol] do[ mi mi, sol] do[ mi mi, sol] do[ mi mi, sol]
%221-225
do16[ fa fa, la] do[ fa fa, la] re[ fa fa, la] re[ fa fa, la]
re16[ fa fa, si] re[ fa fa, si] re[ fa fa, si] re[ fa fa, si]
do16[ mi mi, sol] do[ mi mi, sol] do[ mi mi, sol] do[ mi mi, sol]
si16[ fa' fa, sol] si[ fa' fa, sol] \stemUp sib[ do do, sol'] sib[ do do, sol'] \bar "||" \key fa \major % CHANGEMENT DE TONALITÉ
la16[ do do, fa] la[ do do, fa] la[ do do, fa] \stemDown la[ do sol do]
%226-230
la16[ do do, fa] la[ do do, fa] la[ do <fa, la> do'] <mi, sib'>[ do' <fa, la> do']
<mi, sol>16[ do' do, mi] sol[ do do, mi] sol[ do do, mi] sol[ do sib do]
la16[ do do, fa] la[ do do, fa]  la[ do do, fa] <fa la>[ do' <mi, sib'> do']
<fa, la>16[ do' do, fa] la[ do do, fa] la[ do do, fa] la[ do sib do]
la16[ do do, fa] la[ do do, fa]  la[ do la do] sib[ re sol, mi']
%231-235
la,16[ fa' fa, la] do[ fa fa, la] do[ fa la, fa'] do[ mi sib re]
la16[ do do, fa] la[ do do, fa] la[ do <fa, la> do'] <mi, sib'>[ do' <mi, sol> do']
<fa, la>16[ do' do, fa] la[ do do, fa] la[ do do, fa] la[ do sib do]
la16[ do do, fa] la[ do do, fa]  la[ do la do] sib[ re sol, mi']
la,16[ fa' fa, la] do[ fa fa, la] do[ fa la, fa'] do[ mi sib re]
%236-239
la16[ do do, fa] la[ do do, fa] la[ do <fa, la> do'] <mi, sib'>[ do' <mi, sol> do'] \stemNeutral \oneVoice
<fa, la>16[ do' do, fa] la[ do do, fa] la[ do <fa, la> do'] <mi, sib'>[ do' <mi, sol> do']
<fa, la>16[ do' do, fa] la[ do do, fa] la[ do <fa, la> do'] <mi, sib'>[ do' <mi, sol> do']
fa,16[ la la, do] fa[ la la, do] fa[ la la, do] fa[ la la, do]
}

%%%%%%%%%%%%%%%%%%%% MESURES 240-249 SPÉCIAL PARTITION
%%%%%%%%%%%%%%%%%%%% (Quelques liaisons de prolongation remplacées par liaisons d'articulation)

hautIfPart = \relative do' { \voiceOne
%240
fa16[ lab lab, do] fa[ lab lab, do] fa[ lab do, fa] lab[ do do, fa]  \bar "||" \key fa \minor % CHANGEMENT DE TONALITÉ
%241-245
\oneVoice \grace { \BEAMPOS #'(3.0 . 3.5) do32_([ fa lab] } do4..) ( sib16 lab8.[ sib16 sol8. lab16]
\SCREXO #'(2.2 . 0) fa8. _\turn [ solb16 mib8. _\turn fa16]
 reb8. _\turn [ mib16 do8. _\turn reb16]) \SCREXONO \STAFFDO
sib16[ reb sib reb] lab[ reb lab reb] solb,[ reb' solb, reb'] fa,[ reb' fa, reb']
mi,8 r8 \STAFFUP \oneVoice <sol' sib reb>8 r8 r4 \grace { \BEAMPOS #'(5.0 . 5.5) do32([ reb mib!] } reb8.) ([ do16])
\TUPNNO \times 2/3 { do8([ lab'_> sol] } \times 2/3 { fa[ do lab] }
 \times 2/3 { sol8[ mib'_> do] } \times 2/3 { reb[ sib sol]) }
%246-249
\voiceOne fa2( mi->)
fa2 mi->(
fa4) \oneVoice r4 <lab, do fa>4 r4
<lab do fa>2 r2
\bar "|."
}

%%%%%%%%%%%%%%%%%%%% MESURES 240-249 SPÉCIAL MIDI avec résolution des agréments (32 -> 16 ou 8)

hautIfMidi = \relative do' { \voiceOne
%240
fa16[ lab lab, do] fa[ lab lab, do] fa[ lab do, fa] lab[ do do, fa] \key fa \minor % CHANGEMENT DE TONALITÉ
%241-245
\oneVoice \grace { do16([ fa lab] } do4..) ( sib16 lab8.[ sib16 sol8. lab16]
fa16[ sol32 fa mi fa solb16]  mib16[ fa32 mib re mib fa16]  reb16[ mib32 reb do reb mib16]  do16[ reb32 do si do reb16])
sib16[ reb sib reb] lab[ reb lab reb] solb,[ reb' solb, reb'] fa,[ reb' fa, reb']
mi,8 r8 \STAFFUP \oneVoice <sol' sib reb>8 r8 r4 \grace { do8([ reb mib] } reb8.) ([ do16])
\times 2/3 { do8([ lab'_> sol] } \times 2/3 { fa[ do lab] }
 \times 2/3 { sol8[ mib'_> do] } \times 2/3 { reb[ sib sol]) }
%246-249
\voiceOne fa2( mi)
fa2 mi->(
fa4) \oneVoice r4 <lab, do fa>4 r4
<lab do fa>2 r2
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
hautIPart = \context Staff \new Voice { \voiceOne
 \hautIaPart \hautIb \hautIc
 \hautIdPart \hautIe \hautIfPart
}
hautIMidi = \context Staff \new Voice { \voiceOne
 \hautIaMidi \hautIb \hautIc
 \hautIdMidi \hautIe \hautIfMidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A12. NOTES PIANO HAUT:  VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hautIIa = \relative do' { \voiceTwo

%1-33
s1*33
%34-35
s2 lab4 lab8[ lab]
dob4 sib8 si8\rest do8 s s4
%36-38
s2 lab4 lab8[ lab]
s2 s8 <mib' sol>8[ <mib sol> <mib sol>]
s2 s8 <fa la>[ <fa la> <fa la>]
%39-123
s1*85
}

%%%%%%%%%%%%%%%%%%%% SUITE IIc: FIN
hautIIc = \relative do' { \voiceTwo
%124-163
s1*40
%164
lab4 sol8 r8 s2
%165-178
s1*14
%179
s2 s8 <la do>[( <la do fa> <do mi sol>)]
%180-245
s1*66
%246-249
\TUPNO \times 2/3 { r8 lab[ sib] } \times 2/3 { do8[ sib lab] } reb4 do8[ sib]
\times 2/3 { r8 lab[ sib] } \times 2/3 { do8[ sib lab] } reb4 do8[ sib]
lab4 s2.
s1
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
hautIIPart = \context Staff \new Voice { \voiceTwo
 \hautIIa \hautIIc
}
hautIIMidi = \context Staff \new Voice { \voiceTwo
 \hautIIa \hautIIc
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A13. NOTES PIANO HAUT:  VOIX 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hautIIIa = \relative do' { \voiceThree
%1-43
s1*43
%44
\NOTEHSHIFT #0.5 \STEML <sol sib reb>4 s2.
%45-68
s1*24
%69-70
s2. <lab' dob>8-> ([ <sib reb>]
<dob mib>4) s2.
%71-75
s2. <sib reb>8->([ <reb fab>]
<dob mib>4) s2.
s2. <lab dob>8->([ <sib reb>]
<dob mib>4) s2.
s2. <reb fab>8->([ <fab lab>]
%76-80
<mib solb>4) s2.
s2 s8 mib([ reb dob]
lab4) s2.
s2 s8 mib'([ fab fa])
solb1(
%81-85
mib4) s2.
s1*2
s2. <lab, dob>8-> ([ <sib reb>]
<dob mib>4) s2.
%86-90
s2. <sib reb>8_>_([ <reb fab>]
<dob mib>4) s2.
s2. <lab dob>8->([ <sib reb>]
<dob mib>4) s2.
s2. <reb fab>8->([ <fab lab>]
%91-95
<mib solb>4) s2.
s2 s8 mib([ reb dob]
lab4) s2.
s2 s8 mib'([ fab fa]
solb1) (
%96-100
mib4) s2.
s1
s2 s8 mib[ mib( fab)]
<sib, reb mib>4->( sib8) r8 s2
s2 s8 <dob mib>8-.([ <dob mib>-. <dob fab>-.])
%101-105
<sib reb mib>4->( sib8) r8 s2
s2 s8 mib8[ mib mib]
mi8 s8 s2 do!8.([re16]
mi8) s8 s2 do8.([re16]
mi8) s8 s4 s2
%106-110
s4 fa4. fa8([ sol lab]
sol8) s8 s4 s8 fa8([ mib re]
do8) s8 s2 do4(
re8) s8 s4 s2
mib4 s4 s2
%111-115
s1
s2 s4 lab,8([<sol sib>]
<lab do>4) s4 s2
s2 s4 <sib reb>8->([ <reb fa>]
<do mib>4) s4 s2
%116-120
s2 s4 <lab do>8->([ <sib reb>]
<do mib>4) s4 s2
s2 s8 <do lab'>8->([ <mib sol> <reb fa>]
<do mib>4) s4 s2
s2 s4 <lab do>8([ <sib reb>]
%121-123
<do mib>4) s4 s2
s2 s8 <do lab'>8([ <mib sol> <reb fa>]
<do mib>4) s4 s2
}

%%%%%%%%%%%%%%%%%%%% SUITE IIIc: FIN

hautIIIc = \relative do'' { \voiceThree
%124-196
s1*73
%197-200
s2. <fa lab>8-> ([ <sol sib>]
<lab do>4) s2.
s2. <sol sib>8->([ <sib reb>]
<lab do>4) s2.
%201-205
s2. <fa lab>8->([ <sol sib>]
<lab do>4) s2.
s2. <sib reb>8->([ <reb fa>]
<do mib>4) s2.
s2 s8 do8([ sib lab]
%206-210
fa4) s2.
s2 s8 do'8([ reb re]
mib1) (
do4) s2.
s1
%211-215
s2 s8 <lab do>8-.[ <lab do>-. <lab reb>-.]
<sol sib do>4->( sol8) s8 s2
s2 s8 <lab do>8([ <lab do> <lab reb>]
<sol sib do>4->) ( sol8) s8 s2
s2 s8 do8[ do do]
%216-220
reb8-| s8 s2 sibb8.([ dob16]
reb8-|) s8 s2 sibb8.([ dob16]
reb8-|) s8 s2.
s4 re4. re8([ mi fa]
mi8) s8 s4 s8 re([ do si]
%221-225
la8) s8 s2 la4(
si8) s8 s2.
do4 s2.
s1
s2. fa,8->([ <mi sol>]
%226-230
<fa la>4) s2.
s2. <sol sib>8->([ <sib re>]
<la do>4) s2.
s2. <fa la>8([ <sol sib>]
<la do>4) s2.
%231-236
s2 s8 <la fa'>8->([ <do mi> <sib re>]
<la do>4) s2.
s2. <fa la>8([ <sol sib>]
<la do>4) s2.
s2 s8 <la fa'>8([ <do mi> <sib re>]
<la do>4) s2.
%237-249
s1*13
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
hautIIIPart = \context Staff \new Voice { \voiceThree
 \hautIIIa \hautIIIc
}
hautIIIMidi = \context Staff \new Voice { \voiceThree
 \hautIIIa \hautIIIc
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
hautNotePart = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 \TSCRPAD #'4 s1*0 ^\MOVEMENT \TSCREXONO
 << \hautIPart \hautIIPart \hautIIIPart >>
}
%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI (VOIR SORTIE MIDI)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A2. NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A21. NOTES PIANO BAS VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basIa = \relative do' { \voiceOne
%1-4
\grace { s32 s32 s32 } \voiceOne do,1
\IGNORECOLL \NOTEHSHIFT #-0.5 fa1
\IGNORECOLL \NOTEHSHIFT #-0.5 fa2 s2
s8 \oneVoice r8 <mi! sol sib reb>8 r8 r2
%5-8
<fa lab>4 r4 <sib, reb sol>4 r4
\voiceOne \TUPBNO \times 2/3 { r8 \SLURHLIM #8  fa'([ lab] } \times 2/3 { do sib lab] } sol8) \oneVoice r8 r4
\voiceOne do,1
\NOTEHSHIFT #-0.5 fa1(
%9-12
fa8)[ fa mib mib] <sib reb>8[ <sib reb> <lab do> <lab do>]
\oneVoice <sol sib>8-| r8 <mi' sol sib reb>8 r8 r2
<fa lab>4 r4 <sib, reb sol>4 r4
<do fa lab>8 r8 \tupletUp \times 2/3 { lab'8([ fa reb']) } \tupletNeutral do8-| r8 <do, do'>-| r8
%13-15
<fa, fa'>8-| r8 <fa' fa'>4 r <fa fa'>
r4 <fa fa'> r <fa fa'>
r4 <fa fa'> sib,8 r <solb' sib> r
%16-20
do,8 r <fa lab> r do r <mi sol> r
fa,8 r8 <fa' fa'>4 r <fa fa'>
r4 <sib fa'> r <mib, mib'>
r4 <lab mib'> reb,8 r <reb' fa> r
mib,8 r <do' mib> r mib, r <sol reb'> r
%21-25
<lab do>8 mib'[ mib mib] fab[( mib) mib mib]
mib,8[ mib' mib mib] mib,8[ mib' mib <mib, reb' mib>->]
<lab do mib>8 mib'[ mib mib] fab[( mib) mib( solb)]
fa,!8 fa'[ fa fa] fa,[ fa' fa <fa, mib' fa>->]
<sib reb fa>8 fa'[ fa fa] solb[( fa) fa fa] \clef treble
%26-30
\voiceOne r8 fab[ mib fab] r fa[ mib lab]
r8 fab[ mib fab] r fa[ mib lab] \clef bass
\oneVoice reb,,8 <reb' fa>4 <reb fa>8 mib, <do' mib>4 <do mib>8
\voiceOne s8 \SLUREXO #'(0 . -1.8) <reb mib~>4.( \NOTEHSHIFT #-1.5 \STEMTR <reb mib>8) s8 s4
\oneVoice <lab do mib>8 lab,8-.[ lab-. lab-.] sol->[( lab) lab-. lab-.]
%31-35
la8.->([ sib32 do] sib8.->[ do32 reb] mib8-|) <mib sib' reb>[ <mib sib' reb> <mib sib' reb>]
<lab! do>8 lab,[ lab lab] sol->[( lab) lab lab]
la8.->([ sib32 do] sib8.->[ do32 reb] mib8-|) <do sol' sib>[ <do sol' sib> <do sol' sib>]
<fa lab!>8 <reb fa>[ <reb fa> <reb fa>] <do mi>[( <reb fa>) <reb fa> <reb fa>]
\voiceOne fa8.[ solb32 lab] solb8.[lab32 sibb] \oneVoice <lab, mib'>8-| <lab' mib' solb>[ <lab mib' solb> <lab mib' solb>]
%36-40
<reb fa>8 <reb, fa>[ <reb fa> <reb fa>] <do mi>[( <reb fa>) <reb fa> <reb fa>]
<dob fa lab>8[( <sib fa' lab>) <sib fa' lab>-. <sib fa' lab>-.] <mib! sol>8 s8 s4
<reb sol sib>8[( <do! sol' sib>) <do sol' sib>-. <do sol' sib>-.] <fa la>8 s8 s4
<solb solb'>8[( <fa fa'>) <fa fa'>( <mi mi'>)] <mi mi'>8[( <fa fa'>) <fa fa'>( <do do'>)]
<sib sib'>8[( <la la'>) <la la'>( <sol sol'>)] <sol sol'>8[( <fa fa'>) <fa fa'>-. <fa fa'>-.]
%41-45
<solb solb'>8[( <fa fa'>) <fa fa'>( <mi mi'>)] <mi mi'>8[( <fa fa'>) <fa fa'>( <do do'>)]
<sib sib'>8[( <la la'>) <la la'>( <sol! sol'!>)] <sol sol'>8[( <fa fa'>) <fa fa'>-. <fa fa'>-.]
fa'8-.([ fa-. fa-. fa-.] fa-.[ fa-. fa-. fa-.])
fa'8[( mib) mib-.( mib-.]  mib-.[ mib-. mib-. mib-.])
\voiceOne r8 mib[ mib mib] mib[( lab) lab lab]
%46-50
r8 lab[ lab lab] lab([ la sib fa])
r8 mib[ mib mib] mib[ mib mib mib]
r8 mib[ mib mib] mib[ mib mib mib]
r8 mib[ mib mib] mib[ mib mib mib]
r8 mib([ do mib] lab) \oneVoice \clef treble <do mib>[ <do mib lab>( <mib sol sib>)]
%51-55
lab,8-. <mib' lab do>[  <mib lab do> <mib lab do>] <re lab' si>[( <mib lab do>) <mib lab do> <mib lab do>]
\voiceOne r8 <fa lab reb!>[ <fa lab reb> <fa lab reb>] <fa lab reb>([ <fa la do> <fa sib> <fa lab>])
mib,8 <sib' mib sol>[ <sib mib sol> <sib mib sol>] <sib mib sol>[ <sib mib sol>_( <do mib lab> <reb! mib sib'>)]
r8 <do mib lab>[ <do mib lab> <do mib lab>] <do mib lab>[ <do mib lab>_( <mib lab do> <do mib lab>)]
mib,8 <sib' mib sol>[ <sib mib sol> <sib mib sol>] <sib mib sol>[ <sib mib sol>_( <do mib lab> <reb mib sib'>)]
%56-60
r8 <do mib lab>[ <do mib lab> <do mib lab>] <do mib lab> <do mib>[ <do mib lab>_( <mib sol sib>)]
lab,8 <mib' lab do>[ <mib lab do> <mib lab do>] <re lab' si>[_( <mib lab do>) <mib lab do> <mib lab do>]
<solb lab mib'>8[ <fa lab reb!> <fa lab reb> <fa lab reb>] <fa lab reb>8[ <mib fa do'>_( <reb fa sib!> <do mib lab>)]
mib,8 <sib' mib sol!>[ <sib mib sol> <sib mib sol>] <sib mib sol>[ <sib mib sol>_( <do mib lab> <reb mib sib'>)]
<reb mib>8[ <do mib lab> <do mib lab> <do mib lab>] \grace lab'16_~ <mib lab do>8^>_( <do mib lab>) <do mib lab> <do mib lab>]
%61-65
mib,8 <sib' mib sol>[ <sib mib sol> <sib mib sol>] <sib mib sol>[ <sib mib sol>_( <do mib lab> <reb mib sib'>)]
<reb mib>8[^( <do mib lab>) <do mib lab> <do mib lab>] \grace lab'16_~ <mib lab do>8^>_( <do mib lab>) <do mib lab> <do mib lab>]
mib,8 <sib' mib sol>[ <sib mib sol> <sib mib sol>] <sib mib sol>[ <sib mib sol>_( <do mib lab> <reb mib sib'>)]
\oneVoice mib,8 r8 <reb'_~ mib~ sib'~>2. 
<reb mib sib'>1
%66-67
<lab do mib lab>2. r4
\clef bass s4 s2.
%68-123
s1*56
}

%%%%%%%%%%%%%%%%%%%% SUITE Ic: FIN

basIc = \relative do' { \voiceOne
%124-129
s1*6
%130
\voiceOne do,1
%131-135
\NOTEHSHIFT #-0.5 fa1(
fa2) s2
s4 \oneVoice <mi! sol sib reb>8 r8 r2
<fa lab>4 r4 <sib, reb sol>4 r4
\voiceOne \TUPBNO \times 2/3 { r8 \SLURHLIM #8  fa'[ lab] } \times 2/3 { do sib lab] } sol8 \oneVoice r8 r4
%136-140
\voiceOne do,1
\NOTEHSHIFT #-0.5 \set doubleSlurs = ##t <fa, fa'>1( \set doubleSlurs = ##f
<fa reb' fa>8)[ <reb'fa> <do mib> <do mib>] <sib reb>8[ <sib reb> <lab do reb> <lab do reb>]
\oneVoice <sol sib reb>8 r8 <mi' sol sib reb>8 r8 r2
<fa lab>4 r4 <sib, reb sol>4 r4
%141-145
<do fa lab>8 r8 \tupletUp \TUPNO \times 2/3 { lab'8([ fa reb'] } \tupletNeutral do8-|) r8 <do, do'> r8
<fa, fa'>8-| r8 <fa' fa'>4 r <fa fa'>
r4 <fa fa'> r <fa fa'>
r4 <fa fa'> sib,8 r <solb' sib> r
do,8 r <fa lab> r do r <mi sol!> r    \bar "||" \key fa \major % CHANGEMENT DE TONALITÉ
%146-150
fa,8 r <fa' fa'>4 r <fa fa'>
r4 <fa fa'> r4 <fa fa'>
r4 <fa fa'> sib,8 r <sol' sib> r
do,8 r <fa la> r do r <mi sib'> r
<fa la>8 do'[ do do] reb[( do) do do]
%151-155
do,8 do'[ do do] do, do'[ do <do, sib' do>->]
<fa la do>8 do'[ do do] reb->[( do) do mib]
re,!8 re'![ re re] re, re'[ re <re, do' re>->]
<sol sib re>8 re'[ re re] mib[( re) re re]
\voiceOne r8 reb[ do reb] r8 re[ do fa]
%156-159
r8 reb[ do reb] r8 re[ do fa]
\oneVoice sib,,8 <sol' sib>4 <sol sib>8 do,8 <la' do>4 <la do>8
\voiceOne do,8-| <sib' do>4.( <sib do>8)[ <sib do> <sib do> <sib do>]
<la do>8 s8 s4 s2
%160-170
s1*11
%171-175
\set autoBeaming = ##f \STEMCR sol8 fad fad mi! \STEMCRNO s2
s1
s1
do8\rest do[ do do] do[_( fa) fa fa]
r8 fa[ fa fa] fa[(fad sol re)]
%176-180
r8 do[ do do] do[ do do do]
r8 do[ do do] do[ do do do]
r8 do[ do do] do[ do do do]
r8 do([ la do] fa) s8 s4
\oneVoice fa8 \clef treble <do' fa la>[ <do fa la> <do fa la>] <si fa' sold>[( <do fa la>) <do fa la> <do fa la>]
%181-185
\voiceOne r8 <re fa sib!>[ <re fa sib> <re fa sib>] <re fa sib>[ <re fad la> <re sol!> <re fa!>] \clef bass
\oneVoice do,8 \clef treble <sol' do mi>[ <sol do mi> <sol do mi>] <sol do mi>[ <sol do mi>( <la do fa> < sib do sol'>)]
\voiceOne r8 <la do fa>[ <la do fa> <la do fa>] <la do fa>[ <la do fa> <do fa la>_( <la do fa>)] \clef bass
\oneVoice do,8 \clef treble <sol' do mi>[ <sol do mi> <sol do mi>] <sol do mi>[ <sol do mi>( <la do fa> <sib do sol'>)]
\voiceOne r8 <la do fa>[ <la do fa> <la do fa>] <la do fa> <la do>[_( <la do fa> <do mi sol>)]
%186-190
\oneVoice fa,8 <do' fa la>[ <do fa la> <do fa la>] <si fa' sold>[( <do fa la>) <do fa la> <do fa la>]
\voiceOne <mib fa do'>8[( <re fa sib!>) <re fa sib> <re fa sib>] <re fa sib>[( <do re la'> <sib re sol> <la do fa!>)] \clef bass
\oneVoice do,8 \clef treble <sol' do mi!>[ <sol do mi> <sol do mi>] <sol do mi>[ <sol do mi>( <la do fa> <sib do sol'>)]
\voiceOne <sib do>8[( <la do fa>) <la do fa> <la do fa>] \grace fa'16_~ <do fa la>8->[( <la do fa>) <la do fa> <la do fa>] \clef bass
\oneVoice do,8 \clef treble <sol' do mi>[ <sol do mi> <sol do mi>] <sol do mi>[ <sol do mi>( <la do fa> <sib do sol'>)]
%191-195
\voiceOne <sib do>8[( <la do fa>) <la do fa> <la do fa>] \grace fa'16_~ <do fa la>8->[( <la do fa>) <la do fa> <la do fa>] \clef bass
\oneVoice do,8 \clef treble <sol' do mi>[ <sol do mi> <sol do mi>] <sol do mi>[ <sol do mi> <la do fa> <sib do sol'>] \clef bass
do,8 r8 <sib' do sol'>2.~
<sib do sol'>1
<fa la do fa>2. r4
%196
R1 \bar "||" \key fa \minor % CHANGEMENT DE TONALITÉ
%197-240
s1*44
%241-245
\voiceOne \grace { s32 s32 s32 } s1
s1
s1
\oneVoice s4 <mi! sol sib reb>8 r8 r2
<fa lab>4 r4 <sib, reb sol>4 r4
%246-249
\voiceOne \TUPNO \times 2/3 { r8 fa'[ sol] } \times 2/3 { lab8[ sol fa] } sib4 lab8[ sol]
\times 2/3 { r8 fa[ sol] } \times 2/3 { lab8[ sol fa] } sib4 lab8[ sol]
\oneVoice <fa, fa'>4 r4 <fa do' fa> r
<fa do' fa>2 r2
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
basIPart = \context Staff \new Voice { \voiceOne
 \basIa \basIc
}
basIMidi = \context Staff \new Voice { \voiceOne
 \basIa \basIc
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A22. NOTES PIANO BAS VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basIIa = \relative do, { \voiceTwo
%1-4
fa1(
\NOTEHSHIFT #-0.5 fa1) (
\NOTEHSHIFT #-0.5 fa2) s2
s1
%5-8
s1
do'2( do8) s8 s4
fa,1(
\NOTEHSHIFT #-0.5 fa1) (
%9-12
<fa reb'>8)[ reb' do do] s2
s1*3
%13-25
s1*13 \clef treble
%26-30
sol'!2 lab
sol2 lab \clef bass
s1
mib8 sol4( lab8) <sib reb mib>8^. [ <lab reb mib>^.^( <sol reb' mib>^. <mib reb' mib>^.)]
s1
%31-35
s1*4
re4 mib s2
%36-44
s1*9
%45
lab,1
%46-50
reb2~ reb4.( re8)
mib,1
lab2~ lab4 lab8[( do)]
mib,1
lab2~ lab8 s8 s4
%51-55
s2. \clef treble s4
reb'2~ reb4. re8
s1
lab2~ lab8 s8 s4
s1
%56-60
lab2~ lab8 s8 s4
s1
reb2~ reb8 s8 s4
s1
lab2 s2
%61-65
s1
lab2 s2
s1*3
%66-70
s1
R1*2
<lab,, lab'>4 r4 r4 s4
s4 r4 r8 <dob' mib>8->([ <sib mib> <lab mib'>]
%71-75
<mib mib'>8) r8 r4 r4 s4
s4 r4 r4 <dob' mib>8->([ <sib mib>]
<lab mib'>8) r8 r4 r4 s4
\oneVoice \stemDown s4 r4 r8 <mib' solb>8^>_([ <reb solb> <dob solb'>]
<solb solb'>8) r8 r4 r4 s4
%76-80
s4 r4 r4 <mib' solb>8->_([ <reb solb>]
<dob solb'>8]) r8 r4 r8 s8 s4
s4 r4 r8 fab([ mib reb])
\stemUp sib2( dob8) s8 s4
\stemDown s1
%81-82
s4 r4 r8 dob8^([reb mibb]
solb,1) _(
dob,4) \voiceTwo r4 mib4._>( \times 2/3 { reb16[ dob sib]) }
<lab lab'>4-. r4 r4 s4
s4 r4 r8 <dob' mib>8->([ <sib mib> <lab mib'>]
%86-90
<mib mib'>8) r8 r4 r4 s4
s4 r4 r4 <dob' mib>8->([ <sib mib>]
<lab mib'>8) r8 r4 r4 s4
\oneVoice \stemDown s4 r4 r8 <mib' solb>8^>_([ <reb solb> <dob solb'>]
<solb solb'>8) r8 r4 r4 s4
%91-95
s4 r4 r4 <mib' solb>8_>_([ <reb solb>]
<dob solb'>8]) r8 r4 r8 s8 s4
s4 r4 r8 fab([ mib reb])
\stemUp sib2( dob8) s8 s4
\stemDown s1
%96-100
s4 r4 r8 dob8^([reb mibb]
\stemNeutral solb,1) _(
dob,4) r4 r8 s8 s4
s2 r8 <mib mib'>[ <mib mib'>( <sib sib'>)]
\set doubleSlurs = ##t <dob dob'>4->( <lab lab'>8) r8 r8 s8 s4 \set doubleSlurs = ##f
%101-105
s2 r8 <mib' mib'>[ <mib mib'>( <sib sib'>)]
\set doubleSlurs = ##t <dob dob'>4->( <lab lab'>8) r8 r8 s8 s4 \set doubleSlurs = ##f
s8 r8 mi'2-> s4
s8 r8 mi2-> s4
s8 r8 mi2( mib4
%106-110
re8) r8 s4 s2
s8 r8 mib4 r8 s8 s4
s8 r8 lab4( fa8) r8 s4
s8 r8 sib4( \SLURIN dob-> sib)
s4 r4 mib,2
%111-115
\voiceTwo fa2( sol
lab4) r4 r4 s4
s4 r4 r8 <do mib>8->([ <sib mib> <lab mib'>]
<mib mib'>8) r8 r4 r4 s4
s4 r4 r4 <do' mib>8->([ <sib mib>]
%116-120
<lab mib'>8) r8 r4 r4 s4
s4 r4 r8 lab4. ~
lab8 \oneVoice r8 r4 r8 s8 s4
\voiceTwo s4 r4 r8 <do mib>8->([ <sib reb> <mib, sib'>]
<lab do>8) r8 r4 r4 s4
%121-123
s4 r4 r8 lab4. ~
lab8 \oneVoice r8 r4 r8 s8 s4
\voiceTwo s4 r4 r8 <do mib>8->_([ <sib reb> <mib, sib'>]
}

%%%%%%%%%%%%%%%%%%%% SUITE IIc: FIN
basIIc = \relative do { \voiceTwo
%124-125
<lab do>4) r4 r8 <do mib>->([ <sib reb> <mib, sib'>]
<lab do>4) r4 r8 <do mib>->([ <sib reb> <mib, sib'>]
%126-130
<lab, do lab'>4) r4 r2
r4 lab4-.( lab4-.lab4-.)
<sol_~ do_~ sol'_~>1
\stemUp <sol do sol'>4 <sol' do sol'> <sol do sol'> <sol do sol'>
\stemDown fa1(
%131-136
\NOTEHSHIFT #-0.5 fa1) ( 
fa2) <sib reb>4( <lab do>
<sol sib>8) r8 s4 s2
s1
do2( do8) s8 s4
fa,1
%137-154
s1*18
%155-160
mi'!2 fa
mi2 fa
s1
s8 mi4( fa8) sol[ fa-.( mi-. do-.)]
fa8 fa,[ fa fa] mi->[( fa) fa fa]
fad8.->([ sol32 la] sol8.->[ la32 sib] do8-|) <do sol' sib>[ <do sol' sib> <do sol' sib>]
%161-165
<fa! la>8 fa,[ fa fa] mi->[( fa) fa fa]
fad8.->([ sol32 la] sol8.->[ la32 sib] do8-|) <la mi' sol>[ <la mi' sol> <la mi' sol>]
<re fa!>8 <sib re>[ <sib re> <sib re>] <la dod>[( <sib re>) <sib re> <sib re>]
\stemUp re8.^([ mib32 fa] mib8.[ fa32 solb]) <fa, do'>8-| \stemDown <fa' do' mib>[ <fa do' mib> <fa do' mib>]
<sib re>8 <sib, re>[ <sib re> <sib re>] <la dod>[( <sib re>) <sib re> <sib re>]
%166-170
\oneVoice <lab re fa>8[( <sol re' fa>) <sol re' fa> <sol re' fa>] <do! mi!>8 <do' mi>[ <do mi> <do mi>]
<sib, mi sol>8[( <la! mi' sol>) <la mi' sol> <la mi' sol>] <re fad>8 <re' fad>[ <re fad> <re fad>]
<mib, mib'>8[( <re re'>) <re re'>( <dod dod'>)]  <dod dod'>[( <re re'>) <re re'>( <la la'>)]
<sol sol'>8[( <fad fad'>) <fad fad'>( <mi! mi'!>)] <mi mi'>[( <re re'>) <re re'>-. <re re'>-.]
<mib mib'>8[( <re re'>) <re re'>( <dod dod'>)]  <dod dod'>[( <re re'>) <re re'>( la')]
%171-175
\voiceTwo sol8[( fad) fad( mi!)] mi[( re) re re]
re8-.([ re-. re-. re-.] re-.[ re-. re-. re-.])
<mi' sol sib>4 do8-.([ do-.] do-.[ do-. do-. do-.])
fa,1
sib2~ sib4.( si8)
%176-180
do,1
fa2.~ fa8[ la]
do,1
fa2~ fa8 s8 s4
s1                               % \clef treble
%181-185
sib'!2~ sib4.( si8)
s1
fa2~ fa8 s8 s4
s1
fa2~ fa8 s8 s4
%186-191
s1
sib2~ sib8 s8 s4
s1
fa2~ fa8 s8 s4
s1
fa2~ fa8 s8 s4
%192-229
s1*38
%230-235
s2 s8 fa4.~
fa8 s8 s2.
s1*2
s2 s8 fa4.~
fa8 s8 s2.
%236-240
s1*5
%241-245
<fa, do'>1(
\NOTEHSHIFT #-0.5 \set doubleSlurs = ##t <fa fa'>1) ( \set doubleSlurs = ##f
<fa reb' fa>8)[ <reb'fa> <do mib> <do mib>] <sib reb>8[ <sib reb> <lab do> <lab do>]
<sol sib>8 r8 s2.
s1
%246-249
do2 do
do2 do
s1*2
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
basIIPart = \context Staff \new Voice { \voiceTwo
 \basIIa \basIIc
}
basIIMidi = \context Staff \new Voice { \voiceTwo
 \basIIa \basIIc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A23. NOTES PIANO BAS VOIX 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basIIIa = \relative do, { \voiceThree
%1-4
<fa lab'>2.( <sol mi'>4)
\NOTEHSHIFT #0.5 lab4_( la sib do)
reb4 do <sib reb>_( <lab do>
<sol sib>8) s8 s4 s2
%5-8
s1*2
<fa lab'>2.( <sol mi'>4)
lab4 la sib do
%9-116
s1*108
%117-120
s2 s8 <do mib>8[ <reb fa> <sib sol'>]
<do lab'>8 s8 s4 s2
s1
s1
%121-123
s2 s8 <do mib>8[ <reb fa> <sib sol'>]
<do lab'>8 s8 s4 s2
s1
}

%%%%%%%%%%%%%%%%%%%% SUITE IIIc: FIN

basIIIc = \relative do, { \voiceThree
%124-129
s1*6
%130-132
<fa lab'>2. <sol mi'>4
lab4 la sib do
\SLURPOS #'(2 . 0) reb4 do s2
%133-135
s1*3
%136-137
<fa, lab'>2.( <sol mi'>4)
lab4 la sib do
%138-196
s1*59
%197-200
fa,4-. r4 r4 s4
s4 r4 r8 <lab' do>8_>_([ <sol do> <fa do'>]
<do do'>8) r8 r4 r4 s4
s4 r4 r4 <lab' do>8_>_([ <sol do>]
%201-205
<fa do'>8) r8 r4 r4 s4
s4 r4 r8 <do' mib>8_>_([ <sib mib> <lab mib'>]
<mib mib'>8) r8 r4 r4 s4
s4 r4 r4 <do' mib>8_([ <sib mib>]
<lab mib'>8) r8 r4 r8 s8 s4
%206-210
s4 r4 r8 reb,8([ do sib]
sol2) ( lab8) s8 s4
s1
s4 r4 r8 lab8([ sib dob])
mib,1(
%211-215
lab,4) r4 r8 s8 s4
s4 s8 r8 r8 <do' do'>8[ <do do'>( <sol sol'>)]
\set doubleSlurs = ##t <lab lab'>4->( <fa fa'>8) r8 r8 s8 s4 \set doubleSlurs = ##f
s4 s8 r8 r8 <do' do'>8[ <do do'>( <sol sol'>)]
\set doubleSlurs = ##t <lab lab'>4->( <fa fa'>8) r8 r8 s8 s4 \set doubleSlurs = ##f
%216-220
s8 r8 reb'2 s4
s8 r8 reb2 s4
s8 r8 reb2 do!4_(
si8) r8 s4 s2
s8 r8 do4 r8 s8 s4
%221-225
s8 r8 fa4( re8) r8 s4
s8 r8 sol4( lab!_> sol)
s4 r4 do,2(
re2 mi) ( \bar "||" \key fa \major % CHANGEMENT DE TONALITÉ
fa4-.) r4 r4 s4
%226-230
s4 r4 r8 <la do>8_>_([ <sol do> <fa do'>]
<do do'>8) r8 r4 r4 s4
s4 r4 r4 <la' do>8_>_([ <sol do>]
<fa do'>8) r8 r4 r4 s4
s4 r4 r8 \voiceOne <la do>8[ <sib re> <sol mi'>]
%231-235
<la fa'>8 \oneVoice r8 r4 r8 s8 s4
s4 r4 r8 <la do>8->([ <sol sib> <do, sol'>]
<fa la>8) r8 r4 r4 s4
s4 r4 r8 \voiceOne <la do>8([ <sib re> <sol mi'>]
<la fa'>8) \oneVoice r8 r4 r8 s8 s4
%236-240
s4 r4 r8 <la do>8([ <sol sib> <do, sol'>]
<fa la>4) r4 r8 <la do>8([ <sol sib> <do, sol'>]
<fa la>4) r4 r8 <la do>8([ <sol sib> <do, sol'>])
<fa, la fa'>4 r4 r2
r8 mi!8([ fa lab] si[ do fa sol]) \key fa \minor % CHANGEMENT DE TONALITÉ
%241-242
\NOTEHSHIFT #0.5 <fa, lab'>2.^( <sol mi'>4)
lab4 la sib do
%2243-249
s1*7
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
basIIIPart = \context Staff \new Voice { \voiceThree
 \basIIIa \basIIIc
}
basIIIMidi = \context Staff \new Voice { \voiceThree
 \basIIIa \basIIIc
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A24. NOTES PIANO BAS VOIX 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basIVa = \relative do' { \voiceFour

%1-25
s1*25
%26-27
s8 reb4. s8 do4.
s8 reb4. s8 do4.
%28-123
s1*96
}

%%%%%%%%%%%%%%%%%%%% SUITE IVc: FIN

basIVc = \relative do' { \voiceFour
%124-154
s1*31
%155-156
s8 sib4. s8 la4.
s8 sib4. s8 la4.
%157-163
s1*7
%164
si,!4 do!4 s2
%165-249
s1*85
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
basIVPart = \context Staff \new Voice { \voiceFour
 \basIVa \basIVc
}
basIVMidi = \context Staff \new Voice { \voiceFour
 \basIVa \basIVc
 }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
basNotePart = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 << \basIPart \basIIPart \basIIIPart \basIVPart >>
}
%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI (VOIR SORTIE MIDI)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. DYNAMIQUES PARTITION COMMUNES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPart = {
\override DynamicTextSpanner #'dash-period = #-1.0
%1-5
\DYNEXO #'(-3 . 0) \PINEXO #'(-2.5 . 0) s2. \fp \decr s4 \!
s1
\setTextCresc s4.. \cr \PINEXO #'(-2 . 0) s16 \! \cr s2
s4 \! \f s4 \fz s4 \DYNEXO #'(-4.5 . 0) s4 \p
s1
%6-10
s2 s8 s4 \cr s16 s16 \!
\DYNEXO #'(-4.5 . 0) \PINEXO #'(-2.5 . 0) s2 \fp \decr s2 \!
s2. \setTextCresc s8. \cr s16 \!
s4 \PINEXO #'(-1.5 . 0) s4 \cr s4.. s16 \!
s4 \f s4 \fz s4 \DYNEXO #'(-4.5 . 0) s4 \p
%11-13
s1
s8 \setTextCresc s8 \cr s2  s4 \! \f 
s8 \DYNEXO #'(1 . 0) s4. \pp s2
%14-18
s1*5
%19
s2 s2 \pp
%20-28
s1*9
%29-30
s4.. \setTextCresc s16 \cr s2
s8 s8 \! \f s4 s2
%31-36
s1*6
%37-40
s1 \fz
s1 \fz
s4. \ff \decr s8 \! s2
s1
%41-45
s4. \fp \decr s8 s8 \! s4.
s8 \DECRESC s4. \decr s2
\DYNEXO #'(1 . 0) s1 \! \p
s1 \pp
\DYNEXO #'(1.5 . 0) s2 \pp s8 s4 \cr s8 \!
%46-50
s4 \decr s4 \! s2
s1
s4 s4. \cr s8 \! s8. \decr s16 \!
s1*2
%51-55
s2 s4. \cr s8 \!
s4. \decr s8 \! s2
s1
s4 s4. \cr s8 \! s8. \decr s16 \!
s1
%56-58
s1
s2 s8. s16 \cr s8. s16 \!
s8 \decr s16 \! s16 s4 s2
%59-63
s1*5
%64-65
s8 s4. \cr s4. s8 \!
s2. \decr s4 \!
%66-67
s1*2
%68-69
\DECRESC s2 \decr s2 \!
s2 \pp s8 \TSCREXO #'(1 . 1) s4. -\APPASSIONATO
%70-72
s1*3
%73
s2 \setTextCresc s4 \cr s4 \!
%74-83
s1*10
%84
s1 \pp
%85-87
s1*3
%88
s2 \setTextCresc s4 \cr s4 \!
%89-102
s1*14
%103-108
s1 \f
s1
s4 \DECRESC s2 \decr s4 \!
s1 \p
s1
\DYNEXO #'(1.5 . 0) s1 \pp
%109-115
s1*7
%116-123
s2. \setTextCresc s8. \cr s16\!
s1*2
s2. \DECRESC s8. \decr s16\!
s2. \DYNEXO #'(1.5 . 0) s4 \pp
s1*3
%124-125 ------ SUITE
s1
\DIMIN s2 \decr s2 \!
%126-130
s1*2
s2 \setTextCresc s4 \cr s4\!
s4 s4 \cr s4 s8. s16 \!
\DYNEXO #'(-3 . 0) \PINEXO #'(-2.5 . 0) s2 \fp \decr s2 \!
%131-135
s2. \setTextCresc s8. \cr s16\!
s1
s4 s4 \fz s4 \DYNEXO #'(-4.5 . 0) s4 \p
s1
s2 s8 s4 \cr s16 s16 \!
%136-140
\DYNEXO #'(-5 . 0) \PINEXO #'(-4.5 . 0) s2 \f \decr s2 \!
s1
s8. s16 \cr s4 s4 s16 s16 \! s8
s4 s4 \fz s4 \DYNEXO #'(-4.5 . 0) s4 \p
s1
%141-142
\setTextCresc s4 \cr s2  s4 \! \f 
s8 \DYNEXO #'(1 . 0) s4. \pp s2
%143-157
s1*15
%158-159
s4 \setTextCresc s2. \cr
\DYNEXO #'(1 . 0) s1 \! \f 
%160-165
s1*6
%166-170
s1 \fz
s1 \fz
\DYNEXO #'(0.5 . 0) \PINEXO #'(0.5 . 0) s2 \ff \decr s8 s8 \! s4
s2 s2 \fz
s4. \decr s8 \! s2
%171-175
s1
\DYNEXO #'(0.5 . 0) s1 \p
s1 \p
s4 \TSCREXO #'(-1 . 1) s4 -\SEMPRELIGATO s4 s8 \cr s8 \!
s8 \decr s8 \! s4 s2
%176-179
s1
s4 s4 \cr s8 s8 \! s8 \decr s8 \!
s1*2
%180-183
s2 s4. \cr s8 \!
s8 \PINEXO #'(-2 . 0) s4 \decr s8 \! s2
s1
s4. \cr s8 \! s4 s8 \decr s8 \!
%184-185
s1*2
%186-187
s2. s8. \cr s16 \!
s8. \decr s16 \! s2.
%188-195
s1*8
%196-197
\DECRESC s2 \decr s2 \!
s1 \pp
%198-200
s1*3
%201-204
s4 s8. \setTextCresc s16 \cr s4 s4 \!
s1*2
s4. \DECRESC s8 \decr s4 s4 \!
%205-215
s1*11
%216-220
s1 \f
s1
s4 s4. \DECRESC s8 \decr s4
s1 \! \p
s1
%221-224
s1 \pp
s1
s2 s2 \cr
s16 s16 \! s8 \decr s4 s8. s16 \! s4
%225-228
s1*4
%229
s2. \setTextCresc s8. \cr s16 \!
%230-236
s1*7
%237-240
s2 s8 \DIMIN s8 \decr s8 s8 \!
s1*2
s8 \setTextCresc s8 \cr s4 s2 \!
%241-243
\DYNEXO #'(-3.5 . 0) \PINEXO #'(-1.5 . 0) s2 \f \decr s8. s16 \! s4
s1
\setTextCresc s8. \cr s16 \! s16 s16 \cr s8 s4 s8. s16 \!
%244-249
s4 s4 \fz s4 \DYNEXO #'(-4.5 . 0) s4 \p
s1*2
\DYNEXO #'(1.5 . 0) s1 \pp
s1*2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. DYNAMIQUES PARTITION PORTÉE DU HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hautDynPart = {
 \override DynamicTextSpanner #'dash-period = #-1.0
%1-3
s1*3
%4-17
s1*14
%18
s8 s8 ^\cr s8. s16 \!  s16 s16 ^\decr s8 s16 s16 \! s8
%19-44
s1*26
%45
s1 ^\SEMPRELIGATO 
%46-68
s1*23
%69-75
s2. s4 ^\SINISTRA
s1*6
%76
s2 s16 \DECRESC s16 ^\decr s4 s8 \!
%77-78
s1*2
%79-80
s2 s8 s8 ^\cr s8 s8 \!
s8 ^\decr s16 \! s16 s4 s2
%81-90
s1*10
%91
s2 s16 \DECRESC s16 ^\decr s4 s8 \!
%92-93
s1*2
%94-95
s2 s8 s8 ^\cr s8 s8 \!
s16 ^\decr s16 \! s8 s4 s2
%96-101
s1*6
%102
s2 s8 s8 ^\cr s8 s8 \!
%103-109
s1*7
%110-111
s2. s16 s8. ^\cr
s16 s16 \! s16 ^\decr s16 s4   s4 s16 s16 \! s8
%112-116
s1*5
%117
s2 s8. ^\cr s16 \! s8. ^\decr s16 \!
%118-123
s1*6
%124-170 ------ SUITE
s1*47
%171
\DECRESC s2 ^\decr s2 \!
%172-206
s1*35
%207-208
s2 s8 s8 ^\cr s8 s8 \!
s8 ^\decr s8 \! s4 s2
%209-212
s1*4
%213-215
s2 s8 s8 ^\cr s8 s8 \!
s1
s2 s8 s8 ^\cr s8 s8 \!
%216-231
s1*16
%232-233
s2 s16 \DECRESC s16 ^\decr s8 s4
s4 s8. \DYNEXO #'(2 . 0) s16 \! ^\pp s2
%234-249
s1*16
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. DYNAMIQUES PARTITION PORTÉE DU BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basDynPart = {
%1-80
s1*80
%81-82
s2 s8 s8 \cr s8 \! \decr s8 \!
s1
%83
s2 \DYNEXO #'(-2.5 . 4) s4. \fp s8
%84-95
s1*12
%96
s2 s8 s8 \cr s8 \! \decr s8 \!
%97-102
s1*6
%103-104
s4 \DYNEXO #'(-2.5 . 2) s2 \fz s4
s4 \DYNEXO #'(-2.5 . 2) s2 \fz s4
%105-123
 s1*19
%124-208 ------ SUITE
s1*85
%209
s2 s8 s8 \cr s8 \! \decr s8 \!
%210-215
s1*6
%216-218
s4 s2 \fz s4
s4 s2 \fz s4
s4 s2 \fp s4
%219-229
s1*11
%230
s2 s8 s8 \cr s8 \! \decr s8 \!
%231-249
s1*19
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. DYNAMIQUES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. DYNAMIQUES MIDI COMMUNES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% A: COMMUNES
dynMidiACom = {
%1-5
s2. \f \decr s4 \! \p
s1
s1 \cr
s4 \! \f  s4 \ff s2 \p
s1
%6-10
s2 s8 s4. \cr
s2 \! \f \decr s2 \! \p
s2. s4 \cr
s1
s4 \! \f s4 \ff s2 \p
%11-15
s1
s4 s2 \cr s4 \! \f 
s8 s4. \pp s2
s1*2
%16-20
s1*2
s2 \cr s2 \! \mp \decr
s2 \! \p s2 \pp
s1
%21-25
s1*5
%26-30
s1*3
s2 s2 \cr
s8 s8 \! \f s4 s2
%31-35
s1*5
%36-40
s1
s8 \ff s8 \f s2.
s8 \ff s8 \f s2.
s2 \ff \decr s2 \! \mf
s1
%41-45
s2 \ff \decr s2 \! \mf
s1 \decr
s1 \! \p
s1 \pp
s2 s2 \cr
%46-50
s4 \! \p \decr s4 \! \pp s2
s1
s4 s2 \cr s4 \! \p \decr
s1 \! \pp
s1
%51-55
s2 s2 \cr
s4 \! \p \decr s4 \! \pp s2
s1
s4 s2 \cr s4 \! \p \decr
s1 \! \pp
%56-60
s1
s2. s4 \cr
s4 \! \p \decr s2. \! \pp
s1*2
%61-65
s1*3
s2 s2 \cr
s2. \! \mf s4 \p
%66-67
s1*2
}

%%%%%%%%%%%%%%%%%%%% B: SPÉCIFIQUES 1) FOND ("up" & "down")
dynMidiBFond = {
%68-70
s2 \decr s4. s8 \! \ppp \VOLMAX #0.6
s1 \pp
s1
%71-75
s1*2
s2 s2 \cr
s1 \! \p
s1
%76-80
s2 s2 \decr
s1 \! \pp
s1*3
%81-85
s1*5
%86-90
s1*3
s2 s2 \cr
s1 \! \p
%91-95
s1
s2 s2 \decr
s1 \! \pp
s1*2
%96-100
s1*5
%101-105
s1
s2 s2 \cr
s1 \! \f
s1
s4 s2 \decr s4
%106-110
s1 \! \p
s1
s1 \pp
s1
s2. s4 \cr
%111-115
s8 s8 \! \p \decr s4 s2
s1 \! \pp
s1*3
%116-120
s2. s4 \cr
s2 \! \p s4 \cr s4 \! \mp \decr
s1 \! \p
s2. s4 \decr
s2. s4 \! \pp
%121-125
s1*4
s1 \decr
%126-129
s1 \! \ppp
s1
s2 s2 \cr
s2. s4 \! \ff \VOLMAX #1
}

%%%%%%%%%%%%%%%%%%%% B: SPÉCIFIQUES 2) ÉCHO ("upI" & "downI")
dynMidiBEcho = {
%68-70
s1 \decr
s1 \! \pp
s1
%71-75
s1*2
s2 s2 \cr
s1 \! \p
s1
%76-80
s2 s2 \decr
s1 \! \pp
s1
s2 s8 s4. \cr
s1 \! \p
%81-85
s2. \pp s8 \p s8 \pp
s1
s2 s2 \f \decr
s1 \! \pp
s1
%86-90
s1*3
s2 s2 \cr
s1 \! \p
%91-95
s1
s2 s2 \decr
s1 \! \pp
s2 s8 s4. \cr
s1 \! \p
%96-100
s2. \pp s8 \p s8 \pp
s1*4
%101-105
s1
s2 s8 s4. \cr
s4 \! \f s2 \ff s4 \f
s4 s2 \ff s4 \f
s4 s2. \decr
%106-110
s1 \! \p
s1
s1 \pp
s1*2
%111-115
s1*5
%116-120
s2. s4 \cr
s1 \! \p
s1*2
s2. s4 \pp
%121-125
s1*5
%126-129
s1*3
s4 s2 \cr s4 \! \f
}

%%%%%%%%%%%%%%%%%%%% C: COMMUNES
dynMidiCCom = {
%130
s2 \f \decr s2 \! \p
%131-135
s2. s4 \cr
s1
s4 s4 \! \ff s2 \p
s1
s2 s8 s4. \cr
%136-142
s2 \! \f \decr s2 \! \p
s1
s4 s2. \cr
s4 s4\! \ff s2 \p
s1
%141-145
s2. \cr s4 \! \f
s8 s4. \pp s2
s1*3
%146-155
s1*10
%156-160
s1*2
s4 s2. \cr
s1 \! \f
s1
%161-165
s1*5
%166-170
s8 \ff s8 \f s2.
s8 \ff s8 \f s2.
s2 \ff \decr s4 s4 \! \mf
s2 s8 \ff s8 \f s4
s2 \decr s2 \! \mf
%171-175
s1 \decr
s1 \! \p
s1
s2. s4 \cr
s4 \! \mp \decr s2. \! \p
%176-179
s1
s4 s2 \cr s4 \! \mp \decr
s1 \! \p
s1
s2 s2 \cr
%181-185
s2 \! \mp \decr s2 \! \p
s1
s2 \cr s4 \! \mp s4 \decr
s1 \! \p
s1
%186-190
s2. s4 \cr
s4 \! \mp \decr s2. \! \p
s1*3
%191-195
s1*5
}

%%%%%%%%%%%%%%%%%%%% D: SPÉCIFIQUES 1) FOND ("up" & "down")
dynMidiDFond = {
%196-200
s2 \decr s4. s8 \! \ppp \VOLMAX #0.55
s1 \pp
s1
s1*2
%201-205
s2 s2 \cr
s1 \! \p
s1
s2 s2 \decr
s1 \! \pp
%206-210
s1*5
%211-215
s1*4
s2 s2 \cr
%216-220
s1 \! \f
s1
s4 s2 \decr s4
s1 \! \p
s1
%221-225
s1 \pp
s1
s2 s2 \cr
s8 s8 \! \p \decr s2 s4 \! \pp
s1
%226-230
s1*3
s2. s4 \cr
s1 \! \p
%231-235
s1
s2 s2 \decr
s2 s2 \! \pp
s1*2
%236-240
s1
s2 s8 s4. \decr
s1 \! \ppp
s1
s8 s2. \cr s8 \! \ff \VOLMAX #1
}

%%%%%%%%%%%%%%%%%%%% D: SPÉCIFIQUES 2) ÉCHO ("upI" & "downI")
dynMidiDEcho = {
%196-200
s1 \decr
s1 \! \pp
s1
s1*2
%201-205
s2 s2 \cr
s1 \! \p
s1
s2 s2 \decr
s1 \! \pp
%206-210
s1
s2 s8 s4. \cr
s1 \! \p
s2. \pp s8 \p s8 \pp
s1
%211-215
s1*2
s2 s8 s4. \cr
s1 \! \p
s2 s8 s4. \cr
%216-220
s4 \! \f s2 \ff s4 \f
s4 s2 \ff s4 \f
s4 s2. \decr
s1 \! \p
s1
%221-225
s1 \pp
s1*4
%226-230
s1*3
s2. s4 \cr
s2. \! \p s8 \mp s8 \p
%231-235
s1
s2 s8 s4. \decr
s1 \! \pp
s1*2
%236-240
s1*4
s8 s2. \cr s8 \! \f
}

%%%%%%%%%%%%%%%%%%%% E: COMMUNES
dynMidiECom = {
%241-245
s2. \f \decr s4 \! \p
s1
s1 \cr
s4 s4 \! \ff \tempo 4=100 s2 \p
s1
%246-249
s1
s1 \pp
\tempo 4=90 s2 \tempo 4=80 s2
\tempo 4=60 s1
}

dynMidiUpDown  = { \dynMidiACom \dynMidiBFond \dynMidiCCom \dynMidiDFond \dynMidiECom }
dynMidiUpDownI = { \dynMidiACom \dynMidiBEcho \dynMidiCCom \dynMidiDEcho \dynMidiECom }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PÉDALES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pedale = {
%1-68
s1*68
%69-123
s1 \sustainDown
s1*54
%124 ----- SUITE
s2. s8. s16 \sustainUp
%125-195
s1*71
%196-240
s1 \sustainDown
s1*43
s2. s8. s16 \sustainUp
%241-249
s1*9
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION (pas de \midi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\score {
 \context PianoStaff <<
  \new Staff = "up"   << \hautNotePart \hautDynPart >>
  \new Dynamics = "dynamics" \dynPart
  \new Staff = "down" << \basNotePart \basDynPart >>
 >>
 \layout {
  \context {
   \Score
   \override SpacingSpanner #'spacing-increment = #1.0
  }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice % So that \cresc works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 0.5)
   \override DynamicLineSpanner #'Y-offset = #-1

   \consists "Script_engraver"
   \consists "Dynamic_engraver"
   \consists "Text_engraver"

   \override DynamicText #'font-size = #-0.7
   \override TextScript #'font-size = #1
   \override TextScript #'font-shape = #'italic

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
%                                           E. SORTIE MIDI (pas de \layout)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ DES NOTES POUR LE MIDI
%%% FOND
noteMidiUp = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
 \KEYTIME
 << \hautIMidi \hautIIMidi >>
}
%%% ÉCHO
noteMidiUpI = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
 \KEYTIME
 << \hautIIIMidi >>
}
%%% FOND
noteMidiDown = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
 \KEYTIME
 << \basIMidi \basIVMidi >>
}
%%% ÉCHO
noteMidiDownI = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
 \KEYTIME
 << \basIIMidi \basIIIMidi >>
}

%%%%%%%%%%%%%%%%%%%% REDÉFINITION DES VOLUMES RESPECTIFS ATTRIBUÉS AUX DYNAMIQUES 
% volumes par défaut (LilyPond\usr\share\lilypond\current\scm\midi.scm):
% sf    1.00     ff  0.80     mp   0.61     ppp    0.42     fp: 0.50
% ffff  0.92     f   0.75     p    0.55     pppp   0.34
% fff   0.85     mf  0.68     pp   0.49     ppppp  0.25

#(define my-absolute-volume-alist '())
#(set! my-absolute-volume-alist (append '(
 ("sf" .    1.00)
 ("ffff" .  1.00)
 ("fff" .   0.93)
 ("ff" .    0.80)
 ("f" .     0.67)
 ("mf" .    0.59)
 ("mp" .    0.51)
 ("p" .     0.43)
 ("pp" .    0.36)
 ("ppp" .   0.30)
 ("pppp" .  0.25)
 ("ppppp" . 0.20) )
 my-absolute-volume-alist))

% DANS LE BLOC MIDI, CHAQUE DYNAMIQUE RENCONTRÉE PRENDRA LE NOUVEAU VOLUME SPÉCIFIÉ
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \KEYTIME s1 }

\score {
 \context PianoStaff <<
  \new Staff = "upI"   { \SILENCE << \noteMidiUpI   \dynMidiUpDownI \pedale >> }
  \new Staff = "up"    { \SILENCE << \noteMidiUp    \dynMidiUpDown >> }
  \new Staff = "downI" { \SILENCE << \noteMidiDownI \dynMidiUpDownI \pedale >> }
  \new Staff = "down"  { \SILENCE << \noteMidiDown  \dynMidiUpDown >> }
  \new Dynamics = "pedal" \pedale
 >>
 \midi {
  \context {
   \Score
% CHANGEMENT DU VOLUME DE SORTIE MIDI
    dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
    tempoWholesPerMinute = #(ly:make-moment 110 4)
  }
  \context {
   \type "Performer_group"
   \name Dynamics
   \consists "Piano_pedal_performer"
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 } 
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER SchubertF-D935-1-Impromptu.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
