%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7	: mouvement III - Scherzo Vivace                      *
  * Fichier de notes, Timbales                                          *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"


SgMcTimpani =
\relative c {

  \include "Common/Properties.ly"

  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 2 1)
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoIII
  r2 r4
  <<{R1 * 6/4 * 7}{s1 * 0 ^\markup {"[in D & A]"}}>>
  a4 \mf r r a \dim r r
  a \p r r r2 r4
  R1 * 6/4 * 2
  a4 \pp r r a r r
  a r r r2 r4


  R1 * 6/4 * 11

  \mark \default  % Mark A
  d4 \mf r r r2 a4 \cresc
  d r r r2 a4
  d \ff r d r d-. a-.
  d r d r d-. a-.

  \tag #'partScore {
    <<{d1. \startTrillSpan}{s4 \fz -\tweak #'minimum-length #7 \> s s s s s8 s \!}>>
    <<{d1.}{s4 s s \p -\tweak #'minimum-length #7 \> s s s8 s \!}>>
    d1. \pp
    <<{d1.}{s4 s s s s s8 s \stopTrillSpan}>>
    d1. \f \startTrillSpan
    d1.
    <<{d1.}{s4 s s s s s8 s \stopTrillSpan}>>
  }
  \elseTag #'partScore {
    <<{d1.}{s4 \startTrillSpan \fz \> s s s s s8 s\!}>>
    <<{d1.}{s4 \p s s \> s s s8 s \!}>>
    d1. \pp
    <<{d1.}{s4 s s s s s8 s16 s32 s \stopTrillSpan}>>
    d1. \f \startTrillSpan
    d1.
    <<{d1.}{s4 s s s s s8 s \stopTrillSpan}>>
  }

  d4 \ff d d r d d
  r d d r d d
  d r d r d r
  a r d r a r
  d r a r2 r4
  R1 * 6/4 * 9

  \tag #'partScore
    \pageTurn

  \mark \default  % Mark A
  a4 \mp r d a \p r d
  a r r r2 r4
  a \pp r d a r d
  a r r r2 r4
  a \pp r r a r r
  a r r r2 r4
  R1 * 6/4 * 4
  \mark \default  % Mark A
  d4 \f  r d r8 d d4 d
  d4 r d r8 d d4 d
  d4 r d r8 d d4 d
  a4 r a r8 a a4 a
  a-> \ff a-> d-> r2 r4
  d d a r2 r4
  a-> \f a-> d-> r r a-.
  d-. r r r2 a4-.
  d-. r r r2 a4-.
  d4 \ff r d r8 d d4-. a-.
  d4 r d r8 d d4-. a-.

  \tag #'partScore {
    <<{d1. \startTrillSpan}{s4 \fp -\tweak #'minimum-length #7 \> s s s s s8 s \!}>>
  }
  \elseTag #'partScore {
    <<{d1. \startTrillSpan}{s4 \fp \> s s s s s8 s \!}>>
  }

  d1. \pp
  d1.
  <<{d1.}{s4 s s s s s8 s \stopTrillSpan}>>

  \mark \default  % Mark A

  d4 \ff d d d d d
  a a a d d d
  d r r r2 r4
  r2 r4 r2 d4 \ff
  d d d d d a
  a r a r a r
  a r a r a r
  a r r r2 r4

  \tag #'partScore {
    a1. \trill \ff
    d1. \trill
    d2. \trill a2. \trill
  }
  \elseTag #'partScore {
    <<{a1.}{s4 \startTrillSpan \ff s s s s s \stopTrillSpan}>>
    d1. \startTrillSpan
    <<{d2. a2.}{s4 s s8 s \stopTrillSpan s4 \startTrillSpan s s8 s \stopTrillSpan}>>
  }

  d4-. r d-. d-. d-. d-.
  d-. r d-. d-. d-. d-.
  d d8 d d4 d8 d d4 d8 d
  d4 d8 d d4 d8 d d4 d8 d
  d4 r r d r r

  \tag #'partScore {
    <<{d1. \trill}{s4 -\tweak #'minimum-length #10 \> s s s s s\!}>>
  }
  \elseTag #'partScore {
    <<{d1.}{s4 \startTrillSpan \> s s s s s \stopTrillSpan \!}>>
  }

  \bar "||"

  \TempoIIIMM

  d4 r r r2 r4

  \tag #'partScore
    \noBreak

  R1 * 6/4 * 11

  \mark \default  % Mark A

  R1 * 6/4 * 13

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMcFlautoI" #UP #"treble" {s4 * 0 ^\markup { \fontsize #-3 "Flauto I"} R1 * 6/4 * 2}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/4 * 2
  }

  d4 \pp r d r d r
  d r d r d r
  d r d r d r
  d r d r d r
  R1 * 6/4 * 5
  \mark \default  % Mark A
  R1 * 6/4 * 20
  \mark \default  % Mark A
  R1 * 6/4

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMcCornoI" #DOWN #"treble" {s4 * 0 ^\markup { \fontsize #-3 "Corni I&II"} R1 * 6/4 * 2}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/4 * 2
  }

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMcTrombaI" #UP #"treble" {s4 * 0 ^\markup { \fontsize #-3 "Trombe I&II"} R1 * 6/4}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/4
  }

  \tag #'partScore {
    <<{
      a1.\startTrillSpan \pp
      a1.
      a1.
      a1.
      a1.
      <<{a1.}{s4 s s s s s8 s \stopTrillSpan}>>
      }
      \new Voice
      {
        \set countPercentRepeats = ##t
        \override PercentRepeatCounter #'outside-staff-priority = #51
        \override PercentRepeatCounter #'staff-padding = #3
        \override PercentRepeat #'transparent = ##t
        \repeat percent 6 {s1.}
    }>>
  }
  \elseTag #'partScore {
    a1.\startTrillSpan \pp
    a1.
    a1.
    a1.
    a1.
    <<{a1.}{s4 s s s s s8 s \stopTrillSpan}>>
  }

  \TempoIIIAcc

  d4 a d a d a
  d \< a d a d a \!
  d \mf a8 a d4 a8 \cresc a d4 a8 a
  d4 a8 a d4 a8 a d4 a8 a

  \TempoIIIViv

  d4 \f r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  a1. \startTrillSpan \f
  <<{a1.}{s4 s s s s s8 s \stopTrillSpan}>>

  a4-> a-> r r a-. a-.
  a a r r a-. a-.
  a r r a \p r a \>
  a r r a r a \!
  a \pp r r r2 r4

  \bar "||"

  R1 * 6/4 * 7
  a4 \mf r r a r r
  a \p r r r2 r4
  R1 * 6/4 * 2
  a4 \pp r r a r r
  a r r r2 r4
  R1 * 6/4 * 4

  \mark \default  % Mark A

  R1 * 6/4 * 7
  d4 \mf r r r2 a4 \cresc
  d r r r2 a4
  d \ff r d r d-. a-.
  d r d r d-. a-.
  d-. a-. d-. a-. d-. a-.
  d-. a-. d-. \dim a-. d-. a-.
  d \mp a d \dim a d a
  d \p a \> d a d a \!
  d \pp r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  d4-. \pp \< a-. d-. a-. d-. a-.
  d-. a-. d-. a-. d-. a-. \!
  d \f r r r2 r4
  R1 * 6/4 * 2
  d1. \startTrillSpan \ppp
  d1.
  d1.
  \tag #'partScore {
    <<{d2. a2.}{s4 s s \stopTrillSpan s4 \startTrillSpan s s8 s \stopTrillSpan}>>
  }
  \elseTag #'partScore {
    <<{d2. a2.}{s4 s s8 s \stopTrillSpan s4 \startTrillSpan s s8 s \stopTrillSpan}>>
  }

  d4 r r r2 r4
  
  R1 * 6/4 * 8
  \tag #'partScore
    \noBreak

  \TempoIIIPPrB

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #16
  R1 * 6/4 * 4
  \tag #'partScore
    \noBreak

  a1. \startTrillSpan \pp
  <<{a1.}{s4 s s s s s8 s \stopTrillSpan}>>

  \TempoIIIiT

  \tag #'partScore {
    d1. \startTrillSpan \pp
    \noBreak % pour ne pas interrompre le texte
    <<{d1.}{s4 \< s s s s s8 s \!}>>
    <<{d1.}{s4 \< s s s s s8 s \!}>>
    <<{d1.}{s4 \< s s s s s8 s \stopTrillSpan \!}>>
  }
  \elseTag #'partScore {
    d1. \startTrillSpan \pp
    <<{d1.}{s4 \< s s s s s8 s \!}>>
    <<{d1.}{s4 \< s s s s s8 s \!}>>
    <<{d1.}{s4 \< s s s s s8 s \stopTrillSpan \!}>>
  }

  \mark \default  % Mark A
  d4 \ff d d d d d
  a a a d d d
  d r r r2 r4
  r2 r4 r2 d4 \ff
  d d d d d a
  a r a r a r
  a r a r a r
  a r r r2 r4

  \tag #'partScore {
    a1. \trill \ff
    d1. \trill
    d2. \trill a2. \trill
  }
  \elseTag #'partScore {
    <<{a1.\startTrillSpan \ff}{s4 s s s s s8 s \stopTrillSpan}>>
    d1. \startTrillSpan
    <<{d2. a2.}{s4 s s8 \stopTrillSpan s s4 \startTrillSpan s s8 s \stopTrillSpan}>>
  }

  d4 r d d d d
  d4 r d d d d
  d4 d8 d d4 d8 d d4 d8 d
  d4 d8 d d4 d8 d d4 d8 d
  d4 r d r8 d d4 d
  d r r d r r
  d r r r2 r4

  \bar "|."
}

voiceSgMcTimpani = {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \set StaffGroup.systemStartDelimiter = #'SystemStartSquare
  \tag #'partScore {
    \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Timpani" \magnify #1.1 "in D & A"}}
  }
  \elseTag #'partScore {\set Staff.instrumentName = \markup {\fontsize #3 "Timpani" }}
  \tag #'conductorScore \tag #'pocketScore {\set Staff.shortInstrumentName = "Timp."}
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "timpani"
  \clef bass
  \SgMcTimpani
}

quoteScoreSgMcTimpani = \SgMcTimpani
