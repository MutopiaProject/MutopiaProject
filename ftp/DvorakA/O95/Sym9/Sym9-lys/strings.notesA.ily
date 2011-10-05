\version "2.14.0"

violinImA = \relative c' {
  \key e \minor
  % make room so the initial tempo mark does not climb over the 'flute'
  \once\override Staff.MultiMeasureRest #'minimum-length = #20
  R1*7
  \cueWhile "flute1mA" "flute" #UP {
    R1 r2
  }
  %{%} r4 r16\ff d8-> ef16-. |
  a,16-. r8. r4 r4 r16 d8-> ef16-. |
  a,16-. r8. r4 r4 r16 d8-> ef16-. |
  a,16-. r8. r16 d8-> ef16-. a,16-. r8. r16 d8-> ef16-. |
  a,16-. r8. r4 r2 |
  R1*2
  af'2:32 \p\< af2:32 \f\>
  af16\p r8. r4 r2 |
  <gs b>2:32\p\< <gs b>2:32\f\<
  <fs d' fs>16\f r8. r4 <fs d' fs>16 r8. r4
  <fs a a'>16 r8. r4 <fs a a'>16 r8. r4
  <bf bf'>16 ds8\< e fs g a bf16\! r ds\< e g
  b!16\sf r8. <fs,, ds' b'>16 r8. r2
  b'1:32\fpp
  \barNumberCheck#allegroMolto
  b2:32\pp b2:32 c2:32
  b8:32 g:32 e:32 b:32
  b2:32 b2:32 b2:32
  b16(\< g e g b\> e g fs)
  e2->\pp~ e2 ~ e2
  b2 d2:32 d2:32 d2:32 |
  \acciaccatura b8
  b,4.\ff ds8\< | fs b4.-> | c4.->\ffz a8 fs e4.-> |
  ds4.-> fs8\< | b ds4.-> | e4.->\ffz c8 b a4.-> |
  \barNumberCheck#47
  c8:32\f a:32 g:32 fs:32
  c'8:32 a:32 g:32 fs:32
  e'8:32 c:32 b:32 a:32
  e'8:32 c:32 b:32 a:32
  e'16( c b a) a'(\< e d c |
  c'( b a e) e'( c b a) |
  fs'8:16\ff e:16 fs:16 e:16
  fs8:16 e:16 fs:16 e:16
  g8:16 e:16 g:16 e:16
  g8:16 e:16 g:16 e:16
  b'16( b,) b b b4:16\< b4.:16 ds16 ds |
  \barNumberCheck#rehearsalOne
  e2:16\fff e:16 e:16 e:16
  g,8.->(\fz b16-.) b8-.( fs-.)
  g8.->(\fz b16-.) b8-.( fs-.)
  g8.->(\fz b16-.) b8-.( fs-.)
  e8.->(\fz g16-.) g8-.( d-.)
  c8.->(\fz e16-.) e8-.( b-.)
  a8.->(\fz c16-.) c8-.( g-.) |
  \acciaccatura fs
  fs'8.->(\fz a16-.) a8-.( e-.)
  d8.->(\fz fs16-.) fs8-.( c-.)
  b8.->(\fz d16-.) d8-.( a-.)
  g8.->(\fz b16-.) b8-.( fs-.) |
  \acciaccatura e
  e'8.->(\fz g16-.) g8-.( e-.)
  R2
  e8.->(\fz g16-.) g8-.( e-.)
  R2
  \barNumberCheck#rehearsalTwo
  e8.(\mf g16-.) g8-.( e-.) |
  r8 g(\ub fs e)
  r8 g(\db\> fs e)
  r8\! d(\ub\p cs c)
  b8.->(_\markup\whiteout\italic"sempre più diminuendo" d16-.)
  %{%} d8-.( b-.) |\noBreak
  r8 c( b a)
  b8.->( d16-.) d8-.( b-.) |
  r8 c( b a)
  r8 gs(\db a b)
  a8.( c16-.) c8-.( a-.) |
  r8 bf(\db\p a g)
  r8 bf( a g)
  r8 bf( a g)
  r8 bf( a g)
  \barNumberCheck#rehearsalThree
  \override PercentRepeatCounter #'direction = #DOWN
  <<
    { d'2-\flageolet\ppp ~d2 ~d2 ~d2 ~d2 ~d2 ~d2 ~d2 }
    \tag#'part { \repeat percent 8 s2 }
  >>
  << \tag #'part {
    \bar "|" \partPageBreak
    s32 ^\markup\large {
      "Left blank for two-side booklet printing,"
      " so page 1 can be detached"
    }
    \bar "" \partPageBreak
    s32 ^\markup\large{
      "Left blank for two-side booklet printing,"
      " so next pages can be laid open if page 1 was detached"
    }
    \bar "" \partPageBreak
    % rewind Timing to reprint the bar number
    \set Timing.measurePosition = #(ly:make-moment 0 16)
    d4*3/4(\db\ppp d'4
    % put Timing back in sync with the music
    \set Timing.measurePosition = #(ly:make-moment 8 16)
    \bar"|"
  } \tag#'score \tag#'quote {
    d,4(\db\ppp d' |
  } s2 >> d,4 d') |
  d,4( d' d, d') |
  d,4( d' d, d') |
  d,4( d' d,8 d' bf16 a g d |
  bf8 ) d-. d(\< g) |
  r8 g-. g(ef)  r8 d-. d( g) |
  r8 d'-.\db d( c) |
  gs16(\f b) b( gs)\> b4 | R2\!
  gs16(\f b) b( gs)\> b4 | R2\!
  gs16(\p b) b( gs) b4 |
  gs16( b) b( gs) b4 |
  a16(\< c) c( a) c4 |
  a16( c) c( a) c4 |
  c16( e) e( c) e4 |
  c16( e) e( c) e4 |
  \barNumberCheck#rehearsalFour
  e16(\f gs) gs( e) e( b) b( gs) gs( e') e( b) b( gs) gs( e)\> |
  e( b') b( gs) gs( e) e( b) b( gs') gs( e) e( b) b( gs) |
  g(\(\p b) b( g) g( b) b( g)\)
  g(\(\< b) b( g) g( b) b( g)\)
  g(\db\fz b) b-. g-. g(\> b) b-. g-.
  g( b) b-. g-. g( b) b-. g-.
  b8(-.\p d-.) d16( c b8) e16(\< g) g( e) g4 |
  d8(-.\! b-.) b16(\> c d8) b16(\( a) a4.--\) |
  g16(\pp b) b-. g-. g( b) b-. g-.
  g16(\< b) b-. g-. g( b) b-. g-.
  g16(\f b) b-. g-. g(\> b) b-. g-.
  g16( b) b-. g-. g( b) b-. g-.
  b8(-.\p d-.) d16( c b8) e16(\< g) g( e) g4-> |
  d8(-.\! b-.) b16(\> c d8) b16(\( a) a4.--\) |
  d8(-.\p b-.) b16(\> c d8) b16( a) a4.-- |
  b16( a) a4.-- b16( a) a4.-- |
  b4\(\pp c b\> c b\ub c b a \) |
  \barNumberCheck#rehearsalFive
  g2\ppp~g~g( fs) fs(g) |
  a4( fs8. e16) | g16(\< d b d g b d g) |
  g4.(\! g8-.) e8-.( d4.->) |
  g8.(\< b16 d8) d-. d2\> |
  d8.(\! e16 d8. c16) b8(\< d4.)\> |
  \times2/3{c8(\! d c} \times2/3{a fs e)} d2\< |
  \times2/3{c'8( d c} \times2/3{a fs e)} d2 |
  \repeat unfold 4 { a'16( b a8) }
  \repeat unfold 4 { d16( e d8) } |
  \acciaccatura d8
  g2:16\ff g:16 g:16 |
  e16 e d d d d d d, | g g g b d d d d |
  <d, d'>2:16 |
  <d d'>8 r <ds ds'>8 r b'2:16\fpp b:16\> b:16 s1*0\!
  \partPageBreak
  \barNumberCheck#rehearsalSix
  d8\ff r b4\fz->\db ~ | b8. g,16\ub g( b) b( g')\< |
  g8.( b16) \times2/3{ ds8 ds ds} |
  ds2\ffz ~ds8 r b4\fz\db ~ |
  b8. g,16 g( b) b( g') |
  g8.( b16 ds)\> ds-. ds-. ds-. | ds2
  g,,8.\p\db-\markup\italic"leggiero" b16 g16(\> b g') g-. |
  g,8. b16 g16( b g') g-. |
  g,8.\pp b16 g16( b g') g-. |
  g,8. b16 g16( b g') g-. |
  s1*0\ppp \repeat unfold 4 gs2:32
  gs2~gs gs2~gs
  gs8( b4 fs16 a) | gs8( b4 fs16 a) |
  e8( gs4 ds16 fs) | e8( gs4 ds16 fs) |
  cs8 r8 r4 |
  r4 r8 e,16-.\pp e-. cs'8( a) r4 |
  r4 r8 e16-.\< e-. c'!8( a) r4 |
  r4 r8 e16-. e-. c'!8( a) r4 |
  r4 r8 a16-. a-.
  \barNumberCheck#rehearsalSeven
  s1*0\fz \repeat unfold 4 {f'8.-> f16 d-. c-. r8 } |
  s1*0\ff \repeat unfold 4 <a fs'>2:16
  s1*0\fz \repeat unfold 4 {fs'8.-> fs16 d-. cs-. r8 } |
  s1*0\ff \repeat unfold 4 <c a'>2:16
  \repeat unfold 2 {c'8.->\fz c16 b-. a-. r8 } |
  c8.->\fz c16 bf-. af-. r8  |
  cf8.->\fz cf16 bf-. af-. r8  |
  cf16\ff bf r8 af16 gf r8 | f16 ef r8 d16 cf r8 |
  bf16 af r8 gf16 f r8 | ef16 d d cf cf bf bf ef |
  s1*0\ff \repeat unfold 4 ef''2:16
  gf4(ff8 ef) ef4(df8 cf) b4(as8 a) a8\((g) fs!(b)\)
  \barNumberCheck#rehearsalEight
  \acciaccatura b8
  g'2:16\ff g2:16 g2:16 g2:16
  g4(f8 e) e4(d!8 c!) c4 b8(bf) bf(af) g(c) |
  af8.->(\fz c16-.) c8-.( g8-.) |
  af8.->(\fz c16-.) c8-.( g8-.) |
  af8.->(\fz df16-.) df8-.( af8-.) |
  a8.->(\fz d16-.) d8-.( a8-.) |
  \repeat unfold 5 \times2/3{bf8 ef bf(~}
  bf16 ef) ef(bf) | b(e) e(b) c(f) f(c) | fs8 r8 r4
  R2*4\partPageBreak
  r4 cs,8.\pp cs16 b-. a-. r8 r4 R2
  d8.\pp d16  c! bf r8 \repeat unfold 3 { d8. d16 c bf r8 } |
  s1*0\< \repeat unfold 3 { ds8. ds16 cs b r8 } |
  ds8. ds16 cs( b) b( b') |
  \barNumberCheck#rehearsalNine
  b2:32\fp b2:32\pp c!2:32
  b8:32 g:32 e:32 b:32 | b2:32 b:32 b:32
  b16(\< g e g b\> e g fs) |
  e2->\pp ~e ~ e( b)
  d16(\< g d4->) d8-. |
  d16( g d4->) d8-. |
  d16( g d4->) c16\db a |
  \acciaccatura b8
  b,4.\ff ds8-.\< fs-. b4.->\fz c!4.\fz-> a8 fs8 ds4. |
  cs4.->\< e8-. a-. cs4.->\! d4.\fz-> b8 gs8 d4. |
  b''8.-.(\fz e16-.) e8-.( gs,-.) |
  gs8.-.(\fz b16-.) b8-.( e,-.) |
  e8.-.(\fz gs16-.) gs8-.( b,-.) |
  b8.-.(\fz e16-.) e8-.( gs,-.) |
  e'4. b8 gs\> e4. |
  e'4. b8 gs e4. |
  \barNumberCheck#rehearsalTen
  \key gs \minor
  b'8\p gs4.\> b8 gs4. |
  b8\pp gs4. b8 gs4. |
  b4(-\markup\italic"legato" gs as) b(\> ~ b2 as2)
  b2(\ppp cs b as4 b)
  b2( cs b as4 b)
  ds4(\ppp ds') ~ ds2 ~ ds2
  cs4\(  b4( ds2)\)
  ds,4\( ds' ~ ds2 cs4 b4 | gs8\)(ds) ds(gs) |
  r8 gs-.\< gs(e) | r ds-. ds(gs) |
  r8 ds'-.\db ds(cs) |
  a16(\f c) c(a) c4 R2
  a16(\f c) c(a) c4 R2
  a16(\p c) c(a) c4 | a16( c) c(a) c4 |
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  bf16(df)\< df(bf) df4 |
  bf16(df) df(bf) df4 |
  df16(f) f(df) f4 |
  \ottava#1 df16(f) f(df) f4 |
  f16(\ff c') c(a) a(f) f(c) |
  \ottava#0 c(f) f(c)\> c(bf) bf(a) |
  a(c) c(a) a(g) g(f) |
  a(g) g(f) f(c) c(a) |
  af(\p c) c-.( af-.) af(\< c) c-.( af-.) |
  af( c) c-.( af-.) af( c) c-.( af-.) |
  af(\mf c) c-.( af-.) af(\> c) c-.( af-.) |
  af( c) c-.( af-.) af( c) c-.( af-.) |
  \key af\major
  c8-.(\p ef-. ef16 ef c8) f16(\< af) af(f) af4\> |
  ef8-.( c-. c16 df ef8) c16( bf) bf4.->\! |
  af16(c) c-.(af-.) af(\< c) c-.(af-.) |
  af(c) c-.(af-.) af(c) c-.(af-.) |
  af(\fz c) c-.(af-.) af(\> c) c-.(af-.) |
  af(c) c-.(af-.) af(c) c-.(af-.) |
  c8-.(\p ef-. ef16 ef c8) f16(\< af) af(f) af4\> |
  ef8-.(\! c-. c16 df ef8) c16( bf) bf4.-> |
  ef8-.(\ub\> c-. c16 df ef8) c16( bf) bf4.-> |
  c16(\pp bf) bf4.-> | c16( bf) bf4.-> |
  c4\(\ppp df c df c\ub df c bf\) \partPageBreak
  \barNumberCheck#rehearsalTwelve
  af2 ~af ~af( g) |
  g2( af bf4 g)
  c8( af c ef) af4.( af8-.) f-.( ef4.) |
  af8.( c16 ef8) ef-. | ef2
  ef8.( f16 ef8 df) c( ef4.) |
  \times2/3{df8( ef df} \times2/3{bf g f)} | ef2
  \times2/3{df'8( ef df} \times2/3{bf g f)} | ef2
  bf'16(\< c bf8) bf16( c bf8) bf16( c bf8) bf16( c bf8) |
  ef16( f ef8) ef16( f ef8)
  \ottava#1 ef16( f ef8) ef16( f ef8) |
  af2:16\f af2:16 af2:16\< af2:16
  \barNumberCheck#rehearsalThirteen \key e \minor
  <<
    s2\fff
    \repeat unfold 8 a!2:32
    \tag#'part {
      \repeat percent 8 s2
    }
  >>
  \ottava#0
  a,,8.\fz c16 ef a r8 |
  c,8.\fz ef16 a c r8 |
  ef,8.\fz a16 d ef r8 |
  a,8.\fz c16 ef a r8 |
  \ottava#1
  c8:16\ff b!:16 as:16 a:16 | gs:16 g:16 fs:16 f:16 |
  %\ottava#0
  e:16 ef:16 d:16 cs:16 | c:16 b:16 a:16 fs:16 |
  e4.--->\fz g8-.\ub c-.\db e4.--->\fz\ub |
  g4.--->\fz\db fs8-.\ub f-. e4.--->\fz |
  e,4.--->\fz g8-.\ub c-.\db e4.--->\fz |
  g4.--->\fz fs8-. f-. e4.---> |
  \ottava#1
  s1*0\fz \repeat unfold 4 {g8:16 fs:16 f:16 e:16 }
  b':16 as:16 a:16 gs:16 | g:16 fs:16 f:16 e:16 |
  %\ottava#0
  ef:16 d:16 cs:16 c:16 | b:16 as:16 a:16 g!:16 |
  fs8.->\fz a16 c-. e-. r8 |
  g8.->\fz fs16 e-. ds-. r8 |
  e,8.->\fz g16 b-. e-. r8 |
  g8.-> fs16 e-. ds-. r8 |
  \ottava#1
  e8.-> g16 b-. b,-. r8 | e8.-> g16 b-. b,-. r8 |
  \repeat unfold 4 { b'16\((b,) r b'-.\) }
  e,2:32\fff e:32 e:32 e:32
  c'4:32 g:32 e:32 c:32
  g4:16 e8:16 g:16 b:16 c:16 e:16 g:16 |
  b8 r e, r |
  r4 <e e,>8[ r16 <e e,>] |
  \repeat unfold 3 { <e e,>8 r r4 }
  \ottava#0 \partPageBreak
}

violinIImA = \relative c' {
  \key e \minor
  \once\override Staff.MultiMeasureRest #'minimum-length = #20
  R1*7
  \cueWhile "flute1mA" "flute" #UP {
    R1 r2
  }
  %{copy violinI %} r4 r16\ff d8-> ef16-. |
  a,16-. r8. r4 r4 r16 d8-> ef16-. |
  a,16-. r8. r4 r4 r16 d8-> ef16-. |
  a,16-. r8. r16 d8-> ef16-. a,16-. r8. r16 d8-> ef16-. |
  a,16-. r8. r4 r2 |
  R1*2
  <d f!>2:32 \p\< <d f>2:32 \f\>
  <d f>16\p r8. r4 r2 |
  es2:32\p\< es2:32\f\<
  r16 cs'8->\fz d16-. gs,16 r8.  r16 cs8-> d16-. gs,16 r8.
  r16 css8-> ds16-. a16 r8.  r16 d8-> ef16-. a,16 r8.
  <g bf e>16 c\< c c  c c c c c c c c  cs cs cs <cs e>
  <b g'>16\sf r8. <b fs'>16 r8. r2
  b1:32\fpp
  \barNumberCheck#allegroMolto
  g'2:32\pp g2:32 g2:32
  g8:32 e:32 b:32 g:32
  \repeat unfold 3 { g8( e b' b,) }
  e4 r
  R2*3
  r4 \times 2/3 { b8(\p\ub d g }|
  b g d' d,) b'( g d' d,) b'( g d' d,)|
  b4.\ff ds8\< | fs b4.-> | c4.->\ffz a8 fs e4.-> |
  ds4.-> fs8\< | b ds4.-> | e4.->\ffz c8 b a4.-> |
  \barNumberCheck#47
  a,16(\f b) c c c4:16
  a16( b) c c c4:16
  c16( c) e e e4:16
  c16( c) e e e4:16
  e16( c b a) a'(\< e d c |
  c'( b a e) e'( c b a) |
  fs'8:16\ff e:16 fs:16 e:16
  fs8:16 e:16 fs:16 e:16
  g8:16 e:16 g:16 e:16
  g8:16 e:16 g:16 e:16
  b'16( b,) <b a'> <b a'> <b a'>4:16\< <b a'>2:16 |
  \barNumberCheck#59
  <g' b>2:16\fff <g b>:16 <e c'>:16 <g b>:16
  e8.->(\fz g16-.) g8-.( ds-.)
  e8.->(\fz g16-.) g8-.( ds-.)
  e16\fz b b8:16 b8:16 c8:16
  b4.:16\fz a8:16
  g4.:16\fz fs8:16
  e4.:16\fz d8:16 |
  c16(\fz c' c8:16 c8:16 b8:16
  a4.:16\fz g8:16
  fs4.:16\fz e8:16
  d4.:16\fz c8:16 |
  b16(\f\< e g as b4)
  R2\!
  bf,16(\f\< e g a bf4)
  R2\!
  \barNumberCheck#rehearsalTwo
  r8 b8(\mp g e) bf'4.( g8) |
  b4( d8\> g, c\p fs, fs4) |
  f4( b,8 d) c8.\> f16 f8-. c-. |
  f4(\pp b,8 d) c8. f16 f8-. c-. |
  b4( f' e a) |
  ef16( g ef g e g e g) ef16( g ef g e g e g) |
  ef16( g ef g e g e g) ef16( g ef g e g e g) |
  \barNumberCheck#rehearsalThree
  <<
    { d2:16\ppp \repeat unfold 7 d:16 }
    \tag#'part { \repeat percent 8 s2 }
  >>
 << \tag #'part {
    \bar "|" \partPageBreak
    s32 ^\markup\large {
      "Left blank for two-side booklet printing,"
      " so page 1 can be detached"
    }
    \bar "" \partPageBreak
    s32 ^\markup\large{
      "Left blank for two-side booklet printing,"
      " so next pages can be laid open if page 1 was detached"
    }
    \bar "" \partPageBreak
    % rewind Timing to reprint the bar number
    \set Timing.measurePosition = #(ly:make-moment 0 16)
    g8*1/2(\ppp bf8
    % put Timing back in sync with the music
    \set Timing.measurePosition = #(ly:make-moment 4 16)
  } \tag#'score \tag#'quote {
    g8(\ppp bf
  } s4 >> bf16 a g8) | a16\(( c) c( a) c4->\) |
  bf8( g g16 a bf8) a16( bf a f g4->) |
  g8( bf bf16 a g8) a16\(( c) c( a) c4->\) |
  bf8( g g16 a bf8) a16( bf a f g a bf a) |
  bf8( d~d16\< c bf8) c\( ef16 c ef4\)  |
  d8( f~f16 ef d8) ef\( g16 ef g4\)  |
  b,16(\f gs) gs(\> b) b( gs gs( b) |
  b16(\p gs) gs( b) b( gs gs( b) |
  b16(\f gs) gs(\> b) b( gs gs( b) |
  b16(\p gs) gs( b) b( gs gs( b) |
  b16(\p d) d( b) d4 |
  b16( d) d( b) d4 |
  c16(\< e) e( c) d4 |
  c16( a') a( c,) a'4 |
  e16( g) g( e) g4 |
  e16( c') c( e,) c'4 |
  \barNumberCheck#rehearsalFour
  gs16(\f bs) bs( gs) gs( e) gs( e) e( gs) gs( e) e( b) b( gs)\> |
  gs( gs') gs( e) e( gs,) gs( e) gs( e') e( b) b( gs) gs( e) |
  b16-.\p g'-. g( b,)  b-. g'-. g( b,)
  b-.\< g'-. g( b,)  b-. g'-. g( b,)
  b-.\fz g'-. g( b,)  b-.\> g'-. g( b,)
  b-. g'-. g( b,)  b-.\! g'-. g( b,)
  g'8(-.\p b-.) b16( a g8) c16(\< e) e( c) e4 |
  b8(-.\! g-.) g16(\> a b8) g16(\( fs) fs4.--\) |
  b,16(\pp g') g-. b,-. b( g') g-. b,-.
  b16(\< g') g-. b,-. b( g') g-. b,-.
  b16(\f g') g-. b,-. b(\> g') g-. b,-.
  cs16( g') g-. cs,-. cs( g') g-. cs,-.
  g'8(-.\p b-.) b16( a g8) c16(\< e) e( c) e4-> |
  b8(-.\! g-.) g16(\> a b8) g16(\( fs) fs4.--\) |
  b8(-.\p g-.) g16(\> a b8) g16( fs) fs4.-- |
  g16( fs) fs4.-- g16( fs) fs4.-- |
  g4\(\pp e g\> e g\ub e d c \) |
  \barNumberCheck#rehearsalFive
  b2(\ppp~b e d) c(b) |
  a4( c) b2 | g'4.( g8-.) e8-.( d4.->) |
  g8.(\< b16 d8) d-.\! d2\>
  d8.(\! e16 d8. c16) b8(\< d4.)\> |
  \times2/3{c8(\! d c} \times2/3{a fs e)} d2\< |
  \times2/3{c'8( d c} \times2/3{a fs e)} d2 |
  \repeat unfold 4 { c'16( d c8) }
  \repeat unfold 4 { fs16( g fs8) } |
  \acciaccatura d8 <g b,>2:16\ff <g b,>:16 <g b,>:16 |
  e16 e d d d d d d, | g b d g b b a a |
  b16 b a a b b a a |
  <b b,>8 r <a b,>8 r b,2:16\fpp b:16\> b:16 s1*0\! \partPageBreak
  \barNumberCheck#rehearsalSix
  b'8\ff r g4\fz->\db ~ | g4 b,4( ~ b16 g') g-. g-.\< g( b) b-. b-. |
  b2\ffz ~b8 r8 g4\fz ~g4 b,( b16 g') g-. g-.\> g( b) b-. b-. |
  b( g) g-. g-. g( b,) b-. b-. |
  \repeat tremolo 4 {g16(\p b)\>}
  \repeat tremolo 4 {g( b)}
  \repeat tremolo 4 {g(\pp b)}
  \repeat tremolo 4 {g( b)}
  s2*0\ppp \repeat unfold 4 e2:32
  e2 ~e e ~e
  e8( gs4 ds8) | e8( gs4 ds8) |
  cs8( e4 b8) | cs8( e4 b8) |
  e,8(\pp cs16 e cs e cs e | cs\ub e b d a cs b d) |
  \repeat tremolo 4 {cs( e} |
  \set crescendoText = \markup\whiteout\italic"cresc. poco a poco"
  \set crescendoSpanner = #'text
  cs\ub e b d a\< cs b d) | %\noBreak
  \unset crescendoSpanner
  \repeat tremolo 4  {c( e} | c\ub e b d a c b d)
  \repeat tremolo 4 {c( e} | c\ub e b d a c e c)
  \barNumberCheck#rehearsalSeven
  s1*0\f^"sul G" \repeat unfold 4 { f8-> f16 f f8 r } |
  s1*0\ff \repeat unfold 4 <fs ds'>2:16
  s1*0\fz \repeat unfold 4 { fs8-> fs16 fs fs8 r } |
  s1*0\ff \repeat unfold 4 <a fs'>2:16
  s1*0\fz \repeat unfold 2 { <a fs'>4.:16 r8 }
  s1*0\fz \repeat unfold 2 { <af f'>4.:16 r8 }
  cf'8.->(\ff bf16-.) af8.->( gf16-.) |
  f8.->( ef16-.) d8.->( cf16-.) |
  bf8.->( af16-.) gf8.->( f16-.) |
  ef16 ef d d cf cf bf bf |
  <gf'' bf>2:16\ff <gf bf>2:16 <gf cf>2:16 <gf bf>2:16
  gf4(ff8 ef) ef4(df8 cf) b4(as8 a) a8\((g) fs!(b)\)
  \barNumberCheck#rehearsalEight
  s2*0\ff \repeat unfold 4 <e g>2:16
  g4(f8 e) e4(d!8 c!) c4 b8(bf) bf(af) g(c) |
  f8.->(\fz af16-.) af8-.( e8-.) |
  f8.->(\fz af16-.) af8-.( e8-.) |
  f8.->(\fz df16-.) df8-.( f8-.) |
  fs8.->(\fz d16-.) d8-.( fs8-.) |
  \repeat unfold 5 \times2/3{gf8 ef gf(~}
  gf16 ef) ef(gf) | g(e) e(g) af(f) f(af) |
  <a cs,>8 r r4 |
  r4 cs,8.\fz cs16\p | b-. a-. r8 r4 R2*5
  s2*0\pp \repeat unfold 4 {bf,4:16 d:16}
  s2*0\< \repeat unfold 4 {b4:16 ds:16}
  \barNumberCheck#rehearsalNine
  \times4/6 {e16\fp g' g g g g} \times4/6 g4.:16 |
  g2:32\pp g:32
  g8:32 e:32 b:32 g:32 |
  \repeat unfold 3 {g8( e b b')} e,4 r4 R2*3 \partPageBreak
  r4 \times2/3 {b8(\pp\db d g)}
  s2*0\< \repeat unfold 3 {b8( g d d')}
  \acciaccatura ds8
  b,4.\ff ds8-.\< fs-. b4.->\fz c!4.\fz-> a8 fs8 ds4. |
  cs4.->\< e8-. a-. cs4.->\! d4.\fz-> b8 gs8 d4. |
  gs'8.-.(\fz b16-.) b8-.( e,-.) |
  e8.-.(\fz gs16-.) gs8-.( b,-.) |
  b8.-.(\fz e16-.) e8-.( gs,-.) |
  gs8.-.(\fz b16-.) b8-.( e,-.) |
  b'4. gs8 e\> b4. |
  b'4. gs8 e b4. |
  \barNumberCheck#rehearsalTen
  \key gs \minor
  e8\p e4.\> e8 e4. |
  b8\pp e4. e8 e4. |
  e4(-\markup\italic"legato" d8 e e4 d8\> e)
  (e4 es fs gs)
  gs2(\ppp as gs fs4 gs)
  gs2( as gs fs4 gs)
  ds4( ds') ~ ds2 ~ ds2 %\partPageBreak
  cs4\( b4( ds2)\)
  ds,4\( ds' ~ ds2 cs4 b4\) |
  b8-. ds-. ds16( cs b8) cs16( e) e(\< cs) e4 |
  ds8-. b-. b16( cs ds8) as16(cs) cs(as) cs4 |
  c16(\f a) a(c) c16( a) a(c) |
  c16(\p a) a(c) c16( a) a(c) |
  c16(\f a) a(c) c16( a) a(c) |
  c16(\p a) a(c) c16( a) a(c) |
  c16(\p ef) ef(c) ef4 | c16( ef) ef(c) ef4 |
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  df16(f)\< f(df) f4 |
  df16(bf') bf(df,) bf4 |
  f16(af) af(f) af4 |
  f16(df') df(f,) df'4 |
  f16(\ff c') c(a) a(f) f(c) |
  c(f) f(c)\> c(bf) bf(a) |
  a(c) c(a) a(g) g(f) |
  a(g) g(f) f(c) c(a) |
  c16-.\p af'-. af( c,) c-.\< af'-. af( c,) |
  c-. af'-. af( c,) c-. af'-. af( c,) |
  c-.\mf af'-. af( c,) c-.\> af'-. af( c,) |
  c-. af'-. af( c,) c-. af'-. af( c,) |
  \key af\major
  af'8-.(\p c-. c16 bf c8) df16(\< f) f(df) f4\> |
  c8-.( af-. af16 bf c8) af16( g) g4.->\! |
  c,16-. af'-. af( c,) c-. af'-. af( c,) |
  c-.\< af'-. af( c,) c-. af'-. af( c,) |
  c-.\fz af'-. af( c,) c-.\> af'-. af( c,) |
  c-. af'-. af( c,) c-. af'-. af( c,) |
  af'8-.(\p c-. c16 bf c8) df16(\< f) f(df) f4\> |
  c8-.(\! af-. af16 bf c8) af16( g) g4.->\! |
  c8-.(\ub\> af-. af16 bf c8) af16( g) g4.-> |
  af16(\pp g) g4.-> | af16( g) g4.-> |
  <<
    {af4\(\ppp f af f af\ub f ef4 df\)} \\
    {s2*3 ef2 }
  >>\partPageBreak
  \barNumberCheck#rehearsalTwelve
  <<
    {ef2~ef(f)(ef) ef~ef} \\
    {c2~c~c~c g( af)}
  >>
  f'4( df c4. ef8) | af4.( af8-.) f-.( ef4.) |
  af8.( c16 ef8) ef-. | ef2
  ef8.( f16 ef8 df) c( ef4.) |
  \times2/3{df8( ef df} \times2/3{bf g f)} | ef2
  \times2/3{df'8( ef df} \times2/3{bf g f)} | ef2
  df'16(\< ef df8) df16( ef df8) df16( ef df8) df16( ef df8) |
  g16( af g8) g16( af g8) g16( af g8) g16( af g8) |
  <af c,>2:16\f <af c,>2:16 <af c,>2:16\< <af c,>2:16
  \barNumberCheck#rehearsalThirteen \key e \minor
  \override PercentRepeatCounter #'padding = #2
  <<
    s2\fff
    { \repeat unfold 4 <a! cs,>2:32 \repeat unfold 4 <a! c,>2:32 }
    \tag#'part { \repeat percent 4 s2 \repeat percent 4 s2 }
  >>
  \revert PercentRepeatCounter #'padding
  a,,8.\fz c16\ub ef a r8 |
  c,8.\fz ef16\ub a c r8 |
  ef,8.\fz a16\ub d ef r8 |
  a,8.\fz c16\ub ef a r8 |
  c8:16\ff b!:16 as:16 a:16 | gs:16 g:16 fs:16 f:16 |
  e:16 ef:16 d:16 cs:16 | c:16 b:16 a:16 fs:16 |
  e4.--->\fz g8-.\ub c-.\db e4.--->\fz\ub |
  g4.--->\fz\db fs8-.\ub f-. e4.--->\fz |
  e,4.--->\fz g8-.\ub c-.\db e4.--->\fz |
  g4.--->\fz fs8-. f-. e4.---> |
  s1*0\fz \repeat unfold 4 {g8:16 fs:16 f:16 e:16 }
  b':16 as:16 a:16 gs:16 | g:16 fs:16 f:16 e:16 |
  ef:16 d:16 cs:16 c:16 | b:16 as:16 a:16 g!:16 |
  fs8.->\fz a16 c-. e-. r8 |
  g8.->\fz fs16 e-. ds-. r8 |
  e,8.->\fz g16 b-. e-. r8 |
  g8.-> fs16 e-. ds-. r8 |
  e8.-> g16 b-. b,-. r8 | e8.-> g16 b-. b,-. r8 |
  \repeat unfold 4 { b'16\((b,) r b'-.\) }
  <g b>2:32\fff <g b>:32 <e c'>:32 <e c'>:32
  c'4:32 g:32 e:32 c:32
  g4:16 e8:16 g:16 b:16 c:16 e:16 g:16 |
  b8 r <e, b g> r |
  r4 <g b,>8[ r16 <g b,>] |
  \repeat unfold 3 { <g b,>8 r r4 } \partPageBreak
}

violamA = \relative c' {
  \clef alto
  \key e \minor
  g2(\pp fs4 f)
  e2( ef4 d)
  cs( c) <<g'8-.\\e8-.>> r <<fs-.\\e-.>> r
  <<g-.\\e-.>> r r4 r2
  R1*3
  \trCueWhile "flute1mA" "flute 8va" #UP c {
    R1 r2
  }
  %{%}r4 r16\ff d'8-> ef16-. |
  a,16-. r8. r4 r4 r16 d8-> ef16-. |
  a,16-. r8. r4 r4 r16 d8-> ef16-. |
  a,16-. r8. r16 d8-> ef16-. a,16-. r8. r16 d8-> ef16-. |
  a,16-. r8. r4 r2 |
  R1
  \repeat unfold 2 \repeat tremolo 8 {d,32(\pp f!)}
  d8.->\< f16\ub af16 bf8. cf8.->\f\>\db af16 gf16 f8.\!
  \repeat tremolo 8 {d32(\pp f!)} \repeat tremolo 8 {d32( af')}
  es8.->\< gs16\ub b!16 cs8. d8.->\f\>\db b16 a16 gs8.\!
  r16\f cs8-> d16-. gs,16 r8.  r16 cs8-> d16-. gs,16 r8.
  r16 css8-> ds16-. a16 r8.  r16 d8-> ef16-. a,16 r8.
  <bf e>16 bf'\< bf bf  bf bf bf bf <e, bf'> <e bf'> <e bf'> <e bf'> <g bf> <g bf> <g bf> <cs, e>
  <b e>16\sf r8. <b ds>16 r8. r2
  R1
  \barNumberCheck#allegroMolto
  e'2:32\pp e2:32 e2:32
  e8:32 b:32 g:32 e:32
  b2:32 b2:32 b2:32
  <g b>2:32 <g b>2:32 <g b>2:32 <g e'>2:32
  <b d>2:32 d2:32 d2:32 d2:32
  b4.\ff ds8\< | fs b,4.-> | c4.->\ffz a8 fs e4.-> |
  ds4.-> fs8\< | b ds4.-> | e4.->\ffz c8 b a4.-> |
  \barNumberCheck#47
  fs16(\f g) a a a4:16
  fs16( g) a a a4:16
  a16( b) c c c4:16
  a16( b) c c c4:16
  <<{
    c16( d) e-. e-.
    c16(\< d) e-. e-.
    c16( d) e-. e-.
    c16( d) e-. e-.\!
  }\\{
    a,16( b) c-. c-.
    a16( b) c-. c-.
    a16( b) c-. c-.
    a16( b) c-. c-.
  }>>
  fs8:16\ff e:16 fs:16 e:16
  fs8:16 d:16 fs:16 e:16
  g8:16 e:16 g:16 e:16
  g8:16 e:16 g:16 e:16
  b:16 cs:16 ds:16\< e:16 es:16 fs:16 ds:16 b:16 |
  \acciaccatura e8
  e'2:16\fff e:16 e:16 e:16
  b16(\fz b,) b b b4:16
  b'16(\fz b,) b b b4:16
  g'4.:16\fz a8:16
  g4.:16\fz fs8:16
  e4.:16\fz d8:16
  c4.:16\fz b8:16
  a16(\fz a') a a a a g g
  fs4.:16\fz e8:16
  d4.:16\fz c8:16
  b4.:16\fz a8:16
  <e g>2\ffz g8(\mf b) b16(\ub a g8) |
  <e g>2\ffz g8(\mf bf) bf16(\ub a g8) |
  \barNumberCheck#rehearsalTwo
  \repeat tremolo 4 {e16(\mp g} |
  \repeat tremolo 4 {e16 g)} |
  \repeat tremolo 4 {d16(\> g} |
  \repeat tremolo 4 {d16\p fs)} |
  \repeat tremolo 4 {d16( f} |
  \repeat tremolo 4 {f16 a)} |
  \repeat tremolo 4 {d,16(\pp f} |
  \repeat tremolo 4 {f16 a)} |
  \repeat tremolo 4 {d,16( f} |
  \repeat tremolo 4 {e16 a)} |
  ef16(\pp g ef g e g e g) |
  ef16( g ef g e g e g) |
  ef16( g ef g e g e g) |
  ef16( g ef g e g e g) |
  \barNumberCheck#rehearsalThree
  bf8\ppp r8 r4 |
  R2*7
  \repeat tremolo 4 {d,16(\ppp bf'}
  \repeat tremolo 4 {d,16 a')}
  \repeat tremolo 4 {d,16( bf'}
  d, a' d, a' d, bf' d, bf')
  \repeat tremolo 4 {d,16( bf'}
  \repeat tremolo 4 {d,16 a')}
  \repeat tremolo 4 {d,16( bf'}
  d, a' d, a' d, bf' d, bf')
  \repeat unfold 4 {g16-. g'16-.}
  \repeat tremolo 4 {g,16\<^\markup\italic"non legato" g'16}
  \repeat tremolo 4 {g,16 g'16}
  \repeat tremolo 4 {g,16 g'16}
  \repeat tremolo 4 {gs,16(\f\> b16)}
  \repeat tremolo 4 {gs16(\p b16)}
  \repeat tremolo 4 {gs16(\f\> b16)}
  \repeat tremolo 4 {gs16(\p b16)}
  \repeat tremolo 4 {gs16( b16)}
  \repeat tremolo 4 {gs16( b16)}
  \repeat tremolo 4 {e,16(\< a16)}
  \repeat tremolo 4 {f16( a16)}
  \repeat tremolo 4 {e16( g16)}
  \repeat tremolo 4 {e16( a16)}
  \barNumberCheck#rehearsalFour
  b16-.\f e-. e-. b'-. b-. e-. e-. b-. |
  b,16-. e-. e-. b'-. b-. e-. e-. b-. |
  e,,16-. b'-. b-.\> e-. e-. b'-. b-. e,-. |
  e,16-. b'-. b-. e-. e,-. b'-. b-. e-. | \partPageBreak
  \times4/6 <g, b>2.:8 \p\<
  \times4/6 <g b>2.:8
  \times4/6 <g b>2.:8 \fz\>
  \times4/6 <g b>2.:8
  <g b>8(\p d8 <g b>8 d8)
  <c' e>8( d,8 <c' e>8 d,8)
  <b' d>8( d,8 <b' d>8\> d,8)
  <<
    { d'( d, d' d,) } \\
    { c'( d, c' d,) }
  >>
  \times2/3 { <ds g>4.:8 \pp}
  \times2/3 { <e g>:8 }
  \times2/3 { <fs g>:8\< }
  \times2/3 { <e g>:8 } |
  \times2/3 {g4.:8 \f}
  <<
    \times2/3 {g8 g g} \\
    \times2/3 {fs8 fs e}
  >>
  \times 4/6 <ef g>2.:8 \>
  <g b>8(\p d8 <g b>8 d8)
  c'8(\< d,8 c' d,8)
  b'8( d,8 b' d,8)
  c'8(\> d,8 c' d,8)
  b'8( d,8 b' d,8)
  \repeat unfold 3 { c'8( d,8 c' d,8) } |
  c'4(\pp a c\> a c\ub a8 g fs2)
  \barNumberCheck#rehearsalFive
  g2(\ppp ~g b~b) d,~d |
  e4( d8 fs g2)
  \repeat tremolo 4 {g16( b16}
  \repeat tremolo 4 {g16 b16)}
  \repeat tremolo 4 {g16( b16)}
  \repeat tremolo 4 {fs16( b16)}
  \repeat tremolo 4 {fs16( c'16)}
  \repeat tremolo 4 {g16( b16)}
  e,16( a e a fs c' fs, c') |
  \repeat tremolo 4 {g16(\< b16)}
  e,16( a e a fs a fs a) |
  \repeat tremolo 4 {g16( b16)}
  \repeat tremolo 4 {g16( a16)}
  \repeat tremolo 4 {g16( a16)}
  \repeat tremolo 4 {c16( d16)}
  \repeat tremolo 4 {c16( d16)}
  <b d>2:16\ff
  <g' b>2:16 <g b>:16 <g b>:16
  \clef treble
  <g b>16 <g b> <g b> <g b> g' g fs fs |
  g g fs fs g g fs fs |
  g8 r %\tag #'part \clef alto
  %{%} <b,, a'> r | b r r4 R2*2
  \tag #'part \break
  \barNumberCheck#rehearsalSix
  %\clef treble
  g''8 r \tag #'part \clef alto
  %{%} b,4->\fz\ub ~b g( ~ g16 b) b-. b-. b( g') g-. g-. |
  g2\fz ~g8 r8 b,4\fz\ub ~b g( ~ g16 b) b-. b-.\> b( g') g-. g-. |
  g( b,) b-. b-. b( g) g-. g-. |
  \tag #'score \clef alto
  \repeat tremolo 4 {ds16(\p g)\>}
  \repeat tremolo 4 {ds( g)}
  \repeat tremolo 4 {ds(\pp g)}
  \repeat tremolo 4 {ds( g)}
  e4\ppp r4 R2*3
  \repeat tremolo 4 {gs16(\p b}
  \repeat tremolo 4 {gs( b)}
  \repeat tremolo 4 {gs(\p b}
  \repeat tremolo 4 {gs( b)}
  gs16(b) b(e) e(b) b(fs) |
  gs16(b) b(e) e(b) b(fs) |
  e16(gs) gs(cs) cs(gs) gs(ds)|
  e16(gs) gs(cs) cs(gs) gs(ds)|
  cs8\(\pp e16 cs e cs e cs e\ub cs d b cs a d b\) |
  \set crescendoText = \markup\whiteout\italic"cresc. poco a poco"
  \set crescendoSpanner = #'text
  e16\( cs e cs e cs e cs | e\ub cs d b cs\< a d b\) |
  \unset crescendoSpanner
  e16\( c e c e c e c | e\ub c d b c a d b\) |
  e16\( c e c e c e c | e\ub c d b c a c e\) |
  \barNumberCheck#rehearsalSeven
  s2*0\f <<
    \repeat unfold 4 {a,8:16 d:16 c:16 a:16 } \\
    \repeat unfold 4 {f8:16 bf:16 a:16 f:16 }
  >>
  s2*0\ff \repeat unfold 4 <c' ef>2:16
  s2*0\f <<
    \repeat unfold 4 {a8:16 d:16 cs:16 a:16 } \\
    \repeat unfold 4 {fs8:16 b:16 a:16 fs:16 }
  >>
  s2*0\ff \repeat unfold 4 <ds' fs>2:16
  <ds fs>16\fz <ds fs> r8 \repeat unfold 4 <ds fs>16
  <ds fs>16\fz <ds fs> r8 \repeat unfold 4 <ds fs>16
  <d f>16\fz <d f> r8 \repeat unfold 4 <d f>16
  <d f>16\fz <d f> r8 \repeat unfold 4 <d f>16
  cf'16\ff bf r8 af16 gf r8 | f16 ef r8 d16 cf r8 |
  bf16 af r8 gf16 f r8 | ef16 d d cf' cf bf bf ef, |
  <gf' bf>2:16\ff <gf bf>2:16 <gf ef>2:16 <gf bf>2:16
  d,16( fs! b!) b-. fs( b ds) ds-. |
  \repeat unfold 3 {ds,16( fs b) b-. fs( b ds) ds-. }
  \barNumberCheck#rehearsalEight
  <g! b!>2:16\ff <g b>2:16 <e c'!>2:16 <g b>2:16
  \repeat unfold 4 { e,16( g c) c-. g( c e) e-. }
  <f, af>4:16\ff <f af>8:16 <e g>8:16 |
  <f af>4:16\ff <f af>8:16 <e g>8:16 |
  <f af>2:16 <fs a>2:16
  \repeat unfold 6 { <gf bf>8 r } <g b> r <af c> r |
  <a cs> r r4 R2*7 \partPageBreak
  s2*0\pp \repeat unfold 4 af2:16
  s2*0\< \repeat unfold 4 a2:16
  \barNumberCheck#rehearsalNine
  \times4/6 {g16\fp e'' e e e e} \times4/6 e4.:16 |
  e2:32\pp e:32
  e8:32 b:32 g:32 e:32 | b2:32 b:32 b:32
  <g b>:32 <g b>:32\pp <g b>:32
  <<
    {e'4:32 c8:32 e:32} \\
    g,2:32
  >>
  <b d>2:32 d:32 d:32\< d:32
  \acciaccatura ds8
  b4.\ff ds,8-.\< fs-. b4.->\fz c!4.\fz-> a8 fs8 ds4. |
  cs4.->\< e8-. a-. cs4.->\! d4.\fz-> b8 gs8 d4. |
  \clef treble
  e''8.-.(\fz gs16-.) gs8-.( b,-.) |
  b8.-.(\fz e16-.) e8-.( gs,-.) |
  \clef alto
  gs8.-.(\fz b16-.) b8-.( e,-.) |
  e8.-.(\fz gs16-.) gs8-.( b,-.) |
  gs'4. e8 b\> gs4. |
  gs'4. e8 b gs4. |
  \barNumberCheck#rehearsalTen
  \key gs \minor
  gs8\p b4.\> gs8 b4. |
  gs8\pp b4. gs8 b4. |
  gs4(-\markup\italic"legato" b as gs)\>
  gs4( g fs es)
  ds(\ppp ds' ~ds2 ~ds)
  ds,4( ds' ~ds2 ~ds)
  ds,4( ds') ds2
  \repeat unfold 2 {
    \repeat tremolo 4 {b16( ds,}
    \repeat tremolo 4 {as' ds,)}
    \repeat tremolo 4 {b'( ds,} as' ds, as' ds, b' ds, b' ds,)
  }
  gs2:16 gs:16\< gs:16 gs:16
  \repeat tremolo 4 {a16(\f c)}
  \repeat tremolo 4 {a(\p c)}
  \repeat tremolo 4 {a(\f c)}
  \repeat tremolo 4 {a(\p c)}
  \repeat tremolo 4 {a(\p c)}
  \repeat tremolo 4 {a( c)}
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  \repeat tremolo 4 {f,16( bf)\<}
  \repeat tremolo 4 {gf( bf)}
  \repeat tremolo 4 {f( af)}
  \repeat tremolo 4 {f( bf)}
  <a! c,>2:16\ff <a c,>:16\> <a c,>:16 <a c,>:16
  <<
    {s2\p\< s2 s2\mf\> s2}
    \repeat unfold 4 \times4/6 <af c>2.:8
  >>
  \key af\major
  \repeat tremolo 4 {c16(\p ef} \repeat tremolo 4 {df f)}
  \repeat tremolo 4 {c16( ef\>} \repeat tremolo 4 {df ef)}
  \times2/3 <e, af>4.:8 \times2/3 <f af>4.:8 |
  \times2/3 <g af>4.:8\< \times2/3 <f af>4.:8 |
  \times2/3 af4.:8\fz
  s2*0\>
  <<\times2/3{af8 af af} \\ \times2/3{g g f}>>
  \times4/6 <ff af>2.:8
  \repeat tremolo 4 {c'16(\p ef} \repeat tremolo 4 {df16 ef)}
  \repeat tremolo 4 {c16( ef} \repeat tremolo 4 {df16 ef)}
  \repeat tremolo 4 {c16( ef\>} \repeat tremolo 4 {df16 ef)}
  \repeat tremolo 4 {c16(\pp ef} \repeat tremolo 4 {df16 ef)}
  df4\(\ppp bf df bf df\ub bf8 af g2\)
  \barNumberCheck#rehearsalTwelve
  <<{c2~c~c~c df( c)} \\ {af2~af~af( g) ef~ef} >>
  f4( bf ef,4. c'8) |
  \repeat tremolo 4 {af16( c} \repeat tremolo 4 {af16 c)}
  \repeat tremolo 4 {af16( c} \repeat tremolo 4 {g16 c)}
  \repeat tremolo 4 {g16( df'} \repeat tremolo 4 {af16 c)}
  f,16( bf f bf) (g df' g, df')
  \repeat tremolo 4 {af16( c)}
  f,16( bf f bf) (g\< df' g, df')
  \repeat tremolo 4 {af16( c)}
  \repeat tremolo 4 {af16( bf)} \repeat tremolo 4 {af16( bf)}
  \repeat tremolo 4 {df16( ef)} \repeat tremolo 4 {df16( ef)}
  <c ef>2:16\f <c ef>:16 <c ef>:16\< <c ef>:16
  \barNumberCheck#rehearsalThirteen
  \key e\minor
  <cs e>2:16\fff <cs e>:16 <cs e>:16 <cs e>:16
  \repeat unfold 4 <c e>2:16
  <c ef>4 r8 <c ef> \repeat unfold 3 {<a ef'>4 r8 <a ef'>}|
  <a ds>2:16\ff \repeat unfold 3 <a ds>:16
  <g e'>16\fz <e g> <e g> <e g> <e g>4:16 |
  <e g>2:16
  <<{
    c'2:16 c:16 b:16 b:16 c:16 c:16
  } \\ {
    \repeat unfold 6 <e, g>2:16
  }>>
  s2*0\fz \repeat unfold 4 { c'8:16 d:16 ds:16 e:16 }
  <e, g>8 r <e c'> r <ds a'> r <e g> r |
  <fs c'>8 r <e g> r <a ds> r <b e> r |
  <c e>2:16 <e, g>4:16 <fs a>:16
  <e g>4:16 <e g>:16 <c' e>8 r <fs, a> r |
  <<
    {s2*4 s2*4\ff}
    {
      \repeat unfold 4 {g'4:16 g8:16 fs:16 }
      \repeat unfold 4 g2:16
    } \\ {
      \repeat unfold 4 {e4:16 e8:16 ds:16 }
      \repeat unfold 4 e2:16
    }
  >>
  \repeat unfold 4 <e, g>2:16
  <e g>8 r <b' g'> r |
  r4 <b g'>8[\ub r16 <b g'>]
  \repeat unfold 3 {<b g'>8 r8 r4} \partPageBreak
}

cellomA = \relative c {
  \clef bass
  \key e \minor
  s1*0\pp
  e'4( ~ e16 d8 e16 b2) |
  c4(~ c16 b8 c16 g2) |
  a4(~ a16 g8 a16) b8-. r c-. r |
  b8-. r r4 r2
  R1*3
  \trCueWhile "flute1mA" "flute 15ma" #UP c, {
    R1 r2
  } r4 r16\ff d,8-> ef16-. |
  a,16-. r8. r4 r4 r16 d8-> ef16-. |
  a,16-. r8. r4 r4 r16 d8-> ef16-. |
  a,16-. r8. r16 d8-> ef16-. a,16-. r8. r16 d8-> ef16-. |
  a,2(\fp\> c4 ef,) |
  gf2(\pp f4 ef) |
  bf'1\pp |
  d,8.->\< f16\ub af16 bf8. cf8.->\f\>\db af16 gf16 f8.\!
  bf1\pp
  es,8.->\< gs16\ub b16 cs8. d8.->\f\>\db b16 a16 gs8.\!
  <b gs' d'>16\f r8. r4 <b gs' d'>16 r8. r4 |
  <b fs' ds'>16 r8. r4 <a fs' ds'>16 r8. r4 |
  c8-> g''-> e->\< c-> bf-> g->
  \once\override TupletBracket #'padding = #2
  \cueWhile "trombone1mA" "trombones" #UP \times 2/3{ e-> cs-> as->} |
  b16\sf r8. b16 r8. r2
  R1 %\partPageBreak
  \barNumberCheck#allegroMolto
  e4\pp^\pizz r
  R2
  c4 r e4 r
  e8(\pp^\arco g b b,) e( g b b,) e( g b b,) e2 |
  e2:16 e2:16 c:16 g':16
  g8( b d d,) g8( b d d,) g8( b d d,)
  b4.\ff ds8\< | fs b4.-> | c4.->\ffz a8 fs e4.-> |
  ds4.-> fs8\< | b ds4.-> | e4.->\ffz c8 b a4.-> |
  \barNumberCheck#47
  a,2\f a'\fz a, a'\fz a,4 a'\< a, a' |
  gs,8\fz a4.-> gs8\fz a4.-> a8\fz bf4.-> a8\fz bf4.-> |
  b8-. cs-. ds-.\<e-. es-. fs-. ds-. b-. |
  e4.->\fff g8-. b8-. e4.-> | g4\fz e8-. c-. b-. e,4.-> |
  e4 r8 b e4 r8 b e4 r |
  r4 r8 e\f a,4 r r r8 a\f d4 r r r8 d\f g,4 r4 |
  r4 r8 g\f
  cs2\ffz g'8(\mf b) b16( a g8) |
  c,!2\ffz g'8(\mf bf) bf16( a g8)
  \barNumberCheck#rehearsalTwo
  cs,2(\mp c) b2(\> a)\p gs2(\> a) gs(\pp a) b( c)
  cs2\pp ~cs ~cs ~cs (
  \barNumberCheck#rehearsalThree
  d8)\ppp r r4
  R2*7 %\partPageBreak
  <<
    s1^\pizz \ppp
    \repeat unfold 8 { <g, d'>4 <g d'> }
    \tag#'part { \repeat percent 8 s2 }
  >>
  g8-.^\arco  bf-.  bf16(\< a g8) |
  a16( c) c( a) c4-> |
  bf8-. d-.  d16( c bf8) | c16( ef) ef( c) ef4-> |
  d2\f\> ~ d\p
  ds2\f\> ~ ds\p
  e8^\pizz b' e r8
  e,8 b' e r8 |
  a,,8 e' a r8 |
  f,8 c' f r8 |
  c8 g' c r8 |
  a,8 e' a r8 |
  \barNumberCheck#rehearsalFour \partPageBreak
  <e, b'>2:16\f <e b'>:16 <e b'>:16 <e b'>2*7/8:16\> s2*1/8\!
  e'4(\p\< ds) fs( e) g(\fz\> fs8 e) cs2
  <<
    \repeat unfold 4 { d8 r \times 2/3{ d d d } }
    {s2*2\p s2*15/8\> s2*1/8\! }
  >>
  s1*0\!
  b'2\pp ~ b\< b cs\ffz\> d4\p g ~ g2\< ~ g4\> d4 ~ d2 ~ d ~ d ~ d ~ d
  d,\pp ~d\> ~d ~d
  \barNumberCheck#rehearsalFive
  g2\ppp ~g( e)( b) a4( d g,2) a4( d g,2)
  g2 ~g e b' a4( d, g2) a4( b)
  b'8(\< g d b) a( c) d( c')
  b8( g d b)
  g'\(( e) c( a)\) g'\(( e) c( a)\)
  c'\(( a) fs( d)\) c'\(( a) fs( d)\) |
  g4.\ff g8 e d4. | g8. b16 d8-. d-. d4 r8 d,8 g d g d g d g d |
  g r fs r b, r r4 R2*2
  \barNumberCheck#rehearsalSix
  g'8.\ff\< b16 ds8-. ds-. ds2\fz
  b8 r8 g4\fz~ | g8 g, g16(b) b(g') |
  g8.\< b16 \times2/3{ds8 ds ds\!} |
  ds2\fz ~ds\> ~ds
  <<
    ds~
    { s4\p
    s4\> }
  >>
  ds2 ~ds\pp ~ds e4 r4 R2*3 %\partPageBreak
  e2\ppp~e e~e |
  e4^\pizz r8 b8 e4 r8 b |
  cs4 r8 gs  cs4 r8 gs^\arco |
  \repeat unfold 2 { a8.->\fp a16 fs-.\> e-. r8 R2\! }
  a8.->\puf a16 f-.\> e-. r8 R2\!
  a8.->\f a16 f-.\> e-. r8 R2\!
  \barNumberCheck#rehearsalSeven
  s2*0\f^\div
  <<
    \repeat unfold 4 {a8( d) c( a)} \\
    \repeat unfold 4 {f8( bf) a( f)}
  >>
  c4.\ff ef8 fs a4.-> c-> a8 fs ds4.
  s2*0\f^\div
  <<
    \repeat unfold 4 {a'8( d) cs( a)} \\
    \repeat unfold 4 {fs8( b) a( fs)}
  >>
  ds4.\ff fs8 a c!4.-> ds-> c!8 a fs4.
  ds8 r ds'8.\fz ds16| ds,8 r ds'8.\fz ds16|
  d,8 r d'8.\fz d16| d,8 r d'8. d16|
  \tag #'part \clef tenor
  cf'8.[ bf16] af8. gf16 f8. ef16 d!8. cf16 |
  \tag #'part \clef bass
  bf8. af16 gf8. f16 ef16 ef d! d cf cf bf bf |
  ef4.\ff gf8 bf ef4.-> gf4-> ef8 cf bf ef,4. |
  ds,16( fs! b!) b-. fs( b ds) ds-. |
  \repeat unfold 3 {ds,16(\db fs b) b-. fs( b ds) ds-. }
  \barNumberCheck#rehearsalEight
  e4.\ff g8 b e4.-> g4-> e8 c b e,4.
  s2*0\db \repeat unfold 4 { e,16( g c) c-. g( c e) e-. }
  f4\ff r8 c | f4 r8 c | f4 r8 c | fs4 r8 c |
  \repeat unfold 6 {c r} cs r d r ds r r4 R2*7 \partPageBreak
  s2*0\pp \repeat unfold 4 f2:16
  s2*0\< \repeat unfold 4 fs2:16
  \barNumberCheck#rehearsalNine
  s2*0\f e8 r8 r4
  e8\pp-\pizz r r4 | c4 r e r |
  e8(-\arco g b b,) e( g b b,) e( g b b,) |
  e2 d2:32\pp e2:32 c:32 g':32
  e8( g b b,) e(\< g b b,) e( g b b,) |
  \acciaccatura ds8
  b4.\ff ds8-.\< fs-. b4.->\fz c!4.\fz-> a8 fs8 ds4. |
  cs4.->\< e8-. a-. cs4.->\! d4.\fz-> b8 gs8 d4. |
  d'4.\fz b8 gs d4. d'4.\fz b8 gs d4. |
  d8. e16 e8-. d-. | d8.\> e16 e8-. d-. |
  d8. e16 e8-. d-. | d8. e16 e8-. d-. |
  \barNumberCheck#rehearsalTen
  \key gs\minor
  d8.\p e16 e8-. d-. | d8.\> e16 e8-. d-. |
  d8.\pp e16 e8-. d-. | d8. e16 e8-. d-. |
  d8. e16 e8-. d-. | d8. e16 e8-.\> d-. |
  d2~d ds(\ppp ds') ~ds ds,( ds') ~ds ds,( ds') |
  <<
    s2\ppp
    {\repeat unfold 7 { <ds, gs,>2 ~ } <ds gs,>}
    \tag#'part { \repeat percent 8 s2 }
  >> %\partPageBreak
  gs,8-. b-. b16( as gs8) as16(cs) cs(\< as) cs4 |
  b8-. ds-. ds16( cs b8) cs16( e) e(cs) e4 |
  ds2\f\> ~ds\p e\f\>~e\p
  f,8\p^\pizz c' f r | f, c' f r|
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  bf,8\< f' bf r | gf, df' gf r | df af' df r | bf, f' bf r\! |
  f,2:16\ff f:16\> f:16 f:16
  f'4(\p\< e) g(f) af(\mf g8 f) d2\fz\>
  \key af\major
  ef4(\p ef') ~ ef2 ~ ef\> ~ ef
  c\mp\< ~c c\fz d\fz\>
  \override PercentRepeatCounter #'direction = #DOWN
  \override PercentRepeatCounter #'padding = #0.5
  <<
    s2*4\p s2*4\>
    {\repeat unfold 7 { ef2 ~ } ef }
    \tag #'part { \repeat percent 8 s2 }
  >>
  \revert PercentRepeatCounter #'direction
  \revert PercentRepeatCounter #'padding
  ef,2\ppp ~ef~ef~ef
  \barNumberCheck#rehearsalTwelve
  af2~af
  f2( c)( bf4 ef, af2) df4( ef af,2) ~af ~af
  f2( c')( bf4 ef, af2) df4(ef)
  c'8( af) ef(c) bf-.\< df-. ef-. df'-. | c( af) ef(c) |
  af'8( f df bf) af'( f df bf) df'( bf g ef) df'( bf g ef) |
  af,2\f ~af gf2\< ~gf
  \barNumberCheck#rehearsalThirteen
  \key e\minor
  <<
    {e2:32\fff \repeat unfold 7 e:32 }
    \tag #'part {\repeat percent 8 s2}
  >>
  \repeat unfold 4 { f4 r8 f' } |
  b,2:16\ff \repeat unfold 3 b:16
  c\fz ~c a\fz ~a  g\fz ~g a\fz ~a
  s2*0\fz \repeat unfold 4 {c8:16[ d:16 ds:16 e:16]}
  g,8 r a r b r c r d r e r fs r g r |
  a4-> a,8-. r b'4-> b,8-. r |
  c'8( b) g-. e-. a, r b r |
  \repeat unfold 2 { e8 b'e b }
  \repeat unfold 4 {e,8 b}
  e4.->\ff g8 b e4.-> g4-> e8 c g e4 c8 |
  g8 e c' g e' c g' e | c'4 b8 g e c b g |
  e8 r e' r |
  r4 e8[( r16 e])
  \repeat unfold 3 {e8 r8 r4} \partPageBreak
}

bassmA = \relative c {
  \clef "bass_8"
  \key e \minor
  e2(\pp d)
  c2( b)
  a2 e8-. r a-. r
  e8-. r r4 r2
  R1*3
  \tag #'part \clef treble
  \cueWhile "flute1mA" "flute" #UP {
    R1 r2
  } \tag #'part \clef "bass_8"  r4 r16\ff d8-> ef16-. |
  a,16-. r8. r4 r4 r16 d8-> ef16-. |
  a,16-. r8. r4 r4 r16 d8-> ef16-. |
  a,16-. r8. r16 d8-> ef16-. a,16-. r8. r16 d8-> ef16-. |
  a,2(\fp\> c4 ef,) |
  gf2(\pp f4 ef) |
  bf'4--\pp bf-- bf-- bf-- |
  bf16 r8. r4 r2 |
  bf4--\pp bf-- bf-- bf-- |
  bf16 r8. r4 r2 |
  b!16\f r8. r4 b16 r8. r4
  b16 r8. r4 c16 r8. r4 |
  c8-> g''-> e->\< c-> bf-> g->
  \once\override TupletBracket #'padding = #2
  \trCueWhile "trombone1mA" "trombones" #UP c \times 2/3{ e-> cs-> as->}
  b16\sf r8. b16 r8. r2
  R1
  \barNumberCheck#allegroMolto
  e4\pp^\pizz r
  R2
  c4 r e4 r
  e4 r8 b e4 r8 b e4 r8 b e4 r |
  e4 r e r c r g' r |
  g4 r8 d g4 r8 d g4 r8 d |
  b4.\ff^\arco ds8\< | fs b4.-> | c4.->\ffz a8 fs e4.-> |
  ds4.-> fs8\< | b ds4.-> | e4.->\ffz c8 b a4.-> |
  \barNumberCheck#47
  a,2\f a'\fz a, a'\fz a,4 a'\< a, a' |
  gs,8\fz a4.-> gs8\fz a4.-> a8\fz bf4.-> a8\fz bf4.-> |
  b8-. cs-. ds-.\<e-. es-. fs-. ds-. b-. |
  e4.->\fff g8-. b8-. e4.-> | g4\fz e8-. c-. b-. e,4.-> |
  e4 r8 b e4 r8 b e4 r |
  r4 r8 e\f a,4 r r r8 a\f d4 r r r8 d\f g,4 r4 |
  r4 r8 g\f |
  cs2\ffz R2 c!\ffz R2
  \barNumberCheck#rehearsalTwo
  cs'4^\pizz \mp r c r b\> r a\p r
  gs\> r a r gs\pp r a r b r c r cs r R2*3 |
  \barNumberCheck#rehearsalThree
  d8\ppp r r4 R2*11
  \tag#'part \clef treble
  \cueWhile "violin2mA" "violin II" #UP R2*4
  \tag#'part \clef "bass_8"
  g,,8-.^\arco -\ub  bf-.\db  bf16(\<\ub a g8) |
  a16(\db c) c(\ub a) c4->\db |
  bf8-.\db d-.  d16( c bf8) | c16( ef) ef( c) ef4-> |
  d2\f\> ~ d\p
  ds2\f\> ~ ds\p
  e4.\p e8 e4. e8 a,4.\< a8 f4. f8 c'4. c8 a4. a8 | \partPageBreak
  \barNumberCheck#rehearsalFour
  e2:16\f e:16 e:16 e2*7/8:16\> s2*1/8\!
  e'4(\p\< ds) fs( e) g(\fz\> fs8 e) cs2
  <<
    \repeat unfold 4 { d8 r \times 2/3{ d d d } }
    {s2*2\p s2*15/8\> s2*1/8\!}
  >>
  s1*0\! ds4(\pp e) fs(\< e) g(\f fs8 e) ef2\ffz\>
  <<
    \repeat unfold 8 { d8 r \times 2/3{ d d d } }
    {s2\pp s2\< s2*6\>}
  >>
  d8\pp r8 r4 R2*3
  \barNumberCheck#rehearsalFive
  \tag#'part \clef treble
  \cueWhile "flute1mA" "flute" #UP R2*8
  \tag#'part \clef "bass_8"
  g4^\pizz \pp r g r e r b r a d g,2 | c4 d |
  b'8(^\arco \< g d b) a(c) d(c') |
  b8( g d b) g'\(( e) c(a)\) g'\((e) c(a)\) |
  c'\((a) fs(d)\) c'\((a) fs(d)\) |
  g4.\ff g8 e d4. | g8.\db b16\ub d8-. d-. | d4 r8 d, |
  \repeat unfold 4 { g8 d }
  g8 r fs r b, r r4 R2*2
  \barNumberCheck#rehearsalSix
  g'8.\db\ff\< b16\ub ds8-. ds-. | ds2\fz
  b8 r8 g4\fz~ | g8 g, g16(b) b(g') |
  g8.\<\db b16 \times2/3{ds8\ub ds ds\!} |
  ds2\fz ~ds\> ~ds ~ds4\p r4 | R2*7
  e4\ppp^\pizz r R2*15
  \barNumberCheck#rehearsalSeven
  c,4\db\f r8 c16\db c\ub |
  \repeat unfold 3 {c4 r8 c16 c}
  c4.\ff ef8 fs a4.->\! c-> a8 fs ds4.
  s2*0\f
  \repeat unfold 4 {cs4 r8 cs16 cs}
  ds4.\ff fs8 a c!4.->\! ds-> c!8 a fs4.
  ds8 r ds'8.\fz ds16| ds,8 r ds'8.\fz ds16|
  d,8 r d'8.\fz d16| d,8 r d'8. d16|
  d8 r af'8.\ff gf16 f8. ef16 d!8. cf16 |
  bf8. af16 gf8. f16 | ef8-. d!-. cf-. bf-. |
  ef4.\ff gf8 bf ef4.-> gf4-> ef8 cf bf ef,4. |
  \repeat unfold 3 { ds4-> fs-> } ds4-> fs8\db b, |
  \barNumberCheck#rehearsalEight
  e4.\ff g8 b e4.-> g4-> e8 c b e,4.
  s2*0\db \repeat unfold 3 { e4-> g-> } e4-> g8\db c, |
  f4\ff r8 c | f4 r8 c | f4 r8 c | fs4 r8 c |
  \repeat unfold 6 {c r} cs r d r ds r r4 R2*8 \partPageBreak
  bf4\pp^\pizz r8 d f af4 r8 |
  bf4 d8 f fs\< ds b r |
  r8 ds8 b fs | b a fs ds | b a fs b |
  \barNumberCheck#rehearsalNine
  e,8\f r8 r4
  e'8\pp r r4 | c4 r e r |
  e4 r8 b8 e4 r8 b e4 r8 b8 | e4 r |
  e\pp r e r c r g' r | g4 r8 d g4\< r8 d g4 r8 d |
  b4.\ff ds8-.\< fs-. b4.->\fz c!4.\fz-> a8 fs8 ds4. |
  cs4.->\< e8-. a-. cs4.->\! d4.\fz-> b8 gs8 d4. |
  d'4.\fz b8 gs d4. d'4.\fz b8 gs d4. |
  d8. e16 e8-. d-. | d8.\> e16 e8-. d-. |
  d8. e16 e8-. d-. | d8. e16 e8-. d-. |
  \barNumberCheck#rehearsalTen
  \key gs\minor
  d8.\p e16 e8-. d-. | d8.\> e16 e8-. d-. |
  d8.\pp e16 e8-. d-. | d8. e16 e8-. d-. |
  d8-. r8 r4 R2*3
  ds8^\pizz r8 r4 |
  r4 ds'8\ppp ds, \repeat unfold 3 { R2 r4 ds'8 ds, }
  \repeat unfold 4 {gs8 r gs, r R2 }
  gs8-.\pp^\arco b-. b16( as gs8) as16(cs) cs(\< as) cs4 |
  b8-. ds-. ds16( cs b8) cs16( e) e(cs) e4 |
  ds2\f\> ~ds\p e\f\>~e\p f\p ~f
  \barNumberCheck#rehearsalEleven
  \set Staff.keySignature = #`()
  bf,2\< gf df' bf2*7/8 s2*1/8\!
  f2:16\ff f:16\> f:16 f:16
  f'4(\p\< e) g(f) af(\mf g8 f) d2\fz\>
  \key af\major
  <<
    {s2*2\p s2\> s2}
    \repeat unfold 4 { ef8 r \times2/3{ ef ef ef }  }
  >>
  e4(\mp\< f) g(f) af->(\fz g8 f) |
  ff2\fz\>
  <<
    {s2*4\p s2*4\>}
    \repeat unfold 8{ ef8 r \times2/3{ ef ef ef } }
    \tag #'part {\repeat percent 8 s2}
  >>
  ef8\ppp r r4
  R2*3
  \barNumberCheck#rehearsalTwelve
  R2*8
  af4\pp^\pizz r af r f r c r bf ef af, r |
  df(\ub^\arco ef)
  c'8(af) ef(c) | bf-.\< df-. ef-. df'-. |
  c8(af) ef(c) | af'( f ef bf) af'( f df bf) df'( bf g ef) df'( bf g ef) |
  af,2\f ~af gf2\< ~gf
  \barNumberCheck#rehearsalThirteen
  \key e\minor
  <<
    {e2:32\fff \repeat unfold 7 e:32 }
    \tag #'part {\repeat percent 8 s2}
  >>
  \repeat unfold 4 { f4 r8 f' } |
  b,2:16\ff \repeat unfold 3 b:16
  c\fz ~c a\fz ~a  g\fz ~g a\fz ~a
  \repeat unfold 4 { a4 r4 }
  g8 r a r b r c r d r e r fs r g r | \partPageBreak
  a4-> a,8-. r b'4-> b,8-. r |
  c'8( b) g-. e-. a, r b r |
  \repeat unfold 2 { e8 b'e b }
  \repeat unfold 4 {e,8 b}
  e4.->\ff g8 b e4.-> g4-> e8 c g e4 c8 |
  g8 e c' g e' c g' e | c'4 b8 g e c b g |
  e8 r e'\db r |
  r4 e8[\ub( r16 e])
  \repeat unfold 3 {e8 r8 r4}
}

