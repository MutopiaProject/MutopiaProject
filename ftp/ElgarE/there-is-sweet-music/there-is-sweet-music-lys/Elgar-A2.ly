\version "2.16.0"
\include "mutopia-header.ly"
\header{
  title = "There is Sweet Music"
  opus = "Op. 53, No. 1"
  composer = "Edward Elgar"
  poet = "Tennyson"

 mutopiatitle = "There is Sweet Music"
 mutopiacomposer = "Edward Elgar (1857-1934)"
 mutopiapoet = "Tennyson"
 mutopiaopus = "Op. 53, No. 1"
 mutopiainstrument = "S.S.A.A.T.T.B.B."
 date = "1907"
 source = "Novello and Company, 1908"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Mojca Bozic"
 maintainerEmail = "mojca.bozic@guest.arnes.si"
 lastupdated = "2006/January/30"
}

     melody = \relative c' {
        \clef treble
        \key as \major
        \time 4/4

        \partial 2 r2 r1 r r r r r r r8\ppp c8\< es as\! as4.\> as8\! as f f des bes4. es8 as\< des, c\! as ~ \times 2/3 {as8 des des\>} es8 des\!
        \time 2/4
        c4 ~ c8 r8
        \bar "||"
        \time 5/4
        c4\< bes8 g\!\mf as^"ten." as des c bes--\> b\! c4 r4 r r2
        r1 r4 r1 r4
        r8\pp as8 as4. as8 as\< es'\! e\> ([f])
        \time 10/4
        as2\> es4.\! es8\< es4 e8->\! ([f]) es2^"dim." ~ es4 ~ es8 r8
        \time 5/4
        es4->\< es4.\< c8\! c4 c4
        \bar "||"
        \override Staff.TimeSignature #'style = #'()
        \time 4/4
        des4\mf r4 r2
        r8 des\p\< ges beses,\! ces\> des ces\! beses
        ces4.. ges'16 ges2
        r8\mf\> des4\! e8 e ([g]) g e
        ges8 es ges es f ges f es
        es4. c8 c8.\< es16\! es8\> c\!
        as'4..\>\ppp g16\! g2
        r8\p es as c, des es es des des^"poco rit." es4 fes8\> ~ fes4. fes8\!
        fes4\pp\<^"a tempo" r4 r2
        r8 as4\pp as8 ~ as es\< c\!\> as'\!
        \time 5/4
        ces1\ppp ~ ces8 r8
        r4 as4 ~ as8 as4 es8\< c?\!\> es\!
        \time 4/4
        ces1 ~ ces ~ ces\> ~ ces4\! r4 r2
        r2 r8 c8\ppp es\< as\! as4. as8\> ~ as\! es8 ([f]) des bes4. es8
        as2^"dim." ~ as8 es\< e\! f^"poco" as4.\> as8\!
        as es\< f des\! bes4.--\> es8\!
        as2^"dim." (es2 ~ es4) e8--\< f\! es2^"dim."
       (es2.\>) es4--\!\pp^"rit. e dim."
        r4 c4-- r c-- r2 as2--\ppp r1\fermata
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
