%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D965-DerHirtAufDemFelsen.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%       FRANZ SCHUBERT: "Der Hirt auf dem Felsen", für eine Singstimme mit Begleitung von Clarinette und Pianoforte
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
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
oddHeaderMarkup  = \markup \fontsize #1 \fill-line {
 " " { \italic "♫  Franz Schubert: Der Hirt auf dem Felsen (D.965)  ♫" }  \fromproperty #'page:page-number-string }
evenHeaderMarkup = \markup \fontsize #1 \fill-line {
 \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Der Hirt auf dem Felsen (D.965)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 dedication = \markup \center-column { \fontsize #0.5 \bold "Frau Anna Milder-Hauptmann gewidmet." " " }
 title = \markup \center-column { \fontsize #2 "Der Hirt auf dem Felsen"  }
 subtitle = \markup \center-column { \fontsize #0.5 "für eine Singstimme mit Begleitung von Clarinette und Pianoforte" " " " " }
 poet = \markup { \column {
  \line { \bold "Wilhelm Müller" " (1794-1827)" }
  \line { \bold "Helmina von Chézy" " (1783-1856)" } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.965 (Op. 129, Oktober 1828)" }
 
% MUTOPIA
 mutopiatitle = "Der Hirt auf dem Felsen"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.965"
 mutopiainstrument = "Voice, Clarinet and Piano"
 date = "1828"
 source = "C.F. Peters (IMSLP)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/11/08-1554"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été équilibré).
%
%  La partition a été organisée dans l'ordre des instruments, le poème est placé en premier:
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. POÈME: 2 strophes
%  B. NOTES ET DYNAMIQUES PARTITION/MIDI
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TEMPI
TEMPOBASE = \tempo 4=80
TEMPOA = \tempo 4=102
TEMPOB = \tempo 4=94
TEMPOC = \tempo 4=66
TEMPOD = \tempo 4=44
TEMPOE = \tempo 4=40
TEMPOF = \tempo 4=36
TEMPOG = \tempo 4=28
TEMPOH = \tempo 4=20
%----- INSTRUMENTS
ICHANTA = {
 \set Staff.midiInstrument = "harmonica"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
}
ICHANTB = {
 \set Staff.midiInstrument = "pan flute"
 \set Staff.midiMinimumVolume = #0.5
 \set Staff.midiMaximumVolume = #1
}
ICLARINETTE = {
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.9
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.5
}
IPIANOBAS = {
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.5
}
%----- TONALITÉ ET MESURE
KEYA  = { \key sib \major }
KEYC  = { \key do \major }
TIMEA  = { \time 3/4 }
TIMEB  = { \time 2/4 }
TIMESTNO = \once \override Staff.TimeSignature #'stencil = ##f
TIMETROK = \override Staff.TimeSignature #'transparent = ##t
TIMETRNO = \override Staff.TimeSignature #'transparent = ##f
%----- MOUVEMENT
MOVEMENT  = \markup { \bold \large { \hspace #-3 \italic "Andantino." } }
MOVEMENTB = \markup { \bold \large { \hspace #-3 \italic "Allegretto." } }
PIUMOSSO  = \markup { \bold \large { \hspace #-2 "più mosso." } }
%----- NOLET: CACHER OU AFFICHER LE NOMBRE OU LE CROCHET 
TUPNNO = \override TupletNumber #'transparent = ##t
TUPBNO = \override TupletBracket #'transparent = ##t
TUPNO  = { \TUPNNO \TUPBNO }
TUPNOK = \override TupletNumber #'transparent = ##f
TUPBOK = \override TupletBracket #'transparent = ##f
TUPOK  = { \TUPNOK \TUPBOK }
%----- DYNAMIQUES
FORTEMANUEL = \markup { \musicglyph #"f" }
CRESC     = { \set crescendoText = \markup { \bold \italic "cresc." } \set crescendoSpanner = #'text }
CRESCNO   = \unset crescendoSpanner #'text
DECRESC   = { \set decrescendoText = \markup { \bold \italic "decresc." } \set decrescendoSpanner = #'text }
DECRESCNO = \unset decrescendoSpanner #'text
CRESCM    = \markup { \large \bold \italic "cresc." }
DECRESCM  = \markup { \large \bold \italic "decresc." }
SFORZATO  = \markup { \musicglyph #"scripts.sforzato" }
%----- REPOSITIONNEMENT DES DYNAMIQUES
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
PINALBOK = \once \override Staff.Hairpin #'after-line-breaking = ##t
PINROT = \once \override Hairpin #'rotation = #'(10 -1 0)
%----- "dash": SUPPRESSION ET RETABLISSEMENT
DTSDASHNO = \override DynamicTextSpanner #'dash-period = #-1
DTSDASHOK = \override DynamicTextSpanner #'dash-period = #2.0
%----- LIAISON: HAUTEUR 
SLURINSIDE = \once \override Script #'avoid-slur = #'inside
%----- IMITATION D'UN LONG POINT D'ORGUE 
SLURTHICK = \once \override Slur #'thickness = #4
SLURPOS =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Slur #'positions = #$beg-end #})
GROSPOINT = \markup { \fontsize #6 \musicglyph #"period" }
%----- REPOSITIONNEMENT DES SCRIPT / MARKUP
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
SCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Script #'extra-offset = #$beg-end #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. NOTES ET DYNAMIQUES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "SchubertF-D965-clarinette.ly"

\include "SchubertF-D965-chant.ly"

\include "SchubertF-D965-pianoHaut.ly"

\include "SchubertF-D965-pianoBas.ly"

\include "SchubertF-D965-pianoDyn.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\markup { " " }
\markup { \lower #5
 \fill-line {
  \column {
   \line {
    \column { " "
    }
   }
  }
  \column {
   \line { 
    \column {
     "Wenn auf dem höchsten Fels ich steh’,"
     "In’s tiefe Thal hernieder seh’"
     "Und singe,"
     " "
     "Fern aus dem tiefen dunkeln Thal"
     "Schwingt sich empor der Wiederhall"
     "Der Klüfte."
     " "
     "Je weiter meine Stimme dringt,"
     "Je heller sie mir wiederklingt"
     "Von unten."
     " "
     "Mein Liebchen wohnt so weit von mir,"
     "Drum sehn’ ich mich so heiß nach ihr"
     "Hinüber!"
     "(...)"
     " "
     \bold "Wilhelm Müller."
     \bold \italic "‘Der Berghirt’"
    }
   }
  }
  \column {
   \line {
    \column { "       "
    }
   }
  }
  \column {
   \line {
    \column {
     "In tiefem Gram verzehr’ ich mich,"
     "Mir ist die Freude hin,"
     "Auf Erden mir die Hoffnung wich,"
     "Ich hier so einsam bin."
     " "
     "So sehnend klang im Wald das Lied,"
     "So sehnend klang es durch die Nacht,"
     "Die Herzen es zum Himmel zieht"
     "Mit wunderbarer Macht."
     " "
     \bold "Helmina von Chézy."
     " "
     " "
     "Der Frühling will kommen,"
     "Der Frühling, meine Freud’,"
     "Nun mach’ ich mich fertig"
     "Zum Wandern bereit."
     " "
     \bold "Wilhelm Müller."
     \bold \italic "‘Liebesgedanken’"
     " "
     " "
     " "
    }
   }
  }
  \column {
   \line {
    \column { " "
    }
   }
  }
 }
}

\score {
 <<
  \new Staff = "clarinette"  << \notePartClarinette \dynPartClarinette >>

  \new Voice = "chant"        << \notePartChant \dynPartChant >>
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
%                                           D. SORTIE MIDI (pas de \layout)
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
 ("ff" .    0.90)
 ("f" .     0.75)
 ("mf" .    0.65)
 ("mp" .    0.57)
 ("p" .     0.51)
 ("pp" .    0.45)
 ("ppp" .   0.30)
 ("pppp" .  0.18)
 ("ppppp" . 0.00) )
 my-absolute-volume-alist))

%%%%%%%%%%%%%%%%%%%% CHAQUE DYNAMIQUE RENCONTREE PRENDRA LE NOUVEAU VOLUME SPECIFIE
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIMEA s2. }

\score {
 <<
  \new Staff = "clarinette" { \SILENCE << \noteMidiClarinette \dynMidiClarinette >> }
  \new Staff = "voix"       { \SILENCE << \noteMidiChant      \dynMidiChant >> }
  \new Staff = "pianoUp"    { \SILENCE << \noteMidiPianoHaut  \dynMidiPianoHaut >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBas   \dynMidiPianoBas >> }
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
%                                           FIN DU FICHIER SchubertF-D965-DerHirtAufDemFelsen.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
