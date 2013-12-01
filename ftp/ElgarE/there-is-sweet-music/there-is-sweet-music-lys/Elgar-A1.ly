\version "2.16.0"
\include "mutopia-header.ly"

     melody = \relative c'' {
        \clef treble
        \key as \major
        \time 4/4

        \partial 2 r2 r1 r r r r r r r8\ppp es,8\< as as\! as4.\> as8\! as f f f f4. g8 as\< es es\! es ~ \times 2/3 {es8 f f\>} es8 es\!
        \time 2/4
        es4 ~ es8 r8
        \bar "||"
        \time 5/4
        es4\< es8 es\!\mf es^"ten." es f f f--\> f\! c4 r4 r r2
        r1 r4 r1 r4
        r8\pp as'8 as4. as8 as\< es\! e\> ([f])
        \time 10/4
        as2\> g4.\! g8\< as4 as8->\! ([f]) g2^"dim." ~ g4 ~ g8 r8
        \time 5/4
        bes4->\< as4.\< e8\! e ([f]) ges4
        \bar "||"
        \override Staff.TimeSignature #'style = #'()
        \time 4/4
        f4\mf r4 r2
        r8 ges\p\< beses des,\! eses\> ges des\! eses
        eses4.. ges16 ges2
        r8\mf\> ges4\! ges8 g ([e]) e g
        bes8 g bes es, f g f es
        es4. es8 es8.\< as16\! as8\> es\!
        as4..\>\ppp g16\! g2
        r8\p as c es, f g g f f^"poco rit." g4 as8\> ~ as4. as8\!
        as4\pp\<^"a tempo" r4 r2
        r8 as4\pp as8 ~ as as\< es\!\> as\!
        \time 5/4
        ces1\ppp ~ ces8 r8
        r4 as4 ~ as8 as4 as8\< es\!\> as\!
        \time 4/4
        ces1 ~ ces ~ ces\> ~ ces4\! r4 r2
        r2 r8 es,8\ppp as\< c\! c4. c8\> ~ c\! as4 f8 f4. es8 as2^"dim." ~ as8 es\< e\! f^"poco" as4.\> as8\!
        as es\< f f\! fes4.--\> es8\!
        as2^"dim." (g2 as4) e8--\< f\! es2^"dim."
       (es2.\>) c'4--\!\pp^"rit. e dim."
        r4 es,4-- r es-- r2 c2--\ppp r1\fermata
       \bar "||"
     }

     text = \lyricmode {
        There8 is sweet mu-4. sic8 here that soft- er falls4. Than pet- als from blown ro- ses on the grass; Mu- sic that gen- tlier on the spi- rit lies That gen- tlier lies, Than tir'd eye- lids u- pon tir'd eyes; Mu- sic that brings sweet sleep, that brings sweet sleep down from the bliss- ful skies. Here are cool moss- es deep, And thro' the moss the i- vies creep, And in the stream the flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep. Mu- sic that brings sweet sleep down from the bliss- ful skies. And in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep, hangs in sleep, sleep, sleep, sleep, sleep.
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
