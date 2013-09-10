\version "2.16.0"
\include "mutopia-header.ly"

     melody = \relative c' {
        \clef "F"
        \key g \major
        \time 4/4

        \partial 2 r8 g4\p\<^"legato ad espress." g8\!
        g4.\> fis8 ~ fis\! d e c a4. d8 g, c b b ~
        \times 2/3 {b\pp c c} d c ~ c b4 d8
        g,4. g'8 g4-> fis8 d d4-- e8 c ~ c a\< d4\!
        cis4. c8 b\> b b c\! ~ \times 2/3 {c c c} d d g,2^"molto dim." ~
        g1 ~ g4\ppp r4 r2
        r1
        \time 2/4
        r2
        \bar "||"
        \time 5/4
        r1 r4
        e'4\pp\< d4 ~ d8\! c b b a\> a\!
        e'4. c8 c4.^"dim."r8 r4
        r8\pp b'4 a gis8 fis^"ten." gis dis--\> dis\!
        e4. c?8 c2 ~ c8 r8
        \time 10/4
        r1 r8 c8\p\< g'\!\> f! c2 r8 g\<^"dim." d'\!\> c\!
        \time 5/4
        g4\< as4.-- g8\! ~ g f f-- es
        \bar "||"
        \override Staff.TimeSignature #'style = #'()
        \time 4/4
        des4..\mf\> <<des16 des'16>> <<des,2 des'2\!>> <<des,2 des'2\p>> <<des,8. des'8.>> <<des,16 des'16>> <<des,8 des'8>> <<des,8 des'8>>
        << { des,2 des8 des16 des16 des8 des8 } {des'2\< des8--\! des16 des16 des8 des8 } >>
        << { des,2 des8 des16 des16 des8 des8 } {des'2 des8\> des16 des16 des8 des8\! } >>
        << { des,2 ~ des8 des8 des8. des16 } {  des'2\< ~ des8\!\> des8 des8. des16\! } >>
        << { c,2 ~ c4 ~ c8 } { c'2 ~ c4 ~ c8 } >> r8
        r4 r8\pp b c d c b g1\> r1\!^"poco rit."
        r8\pp^"a tempo" b'8 a\< gis fis\! gis dis--\> dis\!
        e8.-. c?16-. c2 ~ c8 r8
        \time 5/4
        r8 b'8-.\< b-. a-. a--\! gis fis\> gis dis dis\!
        e4. c?8-. c2 r4
        \time 4/4
        r2 r8\p g4\< g8\!
        g'4.->\mf fis8 ~ fis d e c
        a4.\> d8 g,\! c b b\p ~
        \times 2/3 {b c c} d\< c ~ c\! b4\> d8\!
        g,1^"dim. molto" ~ g2 ~ g8 r8 r4
        r1
        r8\pp c8\< g'\!\> f\! c2 ~
        c4. r8 r2
        r1
        r8\pp c8\< g'\!\> f\! c2
        r8 g8\< d'\!\> c g4.^"rit. e dim." g8
        g4--\pp r4 d'-- r
        g,2\ppp r2
        g1\pppp\fermata
       \bar "||"
     }

     text = \lyricmode {
        There is sweet mu- sic here that soft- er falls Than pet- als from blown ro- ses on the grass, Or night dews on still wa- ters be- tween walls Of shad- owy gran- ite, in a gleam- ing pass; Mu- sic that gen- tlier on the spi- rit lies, Mu- sic that gen- tlier on the spi- rit lies, u- pon tir'd eyes, u- pon tir'd eyes; Mu- sic that brings sweet sleep, that brings sweet sleep, that brings sweet sleep down from the bliss- ful skies, down from the bliss- ful skies, the bliss- ful skies. The long- leaved flow- ers weep, and in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep. There is sweet mu- sic here that soft- er falls Than pet- als from blown ro- ses on the grass, the flow- ers weep, the pop- py hangs, the pop- py hangs in sleep, sleep, sleep, sleep.
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
