%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D744-Schwanengesang.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Schwanengesang", für eine Singstimme mit Klavierbegleitung
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
  " " { \italic "♫  Franz Schubert: Schwanengesang (D.744)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Schwanengesang (D.744)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "Schwanengesang" }
 subsubtitle = " "
 poet = \markup { \hspace #18  \column { \center-column {
  \line { \fontsize #2 \bold "Johann Chrisostomus Senn" }
  \line { \small "(1792-1857)" }
  } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.744 (Op. 23, No 3, 1822)" }
% MUTOPIA
 mutopiatitle = "Schwanengesang"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Johann Senn"
 mutopiaopus = "D.744 (Op. 23, No 3)"
 mutopiainstrument = "Voice and Piano"
 date = "1822"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/10/30-1586"
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
TEMPOBASE    = \tempo 8=60
TEMPORALENTI = \tempo 8=55
TEMPOFERMATA = \tempo 8=15
TEMPOFINA    = \tempo 8=50
TEMPOFINB    = \tempo 8=42
%----- TONALITÉS ET MESURES
KEY   = { \key lab \major }
TIME  = { \time 2/2 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-4.0 "Sehr langsam." } }
%----- INSTRUMENTS
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
SCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Script #'extra-offset = #$beg-end #})
%----- GROS POINT D'ORGUE 
GROSFERMATA = \markup { \fontsize #3 \musicglyph #"scripts.ufermata" }
%----- DYNAMIQUE SPECIALE
SFORZATO = \markup { \musicglyph #"scripts.sforzato" }
%----- CRESCENDOS
CRESCM     = \markup { \bold \italic "cresc." }
DIMINM     = \markup { \bold \italic "dimin." }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
\set fontSize = #-.5

Wie klag’ ich’s aus das Ster -- be -- ge -- fühl,
das auf -- lö -- send durch die Glie -- der rinnt,
wie sing’ ich’s aus, das Wer -- de -- ge -- fühl,
das er -- lö -- send dich, o Geist, an -- weht.

Er klagt’, er sang
ver -- nich -- tungs -- bang,
ver -- klä -- rungs -- froh,
bis das Le -- ben __ floh.
Das __ be -- deu -- tet des Schwa -- nen Ge -- sang.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chant = \relative do' {
%--- 1
R1*3
R1^\fermataMarkup
%--- 5
mib4 mib8 mib lab4. lab8
dob8[ sib] dob reb dob2
dob4. dob8 mibb4 reb
%--- 8
reb8 mib fab8[ \grace { solb16[ fab] } mib16.] reb32 mib2
mib4 sib8 do! reb4. reb8
fa4 lab,8 sib do2 
%--- 11
mib4. mib8 sol mib sib do
fa,4 re' mib4. r8
r2 r4 r8 mib, \break
%--- 14
mib4. mib8 lab4. lab8
dob8[ sib] mib[ sol,] lab4. dob8
mib8[ reb] solb[ sib,] dob4. r8
%--- 17
mib4 sib8[ do!] reb[ sib] lab[ sol]
lab4 r \TSCREXO #'(0.8 . 0) r2^\fermataMarkup
R1
%--- 20-23
r4 mib'2~ mib8 mib,
sibb'4 lab8 lab mib4 mib8 mib
mib2 r2
R1^\fermataMarkup
\bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme "
 \chant
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \KEY \TIME
 \ICHANT
 \chant
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%% VOIX I
pianoHautIA = \relative do'' { \oneVoice
%--- 1
<mib lab>4-.( <mib lab>8-.[ <mib lab>-.]) <mib sol>4( mib8) r
<mib, lab>4-.( <mib sib'>8-.[ <mib lab>-.]) <mib sol>4^( mib8) r
<mib solb>4 <reb fa>8-.([ reb-.]) <do mib>4-.( <reb mib>-.)
<do mib>1^\fermata
%--- 5
<dob mib>4-.( <dob mib>8-.[<reb mib>-.]) <dob mib lab>4( <mib lab>) \voiceOne
dob'8[( sib) <mib, lab dob> <mib sol reb'>] <mib lab dob>4 <mib dob'>8[ <lab dob>]
<solb dob>4 <solb dob>8[ <solb dob>] mibb'4( reb)
%--- 8
reb8[ mib] fab[ mib16. reb32] mib4 mib8[ mib]
mib4 sib8[ do] reb2
fa4 lab,8[ sib] do2 \oneVoice
}

%%%%%%%%%%%%%%%%%%%% ARPEGES PARTITION
pianoHautIAP = \relative do' { \oneVoice
%--- 11
<mib mib'>4( <mib si'>8[ <mib do'>]) <mib sib'>4. <mib~ do'>8^(
<mib fa>4) ^( <re fa sib re>4\arpeggio <mib sol sib mib>4.\arpeggio) <mib~ do'>8^(
<mib fa>4) ^( <re fa sib re>4\arpeggio <mib sol sib mib>4.\arpeggio) r8
}

%%%%%%%%%%%%%%%%%%%% ARPEGES MIDI
pianoHautIAM = \relative do' { \oneVoice
%--- 11
<mib mib'>4( <mib si'>8[ <mib do'>]) <mib sib'>4. \repeat unfold 2 {
 <mib~ do'>8^( <mib fa>4)  
 << { re4 } \\ { s32 fa8.. } \\ { s16 sib8. } \\ { s16. re32 ~ re8 } >>    % 4
 << { mib,4. } \\ { s32 sol8.. ~ sol8 } \\ { s16 sib8. ~ sib8 } \\ { s16. mib32 ~ mib4 } >>   % 4.
 }
r8
}

%%%%%%%%%%%%%%%%%%%% suite
pianoHautIB = \relative do' { \oneVoice
%--- 14
<dob mib>4 <dob mib>8[<reb mib>] <dob mib lab>4 <dob mib lab>8[ <dob mib lab>] \voiceOne
dob'8[( sib) <mib, lab dob> <mib sol reb'>] <mib lab dob>4 <lab dob>8[ <solb dob>]
mib'8[( reb) mib fab] mib4 mib8[ mib]
%--- 17
mib4( sib8[ do!] reb[ sib lab sol]) \oneVoice
<do, mib lab>4 \clef bass <mib, sol sib>8([ <mib la do>] <fa sib reb>4 \TSCREXO #'(2.4 . 0) <lab do>8^\GROSFERMATA [ <sol sib>]) \clef treble
<mib'' lab>4-.( <mib lab>8-.[ <mib lab>-.]) <mib sol>4( mib8) r
%--- 20-23
<mib, lab>4-.( <mib sib'>8-.[ <mib lab>-.]) <mib sol>4^( mib8) r
<mib solb>4( <reb fa>8[ reb]) <do mib>4-.( <reb mib>-.)
<do mib>4 r \clef bass <mib, solb>4( <reb fa>8[ reb])
<do mib>4-.( <reb mib>-.) <do mib>2^\fermata
}

pianoHautIPart = \context Staff \new Voice { \voiceOne
 \pianoHautIA \pianoHautIAP \pianoHautIB }

pianoHautIMidi = \context Staff \new Voice { \voiceOne
 \pianoHautIA \pianoHautIAM \pianoHautIB }
 
%%%%%%%%%%%%%%%%%%%% VOIX II
pianoHautII = \context Staff \relative do' \new Voice { \voiceTwo
%--- 1
s1*4
%--- 5
s1
<fab lab>4 s2.
s2 <labb dob>2
%--- 8
<solb dob>4 <solb sib> <solb dob>2
mib4 mib8[ mib] mib4 mib16([ sol sib sol])
mib4 mib8[ mib] mib4 mib16([ lab do lab])
%--- 11
s1*3
%--- 14
s1
<fab lab>4 s2.
<lab dob>4 <solb dob>8[ <solb sib>] <solb dob>2
%--- 17
mib4. mib8 fa!4 mib8[ reb]
s1*2
%--- 20-23
s1*4
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEY \TIME
% \set autoBeaming = ##f
 << \pianoHautIPart \pianoHautII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEY \TIME
 \IPIANOHAUT
 << \pianoHautIMidi \pianoHautII >>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoBasI = \context Staff \relative do'' \new Voice { \oneVoice
%--- 1
<lab dob>4-.( <lab dob>8-.[ <lab dob>-.]) <mib sib'>4~ <mib sib'>8 r \clef bass
<lab, do!>4-.( <lab do>8-.[ <lab do>-.]) <mib sib'>4~ <mib sib'>8 r
<do sibb'>4 <reb lab'>8-.([ <fa lab>-.]) <mib lab>4-.( <mib sol>-.)
<lab, mib' lab>1^\fermata
%--- 5
<lab mib'>4-._( \stemUp <lab mib'>8-.[ <sib mib sol>-.]) \stemNeutral <dob mib lab>4 <dob lab'> \voiceOne
dob'8[( sib) dob reb] \oneVoice <lab dob>4 <solb dob>8[ <fab dob'>]
<mib dob'>4 <mib dob'>8[ <mib dob'>] \voiceOne mibb'4( reb)
%--- 8
reb8[ mib] fab[ mib16. reb32] mib2
do!4 sol!8[ lab] sib2
reb4 fa,8[ sol] lab2 \oneVoice
%--- 11
do4( sol8[ lab]) <mib sol>4. \set doubleSlurs = ##t <la, sol'!>8( \set doubleSlurs = ##f
<sib fa'>4) ^( <sib fa' lab> <mib sol>4.) \set doubleSlurs = ##t <la, sol'!>8( \set doubleSlurs = ##f
<sib fa'>4) ^( <sib fa' lab> <mib sol>4.) r8
%--- 14
<lab, mib'>4 <lab mib'>8[ <sib mib sol>] <dob mib lab>4 <dob mib lab>8[ <dob mib lab>] \voiceOne
dob'8[( sib) dob reb] \oneVoice <lab dob>4 <fab dob'>8[ <mib dob'>] \voiceOne
mib'8[( reb) mib fab] mib4 mib8[ mib]
%--- 17
do!4( s4 lab8[ sib do sib])
lab4( s4 sib,8.[ do32 reb] \stemDown \TSCREXO #'(2.4 . -1) mib8^\GROSFERMATA[ mib]) \clef treble \oneVoice
<lab' dob>4-.( <lab dob>8-.[ <lab dob>-.]) <mib sib'>4~ <mib sib'>8 r \clef bass
%--- 20-23
<lab, do!>4-.( <lab do>8-.[ <lab do>-.]) <mib sib'>4~ <mib sib'>8 r
<do sibb'>4( <reb lab'>8[ <fa lab>]) <mib lab>4-.( <mib sol>-.)
\stemUp <lab, mib' lab>4-._( lab8-.[ lab-.]) <do, sibb'>4( <reb lab'>8[ <fa lab>]) 
<mib lab>4-.( <mib sol>-.) <lab, lab'>2^\fermata
}


%%%%%%%%%%%%%%%%%%%% VOIX II
pianoBasII = \context Staff \relative do \new Voice { \voiceTwo
%--- 1
s1*4
%--- 5
s1
<reb fab lab>4 <mib lab>8[ <mib sol>] s2
s2 <fab labb dob>2
%--- 8
<solb dob>4 <solb sib> dob2
mib,2 mib4-.( mib8-.[ mib-.])
mib2 mib4-.( mib8-.[ mib-.])
%--- 11
s1*3
%--- 14
s1
<reb fab lab>4 <mib lab>8[ <mib sol>] s2
<fab lab dob>4 <solb dob>8[ <solb sib>]
dob2
%--- 17
s4 sol!8[ lab] reb,4 mib
<lab, mib'>4 reb8[ do] s2
s1
%--- 20-23
s1*4
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
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
%--- 1
s1\pp
s1*3
%--- 5
s4\pp \PINEXO #'(2.2 . 0) s16..\cr s64\! s8 \PINEXO #'(1 . 0) s4\decr s4\!
s1*2
%--- 8
s1
\DYNEXO #'(1.5 . 0) s1\mf
\TSCREXO #'(1 . 1.2) s4-\SFORZATO s2.
%--- 11
s4 s8 s32 s16.\cr s8\!\decr s32\! s16. s4
s2.. s8\pp
s1
%--- 14
s1\pp
s2. s4-\CRESCM
s1
%--- 17
s1\pp
\DYNEXO #'(1.5 . 0) s2\pp \TSCREXO #'(0 . 1.5) s2-\DIMINM
s1\pp
%--- 20-23
s1
\PINEXO #'(1.5 . 0) s8\decr s8\! \TSCREXO #'(1 . 1.5) s4-\DIMINM s2
s2 s4.\ppp\decr s8\!
s1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = {
%--- 1
\TEMPOBASE
s1\pp
s1*3
%--- 5
s4\pp s8\cr s8\!\mp s4\decr s4\!\pp
s1*2
%--- 8
s1
s1\mf
s1
%--- 11
s4 s8 s8\cr s8\!\f\decr s8\!\mf s4
s2.. s8\pp
s1
%--- 14
s1\pp
s2. s4\cr
s2 s4\!\mf s4
%--- 17
s1\pp
s2\pp \TEMPORALENTI s4. \TEMPOFERMATA s8
\TEMPOBASE s1\pp
%--- 20-23
s1
\TSCREXO #'(1 . 1.5) s4-\SFORZATO \TSCREXO #'(0 . 1.5) s4 \TEMPORALENTI s2
s2 s4\ppp s8\pppp s8\ppp
\TEMPOFINA s4\!\pppp \TEMPOFINB s2.
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
   \override SpacingSpanner #'spacing-increment = #1.8
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

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME \partial 2 s2 }

\score {
 <<
  \new Staff = "chant"      { \SILENCE << \noteMidiChant      \dynMidiPiano >> }
  \new Staff = "pianoUp"    { \SILENCE << \noteMidiPianoHaut  \dynMidiPiano >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBas   \dynMidiPiano >> }
 >>
 \midi { }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         FIN DU FICHIER SchubertF-D744-Schwanengesang.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
