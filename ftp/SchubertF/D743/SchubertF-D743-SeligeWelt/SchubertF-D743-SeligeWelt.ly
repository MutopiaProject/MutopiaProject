%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D743-SeligeWelt.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Selige Welt", für eine Singstimme mit Klavierbegleitung
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
after-title-space = 50\mm
between-system-padding = 10\mm

 indent = 22\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Selige Welt (D.743)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Selige Welt (D.743)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "Selige Welt" }
 subsubtitle = " "
 poet = \markup { \hspace #18  \column { \center-column {
  \line { \fontsize #2 \bold "Johann Chrisostomus Senn" }
  \line { \small "(1792-1857)" }
  } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.743 (Op. 23, No 2, Herbst 1822)" }
% MUTOPIA
 mutopiatitle = "Selige Welt"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Johann Senn"
 mutopiaopus = "D.743 (Op. 23, No 2)"
 mutopiainstrument = "Voice and Piano"
 date = "1822"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/10/30-1585"
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
TEMPOBASE = \tempo 4=80
%----- TONALITÉS ET MESURES
KEY   = { \key lab \major }
TIME  = { \time 4/4 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-4.0 "Nicht zu schnell, kräftig. " } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "trombone"
 \set Staff.midiMinimumVolume = #0.5
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
}
IPIANOBAS = {
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0.3
 \set Staff.midiMaximumVolume = #1
}
%----- OCTAVES: DEBUT ET FIN
OCTAVEBEG = { #(set-octavation 1) \set Staff.ottavation = #"8" }
OCTAVEEND = #(set-octavation 0)
%----- BARRE DE LIGATURE: HAUTEUR 
BEAMPOS =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \override Beam #'positions = #$beg-end #})
BEAMPOSNO = \revert Beam #'positions
%----- CRESCENDOS
CRESCM   = \markup { \large \bold \italic "cresc." }
%----- DYNAMIQUE SPECIALE
FFZ = #(make-dynamic-script "ffz")
SFORZATO = \markup { \musicglyph #"scripts.sforzato" }
%----- REPOSITIONNEMENT DES DYNAMIQUES
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
%----- REPOSITIONNEMENT DES MARKUP
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
\set fontSize = #-.5

Ich trei -- be __ auf des Le -- bens Meer,
ich si -- tze ge -- muth in mei -- nem Kahn,
nicht Ziel, __ noch Steu -- er hin und her,
wie die Strö --- mung reisst,
wie die Win -- de __ gahn.

Ei -- ne se -- li -- ge In -- sel sucht der Wahn,
ei -- ne se -- li -- ge In -- sel sucht der Wahn,
doch ei -- ne ist es nicht,
doch ei -- ne ist es nicht,

Du lande __ glaü -- big ü -- ber all an, ü -- ber all an,
wo __ sich __ Was -- ser an Er -- de bricht.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chant = \relative do {
%--- 0
\partial 4 r4
%--- 1
R1
r2 r4 mib
do16[ mib] lab[ sib] do8 lab mib' sib do4
%--- 4
r4 lab \grace sol16 fa16[ mi] fa sol lab8 sib
do4 sib lab r
r2 r4 mib
%--- 7
do16[ mib] lab[ sib] do8 lab mib' sib dob sol16 sol
lab8 mib fab reb16 reb solb4. lab16[ sib]
dob4 r r2
%--- 10
r2 r4 r8 solb16 solb
solb4. solb16 solb dob8 solb dob reb
sib2 r4 r8 solb16 solb
%--- 13
solb4. solb16 solb reb'8 solb, reb' mib
dob4 r8 dob do8. la16 fad8 re
si'4 r8 sol la8. fad16 red8 si
%--- 16
sol'4 r r2
r2 r4 mib!
do16[ mib] lab[ sib] do8 lab mib' sib16 sib do4
%--- 19
sol8 do,16 do lab'4 \grace sol16 fa16[ mi] fa[ sol] lab8 sib16 sib
do4 sib lab r
R1
\bar "|."
}

chantPart = { \chant }
chantMidi = { \chant }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef bass
 \KEY \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = \markup \center-column { "Singstimme " "(Bassstimme) " }
 \chantPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \KEY \TIME
 \ICHANT
 \chantMidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoHautI = \context Staff \relative do \new Voice { \voiceOne
%--- 0
\oneVoice \partial 4 mib4->(
%--- 1
do16) ([ mib lab sib]) do8-.[ reb-.] \clef treble <do mi sol>4 <do fa lab>
do16([ mib! <do lab'> <mib sib'>]) <lab do>8-.[ <mib sol sib>-.] <do mib lab>4 mib^>(
do16) ([ mib lab sib]) do8-.[ lab-.] mib'-.[ sib-.] \voiceOne do4~
%--- 4
do2 \oneVoice \appoggiatura sol16 fa16([ mi fa sol]) lab8-.[ <mib! sol sib>-.]
<mib lab do>4-| <mib sol sib>-| \grace sib''16 \voiceOne lab16[ sol lab sib] \oneVoice <lab do>8-.[ <re, lab' dob re>-.]
<mib lab do! mib>4-| <sol sib reb! mib sol>-| <lab do mib lab>8-| r8 mib,4(
%--- 7
do16) ([ mib lab sib]) do8-.[ lab-.] mib'-.[ sib-.] dob8-.[ sol16-. sol-.]
lab8[ mib16 mib] fab8[ reb] \appoggiatura reb'16 \voiceOne dob16[ sib dob reb] mib8[ reb]
\OCTAVEBEG \slurDown \appoggiatura reb'16 dob16[ sib dob reb] mib8[ <re fa>] <mib solb>4 sib' \slurNeutral \oneVoice
%--- 10
<dob, mib solb dob>8 \OCTAVEEND <dob,, mib solb>16[ <dob mib solb>]
 <dob mib solb>[ <dob mib solb> <dob mib solb> <dob mib solb>] \repeat tremolo 8 <dob mib solb>16
\repeat tremolo 8 <dob mib solb>16 \repeat tremolo 8 <dob mib solb>16
\repeat tremolo 8 <sib fab' solb>16 \repeat tremolo 8 <sib fab' solb>16
%--- 13
\repeat tremolo 8 <sib fab' solb>16 \repeat tremolo 8 <sib fab' solb>16
\repeat tremolo 8 <dob mib solb>16 \repeat tremolo 8 <la do re fad>16
\repeat tremolo 8 <sol si re sol>16 \repeat tremolo 8 <si red fad la si>16
%--- 16
\repeat tremolo 8 <si mi sol si>16 \repeat tremolo 8 <si re fa! sol si>16
<do mib! sol do>8 r <mib mib'>2.
do16([ mib lab sib]) do8-.[ lab-.] mib'-.[ sib-.] \voiceOne do4-> ~
%--- 19
do2 \oneVoice \appoggiatura sol16 fa16([ mi fa sol]) lab8-.[ <mib! sol sib>-.]
<mib lab do>4-| <mib sol sib>-| \grace sib''16 \voiceOne lab16[ sol lab sib] \oneVoice <lab do>8-.[ <re, lab' dob re>-.]
<mib lab do! mib>4-| <sol sib reb! mib sol>-| <lab do mib lab>-| r
}

%%%%%%%%%%%%%%%%%%%% VOIX II
pianoHautII = \context Staff \relative do' \new Voice { \voiceTwo
%--- 0
\partial 4 s4
%--- 1
s1*2
s2. r8 mi16[ fa]
%--- 4
sol8-.[ do,-.] lab'4 s2
s2 do8.[ mib16] s4
s1
%--- 7
s1
s2 mib,8.[ solb16] dob8[ <solb sib>]
mib'8.[ solb16] dob8[ <fa, dob'>] <solb dob>4 <sib reb fab solb>
%--- 10
s1*8
%--- 18
s2. r8 mi,,16[ fa]
sol8-.[ do,-.] lab'4 s2
s2 do8.[ mib16] s4
s1
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef bass
 \KEY \TIME
% \set autoBeaming = ##f
 << \pianoHautI \pianoHautII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEY \TIME
 \IPIANOHAUT
 \unfoldRepeats { << \pianoHautI  \pianoHautII >> }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoBasI = \context Staff \relative do, \new Voice { \voiceOne
%--- 0
\oneVoice \partial 4 mib4->(
%--- 1
do16) ([ mib lab sib]) do8-.[ reb-.] <do, do'>4 <fa fa'>
<mib mib'> <mib mib'>8[ <mib mib'>] <lab mib'>4 mib'^>(
do16) ([ mib lab sib]) do8-.[ lab-.] mib'-.[ sib-.] \voiceOne do4~
%--- 4
do2 \oneVoice \stemUp \slurDown \appoggiatura sol16 \stemNeutral \slurNeutral fa16([ mi fa sol]) lab8-.[ <mib! sib'>-.]
<lab do>4-| <mib sib'>-| <lab, lab'>4. <fab fab'>8-.
<mib mib'>4-| <mib mib'>-|  <lab, lab'>8-| r mib''4(
%--- 7
do16) ([ mib lab sib]) do8-.[ lab-.] mib'-.[ sib-.] dob8-.[ sol16-. sol-.]
lab8[ mib16 mib] fab8[ reb] <solb, solb'>4. <solb solb'>8
<dob, dob'>4. <labb labb'>8 <solb solb'>4 <solb solb'>
%--- 10
<dob dob'>8 r r4 r2
\BEAMPOS #'(2 . 3.5) dob16([ solb' mib']) r r4 dob,16([ solb' mib']) r r4 
solb,,16([ solb' reb']) r r4 solb,,16([ solb' reb']) r r4 
%--- 13
solb,,16([ solb' reb']) r r4 solb,,16([ solb' reb']) r r4 
dob,16([ solb' mib']) r r4 re,16([ la' re]) r r4
\BEAMPOS #'(0 . 1.5) sol,,16([ re' sol]) r r4 \BEAMPOS #'(2 . 3.5) si,16([ fad' si]) r r4
%--- 16
\BEAMPOS #'(2 . 4) mi,16([ si' mi]) r r4 \BEAMPOS #'(0 . 1.5) sol,,16([ re' sol]) r r4 \BEAMPOSNO
<do, do'>8 r <mib! mib'!>2.
do'16([ mib lab sib]) do8-.[ lab-.] mib'-.[ sib-.] \voiceOne do4-> ~
%--- 19
do2 \oneVoice \stemUp \slurDown \appoggiatura sol16 \stemNeutral \slurNeutral fa16([ mi fa sol]) lab8-.[ <mib! sib'>-.]
<lab do>4-| <mib sib'>-| <lab, lab'>4. <fab fab'>8-.
<mib mib'>4-| <mib mib'>-|  <lab, lab'>-| r
}


%%%%%%%%%%%%%%%%%%%% VOIX II
pianoBasII = \context Staff \relative do \new Voice { \voiceTwo
%--- 0
\partial 4 s4
%--- 1
s1*2
s2. r8 mi16[ fa]
sol8-.[ do,-.] lab'4 s2
%--- 5
s1*13
%--- 18
s2. r8 mi16[ fa]
sol8-.[ do,-.] lab'4 s2
s1*2
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEY \TIME
% \set autoBeaming = ##f
 << \pianoBasI \pianoBasII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \KEY \TIME
 \IPIANOBAS
 << \pianoBasI \pianoBasII >>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
%--- 0
\partial 4 s4\ff
%--- 1
s1
s2. s4\p
s1
%--- 4
s4 \TSCREXO #'(1 . 0) s4-\SFORZATO s2
s2 s2\f
s2. s4\fp
%--- 7
s1
\TSCREXO #'(0 . 1) s2-\CRESCM \DYNEXO #'(0 . -0.5) s2\f
\DYNEXO #'(0 . -0.5) s1\ff
%--- 10
s8 s8\p s2.
s1*2
%--- 13
s1
s2 \DYNEXO #'(0 . -0.5) s2\fp
\DYNEXO #'(0 . -0.5) s2\fp s2\fp
%--- 16
\DYNEXO #'(0 . -0.5) s16\fz \TSCREXO #'(0 . 1) s16-\CRESCM s4. s2\fz
s4 s2\FFZ\decr s4\!
\DYNEXO #'(1 . 0) s1\mf
%--- 19
s4 \TSCREXO #'(1 . 0) s4-\SFORZATO s2
\DYNEXO #'(1 . -0.5) s2\f s2\ff
s1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = {
\TEMPOBASE
%--- 0
\partial 4 s4\ff
%--- 1
s1
s2. s4\p
s1
%--- 4
s1
s2 s2\f
s2. s4\f
%--- 7
s1\p
s2\cr s2\!\f
s1\ff
%--- 10
s8 s8\p s2.
s1*2
%--- 13
s1
s2 s2\f
s2\f s2\f
%--- 16
s2\f\cr s2\!\ff
s4 s2.\decr
s1\!\mf
%--- 19
s1
s2\f s2\ff
s1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<
  \new Voice = "chant"  << \notePartChant >>
  \new Lyrics \lyricsto "chant" \poeme

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
   \override SpacingSpanner #'spacing-increment = #2
   \override TextScript #'font-size = #1
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
 ("mf" .    0.70)
 ("mp" .    0.65)
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
%                                         FIN DU FICHIER SchubertF-D743-SeligeWelt.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
