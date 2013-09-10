\version "2.16.0"
\include "mutopia-header.ly"

     << \relative c'' {
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

     \addlyrics {
        There8 is sweet mu-4. sic8 here that soft- er falls4. Than pet- als from blown ro- ses on the grass; Mu- sic that gen- tlier on the spi- rit lies  Than tir'd eye- lids u- pon tir'd eyes; That gen- tlier lies, Than tir'd eye- lids u- pon tir'd eyes; Mu- sic that brings sweet sleep, Mu- sic that brings sweet sleep down from the bliss- ful skies. Here are cool moss- es deep, And in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep. Mu- sic that brings sweet sleep down from the bliss- ful skies. And in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep, hangs in sleep, sleep, sleep, sleep, sleep.
     }

\relative c'' {
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

     \addlyrics {
        There8 is sweet mu-4. sic8 here that soft- er falls4. Than pet- als from blown ro- ses on the grass; Mu- sic that gen- tlier on the spi- rit lies  Than tir'd eye- lids u- pon tir'd eyes; That gen- tlier lies, Than tir'd eye- lids u- pon tir'd eyes; Mu- sic that brings sweet sleep, Mu- sic that brings sweet sleep down from the bliss- ful skies. Here are cool moss- es deep, And in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep. Mu- sic that brings sweet sleep down from the bliss- ful skies. And in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep, hangs in sleep, sleep, sleep, sleep, sleep.
     }

\relative c'' {
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

     \addlyrics {
        There8 is sweet mu-4. sic8 here that soft- er falls4. Than pet- als from blown ro- ses on the grass; Mu- sic that gen- tlier on the spi- rit lies That gen- tlier lies, Than tir'd eye- lids u- pon tir'd eyes; Mu- sic that brings sweet sleep, that brings sweet sleep down from the bliss- ful skies. Here are cool moss- es deep, And thro' the moss the i- vies creep, And in the stream the flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep. Mu- sic that brings sweet sleep down from the bliss- ful skies. And in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep, hangs in sleep, sleep, sleep, sleep, sleep.
     }

   \relative c' {
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

     \addlyrics {
        There8 is sweet mu-4. sic8 here that soft- er falls4. Than pet- als from blown ro- ses on the grass; Mu- sic that gen- tlier on the spi- rit lies That gen- tlier lies, Than tir'd eye- lids u- pon tir'd eyes; Mu- sic that brings sweet sleep, that brings sweet sleep down from the bliss- ful skies. Here are cool moss- es deep, And thro' the moss the i- vies creep, And in the stream the flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep. Mu- sic that brings sweet sleep down from the bliss- ful skies. And in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep, hangs in sleep, sleep, sleep, sleep, sleep.
     }

\relative c' {
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

     \addlyrics {
        There8 is sweet mu-4. sic8 here that soft- er falls4. Than pet- als from blown ro- ses on the grass, Or night dews on still wa- ters be- tween walls Of shad- owy gran- ite, in a gleam- ing pass; Mu- sic that gen- tlier on the spi- rit lies Mu- sic that gen- tlier on the spi- rit lies Than tir'd eye- lids u- pon tir'd eyes; Mu- sic that brings sweet sleep, that brings sweet sleep down from the bliss- ful skies, that brings sweet sleep down from the bliss- full, bliss- ful skies. Here are cool moss- es deep, And in the stream the long- leaved flow- ers weep, and in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep. There is sweet mu- sic here that soft- er falls Than pet- als from blown ro- ses on the grass, And in the stream And from the crag sleep, sleep, sleep, sleep.
     }

\relative c' {
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

     \addlyrics {
        There8 is sweet mu-4. sic8 here that soft- er falls4. Than pet- als from blown ro- ses on the grass, Or night dews on still wa- ters be- tween walls Of shad- owy gran- ite, in a gleam- ing pass; Mu- sic that gen- tlier on the spi- rit lies Mu- sic that gen- tlier on the spi- rit lies u- pon tir'd eyes; Mu- sic that brings sweet sleep, that brings sweet sleep down from the bliss- ful skies, that brings sweet sleep down from the bliss- full, bliss- ful skies. Here are cool moss- es deep, And in the stream the long- leaved flow- ers weep, and in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep. There is sweet mu- sic here that soft- er falls Than pet- als from blown ro- ses on the grass, And in the stream the pop- py hangs in sleep, sleep, sleep, sleep, sleep.
     }

\relative c' {
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

     \addlyrics {
        There8 is sweet mu-4. sic8 here that soft- er falls4. Than pet- als from blown ro- ses on the grass, Or night dews on still wa- ters be- tween walls Of shad- owy gran- ite, in a gleam- ing pass; Mu- sic that gen- tlier on the spi- rit lies Mu- sic that gen- tlier on the spi- rit lies Than tir'd eye- lids u- pon tir'd eyes; Mu- sic that brings sweet sleep, that brings sweet sleep down from the bliss- ful skies, that brings sweet sleep down from the bliss- full, bliss- ful skies, the bliss- ful skies. And in the stream the long- leaved flow- ers weep, and in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep. There is sweet mu- sic here that soft- er falls Than pet- als from blown ro- ses on the grass, the flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep, sleep, sleep, sleep.
     }

\relative c' {
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

     \addlyrics {
        There is sweet mu- sic here that soft- er falls Than pet- als from blown ro- ses on the grass, Or night dews on still wa- ters be- tween walls Of shad- owy gran- ite, in a gleam- ing pass; Mu- sic that gen- tlier on the spi- rit lies, Mu- sic that gen- tlier on the spi- rit lies, u- pon tir'd eyes, u- pon tir'd eyes; Mu- sic that brings sweet sleep, that brings sweet sleep, that brings sweet sleep down from the bliss- ful skies, down from the bliss- ful skies, the bliss- ful skies. The long- leaved flow- ers weep, and in the stream the long- leaved flow- ers weep, And from the crag- gy ledge the pop- py hangs in sleep. There is sweet mu- sic here that soft- er falls Than pet- als from blown ro- ses on the grass, the flow- ers weep, the pop- py hangs, the pop- py hangs in sleep, sleep, sleep, sleep.
     }


     >>
