\version "2.16.0"
\include "mutopia-header.ly"

     melody = \relative c'' {
        \clef treble
        \key as \major
        \time 4/4

        \partial 2 r2 r1 r r r r r r r8\ppp as8\< c c\! c4.\> c8\! c as as bes as4. g8 as\< bes as\! as ~ \times 2/3 {as8 bes as\>} g8 bes\!
        \time 2/4
        as4 ~ as8 r8
        \bar "||"
        \time 5/4
        as4\p\< g8 es\!\mf g^"ten." as bes as as--\> as\! g2 ~ \p^"dim." g4 ~ g8 r r4
        r8\ppp as8-. as4. es'8 ~ es as,16 as\< as8 as\! ces2\> ~ ces4 ~ ces8\! r8 r4
        r8\pp as8 as4. as8 as\< as\! c?\> ([as])
        \time 10/4
        c2\> es4.\! c8\< c4 c8->\! ([as]) es'1^"dim." ~
        \time 5/4
        es8 des4\< c g8\! bes as c ([as] ~
        \bar "||"
        \override Staff.TimeSignature #'style = #'()
        \time 4/4
        as)\mf r8 r as-- ~ as4.\> des,8\!
        r8 beses'\p\< des ges,\! as\> ges f\! ges
        ges4.. ges16 ges2
        r8\mf\> bes4\! des8 ces ([des]) ces bes
        es2^"dim." (bes)
        r8 as\< c as\! bes c\> bes as\! as4..\>\ppp g16\! g2
        r8\p as c as bes c c bes bes^"poco rit." c4 bes8\> ~ (bes ces4) ces8\!
        ces2\pp\<^"a tempo" ~ ces4\!\> ~ ces8\! r8
        r8 as4\pp as8 ~ as as\< as\!\> as\!
        \time 5/4
        ces1\ppp ~ ces8 r8
        r4 as4 ~ as8 as4 c?8\< as\!\> es\!
        \time 4/4
        ces1 ~ ces ~ ces\> ~ ces4\! r4 r2
        r2 r8 as'8\ppp c\< es\! f4. es8\> es\! ([c]) as ([bes]) as4. g8 as2^"dim." ~ as8 as\< as\! as^"poco" c4.\> c8\!
        c as\< as bes\! as4.--\> g8\!
        c2^"dim." (es2 c4) as8--\< as\! g2^"dim."
       (g2.\>) as4--\!\pp^"rit. e dim."
        r4 as4-- r as-- r2 es2--\ppp r1\fermata
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
