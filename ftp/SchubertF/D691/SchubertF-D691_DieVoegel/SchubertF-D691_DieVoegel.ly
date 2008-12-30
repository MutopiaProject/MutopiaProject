%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D691-DieVoegel.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Die Vögel", für eine Singstimme mit Klavierbegleitung
%                                       AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.57"
\include "italiano.ly"

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")

line-width = 186\mm
#(define left-margin (/ (- paper-width  (* 186 mm)) 2))
 indent = 22\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Die Vögel (D.691)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Die Vögel (D.691)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "Die Vögel" }
 subsubtitle = " "
 poet = \markup { \column {
  \line { \bold "Friedrich von Schlegel" }
  \line { \small "(1772-1829)" } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.691 (Op. 172, No 6, März 1820)" }
% MUTOPIA
 mutopiatitle = "Die Vögel"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Friedrich von Schlegel"
 mutopiaopus = "D.691 (Op. 172, No. 6)"
 mutopiainstrument = "Voice and Piano"
 date = "1820"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1557"
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
TEMPOBASE = \tempo 8=132
%----- TONALITÉS ET MESURES
KEY   = { \key la \major }
TIME  = { \time 3/8 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-4 "Lieblich." } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "piccolo"
 \set Staff.midiMinimumVolume = #0.6
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic guitar (nylon)"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
IPIANOBAS = {
 \set Staff.midiInstrument = "acoustic guitar (nylon)"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
%----- IGNORER UNE COLLISION
IGNCOLL  = \once \override NoteColumn #'ignore-collision = ##t
SFORZATO = \markup { \musicglyph #"scripts.sforzato" }
%----- FUSIONNER NOTE ET NOTE POINTEE
MERGEDD  = \once \override Staff.NoteCollision #'merge-differently-dotted = ##t
%----- REPOSITIONNEMENT DES MARKUP
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
%----- REPOSITIONNEMENT DES DYNAMIQUES
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
\set fontSize = #-.5

%--- 4
Wie lieb -- lich und __ fröh -- lich, zu __ schwe -- ben, zu sin -- gen, __
von __ glän -- zen -- der __ Hö -- he zur __ Er -- de zu bli -- cken! __

%--- 18
Die Men -- schen sind thö -- richt, sie kön -- nen nicht flie -- gen, sie kön -- nen nicht flie -- gen.

%--- 28
Sie jam -- mern in Nö -- then, wir flat -- tern gen Him -- mel, wir flat -- tern gen Him -- mel.

%--- 38
Der __ Jä -- ger will __ tö -- dten, dem __ Früch -- te wir pick -- ten; __
wir __ müs -- sen __ ihn __ höh -- nen, und __ Beu -- te ge -- win -- nen. __
es dampft das Thal, es braust das Meer, es braust das Meer.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chant = \relative do'' {
%--- 0
\partial 8 r8
%--- 1
R4.*3
r8 r red16[ mi]
fad16[ re!] si8 dod16[ re]
mi16[ dod] la8 la16[ dod]
%--- 7
mi,8. mi16 mi8
la16[ dod] mi4 ~
mi4.
r8 r red16[ mi]
fad16[ re!] si8 dod16[ re]
mi16[ dod] la8 la16[ dod]
%--- 13
mi,8. mi'16 mi8
dod8 la4 ~
la4.
R4.*2
r8 r dod
%--- 19
lad8 si dod
lad8 si dod
red8 dod red
mi8 sold mi
red8 dod red
mi8 sold r
%--- 25
R4.*3
r8 r dod,
lad8 si dod
lad8 si dod
%--- 31
red8 dod red
mi8 sold mi
red8. dod16 red8
mi8 sold r
R4.*2
%--- 37
R4.
r8 r red16[ mi]
fad16[ re!] si8 dod16[ re]
mi16[ dod] la8 la16[ dod]
mi,8. mi16 mi8
la16[ dod] mi4 ~
%--- 43
mi4.
r8 r red16[ mi]
fad16[ re!] si8 dod16[ re]
mi16[ dod] la8 la16[ dod]
mi,8. mi'16 mi8
dod8 la4 ~
%--- 49-55
la4.
R4.*5
R4.^\fermataMarkup
\bar "|."
}

chantPart = { \chant }
chantMidi = { \transpose do do' \chant }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme "
 \chantPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \KEY \TIME
 \ICHANT
 \chantMidi
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

pianoHaut = \relative do'' {
%--- 0
\partial 8 mi16([ dod]
%--- 1
mi8[ la16]) r dod,([ la]
dod8[ mi16]) r la,([ si]
dod16[ la mi la si mi])
la,([ mi dod mi dod mi])
re([ mi sold mi re mi])
dod([ mi la mi dod mi])
%--- 7
re([ mi sold mi re mi])
dod([ mi la mi dod mi])
<re si'>([ mi <dod la'> mi <re sold> mi])
<dod la'>([ mi dod mi dod mi])
re([ mi sold mi re mi])
dod([ mi la mi dod mi])
%--- 13
re([ mi sold mi re mi])
dod([ mi la mi dod mi])
<fad re'>([ la <sol mi'> la <fad re'> la])
<mi dod'>([ la <re, si'> mi <dod la'> mi])
<re si'>([ mi <red dod'> mi <re si'> mi])
<dod la'>([ mi dod mi la mi])
%--- 19
fadd([ si, sold' si, la'! si,])
fadd'([ si, sold' si, la' si,])
fad'([ si, mi si fad' si,])
sold'([ si, si' si, sold' si,])
fad'([ si, mi si fad' si,])
sold'([ si, si' si, <mi sold> si])
%--- 25
<dod la'>([ si si' si, <red fad> si])
<mi sold>([ si si' si, <mi sold> si])
<dod la'>([ si si' si, <red fad> si])
<mi sold>([ si si' si, la' si,])
fadd'([ si, sold' si, la' si,])
fadd'([ si, sold' si, la' si,])
%--- 31
fad'([ si, mi si fad' si,])
sold'([ si, si' si, sold' si,])
fad'([ si, mi si fad' si,])
sold'([ si, si' si, <mi sold> si])
<dod la'>([ si si' si, <red fad> si])
<mi sold>([ si si' si, <mi sold> si])
%--- 37
<dod la'>([ si si' si, <red fad> si])
<mi sold>([ si si' si, mi sold])
re!([ mi sold mi re mi])
dod([ mi la mi dod mi])
re([ mi sold mi re mi])
dod([ mi la mi dod mi])
%--- 43
<re si'>([ mi <dod la'> mi <re sold> mi])
<dod la'>([ mi dod mi dod mi])
re([ mi sold mi re mi])
dod([ mi la mi dod mi])
re([ mi sold mi re mi])
dod([ mi la mi dod mi])
%--- 49-55
<fad re'>([ la <sol mi'> la <fad re'> la])
<mi dod'>([ la <re, si'> mi <dod la'> mi])
<re si'>([ mi <red dod'> mi <re si'> mi])
<dod la'>([ mi dod mi la mi])
<dod la'>([ mi dod mi la mi])
<dod la'>([ mi dod mi la mi])
<dod la'>4.\fermata
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 \pianoHaut
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEY \TIME
 \IPIANOHAUT
 \pianoHaut
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoBasI = \context Staff \relative do' \new Voice { \oneVoice
%--- 0
\partial 8 mi16([ dod]
%--- 1
mi8[ la16]) r dod,([ la]
dod8[ mi16]) r la,([ si]) \voiceOne
<la dod>4( <sold re'>8) \oneVoice
<la dod>8 r <la, mi' la> \voiceOne
r <mi' si'>[ <mi si'>]
r <mi la>[ <mi la>]
%--- 7
r <mi si'>[ <mi si'>]
r <mi la>[ <mi la>]
sold([ la si]
la4) r8
r <mi si'>[ <mi si'>]
r <mi la>[ <mi la>]
%--- 13
r <mi si'>[ <mi si'>]
r <mi la>[ <mi la>]
la,([ dod re]
la'[ sold la])
mi4. ~
mi4 r8 \oneVoice
%--- 19
<mi, si'> r r
<mi si'> r r
<si si'> r <si si'>
<mi si'> r r
<si si'> r <si si'>
<mi si'> r mi'(
%--- 25
fad) r si,(
mi) r mi(
fad) r si,(
mi) r r
<mi, si'> r r
<mi si'> r r
%--- 31
<si si'> r <si si'>
<mi si'> r r
<si si'> r <si si'>
<mi si'> r mi'(
fad) r si,(
mi) r mi(
%--- 37
fad) r si,(
mi) r r \voiceOne
r si'[ si]
r <mi, la>[ <mi la>]
r <mi si'>[ <mi si'>]
r <mi la>[ <mi la>]
%--- 43
sold([ la si]
la4) r8
r <mi si'>[ <mi si'>]
r <mi la>[ <mi la>]
r <mi si'>[ <mi si'>]
r <mi la>[ <mi la>]
%--- 49-55
la,([ dod re]
la'[ sold la])
mi4. ~
\IGNCOLL mi4. \oneVoice
<la, mi'>4. ~
<la mi'>4.
<la mi'>4.\fermata
}


%%%%%%%%%%%%%%%%%%%% VOIX II
pianoBasII = \context Staff \relative do \new Voice { \voiceTwo
%--- 0
\partial 8 s8
%--- 1
s4.*2
mi4.
s4.
la,4.
la
%--- 7
la
la
<la mi'> ~
<la mi'>4 r8
la4.
la
%--- 13
la
la
\MERGEDD la ~
la
la8([ fad sold]
la4) r8
%--- 19-38
s4.*20
%--- 39
mi'4.
la,
la
la
%--- 43
<la mi'> ~
<la mi'>4 r8
la4.
la
la
la
%--- 49-55
\MERGEDD la ~
la
la8([ fad sold]
\stemUp la4.)
s4.*3
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
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
%--- 0
\partial 8 s8\p
%--- 1
\TSCREXO #'(1 . 1) s4.-\SFORZATO
\TSCREXO #'(1 . 1) s4.-\SFORZATO
s4.*2
\DYNEXO #'(1.5 . 0) s4.\pp
%--- 6-55
s4.*50
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = {
%--- 0
\TEMPOBASE
\partial 8 s8\p
%--- 1
s4.*4
s4.\pp
%--- 6-55
s4.*50
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<
  \new Voice = "chant"  << \notePartChant \dynPartChant >>
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
%                                           E. SORTIE MIDI SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME \partial 4 s4 }

\score {
 <<
  \new Staff = "chant"      { \SILENCE << \noteMidiChant      \dynMidiPiano >> }
  \new Staff = "pianoUp"    { \SILENCE << \noteMidiPianoHaut  \dynMidiPiano >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBas   \dynMidiPiano >> }
 >>
 \midi { }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         FIN DU FICHIER SchubertF-D691-DieVoegel.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
