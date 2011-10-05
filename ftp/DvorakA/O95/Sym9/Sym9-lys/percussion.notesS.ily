\version "2.14.0"

conductormS = \relative c {
  \commonConductor
  \tag #'score \override Score.SpacingSpanner #'shortest-duration-space = #1.5
  \tag #'part \override Score.SpacingSpanner #'shortest-duration-space = #1.7
  \time 3/4
  \tag#'score \tempo "Molto Vivace" 2. = 80
  \tag#'part \tempo "Molto Vivace"
  \repeat volta 2 {
    s2.*4
    \bar "||"
    s2.*44
    \mark \default
    \barNumberCheck#OnemS
    s2.*11
  }\scoreBreak
  s2.*8
  \bar "||"
  \tag#'score \tempo "Poco Sostenuto"
  \tag#'part \tempo "Poco Sost."
  \once\override Staff.MultiMeasureRest #'minimum-length = #14
  \set Score.tempoWholesPerMinute = #(ly:make-moment 200 4)
  s2.*31
  \scoreBreak
  \mark \default \tempo "a tempo"
  %\once\override Staff.MultiMeasureRest #'minimum-length = #12
  \set Score.tempoWholesPerMinute = #(ly:make-moment 240 4)
  \barNumberCheck#TwomS
  s2.*24
  \bar "||" \mark\default
  \barNumberCheck#ThreemS
  s2.*19
  \once\override Score.RehearsalMark #'break-visibility
  = #begin-of-line-invisible
  \bar "||" \mark \markup\musicglyph #"scripts.coda"
  s2.*12
  \mark \default
  \barNumberCheck#FourmS
  s2.*22
  \scoreBreak
  % Some instruments have alternate endings.
  % Include an alternate ending in every music stream,
  %  so that cue notes appear at consistent times,
  % but we can remove the alternate ending braces with \removeWithTag#'alt
  << {
    \repeat volta 2 {
      s2.*16
    }
    % This grace synchronizes the repeat bar with hidden grace in the violins
    \tag#'score \tag#'part \tag#'alt \grace s4
    % Parts with no alternate should have a \thinSkip at this moment
    s2
    % All the alternate endings together count as one bar
    \decrementBarNumber
    s4
  }
  \tag#'score \tag#'part \tag#'alt {
    \repeat volta 2 {
      s2.*15
    } \alternative {
      s2.
      {
        % All the alternate endings together count as one bar
        \decrementBarNumber
        \grace s4 s2
        \incrementBarNumber
        s4
      }
    }
  } >>
  \mark \default
  \barNumberCheck#FivemS
  % Temporarily beam 8ths in three separate beats
  %  (the simple rule, but not traditional for 3/4 time)
  \set Timing.beamExceptions = #'()
  \repeat volta 2 {
    s2.*47
  } \mark \default
  \barNumberCheck#SixmS
  % Restore traditional beaming for 8ths in 3/4
  \unset Timing.beamExceptions
  s2.*9
  \bar "||"
  \once\override Score.RehearsalMark #'break-visibility
  = #begin-of-line-invisible
  \mark \markup{"D.C. al " \raise #1.0 \musicglyph #"scripts.coda"}
  % break before coda
  \decrementBarNumber \thinSkip \bar""
  \break
  \once\override Score.RehearsalMark #'break-align-symbols = #'(left-edge clef)
  \mark \markup{\musicglyph #"scripts.coda" "Coda"}
  s2.*22
  \mark \default
  \barNumberCheck#SevenmS
  s2.*28
  \once\override Score.RehearsalMark #'self-alignment-X = #-1.4
  \mark \markup{\italic "G. P."}
  \once\override Staff.MultiMeasureRest #'minimum-length = #7
  R2.
  s2. \bar "|."
}

timpanimS = \relative c {
  \clef bass
  \tag #'part \mark\markup\concat{"in E, B"\natural}
  r4 e8\f e e4 e4 r r |
  r4 b8 b b4 b4 r r R2.*8
  \tag#'part \clef treble
  \cueWhile "oboe1mS" "flute & oboe" #UP R2.*8
  \cueWhile "horn3mS" "horn" #DOWN R2.
  \tag#'part \clef bass
  r4 e8\pp e e4 | e4 e r |
  r4 e e | e8 e e4 r |
  r4 e8 e e4 | e4 e r |
  r4 e8 e e4 | e4 r r R2.*3
  b8\ff b b4 r R2.*3
  b8\ff b b4 r R2.*11
  \barNumberCheck#OnemS
  e8\ff e r4 e | r4 e8 e e4 |
  e8 e r4 e | r4 e8 e e4 |
  e8 e r4 e | r4 e8 e e4 |
  e8 e r4 e | e8\ff e e4 e |
  e8 e e4 e | e8 e e4 e | e4 r r R2.*28
  << \tag#'part {
    \clef "treble^8"
    \cueWhile "flute1mS" "flute" #UP s2.*4
    \clef bass
  } R2.*4 >>
  e4\p r b4 | \repeat unfold 5 { e4 r b4 }
  b4 b8 b e4
  \barNumberCheck#TwomS
  R2.
  r4\ppp e8 e e4 | e4 e r |
  r4 e e | e8 e e4 r |
  r4 e8 e e4 | e4 e r |
  r4 e e | e8 e e4 r R2.*9
  b2.:16\p b:16 b:16\< b:16 b:16 b:16
  \barNumberCheck#ThreemS
  <<
    s2.\ff
    \repeat unfold 7 e2.:16
    \repeat percent 7 s2.
  >>
  \repeat unfold 4 { e4 e e8 e }
  s2.*0\ff \repeat unfold 4 { e8 e r4 r }
  e8-> e-> r4 r R2.
  e8-> e-> r4 r R2.
  <<
    s2.\fpp
    \repeat unfold 12 e2.:16
    \repeat percent 12 s2.
  >>
  \barNumberCheck#FourmS
  e4 r r R2.*21
  \tag #'part \mark\markup\concat{"in C, G"}
  \trCueWhile "flute1mS" "winds" #UP c, {
    R2.*2
    r4 r
  } r8 c8\pp | c4 r r R2.*2
  r4 r r8 c8\pp | c4 r r R2.*2
  r4 r r8 c8\pp | c4 r r R2.*2
  r4 r r8 c8 | c4\p r r
  <<
    s2.
    \tag#'score { c4\p r r }
    \tag#'part {
      \thinSkip
      \once\override Score.BarLine #'break-visibility
      = #end-of-line-invisible
      \pageBreak
    }
  >>
  \barNumberCheck#FivemS
  R2.*31
  \trCueWhile "oboe1mS" "oboe 15ma" #UP c, {
    R2.*2
    r4
  } r8 c\p g4 | c4 c r R2.*2
  r4 r8 c g4 | c4 c r R2.*2
  r4 r8 c\mf g4 | c4 c r R2.*2
  r4 r8 c\p g4 | c4 c r
  \barNumberCheck#SixmS
  R2.*9
  s2. %coda
  R2.*22
  R2.*2
  \tag#'part \clef "treble^8"
  \cueWhile "flute1mS" "flute" #UP R2.*4
  \tag#'part \mark\markup\concat{"in E, B"\natural}
  \tag#'part \clef bass
  b2.:16\ff b:16 b:16 b:16
  <<
    { s2.\fff s s\> s s\mf\> s\! s\p\> s }
    \repeat unfold 8 e2.:16
    \repeat percent 8 s2.
  >>
  e4\pp r r |
  \repeat unfold 3 { r4 e8 e e4 | e4 r r } R2.*3
  %\override MultiMeasureRest #'minimum-length = #8
  R2.
  e4\ff r r
}

trianglemS = {
  \tag#'part \clef treble
  % Print cymbal notes on the space above the center of the staff
  \tag#'part \set Staff.middleCPosition = #1
  % This means we need to transpose cue notes so middle C is the pitch c
  \drummode {
    tri2.:16 tri:16 tri:16 tri:16 R2.*44
    R2.*11 R2.*8
  }
  <<
    \tag#'part \trCueWhile "flute1mS" "flute" #UP c
      \context CueVoice { \slurDown s2.*7 s4 s2\stopSlurSpan }
    R2.*8
  >>
  \drummode <<
    s4\pp
    \repeat unfold 8 { r4 tri r }
    \repeat percent 8 s2.
  >>
  R2.*8
  \drummode <<
    s4\p
    \repeat unfold 7 { r4 tri r }
    \repeat percent 7 s2.
  >>
  R2.*24
  R2.*19
  R2.*12
  R2.*22
  \trCueWhile "flute1mS" "winds" #UP c R2.*2
  \drummode {
    tri2.:16\pp tri4 r r R2.*2
    tri2.:16 tri4 r r R2.*2
    tri2.:16 tri4 r r R2.*2
    tri2.:16 tri4 r r
  }
  \drummode << s2. \tag#'score {tri4 r r} \tag#'part \thinSkip >>
  \barNumberCheck#FivemS
  R2.*23
  << R2.*8
  \tag#'part \repeat unfold 4 {
    \trCueWhile "violin1mS" "strings" #UP c s2.
    \transposedCueDuring "flute1mS" #UP c {
      s1*0_\markup\tiny"winds"
      \context CueVoice {\stemDown s2. }
    }
  }
>>
  \drummode <<
    { s2.\pp s s s s s s s s\< }
    \repeat unfold 14 { \times 4/6 { tri2.:8 } tri8 r }
    \repeat percent 14 s2.
  >>
  \drummode {
    tri2.:16\fz | tri4 r r
  }
  \barNumberCheck#SixmS
  R2.*9
  s2. %coda
  R2.*22 R2.*30 \partPageBreak
}

