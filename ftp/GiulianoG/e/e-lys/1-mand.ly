\version "2.18.0"

IMand =  \relative c'' {
  \clef "treble"
  \key e\major
  \time 4/4

  \set Staff.tupletSpannerDuration = #(ly:make-moment 1/4)


  \repeat "volta" 2 {
  \partial 8 \tuplet 3/2 {e16 gis b} |
  %1 page 1
  b gis \grace fis8 e~ e \tuplet 3/2 {e16 gis b}
    b gis \grace fis8 e~ \tuplet 6/4 {e16 b b b b b} |
  %2
  \grace cis \tuplet 6/4 {b a a a a a} \grace b
    \tuplet 6/4 {a gis gis gis gis gis} \tuplet 3/2 {fis gis a} gis8 ~
    \tuplet 6/4 {gis16 b' a gis fis e |
  %3
  fis a gis fis e dis b dis fis a gis fis} \grace fis8 e e,
    \tuplet 6/4 {r16 b'' a gis fis e |
  %4
  fis a gis fis e dis b dis fis a gis fis} \grace fis8 e e,
    \tuplet 6/4 {r16 b' b b b b |
  %5
  cis a a a a a a, cis' dis e dis cis} \grace dis cis b b8 ~
    \tuplet 6/4 {b16 b b b b b |
  %6
  a fis fis fis fis fis b, a' b cis b a} \grace b a gis gis8~
    gis16 e' gis b |
  %7
    b8[ r16 b16] a gis fis e ais b b,8 ~ b16 e gis b |
  %8
    b8[ r16 b16] a gis fis e b4 r8 b |
  %9
  \tuplet 6/4 {ais16 fis ais cis ais cis e cis e gis fis e
    dis b dis fis dis fis b fis dis b dis b |
  %10
  ais fis ais cis ais cis e cis e gis fis e}
    \grace fis e dis dis8 r fis |
  %11
  \tuplet 6/4 {dis16 fis fis fis fis fis e fis fis fis fis fis
    dis b' b b b b gis b b b b b |
  %12
  fis b b b b b e, b' b b b b dis, b' b b b b gis b b b b b |
  %13
  fis b b b b b e, b' b b b b} dis,8. b'16 \tuplet 6/4 {ais gis fis e dis cis |
  %14
  dis cis b e dis cis} dis8 cis \tuplet 6/4 {dis,16 fis b b b b}
    \grace dis \tuplet 6/4 {cis b b b b b |
  %15
  fis' b, b b b b gis' b, b b b b fis' b b b b b b gis gis gis gis gis |
  %16
  gis e e e e e e gis fis e dis cis dis, fis b b b b}
    \grace dis \tuplet 6/4 {cis b b b b b |
  %17
  fis' b, b b b b gis' b, b b b b fis' b b b b b b gis gis gis gis gis |
  %18 page 3
  gis e e e e e e gis fis e dis cis b dis fis fis fis fis b fis fis fis fis fis |
  %19 Note: The repeat bar is placed differently in mandolin and basso parts, I chose to leave the interpretation to the interpret.
  b, dis fis fis fis fis b fis fis fis fis fis} b4 r8
  }

  \repeat "volta" 2 {
  \set Score.measurePosition = #(ly:make-moment 3/4)
  s8 fis16 dis |
  %20
  b fis b dis dis b dis fis fis dis b8 ~ \tuplet 6/4 {b16 fis' fis fis fis fis} |
  %21
  \grace gis16 \tuplet 6/4 {fis e e e e e} \grace fis16 \tuplet 6/4 {e dis dis dis dis dis} cis dis e dis ~
    \tuplet 6/4 {dis16 b' ais b ais b} |
  %22
  \grace dis,   cis8[ r16 gis'] fis e dis cis
    \tuplet 6/4 {b b' ais b ais b gis b ais b ais b |
  %23
  fis b ais b ais b e, b' ais b ais b dis, b' ais b ais b gis b ais b ais b |
  %24
  fis b ais? b ais b e, b' ais b ais b} dis,8. b'16
    \tuplet 6/4 {ais! gis fis e dis cis |
  %25
  dis e fis gis ais b ais gis fis e dis cis} b8 b, r b'16 b |
  %26
  e fis g8 ~ g16 fis e dis e fis g8 ~ g b16 b, |
  %27
  a' b, g' b, fis' b, e b \tuplet 6/4 {dis b b b b b} b b b' b, |
  %28 Note: the grace ais is unclearly written and could be a gis.
  a' b, g' b, fis' b, e b \grace ais'   b8[ r16 b,]
    \grace d cis b \grace d cis b |
  %29
  a gis fis b a gis fis e b4 r8^\fermata e'16 b |
  %30
  \tuplet 6/4 {gis' fis e e e e gis fis e e e e}
    <<{s8 fis~fis s} \\ {\tuplet 3/2 {a16 gis fis} b,8 b fis'16 b,}>> |
  %31
  \tuplet 6/4 {a' gis fis fis fis fis a gis fis fis fis fis}
    <<{s8 gis} \\ {\tuplet 3/2 {b16 a gis} b,8}>> \tuplet 6/4 {r16 b' b b b b |
  %32
  e b b b b b} a b a b \tuplet 6/4 {gis b b b b b e b b b b b |
  e b b b b b} gis b fis b \tuplet 6/4 {e, b' b b b b e b b b b b |
  e b b b b b} a b a b \tuplet 6/4 {gis b b b b b e b b b b b |
  e b b b b b} gis b fis b e,4 r8 b |
  %36
  \tuplet 6/4 {gis16 b b b b b a b b b b b gis e' e e e e cis e e e e e |  
  %37
  b e e e e e a, e' e e e e} gis,8 e' \tuplet 6/4 {dis16 cis b a gis fis |
  %38
  gis fis e cis' b a} gis8 fis e b''32 a gis fis e8 eis |
  %39
  fis a32 gis fis e dis8 fis e b'32 a gis fis e8 eis |
  fis a32 gis fis e dis8 fis   e[ r16 e] \tuplet 6/4 {e b b b b b |
  %41
  b gis gis gis gis gis gis e e e e e} <e gis,>4 r8
  }
}
