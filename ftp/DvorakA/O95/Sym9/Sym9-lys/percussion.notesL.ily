\version "2.14.0"

conductormL = \relative c {
  \commonConductor
  \tag #'score \override Score.SpacingSpanner #'shortest-duration-space = #1.5
  \tag #'part \override Score.SpacingSpanner #'shortest-duration-space = #1.7
  \time 4/4
  \tag#'score \tempo "Largo" 4 = 52
  \tag#'part \tempo "Largo"
  s1*20 \mark \default \barNumberCheck#OnemL
  s1*13
  \time 2/4
  % Beam four 8th notes in 2/4 time
  \set Timing.beamExceptions = #'(
    (end . (
      ((1 . 8)  . (4))
      ((1 . 12)  . (3 3))
  )))
  s2
  \time 4/4
  s1*11 \bar "||"
  \mark \default \barNumberCheck#TwomL
  \set Score.tempoWholesPerMinute = #(ly:make-moment 68 4)
  \tag#'score \tempo "Un poco più mosso"
  \tag#'part \tempo "Più mosso"
  \once\override Staff.MultiMeasureRest #'minimum-length = #12
  s1*7
  \once\override Score.RehearsalMark #'self-alignment-X = #LEFT
  \tag#'score \tempo\markup\medium\italic"poco ritard."
  \tag#'part \tempo\markup\medium\italic"rit."
  s1
  \set Score.tempoWholesPerMinute = #(ly:make-moment 64 4)
  \tag#'score \tempo "Poco meno mosso"
  \tag#'part \tempo "Meno"
  s1*10
  \mark \default \barNumberCheck#ThreemL
  \set Score.tempoWholesPerMinute = #(ly:make-moment 68 4)
  \tag#'score \tempo "Poco più mosso"
  \tag#'part \tempo "Più"
  s1*14
  \set Score.tempoWholesPerMinute = #(ly:make-moment 60 4)
  \tempo "Meno"
  s1*12
  \scoreBreak
  \mark \default \barNumberCheck#FourmL
  \set Score.subdivideBeams = ##f
  s1*11  \bar "||"
  \mark \default \barNumberCheck#FivemL
  \tag#'part \tempo "Tempo I"
  \tag#'score \tempo "Meno mosso, Tempo I"
  \set Score.tempoWholesPerMinute = #(ly:make-moment 52 4)
  s1*18
  \tempo\markup\medium\italic"rit."
  s1
  \tempo\markup\medium\italic"a tempo"
  s1*5
  \tempo\markup\medium\italic"rit."
  s1
  \tempo "Molto Adagio"
  \once\override Staff.MultiMeasureRest #'minimum-length = #16
  s1*2 \bar "|."
}

timpanimL = \relative c {
  \clef bass
  \tag #'part \mark\markup\concat{"in D"\flat}
  \cueWhile "trombonemL" "brass" #UP R1*3
  r4 df2.\startTrillSpan\fz\> ~ |
  df8\stopTrillSpan\! r r4 r2 R1*15
  << \tag#'part \cueWhile "flute1mL" "flute" #UP {
    s2 \clef treble s2 s1*3
    \clef bass
  } R1*4 >>
  r2 df2\f\startTrillSpan |
  df2(\> df8)\stopTrillSpan\p r r4 |
  R1*7 R2 R1*11 R1*8 R1*10 R1*14 R1*12
  R1*5
  \cueWhile "trumpet1mL" "trumpet" #UP R1
  cs1*7/8\startTrillSpan\ff s8\stopTrillSpan
  cs1*7/8\startTrillSpan s8\stopTrillSpan
  cs1*7/8\startTrillSpan\> s8\stopTrillSpan
  cs1*7/8\startTrillSpan\p\> s8\stopTrillSpan
  cs1*7/8\startTrillSpan\ppp s8\stopTrillSpan
  cs4 r r2
  R1*5
  <<
    R1*3
    { s2. s4\fermata | s2 s4\fermata s4 | s2. s4\fermata | }
  >>
  R1*10
  \cueWhile "trombonemL" "brass" #UP R1*3
  df1*7/8\fz\>\startTrillSpan s8\stopTrillSpan |
  df4\p r r2 R1 R1*2
}

