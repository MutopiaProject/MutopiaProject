%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n° 7 mouvement I, Allegro maestoso                        *
  * Fichier de notes, Timbales                                          *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMaTimpani =
\relative c {

  \include "Common/Properties.ly"

  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 16 8)
  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoI

  \tag #'partScore {
    <<{
      d2. \pp \startTrillSpan ^\markup {"in D & A"}
      d
      d
      d
      d
      d
      <<{d2.}{s4 s4 s8 s16 s32 s \stopTrillSpan}>>
      }
      \new Voice
      {
        \set countPercentRepeats = ##t
        \override PercentRepeatCounter #'outside-staff-priority = #51
        \override PercentRepeat #'transparent = ##t
        \repeat percent 7 {s2.}
    }>>
  }
  \elseTag #'partScore {
    d2. \pp \startTrillSpan ^\markup {"[in D & A]"}
    d2.
    d2.
    d2.
    d2.
    d2.
    <<{d2.}{s2 s8 s16 s32 s \stopTrillSpan}>>
  }
  d8 r r r4 r8
  R1 * 6/8 * 10

  \tag #'partScore
    \noPageTurn

  r4 r8 r d4 \startTrillSpan \pp
  d4. \> d4 \! \stopTrillSpan r8
  R1 * 6/8 * 4

  \mark \default    % Mark A - mesure 25

  R1 * 6/8 * 4

  \tag #'partScore
    \noPageTurn

  d4 \f r8 d4 r8
  d4 r8 d4 r8
  a2. \startTrillSpan \f
  <<{a2.}{s4 s4 s8 s16 s16 \stopTrillSpan}>>
  d2. \f  \> \startTrillSpan
  d2. \mf
  d2.
  <<{d2.}{s4 \< s4 s8 s16 \! s32 s64 s \stopTrillSpan}>>
  d8 \f r r r4 r8
  R1 * 6/8 * 4

  \mark \default    % Mark B - mesure 42

  R1 * 6/8 * 9

  \tag #'partScore
    \noPageTurn
  
  a4 \f r8 a4 r8
  a4 r8 a8 r r
  R1 * 6/8

  \mark \default    % Mark C - mesure 54

  r4 r8 r4 a16 \ff a
  d2. \startTrillSpan
  <<{d4. d8. a16-. a8-.}{s4 s16 s \stopTrillSpan}>>


  \tag #'partScore {
    d4.-> \fz \trill d8 [r16 a-. a8-.]
    d4.-> \fz \trill d8  -\tweak #'extra-offset #'(0 . -1.5 ) ^\markup {"[muta in B & F]"}r r
  }
  \elseTag #'partScore {
    <<{d4.-> \fz \startTrillSpan d8 [r16 a-. a8-.]}{s4 s16 s \stopTrillSpan}>>
    <<{d4.-> \startTrillSpan \fz d8 r r ^\markup {"[muta in B & F]"}}{s4 s16 s \stopTrillSpan}>>
  }
  \tag #'partScore
    \noBreak

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #15
  R1 * 6/8 * 13

  \tag #'partScore
    \noBreak
  \TempoIRit

  R1 * 6/8

  \mark \default    % Mark D - mesure 73

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #2
  \tag #'partScore
    \noBreak
  \TempoIinTempo

  R1 * 6/8 * 20

  \mark \default    % Mark E - mesure 93

  R1 * 6/8 * 18

  \tag #'partScore
    \noPageTurn

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMaFlautoI" #UP "treble" {s4 * 0 -\tweak #'extra-offset #'(0 . -1.5 )
      ^\markup { \fontsize #-4 "Flauto I"} R1 * 6/8 * 2}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/8 * 2
  }

  \mark \default    % Mark F - mesure 113

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMaViolinoI" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Vl. I"} R1 * 6/8 * 2}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/8 * 2
  }

  <<{bes2.-> \pp \startTrillSpan ^\markup {"[in B & F]"}}{s4 s4 s8 s16 s32 s \stopTrillSpan}>>
  bes4 r8 r4 r8
  \tag #'partScore
    \noBreak

  R1 * 6/8
  f4 \mf r8 r4 r8
  f4 r8 r4 r8
  f4 \cresc r8 r4 r8
  f4 r8 r4 r8
  f8 r r f8 r r \!

  \tag #'partScore {
    bes2. \ff \trill
  }
  \elseTag #'partScore {
    <<{bes2.-> \ff \startTrillSpan}{s4 s4 s8 s16 s32 s \stopTrillSpan}>>
  }

  bes8 r r r4 r8

  \tag #'partScore {
    bes2. \trill
  }
  \elseTag #'partScore {
    <<{bes2. \startTrillSpan}{s4 s4 s8 s16 s32 s \stopTrillSpan}>>
  }

  bes8 r r r4 r8

  \mark \default    % Mark G - mesure 127

  bes2. \startTrillSpan
  <<{bes2.}{s2 s8 s16 s \stopTrillSpan}>>
  bes8 \ff r f16 f bes4-> f16 f
  bes4-> f16 f bes4-> f16 f
  bes4-> f16 f bes4-> f16 f
  bes8 r r r4 \times 2/3 {bes16 bes bes}
  bes8 r r r4 \times 2/3 {bes16 bes bes}
  bes8 r r r4 \times 2/3 {bes16 bes bes}
  bes8 r r bes r r

  \tag #'partScore
    \noBreak

  bes r r bes ^\markup {"[muta in D & A]"} r r

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #15
  R1 * 6/8 * 2

 \tag #'partScore
   \pageTurn

  \mark \default    % Mark H - mesure 139

  R1 * 6/8 * 10

  \bar "||"    % mesure 149

  R1 * 6/8 * 16

  \mark \default    % Mark I forcé - mesure 165

  R1 * 6/8 * 21

  \mark \default    % Mark J - mesure 186

  R1 * 6/8 * 6

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuring #"scoreSgMaTromboneIII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Tromboni"} R1 * 6/8 * 3
     r4 -\tweak #'X-offset #-4 ^\markup {"[in D & A]"} r8}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/8 * 3
    r4 ^\markup {"[in D & A]"} r8
  }

  r4 a16 \ff a
  \bar "||"

  \mark \default    % Mark K - mesure 196

  d2. \startTrillSpan
  <<{d4. d4 a16 a}{s4. s8 s16 s32 s64 s \stopTrillSpan}>>

  \tag #'partScore {
    d4. \fz \trill d8. a16 a8
    d4.-> \trill d8 r r
  }
  \elseTag #'partScore {
    <<{d4. \fz \startTrillSpan d8[ r16 a16 a8]}{s4 s16 s32 s64 s \stopTrillSpan}>>
    <<{d4. \startTrillSpan d8 r r}{s4 s16 s32 s64 s \stopTrillSpan}>>
  }

  R1 * 6/8 * 12
  r4 r8 a4. \pp \startTrillSpan
  <<{a2.}{s4 s4 s8 s16 s32 s64 s \stopTrillSpan}>>

  \bar "||"

  \mark \default    % Mark L - mesure 214

  d8 \ppp r r r4 r8
  R1 * 6/8 * 22

  \mark \default    % Mark M - mesure 237

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMaViolinoI" #UP "treble" {s4 * 0 ^\markup { \fontsize #-3 "Vl. I all'ottava"}
      R1 * 6/8 * 6}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/8 * 6
  }

  R1 * 6/8

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMaViolinoI" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Vl. I"} R1 * 6/8 * 2}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/8 * 2
  }

  d2. \pp \startTrillSpan
  <<{d2.}{s4 s4 s8 s16 s \stopTrillSpan}>>

  \bar "||"    % mesure 248

  a2. \startTrillSpan
  a2.
  a2.
  a2. \cresc
  a2.
  a2. \ff
  a2.
  a2.

  \tag #'partScore {
    <<{a4.}{s4 s8 \stopTrillSpan}>> d4. \startTrillSpan
  }
  \elseTag #'partScore {
    <<{a4.}{s4 s16 s \stopTrillSpan}>> d4. \startTrillSpan
  }

  <<{d2.}{s4 s4 s8 s16 s16 \stopTrillSpan}>>
  d8 r r r4 r8
  R1 * 6/8
  \tag #'partScore {
    d4. \trill d8 r r
    d4. \trill d8 r r
    d4. \trill d8 r r
    d4. \trill d8 r r
    d2. \trill
    d2. \trill
  }
  \elseTag #'partScore {
    d4. \startTrillSpan d8 \stopTrillSpan r r
    d4. \startTrillSpan d8 \stopTrillSpan r r
    d4. \startTrillSpan d8 \stopTrillSpan r r
    d4. \startTrillSpan d8 \stopTrillSpan r r
    d2. \startTrillSpan
    <<{d2.}{s4 s4 s8 s16 s32 s64 s \stopTrillSpan}>>
  }

  \mark \default    % Mark N - mesure 266

  \tag #'partScore {
    a2. \trill
  }
  \elseTag #'partScore {
    <<{a2. \startTrillSpan}{s4 s4 s8 s16 s32 s64 s \stopTrillSpan}>>
  }
  a8 r r r4 r8

  \tag #'partScore
    \noBreak

  \TempoIPaPAcc

  R1 * 6/8

  \tag #'partScore
    \noBreak

  r4 r8 r4 a16 \ff a
  d8 d a16 a d8 d a16 a
  d8 d a16 a d8 d a16 a
  d2. \ff \startTrillSpan
  d2.
  d2.
  d2.

  \mark \default    % Mark O - mesure 276

  <<{d2.}{s4 s4 s8 s16 s32 s \stopTrillSpan}>>
  d8 \ff r d r d r
  d r d r d r
  d r d r d r
  \tag #'partScore {
    d2. \ff \trill
  }
  \elseTag #'partScore {
    <<{d2. \ff \startTrillSpan}{s4 s4 s8 s16 s16 \stopTrillSpan}>>
  }
  d8 d d d d d
  d d d d d a
  d a d a \> d a \!
  d a[d] \dim a d a
  d \p r r r4 r8
  r8 a \pp d a d a

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  \tag #'partScore {
    <<{
      d2. \startTrillSpan
      d2.
      d2.
      d2.
      d2.
      d2.
      d2.
      d2.
      <<{d2.}{s4 s4 s8 s16 s32 s \stopTrillSpan}>>
      }
      \new Voice
      {
        \set countPercentRepeats = ##t
        \override PercentRepeatCounter #'outside-staff-priority = #51
        \override PercentRepeat #'transparent = ##t
        \repeat percent 9 {s2.}
    }>>
  }
  \elseTag #'partScore {
    d2. \startTrillSpan
    d2.
    d2.
    d2.
    d2.
    d2.
    d2.
    d2.
    <<{d2.}{s4 s4 s8 s16 s32 s \stopTrillSpan}>>
  }

  d4 r8 r4 r8
  r4 r8 r4 d8

  \tag #'partScore {
    d2. \ppp \trill
  }
  \elseTag #'partScore {
    <<{d2. \ppp \startTrillSpan}{s4 s4 s8 s16 s16 \stopTrillSpan}>>
  }

  d8 r r r4 r8
  r4 r8 r4 d8

  \mark \default    % Mark Q - mesure 301

  d2. \pp \startTrillSpan
  d2.
  d2.
  d2.
  d2.
  d2.
  d2.
  d2.

  \TempoIPocoRit    % Mesure 309

  <<{d4. \dim ( d8 )r r}{s4 s8 s16 s16 \stopTrillSpan}>>
  
  \tag #'partScore {
    d4. \! \trill ( d8 )r r
  }
  \elseTag #'partScore {
    <<{d4. \! \startTrillSpan ( d8 )r r}{s4 s8 s \stopTrillSpan}>>
  }

  d2. \ppp \startTrillSpan
  d2.
  d2.
  <<{d2. \fermata}{s4 s4 s8 s \stopTrillSpan}>>

  \bar "|."
}

voiceSgMaTimpani = \new Voice {
  \time 6/8
  \tag #'partScore {
    \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Timpani" \magnify #1.1 "in D & A"}}
  }
  \elseTag #'partScore {\set Staff.instrumentName = \markup {\fontsize #3 "Timpani" }}
  \tag #'conductorScore \tag #'pocketScore {\set Staff.shortInstrumentName = "Timp."}
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "timpani"
  \clef bass
  \SgMaTimpani
}

quoteScoreSgMaTimpani = \SgMaTimpani
