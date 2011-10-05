\version "2.14.0"

conductormF = \relative c {
  \commonConductor
  \tag #'score \override Score.SpacingSpanner #'shortest-duration-space = #1.5
  \tag #'part \override Score.SpacingSpanner #'shortest-duration-space = #1.7
  % Relative to the original score, the durations are doubled so that the beat
  %  is the more common quarter-note rather than an eighth note.
  % A vi replacement pattern to help restore the original durtions :
  %  .,/allegroMolto/s#\([a-grRs!,'>:]\)\(\d\+\)#\=submatch(1).submatch(2)*2#g
  \time 4/4
  \tag#'part \tempo "Allegro con fuoco"
  \tag#'score \tempo "Allegro con fuoco" 4 = 152
  <<
    s1*33
    \tag#'score {
      s1*32 \scoreBreak \grace s8 % match ViolinI
      s1*1
    }
  >>
  \mark \default \barNumberCheck#OnemF
  s1*10
  \mark \default \barNumberCheck#TwomF
  s1*24
  \mark \default \barNumberCheck#ThreemF
  s1*24
  \scoreBreak
  \mark \default \barNumberCheck#FourmF
  \grace s8 % match ViolinI
  s1*30
  \mark \default \barNumberCheck#FivemF
  s1*22
  \mark \default \barNumberCheck#SixmF
  s1*24
  \mark \default \barNumberCheck#SevenmF
  s1*22
  \mark \default \barNumberCheck#EightmF
  s1*24
  \scoreBreak
  \mark \default \barNumberCheck#NinemF
  \tag#'part \tempo "Meno"
  \tag#'score \tempo "Poco meno mosso"
  s1*13
  \bar "||" \tempo "Tempo I"
  \once\override Staff.MultiMeasureRest #'minimum-length = #12
  s1*24
  \mark \default \barNumberCheck#TenmF
  \tag#'part \tempo "Sostenuto"
  \tag#'score \tempo "Un poco sostenuto"
  \once\override Staff.MultiMeasureRest #'minimum-length = #14
  s1*21
  \tag#'part \tempo \markup\medium\small\italic"stringendo"
  \tag#'score \tempo \markup\medium\italic"poco stringendo"
  \once\override Staff.MultiMeasureRest #'minimum-length = #12
  s1*3
  \scoreBreak
  \mark \default \barNumberCheck#ElevenmF
  \tempo "Tempo I"
  s1*5
  \bar "||"
  s1*19
  \mark \default \barNumberCheck#TwelvemF
  s1*22
  \tag#'part \tempo \markup\medium\italic"rit."
  \tag#'score \tempo \markup\medium\italic"poco a poco ritardando"
  s1*4
  \tempo \markup\medium\italic "a tempo"
  %\once\override Staff.MultiMeasureRest #'minimum-length = #10
  s1*2
  \barNumberCheck#MenoMossomF
  \tag#'part \tempo "Meno"
  \tag#'score \tempo "Meno mosso e maesto"
  s1*4
  \tempo "Tempo I"
  s1*18
  \bar "|."
}

timpanimF = \relative c {
  \clef bass
  \tag #'part \mark\markup\concat{"in E, B"\natural}
  \cueWhile "cellomF" "strings" #DOWN R1*3
  R1*4
  \cueWhile "cellomF" "strings" #UP R1
  b1:16\f\< e4\ff r4 r2 |
  e4 r4 r2 | e4 r b r | e r r2 | e4 r r2 | e4 r r2 | e4 r b r |
  e2:16\ff\< e8\! r8 r4 | e4\ff r r2 | e4 r r2 |
  e4 r8 e8 b4 r8 b | e4 r r2 | e4 r r2 | e4 r r2 |
  e4 r8 e8 b4 r8 b | e2:16 e8 r8 r4 |
  R1*8 \barNumberCheck#OnemF
  \grace e8 e4\ff r r2 |
  \grace e8 e4\ff r r2 |
  e4 r b r |
  \grace e8 e4\ff r r2 |
  \grace e8 e4\ff r r2 |
  \grace e8 e4\ff r \grace e8 e4\ff r |
  e4 r e b e r e b |
  e4 e8-. b-. e4 e8-. b-. | e4 e8-. b-. e-. b-. e-. b-.
  \barNumberCheck#TwomF
  \tag #'score  \set Staff.instrumentName="Tmp"
  e8 r8 b r e r b r | e8 r r4 r2 R1
  e4 b e b | e r r e | b b e r |
  b4\f r4 r2 | b4\f r4 r2 | b4\f r4 r2 | b4\f r4 r2 |
  e4\f b e b | e r r2 R1
  e4\f b e b | e r r2 | b4 r r2 | e8 r e4\fz r e\fz | r e\fz r e\fz |
  R1*2
  \tag#'part \mark\markup\large\whiteout\concat
  {"in " \underline"D" ", " \underline"G"}
  \tag#'part \clef treble
  \cueWhile "cymbalmF" "cymbal" #DOWN R1*2
  \cueWhile "clarinetsmF" "clarinets" #UP R1*2
  \tag#'part \clef bass
  \barNumberCheck#ThreemF
  r4 d8\pp d r2
  R1
  \cueWhile "cellomF" "cello" #UP R1*2
  r4 d8\pp d r2 R1*14 \partPageBreak
  \trCueWhile "violin1mF" "violin 15ma" #UP c, R1*4
  d1:16\p\< | <<
    s1\ff
    \repeat unfold 8 {\repeat unfold 4 g,8-> g4 r}
    \tag#'part \repeat percent 8 s1
  >>
  g4\f r r g | r2 g4 r | r4 g r2 | g4 r r g |
  g g g g | g g g r R1*16
  \barNumberCheck#FivemF
  R1*4
  \cueWhile "bassmF" "contrabass" #DOWN  R1*2
  <<
    { s1\pp s s s\< s\fz\> s s\p s s\pp s s\< s\f }
    \repeat unfold 12 g1:32
    \tag#'part \repeat percent 12 s1
  >> R1*4
  R1*12
  \trCueWhile "flutesmF" "flute 15ma" #UP c, R1*10
  \tag#'part \mark\markup\large\concat\whiteout
  {"in D, " \underline{"B"\natural}}
  b!1:32\pp b:32 b4 r r2
  R1*3
  \tag#'part \mark\markup\large\concat\whiteout
  {"in " \underline{"E"\flat} ", B"\natural}
  \trCueWhile "violin1mF" "violin 15ma" #UP c, R1*4
  ef1:32\ff ef:32
  R1*4
  ef1:32\ff ef:32 R1*19
  \trCueWhile "violin1mF" "violin 15ma" #UP c, R1*5
  b!1:32\ff-> b:32 b4 b r b | r b r8 b b4 |
  r4 b r b | r8 b b r r4 b8 r | \barNumberCheck#NinemF R1*2
  b1:32\pp b:32 b:32 b:32 b4 r r2
  R1*6
  R1*15
  \tag#'part \mark\markup\large\concat\whiteout
  {"in " \underline"E" ", B"\natural}
  \trCueWhile "violin1mF" "violin 15ma" #UP c, R1*9 \barNumberCheck#TenmF
  <<
    { e!1:32\p e:32 e:32\< e:32\> e:32\p e:32 e:32\< e:32\> }
    \tag#'part \repeat percent 8 s1
  >> e4\! r r2 R1*7
  \trCueWhile "clarinetsmF" "clarinet 15ma" #UP c, R1
  \trCueWhile "oboesmF" "oboe 15ma" #UP c, R1
  \trCueWhile "flutesmF" "flute 15ma" #UP c, R1
  \trCueWhile "clarinetsmF" "clarinet 15ma" #DOWN c, R1
  e1:32\pp e:32 e:32 e:32\< \barNumberCheck#ElevenmF \partPageBreak
  e4\f r r2 R1*3
  \override PercentRepeatCounter #'direction = #DOWN
  <<
    s1\ff
    \repeat unfold 8 b1:32
    \tag#'part \repeat percent 8 s1
  >> R1*6
  \trCueWhile "violin1mF" "violin" #UP c,, R1*2
  \revert PercentRepeatCounter #'direction
  b4\ff e e e | b e e e | e r r2 | r4 e b b | \barNumberCheck#TwelvemF
  e8->\ff b-> e-> b-> e-> b-> e-> r R1
  e8->\ff b-> e-> b-> e-> b-> e-> r R1*3
  <<
    { s1\fff s s\> s s\p s\> s s\! }
    \repeat unfold 8 e1:32
    \tag#'part \repeat percent 8 s1
  >>
  \trCueWhile "clarinetsmF" "clarinet 8va" #UP c {
    R1*7
    r2 r4
  } \times2/3 {b8\pp b b}
  \repeat unfold 8 { e8 e r4 }
  e1:32\< e1 e4\ff r r2 R1
  <<
    { s1\ff s s\fff }
    \repeat unfold 11 e1:32
    \tag#'part \repeat percent 11 s1
  >>
  \repeat unfold 16 e4
  e4 r r2 | e4 r e r | e r r2 | e4 r r2 |
  e4 r r2 |
}

cymbalmF = \drummode {
  R1*60
  \cueWhile "violin1mF" "violin" #UP {
    R1*3
    r2
  } cymc2\mf~ cymc1~ cymc4 r4 r2
  R1*282
}

