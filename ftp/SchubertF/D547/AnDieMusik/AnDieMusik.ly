%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER AnDieMusik.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                   FRANZ SCHUBERT: Gesang "An die Musik", für eine Singstimme mit Klavierbegleitung
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.30"
\include "italiano.ly"

% PAPIER: FORMAT MIXTE ADAPTÉ POUR A4 ET LETTER US
\paper {
 %paper-height = 279\mm
 %paper-width = 210\mm
 line-width = 180\mm
 between-system-padding = #0.5
 between-system-spacing = #0.5
}

\header {
 title = \markup { \fontsize #1.5 "An die Musik" }
 subtitle = \markup { \fontsize #0.1 \bold "Franz von Schober" \small "(1798-1882)" }
 subsubtitle = " "
 composer = \markup \center-align { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D 547 (Op. 88 N° 4, 1817)" }
% MUTOPIA
 mutopiatitle = "An die Musik"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Franz von Schober (1798-1882)"
 mutopiaopus = "D.547 (Op. 88, No. 4)"
 mutopiainstrument = "Voice and Piano"
 date = "1817"
 source = "C.F. Peters (Band I)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = "A source is freely available at http://www.dlib.indiana.edu/variations/scores/"
 footer = "Mutopia-2007/09/07-1001"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           COMMANDES ET FONCTIONS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           1. POUR AMÉLIORER LA PARTITION
%
% DEPLACER UNE DYNAMIQUE VERS LA DROITE, LA GAUCHE
dynamD = \once \override DynamicText #'extra-offset = #'(1.5 . 0)
pinceD = \once \override Hairpin #'extra-offset = #'(2 . 0)
pinceG = \once \override Hairpin #'extra-offset = #'(-0.5 . 0)
cresD = { \set crescendoText = \markup { \italic "   cresc." } \set crescendoSpanner = #'dashed-line }
% SUPPRESSION DU PointAndClick
PDFSimple =
#(define-music-function (parser location) ()
   (ly:set-option 'point-and-click #f)
   (make-music 'SequentialMusic 'void #t))
\PDFSimple

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           2. POUR AMÉLIORER LE VOLUME DE LA SORTIE MIDI

% Le volume de la mélodie a été étendu en totalité (de 0 à 1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Contrairement à ce que laisse supposer la partition originale, la mélodie est répétée à l'identique;
%  il n'existe que quelques différences graphiques pour le piano, sans aucun effet sur le jeu:
%  - mesure 3: l'accord "fad la re" est écrit "fad la" sur la portée du bas, "re" sur celle du haut, et en totalité
%    sur la portée du haut au 2e passage (mesure 23 de l'original)
%  - mesure 22, 2e temps: la liaison et les deux points sont au-dessus des notes, tandis qu'ils sont au-dessous
%    au 2e passage (mesure 42 de l'original).
%
%  Aussi la mélodie et les deux portées du piano sont-elles découpées en trois parties : une introduction,
%  un corps (joué deux fois) et une fin.
%  Le poème comprend deux strophes.
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  A. MELODIE
%     A1. Notes
%     A2. Dynamiques pour la sortie Midi
%  B. POEME
%  C. PIANO
%     C1. PIANO HAUT: Notes
%     C2. PIANO BAS: Notes
%     C3. PIANO: Dynamiques pour la sortie Partition
%     C4. PIANO: Dynamiques pour la sortie Midi
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
% 	                BIENVENUE A TOUTE SUGGESTION POUR AMELIORER LA PARTITION, LA SORTIE MIDI OU LE CODAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A1. MELODIE: Notes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% INTRO

meloNoteIntro = \relative do'' {

% 1 - 2
 R1
 R1
}

% CORPS

meloNoteCorps = \relative do'' {
 \repeat volta 2 {

% 3 23
 r4 la re re

% 4 24
 fad,2. si4
 \appoggiatura si8 re,4. re8 fad[( mi)] re[( mi)]
 fad4 re r2
 r4 la' si si

% 8 28
 dod,4. dod8 re4. re8
 fad8[( mi)] re[( mi)] fad2
 R1
 r4 re' mi4. sol,8

% 12 32
 fad4( la2) si8[( dod)]
 re4. fad8 mi[( dod)] la[( sol)]
 \appoggiatura sol8 fad4 fad r la
 si4. si8 si4 dod8[( re)]

% 16 36
 re4. re8 fad4. mi8
 \appoggiatura mi4 re2 r8 si dod re
 re4( fad,8) fad la4( dod,8) dod
 re2 r2

% 20 40
 R1
 R1
 R1
 } % fin du repeat
}

% FIN

meloNoteFin = \relative do'' {

% 43
 R1
 \bar "|."
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
meloNotePart = {
 \override DynamicTextSpanner #'dash-period = #-1.0
 \clef treble
 \time 2/2
 \key re \major
 \set autoBeaming = ##f
 s1*0^\markup { \bold \large { \hspace #-3.0 \italic Mäßig. } }
 \meloNoteIntro \meloNoteCorps \meloNoteFin
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
meloNoteMidi = {
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
 \meloNoteIntro \meloNoteCorps \meloNoteCorps \meloNoteFin
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A2. MELODIE: Dynamiques pour la sortie Midi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

meloDynMidi = {
 s1\mp
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% STROPHE 1

poemeUn = \lyricmode {
 \set fontSize = #-.5
 \set stanza = "1. "

% 3 - 9
 Du hol -- de Kunst, in wie -- viel grau -- en Stun -- den,
 Wo mich des Le -- bens wil -- der Kreis um -- strickt,
 
% 11 - 19
 Hast du mein Herz zu war -- mer Lieb ent -- zun -- den,
 Hast mich in ei -- ne beß -- re Welt ent -- rückt,
 in ei -- ne beß -- re Welt ent -- rückt.
}

% STROPHE 2

poemeDeux = \lyricmode {
 \set fontSize = #-.5
 \set stanza = "2. "

% 23 - 29
 Oft hat ein Seuf -- zer, dei -- ner Harf ent -- flos -- sen,
 Ein sü -- ßer, hei -- li -- ger Ak -- kord von dir
 
% 31 - 39
 Den Him -- mel beß -- rer Zei -- ten mir er -- schlos -- sen,
 Du hol -- de Kunst, ich dan -- ke dir da -- für,
 Du hol -- de Kunst, ich dan -- ke dir!
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT: Notes
%                   (seulement quelque différences d'écriture: mesures 3/23 et 22/42)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% INTRO

pianoHautNoteIntro = \relative do' {

% 1
 <la re fad>8[ <la re fad> <la re fad> <la re fad>] <la re fad>[ <la re fad> <la re fad> <la re fad>]
 <la re la'>->[ <la re la'> <la re la'> <la re la'>] <la dod sol'>[ <la dod sol'> <sol la dod mi> <sol la dod mi>]
}

% CORPS

pianoHautNoteCorps = \relative do {
 \repeat volta 2 {
 
% 3 23
 <fad la re>8[ <la re fad> <la re fad> <la re fad>] <la re fad>[ <la re fad> <la re fad> <la re fad>]
 
% 4 24
 <la re fad>8[ <la re fad> <la re fad> <la re fad>] <fad re' fad>[ <fad re' fad> <si re fad> <si re fad>]
 r8 <la re fad>[ <la re fad> <la re fad>] r <la dod sol'>[ <la dod sol'> <la dod sol'>]
 r8 <la re fad>[ <la re fad> <la re fad>] <la re fad>[ <la re fad> <la re fad> <la re fad>]
 <la re la'>8[ <la re la'> <la re la'> <la re la'>] <si re si'>[ <si re si'> <si re si'> <si re si'>] \clef bass
 
% 8 28
 r8 <mi, sol dod>[ <mi sol dod> <mi sol dod>] r <re fad re'>[ <re fad re'> <re fad re'>] \clef treble
 r8 <sol la mi'>[ <sol la mi'> <sol la mi'>] r <fad la fad'>[ <fad la fad'> <fad la fad'>]
 <la dod mi>8[ <la dod mi> <la dod la'> <la dod la'>] <si re la'>[ <si re la'> <dod mi la> <dod mi la>]
 <re fad la>8[ <re fad la> <re fad la> <re fad la>] <mi sol la>[ <mi sol la> <mi sol la> <mi sol la>]
 
% 12 32
 <re fad la>8[ <re fad la> <dod mi la> <dod mi la>] <si re la'>[ <si re la'> <dod mi la> <dod mi la>]
 <re fad la>8[ <re fad la> <re fad la> <re fad la>] <mi sol la>[ <mi sol la> <mi sol la> <mi sol la>]
 r8 <la, re fad>[ <la re fad> <la re fad>] <la dod sol'>[ <la dod sol'> <do re la'> <do re la'>]
 r8 <si re si'>[ <si re si'> <si re si'>] r <re fa si>[ <re fa si> <re fa si>]
 
% 16 36
 r8 <re fad! la>[ <re fad la> <re fad la>] r <mi fad dod'>[ <mi fad dod'> <mi sol dod>]
 r8 <re fad re'>[ <re fad re'> <re fad re'>] r <re fa si>[ <re fa si> <re fa si>]
 r8 <re fad! la>[ <re fad la> <re fad la>] r <sol, la dod>[ <sol la dod> <sol la dod>]
 <fad la re>8[ <re' fad re'> <re fad re'> <re fad re'>] <re fad re'>[ <re fad re'> <mi sol dod> <fad la re>]
 
% 20 40
 << { <la dod>8^>[ ^(<sol si>) <re sol si>^. <re sol si>^.] <re sol si>[ <si sol' si> <re sol si> <mi sol si>] } \\
    { re4 } >>
 <sol si>8[( <la, fad' la>) <la fad' la>_. <la fad' la>_.] <la fad' la>[ <la fad' la> <dod fad la> <re fad la>]
 << { <red fad la>8^>[ ^(<mi sol>) <si mi sol>^. <si mi sol>^.] <dod mi sol>^>[ _(<sol la dod mi>) <sol la dod mi>_. <sol la dod mi>_.] } \\
    { si4 } >>
 } % fin du repeat
}

% FIN

pianoHautNoteFin = \relative do' {

% 43
 <sol la dod mi>8^>[( <fad la re>) <fad la re>-. <fad la re>-.] <fad la re>4 r4
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
pianoHautNotePart = {
 \clef treble
 \time 2/2
 \key re \major
 \set autoBeaming = ##f
 \pianoHautNoteIntro \pianoHautNoteCorps \pianoHautNoteFin
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
pianoHautNoteMidi = {
 \set Staff.midiInstrument = "acoustic grand"
 \pianoHautNoteIntro \pianoHautNoteCorps \pianoHautNoteCorps \pianoHautNoteFin
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS: Notes
%                              (seulement quelque différences d'écriture: mesure 3/23)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% INTRO

pianoBasNoteIntro = \relative do {

% 1
 r4 la( re) re^.
 fad,2 la4-. la,-.
}


% CORPS

pianoBasNoteCorps = \relative do, {
 \repeat volta 2 {

% 3 23
 re4 r r2

% 4 24
 r4 fad( si) sold-.
 la4 r la r
 re4^. la( re) re^.
 fad,2(sol)

% 8 28
 la4( lad si2)
 dod( re)
 la4( la' sold sol)
 fad4( re dod la)

% 12 32
 re4( la8[ la'] sold4 sol)
 fad4(re dod4. la8)
 re2( mi4 fad)
 sol2( sold)

% 16 36
 la2( lad)
 si2( sold)
 la2( la,)
 re4 r r2

% 20 40
 <sol,, sol'>2 r8 sol'-.[ si-. dod-.]
 <re, re'>2 r8 re'^.[ mi^. fad^.]
 <sol, sol'>2 la
 } % fin du repeat
}


% FIN

pianoBasNoteFin = \relative do, {

% 43
 <re re'>2. r4
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
pianoBasNotePart = {
 \clef bass
 \time 2/2
 \key re \major
 \set autoBeaming = ##f
 \pianoBasNoteIntro \pianoBasNoteCorps \pianoBasNoteFin
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
pianoBasNoteMidi = {
 \set Staff.midiInstrument = "acoustic grand"
 \pianoBasNoteIntro \pianoBasNoteCorps \pianoBasNoteCorps \pianoBasNoteFin
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO: Dynamiques pour la sortie Partition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% INTRO

pianoDynPartIntro = {

% 1
 s2\p s2
 s1
}

% CORPS

pianoDynPartCorps = {
 \repeat volta 2 {

% 3 23
 \dynamD s2\pp s2

% 4 24
 s1  s1  s1  s1
 
% 8 28
 s1  s1  s1  s1
 
% 12 32
 s1  s1  s1
 \cresD s2\cr s2\!

% 16 36
 s8 s8\cr s8 s8\! s8 \pinceG s8\decr s8 s8\!
 s2 s8 s8\p s4
 s1
 \pinceD s2\cr s4 s8\! s8
 
% 20 40
 \dynamD s1\fp
 \dynamD s1\fp
 s1
 } % fin du repeat
}

% FIN

pianoDynPartFin = {

% 43
 s1
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
pianoDynPart = {
 \override DynamicTextSpanner #'dash-period = #-1.0
 \pianoDynPartIntro \pianoDynPartCorps \pianoDynPartFin
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO: Dynamiques pour la sortie Midi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% INTRO

pianoDynMidiIntro = {

% 1
 s2\p s2
 s1
}

% CORPS

pianoDynMidiCorps = {

% 3 23
 s2\pp s2

% 4 24
 s1  s1  s1  s1
 
% 8 28
 s1  s1  s1  s1
 
% 12 32
 s1  s1  s1
 s1\cr

% 16 36
 s2 s2\!\f\decr
 s2\!\mf s2\p
 s1
 s2\cr s4 s4\!\mf
 
% 20 40
 s8\mf s8\p s2.
 s8\mf s8\p s2.
 s1
}

% FIN

pianoDynMidiFin = {
% 43
 s1
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
pianoDynMidi = {
 \pianoDynMidiIntro \pianoDynMidiCorps \pianoDynMidiCorps \pianoDynMidiFin
 }

 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION (pas de \midi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
 <<
  \new Voice = "mel" << \meloNotePart >>
  \new Lyrics \lyricsto "mel" \poemeUn
  \new Lyrics \lyricsto "mel" \poemeDeux
  \new PianoStaff <<
	  \new Staff = "up" << \pianoHautNotePart >>
   \new Dynamics = "dynamics" \pianoDynPart
   \new Staff = "down" << \pianoBasNotePart >>
  >>
 >>
 \layout {
 	\context { \RemoveEmptyStaffContext }
 	\context {
   \Score
   \override VerticalAxisGroup #'remove-first = ##t
	  \override SpacingSpanner #'spacing-increment = #1.0
	 }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice % So that \cresc works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 0.5)
   \override DynamicLineSpanner #'Y-offset = #0

   \consists "Script_engraver"
   \consists "Dynamic_engraver"
   \consists "Text_engraver"

   \override TextScript #'font-size = #2
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

\score {
 <<
  \new Voice = "mel" << \meloNoteMidi \meloDynMidi >>
  \new PianoStaff <<
   \new Staff = "up" << \pianoHautNoteMidi \pianoDynMidi >>
   \new Staff = "down" << \pianoBasNoteMidi \pianoDynMidi >>
  >>
 >>
 \midi {
	 \context {
   \Score
	  tempoWholesPerMinute = #(ly:make-moment 84 4)
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER AnDieMusik.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
