\version "2.16.0"
\include "mutopia-header.ly"

     melody = \relative c'' {
        \clef treble
        \key as \major
        \time 4/4

        \partial 2 r2 r1 r r r r r r r8\ppp as8\< c es\! f4.\> es8\! c as as bes c4. des8 c\< bes as\! c ~ \times 2/3 {c8 bes as\>} g8 bes\!
        \time 2/4
        as4 es' ~ \p\<
        \bar "||"
        \time 5/4
        es\! g,8 bes\mf des^"ten." c bes c des--\> as\! g2 ~ \p^"dim." g4 ~ g8 r r4
        r8\ppp as8-. as4. es'8 ~ es as,16 as\< as8 as\! ces2\> ~ ces4 ~ ces8\! r8 r4
        r8\pp as8 as4. as8 as\< c?\! es\> (as,)
        \time 10/4
        c2\> es4.\! c8\< c4 c8->\! (as) es'1^"dim." ~
        \time 5/4
        es8 des4\< c g8\! bes as c (as ~
        \bar "||"
        \override Staff.TimeSignature #'style = #'()
        \time 4/4
        as)\mf r8 r as-- ~ as4.\> des,8\!
        r8 beses'\p\< des ges,\! as\> beses as\! ges
        ces4.. ges16 ges2
        r8\mf\> fes'4\! des8 ces (des) ces bes
        es2^"dim." (bes)
        r8 c\< es as,\! bes c\> bes as\! as4..\>\ppp g16\! g2
        r8\p c es as, bes c c bes bes^"poco rit." c4 bes8\> ~ (bes ces4) ces8\!
        ces2\pp\<^"a tempo" ~ ces4\!\> ~ ces8\! r8
        r8 as4\pp as8 ~ as c?\< es\!\> as,\!
        \time 5/4
        ces1\ppp ~ ces8 r8
        r4 as4 ~ as8 as4 c?8\< es\!\> as,\!
        \time 4/4
        ces1 ~ ces ~ ces\> ~ ces4\! r4 r2
        r2 r8 as8\ppp c\< es\! f4. es8\> es\! (c) as (bes) c4. des8 c2^"dim." ~ c8 as\< as\! c^"poco" f4.\> es8\!
        es c\< as bes\! c4.--\> des8\!
        c2^"dim." (es2 c4) as8--\< c\! es2^"dim."
       (es2.\>) es4--\!\pp^"rit. e dim."
        r4 c4-- r as-- r2 es2--\ppp r1\fermata
       \bar "||"
     }

     text = \lyricmode {
        There8 is sweet mu-4. sic8 here that soft- er falls4. Than pet- als from blown ro- ses on the grass; Mu- sic that gen- tlier on the spi- rit lies  Than tir'd eye- lids u- pon tir'd eyes; That gen- tlier lies, Than tir'd eye- lids u- pon tir'd eyes; Mu- sic that brings sweet sleep, Mu- sic that brings sweet sleep down from the bliss- ful skies. Here are cool moss- es deep, And in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep. Mu- sic that brings sweet sleep down from the bliss- ful skies. And in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep, hangs in sleep, sleep, sleep, sleep, sleep.
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
