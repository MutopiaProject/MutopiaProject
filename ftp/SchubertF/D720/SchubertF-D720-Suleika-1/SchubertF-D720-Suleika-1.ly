%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D720-Suleika-1.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Suleika 1", für eine Singstimme mit Klavierbegleitung
%                                       AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.60"
\include "italiano.ly"

\paper {
between-system-padding = 12\mm
line-width = 186\mm
#(define left-margin (/ (- paper-width  (* 186 mm)) 2))
#(define top-margin (/ (- paper-height (* 259 mm)) 2))
#(define bottom-margin (/ (- paper-height (* 253 mm)) 2))
after-title-space = 55\mm

indent = 22\mm
oddHeaderMarkup  = \markup \fill-line {
 " " { \italic "♫  Franz Schubert: Suleika 1 (D.720)  ♫" }  \fromproperty #'page:page-number-string }
evenHeaderMarkup =  \markup \fill-line {
 \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Suleika 1 (D.720)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 dedication = \markup \center-column { \fontsize #0.5 \bold "Franz von Schober gewidmet." " " }
 title = \markup { \fontsize #1.5 "Suleika 1" }
 subsubtitle = " "
 poet = \markup { \hspace #19  \column { \center-column {
  \line { \fontsize #2 \bold "Johann Wolfgang von Goethe" }
  \line { \small "(1787-1862)" }
  \line { \fontsize #1 \bold "„West-östlicher Diwan“" }
  } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.720 (Op. 14, No 1, 1821)" }
% MUTOPIA
 mutopiatitle = "Suleika 1"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Johann Wolfgang von Goethe"
 mutopiaopus = "D.720 (Op. 14, No 1)"
 mutopiainstrument = "Voice and Piano"
 date = "1821"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/10/30-1584"
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
TEMPOBASE = \tempo 4=110
TEMPOLENT = \tempo 4=90
TEMPOFA   = \tempo 4=100
TEMPOFB   = \tempo 4=70
TEMPOFC   = \tempo 4=30
%----- TONALITÉS ET MESURES
KEYA  = { \key re \major }
KEYB  = { \key si \major }
TIME  = { \time 3/4 }
%----- MOUVEMENTS
MOVEMENT  = \markup { \bold \large { \hspace #-4.0 "Etwas lebhaft." } }
MOVEMENTB = \markup { \bold \large { "Etwas langsamer." } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "trombone"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
}
IPIANOBAS = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.9
}
%----- MARKUP
MITVERSCHIEBUNG  = \markup { \bold \italic "Mit Verschiebung." }
SEMPRELIGATO     = \markup { \bold \italic "sempre ligato" }
%----- CRESCENDOS
CRESCM   = \markup { \bold \italic "cresc." }
DECRESCM = \markup { \bold \italic "decresc." }
DIMINM   = \markup { \bold \italic "dimin." }
DIMM     = \markup { \bold \italic "dim." }
CREScendo  = { \set crescendoText   = \markup { \bold \italic "cres" }   \set crescendoSpanner = #'dashed-line }
cresCENdo  = { \set crescendoText   = \markup { \bold \italic "cen" }    \set crescendoSpanner = #'dashed-line }
crescenDO  = { \set crescendoText   = \markup { \bold \italic "do" }     \set crescendoSpanner = #'dashed-line }
%----- "dash": SUPPRESSION ET RETABLISSEMENT
DTSDASHNO = \override DynamicTextSpanner #'dash-period = #-1
DTSDASHOK = \override DynamicTextSpanner #'dash-period = #2.0
%----- NOLET: CACHER OU AFFICHER LE NOMBRE OU LE CROCHET 
TUPNNO = \override TupletNumber #'transparent = ##t
TUPBNO = \override TupletBracket #'transparent = ##t
TUPNO  = { \TUPNNO \TUPBNO }
TUPNOK = \override TupletNumber #'transparent = ##f
TUPBOK = \override TupletBracket #'transparent = ##f
TUPOK  = { \TUPNOK \TUPBOK }
%----- REPOSITIONNEMENT DES DYNAMIQUES
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
%----- REPOSITIONNEMENT DES MARKUP / SCRIPT
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
%----- CACHER UNE HAMPE
FLAGHIDE =  \once \override Stem #'transparent = ##t
%----- REPOSITIONNEMENT D'UNE NOTE
NOTEHS =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override NoteColumn #'force-hshift = #$beg-end #})
NOTEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override NoteHead #'extra-offset = #$beg-end #})
%----- REPOSITIONNEMENT D'UNE ALTERATION
ACCEXO
 =  #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Accidental #'extra-offset = #$beg-end #})
%----- VARIER LA HAUTEUR D'UNE LIAISON DE PHRASÉ
PSLURHLIM =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override PhrasingSlur #'height-limit = #$beg-end #})
%----- AUGMENTER LA HAUTEUR D'UNE LIAISON DE PHRASÉ
PSLURPOS =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override PhrasingSlur #'positions = #$beg-end #})
%----- DIRECTION DE LA HAMPE 3e LIGNE
STEMDIRUP = \override Stem #'neutral-direction = #'1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
\set fontSize = #-.5

%--- 7 - 22
Was be -- deu -- tet die Be -- we -- gung?
Bringt der Ost mir fro -- he Kun -- de? __
Sei -- ner Schwin -- gen fri -- sche Re -- gung
kühlt des Her -- zens tie -- fe Wun -- de,
sei -- ner Schwin -- gen fri -- sche Re -- gung
kühlt __ des Her -- zens tie -- fe Wun -- de.

%--- 27-40
Ko -- send spielt er mit dem Stau -- be,
jagt ihn auf in leich -- ten Wölk -- chen,
treibt __ zur si -- chern Re -- ben -- lau -- be
der In -- sek -- ten fro -- hes Völk -- chen,
treibt __ zur si -- chern Re -- ben -- lau -- be
der In -- sek -- ten fro -- hes Völk -- chen.

%--- 42-57
Lin -- dert sanft der Son -- ne Glü -- hen,
kühlt auch mir die hei -- ßen Wan -- gen, __
küßt die Re -- ben noch im Flie -- hen,
die auf Feld und Hü -- gel pran -- gen,
küßt die Re -- ben noch __ im Flie -- hen,
die __ auf Feld und Hü -- gel pran -- gen.

%--- 62-69
Und mir bringt __ sein __ lei -- ses Flüs -- tern __
von __ dem Freun -- de tau -- send Grü -- ße;
%--- 72-79
eh’ noch die -- se Hü -- gel düs -- tern,
grü -- ßen mich __ wohl tau -- send Küs -- se.

%--- 84-99
Und so kannst du wei -- ter zie -- hen!
Die -- ne Freun -- den und Be -- trüb -- ten.
Und so kannst du wei -- ter zie -- hen!
Die -- ne Freun -- den und Be -- trüb -- ten.
Dort, dort wo ho -- he Mau -- ern glü -- hen,
Dort find’ ich bald den Viel -- ge -- lieb -- ten.

%--- 110-120
Ach, die wah -- re Her -- zens Kun -- de,
Lie -- bes -- hauch, er -- frisch -- tes Le -- ben,
wird mir nur aus sei -- nem Mun -- de,
kann mir nur sein A -- them ge -- ben, sein A -- them ge -- ben.

%--- 122-132
Ach, die wah -- re Her -- zens Kun -- de,
Lie -- bes -- hauch, er -- frisch -- tes Le -- ben,
wird mir nur aus sei -- nem Mun -- de,
kann mir nur sein A -- them ge -- ben, sein A -- them ge -- ben.

%--- 134-141
Ach, die wah -- re __ Her -- zens Kun -- de,
Lie -- bes -- hauch, er -- frisch -- tes Le -- ben,
kann mir nur sein A -- them ge -- ben. __
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chantA = \relative do' {
%--- 1
R2.*4
R2.^\fermataMarkup
%--- 6
R2.
r4 r4 fad8 fad
fad4. fad8 fad fad
si4 fad r
%--- 10
fad8. fad16 si8 lad si dod
re8.[ mi16] fad2~
fad2 r4
dod2 dod4
%--- 14
re4. re8 dod re
fad4 mi re8 dod
si4. la8 si dod
dod8.[ re16] re4 r
%--- 18
dod2 dod4
red4. red8 \tupletUp \TUPBNO \times 2/3 { red8[ dod] si }
\grace si8 lad4 lad \times 2/3 { dod8[ si] lad }
sold4. si8 \times 2/3 { si8[ lad] sold }
%--- 22
\grace sold8  fad4 fad r
R2.*3
%--- 26
R2.
dod'8. si16 lad8 sold fad mi
red8[ fad] si4 r
dod8. red16 mi8 dod lad mi
%--- 30
red8[ fad] si4 r
%--- 31-40
\repeat unfold 2 {
 lad4( fad'4.) lad,8
 si4. si8 lad si
 red4 dod si8 lad
%--- 34 / 39
 sold4. fad8 sold lad
 lad8.[ si16] si4 r
 } 
R2.
%--- 42-57 = 7-22
r4 r4 fad8 fad
fad4. fad8 fad fad
si4 fad r
fad8. fad16 si8 lad si dod
%--- 46
re8.[ mi16] fad2~
fad2 r4
dod2 dod4
re4. re8 dod re
%--- 50
fad4 mi re8 dod
si4. la8 si dod
dod8.[ re16] re4 r
dod2 dod4
%--- 54
red4. red8 \tupletUp \TUPBNO \times 2/3 { red8[ dod] si }
\grace si8 lad4 lad \times 2/3 { dod8[ si] lad }
sold4. si8 \times 2/3 { si8[ lad] sold }
\grace sold8  fad4 fad r
%--- 58
R2.*4
%--- 62
dod'2 dod4
red4.( si8) lad[ si]
mi2 dod4
red4.( si8) lad[ si]
%--- 66-69
\repeat unfold 2 { mi4( dod) red si( red) dod }
%--- 70
R2.*2
dod2.
re2 re8 re
%--- 74
dod2( \grace { re16[ dod] } si8) dod
re8.[ la16] la4 r
mi'4( dod) re
la( re) dod
%--- 78
mi4( dod) re
la4( re8.[ la16]) la4
R2.*4
%--- 84
mi'8. re16 dod8 si lad mi'
re4 si8 r si si
%--- 86
lad8( fad'4) mi8 re dod
\grace dod8 si4 si r
fa'8. mi16 re8 do si fa'
mi4 do8 r do do
%--- 90
si8( sol'4) fa8 mi8. re16
\grace re8 do4 do r
mi2 r4
mi2 r8 mi
%--- 94
fa4. fa8 fa fa
fa4 re r
fad!4 fad fad
fad4. dod8 sid dod
%--- 98
mid2.
fad4 r r
%--- 100
R2.*9
%--- 109
\bar "||" \KEYB
R2.^\MOVEMENTB
r4 r red8. si16
lad4. dod8 \times2/3 { dod8[ si] lad }
si8.[ red16] red4 \times2/3 { fad8[ red] si }
lad4. dod8 \times2/3 { dod8[ si] lad }
%--- 114
si8.[ red16] red4 r
sid8. red16 red8 red dod sid
dod8.[ mi16] mi4 r
dod8. mi16 mi8 mi fad sol
fad8.[ re16] si8 si re8. dod16
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO PARTITION
chantAP = \relative do'' {
%--- 119
si2( lad!4\turn)
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO MIDI
chantAM = \relative do'' {
%--- 119
si2( \times 2/3 { si16[ lad sold] } lad8)
}

%%%%%%%%%%%%%%%%%%%% suite
chantB = \relative do'' {
%--- 120
si4 r r
R2.
r4 r red8. si16
lad4. dod8 \times2/3 { dod8[ si] lad }
%--- 124
si8.[ red16] red4 \times2/3 { fad8[ red] si }
lad4. dod8 \times2/3 { dod8[ si] lad }
si8.[ red16] red4 r
sid8. red16 red8 red dod sid
%--- 128
dod8.[ mi16] mi4 r
dod8. mi16 mi8 mi fad sol
fad8.[ re16] si8 si re8. dod16
si2( lad4)
si4 r r
%--- 133
R2.
r4 r red8. si16
lad4. si16[ lad] sold8 fad
fad8.[ red'16] si4 red8. si16
lad4. si16[ lad] sold8. fad16
%--- 138
fad8.[ red'16] si4 r
fad8. sold16 fad8 lad si dod
dod8.[ si16] si2~
si4 r r
R2.
R2.^\fermataMarkup
\bar "|."
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEYA \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme "
 \chantA \chantAP \chantB
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \KEYA \TIME
 \ICHANT
 \chantA \chantAM \chantB
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. CHANT : DYNAMIQUES PARTITION/MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION
dynPartChant = { }

%%%%%%%%%%%%%%%%%%%% MIDI
dynMidiChant = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoHautIA = \relative do { \oneVoice
\STEMDIRUP
%--- 1
R2. \clef bass
si16([ dod re dod] re[ mi fa mi] fa[ fad sol fad]) \clef treble
si16([ dod re dod] re[ mi fa mi] fa[ fad sol fad])
}

%%%%%%%%%%%%%%%%%%%% ARPEGES PARTITION
pianoHautIAP = \relative do' {
%--- 4-5
<dod mi sol si>2.\arpeggio^(
<dod mi fad lad>2.\arpeggio^\fermata)
}

%%%%%%%%%%%%%%%%%%%% ARPEGES MIDI: VOIR PORTEE DU BAS
pianoHautIAM = \relative do' {
%--- 4-5
s2.*2
}
%%%%%%%%%%%%%%%%%%%% suite B
pianoHautIB = \relative do' { \oneVoice
%--- 6-9
\repeat unfold 2 {
 fad16 [ re' fad, re'] fad,[ re' <mi, fad> dod'] <re, fad>[ si' <dod, fad> lad'] 
 <re, fad>[ si' <re, fad> si'] <re, fad>[ si' <dod, fad> lad'] <re, fad>[ si' <mi, fad> dod'] 
 }
%--- 10
fad, [ re' fad, re'] fad,[ re' <mi, fad> dod'] <re, fad>[ si' <dod, fad> lad'] 
<re, fad>[ si' <re, fad> si'] <re, fad>[ si' <dod, fad> lad'] <re, fad>[ si' <dod, fad> lad']
<re, fad>[ si' <re, fad> si']    <re, fad>[ si' <re, fad> si']   <dod, mid>[ si' <re, fad> si'] 
<mi,! sol>[ dod' <mi, sol> dod'] <mi, sol>[ dod' <mi, sol> dod'] <red, fad>[ dod' <mi, sol> dod'] 
%--- 14
<fad, la>[ re' <fad, la> re']    <fad, la>[ re' <fad, la> re']   <mid, sold>[ re' <fad, la> re'] 
<sol,! si>[ fad' <sol, si> fad'] <sol, si>[ mi' <sol, si> mi']   <fad, la>[ re' <mi, sol> dod'] 
<re, sol>[ si' <re, sol> si']    <re, sol>[ si' <dod, sol'> la'] <re, sol>[ si' <mi, sol> dod'] 
\repeat unfold 3 { <re, fad>[ re' <re, fad> re'] } 
%--- 18
\repeat unfold 3 { <mi, fad>[ dod' <mi, fad> dod'] } 
\repeat unfold 3 { <red, fad>[ si' <red, fad> si'] } 
\repeat unfold 3 { <dod, fad>[ lad' <dod, fad> lad'] }
\repeat unfold 3 { <si, mid>[ sold' <si, mid> sold'] }
%--- 22
\repeat unfold 3 { <lad, dod>[ fad' <lad, dod> fad'] }
<si, mid>[ sold' <si, mid> sold'] <si, mid>[ sold' <si, mid> si'] <si, mid>[ lad' <si, mid> sold'] 
\repeat unfold 3 { <lad, dod>[ fad' <lad, dod> fad'] }
mi!\([ fad sold fad] mi[ fad sold fad] mi[ fad sold fad] 
%--- 26-30
red[ fad sold fad] red[ fad sold fad] red[ fad sold fad] \) 
\repeat unfold 2 {
mi[ fad sold fad] mi[ fad sold fad] mi[ fad sold fad] 
red[ fad sold fad] red[ fad sold fad] red[ fad sold fad] }
%--- 31
<dod mi>[ lad' <dod, mi> lad'] <dod, mi>[ lad' <dod, mi> lad'] <sid, red>[ lad' <dod, mi> lad'] 
<red, fad>[ si' <red, fad> si'] <red, fad>[ si' <red, fad> si'] <dodd, mid>[ si' <red, fad> si']
<mi,! sold>[ red' <mi, sold> red'] <mi, sold>[ dod' <mi, sold> dod'] <red, fad>[ si' <dod, mi> lad'] 
%--- 34
<si, mi>[ sold' <si, mi> sold'] <si, mi>[ sold' <lad, mi'> fad'] <si, mi>[ sold' <dod, mi> lad'] 
<si, red>[ si' <si, red> si'] <si, red>[ si' <red, fad> si'] <dodd, mid>[ si' <red, fad> si'] 
<dod, mi!>[ lad' <dod, mi> lad'] <dod, mi>[ lad' <dod, mi> lad'] <sid, red>[ lad' <dod, mi> lad'] 
<red, fad>[ si' <red, fad> si'] <red, fad>[ si' <red, fad> si'] <dodd, mid>[ si' <red, fad> si']
%--- 38
<mi,! sold>[ red' <mi, sold> red'] <mi, sold>[ dod' <mi, sold> dod'] <red, fad>[ si' <dod, mi> lad'] 
<si, mi>[ sold' <si, mi> sold'] <si, mi>[ sold' <lad, mi'> fad'] <si, mi>[ sold' <dod, mi> lad'] 
\repeat unfold 3 { <si, red>[ si' <si, red> si'] }
<si, red>[ si' <si, red> si'] <si, red>[ si' <si, red> si'] <dod, mi>[ si' <dod, mi> si'] 
%--- 42
<re,! fad>[ si' <re, fad> si'] <re, fad>[ si' <dod, fad> lad'] <re, fad>[ si' <mi, fad> dod'] 
%--- 43-46 = 8-11
fad, [ re' fad, re'] fad,[ re' <mi, fad> dod'] <re, fad>[ si' <dod, fad> lad'] 
<re, fad>[ si' <re, fad> si'] <re, fad>[ si' <dod, fad> lad'] <re, fad>[ si' <mi, fad> dod'] 
fad, [ re' fad, re'] fad,[ re' <mi, fad> dod'] <re, fad>[ si' <dod, fad> lad'] 
<re, fad>[ si' <re, fad> si'] <re, fad>[ si' <dod, fad> lad'] <re, fad>[ si' <dod, fad> lad'] 
%--- 47-49 = 12-14
<re, fad>[ si' <re, fad> si']    <re, fad>[ si' <re, fad> si']   <dod, mid>[ si' <re, fad> si'] 
<mi,! sol>[ dod' <mi, sol> dod'] <mi, sol>[ dod' <mi, sol> dod'] <red, fad>[ dod' <mi, sol> dod'] 
<fad, la>[ re' <fad, la> re']    <fad, la>[ re' <fad, la> re']   <mid, sold>[ re' <fad, la> re'] 
%--- 50-53 = 15-18
<sol,! si>[ fad' <sol, si> fad'] <sol, si>[ mi' <sol, si> mi']   <fad, la>[ re' <mi, sol> dod'] 
<re, sol>[ si' <re, sol> si']    <re, sol>[ si' <dod, sol'> la'] <re, sol>[ si' <mi, sol> dod'] 
\repeat unfold 3 { <re, fad>[ re' <re, fad> re'] } 
\repeat unfold 3 { <mi, fad>[ dod' <mi, fad> dod'] } 
%--- 54-57 = 19-22
\repeat unfold 3 { <red, fad>[ si' <red, fad> si'] } 
\repeat unfold 3 { <dod, fad>[ lad' <dod, fad> lad'] }
\repeat unfold 3 { <si, mid>[ sold' <si, mid> sold'] }
\repeat unfold 3 { <lad, dod>[ fad' <lad, dod> fad'] }
%--- 58-61 = 23-26
<si, mid>[ sold' <si, mid> sold'] <si, mid>[ sold' <si, mid> si'] <si, mid>[ lad' <si, mid> sold'] 
\repeat unfold 3 { <lad, dod>[ fad' <lad, dod> fad'] }
mi![ fad sold fad] mi[ fad sold fad] mi[ fad sold fad] 
red[ fad sold fad] red[ fad sold fad] red[ fad sold fad] 
%--- 62-65
\repeat unfold 2 { mi[ fad sold fad] mi[ fad sold fad] dod[ fad sold fad] 
red[ fad sold fad] red[ fad si, fad'] lad,[ fad' si, fad'] }
%--- 66
\voiceOne
mi[ fad sold fad] dod[ fad sold fad] red[ fad sold fad]
si,[ fad' sold fad] red[ fad sold fad] dod[ fad sold fad]
mi[ fad sold fad] dod[ fad sold fad] red[ fad sold fad]
si,[ fad' sol fad] red[ fad sol fad] dod[ fad sol fad]
%--- 70
si,[ fad' sold fad] red[ fad sold fad] dod[ fad sold fad]
si,[ fad' sol! fad] re[ fad sol fad] dod[ fad sol fad]
\stemDown
%--- 72-81
\repeat unfold 10 { \repeat unfold 3 { la[ si la si] } }
%--- 82-87
\oneVoice \stemNeutral
\repeat unfold 3 { \repeat unfold 3 { mi,[ lad si lad] } \repeat unfold 3 { re,[ si' dod si] } }
%--- 88-91
\repeat unfold 2 { \repeat unfold 3 { fa[ si do si] } \repeat unfold 3 { mi,[ do' re do] } }
%--- 92
<mi, si'>[ mi' <mi, si'> mi'] <mi, si'>[ mi' <mi, si'> mi'] <mi, do'>[ mi' <mi, si'> mi'] 
<mi, do'>[ mi' <mi, do'> mi'] <mi, do'>[ mi' <mi, do'> mi'] <mi, re'>[ mi' <mi, do'> mi'] 
%--- 94
<fa, do'>[ fa' <fa, do'> fa'] <fa, do'>[ fa' <fa, do'> fa'] <fa, re'>[ fa' <fa, do'> fa'] 
<fa, re'>[ fa' <fa, re'> fa'] <fa, re'>[ fa' <fa, re'> fa'] <fa, mib'>[ fa' <fa, re'> fa'] 
<fad,! dod'!>[ fad'! <fad, dod'> fad'] <fad, red'>[ fad' <fad, red'> fad'] <sold, red' fad>[ sold' <sold, red' fad> sold'] 
<lad, dod fad>[ lad' <lad, dod fad> lad'] <lad, dod fad>[ lad' <lad, dod fad> lad'] <lad, sid fad'>[ lad' <lad, dod fad> lad'] 
%--- 98
 << { \voiceTwo <si,! dod mid>16[ sold' <si, dod mid> sold'] <si, dod mid>[ sold' <si, dod mid> sold'] mid[ sold <si, dod mid> sold'] }
 \\ { \voiceFour s4 s8.. \FLAGHIDE \ACCEXO #'(1.5 . 0) \NOTEXO #'(1.5 . 0) sid,32 \FLAGHIDE \ACCEXO #'(1.5 . 0) \NOTEHS #'1 si32 s8.. } >> 
<dod fad>16[ lad <dod fad> lad] <dod fad>[ lad <dod fad> lad] <dod sold'>[ lad <dod fad> lad] 
<si mi!>[ sold <si mi> sold] <si mi>[ sold <si mi> sold] <si fad'>[ sold <si mi> sold] 
<si red>[ fad <si red> fad] <si red>[ fad <si red> fad] <si mi>[ sold <si red> fad] 
%--- 102
<lad dod>[ mi <lad dod> mi] <lad dod>[ mi <lad dod> mi] <lad red>[ mi <lad dod> mi] 
<fad si>[ red <fad si> red] <fad si>[ red <fad si> red] <mi lad>[ dod <red sold> si] 
<dod fad>[ lad <dod fad> lad] <dod fad>[ lad <dod fad> lad] <dod sold'>[ lad <dod fad> lad] 
<si mi>[ sold <si mi> sold] <si mi>[ sold <si mi> sold] <si fad'>[ sold <si mi> sold] 
%--- 106
\clef bass
<si red>[ fad <si red> fad] <si red>[ fad <si red> fad] <si mi>[ fad <si red> fad] 
<si re!>[ mid, <si' re> mid,] <si' re>[ mid, <si' re> mid,]  <si' mi!>[ mid, <si' re> mid,] 
<lad dod>[ fad <lad dod> fad] <lad dod>[ fad <lad dod> fad] <soldd sid>[ fad <lad dod> fad] 
%--- 109-132
\KEYB
s2.*24
%--- 133-140
\voiceOne \repeat unfold 8 { fad'4 s2 }
%--- 141-143
s2.*3
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉS PIANO HAUT I
pianoHautIPart = \context Staff \new Voice { \voiceOne
 \pianoHautIA \pianoHautIAP \pianoHautIB
}

pianoHautIMidi = \context Staff \new Voice { \voiceOne
 \pianoHautIA \pianoHautIAM \pianoHautIB
}

%%%%%%%%%%%%%%%%%%%% VOIX II
pianoHautIIA = \relative do' {
%--- 1-65
s2.*65
%--- 66-69
\repeat unfold 2 { mi4 dod red   si red dod }
%--- 70
si red dod
si re! dod
%--- 72-75
\stemUp \repeat unfold 2 { sol''2^\( mi4   fad4.\) re8^([ dod re]) } 
%--- 76-79
\repeat unfold 2 { sol4^\( mi fad   re fad mi\) }
%--- 80-81
re4^\( \TSCREXO #'(4 . -4) fad^\DIMM mi   re fad mi\) \stemDown
%--- 82-108
s2.*27
%--- 109-114
\KEYB
\repeat unfold 3 { fad,,4 <mi fad dod'>2
<red fad>4 <fad si red>2 }
%--- 115
<red fad>4 <fad la sid red>2
<mi sold>4 <sold dod mi>2
<mi sol lad!>4 <sol lad dod mi>2
<re fad>4 <fad si re> \PSLURHLIM #'8 \PSLURPOS #'(1 . 5) <mi sol>^\(
%--- 119
<red! fad>2 <mi fad>4
<red fad si>2.\)
%--- 121-126
\clef treble
\repeat unfold 3 { fad'4 s2
<red fad>4 fad2 }
%--- 127
<red fad la>4 fad2
%--- 128
<mi sold>4 sold2
<mi sol lad!>4 sol2
<re fad>4 fad mi
s2 <mi fad>4
s2.
%--- 133-140
\clef bass
\repeat unfold 3 { 
fad,4 <dod' mi fad>2^>
red,4 <si' red fad>2^>
 }
fad4 <dod' mi fad>2^>
red,4 <si' red fad>2
%--- 141-142
\repeat unfold 2 { <red, fad>4 <fad si red>2 }
}

%%%%%%%%%%%%%%%%%%%% ARPEGES PARTITION
pianoHautIIAP = \relative do {
%--- 143
<red fad si red>2.\arpeggio^\fermata
}

%%%%%%%%%%%%%%%%%%%% ARPEGES MIDI: VOIR PORTEE DU BAS
pianoHautIIAM = \relative do' {
%--- 143
s2.*2
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉS PIANO HAUT II
pianoHautIIPart = \context Staff \new Voice { \voiceTwo
 \pianoHautIIA \pianoHautIIAP
}

pianoHautIIMidi = \context Staff \new Voice { \voiceTwo
 \pianoHautIIA \pianoHautIIAM
}

%%%%%%%%%%%%%%%%%%%% VOIX III
pianoHautIII = \context Staff \relative do \new Voice { \voiceThree
%--- 1-108
s2.*108
%--- 109-114
\KEYB
\repeat unfold 3 { <dod lad'>8.([ <mi dod'>16]) s2
si'8.([ red16]) s2 }
%--- 115
<la sid>8.([ red16]) s2
dod8.([ mi16]) s2
dod8.([ mi16]) s2
si8.([ re16]) s2
%--- 119
s2 \times 2/3 { fad,8[ lad dod] }
s2. \clef treble
%--- 121-126
\repeat unfold 3 { <dod lad'>8.([ <mi dod'>16]) <mi fad dod'>2
si'8.([ red16]) <si red>2 }
%--- 127
sid8.([ red16]) <la sid red>2
%--- 128
dod8.([ mi16]) <dod mi>2
dod8.([ mi16]) <lad, dod mi>2
si8.([ re16]) <si re>4( sol)
<red! fad>2 \times 2/3 { fad8[ lad dod] }
<red, fad si>2. \clef bass
%--- 133-140
\repeat unfold 4 { dod8.([ mi16]) s2
si8.([ red16]) s2 }
%--- 141
si8.([ red16]) s2 
si8.([ red16]) s2 
s2.
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEYA \TIME
 \set autoBeaming = ##f
 << \pianoHautIPart \pianoHautIIPart \pianoHautIII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEYA \TIME
 \IPIANOHAUT
 << \pianoHautIMidi \pianoHautIIMidi \pianoHautIII >>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBasA = \relative do, { \oneVoice
%--- 1
si16_\pp([ dod re dod] re[ mi fa mi] fa[ fad sol fad])
sol2.
<sol re' fa sol>2.
}

%%%%%%%%%%%%%%%%%%%% ARPEGES PARTITION
pianoBasAP = \relative do, {
%--- 4-5
<fad! dod' mi sol>2.\arpeggio(
<fad dod' fad>2.\arpeggio^\fermata)
}

%%%%%%%%%%%%%%%%%%%% ARPEGES MIDI: PORTEES DU HAUT ET DU BAS ENSEMBLE
pianoBasAM = \relative do, {
%--- 4
<< { fad2. }  \\ { s32 dod'8..~ dod2 } \\ { s16 mi8.~ mi2 }   \\ { s16. sol32~ sol8~ sol2 }
 \\ { s8 dod8~ dod2 } \\ { s8 s32 mi16.~ mi2 }   \\ { s8. sol16~ sol2 } \\ { s8.. si32~ si2 } >>
%--- 5
<< { fad,,2. } \\ { s32 dod'8..~ dod2 } \\ { s16 fad8.~ fad2 } \\ { s16. dod'32~ dod8~ dod2 }
 \\ { s8 mi8~ mi2 }   \\ { s8 s32 fad16.~ fad2 } \\ { s8. lad16~ lad2 } >>
}

%%%%%%%%%%%%%%%%%%%% suite B
pianoBasB = \relative do { \oneVoice
%--- 6-12
\repeat unfold 7 { <si fad'>4. fad'8-.([ fad-. fad-.]) }
%--- 13-16
<la, la'>4. la'8-.([ la-. la-.])
\repeat unfold 3 { <la, la'>4. la'8[ la la] }
%--- 17
<re, la'>4. fad8[ fad fad]
<lad, fad'>4. fad'8[ fad fad]
<si, fad'>4. fad'8[ fad fad]
<dod fad>4. dod8[ dod dod]
<dod, dod'>4. dod'8[ dod dod]
%--- 22
<fad, dod'>4. dod'8[ dod dod]
<dod, dod'>4. dod'8[ dod dod]
<fad, dod'>4. fad'8[ fad fad]
%--- 25-30
\repeat unfold 3 { <fad lad>4. fad8([ lad fad])   <fad si>4. fad8([ si fad]) }
%--- 31
<fad, fad'>4. fad'8-.([ fad-. fad-.]) 
%--- 32-35
\repeat unfold 3 { <fad, fad'>4. fad'8[ fad fad] }
<si, fad'>4. fad'8[ fad fad]
%--- 36-47
\repeat unfold 4 { <fad, fad'>4. fad'8[ fad fad] }
\repeat unfold 8 { <si, fad'>4. fad'8[ fad fad] }
%--- 48-53
\repeat unfold 4 { <la, la'>4. la'8[ la la] }
<re, la'>4. la'8[ la la] 
<lad, fad'>4. fad'8[ fad fad]
%--- 54
<si, fad'>4. fad'8[ fad fad] 
<dod fad>4. dod8[ dod dod]
<dod, dod'>4. dod'8[ dod dod]
<fad, dod'>4. dod'8[ dod dod]
%--- 58
<dod, dod'>4. dod'8[ dod dod]
<fad, dod'>4. fad'8[ fad fad]
<fad lad>4. fad8([ lad fad])
<fad si>4. fad8([ si fad]) 
%--- 62
<fad lad>4. fad8([ lad fad])
<fad si>4. red8([ dodd red]) 
<fad lad dod>4. fad8([ lad fad])
<fad si>4. red8([ dodd red]) 
%--- 66-69
\repeat unfold 2 { dod'4\( fad, si   red, si' fad\) }
%--- 70
red4\( si' fad
re! si' fad\)
%--- 72-75
\repeat unfold 2 { <mi' sol>2\( <la, mi'>4
<re fad>4.\) <fad, re'>8([ <mid dod'> <fad re'>]) }
%--- 76-79
\repeat unfold 2 { <mi' sol>4\( <la, mi'> <re fad>
<fad, re'> <re' fad> <la mi'>\) }
%--- 80-81
<fad re'>4\( <re' fad> <la mi'> <fad re'> <re' fad> <la mi'>\)
%--- 82-87
\repeat unfold 6 { fad,4. fad'8([ sol fad]) }
%--- 88-91
\repeat unfold 4 { sol,4. sol'8([ la sol]) }
%--- 92
sold,4. sold'8([ la sold])
la,4. la'8([ si la])
%--- 94
la,4. la'8([ sib la])
sib,4. sib'8([ do sib])
<lad, lad'>4 <si! si'!> <sid sid'>
%--- 97-98
\repeat unfold 2 { <dod, dod'>4. <dod' dod'>8([ <red red'> <dod dod'>]) }
%--- 99-103
\repeat unfold 5 { <fad, fad'>4. fad'8[ fad fad] }
%--- 104
\repeat unfold 5 { <fad,, fad'>4. fad'8[ fad fad] }
%--- 109-119
\KEYB
\repeat unfold 11 { <fad, fad'>8 fad'8-.([ fad-. fad-. fad-. fad-.]) }
%--- 120
<si, fad'>8 fad'8-.([ fad-. fad-. fad-. fad-.])
%--- 121-131
\repeat unfold 11 { <fad, fad'>8 fad'8-.([ fad-. fad-. fad-. fad-.]) }
%--- 132
<si, fad'>8 fad'8-.([ fad-. fad-. fad-. fad-.])
%--- 133-136
\repeat unfold 4 { <fad, fad'>8 fad'8-.([ fad-. fad-. fad-. fad-.]) }
%--- 137-142
\repeat unfold 6 { <si, fad'>8 fad'8-.([ fad-. fad-. fad-. fad-.]) }
}

%%%%%%%%%%%%%%%%%%%% ARPEGES PARTITION
pianoBasBP = \relative do, {
%--- 143
<si fad' si>2.\arpeggio^\fermata
}

%%%%%%%%%%%%%%%%%%%% ARPEGES MIDI: PORTEES DU HAUT ET DU BAS ENSEMBLE
pianoBasBM = \relative do, {
%--- 143
<< { si2. } \\ { s32 fad'8..~ fad2 } \\ { s16 si8.~ si2 } \\ { s16. red32~ red8~ red2 }
 \\ { s8 fad8~ fad2 }   \\ { s8 s32 si16.~ si2 } \\ { s8. red16~ red2 } >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉS PIANO BAS
pianoBasPart = { \pianoBasA \pianoBasAP \pianoBasB \pianoBasBP }

pianoBasMidi = { \pianoBasA \pianoBasAM \pianoBasB \pianoBasBM }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEYA \TIME
 \set autoBeaming = ##f
 \pianoBasPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \KEYA \TIME
 \IPIANOBAS
 \pianoBasMidi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
%--- 1
s2.-\MITVERSCHIEBUNG
s2.
s4 s16 s8.\cr s8. s16\!
s2.\decr
s4\! s2
%--- 6-13
\DYNEXO #'(2 . 0) \PINEXO #'(2 . 0) \TSCREXO #'(0 . 1.5) s4\pp^\SEMPRELIGATO\decr s8\! s4.
\repeat unfold 7 { s8\decr s16 s16\! s2 }
%--- 14-17
\PINEXO #'(3 . 0) s8\decr s16\! s16 s4 s8\cr s16 s16\!
\repeat unfold 3 { s8\decr s16 s16\! s2 }
%--- 18
s2\pp\cr s8 s16\! s16
s4\decr s16 s16\! s4.
\repeat unfold 5 { s8\decr s16 s16\! s2 }
%--- 25
\DYNEXO #'(-0.5 . 0) \PINEXO #'(0.5 . 0) s16\ppp s8\decr s16\! s2
s16\decr s16\! s8 s2
%--- 27-32
\repeat unfold 5 { s8\decr s16 s16\! s2 }
s8\decr s16 s16\! s4 s8\cr s16 s16\!
%--- 33-37
\repeat unfold 4 { s8\decr s16 s16\! s2 }
s8\decr s16 s16\! s4 s8\cr s16 s16\!
%--- 38-49
\repeat unfold 3 { s8\decr s16 s16\! s2 }
s2.
\repeat unfold 8 { s8\decr s16 s16\! s2 }
%--- 50-57
s4\decr s8\! s4.
\repeat unfold 7 { s8\decr s16 s16\! s2 }
%--- 58-61
s2.
\repeat unfold 3 { s8\decr s16 s16\! s2 }
%--- 62
s16\pp s8\decr s16\! s2
\repeat unfold 3 { s8\decr s16 s16\! s2 }
%--- 66
\DYNEXO #'(1 . 0) \PINEXO #'(1 . 0) s16\pp s8\decr s16\! s2
\repeat unfold 2 { s8\decr s16 s16\! s2 }
s2.
%--- 70
s8\decr s16 s16\! \TSCREXO #'(0 . 2) s2-\DIMM 
s8\decr s16 s16\! s2 
%--- 72-81
s2.*10
%--- 82-87
\repeat unfold 6 { s8\decr s16 s16\! s2 }
%--- 88
s8\decr s16 s16\! \TSCREXO #'(0 . 1) s2-\CRESCM 
\repeat unfold 3 { s8\decr s16 s16\! s2 }
%--- 92
s8\decr s16 s16\! \TSCREXO #'(0 . 1) s2-\CRESCM 
s8\decr s16 s16\! s2
s16\f s8\decr s16\! s2
s8\decr s16 s16\! s2
%--- 96
\DTSDASHOK \CREScendo s8.\cr s16\! \cresCENdo s8.\cr s16\! \crescenDO s8.\cr s16\! \DTSDASHNO
s2.\ff
%--- 98
s8\decr s16 s16\! s2
\DYNEXO #'(1.5 . 0) s2.\fp
s8\decr s16 s16\! s4 \TSCREXO #'(-0.5 . 1.5) s4-\DECRESCM 
\repeat unfold 3 { s8\decr s16 s16\! s2 }
%--- 104
\DYNEXO #'(1.5 . 0) s16\pp \DYNEXO #'(0.5 . 0) s8\decr s16\! s2
s8\decr s16 s16\! s2
s8\decr s16 s16\! s4 \TSCREXO #'(0 . 2) s4-\DIMM 
\repeat unfold 2 { s8\decr s16 s16\! s2 }
%--- 109
s2.*6
%--- 115
\DTSDASHOK \CREScendo s4..\cr s16\! \cresCENdo s4\cr
s8. s16\! \DTSDASHNO \crescenDO s4.\cr s8\! 
s16\f s8\decr s16\! s2
s2.\p
%--- 119
s2.\pp
s2.
\DYNEXO #'(1.5 . 0) s2.\pp
%--- 122-126
s2.*5
%--- 127
\DTSDASHOK \CREScendo s4..\cr s16\! \cresCENdo s4\cr
s4 s16 s16\! \DTSDASHNO \crescenDO s4\cr s8\! 
s4\f\decr s16\! s8. s4
s2.\p
\DYNEXO #'(0.5 . 0) s2.\pp
s2.
\DYNEXO #'(2.5 . 0) s2.\ppp
%--- 134-143
s2.*10
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = {
%--- 1
\TEMPOBASE
s2.\pp
s2.
s4. s4.\cr
\TEMPOFA s2.\!\mf\decr
\TEMPOFB s2.\!\pp \TEMPOBASE
%--- 6-13
s2.*8
%--- 14-17
s2 s4\cr
s4\!\mp\decr s2\!\pp
s2.*2
%--- 18
s2.\pp\cr
s2\!\mp\decr s4\!\pp
s2.*5
%--- 25
s2.\ppp
%--- 26-31
s2.*6
%--- 32-33
s2 s4\cr
s4\!\mp\decr s2\!\pp
%--- 34-36
s2.*3
%--- 37-38
s2 s4\cr
s4\!\mp\decr s2\!\pp
%--- 39-61
s2.*23
%--- 62
s2.\pp
s2.*3
%--- 66
s2.\pp
s2.*3
%--- 70
s4 s2\decr
s2 s4\!\ppp
s2.\pp
%--- 73-79
s2.*7
%--- 80
s4 s2\decr
s2.*2
s2 s4\!\ppp
%--- 84-87
s2.\pp
s2.*3
%--- 88
s4 s2\cr
s2.*3
%--- 92
s2.*2
s2.\!\f
s2.
%--- 96
s2.\cr
s2.\!\ff
%--- 98
s2.
s2.\f
s2 s4\decr
s2.*3
%--- 104
s2.\!\pp
s2.
s2 s4\decr
s2.
s2 s4\ppp
%--- 109
\TEMPOFA s2.\pp
s2.*5
%--- 115
s2.\cr
s2.
s2.\!\f
s2.\p
%--- 119
s2.\pp
s2.
s2.\pp
%--- 122-126
s2.*5
%--- 127
s2.\cr
s2.
s2.\!\f
%--- 130
s2.\p
s2.\pp
s2.
s2.\ppp
%--- 134-143
s2.*9 \TEMPOFC
s2.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\score {
 <<
  \new Voice = "chant"  << \notePartChant >>
  \new Lyrics  \with {
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1.5 . 0.5)
  }
  \lyricsto "chant" \poeme

  \new PianoStaff <<
   \set PianoStaff.instrumentName = "PianoForte "
   \set PianoStaff.connectArpeggios = ##t
   \new Staff = "pianoUp"    << \notePartPianoHaut >>
   \new Dynamics = "dynamics" \dynPartPiano
   \new Staff = "pianoDown"  << \notePartPianoBas >>
  >>
 >>

 \layout {
  \context {
   \Score
   \override SpacingSpanner #'spacing-increment = #1.25
   \override TextScript #'font-size = #1
  }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice % So that \CRESC works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
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

%{ --------------------
-------------------- %}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           E. SORTIE MIDI SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% REDEFINITION DES VOLUMES RESPECTIFS ATTRIBUES AUX DYNAMIQUES 
% volumes par défaut (LilyPond\usr\share\lilypond\current\scm\midi.scm):
% sf     1.00     fff  0.85     mf  0.68     pp    0.49     ppppp  0.25
% fffff  0.95     ff   0.80     mp  0.61     ppp   0.42
% ffff   0.92     f    0.75     p   0.55     pppp  0.34

#(define my-absolute-volume-alist '())
#(set! my-absolute-volume-alist (append '(
 ("sf" .    1.00)
 ("fffff" . 1.00)
 ("ffff" .  1.00)
 ("fff" .   1.00)
 ("ff" .    1.00)
 ("f" .     0.90)
 ("mf" .    0.80)
 ("mp" .    0.75)
 ("p" .     0.70)
 ("pp" .    0.60)
 ("ppp" .   0.50)
 ("pppp" .  0.35)
 ("ppppp" . 0.30) )
 my-absolute-volume-alist))

%%%%%%%%%%%%%%%%%%%% CHAQUE DYNAMIQUE RENCONTREE PRENDRA LE NOUVEAU VOLUME SPECIFIE
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME s2. }

\score {
 <<
  \new Staff = "chant"      { \SILENCE << \noteMidiChant      \dynMidiPiano >> }
  \new Staff = "pianoUp"    { \SILENCE << \noteMidiPianoHaut  \dynMidiPiano >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBas   \dynMidiPiano >> }
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
%                                         FIN DU FICHIER SchubertF-D720-Suleika-1.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
