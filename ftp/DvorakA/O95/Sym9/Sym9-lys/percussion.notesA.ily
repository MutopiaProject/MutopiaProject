\version "2.14.0"

conductormA = \relative c {
  \commonConductor
  \tag #'score \override Score.SpacingSpanner #'shortest-duration-space = #1.5
  \tag #'part \override Score.SpacingSpanner #'shortest-duration-space = #1.7
  % Relative to the original score, the durations are doubled so that the beat
  %  is the more common quarter-note rather than an eighth note.
  % A vi replacement pattern to help restore the original durtions :
  %  .,/allegroMolto/s#\([a-grRs!,'>:]\)\(\d\+\)#\=submatch(1).submatch(2)*2#g
  \time 4/4
  \tag#'part \tempo "Adagio"
  \tag#'score \tempo "Adagio" 4 = 63
  <<
    s1*23
    \tag#'score {s1*8 \scoreBreak s1*14 \scoreBreak s1 }
  >>
  \once\override Score.RehearsalMark #'break-visibility
  = #begin-of-line-invisible
  \once\override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark\markup\small\italic"attacca"
  \newSpacingSection
  \barNumberCheck#allegroMolto
  \time 2/4
  % end beams over 1/8th notes at end of measure
  \set Timing.beamExceptions = #'(
  (end . (
  ((1 . 8)  . (4))
  ((1 . 12)  . (3 3))
  )))
  \repeat volta 2 {
    \tag#'part \tempo "Allegro Molto"
    \tag#'score \tempo "Allegro Molto" 4 = 136
    <<
      s2*35
      \tag#'score {
        s2*15
        \scoreBreak
        \grace s8 % synchronize with Violin's grace note
        s2*20
      }
    >>
    \mark \default \barNumberCheck#rehearsalOne
    s2*18
    \scoreBreak
    \mark \default \barNumberCheck#rehearsalTwo
    s2*14
    \mark \default \barNumberCheck#rehearsalThree
    s2*30
    \mark \default \barNumberCheck#rehearsalFour
    s2*28
    \mark \default \barNumberCheck#rehearsalFive
    <<
      s2*28
      \tag#'score {
        s2*22
        \scoreBreak
        \grace s8 % synchronize with Violins' grace note
        s2*6
      }
    >>
  } \alternative {
    {
      \repeat unfold 4 { \noBreak s2 }
    } {
      \mark \default \barNumberCheck#rehearsalSix
      s2
    }
  }
  s2*31
  \mark \default \barNumberCheck#rehearsalSeven
  s2*32
  \mark \default \barNumberCheck#rehearsalEight
  s2*32
  \mark \default \barNumberCheck#rehearsalNine
  <<
    s2*31
    \tag#'score {
      s2*26
      \scoreBreak
      s2*5
    }
  >>
  \mark \default \barNumberCheck#rehearsalTen \bar "||"
  <<
    s2*34
    \tag#'score {
      s2*16 %\scoreBreak
      s2*18
    }
  >>
  \mark \default \barNumberCheck#rehearsalEleven \bar "||"
  s2*12
  \bar "||"
  <<
    s2*20
    \tag#'score {
      s2*4 \repeat unfold 6 {\noBreak s2} s2*10
    }
  >>
  \mark \default \barNumberCheck#rehearsalTwelve
  <<
    s2*26
    \tag#'score {
      s2*22 \scoreBreak s2*4
    }
  >>
  \mark \default \barNumberCheck#rehearsalThirteen \bar "||"
  s2*53\bar "|."
}

timpanimA = \relative c {
  \clef bass
  \tag #'part \mark\markup\concat{"in A, E, B"\natural}
  R1*5
  <<
    \tag #'part {
      \clef treble
      \cueWhile "flute1mA" "flute" #UP { s1*3 s2 }
      \clef bass
      \cueWhile "violin1mA" "strings" #UP { s2 r16 }
    } { R1*4 r16 }
  >> a32\< a a16\ff r16 r4 r2 |
  r16 a32\< a a16\ffz r16 r4 r2 |
  r16 a32 a a16 r16 r4 r16 a32 a a16 r16 r4 |
  R1*6
  \cueWhile "trombone1mA" "winds" #UP {
    R1*2
  }
  r8 e'16\mf\< e e e e e  e2*7/8\startTrillSpan s16\stopTrillSpan
  r8\! e\ffz r b\ffz\> b2\startTrillSpan
  b4\stopTrillSpan\p r r2
  \barNumberCheck#allegroMolto
  R2*12
  \tag #'part \clef treble
  \trCueWhile "flute1mA" "flute 8va" #UP c
  R2*3
  \tag #'part \clef bass
  b2\startTrillSpan\ff ~ b8\stopTrillSpan r r4
  e2\startTrillSpan\ff ~ e8\stopTrillSpan r r4
  b2\startTrillSpan\ff ~ b8\stopTrillSpan r r4
  e2\startTrillSpan\ff ~ e8\stopTrillSpan r r4
  R2*6
  r4 e-.\ff r e-. r e-. r e-. |
  b2\startTrillSpan\p ~ b2*7/8 s16\stopTrillSpan
  \barNumberCheck#rehearsalOne
  e2\startTrillSpan\ff e e e
  e4\stopTrillSpan r8 b8 | e4 r8 b8 | e8 r r4 |
  r4 r8 e\f | e4 r | r4 r8 e | e4 r | r4 r8 e | b4 r | r4 r8 b |
  e4\startTrillSpan\f e8\stopTrillSpan r8
  R2
  e4\startTrillSpan\f e8\stopTrillSpan r8
  R2
  \barNumberCheck#rehearsalTwo
  R2*14
  R2*26
  \tag#'part \clef treble
  \trCueWhile "violin1mA" "violin 8va" #UP c
  R2*4
  \tag#'part \clef bass
  \barNumberCheck#rehearsalFour
  e2\startTrillSpan\f e\> e e
  e8\stopTrillSpan\p r r4
  R2*23
  \barNumberCheck#rehearsalFive
  R2*18
  \tag#'part \clef treble
  \trCueWhile "violin1mA" "violin 8va" #UP c
  R2*4
  \tag#'part \clef bass
  b2\startTrillSpan\ff b b b2*7/8 s16\stopTrillSpan
  e8 b b e b b b e |
  b8 r b r b16-> b16-> r8 r4
  R2*2
  \barNumberCheck#rehearsalSix
  b8 r b r
  R2*31 \partPageBreak
  \barNumberCheck#rehearsalSeven
  R2*28
  \tag#'part \clef treble
  \trCueWhile "violin1mA" "violin 8va" #UP c
  R2*4
  \tag#'part \clef bass
  \barNumberCheck#rehearsalEight
  e2\startTrillSpan\ff e e e
  e4\stopTrillSpan\f r8 e16 e | e4 r8 e16 e |e4 r8 e16 e | e4 r8 e16 e |
  e8 r r4
  R2*23
  \barNumberCheck#rehearsalNine
  \cueWhile "horn3mA" "horn" #UP
  R2*4
  e4\pp r8 b8 e4 r8 b8 e4 r8 b8 e4 r4
  R2*7
  b2\startTrillSpan\ff b8\stopTrillSpan r8 r4
  R2*14
  \barNumberCheck#rehearsalTen
  R2*34
  \barNumberCheck#rehearsalEleven
  R2*32
  \barNumberCheck#rehearsalTwelve
  R2*22
  \trCueWhile "horn1mA" "horn 8va" #UP c
  R2*4
  \barNumberCheck#rehearsalThirteen
  \override PercentRepeatCounter #'direction = #DOWN
  <<
    { e2\startTrillSpan\fff e e e e e e e }
    \tag #'part { \repeat percent 8 s2 }
  >>
  R2*4\stopTrillSpan
  b2\startTrillSpan\ff b b b2*7/8 s16\stopTrillSpan
  <<
    { e2\startTrillSpan e e e e e e e }
    \tag #'part { \repeat percent 8 s2 }
  >>
  e4\stopTrillSpan r e r e r e r
  \repeat unfold 4 { e8 r e r}
  e8 r e8.->\ff e16 | e8 r b8.-> b16 | e8 r e8.-> e16 |
  e8 r b r | e4 r8 b16 b | e4 r8 b16 b |
  \repeat unfold 4 { e8 b }
  e2\startTrillSpan\ff e e e e e e e
  e8\stopTrillSpan r e r | r4 e8. e16 |
  \repeat unfold 3 { e8 r r4 }
}

