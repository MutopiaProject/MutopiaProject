%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D983A-Liebe.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Liebe", für eine Singstimme mit Klavierbegleitung
%                                       AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.57"
\include "italiano.ly"
#(set-global-staff-size 18)

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")

line-width = 186\mm
#(define left-margin (/ (- paper-width  (* 186 mm)) 2))
 indent = 22\mm
 oddHeaderMarkup  = \markup \fontsize #2 \fill-line {
  " " { \italic "♫  Franz Schubert: Liebe (D.983A)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fontsize #2 \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Liebe (D.983A)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \center-column { \fontsize #1.5 "Vier Gesänge" \fontsize #-1.5 "für vier Männerstimmen" "Op. 17" " " } }
 subtitle = \markup { \center-column { \fontsize #7 "2. Liebe" " " } }
 subsubtitle = \markup { \center-column { \fontsize #3 "(D.983A, Op. 17 No 2)" " " " " " " } }
 poet = \markup { \column {
  \line { \bold \fontsize #2 "Johann Christoph Friedrich von Schiller" }
  \line { \small "(1759-1805)" } } }
 composer = \markup \center-column { \fontsize #4 \bold "Franz Schubert" \small "(1797-1828)" "(Veröffentlichungsjahr: 1823)" }
% MUTOPIA
 mutopiatitle = "Liebe"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Friedrich Schiller"
 mutopiaopus = "D.983A (Op. 17/2)"
 mutopiainstrument = "Voice"
 date = "1823"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1559"
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
%  B. CHANT: B1 à B4: Notes et dynamiques TENORS I et II, BASSES I et II
%  C. SORTIE PARTITION
%  D. SORTIE MIDI : les "choir aahs", pas satisfaisants, ont été remplacés par un quatuor à vent: hautbois, clarinette,
%                   cor d'harmonie (french horn) et basson.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TEMPI
TEMPOBASE     = \tempo 8=160
TEMPOFERMATA  = \tempo 8=40
TEMPOFINA     = \tempo 8=140
TEMPOFINB     = \tempo 8=120
TEMPOFINC     = \tempo 8=80
%----- TONALITÉS ET MESURES
KEY   = { \key re \major }
TIME  = { \time 6/8 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-5 "Andantino." } }
%----- INSTRUMENTS
ITENOREI = {
 \set Staff.midiInstrument = "oboe"
 \set Staff.midiMinimumVolume = #0.2   %défaut: 0
 \set Staff.midiMaximumVolume = #1   %défaut
}
ITENOREII = {
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0.2   %défaut: 0
 \set Staff.midiMaximumVolume = #1  %défaut: 0.7
}
IBASSOI = {
 \set Staff.midiInstrument = "french horn"
 \set Staff.midiMinimumVolume = #0.2   %défaut: 0.1
 \set Staff.midiMaximumVolume = #0.9     %défaut: 0.7
}
IBASSOII = {
 \set Staff.midiInstrument = "bassoon"
 \set Staff.midiMinimumVolume = #0.2   %défaut: 0
 \set Staff.midiMaximumVolume = #0.9     %défaut: 0.6
}
%----- CRESCENDOS
CRESCM  = \markup { \large \bold \italic "cresc." }
DIMINM  = \markup { \large \bold \italic "dimin." }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poemeI = \lyricmode {
\set fontSize = #-.5

Lie -- be rauscht __ der Sil -- ber -- bach,
Lie -- be lehrt ihn sanf -- ter wal -- len,
Lie -- be rauscht __ der Sil -- ber -- bach,
Lie -- be lehrt ihn sanf -- ter wal -- len,
See -- le haucht sie in __ das __ Ach!
Kla -- gen -- rei -- cher Nach -- ti -- gal -- len;
Lie -- be, Lie -- be lis -- pelt nur
auf der Lau -- te der Na -- tur,
Lie -- be, Lie -- be lis -- pelt nur in der Na -- tur.
}

poemeII = \lyricmode {
\set fontSize = #-.5

Lie -- be rauscht der Sil -- ber -- bach,
lehrt ihn sanf -- ter wal -- len,
Lie -- be rauscht der Sil -- ber -- bach,
lehrt ihn sanf -- ter wal -- len,
See -- le haucht sie in das Ach!
Kla -- gen -- rei -- cher Nach -- ti -- gal -- len;
Lie -- be, Lie -- be lis -- pelt nur
auf der Lau -- te der Na -- tur,
in der Na -- tur, Lie -- be, Lie -- be lis -- pelt nur.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1.	TENORE I : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenoreI = \relative do'' {
%--- 1
fad4 dod8 re8.([ dod16]) re8
mi8.([ red16]) mi8 fad4 la,16 re
fad4 fad8 fad([ sol]) mi
re4( fad16[ mi]) re4 r8
fad4 dod8 re8.([ dod16]) re8
mi8.([ red16]) mi8 fad4 la,16 re
%--- 7
fad4 fad8 fad([ mi]) dod
mi4~ ( mi32[ re dod re]) dod4 r8
mi4 mi8 mi4 fa8
do?16([ dod re8.^>]) do32([ sib]) la4.^>
fa'4 mi8 mi([ re]) dod!
fa4 mi8 mi([ re]) dod\fermata
fad!4 dod8 re8.([ dod16]) re8
%--- 14-20
mi8.([ red16]) mi8 fad4 r8
fad4 fad8 fad([ sol]) mi
re4 fad16([ mi]) re4 r8
sol4 mi8 fad4 re8
mi4 dod8 re4 r8
r4 r8 r4 re8
mi4 dod8 re4 r8
\bar "|."
}

tenoreIPart = { \tenoreI }
tenoreIMidi = { \tenoreI }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartTenoreI = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Tenore I. "
 \tenoreIPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiTenoreI = {
 \KEY \TIME
 \ITENOREI
 \TEMPOBASE
 \tenoreIMidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1a. TENORE I : DYNAMIQUES PARTITION / MIDI POUR TOUS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION
dynPartTenoreI = {
\dynamicUp
%--- 1
s2.\pp
s2.
s4\cr s8\! s4\decr s8\!
s2.
s2.\pp
s2.
%--- 7
s4\cr s8\! s4\decr s8\!
s2.
s2.^\CRESCM
s2.\fp
s2.\pp
s2.^\DIMINM
s2.\pp
%--- 14-20
s2.
s4\cr s8\! s4\decr s8\!
s2.
s2.\pp
s2.
s4. s4 s8\ppp
s2.
}

%%%%%%%%%%%%%%%%%%%% MIDI
dynMidiTenoreI = {
%--- 1
s2.\pp
s2.
s4\cr s8\!\mp s4\decr s8\!\pp
s2.
s2.\pp
s2.
%--- 7
s4\cr s8\!\mp s4\decr s8\!\pp
s2.
s2.\cr
s4\!\mf s8\p s4.
s2.\pp
s4.\decr s4 \TEMPOFERMATA s8\!\ppp
\TEMPOBASE s2.\pp
%--- 14-20
s2.
s4\cr s8\!\mp s4\decr s8\!\ppp
s2.
s2.\pp
s2.
s2.\ppp
\TEMPOFINA s4 \TEMPOFINB s8 \TEMPOFINC s4.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. TENORE II : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenoreII = \relative do'' {
%--- 1
la4 sib8 la4 la8
la4 la8 la4 fad16 la
re4 do8 si4 si8
la4( dod!8) re4 r8
la4 sib8 la4 la8
la4 la8 la4 fad16 la
%--- 7
re4 sid8 dod4 lad8
si!4. la!4 r8
do4 si8 sib4 la8
sol4^> sol8 sol4.^>
fa8([ la]) la la4 la8
la4 la8 la4 la8\fermata
la4 sib8 la4 la8
%--- 14-20
la4 la8 la4 r8
re8([ dod]) do si4 si8
la4 dod!8 re4 r8
mi4 la,8 re4 fad,8
si4 la16([ sol]) fad4 r8
r4 r8 r4 fad8
si4 la16([ sol]) fad4 r8
}

tenoreIIPart = { \tenoreII }
tenoreIIMidi = { \tenoreII }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartTenoreII = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 \set Staff.instrumentName = "Tenore II. "
 \tenoreIIPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiTenoreII = {
 \KEY \TIME
 \ITENOREII
 \tenoreIIMidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B3.	BASSO I : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassoI = \relative do' {
%--- 1
la4 sol8 fad4 fad8
sol4 sol8 fad4 r8
la4 la8 sol([ re]) mi
fad4( la16[ sol]) fad4 r8
la4 sol8 fad4 fad8
sol4 sol8 fad4 r8
%--- 7
fad4 la8 la4 mi8
sold4. la4 r8
la4 sol!8 sol4 fa8
mi4^> mi8 mi4.^>
fa4 sol8 fa4 mi8
fa4 sol8 fa4 mi8\fermata
fad!4 sol8 fad4 fad8
%--- 14-20
sol4 sol8 fad4 r8
la4 la8 sol([ re]) mi
fad4 la16([ sol]) fad4 r8
r4 r8 r4 si8
sol4 mi8 re4 r8
sol4 mi8 fad4 re8
mi4 mi8 re4 r8
}

bassoIPart = { \bassoI }
bassoIMidi = { \bassoI }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartBassoI = {
 \clef bass
 \KEY \TIME
 \set autoBeaming = ##f
 \set Staff.instrumentName = "Basso I. "
 \bassoIPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiBassoI = {
 \KEY \TIME
 \IBASSOI
 \bassoIMidi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B3a. BASSO I : DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartBassoI = {
\dynamicUp
%--- 1
s2.\pp
s2.
s4\cr s8\! s4\decr s8\!
s2.
s2.\pp
s2.
%--- 7
s4\cr s8\! s4\decr s8\!
s2.
s2.^\CRESCM
s2.\fp
s2.\pp
s2.^\DIMINM
s2.\pp
%--- 14-20
s2.
s4\cr s8\! s4\decr s8\!
s2.
s4. s4 s8\pp
s2.
s2.\ppp
s2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B4.	BASSO II : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassoII = \relative do {
%--- 1
re4 re8 re4 la8
dod4 la8 re4 r8
re4 re8 sol,4 sol8
la4. re4 r8
re4 re8 re4 la8
dod4 la8 re4 r8
%--- 7
re4 red8 mi4 mi8
mi4. la,4 r8
la4 si8 do4 do8
do4^> do8 dod4.^>
re4 dod8 re4 la8
re4 dod8 re4 la8\fermata
re4 re8 re4 la8
%--- 14-20
dod4 la8 re4 r8
re4 re8 sol,4 sol8
la4 la8 re4 r8
r4 r8 r4 si8
sol4 la8 re4 r8
mi4 la,8 re4 si8
sol4 la8 re4 r8
}

bassoIIPart = { \bassoII }
bassoIIMidi = { \bassoII }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartBassoII = {
 \clef bass
 \KEY \TIME
 \set autoBeaming = ##f
 \set Staff.instrumentName = "Basso II. "
 \bassoIIPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiBassoII = {
 \KEY \TIME
 \IBASSOII
 \bassoIIMidi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<
  \new ChoirStaff
  \relative <<
   \new Voice = "tenoreI"   << \notePartTenoreI  \dynPartTenoreI  >>
   \new Lyrics \lyricsto "tenoreI" \poemeI
   \new Voice = "tenoreII"  << \notePartTenoreII \dynPartTenoreI  >>
   \new Voice = "bassoI"    << \notePartBassoI   \dynPartBassoI   >>
   \new Lyrics \lyricsto "bassoI" \poemeII
   \new Voice = "bassoII"   << \notePartBassoII  \dynPartBassoI   >>
  >>
 >>
 \layout { }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE MIDI SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME s2. }

\score {
 <<
  \new Staff = "tenoreI"   { \SILENCE << \noteMidiTenoreI   \dynMidiTenoreI >> }
  \new Staff = "tenoreII"  { \SILENCE << \noteMidiTenoreII  \dynMidiTenoreI >> }
  \new Staff = "bassoI"    { \SILENCE << \noteMidiBassoI    \dynMidiTenoreI >> }
  \new Staff = "bassoII"   { \SILENCE << \noteMidiBassoII   \dynMidiTenoreI >> }
 >>
 \midi { }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         FIN DU FICHIER SchubertF-D983A-Liebe.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
