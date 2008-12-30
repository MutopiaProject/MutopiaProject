%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D751-DieLiebeHatGelogen.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Die Liebe hat gelogen", für eine Singstimme mit Klavierbegleitung
%                                       AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.60"
\include "italiano.ly"

\paper {
line-width = 186\mm
#(define left-margin (/ (- paper-width  (* 186 mm)) 2))
#(define top-margin (/ (- paper-height (* 259 mm)) 2))
#(define bottom-margin (/ (- paper-height (* 253 mm)) 2))

 indent = 22\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Die Liebe hat gelogen (D.751)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Die Liebe hat gelogen (D.751)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "Die Liebe hat gelogen" }
 subsubtitle = " "
 poet = \markup { \hspace #21  \column { \center-column {
  \line { \fontsize #2 \bold "Karl August Georg Maximilian" }
  \line { \fontsize #2 \bold "Graf von Platen-Hallermünde" }
  \line { \small "(1796-1835)" }
  } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.751 (Op. 23, No 1, 1822)" }
% MUTOPIA
 mutopiatitle = "Die Liebe hat gelogen"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "August Graf von Platen"
 mutopiaopus = "D.751 (Op. 23, No 1)"
 mutopiainstrument = "Voice and Piano"
 date = "1822"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/10/30-1587"
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
%  B. CHANT: B1: Notes
%  C. PIANO: C1: Notes PIANO HAUT  C2: Notes PIANO BAS  C3: Dynamiques partition  C4: Dynamiques midi
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TEMPI
TEMPOBASE    = \tempo 4=40
TEMPOFINA    = \tempo 4=35
TEMPOFINB    = \tempo 4=30
TEMPOFERMATA = \tempo 4=20
%----- TONALITÉS ET MESURES
KEYA  = { \key do \minor }
KEYB  = { \key do \major }
TIME  = { \time 4/4 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-4.0 "Langsam. " } }
ICHANT = {
 \set Staff.midiInstrument = "harmonica"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
IPIANOBAS = {
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
%----- REPOSITIONNEMENT D'UNE NOTE
NOTEHS =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override NoteColumn #'force-hshift = #$beg-end #})
%----- REPOSITIONNEMENT D'UNE ALTERATION
ACCEXO
 =  #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Accidental #'extra-offset = #$beg-end #})
%----- CRESCENDOS
CRESCM = \markup { \bold \italic "cresc." }
%----- REPOSITIONNEMENT DES DYNAMIQUES
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
%----- REPOSITIONNEMENT DES MARKUP
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
\set fontSize = #-.5

Die Lie -- be hat ge -- lo -- gen,
die Sor -- ge las -- tet schwer, __
be -- tro -- gen, ach, be -- tro -- gen
hat al -- les mich um -- her!

Es flie -- ßen hei -- ße __ Trop -- fen
die Wan -- ge stets __ her -- ab,
es flie -- ßen hei -- ße __ Trop -- fen
die Wan -- ge stets __ her -- ab;
laß ab, mein Herz, zu klop -- fen,
du ar -- mes Herz, __ laß __ ab!

Die Lie -- be hat ge -- lo -- gen,
die Sor -- ge las -- tet schwer,
be -- tro -- gen, ach, be -- tro -- gen
hat al -- les mich um -- her!
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chant = \relative do'' {
%--- 1
R1
r2 r4 r8 sol
mib'8. mib16 mib8. mib16 mib4 do8 do
%--- 4
re8. re16 re8. re16 re4( sol,8) sol
mi'8. mi16 mi8. mi16 mi4 la,8 la
fa'8. fa16 mi8 si do2
%--- 7
R1
r8 do \grace do16 sib!8 sib sib16[ la] sol[ la] \grace do16 sib8 sib
r8 reb \grace reb16 do8 do do16[ sib] do[ sol] lab4
%--- 10
\bar "||" \KEYB 
r8 dod \grace dod16 si8 si si16[ lad] sold[ lad] \grace dod16 si8 si
r8 re \grace re16 dod8 dod dod16[ si] dod[ sold] la8. la16
%--- 12
mi'8. mi16 mi8. mi16 mi4 do8 do
fa8. fa16 fa16[ mib] re[ mib] re4.^\fermata sol,8
%--- 14
\bar "||" \KEYA
mib'8. mib16 mib8. mib16 mib4 do8 do
reb8. reb16 reb8. mib16 do4. do8
%--- 16-18
do8. do16 do8. do16 mi4 do8 do
fa8. fa16 mi8 si do2
R1^\fermataMarkup
\bar "|."
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEYA \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme "
 \chant
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \KEYA \TIME
 \ICHANT
 \chant
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoHautI = \context Staff \relative do' \new Voice { \voiceOne
%--- 1
<sol do mib>4 <sol do mib>8[ <sol do mib>] <lab fa'>2 \oneVoice
<sol do re!>4 <fad do' re>8[ <fad do' re>] <sol si re>2
<sol do mib>4 <sol do mib>8[ <sol do mib>] <lab do mib>2
%--- 4
<lab do re>4 <fad do' re>8[ <fad do' re>] <sol si re>2
<sol do mi>4 <sol do mi>8[ <sol do mi>] <la dod mi>2 \clef bass \voiceOne
<do! fa>4( \stemDown <sol do mi>8[ <fa sol re'>]) \stemUp << { \voiceOne do'2 } \\ { \voiceThree sol4.( sib!8) } >>
%--- 7
<do fa>4( \stemDown <sol do sol'>8[ <fa sol si>] <mi sol do>2) \clef treble \oneVoice
r16 <mib'! do'>8-.([ <mib do'>16-.]) r <re sib'!>8-.([ <re sib'>16-.])
 r <mib fa la>8-.([ <mib fa la>16-.]) r <re fa sib>8-.([ <re fa sib>16-.])
r16 <reb reb'>8-.([ <reb reb'>16-.]) r <mib do'>8-.([ <mib do'>16-.])
 r <reb mib sib'>8-.([ <reb mib sol>16-.]) r <do mib lab>8-.([ <do mib lab>16-.])
%--- 10
\KEYB
r16 <mi dod'>8[ <mi dod'>16] r <red si'>8[ <red si'>16] r <mi fad lad>8[ <mi fad lad>16] r <red fad si>8[ <red fad si>16]
r16 <re! re'!>8[ <re re'>16] r <mi dod'>8[ <mi dod'>16]
  r <re mi si'>8[ <re mi sold>16] r <dod mi la>8[ <dod mi la>16]
%--- 12
r16 <mi do' mi>8[ <mi do' mi>16] r <mi re' mi>8[ <mi re' mi>16]
  r <mi do' mi>8[ <mi do' mi>16] r <mi do' mi>8[ <mi do' mi>16] 
r16 <fa do' fa>8[ <fa do' fa>16] r <sol do mib>8[ <sol do mib>16]
  r <sol si re>8[ <sol si re>16]   <sol si re>8^\fermata r 
%--- 14
\KEYA
<sol, do mib>4 <sol do mib>8[ <sol do mib>] <lab do mib>2
<lab do reb>4 <sol sib reb>8[ <sol sib reb>] \voiceOne do2 \clef bass \oneVoice
%--- 16-18
<fa, lab do! mib>4 <fa lab do mib>8[ <fa lab do mib>] <mi lab do mi>2
<la do fa>4 <sol do mi>8[ <fa sol si re>] << { \voiceOne do'2 } \\ { \voiceThree sol4.( sib!8) } >>
\voiceOne <do fa>4( \stemDown <sol do sol'>8[ <fa sol si>] <mi sol do>2^\fermata)
}

%%%%%%%%%%%%%%%%%%%% VOIX II
pianoHautII = \context Staff \relative do' \new Voice { \voiceTwo
%--- 1
\ACCEXO #'(-2 . 0) s2 \NOTEHS #-2 reb4.( do8)
s1*4
%--- 6
la8([ lab]) s4 mi2
la8.([ lab16]) s2.
%--- 8-14
s1*7
%--- 15-18
s2 <sol sib>4( lab)
s1
s2 mi2
la8.([ lab16]) s2.
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEYA \TIME
 \set autoBeaming = ##f
 << \pianoHautI \pianoHautII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEYA \TIME
 \IPIANOHAUT
 \unfoldRepeats { << \pianoHautI \pianoHautII >> }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoBasI = \context Staff \relative do \new Voice { \voiceOne
%--- 1
do4 do8[ do] <fa, lab fa'>2 \oneVoice
<sol do re!>4 <lab re>8[ <lab re>] <sol re'>2
do4 do8[ do] lab2
%--- 4
fa4 lab8[ lab] sol2
<do, do'>4 <do do'>8[ <sib sib'>] <la la'>2
<fa fa'>4 <sol sol'>8[ <sol sol'>] <do do'>4 do'
%--- 7
<fa, do'>4( <mi do'>8[ <sol re'>]) <do, sol' do>2 \voiceOne
sol''4 fa do' sib
s2 sol8.([ sib16]) lab4
%--- 10
\KEYB
sold4 fad dod' si
la4 la sold8.([ si16]) la4 \oneVoice
%--- 12
<la do!>4 <sold si> <la do> <la do>
<lab do> <sol do mib> <sol si re>4~ <sol si re>8^\fermata r
%--- 14
\KEYA
do,4 do8[ do] lab2
fa4 sol8[ sol] mi4( fa)
%--- 16-18
<fa do'>4 <fa do'>8[ <fa do'>] <mi do'>2
<re do'>8.([ mi32 fa]) sol8[ sol] <do, do'>4 do'
<fa, do'>4( <mi do'>8[ <sol re'>] <do, sol' do>2^\fermata)
}

%%%%%%%%%%%%%%%%%%%% VOIX II
pianoBasII = \context Staff \relative do \new Voice { \voiceTwo
%--- 1
\ACCEXO #'(-2 . 0) s2 \NOTEHS #-2 reb4.( do8)
s1*6
%--- 8
do4( re8.[ mib!16] fa4 <sib, fa'>)
<fa' lab!>4 <mib lab> mib <lab, mib'>
dod4( red8.[ mi16] fad4 <si, fad'>)
fad'4 mi mi <la, mi'>
%--- 12-18
s1*7
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEYA \TIME
 \set autoBeaming = ##f
 << \pianoBasI \pianoBasII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \KEYA \TIME
 \IPIANOBAS
 \unfoldRepeats { << \pianoBasI \pianoBasII >> }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
%--- 1
s2\p s4.\fp\decr s8\!
s1
\DYNEXO #'(1.5 . 0) s1\pp
%--- 4
s1
s4.\cr s8\! s4.\fp\decr s8\!
s8\fp\decr s16 s16\! s2.
%--- 7
\DYNEXO #'(0.5 . 0) s8.\pp\cr s16\! s8.\decr s16\! s2
\DYNEXO #'(1 . 0) s1\p
\PINEXO #'(0.5 . 0) s8\decr s16\! s16 s2.
%--- 10
s2 s16 \TSCREXO #'(0 . 1) s4..-\CRESCM
\PINEXO #'(1.5 . 0) s8\decr s16\! s16 s2.
%--- 12
s4\f s16 \TSCREXO #'(0 . 1) s4..-\CRESCM s4
s4..\ff\decr s16\! s4\p s4\pp
%--- 14
s1\pp
s1
%--- 16-18
s4 \TSCREXO #'(0 . 1) s4-\CRESCM s4.\cr s8\!
\DYNEXO #'(0.5 . 0) \PINEXO #'(0.5 . 0) s8..\ff\decr s32\! s4 s2\p
\DYNEXO #'(0.5 . 0) s8.\pp\cr s16\! s8.\decr s16\! s2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = {
%--- 1
\TEMPOBASE
s2\p s4.\mp\decr s8\!\p
s1
s1\pp
%--- 4
s1
s2\cr s4.\!\mp\decr s8\!\pp
s4\mp\decr s2.\!\pp
%--- 7
s8.\pp\cr s16\!\mp s8.\decr s16\!_pp s2
s1\p
s8\mf\decr s16\!\p s16 s2.
%--- 10
s2 s2\cr
s8\mf\decr s16\!\p s16 s2.
%--- 12
s4\f s2.\cr
s2\!\ff\decr s4\!\p \TEMPOFERMATA s8\pp \TEMPOBASE s8
%--- 14
s1\pp
s1
%--- 16-18
s4 s2.\cr
s2\!\ff\decr s2\!\p
s8.\pp\cr s16\!\mp \TEMPOFINA s8\decr \TEMPOFINB s16 s16\!\pp \TEMPOFERMATA s2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
 <<
  \new Voice = "chant"  << \notePartChant >>
  \new Lyrics \lyricsto "chant" \poeme

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
   \override SpacingSpanner #'spacing-increment = #2
   \override TextScript #'font-size = #1
  }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice % So that \CRESC works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 1.5)
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
% sf    1.00     ff  0.80     mp   0.61     ppp    0.42     fp: 0.50
% ffff  0.92     f   0.75     p    0.55     pppp   0.34
% fff   0.85     mf  0.68     pp   0.49     ppppp  0.25

#(define my-absolute-volume-alist '())
#(set! my-absolute-volume-alist (append '(
 ("sf" .    1.00)
 ("ffff" .  1.00)
 ("fff" .   1.00)
 ("ff" .    1.00)
 ("f" .     0.85)
 ("mf" .    0.75)
 ("mp" .    0.70)
 ("p" .     0.60)
 ("pp" .    0.50)
 ("ppp" .   0.45)
 ("pppp" .  0.40)
 ("ppppp" . 0.30) )
 my-absolute-volume-alist))

%%%%%%%%%%%%%%%%%%%% CHAQUE DYNAMIQUE RENCONTREE PRENDRA LE NOUVEAU VOLUME SPECIFIE
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME \partial 2 s2 }

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
%                                         FIN DU FICHIER SchubertF-D751-DieLiebeHatGelogen.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
