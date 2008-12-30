%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D120-TrostInThraenen.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Trost in Thränen", für eine Singstimme mit Klavierbegleitung
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

 indent = 28\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Trost in Thränen (D.120)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Trost in Thränen (D.120)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "Trost in Thränen" }
 subsubtitle = " "
 poet = \markup { \hspace #19  \column { \center-column {
  \line { \fontsize #2 \bold "Johann Wolfgang von Goethe" }
  \line { \small "(1787-1862)" }
  } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.120 (30. Novembre 1814)" }
% MUTOPIA
 mutopiatitle = "Trost in Thränen"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Johann Wolfgang von Goethe"
 mutopiaopus = "D.120"
 mutopiainstrument = "Voice and Piano"
 date = "1814"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/10/30-1578"
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
TEMPOBASE = \tempo 8=240
TEMPODIMA = \tempo 8=220
TEMPODIMB = \tempo 8=200
TEMPODIMC = \tempo 8=180
TEMPODIMD = \tempo 8=140
TEMPOFERM = \tempo 8=160
%----- TONALITÉS ET MESURES
KEYA   = { \key re \minor }
KEYB   = { \key lab \major }
TIME  = { \time 6/8 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-4.0 "Etwas geschwind. " } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
}
ICHANTB = {
 \set Staff.midiInstrument = "harmonica"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.6
}
IPIANOBAS = {
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.9
}
%----- CRESCENDO
DIM = \markup { \bold \italic "dim." }
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
%----- ALLONGER UNE LIAISON DE PROLONGATION 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME (2 PREMIERES STROPHES)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poemeA = \lyricmode {
\set fontSize = #-.5

Wie kommt’s, daß du __ so trau -- rig bist,
da al -- les froh er -- scheint? __
Man sieht dir’s an den Au -- gen an,
ge -- wiß, du hast __ ge -- weint.
“Und hab’ ich ein -- sam auch ge -- weint,__
so ist’s mein ei -- gner Schmerz, __
und Thrä -- nen flie -- ßen gar so __ süß,
er -- leich -- tern mir __ das Herz, __
und Thrä -- nen flie -- ßen gar so __ süß,
er -- leich -- tern mir __ das Herz, __
er -- leich -- tern mir __ das Herz.”
}

poemeB = \lyricmode {
\set fontSize = #-.5

Die fro -- hen Freun -- de la -- den dich,
o komm’ an uns’ -- re Brust! __
Und was du auch ver -- lo -- ren hast,
ver -- trau -- e den __ Ver -- lust. __
“Ihr lärmt und rauscht und ah -- net nicht,
was mich, den Ar -- men, quält. __
ach nein, ver -- lo -- ren hab’ ich’s __ nicht,
so sehr es mir __ auch fehlt, __
ach nein, ver -- lo -- ren hab’ ich’s __ nicht,
so sehr es mir __ auch fehlt,
so sehr es mir __ auch fehlt.”
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chantA = \relative do'' {
\KEYA 
%--- 0
\partial 8 la8
%--- 1
la4 fa8 fa[ la] do   do4 sol8 sol4 do8   la4 la8 fa'4 si,8
%--- 4
do4.~ do8 r dod   re4 re8 sol4 re8   do8.[ re16] do8 fa4 mi8   re4 re8 re[ do] si
%--- 8
do4.~ do4^\fermata do8
\bar "||" \KEYB
lab4 lab8 sol4 do8   do4 lab8 fa4 fa'8   fa4 reb8 sib4 mib8
%--- 12
mib4.~ mib8 r lab,   fa'4 reb8 reb4 lab'8   lab4 sol16[ fa] mib4 mib8   mib4 mib8 mib[ sib] reb
%--- 16
do4.~ do8 r do   reb4 reb8 reb[ sib] fa'   fa4 mib16[ reb] do4 do8   do4 do8 reb[ sol,] sib
%--- 20-22
lab4. r8 r do   do4 do8 re[ do] sib   la2.
}

chantB = \relative do'' {
%--- 23
\set Score.repeatCommands = #'((volta "1.2.3.")) 
\partial 4. r4 r8 \bar "" \partial 4 r4^\fermataMarkup
}

chantC = \relative do'' {
%--- 24
\set Score.repeatCommands = #'((volta #f)end-repeat(volta "4.")) 
R2.^\fermataMarkup
\set Score.repeatCommands = #'((volta #f)) 
\bar "|."
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme "
 \chantA \chantB \chantC
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \TIME
 \ICHANT
 \chantA \chantB \chantA \chantC
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. CHANT : DYNAMIQUES PARTITION/MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% MIDI
dynMidiChant = {
%--- 0
\repeat unfold 2 { \ICHANT \TEMPOBASE
s8\p s2.*7
%--- 8
\TEMPOFERM s4. \TEMPOBASE s8.. \ICHANTB s32 s8
%--- 9
s2.*10
%--- 19
s2.\pp   s2.   \TEMPODIMA s4.\decr \TEMPODIMB s4.   s4.\!\ppp \TEMPODIMC s4 \TEMPODIMD s8
%--- 23
\TEMPOFERM s4. s4   } % FIN DU REPEAT
%--- 24
s8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoHautIA = \relative do' { \oneVoice
\KEYA 
%--- 0
\partial 8 r8
%--- 1
<la do fa>2.   <do sol'>2.   <do la'>4. <fa si>
%--- 4
\voiceOne do'4.~ do4( dod8)   re2.   do   si
%--- 8
do4.~ do4^\fermata sib8\rest
\KEYB \oneVoice r8 <do, fa lab>[ <do fa lab>] r <sib mi sol>[ <sib mi sol>]
r <lab do fa>[ <lab do fa>] <lab do fa>[ <lab do fa> <lab do fa>]
r <lab reb fa>[ <lab reb fa>] r <sib reb mib>[ <sib reb mib>]
%--- 12
r <lab do mib>[ <lab si mib>] <lab do mib>[ <lab do mib> <lab do mi>]
r <lab reb fa>[ <lab reb fa>] <lab reb fa>[ <lab reb fa> <lab reb fab>]
r <lab reb mib>[ <lab reb mib>] <lab do mib>[ <lab do mib> <lab dob mib>]
r <lab sib mib>[ <lab sib mib>] r <sol sib mib>[ <sol sib mib>]
%--- 16
r <lab do mib>[ <lab do mib>]  <lab do mib>[ <lab do mib> <solb do mib>] \clef bass
r <fa do' reb>[ <fa do' reb>] <fa sib reb>[ <fa sib reb> <fa sib reb>]
r <fa sib do>[ <fa sib do>] <fa lab do>[ <fa lab do> <fa lab do>]
r <fa sol do>[ <fa sol do>] <mi sol do>[ <mi sol do> <mi sol do>]
%--- 20-22
r <fa lab do>[ <fa lab do>] <fa lab do>[ <fa lab do> <fa lab do>]
r <fa sol do>[ <fa sol do>] <mi sol do>[ <mi sol do> <mi sol do>]
r <fa la do>-.([ <fa la do>-.] <fa la do>-.[ <fa la do>-. <fa la do>-.])
}

pianoHautIB = \relative do { \oneVoice
%--- 23
<fa la! do>4.~ <fa la do>4^\fermata
}

pianoHautIC = \relative do { \oneVoice
%--- 24
<fa la do>2.^\fermata
}

pianoHautIPart = \context Staff \new Voice { \voiceOne
 \pianoHautIA \pianoHautIB \pianoHautIC }

pianoHautIMidi = \context Staff \new Voice { \voiceOne
 \pianoHautIA \pianoHautIB \pianoHautIA \pianoHautIC }


%%%%%%%%%%%%%%%%%%%% VOIX II
pianoHautIIA = \relative do' { \voiceTwo
%--- 0
\partial 8 s8
%--- 1
s2.*3
%--- 4
mi2.   fad4. sol4( fa8)   mi4. fa4( mi8)   fa4.~ fa8([ sol lab])   sol4.~ sol4 s8
%--- 9-22
s2.*14
}

pianoHautIIB = \relative do'{ \voiceTwo
%--- 23
s4. s4
}

pianoHautIIC = \relative do'{ \voiceTwo
%--- 24
s2.
}

pianoHautIIPart = \context Staff \new Voice { \voiceTwo
 \pianoHautIIA \pianoHautIIB \pianoHautIIC }

pianoHautIIMidi = \context Staff \new Voice { \voiceTwo
 \pianoHautIIA \pianoHautIIB \pianoHautIIA \pianoHautIIC }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \TIME
 \set autoBeaming = ##f
 << \pianoHautIPart \pianoHautIIPart >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \TIME
 \IPIANOHAUT
 << \pianoHautIMidi \pianoHautIIMidi >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoBasIA = \relative do{ \oneVoice
\KEYA 
%--- 0
\partial 8 r8
%--- 1
fa2.   mi   fa4. <re sol>
%--- 4
\voiceOne sol4.~ sol4( sib8)   la4. sib4( la8)   sol4( sold8) la4( sol8)   lab4.~ lab8([ sol fa])
%--- 8
mi4.~ mi4 re8\rest
\KEYB \oneVoice fa4 r8 do4 r8   fa,2.   fa4. sol
%--- 12
lab2.   reb,4. r4 r8   lab'4. r4 r8   <mib mib'>4 r8   <mib mib'>4 r8
%--- 16
lab4. r8 r la(   sib4.) r8 r sib,(   fa'4.) r4 r8   <do do'>2.(
%--- 20-22
fa2.)   <do do'>   fa~
}

pianoBasIB = \relative do,{ \oneVoice
%--- 23
fa4.~ fa4_\fermata
}

pianoBasIC = \relative do,{ \oneVoice
%--- 24
fa2.\repeatTie_\fermata
}

pianoBasIPart = \context Staff \new Voice { \voiceOne
 \pianoBasIA \pianoBasIB \pianoBasIC }

pianoBasIMidi = \context Staff \new Voice { \voiceOne
 \pianoBasIA \pianoBasIB \pianoBasIA \pianoBasIC }
 
%%%%%%%%%%%%%%%%%%%% VOIX II
pianoBasIIA = \relative do { \voiceTwo
%--- 0
\partial 8 s8
%--- 1
s2.*3
%--- 4
do2.   do   do   do   do4.~ do4_\fermata s8
%--- 9-22
s2.*14
}

pianoBasIIB = \relative do'{ \voiceTwo
%--- 23
s4. s4
}
pianoBasIIC = \relative do'{ \voiceTwo
%--- 24
s2.
}

pianoBasIIPart = \context Staff \new Voice { \voiceTwo
 \pianoBasIIA \pianoBasIIB \pianoBasIIC }

pianoBasIIMidi = \context Staff \new Voice { \voiceTwo
 \pianoBasIIA \pianoBasIIB \pianoBasIIA \pianoBasIIC }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \TIME
 \set autoBeaming = ##f
 << \pianoBasIPart \pianoBasIIPart >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \TIME
 \IPIANOBAS
 << \pianoBasIMidi \pianoBasIIMidi >>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
%--- 0
\partial 8 s8
%--- 1
\DYNEXO #'(1 . 0) s2.\fp
\DYNEXO #'(1.5 . 0) s2.\fp
s2.*2
%--- 5
\PINEXO #'(2 . 0) s8\decr s8\! s2
s2.
\PINEXO #'(2 . 0) s8\decr s8\! s2
%--- 8
s2.*11
%--- 19
\DYNEXO #'(1.5 . 0) s2.\pp
s2.
\TSCREXO #'(0 . 1.5) s2.-\DIM
%--- 22-24
s2.
s4. s4
s2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPianoA = {
%--- 0
\partial 8 s8\p
%--- 1
s2\f\decr s4\p
s2\f\decr s4\p
s2.*2\p
%--- 5
s4\f\decr s8\!\p s4.
s2.
s4\f\decr s8\!\p s4.
%--- 8
s2.*11
%--- 19
s2.\pp
s2.
s2.\decr
%--- 22-24
s2.\!\ppp
}

dynMidiPianoB = {
s4. s4
}

dynMidiPianoC = {
s2.
}
dynMidiPiano = { \dynMidiPianoA \dynMidiPianoB \dynMidiPianoA \dynMidiPianoC }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\markup { \lower #5
\fill-line {
\column { \line { \column { " " }}}
\column { \line { \column {
" "
\bold "1."
"Wie kommt’s, daß du so traurig bist,"
"Da alles froh erscheint?"
"Man sieht dir’s an den Augen an,"
"Gewiß, du hast geweint."
" "
"“Und hab’ ich einsam auch geweint,"
"So ist's mein eigner Schmerz,"
"Und Thränen fließen gar so süß,"
"Erleichtern mir das Herz.”"
" "
\bold "2."
"Die frohen Freunde laden dich,"
"O komm’ an unsre Brust!"
"Und was du auch verloren hast,"
"Vertraue den Verlust."
" "
"“Ihr lärmt und rauscht und ahnet nicht,"
"Was mich, den Armen, quält."
"Ach nein, verloren hab’ ich’s nicht,"
"So sehr es mir auch fehlt.”"
}}}
\column { \line { \column { " " }}}
\column { \line { \column {
" "
\bold "3."
"So raffe denn dich eilig auf,"
"Du bist ein junges Bluth."
"In deinen Jahren hat man Kraft"
"Und zum Erwerben Muth."
" "
"“Ach nein, erwerben kann ich's nicht,"
"Es steht mir gar zu fern."
"Es weilt so hoch, es blinkt so schön,"
"Wie droben jener Stern.”"
" "
\bold "4."
"Die Sterne, die begehrt man nicht,"
"Man freut sich ihrer Pracht,"
"Und mit Entzücken blickt man auf"
"In jeder heitern Nacht."
" "
"“Und mit Entzücken blick’ ich auf,"
"So manchen lieben Tag;"
"Verweinen laßt die Nächte mich,"
"So lang’ ich weinen mag.”"
}}}
\column { \line { \column { " " }}}
}}
\markup { " " }


\score {
 <<
  \new Voice = "chant"  << \notePartChant >>
  \new Lyrics \lyricsto "chant" \poemeA
  \new Lyrics \lyricsto "chant" \poemeB

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
   \override SpacingSpanner #'spacing-increment = #3
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
 ("pp" .    0.52)
 ("ppp" .   0.47)
 ("pppp" .  0.35)
 ("ppppp" . 0.30) )
 my-absolute-volume-alist))

%%%%%%%%%%%%%%%%%%%% CHAQUE DYNAMIQUE RENCONTREE PRENDRA LE NOUVEAU VOLUME SPECIFIE
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME s4. s4 }

\score {
 <<
  \new Staff = "chant"      { \SILENCE << \noteMidiChant      \dynMidiChant >> }
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
%                                         FIN DU FICHIER SchubertF-D120-TrostInThraenen.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
