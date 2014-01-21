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
  * Fichier de notes, Trombone 3                                        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMbTromboneIII =
\relative c, {

  \include "Common/Properties.ly"

  %   \set Staff.minimumPageTurnLength n'est pas défini dans cette partie
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoII

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #20

  \once \override MultiMeasureRest #'minimum-length = #'32
  R1 * 8

  \tag #'partScore {
    r4
    \oneMMRNumberOff
    \cueDuring #"scoreSgMbCornoII" #UP {s4 * 0 -\tweak #'extra-offset #'(-1 . -1.5 )
                                        ^\markup { \fontsize #-3 "Corni II&IV"} r4 r2 r4}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1
    r4
  }

  <<{f2. ~}{s4 \fp \> s4 s8 s16 s16 \!}>>

  \mark \default    % Mark A - mesure 11

  f8 \pp r r4 r2
  R1 * 6

  \tag #'partScore {
    r4
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMbViolinoI" #UP treble {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} r4 r2}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1
  }

  r4 des-- \pp ( des-- ) r
  R1
  r4 des-- \pp ( des-- ) r
  R1 * 10

  \mark \default    % Mark B - mesure 32

  R1 * 6

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuring #"scoreSgMbCornoII" #UP {s4 * 0 ^\markup { \fontsize #-3 "Corno II"} R1 r2}
    \oneMMRNumberOn
    \override DynamicLineSpanner #'staff-padding = #2
  }
  \elseTag #'partScore {
    R1
    r2
  }

  <<{g'4 c,}{\bracketedHairpin s4 \f -\tweak #'X-offset #2 \< s8 s8 \!}>>
  f,4-> \ff aes-> des-> bes->
  ees ( aes, ) des ( ges, )
  bes ( aes ) \> des ( ges, ) \!
  <<{g4 ( aes2 ) aes4 (}{s4 \p s8 s8 \> s4 s8 s8 \!}>>

  \mark \default    % Mark C - mesure 44

  des8 ) \pp r r4 r2 |

  \tag #'partScore
    \dynamicLineSpannerStandard

  R1 * 12
  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMbCornoII" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Corni"} R1 * 2}
    \oneMMRNumberOn
    \override DynamicLineSpanner #'staff-padding = #2
  }
  \elseTag #'partScore {
    R1 * 2
  }


  e1 \ppp
  e
  e
  <<{e1}{s4 s4 s4 \< s8 s16 s16 \!}>>
 
  \mark \default    % Mark D - mesure 63

  e16 \f r8. r e16-. e-. r8. r4
  R1 * 21

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMbCornoII" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Corni I&II"} R1 r2}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1
    r2
  }

  cis \f
  d4 c8-. f,-. bes4-> a->
  g-> bes-> c8 r r4
  R1

  \tag #'quoteTimpani {
    <c c'>2 \ff c8-^ bes-^ g-^ c-^
  }
  \elseTag #'quoteTimpani {
    <<{c2 c8-^ bes-^ g-^ c-^}{s4 \ff \bindDynamics s4 s4 \< s8 s16 s}>>
  }
  <<{f,1-^ ~}{s4 \ffz \bindDynamics s4 s4 \> s8 s16 s16 \!}>>
  f4 r r2
  R1 * 11
  \time 2/4
  R2
  \time 4/4
  R1 * 5
  \oneMMRNumberOff
  R1 ^\fermataMarkup

  \bar "|."
}

voiceSgMbTromboneIII = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombone" III}}
  \tag #'conductorScore \tag #'pocketScore {\set Staff.shortInstrumentName = \markup {\center-column {"Trbn." III}}}
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "trombone"
  \key f \major
  \clef bass
  \SgMbTromboneIII
}

quoteScoreSgMbTromboneIII = \SgMbTromboneIII
