\version "2.24.1"

#(set-default-paper-size "a4")

\header {
  title = "Piano Trio No. 2"
  subtitle = "Pianoforte, Violine und Violoncell"
  composer = "Josef Rheinberger"
  opus = "Op. 112"
  dedication = \markup { \italic \small "Herrn Charles Hallé in London" }
  copyright = \markup { \tiny \column {
     \fill-line { \line { "Typeset from Kistner 1879 (Leipzig) Edition" } \line { "" } }
     \fill-line { \line { "This work is published on" \italic "imslp.org" "and" \italic "mutopia-project.org" } \line { "License: Creative Commons License BY-SA 4.0." } } }
  }
  tagline = \markup { \tiny \fill-line { \line { "Score engraved by LilyPond 2.24.3 • www.lilypond.org" } \line { "Typesetter: Benoît Mortgat (2026)" } } }

  mutopiacomposer = "RheinbergerJ"
  mutopiainstrument = "Violin, Cello and Piano"
  style = "Romantic"
  source = "Kistner 1879"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Benoît Mortgat"
}

\include "Parts/mvt_a.ly"
\include "Parts/mvt_b.ly"
\include "Parts/mvt_c.ly"
\include "Parts/mvt_d.ly"

\layout {
    \context { \StaffGroup
               \accidentalStyle modern
             }
    \context { \PianoStaff
               \consists "Span_stem_engraver"
               \accidentalStyle piano
             }
    \context { \Voice
               fingeringOrientations = #'(up left down)
             }
}

% {{{ All movements

#(set-global-staff-size 17)

\book { % {{{ Conductor
  \bookOutputSuffix "Conductor"

  \paper {
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "I." } }
    \new StaffGroup \removeWithTag #'cello_tempi \mvt_a
    \layout{}
    \midi{}
  }
  \pageBreak
  \score {
    \header { piece = \markup { \fontsize #1 \bold "II." } }
    \new StaffGroup \removeWithTag #'cello_tempi \mvt_b
    \layout{}
    \midi{}
  }
  \pageBreak
  \score {
    \header { piece = \markup { \fontsize #1 \bold "III." } }
    \new StaffGroup \removeWithTag #'cello_tempi \mvt_c
    \layout{}
    \midi{}
  }
  \pageBreak
  \score {
    \header { piece = \markup { \fontsize #1 \bold "IV." } }
    \new StaffGroup \removeWithTag #'cello_tempi \mvt_d
    \layout{}
    \midi{}
  }
} % }}}

#(set-global-staff-size 23)

\book { % {{{ % Violin
  \bookOutputSuffix "Violin"

  \paper {
    ragged-last-bottom = ##t
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "I." } }
    \new StaffGroup \keepWithTag #'violin \mvt_a
    \layout {}
    \midi{}
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "II." } }
    \new StaffGroup \keepWithTag #'violin \mvt_b
    \layout {}
    \midi{}
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "III." } }
    \new StaffGroup \keepWithTag #'violin \mvt_c
    \layout {}
    \midi{}
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "IV." } }
    \new StaffGroup \keepWithTag #'violin \mvt_d
    \layout {}
    \midi{}
  }
} % }}}

\book { % {{{ Cello
  \bookOutputSuffix "Cello"

  \paper {
    ragged-last-bottom = ##t
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "I." } }
    \new StaffGroup \keepWithTag #'cello \mvt_a
    \layout {}
    \midi{}
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "II." } }
    \new StaffGroup \keepWithTag #'cello \mvt_b
    \layout {}
    \midi{}
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "III." } }
    \new StaffGroup \keepWithTag #'cello \mvt_c
    \layout {}
    \midi{}
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "IV." } }
    \new StaffGroup \keepWithTag #'cello \mvt_d
    \layout {}
    \midi{}
  }
} % }}}

% }}}

% {{{ Mvt 1

#(set-global-staff-size 17)

\book { % {{{ Conductor
  \bookOutputSuffix "Mvt-1-Conductor"

  \paper {
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "I." } }
    \new StaffGroup \removeWithTag #'cello_tempi \mvt_a
    \layout{}
  }
} % }}}

#(set-global-staff-size 23)

\book { % {{{ % Violin
  \bookOutputSuffix "Mvt-1-Violin"

  \paper {
    ragged-last-bottom = ##t
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "I." } }
    \new StaffGroup \keepWithTag #'violin \mvt_a
    \layout {}
  }
} % }}}

\book { % {{{ Cello
  \bookOutputSuffix "Mvt-1-Cello"

  \paper {
    ragged-last-bottom = ##t
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "I." } }
    \new StaffGroup \keepWithTag #'cello \mvt_a
    \layout {}
  }
} % }}}

% }}}

% {{{ Mvt 2

#(set-global-staff-size 17)

\book { % {{{ Conductor
  \bookOutputSuffix "Mvt-2-Conductor"

  \paper {
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "II." } }
    \new StaffGroup \removeWithTag #'cello_tempi \mvt_b
    \layout{}
  }
} % }}}

#(set-global-staff-size 23)

\book { % {{{ % Violin
  \bookOutputSuffix "Mvt-2-Violin"

  \paper {
    ragged-last-bottom = ##t
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "II." } }
    \new StaffGroup \keepWithTag #'violin \mvt_b
    \layout {}
  }
} % }}}

\book { % {{{ Cello
  \bookOutputSuffix "Mvt-2-Cello"

  \paper {
    ragged-last-bottom = ##t
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "II." } }
    \new StaffGroup \keepWithTag #'cello \mvt_b
    \layout {}
  }
} % }}}

% }}}

% {{{ Mvt 3

#(set-global-staff-size 17)

\book { % {{{ Conductor
  \bookOutputSuffix "Mvt-3-Conductor"

  \paper {
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "III." } }
    \new StaffGroup \removeWithTag #'cello_tempi \mvt_c
    \layout{}
  }
} % }}}

#(set-global-staff-size 23)

\book { % {{{ % Violin
  \bookOutputSuffix "Mvt-3-Violin"

  \paper {
    ragged-last-bottom = ##t
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "III." } }
    \new StaffGroup \keepWithTag #'violin \mvt_c
    \layout {}
  }
} % }}}

\book { % {{{ Cello
  \bookOutputSuffix "Mvt-3-Cello"

  \paper {
    ragged-last-bottom = ##t
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "III." } }
    \new StaffGroup \keepWithTag #'cello \mvt_c
    \layout {}
  }
} % }}}

% }}}

% {{{ Mvt 4

#(set-global-staff-size 17)

\book { % {{{ Conductor
  \bookOutputSuffix "Mvt-4-Conductor"

  \paper {
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "IV." } }
    \new StaffGroup \removeWithTag #'cello_tempi \mvt_d
    \layout{}
  }
} % }}}

#(set-global-staff-size 23)

\book { % {{{ % Violin
  \bookOutputSuffix "Mvt-4-Violin"

  \paper {
    ragged-last-bottom = ##t
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "IV." } }
    \new StaffGroup \keepWithTag #'violin \mvt_d
    \layout {}
  }
} % }}}

\book { % {{{ Cello
  \bookOutputSuffix "Mvt-4-Cello"

  \paper {
    ragged-last-bottom = ##t
  }

  \score {
    \header { piece = \markup { \fontsize #1 \bold "IV." } }
    \new StaffGroup \keepWithTag #'cello \mvt_d
    \layout {}
  }
} % }}}

% }}}


% set makeprg=lilypond\ --loglevel=WARNING\ %
% vim: foldmethod=marker
