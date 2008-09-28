%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D983C-DieNacht.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Die Nacht", für eine Singstimme mit Klavierbegleitung
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
  " " { \italic "♫  Franz Schubert: Die Nacht (D.983C)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fontsize #2 \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Die Nacht (D.983C)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \center-column { \fontsize #1.5 "Vier Gesänge" \fontsize #-1.5 "für vier Männerstimmen" "Op. 17" " " } }
 subtitle = \markup { \center-column { \fontsize #7 "4. Die Nacht" " " } }
 subsubtitle = \markup { \center-column { \fontsize #3 "(D.983C, Op. 17 No 4)" " " " " " " } }
 poet = \markup { \column {
  \line { \bold \fontsize #2 "Friedrich Adolf Krummacher" }
  \line { \small "(1767-1845)" } } }
 composer = \markup \center-column { \fontsize #4 \bold "Franz Schubert" \small "(1797-1828)" "(Veröffentlichungsjahr: 1823)" }
% MUTOPIA
 mutopiatitle = "Die Nacht"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Friedrich Adolf Krummacher"
 mutopiaopus = "D.983C (Op. 17/4)"
 mutopiainstrument = "Voice"
 date = "1823"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1561"
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
%  D. SORTIE MIDI : les "choir aahs", pas satisfaisants, ont été remplacés par un quatuor de clarinettes et les voix des
%                   ténors baissées d'une octave
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TEMPI
TEMPOBASE     = \tempo 8=68
TEMPOFERMATA  = \tempo 8=40
TEMPOFERMATAL = \tempo 8=20
TEMPOFINA     = \tempo 8=60
TEMPOFINB     = \tempo 8=50
%----- TONALITÉS ET MESURES
KEY   = { \key re \major }
TIME  = { \time 6/8 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-5 "Langsam." } }
%----- INSTRUMENTS
ITENOREI = {
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
ITENOREII = {
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
}
IBASSOI = {
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.7
}
IBASSOII = {
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.6
}
%----- REPOSITIONNEMENT DES DYNAMIQUES
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
%----- SFORZATO POUR REMPLACER UN HAIRPIN DEFICIENT (T.II ET B.I)
SFORZATO = \markup { \fontsize #3.8 \musicglyph #"scripts.sforzato" }
%----- REPOSITIONNEMENT DES SCRIPT / MARKUP
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
%----- MARKUPS DE PAROLES
SCHWEI  = \markup { \hspace #-1.5 \fontsize #0.4 "schwei - gend" }
SCHWEIB = \markup { \hspace #-1 \fontsize #0.4 "schwei   -   gend" }
AUSDER  = \markup { \hspace #-1.5 \fontsize #0.4 "aus der   Fer   -    ne" }
AUSDERB = \markup { \hspace #-2.5 \fontsize #0.4 "aus der   Fer  -   ne" }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poemeI = \lyricmode {
\set fontSize = #-.5

Wie schön __ bist du,
freund -- li -- che Stil -- le,
himm -- li -- sche Ruh’!

Se -- het, wie die kla -- ren __ Ster -- ne
wan -- deln in des Him -- mels __ Au -- en
und auf uns her -- nie -- der __ schau -- en,
schwei -- gend, schwei -- gend aus der blau -- en Fer -- ne,
schwei -- gend, schwei -- gend aus der blau -- en Fer -- ne.

Wie schön __ bist du,
freund -- li -- che Stil -- le,
himm -- li -- sche Ruh’!

Schwei -- gend naht des Len -- zes __ Mil -- de
sich der Er -- de wei -- chem __ Schoss, __
kränzt den Sil -- ber -- quell mit __ Moos __
und mit Blu -- men die Ge -- fil -- de, und mit Blu -- men die Ge -- fil -- de,
und mit Blu -- men die Ge -- fil -- de, und mit Blu -- men die Ge -- fil -- de.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1.	TENORE I : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenoreI = \relative do'' {
%--- 0
\partial 8 re8
%--- 1
fad4.~ fad4 re8
la2.
si8. dod16 si8 mi4 dod8
re8. la16 fad'8 mi4.\fermata
mi4 mi8 mi4 mi8 \break
%--- 6
fad8.->([mi16]) dod([ la]) dod4 si8
mi4 mi8 mi4 mi8 
fad8.->([mi16]) dod([ la]) dod4 si8
dod4 mi8 re4 la8
sol'4 fad16([ re]) fad4.
mi4 r8 r4 r8 \break
%--- 12
re4.~ re4 si8
mi4.~ mi4 dod8
re4 mi8 fad([ la]) re,
mi4( fad8) re4 r8
re4.( mi8.[ re16]) si8 \break
mi4.( fad8.[ mi16]) dod8
re4 mi8 fad([ la]) re,
%--- 19
mi4( fad8) re4\fermata re8
fad4.~ fad4 re8
la2.
si8. dod16 si8 mi4 dod8 \break
re8. la16 fad'8 mi4.\fermata
mi4 mi8 mi4 mi8 
fad8.->([mi16]) dod([ la]) dod4 si8
%--- 26
mi4 mi8 mi4 mi8 
fad8.->([mi16]) dod([ la]) dod4( si8) \break
dod4 mi8 re4 la8
sol'4 fad16([ re]) fad4.(
mi4) r8 r4 r8
re4 re8 re4 si8
%--- 32-38
mi4 mi8 mi4 dod8
re4 mi8 fad la la,16 re \break
mi4( fad8) re4 r8
re4 re8 mi8.([ re16]) si8
mi4 mi8 fad8.->([ mi16]) dod8
re4 mi8 fad la\fermata la,16 re
mi4( fad8) re4.\fermata
\bar "|."
}

tenoreIPart = { \tenoreI }
tenoreIMidi = { \transpose do do, \tenoreI }

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
%--- 0
\partial 8 s8\p
%--- 1
s8.\cr s16\! s8.\decr s16\! s4
s2.
s2.\pp
s8. s16\cr s8\! s4\decr s8\!
s2.\pp
%--- 6
s2.*3
s4. s4\cr s8\!
s4\decr s16 s16\! s4.
s2.
%--- 12
s2.\pp
s2.
s4\mf s8\cr s8\!\decr s8\! s8
s2.
s2.\pp
s2.
s4\mf s8\cr s8\!\decr s8\! s8
%--- 19
s4. s4 s8\p
s8.\cr s16\! s8.\decr s16\! s4
s2.
s2.\pp
s8. s16\cr s8\! s4\decr s8\!
s2.\pp
s2.
%--- 26
s2.*2
s4. s4\cr s8\!
s4\decr s16 s16\! s4.
s2.
s2.\pp
%--- 32-38
s2.
s4\mf s8\cr s8\!\decr s8\! s8
s2.
s2.\pp
s2.
s4\mf s8\cr s8\!\decr s8\! s8
s2.
}

%%%%%%%%%%%%%%%%%%%% MIDI
dynMidiTenoreI = {
%--- 0
\partial 8 s8\p
%--- 1
s4.\mp s4 s8\p
s2.
s2.\pp
s8. s16\cr s8\!\p \TEMPOFERMATA s4 s16 s16\ppppp \TEMPOBASE
s32 s8..\pp s2
%--- 6
s2.*3
s4. s4\cr s8\!\p
s4\decr s16 s16\!\pp s4.
s2.
%--- 12
s2.\pp
s2.
s4\mf s8\cr s8\!\f\decr s8\!\mf s8
s2.
s2.\pp
s2.
s4\mf s8\cr s8\!\f\decr s8\!\mf s8
%--- 19
s4. \TEMPOFERMATA s8. s16\ppppp \TEMPOBASE s64 s16..\p
s4.\mp s4 s8\p
s2.
s2.\pp
s8. s16\cr s8\!\p \TEMPOFERMATA s4 s16 s16\ppppp \TEMPOBASE
s32 s8..\pp s2
s2.
%--- 26
s2.*2
s4. s4\cr s8\!\p
s4\decr s16 s16\!\pp s4.
s2.
s2.\pp
%--- 32-38
s2.
s4\mf s8\cr s8\!\f\decr s8\!\mf s8
s2.
s2.\pp
s2.
s4\mf s8\cr s8\!\f\decr \TEMPOFERMATAL s16.\!\mf s32.\ppppp \TEMPOFINA s16..\mp
s4. \TEMPOFINB s4.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. TENORE II : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenoreII = \relative do'' {
%--- 0
\partial 8 la8
%--- 1
re4.~ re4 la8
fad2.
sol8. sol16 sol8 sib4 sib8
la8. la16 re8 dod4.\fermata
re4 dod8 re4 si8 
%--- 6
dod4-> la8 la4 sold8
re'4 dod8 re4 si8 
dod4-> la8 la4 sold8
sol!4 dod8 re4 re8
dod4 re8 re4( si8)
dod4 r8 r4 r8
%--- 12
la4_\SCHWEI ( lad8) si4 r8
si4_\SCHWEI ( sid8) dod4 r8
la4 dod8 re4 la8
dod4. re4 r8
la4_\SCHWEIB ( do8) si4 r8
si4_\SCHWEI ( re8) dod!4 r8
la4 dod8 re4 la8
%--- 19
dod4. re4\fermata la8
re4.~ re4 la8
fad2.
sol8. sol16 sol8 sib4 sib8
la8. la16 re8 dod4.\fermata
re4 dod8 re4 si8 
dod4-> la8 la4 sold8
%--- 26
re'4 dod8 re4 si8 
dod4-> la8 la4( sold8)
sol!4 dod8 re4 re8
dod4 re8 re4( si8
dod4) r8 r4 r8
la4 lad8 si4 si8
%--- 32-38
si4 sid8 dod4 dod8
la!4 dod8 re re la16 la
dod4. re4 r8
la4 do8 si4 si8
si4 re8 dod!4-> dod8
la4 dod8 re re\fermata la16 la
dod4. la4.\fermata
}

tenoreIIPart = { \tenoreII }
tenoreIIMidi = { \transpose do do, \tenoreII }

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
%                                           B2a. TENORE II : DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartTenoreII = {
\dynamicUp
%--- 0
\partial 8 s8\p
%--- 1
s8.\cr s16\! s8.\decr s16\! s4
s2.
s2.\pp
s8. s16\cr s8\! s4\decr s8\!
s2.\pp
%--- 6
s2.*3
s4. s4\cr s8\!
s4\decr s16 s16\! s4.
s2.
%--- 12
s2.\pp
s2.
s4\mf s16\cr s16\! \TSCREXO #'(1 . 0) s8^\SFORZATO s4
s2.
s2.\pp
s2.
s4\mf s16\cr s16\! \TSCREXO #'(1 . 0) s8^\SFORZATO s4
%--- 19
s4. s4 s8\p
s8.\cr s16\! s8.\decr s16\! s4
s2.
s2.\pp
s8. s16\cr s8\! s4\decr s8\!
s2.\pp
s2.
%--- 26
s2.*2
s4. s4\cr s8\!
s4\decr s16 s16\! s4.
s2.
s2.\pp
%--- 32-38
s2.
s4\mf s8\cr s8\!\decr s8\! s8
s2.
s2.\pp
s2.
s4\mf s8\cr s8\!\decr s8\! s8
s2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B3.	BASSO I : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassoI = \relative do {
%--- 0
\partial 8 fad8
%--- 1
la4.~ la4 fad8
re2.
re8. re16 re8 sol4 sol8
fad8. fad16 la8 la4.\fermata
si4 lad8 si4 sold8
%--- 6
la!4-> mi8 mi4 mi8
si'4 lad8 si4 sold8
la!4-> mi8 mi4 mi8
mi4 sol!8 fad4 fad8
mi4 re16([ fad]) la4( sold8)
la4 r8 r4 r8
%--- 12
fad4. sol!4 r8
sold4. la4 r8
fad4 la8 re4 fad,8
sol!4( la8) fad4 r8
fad4( la8) sol4 r8
sold4( si8) la4 r8
fad4 la8 re4 fad,8
%--- 19
sol!4( la8) fad4\fermata fad8
la4.~ la4 fad8
re2.
re8. re16 re8 sol4 sol8
fad8. fad16 la8 la4.\fermata
si4 lad8 si4 sold8
la!4-> mi8 mi4 mi8
%--- 26
si'4 lad8 si4 sold8
la!4-> mi8 mi4.
mi4 sol!8 fad4 fad8
mi4 re16([ fad]) la4( sold8
la4) r8 r4 r8
fad4 fad8 sol!4 sol8
%--- 32-38
sold4 sold8 la4 la8
fad4 la8 re fad, fad16 re
sol!4( la8) fad4 r8
fad4 la8 sol4 sol8
sold4 si8 la4-> la8
fad4 la8 re fad,\fermata fad16 fad
sol!4( la8) fad4.\fermata
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
%--- 0
\partial 8 s8\p
%--- 1
s8.\cr s16\! s8.\decr s16\! s4
s2.
s2.\pp
s8. s16\cr s8\! s4\decr s8\!
s2.\pp
%--- 6
s2.*3
s4. s4\cr s8\!
s4\decr s16 s16\! s4.
s2.
%--- 12
s2.\pp
s2.
s4\mf \PINEXO #'(0 . 1.5) s16\cr s16\! \TSCREXO #'(1 . 0) s8^\SFORZATO s4
s2.
s2.\pp
s2.
s4\mf \PINEXO #'(0 . 1.5) s16\cr s16\! \TSCREXO #'(1 . 0) s8^\SFORZATO s4
%--- 19
s4. s4 s8\p
s8.\cr s16\! s8.\decr s16\! s4
s2.
s2.\pp
s8. s16\cr s8\! s4\decr s8\!
s2.\pp
s2.
%--- 26
s2.*2
s4. s4\cr s8\!
s4\decr s16 s16\! s4.
s2.
s2.\pp
%--- 32-38
s2.
s4\mf s8\cr s8\!\decr s8\! s8
s2.
s2.\pp
s2.
s4\mf s8\cr s8\!\decr s8\! s8
s2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B4.	BASSO II : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassoII = \relative do {
%--- 0
\partial 8 re8
%--- 1
re4.~ re4 re8
re2.
re8. re16 re8 re4 re8
re8. re16 re8 la4.\fermata
mi'4 mi8 mi4 mi8
%--- 6
mi4-> la,16([ dod]) mi4 mi8
mi4 mi8 mi4 mi8
mi4-> la,16([ dod]) mi4 mi8
la,4 la8 la4 la8
la4 la8 la4.
la4 r8 r4 r8
%--- 12
re4. sol!4 r8
mi4. la4 r8
r4 r8 r fad_\AUSDER la
la,4. re4 r8
re4. sol4 r8
mi4. la4 r8
r4 r8 r fad_\AUSDERB la
%--- 19
la,4. re4\fermata re8
re4.~ re4 re8
re2.
re8. re16 re8 re4 re8
re8. re16 re8 la4.\fermata
mi'4 mi8 mi4 mi8
mi4-> la,16([ dod]) mi4 mi8
%--- 26
mi4 mi8 mi4 mi8
mi4-> la,16([ dod]) mi4.
la,4 la8 la4 la8
la4 la8 la4.~
la4 r8 r4 r8
re4 re8 sol4 sol8
%--- 32-38
mi4 mi8 la4 la8
r4 r8 r4 fad16 re
la4. re4 r8
re4 re8 sol4 sol8
mi4 mi8 la4-> la8
r4 r8 r8 r8^\fermataMarkup fad16 re
la4. re4.\fermata
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
%                                           B4a. BASSO II : DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartBassoII = {
\dynamicUp
%--- 0
\partial 8 s8\p
%--- 1
s8.\cr s16\! s8.\decr s16\! s4
s2.
s2.\pp
s8. s16\cr s8\! s4\decr s8\!
s2.\pp
%--- 6
s2.*3
s4. s4\cr s8\!
s4\decr s16 s16\! s4.
s2.
%--- 12
s2.\pp
s2.*3
s2.\pp
s2.*2
%--- 19
s4. s4 s8\p
s8.\cr s16\! s8.\decr s16\! s4
s2.
s2.\pp
s8. s16\cr s8\! s4\decr s8\!
s2.\pp
s2.
%--- 26
s2.*2
s4. s4\cr s8\!
s4\decr s16 s16\! s4.
s2.
s2.\pp
%--- 32-38
s2.*3
s2.\pp
s2.*3
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
   \new Voice = "tenoreII"  << \notePartTenoreII \dynPartTenoreII >>
   \new Voice = "bassoI"    << \notePartBassoI   \dynPartBassoI   >>
   \new Lyrics \lyricsto "bassoI" \poemeI
   \new Voice = "bassoII"   << \notePartBassoII  \dynPartBassoII  >>
  >>
 >>
 \layout { }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE MIDI SEULE
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
 ("f" .     0.80)
 ("mf" .    0.67)
 ("mp" .    0.56)
 ("p" .     0.47)
 ("pp" .    0.40)
 ("ppp" .   0.40)
 ("pppp" .  0.35)
 ("ppppp" . 0.01) )
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
  \new Staff = "tenoreI"   { \SILENCE << \noteMidiTenoreI   \dynMidiTenoreI >> }
  \new Staff = "tenoreII"  { \SILENCE << \noteMidiTenoreII  \dynMidiTenoreI >> }
  \new Staff = "bassoI"    { \SILENCE << \noteMidiBassoI    \dynMidiTenoreI >> }
  \new Staff = "bassoII"   { \SILENCE << \noteMidiBassoII   \dynMidiTenoreI >> }
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
%                                         FIN DU FICHIER SchubertF-D983C-DieNacht.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
