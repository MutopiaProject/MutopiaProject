\version "2.16.0"

IIBasso =  \relative c {
  \clef "bass"
  \key bes\major

  \set Score.skipBars = ##t 

  \partial 8 r8 |
  %1 page 17 Note: bes2:8 was bes2
  bes bes bes bes bes2:8 |  bes8[ bes]  bes[ bes]  f'[ f]  f[ f] |
  %3 Note: f'2:8 was originally d2 
  bes, bes bes bes f'2:8 |
  %4 page 18
   bes,8[ bes]  bes[ bes] d2:8 |  es8[ es]  es[ es] e2: |
  r8 f16 g a8 f r c' a f | r bes f d r c' a f |
  %8 page 19
  r bes f d  es[ es]  f[ f,] | bes c d es  f[ f]  f,[ f] |
  bes4 es8 f bes,4 r |  bes8[ bes]  bes[ bes] bes2: |
  %12 page 20
  bes: f': | bes,: f': | bes,8 bes bes4 bes' bes8 bes |
  %15 page 21
  a4 a8 a g4 c, | f8 f, f4 a bes8 bes |
  %17 page 22
   c8[ c]  c[ c] c2 | c c | f4  f8[ bes]  c[ c]  c,[ c] |
  %20 Note: c2: was originally f2
  f16 f f f f4 c2:8 |
  %21 page 23 Note:  f8[ f f f] is  f16[ f f f] in the manuscript
  f2: c: | c: c: |  f8[ f f f] c'8 c, c4 |
  %24 page 24 Note: Bar was originally: r8 g' e c r e c a 
  r2 r8 g' e c | r g' es c r f c a |
  %26 Note: The first r8 is missing in the manuscript
  r8 g' es c r f c a |
  %27 Note: Here I have omitted one measure: "r f' es c r f c a"
  %27 page 25
  bes bes' c c, f g a bes | c c c, c f4 bes8 c | f,4 r  f8[ f]  f[ f] | 
  f2: f: |
  %31 page 26
  c: f: | c: f8 f16. g32 f16. es!32 d16. c32 | bes8 bes bes bes bes2: |
  %34 page 27 Note: Bars 34-35 were originally one single bar bes2: f':
  bes2: f': | bes,2: f': |
  %36
  bes,8 bes bes4 bes r | bes r es r |
  %38 page 28
  bes r bes r | es r c r |
  %40 page 28.5
  c r f r | c r c r | f2: r |
  %43 page 29
  R1*3
  %46 page 30 Note: This bar is very unclear. 
  bes,16 bes bes bes bes bes bes bes a a a a a4 |
  bes2: f': |  bes,8[ bes]  es[ e]  f[ f] f4 | r8 c' a f r bes f d |
  %50 page 31
  r c' a f r bes f d | es es f f, bes c d es | f f f, f bes4 f'8 f |
  %53
  bes,2 r2^\fermata \bar "|."
}

