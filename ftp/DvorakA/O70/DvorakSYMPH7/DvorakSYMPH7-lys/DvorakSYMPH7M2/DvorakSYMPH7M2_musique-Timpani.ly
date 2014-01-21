%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement II - Poco Adagio                          *
  * Fichier de notes, Timbales                                          *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMbTimpani =
\relative c, {

  \include "Common/Properties.ly"

  %   \set Staff.minimumPageTurnLength n'est pas défini dans cette partie
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoII

  \tag #'partScore {
    <<{
      \once \override MultiMeasureRest #'minimum-length = #30
      R1 * 8
      r4

      \oneMMRNumberOff
      \cueDuring #"scoreSgMbCornoII" #UP {s4 * 0 -\tweak #'extra-offset #'(-1 . -1.5 )
                                          ^\markup { \fontsize #-3 "Corni II&IV"} r4 r2 r4}
      \oneMMRNumberOn

      s1 * 0 ^\markup {"[in F & C]"}
    }>>
  }
  \elseTag #'partScore {
    <<{R1 * 9}{s1 * 0 ^\markup {"[in F & C]"}}>>
    r4
  }

  \tag #'partScore {
    <<{f2.}{\rightDynamic s4 \fp -\tweak #'minimum-length #28 \> \startTrillSpan s4 s8 s16 s16 \stopTrillSpan \!}>>
  }
  \elseTag #'partScore {
    <<{f2.}{\rightDynamic s4 \fp -\tweak #'minimum-length #8 \> \startTrillSpan s4 s8 s16 s16 \stopTrillSpan \!}>>
  }

  \mark \default    % Mark A - mesure 11

  f8 \pp r r4 r2

  R1 * 17
  r2 r4

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuring #"scoreSgMbVioloncello" #UP {s4 * 0 \tweak #'X-offset #-4.5 ^\markup { \fontsize #-3 "Celli"} r4 R1 * 2}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    r4
    R1 * 2
  }

  \mark \default    % Mark B - mesure 32

  \tag #'partScore {
    <<{
      f1 \pp \startTrillSpan
      f1
      f1
      f1
      f1
      <<{f1}{s4 s4 s4 s8 s16 s32 \stopTrillSpan}>>
      }
      \new Voice
      {
        \set countPercentRepeats = ##t
        \override PercentRepeatCounter #'outside-staff-priority = #51
        \override PercentRepeatCounter #'staff-padding = #3
        \override PercentRepeat #'transparent = ##t
        \repeat percent 6 {s1}
    }>>
  }
  \elseTag #'partScore {
    f1 \pp \startTrillSpan
    f1
    f1
    f1
    f1
    <<{f1}{s4 s4 s4 s8 s16 s32 \stopTrillSpan}>>
  }

  f4 r r2

  \tag #'partScore {
    <<{r2 c'2 \trill}{s4 s \bracketedHairpin s4 \f -\tweak #'minimum-length #6 -\tweak #'X-offset #2 \<
      s8 s \bindDynamics}>>
  }
  \elseTag #'partScore {
    <<{r2 c2}{s4 s \bracketedHairpin s4 \startTrillSpan \f -\tweak #'X-offset #2 \< s8 s16 \! s \stopTrillSpan}>>
  }

  f,16 \ff f
  r8 r f f16 f r8 r f
  r4 r8 c' f,16-. f-. r8 r4
  f16 \ff f r8 r c' \> f,16 f r8 \! r4
  f16 \p f r8 r f8 \> f16 f r8 r c' \!

  \mark \default    % Mark C - mesure 44

  f, \pp r8 ^\markup {"[C muta in E]"} r4 r2
  R1 * 12

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMbCornoI" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Cor. I"} R1 * 2}
    \oneMMRNumberOn
  }
  \elseTag  #'partScore {
    R1 * 2
  }

  \tag #'partScore {
    e'1 \pp \startTrillSpan
    e1
    e1
    <<{e1}{s4 \< s4 s4 s8 s16 s32 \stopTrillSpan \!}>>
  }
  \elseTag #'partScore {
    e1 \pp \startTrillSpan
    e1
    e1
    <<{e1}{s4 s4 s4 \< s8 s16 s32 \! \stopTrillSpan}>>
  }

  \mark \default    % Mark D - mesure 63

  e16 \f r8. r \times 2/3 {e32 e e} e8 r r4
  R1 * 5

  \tag #'partScore {
    e1 \pp \trill
  }
  \elseTag #'partScore {
    <<{e1 \pp}{s4 \startTrillSpan s4 s4 s8 s16 s32 s \stopTrillSpan}>>
  }

  <<{\once \override MultiMeasureRest #'minimum-length = #17 R1 * 20}
    {s1 * 0 -\tweak #'extra-offset #'(0 . -1.5 ) ^\markup {"[E muta in C]"}}>>

  \tag #'partScore {

    \oneMMRNumberOff
    \cueDuring #"scoreSgMbTromboneIII" #UP {s4 * 0 ^\markup { \fontsize #-3 "Trbi"} r2}
    \oneMMRNumberOn
   
    \override DynamicLineSpanner #'staff-padding = #2
    <<{c2}{s4 \trill \ff s8 s16 s32 \!}>>
  }
  \elseTag #'partScore {
    <<{r2 c2}{s2 s4 \ff \< \startTrillSpan s8 s16  s \! \stopTrillSpan}>>
  }

  \tag #'partScore {
    <<
      {f,1 \startTrillSpan}{
        \rightDynamic s4 \ffz \bindDynamics \bracketedHairpin s4
        -\tweak #'minimum-length #4 -\tweak #'extra-offset #'(0.6 . 0) \> s4 s8 \bindDynamics
      }
    >>
    <<{f1}{s8 \p -\tweak #'minimum-length #4 \> s s4 s4 s8 s16 s32 \bindDynamics}>>
    <<{f1}{s4 \pp  \bindDynamics s \> s4 s8 s16 s32}>>
    <<{f1}{s4 s4 s4 s8 s16 s \stopTrillSpan \!}>>
    f4 r r2
    \dynamicLineSpannerStandard
  }
  \elseTag #'partScore {
    <<{f1}{s4 \ffz \startTrillSpan s4 \bracketedHairpin s4 \> s8 s16 s32 \!}>>
    <<{f1}{s8  \p s \> s4 s4 s8 s16 s32 \!}>>
    <<{f1}{s8 \pp s  s4 \> s4 s8 s16 s32}>>
    <<{f1}{s4 s4 s4 s8 s16 \!  s32 \stopTrillSpan}>>
    f4 r r2
  }

  R1 * 8
  \time 2/4
  R2
  \time 4/4

  \tag #'partScore {
    <<{f1 \startTrillSpan}{s4 \fz \> s4 s4 s8 s16 s32 \!}>>
    f1 \pp
    <<{f1}{s4 s s s8 s16 s \stopTrillSpan}>>
  }
  \elseTag #'partScore {
    <<{f1}{s4 \fz \> \startTrillSpan s4 s4 s8 s16 s32 \!}>>
    f1 \pp
    <<{f1}{s4 s4 s4 s8 s16 s32 \stopTrillSpan}>>
  }

  f4 r r2
  R1
  \oneMMRNumberOff
  R1 ^\fermataMarkup

  \bar "|."
}

voiceSgMbTimpani = \new Voice {
  \time 4/4
  \tag #'partScore {
    \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Timpani" \magnify #1.1 "in F & C"}}
  }
  \elseTag #'partScore {\set Staff.instrumentName = \markup {\fontsize #3 "Timpani" }}
  \tag #'conductorScore \tag #'pocketScore {\set Staff.shortInstrumentName = "Timp."}
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "timpani"
  \clef bass
  \SgMbTimpani
}

quoteScoreSgMbTimpani = \SgMbTimpani

