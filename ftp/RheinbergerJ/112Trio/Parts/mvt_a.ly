mvt_a_canvas = { % {{{
  \key a \major
  \time 3/4
  \tempo "Allegro" 4 = 152
  \repeat "volta" 2 {
      \barNumberCheck #1 s2.*23 |
      \mark \default %A
      \barNumberCheck #24 s2.*45 |
      \mark \default %B
      \barNumberCheck #69 s2.*40 |
  }
  \barNumberCheck #109 s2.*28 |
  \mark \default %C
  \barNumberCheck #137 s2.*42 |
  \mark \default %D
  \barNumberCheck #179 s2.*26 |
  \mark \default %E
  \barNumberCheck #205 s2.*36 |
  \mark \default %F
  \barNumberCheck #241 s2.*47 \fine |
  \barNumberCheck #288
} % }}}

mvt_a_tempi = \new Voice \relative c' { % {{{
  \time 3/4
  \barNumberCheck #1 s2.*134 |
  \barNumberCheck #135 s2.^\markup{\italic "poco rit."} |
  \barNumberCheck #136 s2. |
  \barNumberCheck #137 s2.^\markup{\italic "a tempo"} |
  \barNumberCheck #138 s2.*66 |
  \barNumberCheck #204 s2.^\markup{\italic "rit."} |
  \barNumberCheck #205 s2.^\markup{\italic "a tempo"} |
  \barNumberCheck #206 s2.*82 \fine |
  \barNumberCheck #288
} % }}}

mvt_a_violin = \new Voice \relative c' { % {{{
  \clef treble
  \barNumberCheck #1 R2.*3 |
  \barNumberCheck #4 r2 cis'4--\mf |
  \barNumberCheck #5 b2(\sf a8 gis) |
  \barNumberCheck #6 a4( e8) r e4\(\sf ~ |
  \barNumberCheck #7 e d\) cis\sf\( ~ |
  \barNumberCheck #8 cis b a\) |
  \barNumberCheck #9 b2.\< |
  \barNumberCheck #10 b\> |
  \barNumberCheck #11 b2\! b4\(\< |
  \barNumberCheck #12 d4.\! cis8\> b cis\)\! |
  \barNumberCheck #13 \after 2 \< a2. |
  \barNumberCheck #14 \after 4 \! a2.\> |
  \barNumberCheck #15 a2 a8( d) |
  \barNumberCheck #16 f(\<[ d)] f([ a)] d([ a)]\! |
  \barNumberCheck #17 c([\fp a]) f([ d)] c([ a)] |
  \barNumberCheck #18 c([ bes)] c([ a)] c([ g)] |
  \barNumberCheck #19 a([ c)] f([ c)] f([ a)] |
  \barNumberCheck #20 f([\f d)] f([ a)] d([ a)] |
  \barNumberCheck #21 cis([ a)] e([ dis)] e([ cis)] |
  \barNumberCheck #22 dis( e fis gis a ais) |
  \barNumberCheck #23 r b( bis\< cis d dis)\! |
  \mark \default % A
  \barNumberCheck #24 e4(\ff cis d) |
  \barNumberCheck #25 e2( cis'4) |
  \barNumberCheck #26 b2( a8 gis) |
  \barNumberCheck #27 a4( e) r |
  \barNumberCheck #28 r2. |
  \barNumberCheck #29 r4 r fis(\p |
  \barNumberCheck #30 e2-> d8 cis) |
  \barNumberCheck #31 d4( a) c-> ~ |
  \barNumberCheck #32 c b8([ a gis a] |
  \barNumberCheck #33 b4) r r |
  \barNumberCheck #34 r8\p cis,[\< dis e fis gis]\! |
  \barNumberCheck #35 fis4(\> e)\! r |
  \barNumberCheck #36 r8 eis([\< fis gis a b)]\! |
  \barNumberCheck #37 a4(\> gis)\! r |
  \barNumberCheck #38 r8\f gis([\< a b cis d])\! |
  \barNumberCheck #39 d2. |
  \barNumberCheck #40 r8 gis,([\< a b cis d)]\! |
  \barNumberCheck #41 d2. |
  \barNumberCheck #42 R2.*4 |
  \barNumberCheck #46 r8 g,[-.\p b-. d-. fis( g)] |
  \barNumberCheck #47 r g,[-. c-. e-. fis( g)] |
  \barNumberCheck #48 r2. |
  \barNumberCheck #49 r8 e,[-. g-. c-. dis( e)] |
  \barNumberCheck #50 r2. |
  \barNumberCheck #51 r8 d,8[-. g-. b-. cis( d)] |
  \barNumberCheck #52 r2. |
  \barNumberCheck #53 r8 b,8[-. dis-. fis-. ais( b)] |
  \barNumberCheck #54 r2. |
  \barNumberCheck #55 r8 b[-. dis-. fis-. ais( b)] |
  \barNumberCheck #56 r2. |
  \barNumberCheck #57 r |
  \barNumberCheck #58 r4 e,,2-.\(\pp |
  \barNumberCheck #59 r4 e2-. |
  \barNumberCheck #60 r4 e2-. |
  \barNumberCheck #61 r4 e2-.\) |
  \barNumberCheck #62 r4 g( fis) |
  \barNumberCheck #63 r fis( e) |
  \barNumberCheck #64 r e( b) |
  \barNumberCheck #65 b2.\< ~ |
  \barNumberCheck #66 b ~ |
  \barNumberCheck #67 b ~ |
  \barNumberCheck #68 b\! |
  \mark \default %B
  \barNumberCheck #69 r4 r b'(\<-\markup{\italic "dolce"} |
  \barNumberCheck #70 gis'2\> fis4)\! |
  \barNumberCheck #71 r r b,(\< |
  \barNumberCheck #72 \after 4 \! gis'2\> fis4) |
  \barNumberCheck #73 r r b,(\< |
  \barNumberCheck #74 b'2\!\f ais4) |
  \barNumberCheck #75 ais2( gis4) |
  \barNumberCheck #76 dis(-. dis-. dis-.) |
  \barNumberCheck #77 dis2.( |
  \barNumberCheck #78 d->) |
  \barNumberCheck #79 cis2( c4 |
  \barNumberCheck #80 b) b-.(-\markup{\italic "dim."} b-.) |
  \barNumberCheck #81 b2 r4 |
  \barNumberCheck #82 r r b(\< |
  \barNumberCheck #83 a'2\> gis4)\! |
  \barNumberCheck #84 r r b,(\< |
  \barNumberCheck #85 a'2\> gis4)\! |
  \barNumberCheck #86 b2.--\f |
  \barNumberCheck #87 b-- |
  \barNumberCheck #88 b-- |
  \barNumberCheck #89 d4(\ff b d) |
  \barNumberCheck #90 c( b a) |
  \barNumberCheck #91 r2. |
  \barNumberCheck #92 r4 b2(\< ~ |
  \barNumberCheck #93 b4\f gis b) |
  \barNumberCheck #94 a( gis fis) |
  \barNumberCheck #95 e2.(-\markup{\italic "dim."} |
  \barNumberCheck #96 b) |
  \barNumberCheck #97 R2.*6 |
  \barNumberCheck #103 r8 b,([\< cis dis e fis])\! |
  \barNumberCheck #104 r fis([\> e dis cis b)]\! |
  \barNumberCheck #105 r2. |
  \barNumberCheck #106 r2. |
  \barNumberCheck #107 r8 b([\< cis d e fis])\! |
  \barNumberCheck #108 r fis([ e d cis b)] |
  % VOLTA
  \barNumberCheck #109 d2.->( |
  \barNumberCheck #110 cis2) r4 |
  \barNumberCheck #111 r8 e'[(\< fis g a b])\! |
  \barNumberCheck #112 r b([\> a g fis e])\! |
  \barNumberCheck #113 g2.->\f ~ |
  \barNumberCheck #114 g |
  \barNumberCheck #115 fis( |
  \barNumberCheck #116 f) |
  \barNumberCheck #117 f,4(\p d ees) |
  \barNumberCheck #118 f2(\< <d d'>4)\! |
  \barNumberCheck #119 <ees c'>2.\sff ~ |
  \barNumberCheck #120 q ~ |
  \barNumberCheck #121 q4 r r |
  \barNumberCheck #122 r2. |
  \barNumberCheck #123 r |
  \barNumberCheck #124 \after 8 -\markup{\italic "dim."} ges2.(\sf |
  \barNumberCheck #125 f |
  \barNumberCheck #126 ees) |
  \barNumberCheck #127 \acciaccatura d16 d'4(\ff bes c) |
  \barNumberCheck #128 d2( bes'4) |
  \barNumberCheck #129 <b, aes'>2.\sff ~ |
  \barNumberCheck #130 q ~ |
  \barNumberCheck #131 q4 r r |
  \barNumberCheck #132 r2. |
  \barNumberCheck #133 r2. |
  \barNumberCheck #134 f2.->(\p |
  \barNumberCheck #135 e |
  \barNumberCheck #136 d) |
  \mark \default % C
  \barNumberCheck #137 r4 r \once\override Hairpin.minimum-length = #7 g(\p\< |
  \barNumberCheck #138 e'2\> d4)\! |
  \barNumberCheck #139 r4 r g,(\< |
  \barNumberCheck #140 e'2\> d4)\! |
  \barNumberCheck #141 r2. |
  \barNumberCheck #142 r4 r <g,, e'>(\< |
  \barNumberCheck #143 \after 8 \! f'2\>) f4-> ~ |
  \barNumberCheck #144 f2 f4(-> ~ |
  \barNumberCheck #145 f d-\markup{\italic "cresc."} e) |
  \barNumberCheck #146 f2( d'4) |
  \barNumberCheck #147 cis2.( |
  \barNumberCheck #148 c) |
  \barNumberCheck #149 b4(\ff g a) |
  \barNumberCheck #150 b2( e4) |
  \barNumberCheck #151 <dis, dis'>2.\sff ~ |
  \barNumberCheck #152 q |
  \barNumberCheck #153 b'4( gis a) |
  \barNumberCheck #154 b( gis' e) |
  \barNumberCheck #155 <dis, dis'>2.\sff ~ |
  \barNumberCheck #156 q4 r ees8(\p b) |
  \barNumberCheck #157 c([ ees)] a([\< c)] ees([\! c)] |
  \barNumberCheck #158 d([ bes)] f([\> e)]\! f([ d)] |
  \barNumberCheck #159 ees([ d)] d([ c)] c([ bes)] |
  \barNumberCheck #160 bes4 r r |
  \barNumberCheck #161 r8 e-.\<\mf gis([ b)]\! d([ b)] |
  \barNumberCheck #162 cis([ a)] e([\> dis)] e([ cis)]\! |
  \barNumberCheck #163 c([ b)] b([ a)] a([ gis)] |
  \barNumberCheck #164 gis([ a)]\< a([ b)] b([ c)]\! |
  \barNumberCheck #165 c([ b)]\> b([ a)]\! a([ gis)] |
  \barNumberCheck #166 gis([\< b)] b([ d)] d([ f)]\! |
  \barNumberCheck #167 f([\ff e)] e([ d)] d([ f)] |
  \barNumberCheck #168 f([ e)] e([ d)] d([ f)] |
  \barNumberCheck #169 f( d) r4 f8( d) |
  \barNumberCheck #170 r4 f8( d) r4 |
  \barNumberCheck #171 r f'(-> d) |
  \barNumberCheck #172 r d(-> b) |
  \barNumberCheck #173 r b( gis) |
  \barNumberCheck #174 r gis( f) |
  \barNumberCheck #175 r gis( b |
  \barNumberCheck #176 d) f,( gis |
  \barNumberCheck #177 b) d,( f |
  \barNumberCheck #178 gis) b,(\< f')\! |
  \mark \default % D
  \barNumberCheck #179 e(\f cis d) |
  \barNumberCheck #180 e2( cis'4) |
  \barNumberCheck #181 b2(\sf a8 gis) |
  \barNumberCheck #182 a4( e) d' |
  \barNumberCheck #183 cis2(\sf b8 ais) |
  \barNumberCheck #184 b4( fis8\< b d fis)\! |
  \barNumberCheck #185 <a, a'>2.\ff |
  \barNumberCheck #186 <a g'> |
  \barNumberCheck #187 <d, a' fis'>4 r \once\override Hairpin.minimum-length = #7 a(\<\p |
  \barNumberCheck #188 fis'2\> e4)\! |
  \barNumberCheck #189 r r a,(\< |
  \barNumberCheck #190 fis'2\> e4)\! |
  \barNumberCheck #191 R2.*4 |
  \barNumberCheck #195 r4 r cis'(\p |
  \barNumberCheck #196 ais'2-\markup{\italic "dolce"} gis4) |
  \barNumberCheck #197 gis2( fis4) |
  \barNumberCheck #198 cis-. cis-. cis-. |
  \barNumberCheck #199 r2. |
  \barNumberCheck #200 cis4-.\pp cis-. cis-. |
  \barNumberCheck #201 r2. |
  \barNumberCheck #202 r2.  |
  \barNumberCheck #203 r2. |
  \barNumberCheck #204 <b, d>4-^ <a d>-^ <gis d'>-^ |
  \mark \default % E
  \barNumberCheck #205 r2. |
  \barNumberCheck #206 r4 r e'(\< |
  \barNumberCheck #207 d'2\> cis4)\! |
  \barNumberCheck #208 r r e(\< |
  \barNumberCheck #209 d'2\> cis4)\! |
  \barNumberCheck #210 e2.-> |
  \barNumberCheck #211 e-> |
  \barNumberCheck #212 e-> |
  \barNumberCheck #213 \ottava #1 g4(\ff e g) |
  \barNumberCheck #214 f( e d) |
  \barNumberCheck #215 \ottava #0 e( c e) |
  \barNumberCheck #216 d( c b) |
  \barNumberCheck #217 r2. |
  \barNumberCheck #218 r |
  \barNumberCheck #219 a4(\pp f a |
  \barNumberCheck #220 f a f) |
  \barNumberCheck #221 r2. |
  \barNumberCheck #222 r |
  \barNumberCheck #223 d4(\pp b d |
  \barNumberCheck #224 b d b) |
  \barNumberCheck #225 r2. |
  \barNumberCheck #226 r |
  \barNumberCheck #227 r |
  \barNumberCheck #228 r4 e2->\f ~ |
  \barNumberCheck #229 e4 cis( e) |
  \barNumberCheck #230 d( cis b) |
  \barNumberCheck #231 cis'(\ff a cis) |
  \barNumberCheck #232 b( a gis) |
  \barNumberCheck #233 e,-^ cis-^ e-^ |
  \barNumberCheck #234 d-^ cis-^ b-^ |
  \barNumberCheck #235 a2. ~ |
  \barNumberCheck #236 a2 r4 |
  \barNumberCheck #237 r \tuplet 3/2 { a8( d) d } \tuplet 3/2 { d( fis) fis } |
  \barNumberCheck #238 fis8*2/3([ a)\< a] a([ d) d] d([ fis) fis]\! |
  \barNumberCheck #239 fis2.(-\markup{\dynamic sf \italic "smorz."} ~ |
  \barNumberCheck #240 fis2 f4) |
  \mark \default
  \barNumberCheck #241 f2.->-\markup{\dynamic p \italic "dolce"} |
  \barNumberCheck #242 f2-> f4 |
  \barNumberCheck #243 \acciaccatura { f16 } ees2.( |
  \barNumberCheck #244 d) |
  \barNumberCheck #245 r4 d2-> ~ |
  \barNumberCheck #246 d4 cis2-> ~ |
  \barNumberCheck #247 cis4 b2-> ~ |
  \barNumberCheck #248 b4 a2-> |
  \barNumberCheck #249 r4 r gis(-\markup{\dynamic p \italic "dolce"} |
  \barNumberCheck #250 fis'2-> eis4) |
  \barNumberCheck #251 r r gis,( |
  \barNumberCheck #252 ais'2-> gis4) |
  \barNumberCheck #253 r r gis(\f |
  \barNumberCheck #254 dis'2 cis4) |
  \barNumberCheck #255 r r dis( |
  \barNumberCheck #256 fis2-> e4) |
  \barNumberCheck #257 r2. |
  \barNumberCheck #258 r |
  \barNumberCheck #259 <e,, b'>4\f-\markup{"pizz."} <e cis'> <e d'> |
  \barNumberCheck #260 <e cis'> r r |
  \barNumberCheck #261 f'8([\p-\markup{"arco"} d)] f([ bes)] d([ bes)] |
  \barNumberCheck #262 cis([ a)] e([ cis)] a([ e)] |
  \barNumberCheck #263 a'([\f fis)] dis([ c)] a([ fis)] |
  \barNumberCheck #264 d'([ b)] gis([ e)] d([ b)] |
  \barNumberCheck #265 e4(\ff cis d) |
  \barNumberCheck #266 e2( cis'4) |
  \barNumberCheck #267 b2(-> a8 gis) |
  \barNumberCheck #268 a4( e) cis''-- |
  \barNumberCheck #269 b2(-> a8 gis) |
  \barNumberCheck #270 a4( e) cis'-. |
  \barNumberCheck #271 d2.\sf ~ |
  \barNumberCheck #272 d |
  \barNumberCheck #273 f\sff ~ |
  \barNumberCheck #274 f ~ |
  \barNumberCheck #275 f8 r f4(\sf e) |
  \barNumberCheck #276 f(\sf e) f(\sf |
  \barNumberCheck #277 e) fis(\sf e) |
  \barNumberCheck #278 fis(\sf e) e-. |
  \barNumberCheck #279 a2 r4 |
  \barNumberCheck #280 cis,,,2.\( |
  \barNumberCheck #281 e\< |
  \barNumberCheck #282 a\)\! |
  \barNumberCheck #283 cis4-.\sf r r |
  \barNumberCheck #284 r2. |
  \barNumberCheck #285 r |
  \barNumberCheck #286 <e, b' gis'>4-.\sf r r |
  \barNumberCheck #287 <e cis' a'>4-. r r\fermata \fine |
  \barNumberCheck #288
} % }}}

mvt_a_cello = \new Voice \relative c' { % {{{
  \clef bass
  \barNumberCheck #1 R2.*3 |
  \barNumberCheck #4 r2 cis4--\mf |
  \barNumberCheck #5 b2(\sf a8 gis) |
  \barNumberCheck #6 a4( e8) r cis'4(\sf ~ |
  \barNumberCheck #7 cis b) a(\sf |
  \barNumberCheck #8 gis2 a4) |
  \barNumberCheck #9 gis2.\< |
  \barNumberCheck #10 a\> |
  \barNumberCheck #11 gis\< |
  \barNumberCheck #12 \after 4 \! g\> |
  \barNumberCheck #13 \after 2 \< fis2. |
  \barNumberCheck #14 \after 4 \! g2.\> |
  \barNumberCheck #15 fis2 a,8( d) |
  \barNumberCheck #16 f([\< d)] f([ a)] d([ a)]\! |
  \barNumberCheck #17 c([\fp a]) f([ d)] c([ a)] |
  \barNumberCheck #18 c([ bes)] c([ a)] c([ g)] |
  \barNumberCheck #19 a([ c)] f([ c)] f([ a)] |
  \barNumberCheck #20 f([\f d)] f([ a)] d([ a)] |
  \barNumberCheck #21 cis([ a)] e([ dis)] e([ cis)] |
  \barNumberCheck #22 dis( e fis gis a ais) |
  \barNumberCheck #23 b4(\< e d)\! |
  \mark \default % A
  \barNumberCheck #24 cis4(\ff a b) |
  \barNumberCheck #25 cis2( e4) |
  \barNumberCheck #26 f2.(\ff |
  \barNumberCheck #27 e4) r a(\p |
  \barNumberCheck #28 gis2-> fis8 eis) |
  \barNumberCheck #29 fis4( cis) r |
  \barNumberCheck #30 r2. |
  \barNumberCheck #31 r4 r d(\< |
  \barNumberCheck #32 \after 4 \! dis2.)\> |
  \barNumberCheck #33 r2. |
  \barNumberCheck #34 b2.\p ~ |
  \barNumberCheck #35 b ~ |
  \barNumberCheck #36 b ~ |
  \barNumberCheck #37 b |
  \barNumberCheck #38 r |
  \barNumberCheck #39 r8 e,[(\f\< gis b cis d])\! |
  \barNumberCheck #40 d2. |
  \barNumberCheck #41 r8 e,[(\< gis b cis d)]\! |
  \barNumberCheck #42 r\f g,[-. b-. d-. fis( g)] |
  \barNumberCheck #43 r g,[-. c-. e-. fis( g)] |
  \barNumberCheck #44 r2. |
  \barNumberCheck #45 r8 g,[-. c-. e-. fis( g)] \clef tenor |
  \barNumberCheck #46 g2.->\p |
  \barNumberCheck #47 g2\< ~ g8\! g |
  \barNumberCheck #48 a4--\> g-- f--\! |
  \barNumberCheck #49 e2 ~ e8\< e\! |
  \barNumberCheck #50 g4--\> f--\! e-- |
  \barNumberCheck #51 d2 ~ d8 d |
  \barNumberCheck #52 e4-- d-- c-- |
  \barNumberCheck #53 b2 r4 |
  \barNumberCheck #54 R2.*4 \clef bass |
  \barNumberCheck #58 r4 e,2-.\(\pp |
  \barNumberCheck #59 r4 e2-. |
  \barNumberCheck #60 r4 e2-. |
  \barNumberCheck #61 r4 e2-.\) |
  \barNumberCheck #62 r4 g( fis) |
  \barNumberCheck #63 r fis( e) |
  \barNumberCheck #64 r e( b) |
  \barNumberCheck #65 b2.\< ~ |
  \barNumberCheck #66 b ~ |
  \barNumberCheck #67 b ~ |
  \barNumberCheck #68 b\! |
  \mark \default %B
  \barNumberCheck #69 R2.*8 |
  \barNumberCheck #77 gis2.(\f |
  \barNumberCheck #78 e) |
  \barNumberCheck #79 a2( fis4 |
  \barNumberCheck #80 b2.) |
  \barNumberCheck #81 r4 r \clef tenor b'(\<-\markup{\italic "dolce"} |
  \barNumberCheck #82 gis'2\> fis4)\! |
  \barNumberCheck #83 r r b,(\< |
  \barNumberCheck #84 gis'2\> fis4)\! |
  \barNumberCheck #85 r r e\f |
  \barNumberCheck #86 gis2.-- |
  \barNumberCheck #87 gis-- |
  \barNumberCheck #88 g-- |
  \barNumberCheck #89 b4(\ff g b) |
  \barNumberCheck #90 a( g fis) \clef bass |
  \barNumberCheck #91 r2. |
  \barNumberCheck #92 r |
  \barNumberCheck #93 gis4(\f e gis) |
  \barNumberCheck #94 cis,( b a) |
  \barNumberCheck #95 gis2.(-\markup{\italic "dim."} |
  \barNumberCheck #96 dis4) r r |
  \barNumberCheck #97 r2. |
  \barNumberCheck #98 r |
  \barNumberCheck #99 r8 b[(\< cis dis e fis)]\! |
  \barNumberCheck #100 r fis([\> e dis cis b)]\! |
  \barNumberCheck #101 b2. ~ |
  \barNumberCheck #102 b |
  \barNumberCheck #103 r2. |
  \barNumberCheck #104 r |
  \barNumberCheck #105 r8 e([\< fis gis a b)]\! |
  \barNumberCheck #106 r b([\> a gis fis e)]\! |
  \barNumberCheck #107 d2. ~ |
  \barNumberCheck #108 d |
  % VOLTA
  \barNumberCheck #109 r2. |
  \barNumberCheck #110 r2. |
  \barNumberCheck #111 r2. |
  \barNumberCheck #112 r2. |
  \barNumberCheck #113 r8 a'([\f b c d ees)] |
  \barNumberCheck #114 r ees([ d c b a]) |
  \barNumberCheck #115 r ees'([ d c bes a)] |
  \barNumberCheck #116 r c([ bes\> a g f)]\! |
  \barNumberCheck #117 d'4(\p bes c) |
  \barNumberCheck #118 d2(\< \clef tenor f4)\! |
  \barNumberCheck #119 <a, ges'>2.\sff ~ |
  \barNumberCheck #120 q ~ |
  \barNumberCheck #121 q4 r r |
  \barNumberCheck #122 r2. |
  \barNumberCheck #123 r |
  \barNumberCheck #124 \after 8 -\markup{\italic "dim."} ees'2.(\sf |
  \barNumberCheck #125 d |
  \barNumberCheck #126 c) \clef bass |
  \barNumberCheck #127 bes4(\ff g a) |
  \barNumberCheck #128 bes2( d4) |
  \barNumberCheck #129 <d, f'>2.\sff ~ |
  \barNumberCheck #130 q ~ |
  \barNumberCheck #131 q4 r r |
  \barNumberCheck #132 r2. |
  \barNumberCheck #133 r2. |
  \barNumberCheck #134 <g, b'>\p ~ |
  \barNumberCheck #135 q |
  \barNumberCheck #136 q |
  \mark \default % C
  \barNumberCheck #137 \after 2 \< e''2.(\p |
  \barNumberCheck #138 \after 8*3 \! f)\> |
  \barNumberCheck #139 \after 2 \< e( |
  \barNumberCheck #140 \after 4 \! f)\> \clef tenor |
  \barNumberCheck #141 e4(-\markup{\dynamic p \italic "dolce"} c d) |
  \barNumberCheck #142 e2( \clef treble c'4)\< |
  \barNumberCheck #143 \after 8 \! b2.(\> |
  \barNumberCheck #144 bes)( |
  \barNumberCheck #145 a2) r4 |
  \barNumberCheck #146 r f(-\markup{\italic "cresc."} fis) |
  \barNumberCheck #147 g2 g4-> ~ |
  \barNumberCheck #148 g2 g4-> \clef tenor |
  \barNumberCheck #149 g4(\ff e fis) |
  \barNumberCheck #150 g2( gis4) |
  \barNumberCheck #151 a2.\sff ~ |
  \barNumberCheck #152 a |
  \barNumberCheck #153 gis4( e fis) |
  \barNumberCheck #154 gis( b gis) |
  \barNumberCheck #155 a2.\sff ~ |
  \barNumberCheck #156 a4 r r |
  \barNumberCheck #157 r2. |
  \barNumberCheck #158 r2. |
  \barNumberCheck #159 r2. \clef bass |
  \barNumberCheck #160 bes,8([\p\< a)] a([ g)] g([ f)]\! |
  \barNumberCheck #161 f([\mf e)] gis([ b)] d([ b)] |
  \barNumberCheck #162 cis([ a)] e([\> dis)] e([ cis)]\! |
  \barNumberCheck #163 c([ b)] b([ a)] a([ gis)] |
  \barNumberCheck #164 gis([ a)]\< a([ b)] b([ c)]\! |
  \barNumberCheck #165 c([\> b)] b([ a)]\! a([ gis)] |
  \barNumberCheck #166 gis([ b)] b([ d)] d([ f)] |
  \barNumberCheck #167 f([\ff e)] e([ d)] d([ f)] |
  \barNumberCheck #168 f([ e)] e([ d)] d([ f)] |
  \barNumberCheck #169 f4 f'8([ d)] r4 |
  \barNumberCheck #170 f8([ d)] r4 f8([ d)] |
  \barNumberCheck #171 r4 d(-> b) |
  \barNumberCheck #172 r b(-> gis) |
  \barNumberCheck #173 r gis( f) |
  \barNumberCheck #174 r f( d) |
  \barNumberCheck #175 e,2.\sf ~ |
  \barNumberCheck #176 e ~ |
  \barNumberCheck #177 e ~ |
  \barNumberCheck #178 e |
  \mark \default % D
  \barNumberCheck #179 cis''4(\f a b) |
  \barNumberCheck #180 cis2( e4) |
  \barNumberCheck #181 f(\sf e2) ~ |
  \barNumberCheck #182 e4 r r \clef tenor |
  \barNumberCheck #183 g4(\sf fis2) ~ |
  \barNumberCheck #184 fis4 fis,8(\< b d fis)\! \clef bass |
  \barNumberCheck #185 fis2.\ff |
  \barNumberCheck #186 e |
  \barNumberCheck #187 r8 a,,-.[\> fis'-. a,-. fis'-. a,-.]\! |
  \barNumberCheck #188 g'[-.\p a,-. g'-. a,-. g'-. a,-.] |
  \barNumberCheck #189 fis'[-. a,-. fis'-. a,-. fis'-. a,-.] |
  \barNumberCheck #190 g'[-. a,-. g'-. a,-. g'-. a,-.] |
  \barNumberCheck #191 fis'[-. eis(\< fis a d fis\!]) |
  \barNumberCheck #192 a2(-> gis4) |
  \barNumberCheck #193 gis2(-> fis4) |
  \barNumberCheck #194 cis(-.\< cis-.\> cis-.)\! |
  \barNumberCheck #195 cis2.\p ~ |
  \barNumberCheck #196 cis ~ |
  \barNumberCheck #197 cis |
  \barNumberCheck #198 b4-. ais-. gis-. |
  \barNumberCheck #199 r2. |
  \barNumberCheck #200 b4-. ais-. gis-. |
  \barNumberCheck #201 r2. |
  \barNumberCheck #202 r4 r r8\< dis'( |
  \barNumberCheck #203 fis2\> eis4)\! |
  \barNumberCheck #204 \clef tenor gis-^ fis-^ e-^ \clef bass |
  \mark \default % E
  \barNumberCheck #205 r4 r e,(\p |
  \barNumberCheck #206 cis'2)(->-\markup{\italic "dolce"} b4) |
  \barNumberCheck #207 r r e,(\< |
  \barNumberCheck #208 cis'2\> b4)\! |
  \barNumberCheck #209 r r a( |
  \barNumberCheck #210 cis2.)-> |
  \barNumberCheck #211 cis-> |
  \barNumberCheck #212 c-> |
  \barNumberCheck #213 e4(\ff c e) |
  \barNumberCheck #214 d( c b) |
  \barNumberCheck #215 \clef tenor g'( e g) |
  \barNumberCheck #216 f( e d) |
  \barNumberCheck #217 r2. |
  \barNumberCheck #218 r2. |
  \barNumberCheck #219 f4(\pp d f |
  \barNumberCheck #220 d f d) |
  \barNumberCheck #221 r2. |
  \barNumberCheck #222 r |
  \barNumberCheck #223 d4(\pp b d |
  \barNumberCheck #224 b d b) |
  \barNumberCheck #225 r2. |
  \barNumberCheck #226 r4 e2->\f ~ |
  \barNumberCheck #227 e4 cis( e) |
  \barNumberCheck #228 d( cis b) |
  \barNumberCheck #229 cis( a cis) |
  \barNumberCheck #230 b( a gis) |
  \barNumberCheck #231 e'(\ff cis e) |
  \barNumberCheck #232 d( cis b) \clef bass |
  \barNumberCheck #233 e,-^ cis-^ e-^ |
  \barNumberCheck #234 d-^ cis-^ b-^ |
  \barNumberCheck #235 a2. ~ |
  \barNumberCheck #236 a2 r4 |
  \barNumberCheck #237 r \tuplet 3/2 { <fis' a>8[ q q] } \tuplet 3/2 { q[ q q] } |
  \barNumberCheck #238 q8*2/3[ q\< q] q[ q q] q[ q q]\! |
  \barNumberCheck #239 q4\sf r r |
  \barNumberCheck #240 r2. |
  \mark \default % F
  \barNumberCheck #241 a2.(\p |
  \barNumberCheck #242 bes) |
  \barNumberCheck #243 c( |
  \barNumberCheck #244 d) |
  \barNumberCheck #245 e->-\markup{\italic "più" \dynamic f} |
  \barNumberCheck #246 e2-> e4 |
  \barNumberCheck #247 \acciaccatura { e16 } d2.( |
  \barNumberCheck #248 cis) |
  \barNumberCheck #249 bis |
  \barNumberCheck #250 r4 r \once\override Hairpin.minimum-length = #7 gis(\p\< |
  \barNumberCheck #251 eis'2\> dis4)\! |
  \barNumberCheck #252 fis2->( eis4) |
  \barNumberCheck #253 r2. |
  \barNumberCheck #254 r4 r gis,(\f |
  \barNumberCheck #255 eis'2-> dis4) |
  \barNumberCheck #256 fis2(-> e4) |
  \barNumberCheck #257 r2. |
  \barNumberCheck #258 r |
  \barNumberCheck #259 gis,4\f-\markup{"pizz."} a gis |
  \barNumberCheck #260 a r r |
  \barNumberCheck #261 f'2.(\p-\markup{"arco"} |
  \barNumberCheck #262 e) |
  \barNumberCheck #263 a8([\f fis)] dis([ c)] a([ fis)] |
  \barNumberCheck #264 d'([ b)] gis([ e)] d([ b)] |
  \barNumberCheck #265 cis'4(\ff a b) |
  \barNumberCheck #266 cis2( e4) |
  \barNumberCheck #267 f2.(-> |
  \barNumberCheck #268 e4) r e( |
  \barNumberCheck #269 f2.-> |
  \barNumberCheck #270 e4) r e-. |
  \barNumberCheck #271 f2.\sff ~ |
  \barNumberCheck #272 f |
  \barNumberCheck #273 d\sff ~ |
  \barNumberCheck #274 d ~ |
  \barNumberCheck #275 d8 r \clef tenor <b gis'>2\sf |
  \barNumberCheck #276 q\sf q4\sf ~ |
  \barNumberCheck #277 q q2\sf |
  \barNumberCheck #278 q\sf q4-. |
  \barNumberCheck #279 <cis a'>2 r4 |
  \barNumberCheck #280 a2.\( |
  \barNumberCheck #281 cis\< |
  \barNumberCheck #282 e\!\) |
  \barNumberCheck #283 a4-.\sf r r |
  \barNumberCheck #284 r2. |
  \barNumberCheck #285 r2. \clef bass |
  \barNumberCheck #286 <e, d'>4-.\ff r r |
  \barNumberCheck #287 <a, e' cis'>-. r r\fermata \fine |
  \barNumberCheck #288
} % }}}

mvt_a_piano_rh_a = \new Voice \relative c' { % {{{
  \clef treble
  \barNumberCheck #1 \voiceOne \crossStaff <cis e>4\(^\markup{\dynamic p \italic "con fuoco"} \crossStaff cis \crossStaff d |
  \barNumberCheck #2 \crossStaff <cis e>2\< \oneVoice <cis e cis'>4\!\) |
  \barNumberCheck #3 <b f' b>2\(\> <a a'>8 <gis gis'>\! |
  \barNumberCheck #4 <a a'>4 <e e'>\) r |
  \barNumberCheck #5 \voiceOne \crossStaff <f'>2.^\sf( |
  \barNumberCheck #6 \crossStaff <cis e>4) \oneVoice r r16 e(\f cis' e |
  \barNumberCheck #7 cis-> e cis e, b' d b d,) r cis( a' cis |
  \barNumberCheck #8 gis cis gis cis,-\markup{\italic "dim."} gis' b gis b,) r a( e' a) |
  \barNumberCheck #9 gis(\p b gis e cis8-.) r r4 |
  \barNumberCheck #10 a'16(\mf b a dis, cis8-.) r r4 |
  \barNumberCheck #11 gis'16(\p b gis e cis8-.) r r4 |
  \barNumberCheck #12 r16\f g'( g' fis e d\> cis b a g fis e\!) |
  \barNumberCheck #13 fis(\p a fis d b8-.) r r4 |
  \barNumberCheck #14 g'16(\mf a g cis, b8-.) r r4 |
  \barNumberCheck #15 fis'16(\p a fis d b8-.) r r4 |
  \barNumberCheck #16 \voiceOne \crossStaff <d f>4-.^\< \crossStaff q-. \crossStaff q-.\! |
  \barNumberCheck #17 \crossStaff <f a>-. r r |
  \barNumberCheck #18 <g, e' g>4-.\p <a e' a>-. <bes e bes'>-. |
  \barNumberCheck #19 <a f' a>-. r r |
  \barNumberCheck #20 <a d f>-.\f <d f a>-. <f a d>-. |
  \barNumberCheck #21 <e a cis>-. r s |
  \barNumberCheck #22 \voiceOne dis'2 \oneVoice s4 |
  \barNumberCheck #23 <fis, d' fis>4( <e e'>) <e d' e>\ff |
  \mark \default % A
  \barNumberCheck #24 <e cis' e>( <cis a' cis> <d b' d> |
  \barNumberCheck #25 <e cis' e>2 <cis' cis'>4) |
  \barNumberCheck #26 <b f' b>2\f\>( <a a'>8\! <gis gis'>) |
  \barNumberCheck #27 <a a'>4 e16( cis' e, cis' e4-.)\p |
  \barNumberCheck #28 r4 d,16( b' d, b' d4-.) |
  \barNumberCheck #29 r4 cis,16( a' cis, a' cis4-.) |
  \barNumberCheck #30 r4 bes,16( g' bes, g' bes4-.) |
  \barNumberCheck #31 r4 a,16( fis' a, fis' a4-.) |
  \barNumberCheck #32 r4 a,16( dis a dis a'4 |
  \barNumberCheck #33 gis8-.)\p <b, b'>8[(\< <cis cis'> <dis dis'> <e e'> <fis fis'>]\! |
  \barNumberCheck #34 <e e'>4\> <dis dis'>\!) r |
  \barNumberCheck #35 r8 q([\< <e e'> <fis fis'> <gis gis'> <a a'>]\! |
  \barNumberCheck #36 <gis gis'>4\> <fis fis'>)\! r |
  \barNumberCheck #37 r8 q([\< <gis gis'> <a a'> <b b'> <cis cis'>]\!) |
  \barNumberCheck #38 <d a' d>2.(\sf |
  \barNumberCheck #39 <gis, d' gis>2) r4 |
  \barNumberCheck #40 <d' a' d>2.(\sf\> |
  \barNumberCheck #41 <gis, d' gis>) |
  \barNumberCheck #42 <g b d g>\mf |
  \barNumberCheck #43 <g c e g>2 ~ q8\< <g e' g>\! |
  \barNumberCheck #44 <a f' a>4-.(\> <g e' g>-. <f d' f>-.)\! |
  \barNumberCheck #45 <e c' e>2. |
  \barNumberCheck #46 <b d>4(\p g <b d>) |
  \barNumberCheck #47 <c e>( g <c e>) |
  \barNumberCheck #48 \voiceOne f( e d) \oneVoice |
  \barNumberCheck #49 <g, c>^( \change Staff = "mvt_a_piano_lh" \voiceOne <e g> \change Staff = "mvt_a_piano_rh" \voiceOne c') |
  \barNumberCheck #50 \oneVoice e(\> d c)\! |
  \barNumberCheck #51 s \voiceOne \crossStaff d4.^\< d8\! \clef bass |
  \barNumberCheck #52 <c e>4( <b d> <a c>) \oneVoice |
  \barNumberCheck #53 <dis, b'>2. \clef treble |
  \barNumberCheck #54 r2. |
  \barNumberCheck #55 r |
  \barNumberCheck #56 <e' g c>2.(_\>^\sf |
  \barNumberCheck #57 <dis fis b>)\! |
  \barNumberCheck #58 r4\pp <b b'>( <ais ais'>) |
  \barNumberCheck #59 r q( <a a'>) |
  \barNumberCheck #60 r q( <gis gis'>) |
  \barNumberCheck #61 r q( <g g'>) \clef bass |
  \barNumberCheck #62 r <e ais>2-.( |
  \barNumberCheck #63 r4 q2-.) |
  \barNumberCheck #64 r4 q2 |
  \barNumberCheck #65 <b dis b'>2.\pp |
  \barNumberCheck #66 r2. |
  \barNumberCheck #67 r2. |
  \barNumberCheck #68 r2. |
  \mark \default % B
  \barNumberCheck #69 b'16(-\markup{\italic "sempre" \dynamic pp} gis e b b' gis e b b' gis e b |
  \barNumberCheck #70 b'-> a dis, b b' a dis, b b' a dis, b) |
  \barNumberCheck #71 b'( gis e b b' gis e b b' gis e b |
  \barNumberCheck #72 b'-> a dis, b b' a dis, b b' a dis, b) |
  \barNumberCheck #73 b'( gis e b b'\< gis e b b' gis e b\! |
  \barNumberCheck #74 dis'\> cis\! fisis, dis dis' cis fisis, dis dis' cis fisis, dis) |
  \barNumberCheck #75 \tuplet 3/2 4 { dis'8( b gis dis gis b \clef treble dis gis b) } |
  \barNumberCheck #76 <ais cis dis>4-.( <gis b dis>-. <fisis ais dis>-.) |
  \barNumberCheck #77 <gis b dis>2. |
  \barNumberCheck #78 <e gis d'>\sf |
  \barNumberCheck #79 <e a cis>2( <e a c>4) |
  \barNumberCheck #80 <dis a' b>4-.( <dis fisis b>-. <dis a' b>-.) |
  \barNumberCheck #81 b'8*2/3(\p gis e \clef bass b gis e b'16 gis e b) |
  \barNumberCheck #82 b'( a dis, b b' a dis, b b' a dis, b) |
  \barNumberCheck #83 b'(-> gis e b b' gis e b b' gis e b |
  \barNumberCheck #84 b' a dis, b b' a dis, b b' a dis, b) |
  \barNumberCheck #85 b'( gis e b b'-\markup{\italic "cresc."} gis e b b' gis e b) |
  \barNumberCheck #86 b'( gis e b b' gis e b b' gis e b) |
  \barNumberCheck #87 dis'( b gis dis dis' b gis dis dis' b gis dis) \clef treble |
  \barNumberCheck #88 g'( dis b g g' dis b g g' dis b g) |
  \barNumberCheck #89 g'8*2/3(\ff d b g b d g d b) |
  \barNumberCheck #90 d( fis a d-> b g d'-> c a) |
  \barNumberCheck #91 <b d>4(\p <g b> <b d> |
  \barNumberCheck #92 <a c>\< <g b> <fis a>)\! |
  \barNumberCheck #93 gis8*2/3(\f e b gis b e gis b e) |
  \barNumberCheck #94 cis(-\markup{\italic "dim."} a cis, cis' b cis, cis' a cis,) |
  \barNumberCheck #95 \voiceOne b'4( \oneVoice <e, gis> <gis b> |
  \barNumberCheck #96 <fis a> <e gis> <dis fis>) |
  \barNumberCheck #97 r8\p <b b'>(\< <cis cis'> <dis dis'> <e e'> <fis fis'>)\! |
  \barNumberCheck #98 r q(\> <e e'> <dis dis'> <cis cis'> <b b'>)\! |
  \barNumberCheck #99 <gis' b>2.->( |
  \barNumberCheck #100 <a, b dis>) |
  \barNumberCheck #101 r8 <b' b'>(\< <cis cis'> <dis dis'> <e e'> <fis fis'>)\! |
  \barNumberCheck #102 r q(\> <e e'> <dis dis'> <cis cis'> <b b'>)\! |
  \barNumberCheck #103 <b gis' b>2.->( |
  \barNumberCheck #104 <dis, a' b dis>) |
  \barNumberCheck #105 <e gis b e> |
  \barNumberCheck #106 r |
  \barNumberCheck #107 r \clef bass |
  \barNumberCheck #108 <e, gis>\sf \clef treble |
  % VOLTA
  \barNumberCheck #109 r8 e'([\< fis g a b)]\! |
  \barNumberCheck #110 r b([\> a g fis e)]\! |
  \barNumberCheck #111 d'2.->( |
  \barNumberCheck #112 cis2) r4 |
  \barNumberCheck #113 <a c ees g>2.\ff ~ |
  \barNumberCheck #114 q |
  \barNumberCheck #115 <a c ees ges>-\markup{\italic "dim."} |
  \barNumberCheck #116 <f a ees' f> \clef bass |
  \barNumberCheck #117 <d, f>4\p( <bes d> <c ees> |
  \barNumberCheck #118 <d f>2\< <f d'>4)\! \clef treble |
  \barNumberCheck #119 a16(\f c ees ges a c ees ges \tuplet 5/4 { a c ees ges a) } |
  \barNumberCheck #120 \ottava #1 \voiceOne c( a f ges a ges d ees ges ees b c |
  \barNumberCheck #121 ees c gis a c a f ges a ges d ees |
  \barNumberCheck #122 \ottava #0 ges ees b c ees c gis a c a f ges) |
  \barNumberCheck #123 a( ges d ees \oneVoice a ges d ees a ges d ees) |
  \barNumberCheck #124 a( ges d-\markup{\italic "dim."} ees a ges d ees a ges d ees) |
  \barNumberCheck #125 a(\pp f cis d a' f cis d a' f cis d) |
  \barNumberCheck #126 a'( ees b c a' ees b c a' ees b c) \clef bass |
  \barNumberCheck #127 <d, bes' d>4(\ff <bes g' bes> <c a' c>) |
  \barNumberCheck #128 <d bes' d>2( <bes' d bes'>4) \clef treble |
  \barNumberCheck #129 b16( d f aes b d\< f aes \ottava #1 \tuplet 6/4 { b d f aes b d\!) } |
  \barNumberCheck #130 \voiceOne f( d bes b d b g aes b aes e f |
  \barNumberCheck #131 aes f cis d f d bes b d b g aes) |
  \barNumberCheck #132 \ottava #0 b( aes e f aes f cis d f d bes b) |
  \barNumberCheck #133 d( b aes g d' b aes g d' b aes g) \oneVoice |
  \barNumberCheck #134 d'(\pp b aes g d' b aes g d' b aes g) |
  \barNumberCheck #135 e'( b aes g e'\< b aes g e' b aes g) |
  \barNumberCheck #136 f'-.( b, aes\! g f'\> b, aes g f' b, aes g)\! |
  \mark \default % C
  \barNumberCheck #137 <c e>2\pp r4 |
  \barNumberCheck #138 <g, g'>2. ~ |
  \barNumberCheck #139 q4 <g e' g>(-. q-.) |
  \barNumberCheck #140 <g b g'>2. |
  \barNumberCheck #141 <g g'>4(\pp <e e'> <f f'> |
  \barNumberCheck #142 <g g'>2.) |
  \barNumberCheck #143 r4 <f' b>4.->( b,8 |
  \barNumberCheck #144 bes4) <f' bes>4.->(-\markup{\italic "cresc."} bes,8) |
  \barNumberCheck #145 <a a'>4( <f f'> <g g'> |
  \barNumberCheck #146 <a a'>2.) |
  \barNumberCheck #147 r4 <g' cis>4.(-\markup{\italic "cresc."} cis,8-.) |
  \barNumberCheck #148 c4 <g' c>4.(-> c,8) |
  \barNumberCheck #149 b4-.\f r r |
  \barNumberCheck #150 r e(\< e')\! |
  \barNumberCheck #151 \voiceOne dis16( a' dis, b) \voiceTwo dis,( a' dis, b) \voiceOne dis( a' dis, b) |
  \barNumberCheck #152 \oneVoice s2 r4 |
  \barNumberCheck #153 r8 <gis' b>[-. gis,-. <e' gis>-. a,-. <fis' a>-.] |
  \barNumberCheck #154 b,-.[ <gis' b>-.\< e-. <b' e>-.] gis-. <e' gis>-.\! |
  \barNumberCheck #155 \voiceOne dis'16(\ff a' dis, b) \voiceTwo dis,( a' dis, b) \voiceOne dis( a' dis, b) |
  \barNumberCheck #156 \voiceTwo dis,( a' dis, b) \voiceOne dis( a' dis, b) \oneVoice r4\p |
  \barNumberCheck #157 <a ees' a>8-.[ r <f ees' f>-. r <a ees' a>-.] r |
  \barNumberCheck #158 <bes d bes'>-. r r4 r |
  \barNumberCheck #159 <c a' c>8-.[ r <d a' d>-. r <ees a ees'>-.] r |
  \barNumberCheck #160 <d bes' d>-. r r4 r |
  \barNumberCheck #161 <gis, d' gis>8-.[ r <gis d' e>-. r <gis d' gis>-.] r |
  \barNumberCheck #162 <a cis a'>-. r r4 r |
  \barNumberCheck #163 <dis fis a>8-.[ r <dis fis b>-.\< r <dis fis c'>-.]\! r |
  \barNumberCheck #164 <e gis b>-.\> r\! r4 r |
  \barNumberCheck #165 <dis' fis a>8-.[ r <dis fis b>-. r <dis fis c'>-.]\! r |
  \barNumberCheck #166 <e gis b>-.\> r\! r4 r |
  \barNumberCheck #167 <d, gis b d>8[\ff r <e gis b e> r <f gis b f'>] r |
  \barNumberCheck #168 <d gis b d>8[ r <e gis b e> r <f gis b f'>] r |
  \barNumberCheck #169 <d' bes' d>4-> q-> q-> |
  \barNumberCheck #170 <d a' d>-> q-> q-> |
  \barNumberCheck #171 r4 f'16-4->-\markup{\italic "sempre" \dynamic f}( e dis d) d(-4 cis c b) |
  \barNumberCheck #172 r4 d16(-4-> cis c b) b(-4 ais a gis) |
  \barNumberCheck #173 r4 b16(-4-> ais a gis) gis(-4 g fis f) |
  \barNumberCheck #174 r4 gis16(-> g fis f) f( e-\markup{\italic "dim."} dis d) |
  \barNumberCheck #175 r4 f16( e dis d) d( cis c b) |
  \barNumberCheck #176 r4 d16( cis c b) b( ais a gis) |
  \barNumberCheck #177 r4 b16( ais a gis) gis( g fis f) |
  \barNumberCheck #178 r4\< gis16( g fis f) f(\! e dis d) |
  \mark \default % D
  \barNumberCheck #179 \voiceOne \crossStaff <cis e>4(^\f \crossStaff cis \crossStaff d) |
  \barNumberCheck #180 \crossStaff <cis e>2( \oneVoice <cis cis'>4) |
  \barNumberCheck #181 <b b'>2(-> <a a'>8 <gis gis'> |
  \barNumberCheck #182 <a a'>4 <e e'>) <d' d'>( |
  \barNumberCheck #183 <cis cis'>2-> <b b'>8 <ais ais'>) |
#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
  \barNumberCheck #184 \set Voice.doubleSlurs = ##t <b b'>4( <fis fis'>) \unset Voice.doubleSlurs \clef bass d16( e fis g \clef treble |
  \barNumberCheck #185 \change Staff = "mvt_a_piano_lh" \voiceOne a b cis \change Staff = "mvt_a_piano_rh" \oneVoice d e fis g a b\< cis d e |
  \barNumberCheck #186 fis g a b cis d e fis \ottava #1 g a b cis\! |
  \barNumberCheck #187 d4-.)\sf \ottava #0 r r |
  \barNumberCheck #188 r cis,,16(\p d e fis g a b cis |
  \barNumberCheck #189 d fis e d a4-.) r |
  \barNumberCheck #190 r cis,16( d e fis g a b cis |
  \barNumberCheck #191 d fis e d a4-.) r\p |
  \barNumberCheck #192 b,,8-. cis-. b-. cis-. b-. cis-. |
  \barNumberCheck #193 a-. cis-. a-. cis-. a-. cis-. |
  \barNumberCheck #194 \voiceOne \crossStaff cis[^\pp r \crossStaff cis r \crossStaff cis] r |
  \barNumberCheck #195 \crossStaff cis2 \oneVoice r8 ais'-\markup{\italic "dolce"} |
  \barNumberCheck #196 <cis, ais'>([ cis')] q([ cis)] <cis, gis'>([ cis')] |
  \barNumberCheck #197 q([ cis)] q([ cis)] <cis, fis>([ cis')] |
  \barNumberCheck #198 <gis b cis>[-. r <fis ais cis>-. r <cis gis' cis>-.] r |
  \barNumberCheck #199 r2. |
  \barNumberCheck #200 <gis' b cis>8[-. r <fis ais cis>-. r <cis gis' cis>-.] r |
  \barNumberCheck #201 r4 r r8 cis8( |
  \barNumberCheck #202 e2-> dis4)-\markup{\italic "cresc."} |
  \barNumberCheck #203 <d fis>2( eis4) |
  \barNumberCheck #204 <gis d' gis>4-^ <gis d' fis>-^ <e d' e>-^ |
  \mark \default % E
  \barNumberCheck #205 e16(_\pp cis \change Staff = "mvt_a_piano_lh" \voiceOne a e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'                                 cis \change Staff = "mvt_a_piano_lh" \voiceOne a e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'                                 cis \change Staff = "mvt_a_piano_lh" \voiceOne a e) \change Staff = "mvt_a_piano_rh" \oneVoice |
  \barNumberCheck #206 e'16( d \change Staff = "mvt_a_piano_lh" \voiceOne gis, e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'    d \change Staff = "mvt_a_piano_lh" \voiceOne gis, e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'    d \change Staff = "mvt_a_piano_lh" \voiceOne gis, e) \change Staff = "mvt_a_piano_rh" \oneVoice |
  \barNumberCheck #207 e'16( cis \change Staff = "mvt_a_piano_lh" \voiceOne a e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'    cis \change Staff = "mvt_a_piano_lh" \voiceOne a e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'    cis \change Staff = "mvt_a_piano_lh" \voiceOne a e) \change Staff = "mvt_a_piano_rh" \oneVoice |
  \barNumberCheck #208 e'16( d \change Staff = "mvt_a_piano_lh" \voiceOne gis, e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'    d \change Staff = "mvt_a_piano_lh" \voiceOne gis, e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'    d \change Staff = "mvt_a_piano_lh" \voiceOne gis, e) \change Staff = "mvt_a_piano_rh" \oneVoice |
  \barNumberCheck #209 e'16( cis \change Staff = "mvt_a_piano_lh" \voiceOne a e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'    cis \change Staff = "mvt_a_piano_lh" \voiceOne a e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'    cis \change Staff = "mvt_a_piano_lh" \voiceOne a e) \change Staff = "mvt_a_piano_rh" \oneVoice |
  \barNumberCheck #210 e'16( cis \change Staff = "mvt_a_piano_lh" \voiceOne a e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'    cis \change Staff = "mvt_a_piano_lh" \voiceOne a e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'    cis \change Staff = "mvt_a_piano_lh" \voiceOne a e) \change Staff = "mvt_a_piano_rh" \oneVoice |
  \barNumberCheck #211 e'16(^\markup{\italic "cresc."} cis \change Staff = "mvt_a_piano_lh" \voiceOne gis e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'                              cis \change Staff = "mvt_a_piano_lh" \voiceOne gis e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'                              cis \change Staff = "mvt_a_piano_lh" \voiceOne gis e) \change Staff = "mvt_a_piano_rh" \oneVoice |
  \barNumberCheck #212 e'16( c \change Staff = "mvt_a_piano_lh" \voiceOne gis e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'    c \change Staff = "mvt_a_piano_lh" \voiceOne gis e  \change Staff = "mvt_a_piano_rh" \oneVoice
                       e'    c \change Staff = "mvt_a_piano_lh" \voiceOne gis e) \change Staff = "mvt_a_piano_rh" \oneVoice |
  \barNumberCheck #213 <c' e>8*2/3(^\ff \change Staff = "mvt_a_piano_lh" \voiceOne g e c e g c g e) |
  \barNumberCheck #214 g( b \change Staff = "mvt_a_piano_rh" \oneVoice d g e c g' f d) |
  \barNumberCheck #215 g( e b c e g c g e) |
  \barNumberCheck #216 d'( b g e' c g-\markup{\italic "dim."} f' d g,) |
  \barNumberCheck #217 \voiceOne g'8[( g, e' e, g' g,]) |
  \barNumberCheck #218 f'[( f, e' e, d' d,]) |
  \barNumberCheck #219 a''4 f a |
  \barNumberCheck #220 f a f |
  \barNumberCheck #221 g8([ g, e' e, g' g,] |
  \barNumberCheck #222 f'[ f, e' e, d' d,]) |
  \barNumberCheck #223 \oneVoice <aes' f'>4( <g d'> <aes f'> |
  \barNumberCheck #224 <g d'> <aes f'> <g d'>) |
  \barNumberCheck #225 <e g>(\p <c e> <e g> |
  \barNumberCheck #226 <d f>-\markup{\italic "cresc."} <c e> <b d>) |
  \barNumberCheck #227 <cis e>(\f <a cis> <cis e> |
  \barNumberCheck #228 <b d> <a cis> <gis b>) |
  \barNumberCheck #229 \tuplet 3/2 { <cis' e>8(\ff e, q } cis8*2/3 <a' cis> cis, <cis' e> e, q |
  \barNumberCheck #230 d <b' d> d, <a' cis> cis, q b <gis' b> b,) |
  \barNumberCheck #231 r16\ff e''( cis e,) r cis'( a cis,) r e'( cis e,) |
  \barNumberCheck #232 r d'( b d,) r cis'( a cis,) r b'( gis b,) |
  \barNumberCheck #233 r e,( cis gis a b cis d e\< fis gis a |
  \barNumberCheck #234 b cis d e fis gis a b \tuplet 5/4 { cis d e fis gis\!) } |
  \barNumberCheck #235 \ottava #1 <a, fis' a>4\ff <fis d' fis>-\markup{\italic "cresc."} <a fis' a> |
  \barNumberCheck #236 <g e' g> <fis d' fis> <e a e'> |
  \barNumberCheck #237 \ottava #0 <fis fis'>8*2/3( d' a) <d, d'>( a' fis) <a, a'>( fis' d) |
  \barNumberCheck #238 <fis, fis'>( d' a) <d, d'>( a' fis) <a, a'>( fis' d) |
  \barNumberCheck #239 <d fis>4 r r |
  \barNumberCheck #240 r2. |
  \mark \default % F
  \barNumberCheck #241 r8 f([-\markup{\dynamic p \italic "dolce"} g a bes c)] |
  \barNumberCheck #242 r c([ bes a g f)] |
  \barNumberCheck #243 r <f f'>([\< <g g'> <a a'> <bes bes'> <c c'>)]\! |
  \barNumberCheck #244 r <c c'>([\> <bes bes'> <a a'>\! <g g'> <f f'>)] |
  \barNumberCheck #245 r <e e'>([\< <fis fis'> <gis gis'> <a a'> <b b'>)]\! |
  \barNumberCheck #246 r <b b'>([\> <a a'> <gis gis'>\! <fis fis'> <e e'>)] |
  \barNumberCheck #247 r <d d'>[(\> <cis cis'> <b b'> <a a'> <gis gis'>)]\! |
  \barNumberCheck #248 r8 \voiceOne gis'( fis e d cis) |
  \barNumberCheck #249 \change Staff = "mvt_a_piano_lh" \voiceOne \tuplet 3/2 { <gis bis>8(^\pp bis, fis' } q8*2/3 bis, fis' q bis, fis') |
  \barNumberCheck #250 <gis cis>( cis, eis q cis eis-\markup{\italic "cresc."} q cis eis) |
  \barNumberCheck #251 \change Staff = "mvt_a_piano_rh" \oneVoice <fis' gis>( gis, dis' q gis, dis' q gis, dis') |
  \barNumberCheck #252 <fis ais>(\sf ais, cis q ais cis <eis gis> gis, cis) |
  \barNumberCheck #253 <gis' bis>(-\markup{\italic "cresc."} bis, fis' q bis, fis' q bis, fis') |
  \barNumberCheck #254 cis'( cis, gis' cis cis, gis' cis cis, gis') |
  \barNumberCheck #255 fis'(\f fis, gis fis' fis, gis fis' fis, gis) |
  \barNumberCheck #256 <cis fis>( e, a q e a <cis e?> e,? a) |
  \barNumberCheck #257 <d, d'>8([\p b']) d([ fis)] b([ f)] |
  \barNumberCheck #258 a([ e)] cis([ a)] e([ cis)] |
  \barNumberCheck #259 e([\f d)] e([ cis)] e([ b)] |
  \barNumberCheck #260 e([ cis)] \change Staff = "mvt_a_piano_lh" \voiceOne a([ e)] cis([ a)] |
  \barNumberCheck #261 \change Staff = "mvt_a_piano_rh" \oneVoice <f'' bes d>4-.\p r q-. |
  \barNumberCheck #262 r <e a cis>-. r |
  \barNumberCheck #263 <dis fis a c>-. r-\markup{\italic "cresc."} q-. |
  \barNumberCheck #264 r <e gis b>-. r \clef bass |
  \barNumberCheck #265 <e, cis' e>(\ff <cis a' cis> <d b' d> |
  \barNumberCheck #266 <e cis' e>2.) \clef treble |
  \barNumberCheck #267 gis16( b d f gis\< b d f \tuplet 5/4 { gis b d f\! gis) } |
  \barNumberCheck #268 a16( e cis\< a e a e cis a\! e cis a) |
  \barNumberCheck #269 gis( b d f gis\< b d f \tuplet 5/4 { gis b d\! f gis) } |
  \barNumberCheck #270 a( e cis\> a e a e cis a\! e cis a) |
  \barNumberCheck #271 b( d f gis b\< d f gis \tuplet 5/4 { b d f gis b\!) } |
  \barNumberCheck #272 \ottava #1 \voiceOne d( b fisis gis b gis e f gis f cis d) |
  \barNumberCheck #273 \ottava #0 f( d ais b d b fisis gis b gis e f |
  \barNumberCheck #274 gis f cis d f d ais b d b fisis gis) |
  \barNumberCheck #275 b8-. r\mf \oneVoice <gis, d' gis>2-\markup{\italic "cresc."} |
  \barNumberCheck #276 <d' gis d'> <gis d' gis>4->\f ~ |
  \barNumberCheck #277 q <d' gis d'>2-> |
  \barNumberCheck #278 \ottava #1 <gis d' gis>2->\ff <gis d' e gis>4-> |
  \barNumberCheck #279 a'8*2/3(\sfp cis, fis e a, d cis e, b') |
  \barNumberCheck #280 \ottava #0 a( cis, fis e a,-\markup{\italic "cresc."} d cis e, b') |
  \barNumberCheck #281 a( cis, fis e a, d cis e, b') \clef bass |
  \barNumberCheck #282 a( cis, fis e a, d cis e, b') |
  \barNumberCheck #283 a( cis e \clef treble a cis e a cis e |
  \barNumberCheck #284 a e cis a cis e a cis e) |
  \barNumberCheck #285 a4-. r r |
  \barNumberCheck #286 \ottava #1 <b, e gis b>-.\sff r r |
  \barNumberCheck #287 <cis e a cis>-. \ottava #0 r r\fermata \fine |
  \barNumberCheck #288
} % }}}

mvt_a_piano_rh_b = \new Voice \relative c' { % {{{
  \barNumberCheck #1 s2.*20 |
  \barNumberCheck #21 s2 \voiceTwo <a' cis a'>4-> ~ |
  \barNumberCheck #22 <a a'>( <gis gis'> \oneVoice <fis dis' fis>) |
  \barNumberCheck #23 s2. |
  \mark \default % A
  \barNumberCheck #24 s2.*24 |
  \barNumberCheck #48 \voiceTwo \after 2 \! g,=2.\> \oneVoice |
  \barNumberCheck #49 s2. |
  \barNumberCheck #50 \change Staff = "mvt_a_piano_lh" \voiceThree g2. \change Staff = "mvt_a_piano_rh" \oneVoice |
  \barNumberCheck #51 s2. |
  \barNumberCheck #52 \voiceTwo r8 e4\> d c8\! \oneVoice |
  \barNumberCheck #53 s2.*16 |
  \mark \default % B
  \barNumberCheck #69 s2.*26 |
  \barNumberCheck #95 \voiceTwo gis''8*2/3_\p e b s4 s |
  \barNumberCheck #96 s2.*13 |
  % VOLTA
  \barNumberCheck #109 s2.*11 |
  \barNumberCheck #120 \voiceTwo ees''8\f s c s a s |
  \barNumberCheck #121 ges s ees s c s |
  \barNumberCheck #122 \after 8 -\markup{\italic "dim."} a s ges s ees s |
  \barNumberCheck #123 c\p r \oneVoice s2 |
  \barNumberCheck #124 s2.*6 |
  \barNumberCheck #130 \voiceTwo aes'''8\ff s f s d s |
  \barNumberCheck #131 b s aes s f s |
  \barNumberCheck #132 d s b-\markup{\italic "dim."} s aes s |
  \barNumberCheck #133 f2.\p |
  \barNumberCheck #134 \oneVoice s2.*3 |
  \mark \default % C
  \barNumberCheck #137 s2.*42 |
  \mark \default % D
  \barNumberCheck #179 \change Staff = "mvt_a_piano_lh" \voiceOne \crossStaff e,4 \crossStaff <cis a'> \crossStaff <d b'> |
  \barNumberCheck #180 \crossStaff e2 \change Staff = "mvt_a_piano_rh" \oneVoice s4 |
  \barNumberCheck #181 s2.*13 |
  \barNumberCheck #194 \change Staff = "mvt_a_piano_lh" \voiceOne \autoBeamOff \crossStaff <gis b>8 s \crossStaff <fis a> s \crossStaff <eis gis> \autoBeamOn s
  \barNumberCheck #195 fis2 \change Staff = "mvt_a_piano_rh" \oneVoice s4 |
  \barNumberCheck #196 s2.*9 |
  \mark \default % E
  \barNumberCheck #205 s2.*12 |
  \barNumberCheck #217 \voiceTwo e''4\pp c e |
  \barNumberCheck #218 d c b |
  \barNumberCheck #219 f'8[( a, d f, f' a,] |
  \barNumberCheck #220 d[ f, f' a, d f,)] |
  \barNumberCheck #221 e'4-\markup{\italic "sempre" \dynamic pp} c e |
  \barNumberCheck #222 d c b |
  \barNumberCheck #223 \oneVoice s2.*18 |
  \mark \default % F
  \barNumberCheck #241 s2.*31 |
  \barNumberCheck #272 \voiceTwo f''8-. s d-. s b-. s |
  \barNumberCheck #273 gis-. s f-. s d-. s |
  \barNumberCheck #274 b-. s gis-. s f-. s |
  \barNumberCheck #275 d-. s \oneVoice s2 |
  \barNumberCheck #276 s2.*12 \fine |
  \barNumberCheck #288
} % }}}

mvt_a_piano_lh_a = \new Voice \relative c { % {{{
  \clef bass
  \barNumberCheck #1 \voiceOne \crossStaff e4 \crossStaff <cis a'> \crossStaff <d b'> |
  \barNumberCheck #2 \crossStaff e2 \oneVoice s4 |
  \barNumberCheck #3 s2.*2 |
  \barNumberCheck #5 \voiceOne \crossStaff <gis b>2. |
  \barNumberCheck #6 \crossStaff a4 \oneVoice s2 |
  \barNumberCheck #7 s2.*5 |
  \barNumberCheck #12 \voiceOne e,2( a4) \oneVoice |
  \barNumberCheck #13 s2.*3 |
  \barNumberCheck #16 \voiceOne \crossStaff a'4 \crossStaff a \crossStaff a |
  \barNumberCheck #17 \crossStaff a \oneVoice s2 |
  \barNumberCheck #18 s2.*4 |
  \barNumberCheck #22 \voiceOne c,4 b a |
  \barNumberCheck #23 gis2 \oneVoice s4 |
  \mark \default % A
  \barNumberCheck #24 s2.*20 |
  \barNumberCheck #44 \voiceOne g8 g4 g g8 \oneVoice |
  \barNumberCheck #45 s2.*3 |
  \barNumberCheck #48 \voiceOne g8 g4 g g8 \oneVoice |
  \barNumberCheck #49 s2 \voiceOne \crossStaff g'4 |
  \barNumberCheck #50 g,8 g4 g g8 |
  \barNumberCheck #51 <g' b>4 \crossStaff q4. \crossStaff q8 |
  \barNumberCheck #52 g,2 \oneVoice s4 |
  \barNumberCheck #53 s2.*5 |
  \barNumberCheck #58 \voiceOne r4 e'2 |
  \barNumberCheck #59 r4 e2 |
  \barNumberCheck #60 r4 e2 |
  \barNumberCheck #61 r4 e2 |
  \barNumberCheck #62 r4 <e, c'>2 |
  \barNumberCheck #63 r4 q2 |
  \barNumberCheck #64 r4 q2 |
  \barNumberCheck #65 \oneVoice s2.*4 |
  \mark \default % B
  \barNumberCheck #69 s2.*40 |
  % VOLTA
  \barNumberCheck #109 s2.*28 |
  \mark \default % C
  \barNumberCheck #137 \voiceOne c8( fis c g' c, aes' |
  \barNumberCheck #138 c, a' c, bes' c, b') |
  \barNumberCheck #139 c,( c' c, b' c, bes' |
  \barNumberCheck #140 c, a' c, aes' c, g')  |
  \barNumberCheck #141 \oneVoice s2.*38
  \mark \default % D
  \barNumberCheck #179 s2.*13 |
  \barNumberCheck #192 \voiceOne d'8[-. cis-. b-. cis-. d-. cis-.] |
  \barNumberCheck #193 d[-. cis-. d-. cis-. d-. cis-.] |
  \barNumberCheck #194 s2. |
  \barNumberCheck #195 \voiceThree a'4( \voiceOne ais2) \oneVoice |
  \barNumberCheck #196 s2.*9 |
  \mark \default % E
  \barNumberCheck #205 s2.*26 |
  \barNumberCheck #231 \voiceOne <cis, e>4 <a cis> <cis e> |
  \barNumberCheck #232 <b d> <a cis> <gis b> |
  \barNumberCheck #233 \oneVoice s2.*8 |
  \mark \default % F
  \barNumberCheck #241 s2.*7 |
  \barNumberCheck #248 s8 \voiceOne \autoBeamOff \crossStaff { gis' fis e d cis } \autoBeamOn \oneVoice |
  \barNumberCheck #249 s2.*39 \fine |
  \barNumberCheck #288
} % }}}

mvt_a_piano_lh_b = \new Voice \relative c { % {{{
  \barNumberCheck #1 \voiceTwo r16 e,( a, e' a e a, e' b' e, a, e') |
  \barNumberCheck #2 cis'( e, a, e' a, e' a, e' \oneVoice a, e' a, e') |
  \barNumberCheck #3 r e( d e d e d e d e d e) |
  \barNumberCheck #4 cis( e cis e cis e cis e a, e' a, e') \voiceTwo |
  \barNumberCheck #5 d( e d e d e d e d e d e) |
  \barNumberCheck #6 cis( e cis e cis e cis e) ~ \oneVoice <a, e'>4 ~ |
  \barNumberCheck #7 <gis e'>2 <a e'>4 ~ |
  \barNumberCheck #8 <d e>2 <cis e>4 |
  \barNumberCheck #9 e\sustainOn gis'16( b gis e) b8-. r\sustainOff |
  \barNumberCheck #10 e,4\sustainOn a'16( b a fis) b,8-. r\sustainOff |
  \barNumberCheck #11 e,4\sustainOn gis'16( b gis e) b8-. r\sustainOff |
  \barNumberCheck #12 \voiceTwo a,2. \oneVoice |
  \barNumberCheck #13 d4\sustainOn fis'16( a fis d) a8-. r\sustainOff |
  \barNumberCheck #14 d,4\sustainOn g'16( a g e) a,8-. r\sustainOff |
  \barNumberCheck #15 d,4\sustainOn fis'16( a fis d) a8-. r\sustainOff |
  \barNumberCheck #16 \voiceTwo <b, b'>4-. q-. q-. |
  \barNumberCheck #17 <c c'>-. r r |
  \barNumberCheck #18 q-. q-. q-. |
  \barNumberCheck #19 <f c'>-. \oneVoice r r |
  \barNumberCheck #20 <b, b'>-. q-. q-. |
  \barNumberCheck #21 <e e'>4-. r <e a> ~ \voiceTwo |
  \barNumberCheck #22 e2 e4 ~ |
  \barNumberCheck #23 e2 \oneVoice <e e'>4 |
  \mark \default % A
  \barNumberCheck #24 a,16_5(\sustainOn e'_2 a_1 e'_2 a e a,\sustainOff e' b' e, a, e') |
  \barNumberCheck #25 cis'(\sustainOn e, a, e' a, e' a, e' a, e' a, e')\sustainOff |
  \barNumberCheck #26 d( e d e d e d e d e d e) |
  \barNumberCheck #27 cis( e cis e cis'4-.) cis,16( e d cis |
  \barNumberCheck #28 b d b d b'4-.) b,16( d cis b |
  \barNumberCheck #29 a cis a cis a'4-.) a,16( cis b a |
  \barNumberCheck #30 g bes g bes g'4-.) g,16( bes a g |
  \barNumberCheck #31 fis a fis a) fis'4-. fis,16( a g fis) |
  \barNumberCheck #32 f( a f a f'4-.) f,16( a g f |
  \barNumberCheck #33 e4-.) <b' gis'>-. e,-. |
  \barNumberCheck #34 <b' a'>-. e,-. <b' a'>-. |
  \barNumberCheck #35 e,-. <b' gis'>-. e,-. |
  \barNumberCheck #36 <b' a'>-. e,-. <b' a'>-. |
  \barNumberCheck #37 e,-. <b' gis'>-. e,-. |
  \barNumberCheck #38 <f a f'>2.( |
  \barNumberCheck #39 <e b' e>2) r4 |
  \barNumberCheck #40 <f a f'>2.( |
  \barNumberCheck #41 <e b' e>) |
  \barNumberCheck #42 <f g f'> |
  \barNumberCheck #43 <e g e'>2 ~ q8 <e g> |
  \barNumberCheck #44 \voiceTwo b2. |
  \barNumberCheck #45 \oneVoice <c g'> |
  \barNumberCheck #46 <f g> |
  \barNumberCheck #47 <e g> |
  \barNumberCheck #48 \voiceTwo b2. |
  \barNumberCheck #49 \oneVoice <c g'> |
  \barNumberCheck #50 \voiceTwo a4 b c |
  \barNumberCheck #51 <g g'>2. |
  \barNumberCheck #52 c4 g \oneVoice <a a'> |
  \barNumberCheck #53 <b b'>2. |
  \barNumberCheck #54 <e' g c>2.(\sf\> |
  \barNumberCheck #55 <dis fis b>)\! |
  \barNumberCheck #56 r |
  \barNumberCheck #57 r8 b,[-. dis-. fis-. ais( b)] |
  \barNumberCheck #58 \voiceTwo c2. |
  \barNumberCheck #59 c |
  \barNumberCheck #60 c |
  \barNumberCheck #61 c |
  \barNumberCheck #62 c, |
  \barNumberCheck #63 c |
  \barNumberCheck #64 c |
  \barNumberCheck #65 \oneVoice r4 r ais(\< |
  \barNumberCheck #66 b c) r |
  \barNumberCheck #67 c( cis) r |
  \barNumberCheck #68 d( dis)\! r |
  \mark \default % B
  \barNumberCheck #69 <e, e'>2. ~ |
  \barNumberCheck #70 q |
  \barNumberCheck #71 q ~ |
  \barNumberCheck #72 q |
  \barNumberCheck #73 q |
  \barNumberCheck #74 <dis dis'> ~ |
  \barNumberCheck #75 q |
  \barNumberCheck #76 dis'''8*2/3( cis ais dis b gis dis' ais fisis) |
  \barNumberCheck #77 dis'( b gis dis gis b dis b gis) |
  \barNumberCheck #78 b( gis e dis e gis b gis e) |
  \barNumberCheck #79 cis'( a e dis e a c a e) |
  \barNumberCheck #80 a-^ dis, b fisis'-^ dis b a'-^ dis, b |
  \barNumberCheck #81 <e gis>2-\sustainOn \after 16*3 \sustainOff r4 |
  \barNumberCheck #82 r2. |
  \barNumberCheck #83 <e,, e'>2. ~ |
  \barNumberCheck #84 q |
  \barNumberCheck #85 q ~ |
  \barNumberCheck #86 q |
  \barNumberCheck #87 <dis dis'> ~ |
  \barNumberCheck #88 q |
  \barNumberCheck #89 <d d'> ~ |
  \barNumberCheck #90 q4 <d' d'>-> q-> |
  \barNumberCheck #91 d''8*2/3( b d, b' g d d' b d, |
  \barNumberCheck #92 c' a d, b' g d a' fis dis) |
  \barNumberCheck #93 e,2\sustainOn ~ \after 16*3 \sustainOff <e, e'>4 |
  \barNumberCheck #94 <fis fis'> <gis gis'> <a a'> |
  \barNumberCheck #95 <b b'> gis''8*2/3( e b b' gis b, |
  \barNumberCheck #96 a' fis b, gis' e b fis' dis b) |
  \barNumberCheck #97 e,4-. <b' gis'>-. e,-. |
  \barNumberCheck #98 <b' a'>-. e,-. <b' a'>-. |
  \barNumberCheck #99 e,-. b-. e-. |
  \barNumberCheck #100 b-. e-. b-. |
  \barNumberCheck #101 e-.\sustainOn <b' gis'>-. \after 8 \sustainOff e,-. |
  \barNumberCheck #102 <b' a'>-.\sustainOn e,-. \after 8 \sustainOff <b' a'>-. |
  \barNumberCheck #103 e,-. b-. e-. |
  \barNumberCheck #104 b-. e-. b-. |
  \barNumberCheck #105 <e, e'>2. |
  \barNumberCheck #106 r |
  \barNumberCheck #107 r |
  \barNumberCheck #108 e'\sf |
  % VOLTA
  \barNumberCheck #109 <a e' g>2. ~ |
  \barNumberCheck #110 q2 r4 |
  \barNumberCheck #111 r2. |
  \barNumberCheck #112 r2. |
  \barNumberCheck #113 r8 a'[( b c d ees)] |
  \barNumberCheck #114 r ees([ d c b a)] |
  \barNumberCheck #115 r ees'([ d c bes a)] |
  \barNumberCheck #116 r c([ bes a g f)] |
  \barNumberCheck #117 bes,,16( f' bes, f' bes, f' bes, f' bes, f' bes, f' |
  \barNumberCheck #118 bes, f' bes, f' bes, f' bes, f' bes, f' bes, f') ~ |
  \barNumberCheck #119 <f, f'>2.\sustainOn |
  \barNumberCheck #120 s2. |
  \barNumberCheck #121 s |
  \barNumberCheck #122 \after 16*11 \sustainOff s2. |
  \barNumberCheck #123 s4 r r |
  \barNumberCheck #124 f'2. ~ |
  \barNumberCheck #125 f |
  \barNumberCheck #126 f, |
  \barNumberCheck #127 g16( <d' g> g, q g q g q g q g q) |
  \barNumberCheck #128 g( q g q g q g q g q g q) |
  \barNumberCheck #129 <g g'>2.\sustainOn |
  \barNumberCheck #130 s2. |
  \barNumberCheck #131 s2. |
  \barNumberCheck #132 s2. |
  \barNumberCheck #133 \after 16*11 \sustainOff s2. |
  \barNumberCheck #134 <g g'>2. ~ |
  \barNumberCheck #135 q |
  \barNumberCheck #136 q |
  \mark \default % C
  \barNumberCheck #137 \voiceTwo s8 fis'4 g aes8 |
  \barNumberCheck #138 s8\< a4 bes b8\! |
  \barNumberCheck #139 s8 c4\> b bes8\! |
  \barNumberCheck #140 s8 a4 aes g8 |
  \barNumberCheck #141 \oneVoice c16( g c, g' c g c, g' c g c, g' |
  \barNumberCheck #142 c g c, g' c g c, g' c g c, g') |
  \barNumberCheck #143 d'( g, d g d' g, d g d' g, d g |
  \barNumberCheck #144 d' gis, d gis d' gis, d gis d' gis, d gis) |
  \barNumberCheck #145 d'( a d, a' d a d, a' d a d, a' |
  \barNumberCheck #146 d a d, a' d a d, a' d a d, a') |
  \barNumberCheck #147 e'( a, e a e' a, e a e' a, e a |
  \barNumberCheck #148 e' ais, e ais e' ais, e ais e' ais, e ais) |
  \barNumberCheck #149 e'( b e, b' e b e, b' e b e, b' |
  \barNumberCheck #150 e b e, b' e b e, b' e b e, b') |
  \barNumberCheck #151 f2.\sustainOn |
  \barNumberCheck #152 \voiceTwo dis'16( a' dis, b) \voiceOne dis( a' dis, b) \oneVoice <f, f'>4(\sf\sustainOff |
  \barNumberCheck #153 <e e'>2.) ~ |
  \barNumberCheck #154 q4 e' <e, e'> |
  \barNumberCheck #155 <f f'>2.\sustainOn |
  \barNumberCheck #156 \after 16*7 \sustainOff s2 f'4-> ~ |
  \barNumberCheck #157 f8[ r f,-. r f'-.] r |
  \barNumberCheck #158 f, r r4 r |
  \barNumberCheck #159 <f' ees'>8-.[ r <f d'>-. r <f c'>-.] r |
  \barNumberCheck #160 <f bes>-. r r4 r |
  \barNumberCheck #161 <e b'>8-.[ r e'-. r <e, b'>-.] r |
  \barNumberCheck #162 <e e'>-. r r4 r |
  \barNumberCheck #163 q8-.[ r <e, e'>-. r <e' e'>-.] r |
  \barNumberCheck #164 <e, e'>-. r r4 r |
  \barNumberCheck #165 e'8-.[ r e,-. r e'-.] r |
  \barNumberCheck #166 e,-. r r4 r |
  \barNumberCheck #167 f'8[ r e r d] r |
  \barNumberCheck #168 <f f'>[ r <e e'> r <d d'>] r |
  \barNumberCheck #169 <f bes f'>4-> q-> q-> |
  \barNumberCheck #170 <f, f'>-> q-> q-> |
  \barNumberCheck #171 <e e'>\sustainOn <e'' gis b d>2 |
  \barNumberCheck #172 e,4 q2 |
  \barNumberCheck #173 e4 <gis' b d>2 |
  \barNumberCheck #174 e,4 \after 16*6 \sustainOff q2 |
  \barNumberCheck #175 e8-. r d''4( b |
  \barNumberCheck #176 gis) b( gis |
  \barNumberCheck #177 f) gis( f |
  \barNumberCheck #178 d) f <d gis> |
  \mark \default % D
  \barNumberCheck #179 \voiceTwo a16( e a, e' a e a, e' b' e, a, e') |
  \barNumberCheck #180 cis'( e, a, e' \oneVoice a, e' a, e' a, e' a, e') |
  \barNumberCheck #181 d( e d e d e d e d e d e) |
  \barNumberCheck #182 cis( e cis e cis e cis e) r4 |
  \barNumberCheck #183 e16( fis e fis e fis e fis e fis e fis) |
  \barNumberCheck #184 d( fis d fis d fis d fis b, fis' b, fis') ~ |
  \barNumberCheck #185 <fis, fis'>2. |
  \barNumberCheck #186 <a a'> |
  \barNumberCheck #187 <d, d'>4-. r r |
  \barNumberCheck #188 <d' a'>2.( |
  \barNumberCheck #189 d,4-.) r r |
  \barNumberCheck #190 <d' a'>2.( |
  \barNumberCheck #191 d,4-.) r r8 d''-. |
  \barNumberCheck #192 \voiceTwo eis,2. |
  \barNumberCheck #193 fis |
  \barNumberCheck #194 r8 cis'-.[ r cis-. r cis-.] |
  \barNumberCheck #195 fis,-.[ cis'-. fis,-. cis'-. fis,-. cis'-.] |
  \barNumberCheck #196 \oneVoice eis,([\sustainOn cis' b'-> cis, eis, cis')]\sustainOff |
  \barNumberCheck #197 fis,([\sustainOn cis' ais'-> cis, fis, cis')]\sustainOff |
  \barNumberCheck #198 b'([ gis ais fis gis) cis,(] |
  \barNumberCheck #199 d2-> cis4) |
  \barNumberCheck #200 b'8([ gis ais fis gis) cis,(] |
  \barNumberCheck #201 d2-> cis4) |
  \barNumberCheck #202 <c fis a>2. |
  \barNumberCheck #203 <b gis'> |
  \barNumberCheck #204 <e, b' e>4-^ <e a e'>-^ <e gis e'>-^ |
  \mark \default % E
  \barNumberCheck #205 \voiceTwo <a, e' a>2. ~ |
  \barNumberCheck #206 q |
  \barNumberCheck #207 q ~ |
  \barNumberCheck #208 q |
  \barNumberCheck #209 q ~ |
  \barNumberCheck #210 q |
  \barNumberCheck #211 <gis gis'> ~ |
  \barNumberCheck #212 q |
  \barNumberCheck #213 \after 8*5 \sustainOff <g g'>\sustainOn ~ |
  \barNumberCheck #214 q4 <g' g'>-> q-> |
  \barNumberCheck #215 q2.-> |
  \barNumberCheck #216 <g' f'>4( <c e> <g d'>) \clef treble |
  \barNumberCheck #217 g'8*2/3( e g, e' c g g' e g, |
  \barNumberCheck #218 f' d g, e' c g d' b g) |
  \barNumberCheck #219 a'(\sustainOn f g, f' d g, a' f g, |
  \barNumberCheck #220 f' d g, a' f g, f' d g,)\sustainOff |
  \barNumberCheck #221 g'( e g, e' c g g' e g, |
  \barNumberCheck #222 f' d g, e' c g d' b g) |
  \barNumberCheck #223 f'( aes, g d' aes g f' aes, g |
  \barNumberCheck #224 d' aes g f' aes, g d' aes g) \clef bass |
  \barNumberCheck #225 g( e g, e' c g g' e g, |
  \barNumberCheck #226 f' d g, e' c g d' b gis) |
  \barNumberCheck #227 e'8([ e, f-> e)] e'([ e, |
  \barNumberCheck #228 f-> e)] e'([ e, f-> e)] |
  \barNumberCheck #229 e'([ e, f-> e)] e'([ e, |
  \barNumberCheck #230 f-> e)] e'([ e, f-> e)] |
  \barNumberCheck #231 \voiceTwo e2 e4 |
  \barNumberCheck #232 e2 e4 |
  \barNumberCheck #233 \oneVoice <e e'> <cis cis'> <e e'> |
  \barNumberCheck #234 <d d'> <cis cis'> <b b'> |
  \barNumberCheck #235 <a a'>8-.[ <gis gis'>-. <a a'>-. <b b'>-. <cis cis'>-. <d d'>-.] |
  \barNumberCheck #236 <e e'>-.[ <fis fis'>-. <gis gis'>-. <a a'>-. <b b'>-. <cis cis'>-.] |
  \barNumberCheck #237 <d d'>4-.\sustainOn <d, fis a d>2-> ~ |
  \barNumberCheck #238 q4 q-> q-> |
  \barNumberCheck #239 <d a' d fis>4 r\sustainOff r |
  \barNumberCheck #240 r2. |
  \mark \default % F
  \barNumberCheck #241 <ees' a c>4( f2) |
  \barNumberCheck #242 <d bes' d>4( f2) |
  \barNumberCheck #243 <a,, a'>4( f'2) |
  \barNumberCheck #244 <bes, bes'>4( f'2) |
  \barNumberCheck #245 <gis, gis'>4( e' q) |
  \barNumberCheck #246 <a, a'>( e' q) |
  \barNumberCheck #247 <eis, eis'>( cis' q) |
  \barNumberCheck #248 \voiceTwo <fis, fis'>( cis' q) |
  \barNumberCheck #249 gis8*2/3(\sustainOn gis' dis gis, gis' dis gis, gis' dis)\sustainOff |
  \barNumberCheck #250 gis,(\sustainOn gis' eis gis, gis' eis gis, gis' eis)\sustainOff |
  \barNumberCheck #251 \oneVoice bis( bis' gis bis, bis' gis bis, bis' gis) |
  \barNumberCheck #252 cis,( cis' gis cis, cis' gis cis, cis' gis) |
  \barNumberCheck #253 dis( dis' gis, dis dis' gis, dis dis' gis,) |
  \barNumberCheck #254 eis( eis' gis, eis eis' gis, eis eis' gis,) |
  \barNumberCheck #255 bis,( bis' gis bis, bis' gis bis, bis' gis) |
  \barNumberCheck #256 cis,( cis' a cis, cis' a cis, cis' a) |
  \barNumberCheck #257 <d fis b>4-. <d, fis b>-. <d' f b>-. |
  \barNumberCheck #258 <e, a cis>-. <e' a cis>-. <e, a cis>-. |
  \barNumberCheck #259 e'8[( d)] e[( cis]) e[( b]) |
  \barNumberCheck #260 e[( cis]) \voiceTwo a[( e]) cis[( a]) |
  \barNumberCheck #261 \oneVoice r4 <d' f bes>-. r |
  \barNumberCheck #262 <e a cis>-. r <e, a cis>-. |
  \barNumberCheck #263 r <e a c>-. r |
  \barNumberCheck #264 <e gis b>-. r q-. |
  \barNumberCheck #265 a16( e a, e' a e a, e' a e a, e' |
  \barNumberCheck #266 a e a, e' a e a, e' a e a, e') |
  \barNumberCheck #267 \after 16*11 \sustainOff <e d'>2.(\sustainOn |
  \barNumberCheck #268 <a cis>4) r q |
  \barNumberCheck #269 \after 16*11 \sustainOff <e d'>2.(\sustainOn |
  \barNumberCheck #270 <a cis>4) r <a cis e> |
  \barNumberCheck #271 <e gis d'>2.\sustainOn |
  \barNumberCheck #272 s2.*3 |
  \barNumberCheck #275 s8\sustainOff r <e b' e>2\sustainOn |
  \barNumberCheck #276 q q4-> ~ |
  \barNumberCheck #277 q q2-> |
  \barNumberCheck #278 q-> q4->\sustainOff |
  \barNumberCheck #279 <a, a'>8[(\sustainOn e' a, e' a, e'] |
  \barNumberCheck #280 a,[ e' a, e' a, e'])\sustainOff |
  \barNumberCheck #281 a,[( e' a, e' a, e'] |
  \barNumberCheck #282 a,[ e' a, e' a, e']) |
  \barNumberCheck #283 a,8*2/3(\sustainOn cis e a cis e a cis e |
  \barNumberCheck #284 a e cis a e cis a e cis) |
  \barNumberCheck #285 a4-.\sustainOff r r |
  \barNumberCheck #286 <e' e'>-. r r |
  \barNumberCheck #287 <a, a'>-. r r\fermata \fine |
  \barNumberCheck #288
} % }}}

mvt_a = << % {{{
  \tag #'violin
  \new Staff \with {
    \magnifyStaff #5/7
    instrumentName = "Violin"
    shortInstrumentName = "V."
    midiInstrument = "violin"
  } <<
    \mvt_a_canvas
    \tag #'violin_tempi \mvt_a_tempi
    \mvt_a_violin
  >>

  \tag #'cello
  \new Staff \with {
    \magnifyStaff #5/7
    instrumentName = "Cello"
    shortInstrumentName = "C."
    midiInstrument = "cello"
  } <<
    \mvt_a_canvas
    \tag #'cello_tempi \mvt_a_tempi
    \mvt_a_cello
  >>

  \tag #'piano
  \new PianoStaff \with {
    instrumentName = "Piano"
    shortInstrumentName = "P."
    midiInstrument = "acoustic grand"
  } <<
    \new Staff = "mvt_a_piano_rh" \with {
      #(scale-props 'magnifyStaff 5/7 #t '((BarLine thick-thickness) (BarLine hair-thickness) (BarLine kern)))
    } <<
      \mvt_a_canvas
      \tag #'piano_tempi \mvt_a_tempi
      \new Voice = "mvt_a_piano_rh_a" { \voiceOne \mvt_a_piano_rh_a }
      \new Voice = "mvt_a_piano_rh_b" { \voiceTwo \mvt_a_piano_rh_b }
    >>
    \new Staff = "mvt_a_piano_lh" \with {
      #(scale-props 'magnifyStaff 5/7 #t '((BarLine thick-thickness) (BarLine hair-thickness) (BarLine kern)))
    } <<
      \mvt_a_canvas
      \new Voice = "mvt_a_piano_lh_a" { \voiceOne \mvt_a_piano_lh_a }
      \new Voice = "mvt_a_piano_lh_b" { \voiceTwo \mvt_a_piano_lh_b }
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

