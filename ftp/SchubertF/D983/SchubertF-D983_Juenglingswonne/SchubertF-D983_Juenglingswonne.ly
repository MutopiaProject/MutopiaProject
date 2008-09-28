%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D983-Juenglingswonne.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Jünglingswonne", für eine Singstimme mit Klavierbegleitung
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
  " " { \italic "♫  Franz Schubert: Jünglingswonne (D.983)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fontsize #2 \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Jünglingswonne (D.983)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \center-column { \fontsize #1.5 "Vier Gesänge" \fontsize #-1.5 "für vier Männerstimmen" "Op. 17" " " } }
 subtitle = \markup { \center-column { \fontsize #7 "1. Jünglingswonne" " " } }
 subsubtitle = \markup { \center-column { \fontsize #3 "(D.983, Op. 17 No 1)" " " " " " " } }
 poet = \markup { \column {
  \line { \bold \fontsize #2 "Friedrich von Matthisson" }
  \line { \small "(1761-1831)" } } }
 composer = \markup \center-column { \fontsize #4 \bold "Franz Schubert" \small "(1797-1828)" "(Veröffentlichungsjahr: 1823)" }
% MUTOPIA
 mutopiatitle = "Jünglingswonne"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Friedrich von Matthisson"
 mutopiaopus = "D.983 (Op. 17/1)"
 mutopiainstrument = "Voice"
 date = "1823"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1562"
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
TEMPOBASE     = \tempo 4=120
TEMPOFERMATA  = \tempo 4=40
TEMPORALENTI  = \tempo 4=100
TEMPOFIN      = \tempo 4=90
%----- TONALITÉS ET MESURES
KEY   = { \key do \major }
TIME  = { \time 4/4 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-4.5 "Feurig." } }
%----- INSTRUMENTS
ITENOREI = {
 \set Staff.midiInstrument = "oboe"
 \set Staff.midiMinimumVolume = #0.2   %défaut: 0
 \set Staff.midiMaximumVolume = #0.7   %défaut
}
ITENOREII = {
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0.2   %défaut: 0
 \set Staff.midiMaximumVolume = #0.85  %défaut: 0.7
}
IBASSOI = {
 \set Staff.midiInstrument = "french horn"
 \set Staff.midiMinimumVolume = #0.2   %défaut: 0.1
 \set Staff.midiMaximumVolume = #1     %défaut: 0.7
}
IBASSOII = {
 \set Staff.midiInstrument = "bassoon"
 \set Staff.midiMinimumVolume = #0.2   %défaut: 0
 \set Staff.midiMaximumVolume = #1     %défaut: 0.6
}
%----- CRESCENDOS
CRESCTXT     = { \set crescendoText   = \markup { \bold \italic "cresc." }   \set crescendoSpanner = #'text }
CRESCTXTNO   = \unset crescendoSpanner #'text

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poemeI = \lyricmode {
\set fontSize = #-.5

So lang im deut -- schen Ei -- chen -- tha -- le,
Na -- tur, dein heh -- rer Schau -- er webt,
und bei des Mon -- des Gei -- ster -- strah -- le
der A -- dler Wo -- dan’s mich um -- schwebt, der A -- dler Wo -- dan’s mich um -- schwebt;

so lang in der Er -- wähl -- ten Bli -- cken
mir tau -- send Him -- mel of -- fen steh’n, __
und mit ver -- göt -- tern -- dem Ent -- zü -- cken
wir __ Arm in Arm durch’s __ Le -- ben geh’n;

so lang in wack’ -- rer Brü -- der Krei -- se
der Bun -- des -- kelch zur Wei -- he klingt,
und je -- der nach der Ahn -- herrn Wei -- se
in Tell’s und Herr -- mann’s Ju -- bel singt, in Tell’s __ und Herr -- mann’s Ju -- bel singt:

will ich den Gram den Win -- den ge -- ben,
selbst Au -- gen -- bli -- cken Krän -- ze weih’n, __
und noch, wo To -- des -- en -- gel schwe -- ben,
den __ Pfad mit __ Ro -- sen __ mir be -- streu’n,
und noch, wo To -- des -- en -- gel schwe -- ben,
den Pfad mit Ro -- sen mir be -- streu’n,
den Pfad mit Ro -- sen mir be -- streu’n, mit Ro -- sen be -- streu’n.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1.	TENORE I : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenoreI = \relative do'' {
%--- 0
\partial 4 sol4
%--- 1
mi'4.. re16 mi8. re16 mi8. re16
fa2 re4 sol,
do4.. si16 la8. do16 red8. si16
mi2. sol,4
mi'4.. re16 mi8. re16 mi8. re16
%--- 6
fa2 mi4 do!
la'2~ la8. sol16 fa8. sol16
fa4 sol la r8 fa
si,2~ si8. do16 la8. do16
mib4 re sol\fermata sol,
mi'!4.. mi16 mi8. mi16 re8. mi16
%--- 12
sol4.( fa8) re4. re8
mi4. re8 do8. do16 mi8. re16
re2( si4) sol
mi'4.. mi16 mi8. mi16 re8. mi16
la4~ ( la16[ sol fa mi]) re8 r mi8.->([ re16])
do4 mi8.->([ re16]) si4 mi8.->([ re16])
%--- 18
do4 mi8.->([ re16]) si4 r8 sol
mi'4.. re16 mi8. re16 mi8. re16
fa2 re4 sol,
do4.. si16 la8. do16 red8. si16
mi2. sol,4
mi'4.. re16 mi8. re16 mi8. re16
fa2 mi4 do!
%--- 25
la'2~ la8. sol16 fa8. sol16
fa4 sol la r8 fa
si,2~ si8. do16 la8. do16
mib4 re sol\fermata sol,
mi'!4.. mi16 mi8. mi16 re8. mi16
sol4.( fa8) re4. re8
%--- 31
mi4. re8 do8. do16 mi8. re16
re2( si4) sol
mi'4.. mi16 mi8. mi16 re8. mi16
la4~ ( la16[ sol fa mi]) re8 r mi8.->([ re16])
do4 mi8.->([ re16]) si4 mi8.->([ re16])
do4 mi8.->([ re16]) si4 r8 sol
%--- 37-45
si4.. sol16 do8. la16 re8. si16
mi4.( fa8) mi r mi4
fa4.. mi16 re8. fa16 mi8. re16
do4( la'2) sol4
fa4.. mi16 re8. fa16 mi8. re16
do8. do16 sol'2 mi8 mi
do1\espressivo\fermata
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
%                                           B1a. TENORE I : DYNAMIQUES PARTITION POUR TOUS / MIDI POUR TOUS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION
dynPartTenoreI = {
\dynamicUp
%--- 0
\partial 4 s4\f
%--- 1
s1*3
s2. s4\p
s1
%--- 6
s2. s4\ff
s1*3
s2. s4\pp
s1
%--- 12
s1*6
%--- 18
s2.. s8\f
s1*3
s2. s4\p
s1
s2. s4\ff
%--- 25
s1*3
s2. s4\pp
s1*2
%--- 31
s1*3
s2. \CRESCTXT s4\cr
s1
s2..\! \CRESCTXTNO s8\f
%--- 37-45
s1
s8.\cr s16 s16\! s16 s8\decr s16\! s8. s4\p
s1
s4 s2\fz s4\p
s1
s4 s2\fz s4
s1
}

%%%%%%%%%%%%%%%%%%%% MIDI
dynMidiTenoreI = {
%--- 0
\TEMPOBASE \partial 4 s4\f
%--- 1
s1*3
s2. s4\p
s1
%--- 6
s2. s4\ff
s1*3
s2 \TEMPOFERMATA s4 \TEMPOBASE s4\pp
s1
%--- 12
s1*6
%--- 18
s2.. s8\f
s1*3
s2. s4\p
s1
s2. s4\ff
%--- 25
s1*3
s2 \TEMPOFERMATA s4 \TEMPOBASE s4\pp
s1*2
%--- 31
s1*3
s2. s4\cr
s1
s2 s4\!\f s4
%--- 37-45
s1
s4\cr s4\!\ff\decr s8\!\f s8 s4\p
s1
s4 s2\mf s4\p
s1
s4 \TEMPORALENTI s2\mf s4\p
\TEMPOFIN s1\mp
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. TENORE II : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenoreII = \relative do'' {
%--- 0
\partial 4 sol4
%--- 1
do4.. si16 do8. si16 do8. si16
re2 si4 sol
do4.. si16 la8. do16 red8. si16
mi2. sol,4
do4.. si16 do8. si16 do8. si16
%--- 6
re2 dod4 do
fa2~ fa8. mi16 re8. mi16
re4 mi fa r8 fa
si,2~ si8. do16 la8. do16
mib4 re si\fermata sol
do4.. do16 do8. do16 si8. do16
%--- 12
mi4.( re8) sol,4. sol8
do4. si8 la8. la16 do8. si16
si2( sol4) sol
do4.. do16 do8. do16 si8. do16
fa4~ ( fa16[ mi re do]) si8 r do8.->([ si16])
la4 do8.->([ si16]) sol4 do8.->([ si16])
%--- 18
la4 do8.->([ si16]) sol4 r8 sol
do4.. si16 do8. si16 do8. si16
re2 si4 sol
do4.. si16 la8. do16 red8. si16
mi2. sol,4
do4.. si16 do8. si16 do8. si16
re2 dod4 do
%--- 25
fa2~ fa8. mi16 re8. mi16
re4 mi fa r8 fa
si,2~ si8. do16 la8. do16
mib4 re si\fermata sol
do4.. do16 do8. do16 si8. do16
mi4.( re8) sol,4. sol8
%--- 31
do4. si8 la8. la16 do8. si16
si2( sol4) sol
do4.. do16 do8. do16 si8. do16
fa4~ ( fa16[ mi re do]) si8 r do8.->([ si16])
la4 do8.->([ si16]) sol4 do8.->([ si16])
la4 do8.->([ si16]) sol4 r8 sol
%--- 37-45
si4.. sol16 do8. la16 re8. si16
si4( do) si8 r do4
do4.. do16 do8. do16 si8. si16
do4( fa2) mi4
do4.. do16 do8. do16 si8. si16
do8. do16 mi2 do8 do
sol1^\espressivo\fermata
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
%--- 0
\partial 4 sol4
%--- 1
sol4.. sol16 sol8. sol16 sol8. sol16
la2 sol4 sol
do,4.. si16 la8. do16 red8. si16
mi2. sol4
sol4.. sol16 sol8. sol16 sol8. sol16
%--- 6
la2 la4 do!
do2~ do8. do16 la8. do16
la4 do do r8 fa,
si,2~ si8. do16 la8. do16
mib4 re re\fermata sol
sol4.. sol16 sol8. sol16 sol8. sol16
%--- 12
sol2 sol4. sol8
sol4. sol8 fad8. fad16 fad8. fad16
sol2. sol4
sol4.. sol16 sol8. sol16 sol8. sol16
sol2 sol8 r sol4->
fad4 fad-> sol mi->
%--- 18
mi4 fad-> sol r8 sol
sol4.. sol16 sol8. sol16 sol8. sol16
la2 sol4 sol
do,4.. si16 la8. do16 red8. si16
mi2. sol4
sol4.. sol16 sol8. sol16 sol8. sol16
la2 la4 do!
%--- 25
do2~ do8. do16 la8. do16
la4 do do r8 fa,
si,2~ si8. do16 la8. do16
mib4 re re\fermata sol
sol4.. sol16 sol8. sol16 sol8. sol16
sol2 sol4. sol8
%--- 31
sol4. sol8 fad8. fad16 fad8. fad16
sol2. sol4
sol4.. sol16 sol8. sol16 sol8. sol16
sol2 sol8 r sol4->
fad4 fad-> sol mi->
mi4 fad-> sol r8 sol
%--- 37-45
si4.. sol16 do8. la16 re8. si16
sold4( la) sold8 r sol4
la4.. sol16 fa8. la16 sol8. fa16
mi4( do'2) do4
la4.. sol16 fa8. la16 sol8. fa16
mi8. do'16 do2 sol8 sol
mi1\espressivo\fermata
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
%                                           B4.	BASSO II : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassoII = \relative do' {
%--- 0
\partial 4 sol4
%--- 1
do,4.. sol16 do8. sol16 do8. sol16
re'2 sol,4 sol
do4.. si16 la8. do16 red8. si16
mi2. sol4
do,4.. sol16 do8. sol16 do8. sol16
%--- 6
re'2 la4 do!
fa2~ fa8. do16 re8. do16
re4 do fa r8 fa
si,2~ si8. do16 la8. do16
mib4 re sol,\fermata sol'
do,4.. do16 do8. do16 do8. do16
%--- 12
si4.( re8) sol4. sol8
do,4. do8 re8. re16 re8. re16
sol2( sol,4) sol'
do,4.. do16 do8. do16 do8. do16
si4.( re8) sol r do,4->
re4 re-> sol la,8.->([ si16])
%--- 18
do4 re-> sol r8 sol
do,4.. sol16 do8. sol16 do8. sol16
re'2 sol,4 sol
do4.. si16 la8. do16 red8. si16
mi2. sol4
do,4.. sol16 do8. sol16 do8. sol16
re'2 la4 do!
%--- 25
fa2~ fa8. do16 re8. do16
re4 do fa r8 fa
si,2~ si8. do16 la8. do16
mib4 re sol,\fermata sol'
do,4.. do16 do8. do16 do8. do16
si4.( re8) sol4. sol8
%--- 31
do,4. do8 re8. re16 re8. re16
sol2( sol,4) sol'
do,4.. do16 do8. do16 do8. do16
si4.( re8) sol r do,4->
re4 re-> sol la,8.->([ si16])
do4 re-> sol r8 sol
%--- 37-45
si4.. sol16 do8. la16 re8. si16
mi,2 mi8 r do4
do4.. do16 sol8. sol16 sol8. sol16
do4( fa2) do4
do4.. do16 sol8. sol16 sol8. sol16
do8. do16 do'2 do,8 do
do1\espressivo\fermata
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
   \new Voice = "tenoreII"  << \notePartTenoreII \dynPartTenoreI >>
   \new Voice = "bassoI"    << \notePartBassoI   \dynPartTenoreI   >>
   \new Lyrics \lyricsto "bassoI" \poemeI
   \new Voice = "bassoII"   << \notePartBassoII  \dynPartTenoreI  >>
  >>
 >>
 \layout { }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE MIDI SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME \partial 2. s2. }

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
%                                         FIN DU FICHIER SchubertF-D983-Juenglingswonne.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
