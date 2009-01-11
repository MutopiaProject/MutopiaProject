%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                                FICHIER Erlkoenig.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                     FRANZ SCHUBERT: Gesang "Erlkönig", für eine Singstimme mit Klavierbegleitung
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.65"
\include "italiano.ly"

#(set-global-staff-size 18.1875)

% PAPIER: FORMAT MIXTE ADAPTÉ POUR A4 ET LETTER US
\paper {
 %paper-height = 279\mm
 %paper-width = 210\mm
 line-width = 180\mm
 between-system-padding = #0.1
 between-system-spacing = #0.1
 ragged-last-bottom = ##f
 ragged-bottom = ##f
% system-count = #30
}

\header {
 title = \markup { \fontsize #1.5 "Erlkönig" }
 subtitle = \markup { \fontsize #0.1 \bold "Johann Wolfgang von Goethe" \small "(1749-1832)" }
 subsubtitle = " "
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D 328 (Op. 1, 1815)" }
% MUTOPIA
 mutopiatitle = "Erlkönig (alternative typesetting)"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Johann Wolfgang von Goethe (1749-1832)"
 mutopiaopus = "D.328 (Op. 1)"
 mutopiainstrument = "Voice, Piano"
 date = "1815"
 source = "C.F. Peters (Band I)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Franz Volhard, Ph. Raynaud"
 moreInfo = "A source is freely available at http://www.dlib.indiana.edu/variations/scores/"
 footer = "Mutopia-2009/01/11-1621"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           COMMANDES ET FONCTIONS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           1. POUR AMÉLIORER LA PARTITION
%
LLtupletUp = {\tupletUp}
LLstemUp = {\stemUp}
LLslurUp = {\slurUp}
LLtupletDown = {\tupletDown}
LLstemDown = {\stemDown}
LLslurDown = {\slurDown}
LLtupletUp = {}
LLstemUp = {}
LLslurUp = {}
LLtupletDown = {}
LLstemDown = {}
LLslurDown = {}


% DEPLACER UNE DYNAMIQUE VERS LA GAUCHE, LA DROITE, LE HAUT, LE BAS
dynamG =        \once \override DynamicText #'extra-offset = #'(-1 . 0)
dynamD =        \once \override DynamicText #'extra-offset = #'(1.5 . 0)
dynamDB =       \once \override DynamicText #'extra-offset = #'(1 . -1)
pinceD =        \once \override Hairpin #'extra-offset = #'(1 . 0)
pinceDD =       \once \override Hairpin #'extra-offset = #'(2 . 0)
pinceDDDD =     \once \override Hairpin #'extra-offset = #'(4 . 0)
pinceH =        \once \override Hairpin #'extra-offset = #'(0 . 1.5)
pinceMontante = \once \override Hairpin #'rotation = #'(15 -1 0)

% DEPLACER UN CRESC/DECRESC
cresD =    { \set crescendoText = \markup { \italic " cresc." } \set crescendoSpanner = #'dashed-line }
cresDDDD = { \set crescendoText = \markup { \italic "    cresc." } \set crescendoSpanner = #'dashed-line }

% DYNAMIQUE ENTRE PARENTHESES
ppAdLib = \markup { \fontsize #-2 \line { \bold \italic ( \dynamic pp ) } }

% CACHER LE NOMBRE OU LE CROCHET D'UN NOLET
nombreNoletH  = \once \override TupletNumber #'extra-offset = #'(0 . 1.5)
noletSansNombre  = \override TupletNumber #'transparent = ##t
noletSansCrochet = \override TupletBracket #'transparent = ##t

% NOLET SUR DEUX PORTEES
noletTraversantO = {
% \LLstemUp
 \once \override Stem #'length = #17
 \once \override Stem #'cross-staff = ##t
 \once \override Stem #'flag-style = #'no-flag
}
noletTraversant = {
% \LLstemUp
 \override Stem #'length = #17
 \override Stem #'cross-staff = ##t
 \override Stem #'flag-style = #'no-flag
}
noletTraversantL = {
% \LLstemUp
 \override Stem #'length = #22
 \override Stem #'cross-staff = ##t
 \override Stem #'flag-style = #'no-flag
}
noletNormal = {
 \revert   Stem #'length
 \override Stem #'cross-staff = ##f
}

% SUPPRESSION DU PointAndClick
PDFSimple =
#(define-music-function (parser location) ()
   (ly:set-option 'point-and-click #f)
   (make-music 'SequentialMusic 'void #t))
\PDFSimple

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           2. POUR AMÉLIORER LE VOLUME DE LA SORTIE MIDI

% Le volume de la mélodie a été étendu en totalité (de 0 à 1)

% VARIATIONS DU TEMPO
tempoAccA =    { \once \override Score.MetronomeMark #'transparent = ##t \tempo 4=154 }
tempoAccB =    { \once \override Score.MetronomeMark #'transparent = ##t \tempo 4=156 }
tempoAccC =    { \once \override Score.MetronomeMark #'transparent = ##t \tempo 4=158 }
tempoAccD =    { \once \override Score.MetronomeMark #'transparent = ##t \tempo 4=160 }
tempoAccE =    { \once \override Score.MetronomeMark #'transparent = ##t \tempo 4=161 }
tempoAccF =    { \once \override Score.MetronomeMark #'transparent = ##t \tempo 4=162 }
tempoAccG =    { \once \override Score.MetronomeMark #'transparent = ##t \tempo 4=163 }
tempoAccH =    { \once \override Score.MetronomeMark #'transparent = ##t \tempo 4=164 }
tempoAccI =    { \once \override Score.MetronomeMark #'transparent = ##t \tempo 4=165 }
tempoAccJ =    { \once \override Score.MetronomeMark #'transparent = ##t \tempo 4=166 }
tempoRecit =   { \once \override Score.MetronomeMark #'transparent = ##t \tempo 4=45 }
tempoAndante = { \once \override Score.MetronomeMark #'transparent = ##t \tempo 4=70 }

% INSTRUMENTS POUR LA MELODIE
NARRATEUR =    \set Staff.midiInstrument = "trombone"
ENFANT =       \set Staff.midiInstrument = "harmonica"
PERE =         \set Staff.midiInstrument = "clarinet"
ROIDESAULNES = \set Staff.midiInstrument = "pan flute"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  A. MELODIE
%     A1. Notes
%     A2. Dynamiques pour la sortie Midi
%  B. POEME
%  C. PIANO
%     C1. PIANO HAUT: Notes
%     C2. PIANO BAS: Notes (en trois parties: A et C à 1 voix, B à deux voix)
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

\include "Erlkoenig.A1MelodieNotes.include.meloNote.ly"


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
meloNotePart = {
 \clef treble
 \time 4/4
 \key sib \major
 \set autoBeaming = ##f
 \meloNote
 \pageBreak \skip 1*3
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
meloNoteMidi = {
 \set Staff.midiInstrument = "trumpet"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
 \meloNote
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A2. MELODIE: Dynamiques pour la sortie Midi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "Erlkoenig.A2MelodieDynamiques.include.meloDynMidi.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "Erlkoenig.BPoeme.include.poeme.ly"


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT: Notes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "Erlkoenig.C1PianoHautNotes.include.pianoHautNote.ly"

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
pianoHautNotePart = {
 \clef treble
 \time 4/4
 \key sib \major
 \set autoBeaming = ##f
 s1*0^\markup {
  { \bold \large { \hspace #-3.0 \italic "Schnell. " } }
  { (\smaller \general-align #Y #DOWN \note #"4" #1 = 152) }
 }
 \pianoHautNote
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
pianoHautNoteMidi = {
 \set Staff.midiInstrument = "acoustic grand"
 \unfoldRepeats { \pianoHautNote }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS: Notes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "Erlkoenig.C2PianoBasNotes.include.pianoBasNoteABC.ly"

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
pianoBasNotePart = {
 \clef bass
 \time 4/4
 \key sib \major
 \set autoBeaming = ##f
 \pianoBasNoteA \pianoBasNoteB \pianoBasNoteC
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
pianoBasNoteMidi = {
 \set Staff.midiInstrument = "acoustic grand"
 \unfoldRepeats { \pianoBasNoteA \pianoBasNoteB \pianoBasNoteC }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO: Dynamiques pour la sortie Partition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "Erlkoenig.C3PianoDynamiques.include.pianoDynPart.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO: Dynamiques pour la sortie Midi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "Erlkoenig.C4PianoDynamiquesMidi.include.pianoHautDynMidi.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION (pas de \midi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
\transpose sol mi {
 <<
  \new Voice = "mel" \with { \consists Ambitus_engraver }  << \meloNotePart \pageBreak \skip 1*3>>
  \new Lyrics \lyricsto "mel" \poeme
  \new PianoStaff <<
   \new Staff = "up" << \pianoHautNotePart >>
	%	pianoHautNote
	%		C1.
   \new Dynamics = "dynamics" \pianoDynPart
   \new Staff = "down" << \pianoBasNotePart >>
	%	\pianoBasNoteA
	%		C2. bis Takt 49 einschl
	%	\pianoBasNoteB	C2. 50-71
	%		pianoBasHaut
	%		pianoBasBas
	%	\pianoBasNoteC
	%		C2. 72-148
   \new Dynamics = "downdyn" \pianoBasDynPart
  >>
 >>
}
 \layout {
% 	\context { \RemoveEmptyStaffContext }
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
   \new Staff = "up" << \pianoHautNoteMidi \pianoHautDynMidi >>
   \new Staff = "down" << \pianoBasNoteMidi \pianoBasDynMidi >>
  >>
 >>
  \midi {
	  \context { \Score
	  tempoWholesPerMinute = #(ly:make-moment 152 4)
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                         FIN DU FICHIER Erlkoenig.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
