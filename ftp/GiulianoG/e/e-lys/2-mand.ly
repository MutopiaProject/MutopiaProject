\version "2.18.0"

IIMand =  \relative c'' {
  \clef "treble"
  \key a\major
  \time 3/4

  \set Staff.tupletSpannerDuration = #(ly:make-moment 1/4)

  \repeat "volta" 2 {
  \partial 8 a |
  %1 page 4
  \grace b16 a8. gis32 fis <<{e8 e e e} \\ {s cis cis cis}>> |
  \grace b'8 a8. gis32 fis <<{e8 e e e} \\ {s cis cis cis}>> |
  %3
  \grace gis'16 fis8 e16 fis
    \grace fis8 e4 e16   d[ cis d] |
  %4
  cis8. d16 \appoggiatura {cis32[  d]} e8 a'16 e e8 cis |
  %5
  \grace d16 cis b b8 r b'16 gis e8 d |
  %6 
  d16 b cis8 r16 a cis e e e e e |
  %7
  e16 fis, fis8 ~ fis d'16 cis \grace cis b8 a16 gis |
  %8
  \grace b a8 gis16 a a,4 r |
  %9
  <<{fis'16 fis fis fis fis fis fis fis} \\ {d d d d d4:16}>> fis16 fis' e d |
  %10 Note: the cis4: notes in bars 10,11,12 were written without stems, 4:16 assumed.
  <<{cis e, e e} {s cis cis cis}>> <<{e e e e e e e e} \\ {cis4:16 cis:}>> |
  <<{fis16 fis fis fis fis fis fis fis} \\ {d4:16 d:}>> fis16 fis' e d |
  <<{cis e, e e} {s cis cis cis}>> <<{e e e e e e e e} \\ {cis4:16 cis:}>> |
  %13
  a''16. gis32 \grace gis16 fis e
    d16. cis32 \grace cis16 b a e'8 cis |
  \grace d16 cis8 b b4 r |
  %15
  a'16 fis dis8~   dis16[ b cis dis e fis gis a] |
  b16 gis e8 ~ e16 e e e \grace fis16 e8 dis16 e |
  a16 fis dis8~   dis16[ b cis dis e fis gis a] |
  %18
  b8. gis16 e4 r8 <<b \\ gis>> |
  %19
  <<{b8. cis16 b} \\ {gis8. a16 gis e' dis e}>> dis e dis e |
  <<{b8. cis16 b} \\ {gis8. a16 gis e' dis e}>> dis e dis e |
  %21 page 5
  <<e4 \\ gis,>> gis8 b \grace b16 a8 gis16 fis |
  %22
  e2 r8
  }

  \repeat "volta" 2 {
  e'8 |
  %23
  b'16 b, b b b b b b b' b, a' b, |
  %24
  a' b, gis' b, gis' b, gis' b, e, gis b e |
  %25
  \grace d8 cis! b16 cis \grace cis8 b4
    \grace b16 a8 gis16 a |
  %26
  gis8. a16 b8 b'16 gis e8 gis |
  %27
  <<{s8 fis~ \oneVoice fis8 a16 fis} \\ {\grace a16 gis fis b,8}>>
    <<b'4 \\ {dis,16 b cis dis}>> |
  %28
  e16 fis gis a b8 b16 gis e8 gis |
  %29
  \grace a16 gis fis fis8~ fis8 a16 fis
    <<b4 \\ {dis,16 b cis dis}>> |
  %30
  e4 r r |
  e16 cis a a a a a a \grace b a8 gis16 fis |
  \grace gis16 fis8 e <e a,>4 r |
  %33
  b''16 gis d d d d d d \grace e d8 cis16 b |
  e8. cis16 a8 a a4 |
  %35 Note: the 4:16 notes in bars 35,37 were written without stems, 4:16 assumed.
  <<{fis16 fis fis fis fis fis fis fis} \\ {d4:16 d:}>> fis16 fis e d |
  %36
  cis16 e a a a4:16 a: |
  %27
  <<{fis16 fis fis fis fis fis fis fis} \\ {d4:16 d:}>> fis16 fis e d |
  %38
  cis16 e a a a a a a a a a a |
  %39
  <<{e8. fis16} \\ {cis8. d16}>> <e cis> a gis a gis a gis a | 
  <<{e8. fis16} \\ {cis8. d16}>> <e cis> a gis a gis a gis a |
  %41
  \grace gis16 fis8 e16 d cis4 b |
  %42
  <a' e cis>2 r8
  }
}
