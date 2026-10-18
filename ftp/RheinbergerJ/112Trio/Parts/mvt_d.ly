mvt_d_canvas = { % {{{
  \key a \major \time 4/4 \tempo "Allegro con fuoco" 4 = 138
  \sectionLabel \markup { \smallCaps "Finale." }
  \partial 8 s8 |
  \barNumberCheck #1   s1*14 |
  \mark #10 % K, because letter I is traditionally not printed
  \barNumberCheck #15  s1*14 |
  \mark \default % L
  \barNumberCheck #29  s1*18 |
  \mark \default % M
  \barNumberCheck #47  s1*42 |
  \mark \default % N <<< DUBIOUS
  \barNumberCheck #89  s1*24 |
  \mark \default % O
  \barNumberCheck #113 s1*24 |
  \mark \default % P
  \barNumberCheck #137 s1*15 |
  \mark \default % Q <<< DUBIOUS
  \barNumberCheck #152 s1*18
  \mark \default % R
  \barNumberCheck #170 s1*29 \fine |
  \barNumberCheck #199
} % }}}

mvt_d_tempi = \new Voice \relative c' { % {{{
  \time 4/4
  \partial 8 s8
  \barNumberCheck #1 s1*45 |
  \barNumberCheck #46 \once \override TextSpanner.bound-details.left.text = "poco rit." \after 16*15 \stopTextSpan s1\startTextSpan |
  \barNumberCheck #47 s1*93 |
  \barNumberCheck #140 \once \override TextSpanner.bound-details.left.text = "poco" \after 4. \stopTextSpan s2\startTextSpan
                       \once \override TextSpanner.bound-details.left.text = "a"    \after 4. \stopTextSpan s2\startTextSpan |
  \barNumberCheck #141 \once \override TextSpanner.bound-details.left.text = "poco" \after 4. \stopTextSpan s1\startTextSpan |
  \barNumberCheck #142 \once \override TextSpanner.bound-details.left.text = "rit." \once \override TextSpanner.bound-details.right.text = "a tempo" s2.\startTextSpan s4\stopTextSpan |
  \barNumberCheck #143 s1*17 |
  \barNumberCheck #160 s2.. s8-\markup{\italic "con fuoco"} |
  \barNumberCheck #161 s1*7
  \barNumberCheck #168 s2 s2-\markup{\italic "poco rit."} |
  \barNumberCheck #169 s1*20
  \barNumberCheck #189 \once \override TextSpanner.bound-details.left.text = "rit." \once \override TextSpanner.bound-details.right.text = "a tempo" s1\startTextSpan |
  \barNumberCheck #190 s1\stopTextSpan |
  \barNumberCheck #191 s1*5 |
  \barNumberCheck #196 s4. s8-\markup{\italic "più mosso"} s2 |
  \barNumberCheck #197 s1*2 \fine |
  \barNumberCheck #199
} % }}}

mvt_d_violin = \new Voice \relative c' { % {{{
  \key a \major \time 4/4 \clef treble \partial 8 e'8-.\ff |
  \barNumberCheck #1   a2-\markup{\italic "marc."} e4. fis8-. |
  \barNumberCheck #2   cis-. d-. e-. a,-. b4-> r |
  \barNumberCheck #3   r2 r4 r8 e\p( |
  \barNumberCheck #4   fis)\< gis-. a-. b-.\! a-.\> gis-. fis-. e-.\! |
  \barNumberCheck #5   e'4.->\f e,8 e'4.-> cis,8( |
  \barNumberCheck #6   dis)-. e-. eis-.\< fis-. gis-. a-. b-. bis\! |
  \barNumberCheck #7   cis2(\ff a4) r |
  \barNumberCheck #8   r2 r4 r8 cis,,8\p |
  \barNumberCheck #9   fis2( d4) r8 b8-. |
  \barNumberCheck #10  e2( cis4) r8 a\pp |
  \barNumberCheck #11  gis2-.( cis)-. |
  \barNumberCheck #12  cis-.( bis-.) |
  \barNumberCheck #13  r1 |
  \barNumberCheck #14  r2 r4 r8 eis'8(\mf |
  \mark \default % K
  \barNumberCheck #15  fis4) r8 fis8( b4) r8 b |
  \barNumberCheck #16  fis2.\sf d4( |
  \barNumberCheck #17  g4.)-\markup{\italic "dolce"} d8( fis4.) d8( |
  \barNumberCheck #18  g2.) r4 |
  \barNumberCheck #19  r1 |
  \barNumberCheck #20  r |
  \barNumberCheck #21  r |
  \barNumberCheck #22  r2 r4 r8 e8-\ff |
  \barNumberCheck #23  a2 e4. fis8-. |
  \barNumberCheck #24  cis-. d-. e-. a,-. b4-> r |
  \barNumberCheck #25  r1 |
  \barNumberCheck #26  r2 r4 r8 a'8( |
  \barNumberCheck #27  b) cis-.\< d-. dis-.e-. fis-. gis-.\! a-. |
  \barNumberCheck #28  b2(\sf e,4) r |
  \mark \default % L
  \barNumberCheck #29  r1 |
  \barNumberCheck #30  r |
  \barNumberCheck #31  r4 e,(-\markup{\dynamic p \italic "dolce"} b'2) ~ |
  \barNumberCheck #32  b gis4( e) |
  \barNumberCheck #33  dis2.( e8 fis) |
  \barNumberCheck #34  b,2. r4 |
  \barNumberCheck #35  r e(\< b'2)\! ~ |
  \barNumberCheck #36  b g4( e) |
  \barNumberCheck #37  d-. r8 d(\< g2)\! ~ |
  \barNumberCheck #38  g8 d(\f e f) a4( g) |
  \barNumberCheck #39  cis,-.\p r8 cis( fis2) ~ |
  \barNumberCheck #40  fis8\< eis( fis ais)\! e'4(\> dis)\! |
  \barNumberCheck #41  r8 b,(\p\< dis fis) b2\! ~ |
  \barNumberCheck #42  b8 ais( b\< cis) \after 4 \! d2 |
  \barNumberCheck #43  dis1\ff ~ |
  \barNumberCheck #44  dis4 b-- ais-- fisis-- |
  \barNumberCheck #45  fis1\fp ~ |
  \barNumberCheck #46  fis4 dis(-\markup{\italic "smorz."} b a) |
  \mark \default % M
  \barNumberCheck #47  gis4-.^\markup{\italic "tranquillo"} r b,2\pp ~ |
  \barNumberCheck #48  b r |
  \barNumberCheck #49  r b ~ |
  \barNumberCheck #50  b r |
  \barNumberCheck #51  r b\mf ~ |
  \barNumberCheck #52  b r |
  \barNumberCheck #53  r b\pp ~ |
  \barNumberCheck #54  b r |
  \barNumberCheck #55  r \after 4. \! b'(\< |
  \barNumberCheck #56  gis'4)\f fis-- fis( e) |
  \barNumberCheck #57  e2( b4) b |
  \barNumberCheck #58  b( e) e-- fis-- |
  \barNumberCheck #59  gis2. gis4 |
  \barNumberCheck #60  gis a-- gis-- fisis-- |
  \barNumberCheck #61  \footnote #'(-1 . 1) "Slur ending on this note in Kistner 1879 edition" NoteHead gis2(\> eis4)\! eis\pp |
  \barNumberCheck #62  gis2( eis4) eis(\< |
  \barNumberCheck #63  a\!)-\markup{\italic "cresc."} gis-- fis-- e-- |
  \barNumberCheck #64  b'1\ff |
  \barNumberCheck #65  r |
  \barNumberCheck #66  r2 r4 r8 fis,\p |
  \barNumberCheck #67  e'( ais, fis e') dis4 r8 dis-. |
  \barNumberCheck #68  d( gis, d d') cis4 r8 cis-. |
  \barNumberCheck #69  c(-\markup{\italic "cresc."} a e c') c( g e c') |
  \barNumberCheck #70  c( fis, e c') b[( fis dis)] dis'\f |
  \barNumberCheck #71  e( ais,) ais( e') dis( a) a( dis) |
  \barNumberCheck #72  d( gis,) gis( d') cis( g) g( cis) |
  \barNumberCheck #73  c( fis,) fis( c') c( g) g( c) |
  \barNumberCheck #74  c( ges) ges( c) c( a) a( c) |
  \barNumberCheck #75  b4-.\mf r8 b8( e4) r8 e( |
  \barNumberCheck #76  b2.)-> g4( |
  \barNumberCheck #77  c4.) g8( b4.) g8( |
  \barNumberCheck #78  c2.) r4 |
  \barNumberCheck #79  R1*3
  \barNumberCheck #82  r2 <c, d>-> |
  \barNumberCheck #83  <b d>4 r r2 |
  \barNumberCheck #84  r2 <ees a>-> \key bes \major \bar "||" |
  \barNumberCheck #85  <d bes'>1\ff ~ |
  \barNumberCheck #86  <d bes'>8 r <d d'>4-> <a' f'>4.-> <a f'>8 |
  \barNumberCheck #87  <d, bes' f'>4( d') r2 |
  \barNumberCheck #88  r4 f(\< a4.\!) ees'8 |
  \mark \default % N <<<<< DUBIOUS
  \barNumberCheck #89  <d, d'>1\sff ~ |
  \barNumberCheck #90  <d d'>2. r4 |
  \barNumberCheck #91  r1 |
  \barNumberCheck #92  <d, f>2.\p r4 |
  \barNumberCheck #93  r1 |
  \barNumberCheck #94  r2 r4 f'--\mf |
  \barNumberCheck #95  f( e) e( d) |
  \barNumberCheck #96  d2( a4-.) a-- |
  \barNumberCheck #97  a(-\markup{\italic "cresc."} d) d-- e-- |
  \barNumberCheck #98  f2. r8 a\f |
  \barNumberCheck #99  a( g) g( f)-\markup{\italic "cresc."} f4.-> a8 |
  \barNumberCheck #100 a( g) g( f) f4. <a, c'>8-\downbow\ff ~ \key a \major \bar "||" |
  \barNumberCheck #101 <a c'>4 r8 <a c'>8->-\downbow ~ <a c'>4 r8 <a c'>(->-\downbow ~ |
  \barNumberCheck #102 <a c'>4. cis'8 d4) r8 <d, d'>8->-\downbow ~ |
  \barNumberCheck #103 <d d'>4 r8 <d d'>->-\downbow ~ <d d'>4 r8 <d d'>->-\downbow ~ |
  \barNumberCheck #104 <d d'>4. dis'8( e4.) eis8 |
  \barNumberCheck #105 fis1\sff ~ |
  \barNumberCheck #106 fis4 d-- b-- gis-- |
  \barNumberCheck #107 \after 2 -\markup{\italic "dim."} fis1\sf ~ |
  \barNumberCheck #108 fis4 d-.( b-. gis-.) |
  \barNumberCheck #109 <gis, d'>1->\p |
  \barNumberCheck #110 cis-> |
  \barNumberCheck #111 b(\pp |
  \barNumberCheck #112 gis2.) r8 e''-.\ff |
  \mark \default % O
  \barNumberCheck #113 a2 e4. fis8-. |
  \barNumberCheck #114 cis-. d-. e-. a,-. b4-> r |
  \barNumberCheck #115 r2 r4 r8 e(\p |
  \barNumberCheck #116 fis)\< gis-. a-. b-.\! a-.\> gis-. fis-.\! e-. |
  \barNumberCheck #117 e'4.-> e,8 e'4.-> cis,8( |
  \barNumberCheck #118 dis) e-. eis-. fis-. gis-.\< a-. b-. bis-.\! |
  \barNumberCheck #119 cis2-> r4 r8 ais,(\p |
  \barNumberCheck #120 dis2-\markup{\italic "dolce"} cis4) r |
  \barNumberCheck #121 r2 r4 r8 eis( |
  \barNumberCheck #122 ais2\espressivo gis4) r |
  \barNumberCheck #123 r1 |
  \barNumberCheck #124 r2 r4 fis->\f |
  \barNumberCheck #125 fis( e) e( d) |
  \barNumberCheck #126 d2( a4) d\p |
  \barNumberCheck #127 d4 r8 d( g4) r8 g( |
  \barNumberCheck #128 d2.->) d4-. |
  \barNumberCheck #129 d---\markup{\italic "cresc."} r8 d( gis4) r8 gis( |
  \barNumberCheck #130 d2.)-> b'4--\ff |
  \barNumberCheck #131 b( ais) ais( gis) |
  \barNumberCheck #132 gis2( dis4) b-- |
  \barNumberCheck #133 b( ais) ais( gis) |
  \barNumberCheck #134 gis2( dis4) <b dis> |
  \barNumberCheck #135 <fisis e'>1\sff ~ |
  \barNumberCheck #136 <fisis e'> \key aes \major \bar "||" |
  \mark \default % P
  \barNumberCheck #137 <g ees'>\p ~ |
  \barNumberCheck #138 <g ees'>4 r r2 |
  \barNumberCheck #139 r1 |
  \barNumberCheck #140 r1 |
  \barNumberCheck #141 r1 |
  \barNumberCheck #142 r2 r4 cis'\f \key a \major \bar "||" |
  \barNumberCheck #143 cis( b) b( a)\> |
  \barNumberCheck #144 \after 4 \! a2( e4) e |
  \barNumberCheck #145 e( a) a-- b-- |
  \barNumberCheck #146 \after 2 \< cis2. cis4\! |
  \barNumberCheck #147 cis(\f e) e( dis) |
  \barNumberCheck #148 dis2->( e8) r cis4 |
  \barNumberCheck #149 cis( b8 cis d4) cis-- |
  \barNumberCheck #150 b2. r4 |
  \barNumberCheck #151 r2 r4 \tuplet 5/4 { e16(\< fis gis a b)\! } |
  \mark \default % Q <<<<< DUBIOUS
  \barNumberCheck #152 cis4(\ff b) b( a) |
  \barNumberCheck #153 a2( e4) e-- |
  \barNumberCheck #154 e( a) a-- b-- |
  \barNumberCheck #155 cis2. cis4 |
  \barNumberCheck #156 cis-- d-- cis-- bis-- |
  \barNumberCheck #157 cis2(\< ais4)\! ais(\pp |
  \barNumberCheck #158 cis2 \after 8 \< ais4) \after 8 \! ais( |
  \barNumberCheck #159 d)\ff cis-- b-- a-- |
  \barNumberCheck #160 e'2.\sff r8 e,8-. |
  \barNumberCheck #161 a2 e4. fis8-. |
  \barNumberCheck #162 cis-. d-. e-. a,-. <e cis'>4.-> fis'8-. |
  \barNumberCheck #163 cis-. d-. e-. a,-. <d, d'>4.-> a''8-. |
  \barNumberCheck #164 d,-. e-. fis-. a,-. <a b'>4->-\downbow\ff r8 <a b'>8->-\downbow ~ |
  \barNumberCheck #165 <a b'>4 r8 <a b'>8->-\downbow ~ <a b'>4 r8 b'->-\downbow ~ |
  \barNumberCheck #166 b4 r r2 |
  \barNumberCheck #167 r1 |
  \barNumberCheck #168 r1 |
  \barNumberCheck #169 r2 r4 r8 e,-.\p |
  \mark \default % R
  \barNumberCheck #170 e4-- r8 e( a4) r8 a( |
  \barNumberCheck #171 e2.) eis4( |
  \barNumberCheck #172 fis4.) cis8( eis4.) cis8( |
  \barNumberCheck #173 fis2) ~ fis8 r fis4-.-\markup{\italic "cresc."} |
  \barNumberCheck #174 fis-- r8 fis( b4) r8 b( |
  \barNumberCheck #175 fis2.) gis8( a) |
  \barNumberCheck #176 b,4(\f cis8 d) e4.( b8) |
  \barNumberCheck #177 cis2(\< d8)\! r e4-.\ff |
  \barNumberCheck #178 e-> r8 e( a4) r8 a( |
  \barNumberCheck #179 e2.) eis4( |
  \barNumberCheck #180 fis4.) cis8( eis4.) cis8( |
  \barNumberCheck #181 fis2) ~ fis8 r fis4-- |
  \barNumberCheck #182 fis-. r8 fis8( b4) r8 b( |
  \barNumberCheck #183 fis2.)\sf gis8( a) |
  \barNumberCheck #184 b,4( cis8 d) e2 ~ |
  \barNumberCheck #185 e8 r <d, b' e>4-> <d b' fis'>-> <d b' gis'>-> |
  \barNumberCheck #186 <b' a'>1\sff ~ |
  \barNumberCheck #187 <b a'>8 r b4( e8) r e4-> |
  \barNumberCheck #188 <dis, dis'>1-> |
  \barNumberCheck #189 r4 <dis b' a'>-> <d b' a'>-> <d b' gis'>-> |
  \barNumberCheck #190 \after 2 -\markup{\italic "cresc."} <a' a'>1\p ~ |
  \barNumberCheck #191 <a a'> ~ |
  \barNumberCheck #192 <a a'>\f ~ |
  \barNumberCheck #193 <a a'>8 r r4 <a b'>-. r |
  \barNumberCheck #194 <a cis'>4.->\ff e''8-. a,-. b-. cis-. e,-. |
  \barNumberCheck #195 a4.-> fis8-. cis-. d-. e-. a,-. |
  \barNumberCheck #196 cis4-. r8 a( cis4) r8 a( |
  \barNumberCheck #197 cis4) r8 cis( e4) r8 e( |
  \barNumberCheck #198 <a, cis'>4)-> r r2\fermata \fine |
  \barNumberCheck #199
} % }}}

mvt_d_cello = \new Voice \relative c' { % {{{
  \key a \major \time 4/4 \clef tenor \partial 8 e8-.\ff |
  \barNumberCheck #1  a2-\markup{\italic "marc."} e4. fis8-. |
  \barNumberCheck #2  cis-. d-. e-. a,-. <dis, a'>4-> r |
  \barNumberCheck #3  r1 |
  \barNumberCheck #4  r2 r4 r8 \clef bass e(\p |
  \barNumberCheck #5  d)\< e-. fis-. gis-.\! fis-.\> e-. d-. cis-.\! |
  \barNumberCheck #6  b-. a-. gis-. fis-. e4 r |
  \barNumberCheck #7  <cis' gis'>2->\ff <cis a'>4-> r |
  \barNumberCheck #8  r1 |
  \barNumberCheck #9  ais'2(\p b4) r8 a-. |
  \barNumberCheck #10   gis2 ~ gis4 r |
  \barNumberCheck #11   r1 |
  \barNumberCheck #12   r2 r4 r8 bis(\p |
  \barNumberCheck #13   cis2) fis-.(\< |
  \barNumberCheck #14   fis-. eis-.)\! |
  \mark \default % K
  \barNumberCheck #15  r1 |
  \barNumberCheck #16  r2 <d, c'>( ~ |
  \barNumberCheck #17  <d b'>8) r r4 r2 \clef tenor |
  \barNumberCheck #18  r2 r4 g'-.\mf |
  \barNumberCheck #19  g r8 g( c4) r8 c( |
  \barNumberCheck #20  \after 4 \< g2 a4-.)\! g8( f) |
  \barNumberCheck #21  e4 r8 e(\< \after 8 \! g2\> |
  \barNumberCheck #22  d4) r r r8 e-.\ff |
  \barNumberCheck #23  a2 e4. fis8-. |
  \barNumberCheck #24  cis-. d-. e-. a,-. <dis, a'>4-> r |
  \barNumberCheck #25  r2 r4 r8 e'8(\p |
  \barNumberCheck #26  fis)\< gis-. a-. b-.\! a-.\> gis-. fis-.\! e-. |
  \barNumberCheck #27  e2. r4 |
  \barNumberCheck #28  r1 |
  \mark \default % L
  \barNumberCheck #29  r4 b(-\markup{\dynamic p \italic "dolce"} fis'2) ~ |
  \barNumberCheck #30  fis dis4( b) |
  \barNumberCheck #31  e2.(-> dis8 cis) |
  \barNumberCheck #32  b2. r4 |
  \barNumberCheck #33  r b(\< fis'2\!) ~ |
  \barNumberCheck #34  fis4 fis( dis b) |
  \barNumberCheck #35  e2.->( d8 c) |
  \barNumberCheck #36  b2. r4 \clef bass |
  \barNumberCheck #37  b-. r8 b\<( e2)\! ~ |
  \barNumberCheck #38  e8 b(\f c d) f4( e) |
  \barNumberCheck #39  ais,4-.\p r8 ais( b2) |
  \barNumberCheck #40  ais\< \after 4 \! a\> |
  \barNumberCheck #41  r2 \clef tenor r8 b(\p\< e gis)\! |
  \barNumberCheck #42  \after 4 \< a2 ~ a8 gis( a ais\!) |
  \barNumberCheck #43  b1\ff ~ |
  \barNumberCheck #44  b4 gis-- fisis-- ais-- |
  \barNumberCheck #45  a1\fp ~ |
  \barNumberCheck #46  a4 r r2 \clef bass |
  \mark \default % M
  \barNumberCheck #47  r2 b,,\pp ~ |
  \barNumberCheck #48  b r |
  \barNumberCheck #49  r b ~ |
  \barNumberCheck #50  b r |
  \barNumberCheck #51  r b\mf ~ |
  \barNumberCheck #52  b r |
  \barNumberCheck #53  r b\pp ~ |
  \barNumberCheck #54  b r |
  \barNumberCheck #55  r \clef tenor b'(\< |
  \barNumberCheck #56  gis'4)\ff fis-- fis( e) |
  \barNumberCheck #57  e2( b4) b |
  \barNumberCheck #58  b( e) e-- fis-- |
  \barNumberCheck #59  gis2. r4 |
  \barNumberCheck #60  r2 dis ~ |
  \barNumberCheck #61  dis\> cis\! \clef bass |
  \barNumberCheck #62  bis\pp( b) |
  \barNumberCheck #63  a4---\markup{\italic "cresc."} b-- cis-- e-- |
  \barNumberCheck #64  e2\ff( dis) |
  \barNumberCheck #65  r1 |
  \barNumberCheck #66  r1 |
  \barNumberCheck #67  r4 r8 fis,-.\p dis'( a fis dis') |
  \barNumberCheck #68  d4 r8 d8-. cis( a e cis') |
  \barNumberCheck #69  c4-.-\markup{\italic "cresc."} a-. r g-. |
  \barNumberCheck #70  r fis-. b,-. r |
  \barNumberCheck #71  r e'8(\f ais,) r4 dis8( a) |
  \barNumberCheck #72  r4 d8( gis,) r4 cis8( g) |
  \barNumberCheck #73  <d d'>1\sf ~ |
  \barNumberCheck #74  <d d'>2 d'2( |
  \barNumberCheck #75  dis4) r r2 |
  \barNumberCheck #76  r1 |
  \barNumberCheck #77  r1 |
  \barNumberCheck #78  r2 r4 \clef tenor e--\mf |
  \barNumberCheck #79  e-- r8 e( a4) r8 a( |
  \barNumberCheck #80  e2.->) c4( |
  \barNumberCheck #81  f4.) c8( e4.) c8( |
  \barNumberCheck #82  f2)-\markup{\italic "cresc."} fis( |
  \barNumberCheck #83  g4.) d8( fis4.) d8( |
  \barNumberCheck #84  g2)\< a\! \bar "||" \key bes \major |
  \barNumberCheck #85  <bes, f'>1\ff ~ |
  \barNumberCheck #86  <bes f'>8 r bes4-> cis4.-> cis8 |
  \barNumberCheck #87  d4( f) r2 |
  \barNumberCheck #88  r4 d(\< ees4.)\! a,8 \clef bass |
  \mark \default % N <<<<< DUBIOUS
  \barNumberCheck #89  bes1\sff ~ |
  \barNumberCheck #90  bes4 r r d-.-\markup{\dynamic p \italic "dolce"} |
  \barNumberCheck #91  d( c) c( bes) |
  \barNumberCheck #92  bes2( f4-.) f-- |
  \barNumberCheck #93  f( bes) bes-- c-- |
  \barNumberCheck #94  d2. r4 |
  \barNumberCheck #95  r1 |
  \barNumberCheck #96  <a f'>2.-> r4 |
  \barNumberCheck #97  r1 |
  \barNumberCheck #98  <d, d'>2. r4 \clef tenor |
  \barNumberCheck #99 r4 r8 a''\f a[(-\markup{\italic "cresc."} g]) g[( f]) |
  \barNumberCheck #100 f4.-> a8 a[( g]) g[( f]) \key a \major \bar "||" |
  \barNumberCheck #101 e2(\ff ees) |
  \barNumberCheck #102 d4.( cis8 c4) r8 c |
  \barNumberCheck #103 <d, bes'>2( f') |
  \barNumberCheck #104 e4.( dis8 d4.) d8 |
  \barNumberCheck #105 d1\sff ~ |
  \barNumberCheck #106 d4 b-- gis-- e-- \clef bass |
  \barNumberCheck #107 \after 2 -\markup{\italic "dim."} d1\sf ~ |
  \barNumberCheck #108 d4 b-.( gis-. e-.) \clef tenor |
  \barNumberCheck #109 fis''1->\p |
  \barNumberCheck #110 e-> |
  \barNumberCheck #111 d(\pp |
  \barNumberCheck #112 b2.) r8 e-.\ff |
  \mark \default % O
  \barNumberCheck #113 a2 e4. fis8-. |
  \barNumberCheck #114 cis-. d-. e-. a,-. <dis, a'>4-> r |
  \barNumberCheck #115 r1 \clef bass |
  \barNumberCheck #116 r2 r4 r8 e(\p |
  \barNumberCheck #117 d) e-.\< fis-. gis-.\! fis-.\> e-. d-.\! cis-. |
  \barNumberCheck #118 b-. a-. gis-. fis-. e4-. r |
  \barNumberCheck #119 r2 r4 r8 \clef tenor fis''(\p |
  \barNumberCheck #120 eis2 fis4) r |
  \barNumberCheck #121 r2 r4 r8 cis( |
  \barNumberCheck #122 fis2\espressivo eis4) cis--\mf |
  \barNumberCheck #123 cis r8 cis( fis4) r8 fis( |
  \barNumberCheck #124 cis2.)\< a4(\!\f |
  \barNumberCheck #125 d4.) a8( cis4.) a8( |
  \barNumberCheck #126 d2.) r4 \clef bass |
  \barNumberCheck #127 <g,, d' b'>8-\markup{"pizz."} r r4 <g e' c'>8 r r4 |
  \barNumberCheck #128 <g d' b'>8 r r4 r \clef tenor d''-.\mf-\markup{"arco"} |
  \barNumberCheck #129 d---\markup{\italic "cresc."} r8 d( gis4) r8 gis( |
  \barNumberCheck #130 d2.) r4 |
  \barNumberCheck #131 r2 r4 b'--\ff |
  \barNumberCheck #132 b( ais) b( gis) |
  \barNumberCheck #133 gis2( dis4) b-- \clef bass |
  \barNumberCheck #134 b( ais) ais( gis) |
  \barNumberCheck #135 cis1\sff ~ |
  \barNumberCheck #136 cis1 \key aes \major \bar "||" |
  \mark \default % P
  \barNumberCheck #137 ees,,1\p ~ |
  \barNumberCheck #138 ees4 r r c''---\markup{\dynamic p \italic "dolce" } |
  \barNumberCheck #139 c( bes) bes( aes) |
  \barNumberCheck #140 aes2( ees4) ees-- |
  \barNumberCheck #141 ees( aes) aes-- bes-- |
  \barNumberCheck #142 c2.(\< cis4)\!\f \key a \major \bar "||" |
  \barNumberCheck #143 \clef tenor e1 ~ |
  \barNumberCheck #144 e-\markup{\italic "dim."} ~ |
  \barNumberCheck #145 e\p ~ |
  \barNumberCheck #146 \after 2 \< \after 2. \! e ~ |
  \barNumberCheck #147 e4 r r2 |
  \barNumberCheck #148 r1 |
  \barNumberCheck #149 r1 |
  \barNumberCheck #150 r2 r4 b'--\mf |
  \barNumberCheck #151 b( a8 b cis4) b |
  \mark \default % Q <<<<< DUBIOUS
  \barNumberCheck #152 a2(\ff e) |
  \barNumberCheck #153 cis( bis) |
  \barNumberCheck #154 cis( e) |
  \barNumberCheck #155 a1 ~ |
  \barNumberCheck #156 a2 gis ~ |
  \barNumberCheck #157 gis\> fis(\!\pp |
  \barNumberCheck #158 gis \after 8 \< \after 4. \! g) |
  \barNumberCheck #159 fis1\ff |
  \barNumberCheck #160 e2.\sff r8 e-. |
  \barNumberCheck #161 a2 e4. fis8-. |
  \barNumberCheck #162 cis-. d-. e-. a,-. <g a>4.-> fis'8-. |
  \barNumberCheck #163 cis-. d-. e-. a,-. <fis a>4.-> a'8-. |
  \barNumberCheck #164 d,-. e-. fis-. a,-. dis4->\ff r8 dis-> ~ |
  \barNumberCheck #165 dis4 r8 dis-> ~ dis4 r8 a'(-> |
  \barNumberCheck #166 gis4) r r2 |
  \barNumberCheck #167 r1 |
  \barNumberCheck #168 r1 |
  \barNumberCheck #169 r1 \clef bass |
  \mark \default % R
  \barNumberCheck #170 r4 <a,, e' cis'>8\p-\markup{"pizz."} r r4 <a e' \footnote #'(1 . 1) "This is a natural C in Kistner 1879 edition" bis'>8 r |
  \barNumberCheck #171 r4 <a e' cis'>8 r r4 <a eis' cis'>8 r |
  \barNumberCheck #172 r4 <cis ais'>8 r r4 <cis b'>8 r |
  \barNumberCheck #173 r4 <cis ais'>8 r r4 <cis ais'>8-\markup{\italic "cresc."} r |
  \barNumberCheck #174 r4 <d b'>8 r r4 <g, eis' b'>8 r |
  \barNumberCheck #175 r4 <d' b'>8 r r4 <dis b'>8 r |
  \barNumberCheck #176 r4 <b e a>8 r r4 <e, b' gis'>8 r |
  \barNumberCheck #177 r4 <cis' gis'>8 r r4 \clef tenor e'4-.\ff-\markup{"arco"} |
  \barNumberCheck #178 e-- r8 e( a4) r8 a( |
  \barNumberCheck #179 e2.) eis4( |
  \barNumberCheck #180 fis4.) cis8( eis4.) cis8( |
  \barNumberCheck #181 fis2) ~ fis8 r fis4-- |
  \barNumberCheck #182 fis-. r8 fis( b4) r8 b( |
  \barNumberCheck #183 fis2.)\sf gis8( a) |
  \barNumberCheck #184 b,4( cis8 d) e2 ~ |
  \barNumberCheck #185 e8 r gis,4-> b-> e-> |
  \barNumberCheck #186 dis1\sff ~ |
  \barNumberCheck #187 dis8 r b4( e8) r e4-> |
  \barNumberCheck #188 fis1-> \clef bass |
  \barNumberCheck #189 r4 f,,-> e-> e'-> |
  \barNumberCheck #190 \after 2 -\markup{\italic "cresc."} <a fis'>1\p ~ |
  \barNumberCheck #191 <a fis'> ~ |
  \barNumberCheck #192 <a fis'>\f ~ |
  \barNumberCheck #193 <a fis'>8 r r4 <b, d'>-. r |
  \barNumberCheck #194 <a e' a>4.\ff e''8-. a,-. b-. cis-. e,-. |
  \barNumberCheck #195 a4.-> fis8-. cis-. d-. e-. a,-. |
  \barNumberCheck #196 cis4 r <eis a>-> r |
  \barNumberCheck #197 <fis a>-> r <e, b' gis'>-> r |
  \barNumberCheck #198 <a e' a>-> r r2\fermata \fine |
  \barNumberCheck #199
} % }}}

mvt_d_piano_rh_a = \new Voice \relative c' { % {{{
  \set fingeringOrientations = #'(up left down)
  \key a \major \time 4/4 \clef treble \partial 8 <e e'>8-.\ff |
  \barNumberCheck #1   <a a'>2-\markup{\italic "marc."} <e e'>4. <fis fis'>8 |
  \barNumberCheck #2   <cis cis'>-. <d d'>-. <e e'>-. <a, a'>-. <b dis a' b>4.-> e16\p\( e' |
  \barNumberCheck #3   fis,\< e' gis, e' a, e' b\! e a,\> e' gis, e' fis,\! e' e, e'\) |
  \barNumberCheck #4   d,\( e' e, e' fis, e' gis, e' fis, cis' e, cis' d, cis' cis, cis'\) |
  \barNumberCheck #5   <b, gis'>\( b' <b, gis'> b' <b, gis'> b' <b, gis'> b' <cis, a'> cis' <cis, a'> cis' <cis, a'> cis' <cis, a'> cis'\) |
  \barNumberCheck #6   dis,\( dis' e, e' eis,\< eis' fis, fis' gis, gis' a, a' b, b' bis, bis'\)\! |
  \barNumberCheck #7   <cis, gis' cis>2\ff <a fis' a>4. <a a'>8( |
  \barNumberCheck #8   <gis gis'>)-. <fis fis'>-.-\markup{\italic "dim."} <e e'>-. <d d'>-. <cis cis'>4. <b cis>8\pp \clef bass |
  \barNumberCheck #9   <e, ais cis>2( <d b' d>4.) <d a' b>8 |
  \barNumberCheck #10  <d gis b>2( <cis a' cis>4.) <cis fis a>8 |
  \barNumberCheck #11  <cis eis gis>2\(-.\pp <e gis cis>-. |
  \barNumberCheck #12  <dis fis a cis>-. <dis fis gis bis>-.\)-\markup{\italic "cresc."} |
  \barNumberCheck #13  <eis b' cis>\(-. \clef treble \voiceOne <a cis fis>-. |
  \barNumberCheck #14  <d fis>-. <cis eis>-.\) |
  \mark \default % K
  \barNumberCheck #15  fis8^\p e d cis b cis^\< d e\! |
  \barNumberCheck #16  fis^\> e d\! cis d \oneVoice c-. b-. a-. \clef bass |
  \barNumberCheck #17  <b, g'>(\pp a') <g b>( d') <d, a'>( b') <a c>( d) |
  \barNumberCheck #18  <b, g'>( a') <g b>( d') <g, b>(\< c) <b d>( g')\! \clef treble |
  \barNumberCheck #19  <e, c'>(\mf d') <c e>( g') <a, f'>( g') <f a>( c') |
  \barNumberCheck #20  <c, e>( f) <e g>( c') <a, c>( d) <c e>( f) |
  \barNumberCheck #21  <g, c>( d') <c e>( g') <c, e>( f) <e g>( c') |
  \barNumberCheck #22  <b, d>([\< g') b-.]\! <d, d'>-> <f f'>4.-> <e e'>8-> |
  \barNumberCheck #23  <a a'>2\ff  <e e'>4.-> <fis fis'>8-. |
  \barNumberCheck #24  <cis cis'>-. <d d'>-. <e e'>-. <a, a'>-. <b dis a' b>4.-> e16\p\( e' |
  \barNumberCheck #25  fis,\< e' gis, e' a, e' b e\! a,\> e' gis, e' fis,\! e' e, e'\) |
  \barNumberCheck #26  d,\( e' e,\< e' fis, e' gis, e'\! fis,\> cis' e, cis' d, cis' cis,\! cis'\) |
  \barNumberCheck #27  <b, gis'>\( b' cis, cis' d, d' dis,\< dis' e, e' fis, fis' gis, gis' a, a'\!\) |
  \barNumberCheck #28  b,\( b' cis, cis' d,-\markup{\italic "cresc."} d' dis, dis' e, e' fis, fis' gis, gis' a, a'\) |
  \mark \default % L
  \barNumberCheck #29  b,\pp( b' a fis dis b a fis) dis( b' a fis dis b a fis) |
  \barNumberCheck #30  dis( b' a fis dis \change Staff = "mvt_d_piano_lh" \voiceOne b a fis) dis(^\< e fis gis a b \change Staff = "mvt_d_piano_rh" \oneVoice cis\! dis) |
  \barNumberCheck #31  r \ottava 1 cis'''( b gis e \ottava 0 cis b gis) e( cis' b gis e cis b gis) |
  \barNumberCheck #32  e( cis' b gis e \change Staff = "mvt_d_piano_lh" \voiceOne cis b gis) e(^\< fis gis a b \change Staff = "mvt_d_piano_rh" \oneVoice cis dis e\!) |
  \barNumberCheck #33  r\pp \ottava 1 c'''( a fis dis \ottava 0 c a fis) dis( c' a fis dis c a fis) |
  \barNumberCheck #34  dis( c' a fis dis c \change Staff = "mvt_d_piano_lh" \voiceOne a fis) dis(^\< e fis g a b \change Staff = "mvt_d_piano_rh" \oneVoice cis dis\!) |
  \barNumberCheck #35  r\pp \ottava 1 c'''( b g e \ottava 0 c b g) e( c' b g e c b g) |
  \barNumberCheck #36  e( c' b g e \change Staff = "mvt_d_piano_lh" \voiceOne c b g) e(^\< fis g a b cis \change Staff = "mvt_d_piano_rh" \oneVoice dis e)\! |
  \barNumberCheck #37  r a(\> g\! d b d b \change Staff = "mvt_d_piano_lh" \voiceOne g) \change Staff = "mvt_d_piano_rh" \oneVoice r a'(\> g\! e c e c  \change Staff = "mvt_d_piano_lh" \voiceOne g) \change Staff = "mvt_d_piano_rh" \oneVoice |
  \barNumberCheck #38  r a'(\> g\! d b d b \change Staff = "mvt_d_piano_lh" \voiceOne g) \change Staff = "mvt_d_piano_rh" \oneVoice r a'(_\>^\markup{\italic "cresc."} g e\! c e c \change Staff = "mvt_d_piano_lh" \voiceOne g) \change Staff = "mvt_d_piano_rh" \oneVoice |
  \barNumberCheck #39  r\p g'(\> fis\! cis ais cis ais \change Staff = "mvt_d_piano_lh" \voiceOne fis) \change Staff = "mvt_d_piano_rh" \oneVoice r gis'(_\>^\markup{\italic "cresc."} fis\! dis b dis b \change Staff = "mvt_d_piano_lh" \voiceOne fis) \change Staff = "mvt_d_piano_rh" \oneVoice |
  \barNumberCheck #40  r ais'(\> fis e\! \change Staff = "mvt_d_piano_lh" \voiceOne ais, \change Staff = "mvt_d_piano_rh" \oneVoice e' \change Staff = "mvt_d_piano_lh" \voiceOne ais, fis) \change Staff = "mvt_d_piano_rh" \oneVoice r b'(\> fis dis\! \change Staff = "mvt_d_piano_lh" \voiceOne b \change Staff = "mvt_d_piano_rh" \oneVoice dis \change Staff = "mvt_d_piano_lh" \voiceOne b fis) \change Staff = "mvt_d_piano_rh" \oneVoice |
  \barNumberCheck #41  r\p cis''( b fis dis fis dis b) r cis'( b gis e gis e b) |
  \barNumberCheck #42  r cis'( b a dis, a'-\markup{\italic "cresc."} dis, b) r d'( b gis d gis d b) |
  \barNumberCheck #43  <dis gis b>8-. \voiceOne b''16[ gis] s8 b,16 gis s8 \change Staff = "mvt_d_piano_lh" \voiceOne b,16 gis s8 b,16 gis \change Staff = "mvt_d_piano_rh" \oneVoice |
  \barNumberCheck #44  r2 <dis'' cis' dis>2 |
  \barNumberCheck #45  r8 a'''16( fis s8 a,16 fis s8 a,16 fis s8 \change Staff = "mvt_d_piano_lh" \voiceOne a,16 fis) \voiceOne |
  \barNumberCheck #46  \tuplet 3/2 4 { dis8-.^\p e-. eis-. fis-. gis-. a-. ais-. b-. \change Staff = "mvt_d_piano_rh" \oneVoice cis-. dis-. e-. fis-. } |
  \mark \default % M
  \barNumberCheck #47  <e gis>4(^\markup{\italic "molto dolce marc."}_\markup{\dynamic pp \italic "tranquillo"} fis) <b, fis'>( e) |
  \barNumberCheck #48  <gis, e'>2( <fisis b>4) b |
  \barNumberCheck #49  <gis b>( e') <b e>( fis') |
  \barNumberCheck #50  <e gis>2 ~ <e gis>8 r gis4 |
  \barNumberCheck #51  <dis gis>(\< b') <dis, fisis b>( ais')\! |
  \barNumberCheck #52  <b, dis ais'>2(\> gis'4) gis\! |
  \barNumberCheck #53  <b, d gis>4\( fis'8 gis <b, d a'>4 gis'\) |
  \barNumberCheck #54  \voiceOne fis2. fis4->\( ~ |
  \barNumberCheck #55  fis e8 fis gis4 fis\) |
  \barNumberCheck #56  \oneVoice \tuplet 3/2 4 { r8\f ais,( b ais' b b,) r a( b a' b b,) } |
  \barNumberCheck #57  r8*2/3 gis( b gis' b b,) r fisis( b fisis' b b,) |
  \barNumberCheck #58  r gis( b gis' b b,) r ais( b a' b b,) |
  \barNumberCheck #59  r gis( b gis' b b,) r gis( b gis' b b,) |
  \barNumberCheck #60  r a( cis e a a,) r ais( dis fisis ais dis,) |
  \barNumberCheck #61  r bis(-\markup{\italic "dim."} dis gis bis bis,) r cis(\pp eis gis cis cis,) |
  \barNumberCheck #62  r dis( fis bis dis dis,) r eis( b' d eis eis,) |
  \barNumberCheck #63  a'---\markup{\italic "cresc."} a, cis gis'-- gis, b fis'-- fis, a e'-- e, gis |
  \barNumberCheck #64  fis-. gis-. a-. ais-.\< b-. cis-. dis-. e-.\! fis-. gis-. a-. <b, b'>-.\ff |
  \barNumberCheck #65  <e e'>2-> <b b'>4.-> <cis cis'>8-. |
  \barNumberCheck #66  <gis gis'>-. <a a'>-. <b b'>-. <e, e'>-> <fis ais e' fis>2 |
  \barNumberCheck #67  <fis ais e'>4-.\arpeggio\p e-. dis-. <fis a dis>-. |
  \barNumberCheck #68  <e gis d'>-.\arpeggio d-. cis-. <e a cis>-. |
  \barNumberCheck #69  <e a c>-.\arpeggio-\markup{\italic "cresc."} <c e>-. <e g c>-. <c e> |
  \barNumberCheck #70  <e fis c'>-. <c e>-. <b dis>-.
                       \set Voice.subdivideBeams = ##t \set Voice.baseMoment = #(ly:make-moment 1/8) \set Voice.beatStructure = 1,1
                       fis''16*2/3[(\< gis a b cis dis])\! |
                       \unset Voice.beatStructure \unset Voice.baseMoment \unset Voice.subdivideBeams |
  \barNumberCheck #71  <fis, ais e'>4-.(\ff <fis, ais e'>-. <fis a dis>-. <fis' a dis>-.) |
  \barNumberCheck #72  <e gis d'>-.( <e, gis d'>-. <e g cis>-. <e' g cis>-.) |
  \barNumberCheck #73  <d fis c'>-.( <d, fis c'>-.) <d' g c>-.( <d, g c>-.) |
  \barNumberCheck #74  <d' gis c>-.( <d, gis c>-.) <d' a' c>-.( <d, a' c>-.) |
  \barNumberCheck #75  b'16(\fp b' a, a' g, g' fis, fis' e, e' fis, fis'\< g, g' a, a'\!) |
  \barNumberCheck #76  b,\>( b' a,\! a' g, g' fis, fis' g, g' f, f' e, e' dis, dis') |
  \barNumberCheck #77  e,( e' e, c' e, g e e') f,( f' f, d' f, g f f') |
  \barNumberCheck #78  e,( e' e, c' e, g e e') e,( gis e e' e, c' e, gis) |
  \barNumberCheck #79  e( e' d, d' c, c' b, b' a, a' b,\< b' c, c' d, d'\!) |
  \barNumberCheck #80  e,( e' d, d' c, c' b, b' c, c' bes, bes' a, a' gis, gis') |
  \barNumberCheck #81  <a, a'>8(\p f' c a' c, bes' g c,) |
  \barNumberCheck #82  a'( f c a' d,\f c' a d,) |
  \barNumberCheck #83  b'(\p g d b' d, c' a d,) |
  \barNumberCheck #84  b'( g d b' f\f ees' c f,) \key bes \major |
  \barNumberCheck #85  <d bes' d>8\ff \voiceOne d''16[ bes] s8 d,16 bes s8 d,16 bes s8 \change Staff = "mvt_d_piano_lh" \voiceOne d,16 bes \change Staff = "mvt_d_piano_rh" \oneVoice |
  \barNumberCheck #86  r4 <f'' bes d>-. <f a cis>2-> |
  \barNumberCheck #87  <d bes' d>8\ff \voiceOne d''16[ bes] s8 d,16 bes s8 d,16 bes s8 \change Staff = "mvt_d_piano_lh" \voiceOne d,16 bes \change Staff = "mvt_d_piano_rh" \oneVoice |
  \barNumberCheck #88  r4 <f'' bes d>-. <f a ees'>2-> |
  \mark \default % N <<<<< DUBIOUS
  \barNumberCheck #89   <f bes d>8-.\ff \voiceOne \ottava 1 d'''16[ bes] \ottava 0 s8 d,16 bes s8 d,16 bes s8 d,16 bes |
  \barNumberCheck #90   s8 d''16 bes s8 d,16 bes s8 d,16 bes \oneVoice s4 |
  \barNumberCheck #91   \change Staff = "mvt_d_piano_lh" \voiceOne r16\pp d,(-1 f-2 c'-5 bes-4 \change Staff = "mvt_d_piano_rh" \oneVoice d-1 f c'-5 bes d f c' bes d f c') |
  \barNumberCheck #92   bes-4( f d-1 c-5 bes-4 f d-1 c-5 bes f d c bes \change Staff = "mvt_d_piano_lh" \voiceOne f d bes) |
  \barNumberCheck #93   bes(-2 d-1 f c'-5 bes \change Staff = "mvt_d_piano_rh" \oneVoice d f c' bes d-\markup{\italic "sempre" \dynamic p} f c' bes d f c') |
  \barNumberCheck #94   bes( f d c bes f d c bes f d c \change Staff = "mvt_d_piano_lh" \voiceOne bes f d-1 bes-2) |
  \barNumberCheck #95   d-3( f-1 a \change Staff = "mvt_d_piano_rh" \oneVoice e'-5 d-4 f-1 a e'-5 d-4 f-1 a e' \ottava 1 d-\markup{\italic "sempre" \dynamic pp} f a e') |
  \barNumberCheck #96   d( a f-1 e-5 \ottava 0 d-4 a f-1 e-5 d a f e d \change Staff = "mvt_d_piano_lh" \voiceOne a f-1 e-3) |
  \barNumberCheck #97   d(-2 f-1 a \change Staff = "mvt_d_piano_rh" \oneVoice e' d f a e' d f a e' \ottava 1 d-\markup{\italic "cresc."} f a e') |
  \barNumberCheck #98   d( a f e \ottava 0 d a f e d a f e d \change Staff = "mvt_d_piano_lh" a f d) \change Staff = "mvt_d_piano_rh" \oneVoice |
  \barNumberCheck #99   r8*2/3 f(\< a c f a)\! r f,( a cis-\markup{\italic "cresc."} f a) |
  \barNumberCheck #100 r f,(\< a d f a)\! r a,(\< c f a c)\! \key a \major \bar "||" |
  \barNumberCheck #101 r\ff a,( c e a c) r a,( c ees a c) |
  \barNumberCheck #102 r <a, a'> <bes bes'>\< <b b'> <c c'> <cis cis'> <d d'>\! <cis cis'>\> <c c'> <b b'>\! <bes bes'> <a a'> |
  \barNumberCheck #103 r bes(\< d f bes d)\! r cis,(\< d f a d)\! |
  \barNumberCheck #104 r <b, b'> <c c'>\< <cis cis'> <d d'> <dis dis'>\! <e e'> <dis dis'>\> <d d'> <cis cis'> <c c'>\! <b b'> |
  \barNumberCheck #105 r4\f gis16( b fisis gis b d ais b d fis cis d) |
  \barNumberCheck #106 gis8*2/3 e\< ais( b) e, cis'( d) e, dis'( e) e, eis'\! |
  \barNumberCheck #107 \voiceOne fis( d b d b gis b gis d gis d b) \oneVoice \clef bass |
  \barNumberCheck #108 gis\p e ais( b) e, cis'(\< d) e, dis'( e) e,\! eis'( |
  \barNumberCheck #109 <gis, fis'>)(\pp d' fis) r4 <gis, fis'>8*2/3( d' fis) r4 |
  \barNumberCheck #110 <g, ais e'>8*2/3( cis e) r4 <g, ais e'>8*2/3( cis e) r4 |
  \barNumberCheck #111 <f, a d>8*2/3(\pp b d) r4 <f, a d>8*2/3( b d) r4 |
  \barNumberCheck #112 <gis, b>8*2/3( e <gis b>) r8 e16( fis \clef treble
                       \set Voice.subdivideBeams = ##t \set Voice.baseMoment = #(ly:make-moment 1/8) \set Voice.beatStructure = 1,1
                       gis16*2/3[ a b\< cis d e] fis[ gis a] b32[ cis\! d e)]
                       \unset Voice.beatStructure \unset Voice.baseMoment \unset Voice.subdivideBeams |
  \mark \default % O
  \barNumberCheck #113 <a, a'>2\ff <e e'>4. <fis fis'>8-. |
  \barNumberCheck #114 <cis cis'>-. <d d'>-. <e e'>-. <a, a'>-. <b dis a' b>4.-> e16(\p e' |
  \barNumberCheck #115 fis, e'\< gis, e' a, e' b e \! a, e'\> gis, e' fis, e' e,\! e') |
  \barNumberCheck #116 d,(\< e' e, e' fis, e' gis,\! e' fis, cis'\> e, cis' d, cis' cis,\! cis') |
  \barNumberCheck #117 <b, gis'>( b' <b, gis'> b' <b, gis'>-\markup{\italic "cresc."} b' <b, gis'> b' <cis, a'> cis'<cis, a'> cis'<cis, a'> cis'<cis, a'> cis') |
  \barNumberCheck #118 dis,( dis' e, e' eis,\< eis' fis, fis' gis, gis' a, a' b, b' bis, bis')\! |
  \barNumberCheck #119 <cis, gis' cis>2(\ff <ais fis' ais>4) r8 <fis ais>(\pp |
  \barNumberCheck #120 <eis gis>2 <fis ais>4) r8 <cis' cis'>8-.\ff |
  \barNumberCheck #121 <fis dis' fis>2( <eis cis' eis>4) r8 <cis eis>\pp( |
  \barNumberCheck #122 <bis ais'>2\espressivo <cis gis'>4) r |
  \barNumberCheck #123 r\p <gis, b>8-. <cis gis'>-. r4 <a cis>8-. <fis' a>-. |
  \barNumberCheck #124 r4 <eis, b'>8-. <cis' eis>-. r4 <fis, a>8-. <cis' fis>-. |
  \barNumberCheck #125 \tuplet 3/2 4 { r8\mf fis,( a d fis a) r g,( a e' g a) } |
  \barNumberCheck #126 \tuplet 3/2 4 { r8 fis,(\< a d fis a\! d)\> c-. a-. fis-.\! d[-. c-.] } |
  \barNumberCheck #127 <b' d>8*2/3-. g-. d-. s4 <c' e>8*2/3-. g-. e-. s4 |
  \barNumberCheck #128 <b' d>8*2/3-. g-. d-. s4 <b' d>8*2/3-. g-. d-. s4-\markup{\italic "cresc."} |
  \barNumberCheck #129 <b' d>8*2/3-. gis-. d-. s4 <b' d>8*2/3-. gis-. d-. s4 |
  \barNumberCheck #130 <b' d>8*2/3-. gis-. d-. s4 s2 |
  \barNumberCheck #131 \change Staff = "mvt_d_piano_lh" \voiceOne r8.\ff gis,,16\( b dis ais b dis gis cisis, dis gis b fisis gis |
  \barNumberCheck #132 b \change Staff = "mvt_d_piano_rh" \oneVoice dis \change Staff = "mvt_d_piano_lh" \voiceOne ais b \change Staff = "mvt_d_piano_rh" \oneVoice dis gis cisis, dis gis b fisis gis b dis ais b |
  \barNumberCheck #133 dis gis cisis, dis gis b fisis gis b dis ais b dis gis cisis, dis\) |
  \barNumberCheck #134 gis\( b ais gis dis b ais gis dis b ais gis dis \change Staff = "mvt_d_piano_lh" \voiceOne b ais gis\) |
  \barNumberCheck #135 fisis\( ais s s  ais cis s s \change Staff = "mvt_d_piano_rh" \voiceOne cis e s s e fisis s s |
  \barNumberCheck #136 fisis ais s s ais cis s s cis e s s e fisis s s\) \key aes \major \bar "||" |
  \mark \default % P
  \barNumberCheck #137 bes\(\pp g s s g ees s s ees des s s des bes s s |
  \barNumberCheck #138 bes g s s g ees s s\) \change Staff = "mvt_d_piano_lh" \voiceOne \tuplet 3/2 4 { des8-.( bes-. g-. ees-. d-. des-.) } |
  \barNumberCheck #139 c8*2/3(\pp ees c' ees, c ees c'-5 \change Staff = "mvt_d_piano_rh" \oneVoice ees-2 c' ees, c ees) |
  \barNumberCheck #140 c'-5( ees-2 c' ees, c ees c ees, c' ees, c \change Staff = "mvt_d_piano_lh" \voiceOne ees,) |
  \barNumberCheck #141 c( fis c' fis, c fis c' \change Staff = "mvt_d_piano_rh" \oneVoice fis c' fis, c fis) |
  \barNumberCheck #142 c'(\< fis c' fis, c fis c\! fis, c') cis,(\f e cis') \key a \major \bar "||" |
  \barNumberCheck #143 c,( e cis') b,( e b') b,(-\markup{\italic "dim."} e b') a,( e' a) |
  \barNumberCheck #144 r\p e( a e cis a) \clef bass gis( bis e bis gis e) |
  \barNumberCheck #145 a(\pp cis e) \clef treble cis( e a) cis,( fis a) e( gis b) |
  \barNumberCheck #146 e,( a cis a e cis)\< e( gis cis fisis,\! e cis) |
  \barNumberCheck #147 e(\f gis cis gis e cis) bis( e gis dis-\markup{\italic "dim."} bis gis) |
  \barNumberCheck #148 dis'( e gis e dis gis,) cis( e gis) cis,( e g) |
  \barNumberCheck #149 cis,(\p e fis e cis fis,) r d'( fis ~ fis cis fis) |
  \barNumberCheck #150 b,( e fis dis b fis) b( d fis) b,( d f) |
  \barNumberCheck #151 b,( d e d b e,) r cis'(\< e ~ e b e)\! |
  \mark \default % Q <<<<< DUBIOUS
  \barNumberCheck #152 \tuplet 3/2 { r8(\ff <cis' e> e,) } <cis' e>4 \tuplet 3/2 { r8( <d e> e,) } <d' e>4 |
  \barNumberCheck #153 \tuplet 3/2 { r8( <cis e> e,) } <cis' e>4 \tuplet 3/2 { r8( <bis e> e,) } <bis' e>4 |
  \barNumberCheck #154 \tuplet 3/2 { r8( <cis e> e,) } <cis' e>4 \tuplet 3/2 { r8( <d e> e,) } <d' e>4 |
  \barNumberCheck #155 \tuplet 3/2 { r8( <cis e> e,) } <cis' e>4 \tuplet 3/2 { r8( <cis e> e,) } <cis' e>4 |
  \barNumberCheck #156 \tuplet 3/2 { r8( <a cis> d,) } <a' d>4 \tuplet 3/2 { r8( <fis cis'> bis,) } <fis' bis>4 |
  \barNumberCheck #157 \tuplet 3/2 { r8(-\markup{\italic "dim."} <eis cis'> cis) } <eis cis'>4 \tuplet 3/2 { r8(\pp <fis ais> ais,) } <fis' ais>4 |
  \barNumberCheck #158 \tuplet 3/2 { r8( <gis cis> cis,) } <gis' cis>4 \tuplet 3/2 { r8( <cis, g' ais>\< ais) } <cis g' ais>4\! |
  \barNumberCheck #159 fis8*2/3(\f d d') e,( cis cis') d,( b b') cis,( a a') ~ |
  \barNumberCheck #160 <a, a'> <gis gis'> <fis fis'> <e e'> d' cis \change Staff = "mvt_d_piano_lh" \voiceOne b16( a gis fis e8-.) \change Staff = "mvt_d_piano_rh" \oneVoice <e' e'>-. |
  \barNumberCheck #161 <a a'>2 <e e'>4. <fis fis'>8-. |
  \barNumberCheck #162 <cis cis'>-. <d d'>-. <e e'>-. <a, a'>-. <e' a cis>4.-> <fis fis'>8-. |
  \barNumberCheck #163 <cis cis'>-. <d d'>-. <e e'>-. <a, a'>-. <d a' d>4.-> <a' a'>8-. |
  \barNumberCheck #164 <d, d'>-. <e e'>-. <fis fis'>-. a-. <b dis a' b>4->\ff r8 <b dis a' b>8-> ~ |
  \barNumberCheck #165 <b dis a' b>4 r8 <b dis a' b>8-> ~ <b dis a' b>4 r8 <b dis a' b>8-> |
  \barNumberCheck #166 <b e gis b>4-> r8 \clef bass \voiceOne b,8 ~ b4. b8 ~ |
  \barNumberCheck #167 b4. b8 ~ b4. b8 ~ |
  \barNumberCheck #168 b4. e8 ~ e4. e8 ~ |
  \barNumberCheck #169 e4. e8 ~ e4. e8 \clef treble |
  \mark \default % R
  \barNumberCheck #170 \tuplet 3/2 4 { r8 \voiceOne e'( e, \oneVoice a cis e) } r8*2/3 \voiceOne e( e, \oneVoice a bis e) |
  \barNumberCheck #171 r \voiceOne e( e, \oneVoice a cis e) r \voiceOne e( e, \oneVoice a cis eis) |
  \barNumberCheck #172 r \voiceOne fis( fis, \oneVoice ais cis fis) r \voiceOne eis( eis, \oneVoice b' cis eis) |
  \barNumberCheck #173 r \voiceOne fis( fis, \oneVoice ais cis fis) r \voiceOne fis( fis, \oneVoice ais-\markup{\italic "cresc."} cis fis) |
  \barNumberCheck #174 r \voiceOne fis( fis, \oneVoice b d fis) r \voiceOne eis( eis, \oneVoice b' cis eis) |
  \barNumberCheck #175 r \voiceOne fis( fis, \oneVoice b d fis) r \voiceOne fis( fis, \oneVoice a b fis') |
  \barNumberCheck #176 r \voiceOne b,( b, \oneVoice e a b) r \voiceOne b( b, \oneVoice e gis b) |
  \barNumberCheck #177 r \voiceOne cis(\< cis, \oneVoice gis' b cis) r d,( <a' d>) r e(\! <b' d e>) |
  \barNumberCheck #178 r16 cis,( a cis e a cis e) r bis,( a bis e a bis e) |
  \barNumberCheck #179 r cis,( a cis e a cis e) r cis,( a cis eis a cis eis) |
  \barNumberCheck #180 r cis,( ais cis fis ais cis fis) r cis,( b cis eis b' cis eis) |
  \barNumberCheck #181 r cis,( ais cis fis ais cis fis) r cis,( ais cis fis ais cis fis) |
  \barNumberCheck #182 r fis,( d fis b d fis b) r eis,,( cis eis b' cis eis b') |
  \barNumberCheck #183 r fis,( d fis b d fis b) r a,( fis a b fis' a b) |
  \barNumberCheck #184 r e,( a b e a, b e \ottava 1 a\< b, e a b e, a b)\! |
  \barNumberCheck #185 e dis d cis b a gis fis \ottava 0 \tuplet 5/4 { e d cis b a } \tuplet 6/4 { gis fis e d cis b } |
  \barNumberCheck #186 <b, dis a'>8-.\ff\noBeam \voiceOne b'''16 a s s b, a s s b, a s s b, a \oneVoice |
  \barNumberCheck #187 r4 <a' b> ~ <e a b e>8 r <e gis b e>4-> |
  \barNumberCheck #188 <dis a' b dis>8-.\noBeam \voiceOne b'''16 a s s b, a s s b, a s s b, a \oneVoice |
  \barNumberCheck #189 r4 <dis b' dis>-> <d b' d>-> <d b' d>-> |
  \barNumberCheck #190 a'''16(\f fis d fis d a d a fis-\markup{\italic "cresc."} a fis d fis d a d) |
  \barNumberCheck #191 a( fis a fis d fis d \change Staff = "mvt_d_piano_lh" \voiceOne a \change Staff = "mvt_d_piano_rh" \oneVoice d \change Staff = "mvt_d_piano_lh" \voiceOne a fis a fis d fis d) |
  \barNumberCheck #192 a(\f d fis a \change Staff = "mvt_d_piano_rh" \voiceOne d fis a d fis d a d fis a d fis) |
  \barNumberCheck #193 a8 \oneVoice r r4 \ottava 1 <b, fis' a b> r |
  \barNumberCheck #194 <cis a' cis>4.-> r16 <e e'> r <a, a'> r <b b'> r <cis cis'> r <e, e'> \ottava 0 |
  \barNumberCheck #195 <a a'>4. r16 <fis fis'> r <cis cis'> r <d d'> r <e e'> r <a, a'> |
  \barNumberCheck #196 <cis cis'>4-> r8 a <cis, a' cis>4. a'8 |
  \barNumberCheck #197 <cis, a' cis>4. cis'8( <e, gis d' e>4.) e'8( |
  \barNumberCheck #198 <cis e a cis>4-.)\sff r r2\fermata \fine |
  \barNumberCheck #199
} % }}}

mvt_d_piano_rh_b = \new Voice \relative c' { % {{{
  \set fingeringOrientations = #'(up left down)
  \clef treble \partial 8 s8 |
  \barNumberCheck #1   s1*14 |
  \mark \default % K
  \barNumberCheck #15   s1*14 |
  \mark \default % L
  \barNumberCheck #29  s1*14 |
  \barNumberCheck #43  \voiceTwo s4 b'16 gis s8 \change Staff = "mvt_d_piano_lh" \voiceTwo b,16 gis s8 b,16 gis \change Staff = "mvt_d_piano_rh" \oneVoice s8 |
  \barNumberCheck #44  s1 |
  \barNumberCheck #45  s4 a'''16 fis s8 a,16 fis s8 \change Staff = "mvt_d_piano_lh" \voiceTwo a,16 fis \change Staff = "mvt_d_piano_rh" \oneVoice s8 |
  \barNumberCheck #46  s1 |
  \mark \default % M
  \barNumberCheck #47  s1*7 |
  \barNumberCheck #54  \voiceTwo cis'1 |
  \barNumberCheck #55  dis |
  \barNumberCheck #56  \oneVoice s1*29 \bar "||" \key bes \major |
  \barNumberCheck #85  \voiceTwo s4 d'16 bes s8 d,16 bes s8 \change Staff = "mvt_d_piano_lh" d,16 bes \change Staff = "mvt_d_piano_rh" s8 |
  \barNumberCheck #86  s1 |
  \barNumberCheck #87  s4 d''16 bes s8 d,16 bes s8 \change Staff = "mvt_d_piano_lh" d,16 bes \change Staff = "mvt_d_piano_rh" \oneVoice s8 |
  \barNumberCheck #88  s1 |
  \mark \default % N <<<<< DUBIOUS
  \barNumberCheck #89  s4 \voiceTwo d'''16 bes s8 d,16 bes s8 d,16 bes \oneVoice s8 |
  \barNumberCheck #90  s4 \voiceTwo d'16 bes s8 d,16 bes \oneVoice s8 s4 |
  \barNumberCheck #91  s1*22 |
  \mark \default % O
  \barNumberCheck #113 s1*22 |
  \barNumberCheck #135 \change Staff = "mvt_d_piano_lh" \voiceTwo s16 s dis, fisis s s fisis ais s s ais \change Staff = "mvt_d_piano_rh" \voiceTwo cis s\< s cis e |
  \barNumberCheck #136 s s e fisis s s fisis ais s s \footnote #'(-1 . -1) "This is a G sharp in Kistner 1879 edition" ais cis s s cis e\! \key aes \major \bar "||" |
  \mark \default % P
  \barNumberCheck #137 s s ees des s s des bes s s bes g s s g ees |
  \barNumberCheck #138 s s ees des s s des \change Staff = "mvt_d_piano_lh" \voiceTwo bes \change Staff = "mvt_d_piano_rh" \voiceTwo s2 |
  \barNumberCheck #139 s1*4 \key a \major \bar "||" |
  \barNumberCheck #143 s1*9 |
  \mark \default % Q <<<<< DUBIOUS
  \barNumberCheck #152 s1*14 |
  \barNumberCheck #166 s2 \voiceTwo <dis, a'>\pp |
  \barNumberCheck #167 <dis a'> \after 4. \! <dis a'>\< |
  \barNumberCheck #168 <d g> <e bis'> |
  \barNumberCheck #169 <a cis>\> <e b'>\! \clef treble |
  \mark \default % R
  \barNumberCheck #170 \voiceTwo s8*2/3 e''4*2/3 s4 s8*2/3 e4*2/3 s4 |
  \barNumberCheck #171 s8*2/3 e4*2/3 s4 s8*2/3 e4*2/3 s4 |
  \barNumberCheck #172 s8*2/3 fis4*2/3 s4 s8*2/3 eis4*2/3 s4 |
  \barNumberCheck #173 s8*2/3 fis4*2/3 s4 s8*2/3 fis4*2/3 s4 |
  \barNumberCheck #174 s8*2/3 fis4*2/3 s4 s8*2/3 eis4*2/3 s4 |
  \barNumberCheck #175 s8*2/3 fis4*2/3 s4 s8*2/3 fis4*2/3 s4 |
  \barNumberCheck #176 s8*2/3 b,4*2/3 s4 s8*2/3 b4*2/3 s4 |
  \barNumberCheck #177 s8*2/3 cis4*2/3 s4 s2 |
  \barNumberCheck #178 s1*8 |
  \barNumberCheck #186 s4 \voiceTwo b'16 a s s b, a s s b, a s s |
  \barNumberCheck #187 s1 |
  \barNumberCheck #188 s4 b''16 a s s b, a s s b, a s s |
  \barNumberCheck #189 s1*10 \fine |
  \barNumberCheck #199
} % }}}

mvt_d_piano_lh_a = \new Voice \relative c' { % {{{
  \set fingeringOrientations = #'(up left down)
  \key a \major \time 4/4 \clef bass \partial 8 <e,, e'>8-.\ff |
  \barNumberCheck #1   <a a'>2 <e e'>4. <fis fis'>8 |
  \barNumberCheck #2   <cis cis'>-. <d d'>-. <e e'>-. <a, a'>-. <f f'>4.-> \slurDown <e e'>8( |
  \barNumberCheck #3   <e'' b' d>4) \slurNeutral r8 e,( <e' a cis>4) r8 e,( |
  \barNumberCheck #4   <e' b'>4) r8 e,( <e' a>4) r8 <e, e'>8( |
  \barNumberCheck #5   <d d'>) <e e'>-. <fis fis'>-. <gis gis'>-. <fis fis'>-. <e e'>-. <d d'>-. <cis cis'>-. |
  \barNumberCheck #6   <b b'>-. <a a'>-. <gis gis'>-. <fis fis'>-. <e e'>4 r |
  \barNumberCheck #7   <eis' cis' eis>2\ff <fis cis' fis>4. <a a'>8( |
  \barNumberCheck #8   <gis gis'>)-. <fis fis'>-. <e e'>-. <d d'>-. <cis cis'>-. <b b'>-. <a a'>-. <g g'>-. |
  \barNumberCheck #9   <fis fis'>2 ~ fis'8 a-. g-. f-. |
  \barNumberCheck #10  e2 ~ e8 dis-. e-. fis-. |
  \barNumberCheck #11  gis[-. r gis,]-. r r4 gis8-. r |
  \barNumberCheck #12  r4 gis8-. r r4 gis8-. r |
  \autoBeamOn \barNumberCheck #13  s2 \voiceOne \autoBeamOff \crossStaff { fis'' |
  \barNumberCheck #14  gis b |
  \mark \default % K
  \barNumberCheck #15  <fis ais>8_. e_. d_. cis_. b_. cis_. d_. e_. |
  \barNumberCheck #16  fis_. e_. d_. cis_. d_.  } \autoBeamOn \oneVoice s8*3 |
  \barNumberCheck #17  <g,, g'>4-.-\sustainOn <g' d'>-. r-\sustainOff <g d'>-. |
  \barNumberCheck #18  r <g d'>-. r <g f'>-. |
  \barNumberCheck #19  c,-.-\sustainOn <c' g'>-. \footnote #'(1 . -1) "Pedal release not found in Kistner 1879 edition." Staff.SustainPedal r-\sustainOff <c a'>-. |
  \barNumberCheck #20  r <c g'>-. f,-. <f' a>-. |
  \barNumberCheck #21  g,-. g'-. r g-. |
  \barNumberCheck #22  g, r8 <d d'>-> <f f'>4.-> <e e'>8-> |
  \barNumberCheck #23  <a a'>2-> <e e'>4.-> <fis fis'>8-. |
  \barNumberCheck #24  <cis cis'>-. <d d'>-. <e e'>-. <a, a'>-. <f f'>4.-> <e e'>8( |
  \barNumberCheck #25  <e'' b' d>4) r8 e,( <e' a cis>4) r8 e,( |
  \barNumberCheck #26  <e' b'>4) r8 e,( <e' a>4) r8 e, |
  \barNumberCheck #27  <d d'>4 r8 <e e'>8 <cis cis'>4 r8 <e e'>( |
  \barNumberCheck #28  <dis dis'>)-. <cis cis'>-. <b b'>-. <a a'>-. <gis gis'>4 r8 b' |
  \mark \default % L
  \barNumberCheck #29  \voiceTwo <a b>8-.\sustainOn r <a b>2 <a b>4 |
  \barNumberCheck #30  <a b>8-. r <a b>2 \after 16 \sustainOff <a b>4 |
  \barNumberCheck #31  <gis b>8-.\sustainOn r <gis b>2 <gis b>4 |
  \barNumberCheck #32  <gis b>8-. r <gis b>2 \after 16 \sustainOff <gis b>4 |
  \barNumberCheck #33  <a b>8-.\sustainOn r <a b>2 <a b>4 |
  \barNumberCheck #34  <a b>8-. r <a b>2 \after 16 \sustainOff <a b>4 |
  \barNumberCheck #35  <g b>8-.\sustainOn r <g b>2 <g b>4 |
  \barNumberCheck #36  <g b>8-. r <g b>2 \after 16 \sustainOff <g b>4 |
  \barNumberCheck #37  \after 4. \sustainOff <f g>2 \sustainOn \after 4. \sustainOff <e g> \sustainOn |
  \barNumberCheck #38  \voiceOne g2 \oneVoice <c, g'> |
  \barNumberCheck #39  \after 4. \sustainOff <e fis>\sustainOn \after 4. \sustainOff <dis fis>\sustainOn |
  \barNumberCheck #40  <c fis> <b fis'> |
  \barNumberCheck #41  \after 4. \sustainOff <a' b>\sustainOn \after 4. \sustainOff <gis b>\sustainOn |
  \barNumberCheck #42  <fis b> \voiceOne b \oneVoice |
  \barNumberCheck #43  <dis, gis b>8-.\sustainOn s s4*3 |
  \barNumberCheck #44  dis2\sustainOff ~ <dis dis'> |
  \barNumberCheck #45  <b dis b'>8->\sustainOn s s4*3 |
  \barNumberCheck #46  \voiceTwo r4\sustainOff b'2( b,4) \oneVoice |
  \mark \default % M
  \barNumberCheck #47  e8*2/3( b' e, b' e, b' e, b' e, b' e, b') |
  \barNumberCheck #48  e,( b' e, b' e, b' e, b' e, b' e, b') |
  \barNumberCheck #49  e,( b' e, b' e, b' e, b' e, b' e, b') |
  \barNumberCheck #50  e,( b' e, b' e, b' e, b' e, b' e, b') |
  \barNumberCheck #51  dis,( b' dis, b' dis, b' dis, b' dis, b' dis, b') |
  \barNumberCheck #52  gis( b gis b gis b gis b gis b gis b) |
  \barNumberCheck #53  eis,( b' eis, b'eis, b'eis, b'eis, b'eis, b') |
  \barNumberCheck #54  \voiceOne b'2 ais |
  \barNumberCheck #55  a1 \oneVoice |
  \barNumberCheck #56  <e,, e'>2\sustainOn <e' b'>\sustainOff ~ |
  \barNumberCheck #57  <e b'> <e b'> |
  \barNumberCheck #58  <e, e'>\sustainOn <e' b'>\sustainOff ~ |
  \barNumberCheck #59  <e b'> <e b'> |
  \barNumberCheck #60  <cis e'> <dis cis' dis> |
  \barNumberCheck #61  \voiceOne <bis' dis> <cis eis> |
  \barNumberCheck #62  <dis fis> <d eis> \oneVoice |
  \barNumberCheck #63  <fis, cis' fis>4 <gis gis'> <a a'> <ais ais'> |
  \barNumberCheck #64  <b a' b>2. r8 <b, b'>-. |
  \barNumberCheck #65  <e e'>2-> <b b'>4.-> <cis cis'>8-. |
  \barNumberCheck #66  <gis gis'>-. <a a'>-. <b b'>-. <e, e'>-. <c c'>2 |
  \barNumberCheck #67  r4 <c'' fis ais>-. <b fis' a>-. r |
  \barNumberCheck #68  r <bes e gis>-. <a e' a>-. r |
  \barNumberCheck #69  r fis-. r g-. |
  \barNumberCheck #70  r a-. b-. r |
  \barNumberCheck #71  <c, c'>-.(\sustainOn <fis' ais e'>-. <fis a dis>-.\sustainOff <b,, b'>-.)
  \barNumberCheck #72  <bes bes'>-.(\sustainOn <e' gis d'>-.\sustainOff <e g cis>-.\sustainOn <a,, a'>-.)\sustainOff |
  \barNumberCheck #73  <d d'>-.(\sustainOn <fis' c'>-.)\sustainOff <e, d'>-.(\sustainOn <g' c>-.)\sustainOff |
  \barNumberCheck #74  <eis, d'>-.( <gis' c>-.) <fis, d'>-.( <a' c>-.) |
  \barNumberCheck #75  <b, dis b'>8-. a'-. g-. fis-. e-. fis-. g-. a-. |
  \barNumberCheck #76  b-. a-. g-. fis-. g-. f-. e-. dis-. |
  \barNumberCheck #77  e-.-> c-. g-. e'-. f-.-> d-. g,-. f'-. |
  \barNumberCheck #78  e-. c-. g-. e'-. gis,-. e'-. c-. gis-. |
  \barNumberCheck #79  e'-. d-. c-. b-. a-. b-. c-. d-. |
  \barNumberCheck #80  e-. d-. c-. b-. c-. bes-. a-. gis-. |
  \barNumberCheck #81  a( f c a' c, bes' g c,) |
  \barNumberCheck #82  a'( f c a' d, c' a d,) |
  \barNumberCheck #83  b'( g d b' d, c' a d,) |
  \barNumberCheck #84  b'( g d b' f ees' c f,) \key bes \major \bar "||" |
  \barNumberCheck #85  <bes, f' bes>8\sustainOn s8 s2. |
  \barNumberCheck #86  bes8-.\sustainOff r <bes'' d>4-. <f a cis>2-> |
  \barNumberCheck #87  <bes,, f' bes>8\sustainOn s8 s2. |
  \barNumberCheck #88  bes8-.\sustainOff r <bes'' d>4-. <f c'>2-> |
  \mark \default % N <<<<< DUBIOUS
  \barNumberCheck #89  <bes,, bes'>8\sustainOn s2.. |
  \barNumberCheck #90  d'16 bes s8 s2 \voiceTwo d16[ bes] \voiceOne d16[ bes]\sustainOff |
  \barNumberCheck #91  \voiceTwo <bes, f'>1\sustainOn ~ |
  \barNumberCheck #92  <bes f'>4 <bes f'>2 \after 8 \sustainOff <bes f'>4 |
  \barNumberCheck #93  <aes bes aes'>1\sustainOn ~ |
  \barNumberCheck #94  <aes bes aes'>4 <aes bes aes'>2 \after 8. \sustainOff <aes bes aes'>4 |
  \barNumberCheck #95  <a d a'>1\sustainOn ~ |
  \barNumberCheck #96  <a d a'>4 <a d a'>2 \after 8. \sustainOff <a d a'>4 |
  \barNumberCheck #97  <b d b'>1\sustainOn ~ |
  \barNumberCheck #98  <b d b'>4 <b d b'>2 \after 8. \sustainOff <b d b'>4 \oneVoice |
  \barNumberCheck #99  c4(_\markup{\musicglyph "pedal.Ped"} ~ c8*2/3 a' c)_\markup{\musicglyph "pedal.*"} cis,4( ~ cis8*2/3 a' cis) | % !!!! pedalling instructions cause a cyclic dependency error somehow
  \barNumberCheck #100 d,4( ~ d8*2/3 a' d) dis,4( ~ dis8*2/3 a' dis) \key a \major \bar "||" |
  \barNumberCheck #101 <e, a e'>2 <f f'> |
  \barNumberCheck #102 <fis d' fis>1 |
  \barNumberCheck #103 <f d' f>2 <a f' a> |
  \barNumberCheck #104 <gis e' gis>1 |
  \barNumberCheck #105 e,16(\sustainOn e' e, e' e, e' e, e' e, e' e, e' e, e' e, e') ~ |
  \barNumberCheck #106 <e, e'>1\sustainOff ~ |
  \barNumberCheck #107 <e e'>8*2/3\sustainOn \change Staff = "mvt_d_piano_rh" \voiceTwo fis'''( d \change Staff = "mvt_d_piano_lh" \oneVoice b d b gis b gis d gis d)\sustainOff |
  \barNumberCheck #108 <e, b'>1 |
  \barNumberCheck #109 \voiceOne r4 fis'8*2/3( d fis) r4 fis8*2/3( d fis) |
  \barNumberCheck #110 r4 e8*2/3( cis e) r4 e8*2/3( cis e) |
  \barNumberCheck #111 r4 d8*2/3( b d) r4 d8*2/3( b d) \oneVoice |
  \barNumberCheck #112 e,,4\sustainOn b''8*2/3( e, b') e,( b' e, e' e,) <e e'>\sustainOff |
  \mark \default % O
  \barNumberCheck #113 <a a'>2 <e e'>4. <fis fis'>8-. |
  \barNumberCheck #114 <cis cis'>-. <d d'>-. <e e'>-. <a, a'>-. <f f'>4.-> \slurDown <e e'>8( |
  \barNumberCheck #115 <e'' b' d>4) \slurNeutral r8 e,( <e' a cis>4) r8 e,( |
  \barNumberCheck #116 <e' b'>4) r8 e,( <e' a>4) r8 <e, e'>( |
  \barNumberCheck #117 <d d'>)-. <e e'>-.\< <fis fis'>-. <gis gis'>-.\! <fis fis'>-.\> <e e'>-. <d d'>-.\! <cis cis'>-. |
  \barNumberCheck #118 <b b'>-. <a a'>-. <gis gis'>-. <fis fis'>-. <e e'>4 r |
  \barNumberCheck #119 <eis' cis' eis>2( <fis cis' fis>4) r8 <fis' cis'> |
  \barNumberCheck #120 <b cis>2( <ais cis>4) r8 <ais, cis fis ais>-. |
  \barNumberCheck #121 <bis dis gis bis>2 <cis eis gis cis>4 r8 \clef treble <cis' gis'> |
  \barNumberCheck #122 <fis gis>2( <eis gis>4) r \clef bass |
  \barNumberCheck #123 eis,,8-. cis'-. r4 fis,8-. cis'-. r4 |
  \barNumberCheck #124 gis8-. cis-. r4 a8-. cis-. r4 |
  \barNumberCheck #125 \voiceOne r2 a ~ |
  \barNumberCheck #126 <a d>2\sustainOn \oneVoice \after 8*10/3 \sustainOff fis' |
  \barNumberCheck #127 \voiceOne s4 b8*2/3 s s s4 c8*2/3 s s |
  \barNumberCheck #128 s4 b8*2/3 s s s4 b8*2/3 s s |
  \barNumberCheck #129 s4 b8*2/3 s s s4 b8*2/3 s s |
  \barNumberCheck #130 s4 b8*2/3 s s <b d>8*2/3-. gis-. d-. b-. s s |
  \barNumberCheck #131 \voiceTwo <dis,, dis'>2. e''4(-> |
  \barNumberCheck #132 dis) \oneVoice dis,2 e'4(-> |
  \barNumberCheck #133 dis) dis,2 e'4(-> |
  \barNumberCheck #134 dis) dis,2 \voiceTwo dis'4 |
  \barNumberCheck #135 dis,8\sustainOn s s2.
  \barNumberCheck #136 \after 2... \sustainOff s1 \key aes \major \bar "||" |
  \mark \default % P
  \barNumberCheck #137 s1\sustainOn |
  \barNumberCheck #138 s2 \after 4 \sustainOff r2 |
  \barNumberCheck #139 \voiceTwo aes8*2/3(\sustainOn ees' aes ees aes, ees' aes ees' aes ees aes, ees') |
  \barNumberCheck #140 aes( ees' aes ees aes, ees') \after 8*2/3*5 \sustainOff r2 |
  \barNumberCheck #141 aes,,,8*2/3(\sustainOn ees' aes ees aes, ees' aes ees' aes ees aes, ees') |
  \barNumberCheck #142 aes( ees' aes ees aes, ees') r4\sustainOff a,,,8*2/3( e' a) \key a \major \bar "||" |
  \barNumberCheck #143 \voiceOne e'1 |
  \barNumberCheck #144 cis2 bis |
  \barNumberCheck #145 cis4 \oneVoice e fis e |
  \barNumberCheck #146 \voiceOne a2( gis4 fisis) |
  \barNumberCheck #147 gis2( fis) |
  \barNumberCheck #148 e e |
  \barNumberCheck #149 e( fis4 e) ~ |
  \barNumberCheck #150 e dis d2 ~ |
  \barNumberCheck #151 d e4 d \oneVoice |
  \mark \default % Q <<<<< DUBIOUS
  \barNumberCheck #152 a,\sustainOn \tuplet 3/2 { r8( e''\sustainOff e,) } e'4\sustainOn \tuplet 3/2 { r8( a,, e')\sustainOff } |
  \barNumberCheck #153 a,4 \tuplet 3/2 { r8( e'' e,) } e'4 \tuplet 3/2 { r8( a,, e') } |
  \barNumberCheck #154 a,4 \tuplet 3/2 { r8( e'' e,) } e'4 \tuplet 3/2 { r8( a,, e') } |
  \barNumberCheck #155 a,4 \tuplet 3/2 { r8( e'' e,) } e'4 \tuplet 3/2 { r8( a,, e') } |
  \barNumberCheck #156 fis,4 \tuplet 3/2 { r8( fis' fis,) } gis4 \tuplet 3/2 { r8( gis' gis,) } |
  \barNumberCheck #157 cis4 \tuplet 3/2 { r8( cis' cis,) } fis4( ~ \tuplet 3/2 { fis8 cis' cis,) } |
  \barNumberCheck #158 eis4( ~ eis8*2/3 cis' cis,) e4( ~ e8*2/3 g e) |
  \barNumberCheck #159 \voiceOne fis1 |
  \barNumberCheck #160 <e b'>4 ~ <e b'>8*2/3 d' cis \voiceTwo b16( a gis fis e d cis b) |
  \barNumberCheck #161 \oneVoice <a a'>2 <e' e'>4. <fis fis'>8 |
  \barNumberCheck #162 <cis cis'>-. <d d'>-. <e e'>-. <a, a'>-. <g g'>4.->\sustainOn <fis' fis'>8-.\sustainOff |
  \barNumberCheck #163 <cis cis'>-. <d d'>-. <e e'>-. <a, a'>-. <fis fis'>4.->\sustainOn <a' a'>8-.\sustainOff |
  \barNumberCheck #164 <d, d'>-. <e e'>-. <fis fis'>-. a-. <f, f'>2->\sustainOn |
  \barNumberCheck #165 <f f'>-> <f f'>->\sustainOff |
  \barNumberCheck #166 <e e'>4-> r <f' b>2 |
  \barNumberCheck #167 <f b> <fis b> |
  \barNumberCheck #168 <g b> <gis\=1( bis\=2(> |
  \barNumberCheck #169 <a\=1) cis\=2)> <e b'> |
  \mark \default % R
  \barNumberCheck #170 a8-.\sustainOn cis-. e-. a-.\sustainOff bis-.-2\sustainOn a-.-1 e-. bis-.\sustainOff |
  \barNumberCheck #171 a-. cis-. e-. a-. a-. e-. cis-. g-. |
  \barNumberCheck #172 fis-. cis'-. fis-. ais-. b-. eis,-. cis-. g-. |
  \barNumberCheck #173 fis-. cis'-. fis-.-1 ais-.-2 fis-. cis-. ais-. e-. |
  \barNumberCheck #174 d-. fis-. b-. d-. cis-. b-. g-. cis,-. |
  \barNumberCheck #175 d-. fis-. b-. d-. dis-. b-. fis-. dis-. |
  \barNumberCheck #176 e-. a-. b-. e-. e-. b-. gis-. e-. |
  \barNumberCheck #177 eis-. gis-. cis-. eis-. fis,( fis') gis,( gis') |
  \barNumberCheck #178 <a, cis e>4(\sustainOn a,8) r\sustainOff <a' bis e>4(\sustainOn a,8) r\sustainOff |
  \barNumberCheck #179 \slurDown <cis' e>4(\sustainOn a,8) \slurNeutral r\sustainOff <a' cis>4( g,8) r |
  \barNumberCheck #180 <ais' cis>4( fis,8) r <b' cis>4( g,8) r |
  \barNumberCheck #181 <ais' cis>4( fis,8) r <e'' fis>4( e,8) r |
  \barNumberCheck #182 <d' fis b>4( d,8) r <cis' eis b'>4( cis,8) r |
  \barNumberCheck #183 <d' fis b>4( d,8) r <dis' fis b>4( dis,8) r |
  \barNumberCheck #184 <e' a b>4-.\sustainOn <e, e'>2 \after 8 \sustainOff <e' a b>4 ~ |
  \barNumberCheck #185 <e gis b> <e, e'>2 <e, e'>4 |
  \barNumberCheck #186 <fis fis'>8-.\sustainOn s8 s4 s2 |
  \barNumberCheck #187 b'8-.\sustainOff r <fis dis'>4( <e e'>8) r <e, e'>4-> |
  \barNumberCheck #188 <fis fis'>8-.\sustainOn s8 s4 s2 |
  \barNumberCheck #189 a'8\sustainOff r <f, f'>4-> <e e'>-> <e' e'>-> |
  \barNumberCheck #190 <a, d fis>16(\sustainOn a' <a, d fis> a' <a, d fis> a' <a, d fis> a' <a, d fis> a' <a, d fis> a' <a, d fis> a' <a, d fis> a') |
  \barNumberCheck #191 <a, d fis> a' <a, d fis> a' \voiceTwo <a, d fis> a' <a, d fis> a' <a, d fis> a' <a, d fis> a' <a, d fis> a' <a, d fis> a' |
  \barNumberCheck #192 a,( d fis a \oneVoice d fis a \change Staff = "mvt_d_piano_rh" \voiceTwo d fis d a d fis a d fis) |
  \barNumberCheck #193 a8 \change Staff = "mvt_d_piano_lh" \oneVoice s8\sustainOff r4 <d,,,, d'>4 r |
  \barNumberCheck #194 <a e' a>4.->\sustainOn \clef treble <e''' e'>8-. <a, a'>-. <b b'>-. <cis cis'>-. <e, e'>-. \clef bass |
  \barNumberCheck #195 <a a'>4.-> <fis fis'>8-. <cis cis'>-. <d d'>-. <e e'>-. <a, a'>-. |
  \barNumberCheck #196 <cis cis'>4-> r <eis, eis'> r |
  \barNumberCheck #197 <fis fis'> r <e b' e> r |
  \barNumberCheck #198 <a, cis e a>-. r r2\fermata \fine |
  \barNumberCheck #199
} % }}}

mvt_d_piano_lh_b = \new Voice \relative c' { % {{{
  \set fingeringOrientations = #'(up left down)
  \partial 8 s8 |
  \barNumberCheck #1   s1*12 |
  \barNumberCheck #13  r8. \voiceTwo gis,,16( gis'4) r8. a,16( a'4) |
  \barNumberCheck #14  r8. b,16( b'4) r8. cis,16( cis'4) |
  \mark \default % K
  \barNumberCheck #15  fis,8-. e-. d-. cis-. b-. cis-. d-. e-. |
  \barNumberCheck #16  fis-. e-. d-. cis-. d-. <c c'>-. <b b'>-. <a a'>-. \oneVoice |
  \barNumberCheck #17  s1*12 |
  \mark \default % L
  \barNumberCheck #29  s1*9 |
  \barNumberCheck #38  \voiceTwo f'4( e8 d s2) \oneVoice |
  \barNumberCheck #39  s1*3 |
  \barNumberCheck #42  s2 \voiceTwo f4( e) \oneVoice |
  \barNumberCheck #43  s1*4 |
  \mark \default % M
  \barNumberCheck #47  s1*7
  \barNumberCheck #54  \voiceTwo fis8*2/3( b fis b fis b fis b fis b fis b) |
  \barNumberCheck #55  b,( b' b, b' b, b' b, b' b, b' b, b') \oneVoice |
  \barNumberCheck #56  s1*5 |
  \barNumberCheck #61  \voiceTwo gis1 ~ |
  \barNumberCheck #62  gis2 gis \oneVoice |
  \barNumberCheck #63  s1*26 |
  \mark \default % N <<<<< DUBIOUS
  \barNumberCheck #89  s1*12 \key a \major \bar "||" |
  \barNumberCheck #101 s1*8 |
  \barNumberCheck #109 \voiceTwo \after 2.. \sustainOff e1\sustainOn |
  \barNumberCheck #110 \after 2.. \sustainOff e1\sustainOn |
  \barNumberCheck #111 \after 2.. \sustainOff e1\sustainOn |
  \barNumberCheck #112 \oneVoice s1 |
  \mark \default % O
  \barNumberCheck #113 s1*12
  \barNumberCheck #125 \voiceTwo d1 ~ |
  \barNumberCheck #126 d2 \oneVoice s2 |
  \barNumberCheck #127 s4 s8*2/3 g'-. g,-. s s s s g'-. g,-. |
  \barNumberCheck #128 s s s s g'-. g,-. s s s s f'-. f,-. |
  \barNumberCheck #129 s s s s e'-. e,-. s s s s f'-. f,-. |
  \barNumberCheck #130 s\sustainOn s s s e'-. e,-. s s s s e-. e,-.\sustainOff |
  \barNumberCheck #131 s1*6 \key aes \major \bar "||" |
  \mark \default % P
  \barNumberCheck #137 s1*6 \key a \major \bar "||" |
  \barNumberCheck #143 \voiceTwo e''4( dis d cis) |
  \barNumberCheck #144 a1 ~ |
  \barNumberCheck #145 a4 s2. |
  \barNumberCheck #146 r4 a2. |
  \barNumberCheck #147 r4 gis2 gis4 ~ |
  \barNumberCheck #148 gis gis2( g4) |
  \barNumberCheck #149 r fis2. ~ |
  \barNumberCheck #150 fis4 fis2( f4) |
  \barNumberCheck #151 e1 |
  \mark \default % Q <<<<< DUBIOUS
  \barNumberCheck #152 s1*7 |
  \barNumberCheck #159 \voiceTwo b4 cis d dis |
  \barNumberCheck #160 s1*10 |
  \mark \default % R
  \barNumberCheck #170 s1*29 \fine |
  \barNumberCheck #199
} % }}}

mvt_d = << % {{{
  \tag #'violin
  \new Staff \with {
    \magnifyStaff #5/7
    instrumentName = "Violin"
    shortInstrumentName = "V."
    midiInstrument = "violin"
  } <<
    \mvt_d_canvas
    \tag #'violin_tempi \mvt_d_tempi
    \mvt_d_violin
  >>

  \tag #'cello
  \new Staff \with {
    \magnifyStaff #5/7
    instrumentName = "Cello"
    shortInstrumentName = "C."
    midiInstrument = "cello"
  } <<
    \mvt_d_canvas
    \tag #'cello_tempi \mvt_d_tempi
    \mvt_d_cello
  >>

  \tag #'piano
  \new PianoStaff \with {
    instrumentName = "Piano"
    shortInstrumentName = "P."
    midiInstrument = "acoustic grand"
  } <<
    \new Staff = "mvt_d_piano_rh" \with {
      #(scale-props 'magnifyStaff 5/7 #t '((BarLine thick-thickness) (BarLine hair-thickness) (BarLine kern)))
    } <<
      \mvt_d_canvas
      \tag #'piano_tempi \mvt_d_tempi
      \new Voice = "mvt_d_piano_rh_a" { \voiceOne \mvt_d_piano_rh_a }
      \new Voice = "mvt_d_piano_rh_b" { \voiceTwo \mvt_d_piano_rh_b }
    >>
    \new Staff = "mvt_d_piano_lh" \with {
      #(scale-props 'magnifyStaff 5/7 #t '((BarLine thick-thickness) (BarLine hair-thickness) (BarLine kern)))
    } <<
      \mvt_d_canvas
      \new Voice = "mvt_d_piano_lh_a" { \voiceOne \mvt_d_piano_lh_a }
      \new Voice = "mvt_d_piano_lh_b" { \voiceTwo \mvt_d_piano_lh_b }
    >>
  >>
>> % }}}

#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
