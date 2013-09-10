\version "2.16.0"
\include "mutopia-header.ly"

     melody = \relative c' {
        \clef "F"
        \key g \major
        \time 4/4

        \partial 2 r8 g4\p\<^"legato ad espress." g8\!
        b4.\> b8 ~ b\! fis g e e4. d8 d d d dis ~
        \times 2/3 {dis\pp e e} d e ~ e d4 d8
        d4. g8 b4-> b8 fis fis4-- e8 e ~ e e\< d4\!
        e4. fis8 g\> dis dis e\! ~ \times 2/3 {e e e} d d g,2^"molto dim." ~
        g1 ~ g4\ppp r4 r2
        r1
        \time 2/4
        r2
        \bar "||"
        \time 5/4
        r1 r4
        g'4\pp\< g4 ~ g8\! g g g a\> a\!
        gis4. gis8 gis4.^"dim."r8 r4
        r8\pp b4 a b8 a^"ten." b fis--\> fis\!
        gis4. gis8 gis2 ~ gis8 r8
        \time 10/4
        r2 r8 g8\p\< d'\!\> (c)\! c c4. ~ c4 r4 r8 g,\<^"dim." d'\!\> c\!
        \time 5/4
        a4\< as'4.-- g8\! ~ g f f-- es
        \bar "||"
        \override Staff.TimeSignature #'style = #'()
        \time 4/4
        cis8\mf gis'\p\<^"cantabile" cis eis,\! fis\> gis fis\! eis
        fis4.. cis16 cis2
        r8 fis8\< b d, fis\! b fis d
        fis4.\> cis8 cis4.\! cis8
        cis2\< ~ cis8\!\> cis cis8. cis16\!
        c?2 ~ c4 ~ c8 r8
        r8\pp d8-. g-. b,-. c d c b c4..\> g16 g2\!
        r1^"poco rit."
        r8\pp^"a tempo" b'8 a\< b a\! b fis--\> fis\!
        gis8.-. gis16-. gis2 ~ gis8 r8
        \time 5/4
        r8 b8-.\< b-. a-. a--\! b a\> b fis fis\!
        gis4. gis8-. gis2 r4
        \time 4/4
        r2 r8\p g,4\< g'8\!
        b4.->\mf b8 ~ b fis g e
        e4.\> d8 d\! d d dis\p ~
        \times 2/3 {dis e e} d\< e ~ e\! d4\> d8\!
        g,1^"dim. molto" ~ g2 ~ g8 r8 r4
        r1
        r8\pp c8\< g'\!\> f\! c2 ~
        c4. r8 r2
        r2
        r8\pp g'8\< d'\!\> c\!
        c8. c16 c2 r4
        r8 g,8\< d'\!\> c g4.^"rit. e dim." g8
        d'4--\pp r4 g-- r
        d2\ppp r2
        d1\pppp\fermata
       \bar "||"
     }

     text = \lyricmode {
        There8 is sweet mu-4. sic8 here that soft- er falls4. Than pet- als from blown ro- ses on the grass, Or night dews on still wa- ters be- tween walls Of shad- owy gran- ite, in a gleam- ing pass; Mu- sic that gen- tlier on the spi- rit lies Mu- sic that gen- tlier on the spi- rit lies Than tir'd eye- lids u- pon tir'd eyes; Mu- sic that brings sweet sleep, that brings sweet sleep down from the bliss- ful skies, that brings sweet sleep down from the bliss- full, bliss- ful skies, the bliss- ful skies. And in the stream the long- leaved flow- ers weep, and in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep. There is sweet mu- sic here that soft- er falls Than pet- als from blown ro- ses on the grass, the flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep, sleep, sleep, sleep.
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
