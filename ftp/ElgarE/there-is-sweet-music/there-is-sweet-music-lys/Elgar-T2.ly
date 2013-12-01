\version "2.16.0"
\include "mutopia-header.ly"

     melody = \relative c' {
        \clef "G2_8"
        \key g \major
        \time 4/4
     
        \partial 2 r8 g4\p\<^"legato ad espress." b8\!
        e4.\> d8 ~ d\! b g a g4. fis8 g a g b ~
        \times 2/3 {b\pp a g} fis a ~ a g4 fis8
        g4. b8 e4-> d8 b b4-- g8 a ~ a g\< fis4\!
        g4. d8 d\> b' b a\! ~ \times 2/3 {a a g} fis fis g2^"molto dim." ~
        g1 ~ g4\ppp r4 r2
        r1
        \time 2/4
        r2
        \bar "||"
        \time 5/4
        r1 r4
        c4\pp\< b4 ~ b8\! c d d c\> c\!
        b4. c8 c4.^"dim."r8 r4
        r8\pp e4 dis e8 dis^"ten." e cis--\> fis,\! 
        b4. c?8 c2 ~ c8 r8
        \time 10/4
        r1 r2 r8 g8\p\< d'\!\> c\! g2^"dim." ~
        \time 5/4
        g8 es4\< es c8\! c4 as' 
        \bar "||"
        \override Staff.TimeSignature #'style = #'()
        \time 4/4
        gis8\mf cis\p\<^"cantabile" eis gis,\! ais\> bis ais\! gis
        a4.. cis16 cis2
        r8 b8\< d fis, ais\! b ais fis
        ais4.\> e8 e4.\! e8
        es4.\< g8\! ~ g\> bes g ([bes])\!
        as4. es8 es4. r8
        r8\pp g8-. b?-. d,-. e g e d c4..\> g'16 g2\!
        r1^"poco rit."
        r8\pp^"a tempo" e'8 dis\< e dis\! e cis--\> fis,\!
        b8.-. c?16-. c2 ~ c8 r8
        \time 5/4
        r8 e8-.\< e-. dis-. dis--\! e dis\> e cis fis,\!
        b4. c?8-. c2 r4
        \time 4/4
        r2 r8\p g4\< b8\!
        e4.->\mf d8 ~ d b g a
        g4.\> fis8 g\! a g b\p ~
        \times 2/3 {b a g} fis\< a ~ a\! g4\> fis8\!
        g1^"dim. molto" ~ g2 ~ g8 r8 r4
        r2 r8\pp c8\< g'\!\> f\!
        c2 ~ c4 r4
        r1
        r1
        r2 r8\pp g8\< d'\!\> c\!
        g8. g16 g4 r2^"rit. e dim."
        g4--\pp r4 b-- r
        g2\ppp r2
        g1\pppp\fermata
       \bar "||"
     }
     
     text = \lyricmode {
        There8 is sweet mu-4. sic8 here that soft- er falls4. Than pet- als from blown ro- ses on the grass, Or night dews on still wa- ters be- tween walls Of shad- owy gran- ite, in a gleam- ing pass; Mu- sic that gen- tlier on the spi- rit lies Mu- sic that gen- tlier on the spi- rit lies u- pon tir'd eyes; Mu- sic that brings sweet sleep, that brings sweet sleep down from the bliss- ful skies, that brings sweet sleep down from the bliss- full, bliss- ful skies. Here are cool moss- es deep, And in the stream the long- leaved flow- ers weep, and in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep. There is sweet mu- sic here that soft- er falls Than pet- als from blown ro- ses on the grass, And in the stream the pop- py hangs in sleep, sleep, sleep, sleep, sleep.
     }
     
     \score{
        <<
           \context Voice = one {
              \autoBeamOff
              \melody
           }
           \lyricsto "one" \new Lyrics \text
        >>
        \layout { }
        
  \midi {
    \tempo 4 = 60
    }


     }
