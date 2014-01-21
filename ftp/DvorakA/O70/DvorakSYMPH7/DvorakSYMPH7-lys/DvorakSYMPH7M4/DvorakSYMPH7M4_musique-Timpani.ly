%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement IV - Finale allegro                       *
  * Fichier de notes, Timbales                                          *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMdTimpani =
\relative c {

  \include "Common/Properties.ly"

  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 2 1)
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoIV

  \tag #'partScore {
    <<{
      \once \override MultiMeasureRest #'minimum-length = #14
      R1}
      {s2 s1 * 0 ^\markup {"[in D & A]"}}>>
  }
  \elseTag #'partScore {
    <<{R1}{s1 * 0 ^\markup {"[in D & A]"}}>>
  }

  \tag #'partScore {
    <<{a1 \startTrillSpan}{s4 \fz -\tweak #'minimum-length #8 \> s4 s4 s8 s16 \!}>>
    a1
    a1 \dim
    <<{a1}{s4 s4 s4 s8 s16 \stopTrillSpan}>>
  }
  \elseTag #'partScore {
    <<{a1}{s4 \startTrillSpan \fz \> s4 s4 s8 s16 \!}>>
    a1
    a1 \dim
    <<{a1}{s4 s4 s4 s8 s16 \stopTrillSpan}>>
  }

  a4 r r2

  \tag #'partScore {
    a1 \pp \startTrillSpan
    <<{a1}{s4 s4 s4 s8 s16 \stopTrillSpan}>>
  }
  \elseTag #'partScore {
    a1 \pp \startTrillSpan
    <<{a1}{s4 s4 s4 s8 s16 \stopTrillSpan}>>
  }

  a2 \pp a
  a \once \override TupletBracket #'bracket-visibility = ##t \times 2/3 {a4 a a}
  a2 a

  \tag #'partScore {
    a1 \trill
  }
  \elseTag #'partScore {
    <<{a1}{s4 \startTrillSpan s4 s4 s8 s16 \stopTrillSpan}>>
  }

  a4 r r2
  R1 * 8

  \tag #'partScore {
    <<{a1 \startTrillSpan}{\rightDynamic s4 \fp \> s4 s4 s8 s16 \!}>>
  }
  \elseTag #'partScore {
    <<{a1 \startTrillSpan}{s4 \fp \> s4 s4 s8 s16 \!}>>
  }

  a1
  <<{a1}{s4 \< s4 s4 s8 s16 \!}>>
  a1 \fpp
  a1
  a1
  <<{a1}{s4 s4 s4 s8 s16 \stopTrillSpan}>>
  a4 r r2
  R1 * 13
  \mark \default

  \tag #'partScore {
    d1 \ff \startTrillSpan
    <<{d1}{s2 s4 s8 s16 \stopTrillSpan}>>
    a2 \trill d2 \startTrillSpan
    <<{d2}{s4 s8 s16 \stopTrillSpan}>>
  }
  \elseTag #'partScore {
    d1 \ff \startTrillSpan
    <<{d1}{s2 s4 s8 s16 \stopTrillSpan}>>
    <<{a2}{s4 \startTrillSpan s8 s16 \stopTrillSpan}>> d2 \startTrillSpan
    <<{d2}{s4 s8 s16 \stopTrillSpan}>>
  }

  a4-. a-.
  d2-. d-.
  a4 r r2
  d-. d-.
  a4 r r2
  a-. a-.
  d r
  a-. a-.
  a4 r r2
  a-. a-.
  a4 r r2
  a4 r a r
  <<{a1}{s4 \< \startTrillSpan s4 s4 s8 s16 \!}>>
  a1 \ff
  <<{a1}{s4 s4 s4 s8 s16 \stopTrillSpan}>>
  a4 r r2
  R1 * 3

  \tag #'partScore
    \noBreak
  \TempoIVRit

  R1

  \grace {d16[d16]}	% placer les gracenote AVANT la marque d'avancement et le tempo

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  \mark \default

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2

  d4 \f r r2
  R1 * 4
  r2 r4

  \tag #'partScore {
    a4 \f \trill
  }
  \elseTag #'partScore {
    <<{a4 \f}{s8 \startTrillSpan s16 s16 \stopTrillSpan}>>
  }

  \grace {d16[d16]} d4 \fz r r2
  r4 a8 \f a d4 d8 d

  \tag #'partScore
    \dynamicLineSpannerStandard

  a4 d a d
  a d

  \tag #'partScore {
    a2 \trill
  }
  \elseTag #'partScore {
    <<{a2}{s4 \startTrillSpan s8 s16 s16 \stopTrillSpan}>>
  }

  R1 * 3

  \tag #'partScore {
    a2. \ff \trill
  }
  \elseTag #'partScore {
    <<{a2.}{s4 \startTrillSpan \ff s4 s8 s16 s16 \stopTrillSpan}>>
  }

  r4
  R1
  r2 d4 \f r
  d1 \ff \startTrillSpan
  d2.
  r4 \stopTrillSpan
  R1
  r2 d4 \f r
  a4 r r2
  R1

  \mark \default

  R1 * 2
  a4 \f r a r
  a r r2
  a4 r r2
  a4 r a r
  a r a r
  d r r2
  R1 * 7

  \mark \default

  R1 * 13
  r4 d \p r d
  r d r d
  r d r d
  d r r2
  R1 * 3
  r2
  a2 \p \startTrillSpan
  <<{a1}{s4 \< s4 s4 s8 \! s16 s16 \stopTrillSpan}>>

  \mark \default

  a4 \f r d r
  a r d r
  a r d r
  a r d r
  a r d r
  a r a r
  a r d r
  a r r2
  R1 * 3
  a4 \f r r2
  R1 * 3
  a4 \f r d r
  a r d r
  r2 d4 r
  a r d r
  a r r d
  a r d r
  a r d r
  a r d r

  \mark \default

  \bar "||"

  a4 r r2
  R1
  a1 \fz \> \startTrillSpan
  <<{a1}{s4 s4 s4 s8 s16 \! s16 \stopTrillSpan}>>
  a4 r r2
  R1
  a1 \p \startTrillSpan
  <<{a1}{s4 s4 s4 s8 s16 s16 \stopTrillSpan} >>
  a4 r r2
  R1 * 9

  \tag #'partScore
    \noBreak
  \TempoIVPRit

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #16

  R1 * 4

  \mark \default

  \tag #'partScore
    \noBreak
  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #16
  R1 * 39

  \mark \default

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuring #"scoreSgMdTromboneI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Tromboni"} R1 * 4}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 4
  }

  R1 * 8

  \tag #'partScore {
    d1 \trill \ff
  }
  \elseTag #'partScore {
    <<{d1}{s4 \ff \startTrillSpan s4 s4 s8 s16 s16 \stopTrillSpan}>>
  }

  r2 d4 r
  r2 d4 r
  r2 r4 r8 d
  a4 r a r
  a r a r

  \mark \default

  R1 * 24

  \mark \default

  R1 * 20

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMdViolinoI" #UP "treble" {s4 * 0 ^\markup { \fontsize #-3 "Violino I"} R1 * 4 r2}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 4 r2
  }

  d2 \startTrillSpan \pp

  % insérer ici un crescendo sur 4 mesures

  \override TextSpanner #'staff-padding = #3.5
  \set crescendoText = \CrescL
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line

  d1 \<
  \tag #'partScore
    \noBreak
  d1
  d1
  d1
  <<{d1}{s4 s4 s4 s8 \! s16 s \stopTrillSpan}>>

  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  \mark \default
  \bar "||"

  \tag #'partScore {
    a1 \trill \ff
  }
  \elseTag #'partScore {
    <<{a1}{s4 \ff \startTrillSpan s4 s4 s8 s16 s16 \stopTrillSpan}>>
  }

  a8 \ff d a4 r8 d a4
  r8 d a4 r8 d a4
  r8 d a4 r8 d a4
  r8 d a4 r8 d a4
  r8 d a4 r8 d a4
  r8 d a4 r2

  \tag #'partScore {
    <<{
      r2 a4 \f r
      \repeat unfold 12 {r2 a4 r}
      }
      \new Voice
      {
        \set countPercentRepeats = ##t
        \override PercentRepeatCounter #'outside-staff-priority = #51
        \override PercentRepeat #'transparent = ##t
        \repeat percent 13 {s1}
    }>>
  }
  \elseTag #'partScore {
    r2 a4 \f r
    \repeat unfold 12 {r2 a4 r}
  }

  \mark \default

  \tag #'partScore {
    <<{
      a1 \fpp \startTrillSpan
      \repeat unfold 5 a1
      a1 \ppp
      \repeat unfold 7 a1
      <<{a1}{s4 s s s8 s \stopTrillSpan}>>
      }
      \new Voice
      {
        \set countPercentRepeats = ##t
        \override PercentRepeatCounter #'outside-staff-priority = #51
        \override PercentRepeat #'transparent = ##t
        \override PercentRepeatCounter #'staff-padding = #2
        \repeat percent 15 {s1}
    }>>
  }
  \elseTag #'partScore {
    a1 \fpp \startTrillSpan
    \repeat unfold 5 a1
    a1 \ppp
    \repeat unfold 7 a1
    <<{a1}{s4 s s s8 s \stopTrillSpan}>>
  }

  \bar "||"

  d4 r r2
  R1 * 12
  d4 \p r d r
  d r d r
  d r d r
  d r r2
  R1 * 3
  r2

  \tag #'partScore {
    d2 \p \< \trill
    <<{d1 \trill}{s4 s4 s4 s8 s8 \!}>>
  }
  \elseTag #'partScore {
    d2 \p \< \startTrillSpan
    <<{d1}{s4 s4 s4 s8 s16 s \stopTrillSpan \!}>>
  }

  \mark \default

  a4 \f r8 a a4 r8 a
  \repeat unfold 4 {a4 r8 a a4 r8 a}
  a4 r8 a d4 r8 d
  a4 r8 a a4 r8 a
  d4 r r2
  R1 * 2
  r2 r4 a \f
  d r r2
  R1 * 3
  a4 \f r a r
  d r d r
  a r d r
  d r a r
  d r a-. a-.
  a r d r
  a r d r
  a r a r

  \bar "||"

  \mark \default

  d4 r r2
  R1 * 11
  d1 \ff \startTrillSpan
  <<{d2}{s4 s8 s16 s16 \stopTrillSpan}>>
  d4 r
  d1 \startTrillSpan
  <<{d2}{s4  s8 s16 s16 \stopTrillSpan}>>
  d4 r
  d1 \startTrillSpan
  <<{d1}{s4 s4 s4 s8 s16 s \stopTrillSpan}>>

  \mark \default

  a1 \f \startTrillSpan
  \repeat unfold 4 a1
  <<{a1}{s4 s s s8 s16 s \stopTrillSpan}>>

  a2 \ff r
  a \ff r
  a4 r r2
  R1 * 2
  r2 a4 \pp r
  a r a r

  \tag #'partScore {
    <<{
      \repeat unfold 3 {
        d1 \ffz \startTrillSpan
        <<{d1}{s4 s4 s4 s8 s16 s \stopTrillSpan}>>
      }
      d1 \ffz \startTrillSpan
      d1
      <<{d1}{s4 s4 s4 s8 s16 s \stopTrillSpan}>>

      }
      \new Voice
      {
        \set countPercentRepeats = ##t
        \override PercentRepeatCounter #'outside-staff-priority = #51
        \override PercentRepeat #'transparent = ##t
        \override PercentRepeatCounter #'staff-padding = #2
        \repeat percent 9 {s1}
    }>>
  }
  \elseTag #'partScore {
    \repeat unfold 3 {
      d1 \ffz \startTrillSpan
      <<{d1}{s4 s4 s4 s8 s16 s \stopTrillSpan}>>
    }
    d1 \ffz \startTrillSpan
    d1
    <<{d1}{s4 s4 s4 s8 s16 s \stopTrillSpan}>>
  }

  d4 d d d
  d d d d

  \tag #'partScore {
    d2. \trill
  }
  \elseTag #'partScore {
    <<{d2.}{s4 \startTrillSpan s4 s8 s16 s \stopTrillSpan}>>
  }

  r4
  R1 * 3

  \mark \default

  R1
  a4 \ff r d r
  a a r2

  \TempoIVPAn

  d4 \ff r8 d16 d d4 r
  r r8 d16 d d4 r
  r r8 d16 d d4 r
  r r8 d16 d d4 r
  d r r2

  \tag #'partScore {
    d1 \trill \ff
  }
  \elseTag #'partScore {
    <<{d1 \ff}{s4 \startTrillSpan s4 s4 s8 s16 s \stopTrillSpan}>>
  }

  d4 r r2
  R1 * 4
  d4 \ff a d a
  d a d a
  d a d a
  d a d a

  \TempoIVMMaes

  d r r2

  \tag #'partScore {
    <<{
      d1 \ff \startTrillSpan
      \repeat unfold 3 d1
      <<{d1}{s4 s4 s4 s8 s16 s \stopTrillSpan}>>
      \repeat unfold 3 <<{d1 \ffz}{s4 \startTrillSpan s4 s4 s8 s16 s \stopTrillSpan}>>
      }
      \new Voice
      {
        \set countPercentRepeats = ##t
        \override PercentRepeatCounter #'outside-staff-priority = #51
        \override PercentRepeat #'transparent = ##t
        \override PercentRepeatCounter #'staff-padding = #2
        \repeat percent 8 {s1}
    }>>
  }
  \elseTag #'partScore {
    d1 \ff \startTrillSpan
    \repeat unfold 3 d1
    <<{d1}{s4 s4 s4 s8 s16 s \stopTrillSpan}>>
    \repeat unfold 3 <<{d1 \ffz}{s4 \startTrillSpan s4 s4 s8 s16 s \stopTrillSpan}>>
  }

  \tag #'partScore {
    d4 \ffz r r2
  }
  \elseTag #'partScore {
    d4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  }

  \bar "|."
}

voiceSgMdTimpani = \new Voice {
  \time 2/2
  \tag #'partScore {
    \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Timpani" \magnify #1.1 "in D & A"}}
  }
  \elseTag #'partScore {\set Staff.instrumentName = \markup {\fontsize #3 "Timpani" }}
  \tag #'conductorScore \tag #'pocketScore {\set Staff.shortInstrumentName = "Timp."}
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "timpani"
  \clef bass
  \SgMdTimpani
}

quoteScoreSgMdTimpani = \SgMdTimpani
