mvt_b_canvas = { % {{{
  \key a \minor
  \time 2/4
  \tempo "Andantino espressivo" 4 = 84
  \partial 8 s8 |
  % grouping by units of 4 quavers (for all instruments). To be applied after some music started
  \set Score.baseMoment = #(ly:make-moment 1/8)
  \set Score.beatStructure = 4,4
  \barNumberCheck #1 s2*32 |
  \mark #7 % G
  \barNumberCheck #33 s2*42 |
  \mark \default % H
  \barNumberCheck #75 s2*56 \key a \major \section |
  \set Score.rehearsalMarkFormatter = #format-mark-alphabet % USE LETTER I
  \mark \default % I
  \barNumberCheck #131 s2*21 \key a \minor \section |
  \barNumberCheck #152 s2*31 \fine
  \barNumberCheck #183
} % }}}

mvt_b_tempi = \new Voice \relative c' { % {{{
  \time 2/4
  \partial 8 s8 |
  \barNumberCheck #1 s2*71 |
  \barNumberCheck #72 s2*3^\markup{\italic "ritenuto"}
  \barNumberCheck #75 s2*55^\markup{\italic "a tempo"} |
  \barNumberCheck #130 s2^\markup{\italic "rit."} \section |
  \barNumberCheck #131 s2*18^\markup{\italic "a tempo"} |
  \barNumberCheck #149 s2*3^\markup{\italic "rit."} \section |
  \barNumberCheck #152 s2*27^\markup{\italic "a tempo"} |
  \barNumberCheck #179 \tempo "Adagio" s2*4 \fine
  \barNumberCheck #183
} % }}}

mvt_b_violin = \new Voice \relative c' { % {{{
  \clef treble r8 |
  \barNumberCheck #1 R2*8 |
  \barNumberCheck #9 r8 g(\< c e)\! |
  \barNumberCheck #10 d2->\f |
  \barNumberCheck #11 d-> |
  \barNumberCheck #12 cis4.( d16 e) |
  \barNumberCheck #13 f2 ~ |
  \barNumberCheck #14 f8 r f4(\< |
  \barNumberCheck #15 g a)\! |
  \barNumberCheck #16 c,2-> |
  \barNumberCheck #17 c-> |
  \barNumberCheck #18 b4.(\< c16 d)\! |
  \barNumberCheck #19 ees2\ff ~ |
  \barNumberCheck #20 ees8 r ees4 ~ |
  \barNumberCheck #21 ees ees( |
  \barNumberCheck #22 \set Voice.subdivideBeams = ##t \set Voice.baseMoment = #(ly:make-moment 1/8) \set Voice.beatStructure = 1,1,2
                      e16.[\p f32 \tuplet 3/2 { e16 d e] } g8 f)
                      \unset Voice.beatStructure \unset Voice.baseMoment \unset Voice.subdivideBeams |
  \barNumberCheck #23 e4( c) |
  \barNumberCheck #24 b4.( a8) |
  \barNumberCheck #25 a2\pp ~ |
  \barNumberCheck #26 a ~ |
  \barNumberCheck #27 a ~ |
  \barNumberCheck #28 a ~ |
  \barNumberCheck #29 a  |
  \barNumberCheck #30 R2*3 |
  \mark \default % G
  \barNumberCheck #33 R2*6 |
  \barNumberCheck #39 bes2\sf ~ |
  \barNumberCheck #40 bes2 ~ |
  \barNumberCheck #41 bes4 r |
  \barNumberCheck #42 r2 |
  \barNumberCheck #43 cis'2(\f  |
  \barNumberCheck #44 b) |
  \barNumberCheck #45 bes8-- d-- c-- bes-- |
  \barNumberCheck #46 a2 ~ |
  \barNumberCheck #47 a8 c( bes a) |
  \barNumberCheck #48 g2\pp( |
  \barNumberCheck #49 a) |
  \barNumberCheck #50 \afterGrace 15/16 b2\startTrillSpan { a16\stopTrillSpan b } |
  \barNumberCheck #51 c2 ~ |
  \barNumberCheck #52 c4 r |
  \barNumberCheck #53 r2 |
  \barNumberCheck #54 a'\(-\markup{\dynamic "p" \italic "dolce"} |
  \barNumberCheck #55 f |
  \barNumberCheck #56 c\) |
  \barNumberCheck #57 d8(\< e f g |
  \barNumberCheck #58 a4.)\! a8(\f |
  \barNumberCheck #59 f'4 c) |
  \barNumberCheck #60 c4.( e16 d |
  \barNumberCheck #61 c4) c(\< |
  \barNumberCheck #62 g'\!\> bes,)\! |
  \barNumberCheck #63 a2 ~ |
  \barNumberCheck #64 a ~ |
  \barNumberCheck #65 a4 a\< ~ |
  \barNumberCheck #66 a bes-- |
  \barNumberCheck #67 cis--\! d-- |
  \barNumberCheck #68 bes'-- g-- |
  \barNumberCheck #69 e2\f ~ |
  \barNumberCheck #70 e |
  \barNumberCheck #71 f |
  \barNumberCheck #72 d,,8(\f e f g) |
  \barNumberCheck #73 a( bes c bes) |
  \barNumberCheck #74 g2( |
  \mark \default % H
  \barNumberCheck #75 f4.) r8 |
  \barNumberCheck #76 R2*2 |
  \barNumberCheck #78 r8 g(\f aes' g) ~ |
  \barNumberCheck #79 g g,( g' f) ~ |
  \barNumberCheck #80 f g,( ees' d)\p |
  \barNumberCheck #81 c r r4 |
  \barNumberCheck #82 r2 |
  \barNumberCheck #83 r4 r8 g,\p( |
  \barNumberCheck #84 c ees g ees) |
  \barNumberCheck #85 fis16->([ d8.] ~ d8 ees) |
  \barNumberCheck #86 fis16->([ d8.] ~ d8 ees) |
  \barNumberCheck #87 c-. r r4 |
  \barNumberCheck #88 r2 |
  \barNumberCheck #89 r4 r8  a(\p |
  \barNumberCheck #90 d f a f) |
  \barNumberCheck #91 d'2 ~ |
  \barNumberCheck #92 d4. r8 |
  \barNumberCheck #93 R2*2 |
  \barNumberCheck #95 r4 r8 g,,(\mf |
  \barNumberCheck #96 c e g e) |
  \barNumberCheck #97 \after 16*7 \! c'2\< ~ |
  \barNumberCheck #98 c4. c'8->\f |
  \barNumberCheck #99 g4.-> \tuplet 3/2 { c16 c c } |
  \barNumberCheck #100 g4. \tuplet 3/2 { c16 c c } |
  \barNumberCheck #101 g4. c8(\p |
  \barNumberCheck #102 g2) |
  \barNumberCheck #103 R2*2 |
  \barNumberCheck #105 c,4.->-\markup{\italic "espress."} c8( |
  \barNumberCheck #106 b4.) b8( |
  \barNumberCheck #107 gis4.) gis8( |
  \barNumberCheck #108 a4) r |
  \barNumberCheck #109 R2*2 |
  \barNumberCheck #111 a2\(\pp ~ |
  \barNumberCheck #112 a4 aes |
  \barNumberCheck #113 g2\)( |
  \barNumberCheck #114 g,) ~ |
  \barNumberCheck #115 g4 r |
  \barNumberCheck #116 r2 |
  \barNumberCheck #117 c'2(\f |
  \barNumberCheck #118 g4. e8) |
  \barNumberCheck #119 d2 |
  \barNumberCheck #120 d-> |
  \barNumberCheck #121 cis4.( d16 e) |
  \barNumberCheck #122 f2 ~ |
  \barNumberCheck #123 f8 r f4(\f |
  \barNumberCheck #124 g\< a\!) |
  \barNumberCheck #125 b,2-> |
  \barNumberCheck #126 c4.-> e8 |
  \barNumberCheck #127 a4\> ~ \tuplet 3/2 { a8 g f\! } |
  \barNumberCheck #128 e2 ~ |
  \barNumberCheck #129 e2 ~ |
  \barNumberCheck #130 e4 r \key a \major \section |
  \mark \default % I
  \barNumberCheck #131 R2*3 |
  \barNumberCheck #134 d'2\(-\markup{\dynamic "p" \italic "dolce"} |
  \barNumberCheck #135 cis |
  \barNumberCheck #136 a\) |
  \barNumberCheck #137 b8( cis d dis |
  \barNumberCheck #138 e4.) e8( |
  \barNumberCheck #139 b'4)\> d,\! |
  \barNumberCheck #140 cis2\f ~ |
  \barNumberCheck #141 cis ~ |
  \barNumberCheck #142 cis4 cis-> ~ |
  \barNumberCheck #143 cis d-> |
  \barNumberCheck #144 eis-> fis-> |
  \barNumberCheck #145 d'-> b-> |
  \barNumberCheck #146 gis2\ff ~ |
  \barNumberCheck #147 gis |
  \barNumberCheck #148 a |
  \barNumberCheck #149 fis,8-> gis-> a-> b-> |
  \barNumberCheck #150 cis-> d-> e-> d-> |
  \barNumberCheck #151 b2-\markup{\italic "dim."} \key a \minor \section |
  \barNumberCheck #152 a8(\p cis e c) |
  \barNumberCheck #153 dis16->([ b8.] ~ b8 dis) |
  \barNumberCheck #154 d16->([ bes8.] ~ bes8 d) |
  \barNumberCheck #155 cis r r4 |
  \barNumberCheck #156 r2 |
  \barNumberCheck #157 r4 r8 gis,( |
  \barNumberCheck #158 a cis e) bis(-\markup{\italic "cresc."} |
  \barNumberCheck #159 cis e g) dis( |
  \barNumberCheck #160 e\< g bes) bes\! |
  \barNumberCheck #161 bes4.(\ff a8) |
  \barNumberCheck #162 g( f e d |
  \barNumberCheck #163 cis) r r4 |
  \barNumberCheck #164 d8->\ff e-> f-> g-> |
  \barNumberCheck #165 a-> bes-> c-> bes-> |
  \barNumberCheck #166 a2->-\markup{\italic "dim."} ~ |
  \barNumberCheck #167 a8\pp b( c d |
  \barNumberCheck #168 e f g f) |
  \barNumberCheck #169 e2 ~ |
  \barNumberCheck #170 e4 r |
  \barNumberCheck #171 R2*5 |
  \barNumberCheck #176 r4 r8 c(\p |
  \barNumberCheck #177 a4) r8 c'->\f |
  \barNumberCheck #178 a4-> r |
  \barNumberCheck #179 r4 r8\pp a,( |
  \barNumberCheck #180 f2 |
  \barNumberCheck #181 e) |
  \barNumberCheck #182 e-\espressivo\fermata \fine
  \barNumberCheck #183
} % }}}

mvt_b_cello = \new Voice \relative c' { % {{{
  \clef bass r8 |
  \barNumberCheck #1 R2*8 |
  \barNumberCheck #9 r8 g(\< e c')\! |
  \barNumberCheck #10 b2->\f |
  \barNumberCheck #11 bes-> |
  \barNumberCheck #12 a4.( b16 cis) |
  \barNumberCheck #13 d2 ~ |
  \barNumberCheck #14 d8 r d4(\< |
  \barNumberCheck #15 e f)\! |
  \barNumberCheck #16 a,2-> |
  \barNumberCheck #17 aes-> |
  \barNumberCheck #18 g4.(\< a16 b)\! |
  \barNumberCheck #19 c2\ff ~ |
  \barNumberCheck #20 c8 r a4(\< |
  \barNumberCheck #21 b c)\! |
  \barNumberCheck #22 \set Voice.subdivideBeams = ##t \set Voice.baseMoment = #(ly:make-moment 1/8) \set Voice.beatStructure = 1,1,2
                      e,16.([\p f32 \tuplet 3/2 { e16 d e] } g8 f)
                      \unset Voice.beatStructure \unset Voice.baseMoment \unset Voice.subdivideBeams |
  \barNumberCheck #23 e4( c) |
  \barNumberCheck #24 b4.( a8) |
  \barNumberCheck #25 a2\pp ~ |
  \barNumberCheck #26 a ~ |
  \barNumberCheck #27 a ~ |
  \barNumberCheck #28 a ~ |
  \barNumberCheck #29 a |
  \barNumberCheck #30 e |
  \barNumberCheck #31 R2*2 %G |
  \mark \default % G
  \barNumberCheck #33 a'2-\markup{\dynamic "p" \italic "dolce"}\( |
  \barNumberCheck #34 f |
  \barNumberCheck #35 c\) |
  \barNumberCheck #36 d8( e\< f g |
  \barNumberCheck #37 a4.)\! a8(\f |
  \barNumberCheck #38 f'4 c) |
  \barNumberCheck #39 c4.->( e16 d |
  \barNumberCheck #40 \after 16*3 \< c4) \after 8 \! c |
  \barNumberCheck #41 g'( bes,) |
  \barNumberCheck #42 a2\< ~ |
  \barNumberCheck #43 a\!\f |
  \barNumberCheck #44 gis |
  \barNumberCheck #45 g8-- bes-- a-- g-- |
  \barNumberCheck #46 f2 |
  \barNumberCheck #47 r8 a( bes c) |
  \barNumberCheck #48 e,2(\pp |
  \barNumberCheck #49 f) ~ |
  \barNumberCheck #50 f8(\< a\! g\> f)\! |
  \barNumberCheck #51 <c, e'>2 ~ |
  \barNumberCheck #52 <c e'>4 r |
  \barNumberCheck #53 c4\pp r |
  \barNumberCheck #54 f2 ~ |
  \barNumberCheck #55 f ~ |
  \barNumberCheck #56 f ~ |
  \barNumberCheck #57 f ~ |
  \barNumberCheck #58 f |
  \barNumberCheck #59 a |
  \barNumberCheck #60 g ~ |
  \barNumberCheck #61 \after 16*7 \< g |
  \barNumberCheck #62 \after 16 \! c,\> \clef tenor |
  \barNumberCheck #63 ees''4.->( g16 f |
  \barNumberCheck #64 ees4) ees( |
  \barNumberCheck #65 c' ees,) |
  \barNumberCheck #66 d2 \clef bass |
  \barNumberCheck #67 a4--\< bes--\! |
  \barNumberCheck #68 <bes, d>2 |
  \barNumberCheck #69 des,(\f |
  \barNumberCheck #70 c) |
  \barNumberCheck #71 b' |
  \barNumberCheck #72 d8->\f e-> f-> g-> |
  \barNumberCheck #73 a-> bes-> c-> bes-> |
  \barNumberCheck #74 g2( |
  \mark \default % H
  \barNumberCheck #75 f4.) r8 |
  \barNumberCheck #76 R2*2 |
  \barNumberCheck #78 \grace { g,16\f } <d' b'>2 |
  \barNumberCheck #79 d' |
  \barNumberCheck #80 g4 r8 g,,\p |
  \barNumberCheck #81 c( ees g ees) |
  \barNumberCheck #82 fis16->([ d8.] ~ d8 ees) |
  \barNumberCheck #83 fis16->([ d8.] ~ d8 ees) |
  \barNumberCheck #84 c8-. r r4 |
  \barNumberCheck #85 r2 |
  \barNumberCheck #86 r4 r8 g'(-\markup{\dynamic "p" \italic "dolce"} |
  \barNumberCheck #87 c e g e) |
  \barNumberCheck #88 a2 ~ |
  \barNumberCheck #89 a4. r8 |
  \barNumberCheck #90 R2*2 |
  \barNumberCheck #92 r4 r8 d,,(\mf |
  \barNumberCheck #93 g b d b) |
  \barNumberCheck #94 g'2\< ~ |
  \barNumberCheck #95 g4.\! r8 |
  \barNumberCheck #96 R2*2 |
  \barNumberCheck #98 r4 r8 c,->\f |
  \barNumberCheck #99 g4.-> \tuplet 3/2 { c16 c c } |
  \barNumberCheck #100 g4. \tuplet 3/2 { c16 c c } |
  \barNumberCheck #101 g4. r8 |
  \barNumberCheck #102 g'4.-\markup{\dynamic "p" \italic "espress."} g8( |
  \barNumberCheck #103 f4.) f8( |
  \barNumberCheck #104 dis4.) dis8( |
  \barNumberCheck #105 e2) |
  \barNumberCheck #106 f2(\espressivo |
  \barNumberCheck #107 e) ~ |
  \barNumberCheck #108 e4 r |
  \barNumberCheck #109 R2*2 |
  \barNumberCheck #111 a,2\(\pp ~ |
  \barNumberCheck #112 a4 aes |
  \barNumberCheck #113 g2\)( |
  \barNumberCheck #114 g,) ~ |
  \barNumberCheck #115 g4 r8 g'(\mf |
  \barNumberCheck #116 c\< e g e)\! \clef tenor |
  \barNumberCheck #117 g8(->\f f4 e8) |
  \barNumberCheck #118 e8(-> d4 c8) |
  \barNumberCheck #119 b2 |
  \barNumberCheck #120 bes-> |
  \barNumberCheck #121 a4.( b16 cis) |
  \barNumberCheck #122 d2 ~ |
  \barNumberCheck #123 d8 r \after 8 \< d4(\f |
  \barNumberCheck #124 e f)\! \clef bass |
  \barNumberCheck #125 gis,2-> |
  \barNumberCheck #126 a-> |
  \barNumberCheck #127 c4\> ~ \tuplet 3/2 { c8 b\! a } |
  \barNumberCheck #128 gis2 ~ |
  \barNumberCheck #129 gis ~ |
  \barNumberCheck #130 gis4 r \key a \major \section |
  \mark \default % I
  \barNumberCheck #131 cis2(-\markup{\dynamic "p" \italic "dolce"} |
  \barNumberCheck #132 a |
  \barNumberCheck #133 e) |
  \barNumberCheck #134 fis8(\< gis a b\! |
  \barNumberCheck #135 \after 8 \! cis4.)\> cis8 |
  \barNumberCheck #136 a'4 \footnote #'(1 . 1) "This note is an A in Kistner 1879 edition" NoteHead e \clef tenor |
  \barNumberCheck #137 e4.( gis16 fis |
  \barNumberCheck #138 e4) e ~ |
  \barNumberCheck #139 e\< fis\! |
  \barNumberCheck #140 g4.(\f b16 a |
  \barNumberCheck #141 g4) g( |
  \barNumberCheck #142 e' g,) |
  \barNumberCheck #143 fis2 |
  \barNumberCheck #144 cis4-> d-> |
  \barNumberCheck #145 ais-> b-> \clef bass |
  \barNumberCheck #146 f,2->\ff |
  \barNumberCheck #147 e-> |
  \barNumberCheck #148 dis-> |
  \barNumberCheck #149 fis'8-> gis-> a-> b-> |
  \barNumberCheck #150 cis-> d-> e-> d-> |
  \barNumberCheck #151 b2 \key a \minor \section |
  \barNumberCheck #152 a\p ~ |
  \barNumberCheck #153 a4 r |
  \barNumberCheck #154 r r8 gis(\p |
  \barNumberCheck #155 a cis e c) |
  \barNumberCheck #156 dis16->([ b8.] ~ b8 dis) |
  \barNumberCheck #157 d16->([ bes8.] ~ bes8 d) |
  \barNumberCheck #158 cis4 r8 gis,(\mf |
  \barNumberCheck #159 a cis e) bis( |
  \barNumberCheck #160 cis\f e g) g\! |
  \barNumberCheck #161 g4.(\ff f8) |
  \barNumberCheck #162 e( d cis bes |
  \barNumberCheck #163 a) r r4 |
  \barNumberCheck #164 d8->\ff e-> f-> g-> |
  \barNumberCheck #165 a-> bes-> c-> bes-> |
  \barNumberCheck #166 a2->-\markup{\italic "dim."} ~ |
  \barNumberCheck #167 a8\pp b( c d |
  \barNumberCheck #168 e f g f) |
  \barNumberCheck #169 e2 ~ |
  \barNumberCheck #170 e4 r |
  \barNumberCheck #171 r2 |
  \barNumberCheck #172 r4 r8 e,(-\markup{\dynamic "p" \italic "dolce"} |
  \barNumberCheck #173 a c e c) |
  \barNumberCheck #174 dis16([ b8.] ~ b8 c) |
  \barNumberCheck #175 d16([ b8.] ~ b8 c) |
  \barNumberCheck #176 a4 r |
  \barNumberCheck #177 r r8 c->\f |
  \barNumberCheck #178 a4-> r |
  \barNumberCheck #179 R2*2 |
  \barNumberCheck #181 <b, gis'>2\pp |
  \barNumberCheck #182 <cis a'>\espressivo\fermata \fine
  \barNumberCheck #183
} % }}}

mvt_b_piano_rh_a = \new Voice \relative c' { % {{{
  \set fingeringOrientations = #'(up left down)
  \clef treble e8(-\markup{\dynamic "p" \italic "dolce"}  |
  \barNumberCheck #1 a c e c) |
  \barNumberCheck #2 dis16->([ b8.] ~ b8 c) |
  \barNumberCheck #3 dis16->([ b8.] ~ b8 c) |
  \barNumberCheck #4 a4. e8( |
  \barNumberCheck #5 a c e\< c) |
  \barNumberCheck #6 e16([ \after 8 \! a8.] ~ a8 g) |
  \barNumberCheck #7 e16[(\pp a8.] ~ a8 g) |
  \barNumberCheck #8 g,( d'4 e8) |
  \barNumberCheck #9 c4. r8 |
  \barNumberCheck #10 r8\f g( g' f) ~ |
  \barNumberCheck #11 f-\markup{\italic "marcato"} g,( f' e) ~ |
  \barNumberCheck #12 e g,( e' d) ~ |
  \barNumberCheck #13 d f,\( d' c |
  \barNumberCheck #14 b\> bes a gis |
  \barNumberCheck #15 g f e\! d\) |
  \barNumberCheck #16 r\f f( f' e) ~ |
  \barNumberCheck #17 e f,( e' d) ~ |
  \barNumberCheck #18 d f,( d' c) ~ |
  \barNumberCheck #19 c ees,( c' b) |
  \barNumberCheck #20 b( a) c( b) |
  \barNumberCheck #21 b( a) g(-\markup{\italic "dim."} f) |
  \barNumberCheck #22 e4.(\p d8)\( |
  \barNumberCheck #23 c4 a ~ |
  \barNumberCheck #24 a8[ b gis]\) e'( |
  \barNumberCheck #25 a\p c e c) |
  \barNumberCheck #26 dis16->([ b8.] ~ b8 c) |
  \barNumberCheck #27 dis16->([ b8.] ~ b8 c) |
  \barNumberCheck #28 a4. e8(\< |
  \barNumberCheck #29 f a c\! a) |
  \barNumberCheck #30 e16([\> g8.] ~ g8\! f) |
  \barNumberCheck #31 \voiceOne e16([ g8.] ~ g8 f) |
  \barNumberCheck #32 e( b4 c8) \voiceOne |
  \mark \default % G
  \barNumberCheck #33 \set PianoStaff.baseMoment = #(ly:make-moment 1/8) \set PianoStaff.beatStructure = 2,2 % group by 4 semi-quavers
                      r16\p f( a c, f a, c \change Staff = "mvt_b_piano_lh" \voiceOne f,) \change Staff = "mvt_b_piano_rh" \voiceOne |
  \barNumberCheck #34 r f'( a c, f a, c \change Staff = "mvt_b_piano_lh" \voiceOne f,) \change Staff = "mvt_b_piano_rh" \voiceOne |
  \barNumberCheck #35 r f'( a c, f a, c \change Staff = "mvt_b_piano_lh" \voiceOne f,) \change Staff = "mvt_b_piano_rh" \voiceOne |
  \barNumberCheck #36 r f'( bes d, f bes, d \change Staff = "mvt_b_piano_lh" \voiceOne f,) \change Staff = "mvt_b_piano_rh" \oneVoice |
  \barNumberCheck #37 r f'( a c, f a, c f,) |
  \barNumberCheck #38 r f'( a c, f a, c f,) |
  \barNumberCheck #39 r f'( bes c, f bes, c f,) |
  \barNumberCheck #40 r f'( bes c, f bes, c f,) |
  \barNumberCheck #41 \change Staff = "mvt_b_piano_lh" \voiceOne e^\mf \change Staff = "mvt_b_piano_rh" \oneVoice e'[( bes' c,] e bes c g) |
  \barNumberCheck #42 r\p e'( a cis, e a, cis e,) |
  \barNumberCheck #43 r\f a'( cis e, a cis, e a,) |
  \barNumberCheck #44 r gis'( b e, gis b, e gis,) |
  \barNumberCheck #45 r e'( bes' c, e bes c e,) \voiceOne |
  \barNumberCheck #46 <c' ees>(^\< \change Staff = "mvt_b_piano_lh" \voiceOne ees,    \change Staff = "mvt_b_piano_rh" \voiceOne
                      <ees' g>     \change Staff = "mvt_b_piano_lh" \voiceOne g,\!    \change Staff = "mvt_b_piano_rh" \voiceOne
                      <d' f>^\>    \change Staff = "mvt_b_piano_lh" \voiceOne f,      \change Staff = "mvt_b_piano_rh" \voiceOne
                      <c' ees>     \change Staff = "mvt_b_piano_lh" \voiceOne ees,)\! \change Staff = "mvt_b_piano_rh" \voiceOne |
  \barNumberCheck #47 <c' d>(      \change Staff = "mvt_b_piano_lh" \voiceOne d,      \change Staff = "mvt_b_piano_rh" \voiceOne
                      <c' d>       \change Staff = "mvt_b_piano_lh" \voiceOne d,      \change Staff = "mvt_b_piano_rh" \voiceOne
                      <bes' d>     \change Staff = "mvt_b_piano_lh" \voiceOne d,      \change Staff = "mvt_b_piano_rh" \voiceOne
                      <a' d>       \change Staff = "mvt_b_piano_lh" \voiceOne d,)     \change Staff = "mvt_b_piano_rh" \oneVoice |
  \barNumberCheck #48 r\pp e'( g c, e \change Staff = "mvt_b_piano_lh" \voiceOne g, c e,) \change Staff = "mvt_b_piano_rh" \oneVoice |
  \barNumberCheck #49 r f'( a c, f a, c f,) |
  \barNumberCheck #50 r f'( b d, f b, d f,) |
  \barNumberCheck #51 \voiceOne r8 bes''4\(^\> g8 ~ |
  \barNumberCheck #52 g\! e4 c8 ~ |
  \barNumberCheck #53 c bes4 g8\) \oneVoice |
  \barNumberCheck #54 r16\pp f'( a c, f a, c f,) |
  \barNumberCheck #55 r f'( a c, f a, c f,) |
  \barNumberCheck #56 r f'( a c, f a, c f,) |
  \barNumberCheck #57 r f'( bes d, f bes, d f,) |
  \barNumberCheck #58 r f'( a c, f a, c f,) |
  \barNumberCheck #59 r\mf f'( a c, f a, c f,) |
  \barNumberCheck #60 r f'( bes c, f bes, c f,) |
  \barNumberCheck #61 r f'( bes c, f bes, c f,) |
  \barNumberCheck #62 r e'( bes' c, e bes c e,) |
  \barNumberCheck #63 r\mf ees'( a c, ees a, c ees,) |
  \barNumberCheck #64 r\mf ees'( a c, ees a, c ees,) |
  \barNumberCheck #65 r\mf ees'( a c, ees a, c ees,) |
  \barNumberCheck #66 r\f d'( g bes, d g, bes d,) |
  \barNumberCheck #67 r cis'( a' a,) r d( bes' bes,) |
  \barNumberCheck #68 r d( fis fis,) r d'( g g,) |
  \barNumberCheck #69 r\ff g'( bes e, g bes, e g,) |
  \barNumberCheck #70 r g'( bes e, g bes, e g,) |
  \barNumberCheck #71 r f'( a d, f a, d f,) |
  \barNumberCheck #72 r d'( d, d' d, d' d, d' |
  \barNumberCheck #73 d, d' d, d' d, d' d, d') |
  \barNumberCheck #74 \voiceOne r c( c, c' c, c' c, c') \oneVoice |
  \mark \default % H
  \barNumberCheck #75 r8\f <c c'>4( <a a'>8) ~ |
  \barNumberCheck #76 q8 q4( <f f'>8) ~ |
  \barNumberCheck #77 q8 q4(-\markup{\italic "dim."} <d d'>8) |
  \barNumberCheck #78 \set Voice.subdivideBeams = ##t \set Voice.baseMoment = #(ly:make-moment 1/8) \set Voice.beatStructure = 1,1,1,1
                      \tuplet 3/2 4 { b'16[\( g d g b cis] d[ b g b d fis] } |
  \barNumberCheck #79 g16*2/3[-\markup{\italic "cresc."} d b d g ais] b[ g d g b cis] |
  \barNumberCheck #80 \ottava #1 d[ b g b d fis] g[ d b d g b]\) |
  \barNumberCheck #81 c8-.\p \ottava #0 r r4 |
  \barNumberCheck #82 r2 |
  \barNumberCheck #83 c,,16*2/3([\pp cis d ees e f] fis[ g aes a bes b] |
  \barNumberCheck #84 c8)-. r r4 |
  \barNumberCheck #85 r2 |
  \barNumberCheck #86 ees,16*2/3([\pp f fis g aes a] bes[ b c cis d ees)] |
  \barNumberCheck #87 \ottava #1 <c e>([-\markup{\italic "sempre" \dynamic "pp"} e, q q e q] q[ e q q e q)] |
  \barNumberCheck #88 <cis' e>([ e, q q e q] q[ e q q e q)] |
  \barNumberCheck #89 <cis' e a>([ a q q\< a q] q[ a q q a q)]\! |
  \barNumberCheck #90 <e' f>([\pp a, q q a q] q[ a q q a q])] |
  \barNumberCheck #91 <a d f>([ f q q f q] q[ f q q f q)] |
  \barNumberCheck #92 <aes c d>([\< f q q f q] q[ f q q f q)]\! |
  \barNumberCheck #93 <aes b d>[(\pp d, q q d q] q[ d q q d q]) |
  \barNumberCheck #94 <b' d>([ g q q g q] q[ g q q g q)] |
  \barNumberCheck #95 <b d g>[( f q q\< f q] q[ f q q f q)]\! |
  \barNumberCheck #96 <g d' e>([\pp e q q e q] q[ e q q e q)] |
  \barNumberCheck #97 <g c e>([ e q q e q] q[ e q q e q)] |
  \barNumberCheck #98 <fis a c>([\< ees q q ees q] q[ ees q q ees q)]\! \ottava #0 |
  \barNumberCheck #99 \unset Voice.subdivideBeams \unset Voice.baseMoment \unset Voice.beatStructure
                      <g, g'>4.->\f \tuplet 3/2 { c'16( c, c') } |
  \barNumberCheck #100 <g, g'>4.-> \tuplet 3/2 { c'16( c, c') } |
  \barNumberCheck #101 <g, g'>4.-> \set doubleSlurs = ##t <c, c'>8(\p |
  \barNumberCheck #102 <g g'>2) ~ |
  \barNumberCheck #103 <g f' g> ~ |
  \barNumberCheck #104 <g dis' g> \set doubleSlurs = ##f |
  \barNumberCheck #105 \tuplet 3/2 { <e' g>8(\p g, <e' g>) q( g,-\markup{\italic "dim."} <e' g>) } |
  \barNumberCheck #106 \tuplet 3/2 { <d f>( f, <d' f>) q( f, <d' f>) } |
  \barNumberCheck #107 \tuplet 3/2 { <d e>( e, <d' e>) q( e, <d' e>) } |
  \barNumberCheck #108 \unset PianoStaff.baseMoment \unset PianoStaff.beatStructure % revert to score default, grouping by 4 quavers
                       <c a'>8\p c' e c |
  \barNumberCheck #109 dis16->([ b8.] ~ b8 c) |
  \barNumberCheck #110 dis16->([ b8.] ~ b8 c) |
  \barNumberCheck #111 a4. e8( |
  \barNumberCheck #112 a c\< e c) |
  \barNumberCheck #113 e16([ a8.]\! ~ a8 g) |
  \barNumberCheck #114 e16([\pp a8.] ~ a8 g) |
  \barNumberCheck #115 g,( d'4 e8) |
  \barNumberCheck #116 c4 <bes, c>\mf |
  \barNumberCheck #117 \voiceOne c2( \oneVoice |
  \barNumberCheck #118 \change Staff = "mvt_b_piano_lh" \voiceOne <f, b>4 <e g>) \change Staff = "mvt_b_piano_rh" \oneVoice |
  \barNumberCheck #119 r8\f g'( g' f) ~ |
  \barNumberCheck #120 f g,( f' e) ~ |
  \barNumberCheck #121 e g,( e' d) ~ |
  \barNumberCheck #122 d f,( d' c) |
  \barNumberCheck #123 b(\< bes a gis |
  \barNumberCheck #124 g[ f] \tuplet 3/2 { e\! d c) } |
  \barNumberCheck #125 r8\ff e(\>\noBeam \tuplet 3/2 { e'8 dis d)\! } |
  \barNumberCheck #126 r8 e,(\>\noBeam \tuplet 3/2 { d'8 cis c)\! } |
  \barNumberCheck #127 r8 e,(\noBeam \tuplet 3/2 { <c a'>8 <b g'> <a f'>) } |
  \barNumberCheck #128 <gis e'>2\f ~ |
  \barNumberCheck #129 q2 |
  \barNumberCheck #130 e2-\markup{\italic "dim."} \key a \major \section |
  \mark \default % I
  \barNumberCheck #131 \set PianoStaff.baseMoment = #(ly:make-moment 1/8) \set PianoStaff.beatStructure = 2,2 % group by 4 semi-quavers
                       r16\pp a'( cis e, a cis, e a,) |
  \barNumberCheck #132 r a'( cis e, a cis, e a,) |
  \barNumberCheck #133 r a'( cis e, a cis, e a,) |
  \barNumberCheck #134 r a'( d fis, a d, fis a,) |
  \barNumberCheck #135 r a'( cis e, a cis, e a,) |
  \barNumberCheck #136 r a'( cis e, a cis, e a,) |
  \barNumberCheck #137 r a'( e' e, a d, e-\markup{\italic "cresc."} b) |
  \barNumberCheck #138 r gis'( e' e, gis d e b) |
  \barNumberCheck #139 r b'( e e, fis d gis b,) |
  \barNumberCheck #140 \set Voice.subdivideBeams = ##t \set Voice.baseMoment = #(ly:make-moment 1/8) \set Voice.beatStructure = 1,1,1,1
                       a'16*2/3\([\f a, a' b b, b'] cis[ cis, cis' d d, d'] |
  \barNumberCheck #141 e[-\markup{\italic "cresc."} e, e' fis fis, fis'] g[ g, g' a a, a'] |
  \barNumberCheck #142 b[ b, b' cis cis, cis'] d[ d, d' e e, e'\)] |
  \barNumberCheck #143 \unset Voice.subdivideBeams \unset Voice.baseMoment \unset Voice.beatStructure
                       eis,16->( cis' eis eis, fis-> d' fis fis,) |
  \barNumberCheck #144 r eis( cis' cis,) r fis( d' d,) |
  \barNumberCheck #145 r d( ais' ais,) r d( b' b,) |
  \barNumberCheck #146 r\ff d( gis b, d gis, b d,) |
  \barNumberCheck #147 r d'( gis b, d gis, b d,) |
  \barNumberCheck #148 r fis'( a cis, fis a, cis fis,) |
  \barNumberCheck #149 \unset PianoStaff.baseMoment \unset PianoStaff.beatStructure % revert to score default, grouping by 4 quavers
                       r4 <a, fis' a> ~ |
  \barNumberCheck #150 q q |
  \barNumberCheck #151 \slurUp <gis gis'>8(^\> fis' e d)\! \slurNeutral \key a \minor \section |
  \barNumberCheck #152 \slurUp cis4-.( \slurNeutral <e c' e>-.) |
  \barNumberCheck #153 <dis b' dis>2-.( |
  \barNumberCheck #154 <d bes' d>-. |
  \barNumberCheck #155 <cis a' cis>4-.) <c e>( |
  \barNumberCheck #156 <b dis>2 |
  \barNumberCheck #157 <bes d> |
  \barNumberCheck #158 <a cis>4) r |
  \barNumberCheck #159 r2 |
  \barNumberCheck #160 r4 \change Staff = "mvt_b_piano_lh" \voiceOne cis32*8/9([\< \change Staff = "mvt_b_piano_rh" \oneVoice e g a] bes cis[ e g a])\! |
  \barNumberCheck #161 \set Voice.subdivideBeams = ##t \set Voice.baseMoment = #(ly:make-moment 1/8) \set Voice.beatStructure = 1,1,1,1
                       <g bes>16*2/3([\ff bes, q q bes q] q[ bes q <f' a> a, q)] |
  \barNumberCheck #162 <e' g>([ g, q <d' f> f, q] <c' e>[ e, q <bes' d> d, q)] |
  \barNumberCheck #163 <a' cis>([ cis, q-\markup{\italic "dim."} <g' bes> bes, q] <f' a>[ a, q <e' g> g, q)] |
  \barNumberCheck #164 \unset Voice.subdivideBeams \unset Voice.baseMoment \unset Voice.beatStructure
                       \voiceOne <d' f>2^\ff |
  \barNumberCheck #165 <c f> |
  \barNumberCheck #166 r8 <c f>4(^\> <c e>8)\! |
  \barNumberCheck #167 <c e>2^\pp |
  \barNumberCheck #168 <c e> \oneVoice |
  \barNumberCheck #169 r8 <gis b gis'>4( <a c a'>8) |
  \barNumberCheck #170 a'8(-\markup{\italic "dolce"} c e c) |
  \barNumberCheck #171 dis16([ b8.] ~ b8 c) |
  \barNumberCheck #172 d16([ b8.] ~ b8 c) |
  \barNumberCheck #173 a8 r e r |
  \barNumberCheck #174 dis r r4 |
  \barNumberCheck #175 d8 r r c(\pp |
  \barNumberCheck #176 a4) r8 <c c'>(\mf |
  \barNumberCheck #177 <a a'>4) r8 \tuplet 3/2 { c''16(\f c, c') } |
  \barNumberCheck #178 <a, a'>4 r8 a,( |
  \barNumberCheck #179 f2) \clef bass |
  \barNumberCheck #180 \once \set PianoStaff.connectArpeggios = ##t <b, f' a b>\arpeggio |
  \barNumberCheck #181 \once \set PianoStaff.connectArpeggios = ##t <b e gis b>\arpeggio |
  \barNumberCheck #182 <cis e a cis>\fermata \fine
  \barNumberCheck #183
} % }}}

mvt_b_piano_rh_b = \new Voice \relative c' { % {{{
  \set fingeringOrientations = #'(up left down)
  s8 |
  \barNumberCheck #1 s2*30 |
  \barNumberCheck #31 \voiceTwo a2
  \barNumberCheck #32 gis \oneVoice |
  \mark \default % G
  \barNumberCheck #33 s2*41
  \barNumberCheck #74 \voiceTwo bes2 \oneVoice |
  \mark \default % H
  \barNumberCheck #75 s2*42 |
  \barNumberCheck #117 \voiceTwo a4 g \oneVoice |
  \barNumberCheck #118 s2*65 \fine
  \barNumberCheck #183
} % }}}

mvt_b_piano_lh_a = \new Voice \relative c { % {{{
  \set fingeringOrientations = #'(up left down)
  \clef bass r8 |
  \barNumberCheck #1 <a e' c'>8-. r <a' c e>-. r |
  \barNumberCheck #2 <a b dis>-. r r4 |
  \barNumberCheck #3 <a b dis>8-. r r4 |
  \barNumberCheck #4 <a c e>8-. r r4 |
  \barNumberCheck #5 <a, e' c'>8-. r <a' c e>-. r |
  \barNumberCheck #6 <g c e>8-. r r4 |
  \barNumberCheck #7 <g c e>8-. r r4 |
  \barNumberCheck #8 <g c f>8-.[ r <g b f'>-.] r |
  \barNumberCheck #9 <c e>4. r8 |
  \barNumberCheck #10 <g,, g'>2 |
  \barNumberCheck #11 g' |
  \barNumberCheck #12 <a, a'> |
  \barNumberCheck #13 d ~ |
  \barNumberCheck #14 d ~ |
  \barNumberCheck #15 <d d'> |
  \barNumberCheck #16 f ~ |
  \barNumberCheck #17 <f, f'> |
  \barNumberCheck #18 <g g'> |
  \barNumberCheck #19 <fis' a fis'> ~ |
  \barNumberCheck #20 <fis a fis'>8 r <f a f'>4 ~ |
  \barNumberCheck #21 <f a f'> <a, a'> |
  \barNumberCheck #22 \voiceOne a''2 ~ |
  \barNumberCheck #23 a8 g f e  |
  \barNumberCheck #24 dis4 e \oneVoice |
  \barNumberCheck #25 <a,, a'>8 r <a'' c e> r |
  \barNumberCheck #26 <f b dis> r r4 |
  \barNumberCheck #27 <f b dis>8 r r4 |
  \barNumberCheck #28 <e c' e>8 r r4 |
  \barNumberCheck #29 <d, c' d>8 r <dis c' dis> r |
  \barNumberCheck #30 <e c' e>8 r r4 |
  \barNumberCheck #31 <c c'>8 r r4 |
  \barNumberCheck #32 <e d' e>8 r r4 |
  \mark \default % G
  \barNumberCheck #33 <f, f'>2 ~ |
  \barNumberCheck #34 <f f'> |
  \barNumberCheck #35 <f' a> |
  \barNumberCheck #36 <f bes d>2 ~ |
  \barNumberCheck #37 <f a c> |
  \barNumberCheck #38 <a c f> |
  \barNumberCheck #39 <g c f> ~ |
  \barNumberCheck #40 <g c f> |
  \barNumberCheck #41 \voiceTwo <c, c'> \oneVoice |
  \barNumberCheck #42 <cis a' cis> |
  \barNumberCheck #43 <cis a' cis> |
  \barNumberCheck #44 <e b' e> |
  \barNumberCheck #45 <c c'> |
  \barNumberCheck #46 <f, f'> |
  \barNumberCheck #47 <fis fis'> |
  \barNumberCheck #48 <g g'> |
  \barNumberCheck #49 g' ~ |
  \barNumberCheck #50 <g, g'> |
  \barNumberCheck #51 \change Staff = "mvt_b_piano_rh" \voiceTwo r16 e'''( g c, e bes c \change Staff = "mvt_b_piano_lh" \oneVoice e,) |
  \barNumberCheck #52 \change Staff = "mvt_b_piano_rh" \voiceTwo r   e'(   g c, e bes c \change Staff = "mvt_b_piano_lh" \oneVoice e,) |
  \barNumberCheck #53 \change Staff = "mvt_b_piano_rh" \voiceTwo r   e'(   g c, e bes c \change Staff = "mvt_b_piano_lh" \oneVoice e,) |
  \barNumberCheck #54 r8.. <c f a>32 q8-.( q8-.) |
  \barNumberCheck #55 r8.. q32 q8-.( q8-.) |
  \barNumberCheck #56 r8.. q32 q8-.( q8-.) |
  \barNumberCheck #57 r8.. <d f bes>32 q8-.( q8-.) |
  \barNumberCheck #58 r8.. <c f a>32 q8-.( q8-.) |
  \barNumberCheck #59 r8.. q32 q8-.( q8-.) |
  \barNumberCheck #60 r8.. <c f bes>32 q8-.( q8-.) |
  \barNumberCheck #61 r8.. q32 q8-.( q8-.) |
  \barNumberCheck #62 r8.. <c e bes'>32 q8-.( q8-.) |
  \barNumberCheck #63 \voiceOne r8.. <c a'>32 q8 q8 |
  \barNumberCheck #64 r8.. <c a'>32 q8 q8 |
  \barNumberCheck #65 r8.. <c a'>32 q8 q8 \oneVoice |
  \barNumberCheck #66 g4 <g' bes>-^ |
  \barNumberCheck #67 <a cis>-- <bes d>-^ |
  \barNumberCheck #68 \voiceOne fis( g) \oneVoice |
  \barNumberCheck #69 r8.. <des e g bes>32 q8 q8 |
  \barNumberCheck #70 r8.. <c e g bes>32 q8 q8 |
  \barNumberCheck #71 r8.. <b d f a>32 q8 q8 |
  \barNumberCheck #72 r4 <bes, bes'>-^ |
  \barNumberCheck #73 <f f'>-^ <g g'>-^ |
  \barNumberCheck #74 <c e'>2\arpeggio |
  \mark \default % H
  \barNumberCheck #75 f16( a' c, a' f a c, a') |
  \barNumberCheck #76 f,( a' cis, a' f a cis, a') |
  \barNumberCheck #77 f,( a' d, a' f aes d, aes') |
  \barNumberCheck #78 <f, g g'>2 |
  \barNumberCheck #79 <f g b> |
  \barNumberCheck #80 <f g b d> |
  \barNumberCheck #81 <ees g c>8[-. r q]-. r |
  \barNumberCheck #82 <aes c d>-. r r4 |
  \barNumberCheck #83 q8-. r r4 |
  \barNumberCheck #84 <ees g c>8[-. r q]-. r |
  \barNumberCheck #85 <aes c d>-. r r4 |
  \barNumberCheck #86 <a c fis>8 r r4 |
  \barNumberCheck #87 g2 ~ |
  \barNumberCheck #88 g4. g,8( |
  \barNumberCheck #89 g'2) ~ |
  \barNumberCheck #90 g ~ |
  \barNumberCheck #91 g4. g,8( |
  \barNumberCheck #92 g'2) ~ |
  \barNumberCheck #93 g ~ |
  \barNumberCheck #94 g4. g,8( |
  \barNumberCheck #95 g'2) ~ |
  \barNumberCheck #96 g ~ |
  \barNumberCheck #97 g4. g,8( |
  \barNumberCheck #98 g'2) |
  \barNumberCheck #99 <g, g'>4.-> <c c'>8-> |
  \barNumberCheck #100 <g g'>4.-> <c c'>8-> |
  \barNumberCheck #101 <g g'>4.-> c8( |
  \barNumberCheck #102 g'2) ~ |
  \barNumberCheck #103 <f g> ~ |
  \barNumberCheck #104 <dis g> |
  \barNumberCheck #105 e ~ |
  \barNumberCheck #106 <e, e'> ~ |
  \barNumberCheck #107 q |
  \barNumberCheck #108 a8 r <a'' c e> r |
  \barNumberCheck #109 <a b dis> r r4 |
  \barNumberCheck #110 q8 r r4 |
  \barNumberCheck #111 <a c e>8 r r4 |
  \barNumberCheck #112 <a, e' c'>8 r <aes c e> r |
  \barNumberCheck #113 <g c e>8 r r4 |
  \barNumberCheck #114 <g' c e>8 r r4 |
  \barNumberCheck #115 <g c f>8 r <g b f'> r |
  \barNumberCheck #116 <c e>8 r c,4 ~ |
  \barNumberCheck #117 <c, c'>2 ~ |
  \barNumberCheck #118 \voiceTwo c \oneVoice |
  \barNumberCheck #119 <g g'> |
  \barNumberCheck #120 g' |
  \barNumberCheck #121 <a, a'> |
  \barNumberCheck #122 d ~ |
  \barNumberCheck #123 d ~ |
  \barNumberCheck #124 <d, d'> |
  \barNumberCheck #125 <e e'> |
  \barNumberCheck #126 e' |
  \barNumberCheck #127 <e, e'> ~ |
  \barNumberCheck #128 q8 q[( <e' e'>) <d d'>] ~ |
  \barNumberCheck #129 q <e, e'>( <d' d'>) <c c'> ~ |
  \barNumberCheck #130 q <e, e'>( <c' c'>) <b b'> \key a \major \section |
  \mark \default % I
  \barNumberCheck #131 <a a'>2 |
  \barNumberCheck #132 <a' cis e> ~ |
  \barNumberCheck #133 q4 <a cis> |
  \barNumberCheck #134 <a d>2 |
  \barNumberCheck #135 <a e'> |
  \barNumberCheck #136 <cis e a> |
  \barNumberCheck #137 <b e a> ~ |
  \barNumberCheck #138 <b e gis> |
  \barNumberCheck #139 <e, gis e'> |
  \barNumberCheck #140 a ~ |
  \barNumberCheck #141 <a, a'> ~ |
  \barNumberCheck #142 q4 <ais ais'> |
  \barNumberCheck #143 <b b'>2 |
  \barNumberCheck #144 \voiceOne r4 fis''-^ |
  \barNumberCheck #145 ais-^ b-^ \oneVoice |
  \barNumberCheck #146 f,8 r16. <f' gis b d>32 q8 q |
  \barNumberCheck #147 r8.. <e gis b d>32 q8 q |
  \barNumberCheck #148 r8.. <dis fis a cis>32 q8 q |
  \barNumberCheck #149 r4 <d, d'> |
  \barNumberCheck #150 <cis cis'> <b b'> |
  \barNumberCheck #151 s8 \voiceOne \autoBeamOff \crossStaff { fis'' e d } \autoBeamOn \key a \minor \section |
  \barNumberCheck #152 \crossStaff { cis4 } \oneVoice <a c a'> |
  \barNumberCheck #153 <a b a'>-.( a,-.) |
  \barNumberCheck #154 <a' bes a'>-.( a,-.) |
  \barNumberCheck #155 <a' a'>-.( a,-.) |
  \barNumberCheck #156 <a' b>-.( a,-.) |
  \barNumberCheck #157 <a' bes>-.( a,-.) |
  \barNumberCheck #158 <a a'> r |
  \barNumberCheck #159 r2 |
  \barNumberCheck #160 r4 s4 |
  \barNumberCheck #161 \voiceOne <a a'>2 ~ |
  \barNumberCheck #162 q |
  \barNumberCheck #163 s2 |
  \barNumberCheck #164 \crossStaff { <d' f> |
  \barNumberCheck #165 <f a> |
  \barNumberCheck #166 s8 <f a>4 <e a>8 |
  \barNumberCheck #167 <e a>2 |
  \barNumberCheck #168 <e g> } \oneVoice |
  \barNumberCheck #169 r8 <e, d'>4( <a c>8) |
  \barNumberCheck #170 <a c> r <a' c e> r |
  \barNumberCheck #171 <f a dis> r r4 |
  \barNumberCheck #172 <e gis d'>8 r r4 |
  \barNumberCheck #173 <a c>8 r \voiceOne \crossStaff { a r |
  \barNumberCheck #174 a s s4 |
  \barNumberCheck #175 gis8 } \oneVoice r r <c,, c'>( |
  \barNumberCheck #176 <a a'>4) r8 <c c'>( |
  \barNumberCheck #177 <a a'>4) r8 <c c'>( |
  \barNumberCheck #178 <a a'>4) r8 <a a'>( |
  \barNumberCheck #179 <f f'>2) |
  \barNumberCheck #180 <d d'>\arpeggio |
  \barNumberCheck #181 <e e'>\arpeggio |
  \barNumberCheck #182 <a a'>\fermata \fine
  \barNumberCheck #183
} % }}}

mvt_b_piano_lh_b = \new Voice \relative c { % {{{
  \set fingeringOrientations = #'(up left down)
  s8  |
  \barNumberCheck #1 s2*21  |
  \barNumberCheck #22 \voiceTwo <c, c'>4. <d d'>8 |
  \barNumberCheck #23 <e e'>4 f-> ~ |
  \barNumberCheck #24 f e \oneVoice |
  \barNumberCheck #25 s2*38 |
  \barNumberCheck #63 \voiceTwo f=,2 ~ |
  \barNumberCheck #64 f |
  \barNumberCheck #65 fis \oneVoice |
  \barNumberCheck #66 s2*2 |
  \barNumberCheck #68 \voiceTwo <bes d>2 \oneVoice |
  \barNumberCheck #69 s2*6 |
  \mark \default % H
  \barNumberCheck #75 s2*69 |
  \barNumberCheck #144 \voiceTwo <b=, d>2 |
  \barNumberCheck #145 <d fis> \oneVoice |
  \barNumberCheck #146 s2*5 |
  \barNumberCheck #151 <e,, e'>2 \section |
  \barNumberCheck #152 \voiceTwo a4 \oneVoice s4 |
  \barNumberCheck #153 s2*8 |
  \barNumberCheck #161 \voiceTwo cis=,4. d8 |
  \barNumberCheck #162 e( f g gis |
  \barNumberCheck #163 \oneVoice a bes c cis) |
  \barNumberCheck #164 \voiceTwo bes2 |
  \barNumberCheck #165 <f c'> |
  \barNumberCheck #166 r8 <f, f'>4( <a a'>8) |
  \barNumberCheck #167 <a a'>2 |
  \barNumberCheck #168 <c c'> \oneVoice |
  \barNumberCheck #169 s2*4 |
  \barNumberCheck #173 s4 \voiceTwo <a' c>8 r |
  \barNumberCheck #174 <f b>8 r r4 |
  \barNumberCheck #175 <e e'>8 \oneVoice s8 s4 |
  \barNumberCheck #176 s2*7 \fine
  \barNumberCheck #183
} % }}}

mvt_b_piano_sustainPedal = \new Voice \relative c { % {{{
  s8 |
  \barNumberCheck #1 s2*18 |
  \barNumberCheck #19 s2\sustainOn |
  \barNumberCheck #20 s8\sustainOff s8 s4 |
  \barNumberCheck #21 s2*4 |
  \barNumberCheck #25 s8\sustainOn s s s\sustainOff |
  \barNumberCheck #26 s2*7 |
  \barNumberCheck #33 \footnote #'(1 . 0) "Pedal beginning not found in Kistner 1879 edition." Staff.SustainPedal s2*2\sustainOn |
  \barNumberCheck #35 \after 16*7 \sustainOff s2 |
  \barNumberCheck #36 s2*3 |
  \barNumberCheck #39 s2\sustainOn |
  \barNumberCheck #40 \after 16*7 \sustainOff s2 |
  \barNumberCheck #41 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #42 s2*8 |
  \barNumberCheck #50 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #51 s2*2\sustainOn |
  \barNumberCheck #53 \after 16*7 \sustainOff s2 |
  \barNumberCheck #54 \after 64 \sustainOn s2*2 | % <=== AFTER 64 NECESSARY, OTHERWISE PROGRAMMING ERROR, CYCLIC REDUNDANCY ON VERTICALAXISGROUP.ADJACENTPUREHEIGHTS COMPUTATION, DUE TO THIS SUSTAIN SYMBOL
  \barNumberCheck #56 \after 16*7 \sustainOff s2 |
  \barNumberCheck #57 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #58 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #59 s2 |
  \barNumberCheck #60 s4..\sustainOn \footnote #'(-1 . 0) "Pedal release not found in Kistner 1879 edition." Staff.SustainPedal s16\sustainOff |
  \barNumberCheck #61 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #62 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #63 s2\sustainOn |
  \barNumberCheck #64 \after 16*7 \sustainOff s2 |
  \barNumberCheck #65 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #66 s2*3 |
  \barNumberCheck #69 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #70 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #71 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #72 s2*2 |
  \barNumberCheck #74 \after 16*7 \sustainOff s2\sustainOn |
  \mark \default % H
  \barNumberCheck #75 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #76 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #77 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #78 s2*30 |
  \barNumberCheck #108 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #109 s2*22 \section |
  \mark \default % I
  \barNumberCheck #131 s2*2\sustainOn |
  \barNumberCheck #133 \after 16*7 \sustainOff s2 |
  \barNumberCheck #134 s2*12 |
  \barNumberCheck #146 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #147 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #148 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #149 s2*4 |
  \barNumberCheck #153 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #154 \after 16*7 \sustainOff s2\sustainOn |
  \barNumberCheck #155 s2*28 \fine
  \barNumberCheck #183
} % }}}

mvt_b = << % {{{
  \tag #'violin
  \new Staff \with {
    \magnifyStaff #5/7
    instrumentName = "Violin"
    shortInstrumentName = "V."
    midiInstrument = "violin"
  } <<
    \mvt_b_canvas
    \tag #'violin_tempi \mvt_b_tempi
    \mvt_b_violin
  >>

  \tag #'cello
  \new Staff \with {
    \magnifyStaff #5/7
    instrumentName = "Cello"
    shortInstrumentName = "C."
    midiInstrument = "cello"
  } <<
    \mvt_b_canvas
    \tag #'cello_tempi \mvt_b_tempi
    \mvt_b_cello
  >>

  \tag #'piano
  \new PianoStaff \with {
    instrumentName = "Piano"
    shortInstrumentName = "P."
    midiInstrument = "acoustic grand"
  } <<
    \new Staff = "mvt_b_piano_rh" \with {
      #(scale-props 'magnifyStaff 5/7 #t '((BarLine thick-thickness) (BarLine hair-thickness) (BarLine kern)))
    } <<
      \mvt_b_canvas
      \tag #'piano_tempi \mvt_b_tempi
      \new Voice = "mvt_b_piano_rh_a" { \mvt_b_piano_rh_a }
      \new Voice = "mvt_b_piano_rh_b" { \mvt_b_piano_rh_b }
    >>
    \new Staff = "mvt_b_piano_lh" \with {
      #(scale-props 'magnifyStaff 5/7 #t '((BarLine thick-thickness) (BarLine hair-thickness) (BarLine kern)))
    } <<
      \new Voice = "mvt_b_piano_lh_a" { \mvt_b_piano_lh_a }
      \new Voice = "mvt_b_piano_lh_b" { \mvt_b_piano_lh_b }
      \mvt_b_piano_sustainPedal
    >>
  >>
>> % }}}

#(ly:expect-warning (G_ "no viable initial configuration found: may not find good beam slope"))
