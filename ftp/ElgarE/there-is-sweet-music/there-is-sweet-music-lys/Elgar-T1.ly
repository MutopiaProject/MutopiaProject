\version "2.16.0"
\include "mutopia-header.ly"

     melody = \relative c' {
        \clef "G2_8"
        \key g \major
        \time 4/4

        \partial 2 r8 g4\p\<^"legato ad espress." b8\!
        e4.\> d8 ~ d\! b g a b4. c8 b a g b ~
        \times 2/3 {b\pp a g} fis a ~ a d4 a8
        b4. b8 e4-> d8 b b4-- g8 a ~ a b\< b ([c])\!
        b4. a8 g\> b b a\! ~ \times 2/3 {a a g} fis a g2^"molto dim." ~
        g1 ~ g4\ppp r4 r2
        r1
        \time 2/4
        r2
        \bar "||"
        \time 5/4
        r1 r4
        g'4.\pp\< f8 ~ f\! e d e f\> c\!
        b4. c8 c4.^"dim."r8 r4
        r8\pp gis'4 fis e8 dis^"ten." e cis--\> fis,\!
        b4. c?8 c2 ~ c8 r8
        \time 10/4
        r8 c8\p\< g'\!\> ([f]) c\! c r4 r2 r8 g8\p\< d'\!\> c\! g2^"dim." ~
        \time 5/4
        g8 es'4\< es c8\! c4 as
        \bar "||"
        \override Staff.TimeSignature #'style = #'()
        \time 4/4
        gis8\mf eis'\p\<^"cantabile" gis cis,\! dis\> eis dis\! cis
        fis4.. cis16 cis2
        r8 d8\< fis b, cis\! d cis b
        e4.\> ais,8 ais4.\! ais8
        bes4.\< bes8\! ~ bes\> es bes ([g])\!
        c4. es,8 es4. r8
        r8\pp b'?8-. d-. g,-. a b a g c4..\> g16 g2\!
        r1^"poco rit."
        r8\pp^"a tempo" gis'8\< fis e dis\! e cis--\> fis,\!
        b8.-. c?16-. c2 ~ c8 r8
        \time 5/4
        r8 gis'8-. gis-.\< fis-. fis--\! e dis\> e cis fis,\! b4. c8 c2 r4
        \time 4/4
        r2 r8\p g4\< b8\!
        e4.->\mf d8 ~ d b g a
        b4.\> c8 b\! a g b\p ~
        \times 2/3 {b a g} fis\< a ~ a\! d4\> a8\!
        g1^"dim. molto" ~ g2 ~ g8 r8 r4
        r2 r8\pp c8\< g'\!\> f\!
        c2 ~ c4 r4
        r1
        r8\pp c8\< g'\!\> f\! c4 r4
        r1
        r1^"rit. e dim."
        b4--\pp r4 d-- r
        b2\ppp r2
        b1\pppp\fermata
       \bar "||"
     }

     text = \lyricmode {
        There8 is sweet mu-4. sic8 here that soft- er falls4. Than pet- als from blown ro- ses on the grass, Or night dews on still wa- ters be- tween walls Of shad- owy gran- ite, in a gleam- ing pass; Mu- sic that gen- tlier on the spi- rit lies Mu- sic that gen- tlier on the spi- rit lies Than tir'd eye- lids u- pon tir'd eyes; Mu- sic that brings sweet sleep, that brings sweet sleep down from the bliss- ful skies, that brings sweet sleep down from the bliss- full, bliss- ful skies. Here are cool moss- es deep, And in the stream the long- leaved flow- ers weep, and in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep. There is sweet mu- sic here that soft- er falls Than pet- als from blown ro- ses on the grass, And in the stream And from the crag sleep, sleep, sleep, sleep.
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
