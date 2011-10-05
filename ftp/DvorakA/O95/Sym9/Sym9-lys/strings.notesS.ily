\version "2.14.0"

violinImS = \relative c''' {
  \key e\minor
  e4\f r r R2.
  b4\db r r R2.*4
  d,,8\f\> d d2~ |
  <<
    {d4 d-.\p d-. \repeat unfold 30 d4-. }
    {s2. s\> s\pp s\> s\ppp}
    \repeat percent 11 s2.
  >>
  b'4-. g8( b g4) |
  e8 r b''(-.\pp b-. b4-.) |
  e,4(-. e)-. r |
  r fs-. a-. |
  g8(-. fs-. e4)-. r |
  r b'8(-. b-. b4)-.\ub |
  e,4(-. e)-. r |
  r fs-. a-. |
  g8 fs e4 r |
  r e-.\mf\db g-. |
  e8 d b4-. d8 b |
  g4-.\< g8 e d g |
  e d b e d b |
  r4\! g'8-.\ff\db g-. e4-. |
  g-. g-. e-. |
  g8-. g-. e4-. b'-. |
  g-. b-. g-. |
  b-. g'8-. g-. e4-. |
  g4-. g-. e-. |
  g8-. g-. e4-. b'-. |
  g-. b-. g-. |
  b-. b'8 b b4 |
  e,4-. e-. r |
  r fs-.\ub a-. |
  g8 fs e4 r |
  r b'8 b b4 |
  e,4-. e-. r |
  r fs-.\ub a-. |
  g8 fs e4 e8 b |
  \barNumberCheck#OnemS
  \override PercentRepeatCounter #'direction = #DOWN
  <<
    s2.\ff
    \repeat unfold 7 e2.:16
    \repeat percent 7 s2.
  >>
  \repeat unfold 4 { e8 e e4 } \alternative {e4 r4}
  e8\fp c b4 r R2.
  e,,8\p\> c b4 r\! |
  e8\> c b4 r\! R2.*4
  \key e\major
  R2.*29
  \trCueWhile "cellomS" "cello 8vb" #DOWN c'' R2.*2
  \barNumberCheck#TwomS
  r4 b''8(-.\ppp b-. b4)-. |
  e,-. e-. r |
  r fs-. a-. |
  gs8-. fs-. e4-. r |
  r b'8(-. b-. b4)-. |
  e,-. e-. r |
  r fs-. a-. |
  gs8-. fs-. e4-. r |
  r b'8\pp b b4 |
  e,-. e-. r |
  r c'8\< c c4 |
  f,-. f-. r |
  r cs'8 cs cs4 |
  fs,-. fs-. r |
  r d'8\mf\ub d d4 |
  r ds8\<\db ds ds4 |
  r e8\ub e e4 |
  r f8\f f f4 |
  r fs8\ub_\markup{\italic"più"\dynamic"f"} fs fs4 |
  g8\< g g4 gs8 gs |
  gs4 a8 a a4 |
  a8 a a4 a8 a |
  a4 a8 a a4 |
  a8 a a as b b, |
  \barNumberCheck#ThreemS
  \key e\minor
  e\fff r b' b b4 |
  e,-. e-. r |
  r fs-. a-. |
  g8 fs e4 r |
  r b'8 b b4 |
  e, e r |
  r fs a |
  g8 fs e4 a |
  g8 fs e4 a |
  g8 fs e4 a |
  g8 fs e4 a |
  g8 fs e4 r |
  g8 fs e4 r |
  g8 fs e4 r |
  g8 fs e4 r |
  g8\ffz\> fs e2~ | e2.\! |
  g8\ffz\> fs e2~ | e2.\! R2.
  r4 b8\p b b4 |
  e,-. e-. r R2.*9 \partPageBreak
  \barNumberCheck#FourmS
  R2.*12
  \cueDuring "violamS" #DOWN {
    R2.*2
    \tag #'part s2.*0_\markup\tiny"viola"
    R2.*3 r4 r
  } af4(\ppp\db |
  g c, a' |
  g c, a' |
  g c,) a'( |
  g c, a' |
  g c,) a'( |
  g c,) a'( |
  g c,) a'( |
  g c, a' |
  g c,) a'( |
  g g, f' |
  e c) d'( |
  c e, a |
  g c,) a'( |
  g c, a' |
  g c,) a'( |
  g c, a' |
  g b,) g'( |
  f g e) |
  e( c d |
  g, c) a'4*7/8( \hideNotes g4*1/8) |
  \grace d4^( \unHideNotes g,4 c4) c'-.
  \barNumberCheck#FivemS
  b8\((\mf\ub g' b,) r a\) r |
  g2.*5/6\startTrillSpan s8\stopTrillSpan
  fs8\(( d' fs,) r e\) r |
  d2.*5/6\startTrillSpan s8\stopTrillSpan
  c8\((\p a' c,) r b\) r |
  a2.*5/6\startTrillSpan\> s8\stopTrillSpan
  g8\((\pp e' g,) r fs\) r |
  g2.*5/6\startTrillSpan s8\stopTrillSpan R2.*8
  \times2/3{ b8\((\ub\p g' b, } g') r fs\) r |
  e2.*5/6\startTrillSpan s8\stopTrillSpan
  \times2/3{ b8\((\ub g' b, } g') r fs\) r |
  e2.*5/6\startTrillSpan s8\stopTrillSpan
  \acciaccatura b8 b'2.(~b2.~b2 b,4)
  b2~\startTrillSpan\pp^\markup\sharp b8\stopTrillSpan r R2.
  e2~\startTrillSpan e8\stopTrillSpan r R2.
  f2~\startTrillSpan f8\stopTrillSpan r R2.
  f2~\startTrillSpan f8\stopTrillSpan r R2.
  <<
    {s2.\pp s s s s s s s s\< s s s s s s\fz }
    \repeat unfold 16 { \times2/3{ g8( a g }\times2/3{ a g a } g) r }
    \repeat percent 16 s2.
  >>
  \barNumberCheck#SixmS
  r4 g8\p g g4 |
  c, c r |
  r af'8 af af4 |
  cf, cf r |
  r gs'8\< gs gs4 |
  r a8\ub a a4 |
  r as8\db as as4 |
  as8 as b4 c8 c |
  cs4\f\< d8 d ds4 s2.*0\!
  s2.%coda
  \override PercentRepeatCounter #'direction = #UP
  <<
    {s2.\ff s\> s\p\> s s\pp }
    \repeat unfold 12 e,,2.:16
    \repeat percent 12 s2.
  >>
  <<
    {s2.\pp s s s s s s\< s\! }
    \repeat unfold 8 f2.:16
    \repeat percent 8 s2.
  >>
  <fs a>2.:16\fz
  <fs a>2.:16
  cs'2.:16\p cs:16\< fs:16 a:16 cs:16\f\< fs:16 b:16\fff b:16 b:16 b:16 |
  b8 r b b b4 |
  e,-. e-. r |
  r b8\> b b4 |
  e,-. e-. r\! |
  r b8\mf\> b b4 |
  e,-. e-. r\! |
  r b'8\p\> b b4 |
  e,-. e-. r\! |
  r b'8\p b b4 |
  e, r r R2.*4
  b'4\ppp^"pizz" r r |
  e,4 r r R2.*3
  e''4\ff^\arco r r \partPageBreak
}

violinIImS = \relative c'' {
  \key e\minor
  e4\f r r R2.
  b4\db r r R2.
  R2.*4
  <<
    \repeat unfold 12 {b,4 r r}
    {s2.\p^\pizz s\> s\pp s\> s\ppp}
    \repeat percent 12 s2.
  >>
  e8(\pp^\arco fs g fs\< g a |
  b d\> c b a g)\! |
  fs( g a b c d |
  b a g fs e fs) |
  e( fs g fs\< g a |
  b d\> c b a g)\! |
  fs( g a b c d |
  b a g fs e fs) |
  e8 r8 r4 r R2.*3
  r4 ds8-.\ff\db ds-. e4-. |
  ds-. ds-. e-. |
  ds8-. ds-. e4-. b-. |
  b-. b-. b-. |
  b-. ds'8-. ds-. b4-. |
  ds4-. ds-. b-. |
  ds8-. ds-. b4-. g'-. |
  e-. g-. e-. |
  g-. b8 b b4 |
  e,4-. e-. r |
  r fs-.\ub a-. |
  g8 fs e4 r |
  r b'8 b b4 |
  e,4-. e-. r |
  r fs-.\ub a-. |
  g8 fs e4 e8 b |
  \barNumberCheck#OnemS
  g'2.:16\ff g2:16 a4:16 |
  a2.:16 b8 a g2:16 |
  g2.:16 g2:16 a4:16 |
  a2.:16 \repeat unfold 4 { b8 a g4 } \alternative { g4 r4 }
  e4\fp g r e8\fp c b4 r R2.*2
  g8\p g16 r r4 fs8 fs16 r |
  g8\> g16 r r4 fs8 fs16 r |
  g8 g16 r r4 fs8 fs16 r |
  gs8 gs16 r r4 fs8 fs16\pp r |
  \key e\major
  <<
    \repeat unfold 4 {<gs b,>8 <gs b,>16 r r4 <fs b,>8 <fs b,>16 r }
    \repeat percent 4 s2.
  >> <<
    \repeat unfold 3 { <gs b,>8 <gs b,>16 r r4 b8 b16 r }
    \repeat percent 3 s2.
  >>
  fs8 fs16 r r4 <gs b,>8 <gs b,>16 r |
  <<
    \repeat unfold 4 {<gs b,>8 <gs b,>16 r r4 <fs b,>8 <fs b,>16 r }
    \repeat percent 4 s2.
  >> <<
    \repeat unfold 3 { <gs b,>8 <gs b,>16 r r4 b8 b16 r }
    \repeat percent 3 s2.
  >>
  fs4 r <gs b,>8 <gs b,>16 r |
  <a cs,>8\fz <a cs,>16 r r4 <a cs,>8 <a cs,>16 r |
  <a cs,>8\fz <a cs,>16 r r4 <a cs,>8 <a cs,>16 r |
  <gs b,>8\fz <gs b,>16 r r4 b8\pp b16 r |
  <gs b,>8 <gs b,>16 r r4 <b gs>8 <b gs>16 r |
  <a cs,>8\fp <a cs,>16 r r4 <a cs,>8 <a cs,>16 r |
  <a cs,>8 <a cs,>16 r r4 <a cs,>8 <a cs,>16 r |
  <gs b,>8\fz <gs b,>16 r r4 b8\pp b16 r |
  <gs b,>8 <gs b,>16 r r4 <gs b,>8 <gs b,>16 r | <gs b,>4 r r R2.*6
  \barNumberCheck#TwomS
  s1*0\ppp
  <<
    \repeat unfold 8 { d4(-. d-. d)-. }
    \repeat percent 8 s2.
  >>
  r4 b'8\pp b b4 |
  e,-. e-. r |
  r c'8\< c c4 |
  f,-. f-. r |
  r cs'8 cs cs4 |
  fs,-. fs-. r |
  r d'8\mf\ub d d4 |
  r ds8\<\db ds ds4 |
  r e8\ub e e4 |
  r f8\f f f4 |
  r fs8\ub_\markup{\italic"più"\dynamic"f"} fs fs4 |
  g8\< g g4 gs8 gs |
  gs4 a8 a a4 |
  a8 a a4 a8 a |
  a4 a8 a a4 |
  a8 a a as b b, |
  \barNumberCheck#ThreemS
  \key e\minor
  e\fff r b' b b4 |
  e,-. e-. r |
  r fs-. a-. |
  g8 fs e4 r |
  r b'8 b b4 |
  e, e r |
  r fs a |
  g8 fs e4 a |
  g8 fs e4 a |
  g8 fs e4 a |
  g8 fs e4 a |
  g8 fs e4 r |
  g8\ub fs e4 r |
  g8 fs e4 r |
  g8\ub fs e4 r |
  g8\ffz\> fs e2~ | e2.\! |
  g8\ffz\> fs e2~ | e2.\! \partPageBreak
  R2.
  \cueWhile "violin1mS" "violin I" #UP R2.*2
  r4 b8\p b b4 |
  e,-. e-. r R2.*7
  \barNumberCheck#FourmS
  R2.*3
  << \tag#'part {
    \cueWhile "flute1mS" "flute" #UP {s2. s2 }
    \cueWhile "clarinet1mS" "clarinet" #UP {s4 s2 }
    \cueWhile "violamS" "viola" #DOWN {s4 s2 }
  } {
    R2.*3 r4 r
  } >> f(\pp | ef af,) f'( |
  ef af, af') | f2.( ef2.~ef4) r r R2.*6
  r4 c'2\ppp ~ c2. ~c2 r4 |
  r4 r a( |
  g c, a' |
  g c,) a'( |
  g c,) a'( |
  g c, a' |
  g c,) a'( |
  g g, f' |
  e c) d'( |
  c e, a |
  g c,) a'( |
  g c, a' |
  g c,) a'( |
  g c, a' |
  g b,) g'( |
  f g e) |
  e( c d |
  g, c) a'4*7/8( \hideNotes g4*1/8) |
  \grace c,4( \unHideNotes g4 c4) c''-.
  \barNumberCheck#FivemS
  g8\((\mf\ub b g) r f\) r |
  e2.*5/6\startTrillSpan s8\stopTrillSpan
  d8\(( fs d) r c\) r |
  b2.*5/6\startTrillSpan s8\stopTrillSpan
  a8\((\p c a) r g\) r |
  fs2.*5/6\startTrillSpan\> s8\stopTrillSpan
  e8\((\pp g e) r ds\) r |
  e2.*5/6\startTrillSpan s8\stopTrillSpan R2.*8
  << {
    b'2\pp-\tag#'part ^"div" b8 b\rest | b2 b8 b\rest | b2 b8 b\rest | b2 b8 b\rest |
  }\\{
    a2-\tag#'score ^\div a8 s | g2 g8 s | a2 a8 s | g2 g8 s |
  }>>
  \times2/3{ b8\((\pp g' b, } g') r fs\) r |
  e2.*5/6\startTrillSpan s8\stopTrillSpan
  \times2/3{ b8\((g' b, } g') r fs\) r |
  e2\pp\startTrillSpan ~e8 \stopTrillSpan r8 R2.
  b2\startTrillSpan ~b8 \stopTrillSpan r8 R2.
  d2\startTrillSpan ~d8 \stopTrillSpan r8 R2.
  d2\startTrillSpan ~d8 \stopTrillSpan r8 R2.
  \override PercentRepeatCounter #'padding = #1.8
  <<
    {s2.\pp s s s s s s s s\< s s s s s s\fz }
    {
      \repeat unfold 5 { \times2/3{ e8( c e }\times2/3{ c e c } e) r }
      \times2/3{ f8( b, f' }\times2/3{ b, f' b, } f') r
      \repeat unfold 6 { \times2/3{ e8( c e }\times2/3{ c e c } e) r }
      \times2/3{ e8( b e }\times2/3{ b e b } e) r
      \times2/3{ f8( b, f' }\times2/3{ b, f' b, } f') r
      \repeat unfold 2 { \times2/3{ e8( c e }\times2/3{ c e c } e) r }
    } \tag#'part {
      \repeat percent 5 s2.
      s2.
      \repeat percent 6 s2.
    }
  >>
  \revert PercentRepeatCounter #'padding
  \barNumberCheck#SixmS
  s2.*0\pp \repeat unfold 6 \times2/3 g,4.:8 |
  \repeat unfold 6 \times2/3 af4.:8 |
  s2.*0\< \repeat unfold 6 \times2/3 <b ds,>4.:8 |
  \repeat unfold 5 \times2/3 <ds fs,>4.:8 \times2/3 <fs a,>4.:8 |
  s2*0\f\< \repeat unfold 3 \times2/3 <fs a,>4.:8
  s2.*0\!
  s2.%coda
  <<
    {s2.\ff s\> s\p\> s s\pp }
    \repeat unfold 12 c,2.:16
    \repeat percent 12 s2.
  >>
  <<
    {s2.\pp s s s s s s\< s\! }
    \repeat unfold 8 df2.:16
    \repeat percent 8 s2.
  >>
  <fs cs>2.:16\fz
  <fs cs>2.:16
  <a fs>2.:16\p\< <a fs>2.:16
  cs2.:16 fs:16 a:16\f\< cs:16 ds:16\fff ds:16 ds:16 ds:16 |
  e8 r b b b4 |
  e,-. e-. r |
  r b8\> b b4 |
  e,-. e-. r\! R2.*12
  \trCueWhile "bassmS" "bass 15mb" #DOWN c''' R2.*2
  R2.
  <e b' g'>4\ff r r \partPageBreak
}

violamS = \relative c' {
  \clef alto
  \key e\minor
  e4\f r r R2.
  b4 r r R2.
  \cueWhile "bassmS" "bass" #DOWN R2.*2
  g8\f\ub g g2
  <<
    {s2.\fz\>\db s\p s\> s\pp s\> s\ppp}
    { \repeat unfold 12 g2.~ g2. }
    \repeat percent 13 s2.
  >>
  s2.*0\p^\pizz \repeat unfold 4 {e'4 e, r R2.}
  r4 e'-.\mf^\arco\db g-. |
  e8 d b4-. d8 b |
  g4-. g'8\< e d g | e d b e d b\! |
  r4 b8-.\ff\db b-. b4-. |
  b4-. b-. b-. |
  b8-. b-. b4-. g'8-. g-. |
  e4-. g-. e-. |
  g4-. b8-. b-. g4-. |
  b4-. b-. g-. |
  b8-. b-. g4-. b-. |
  b4-. b-. b-. |
  b4-. g,8 e g e |
  \repeat tremolo 3 {g8 e}
  \repeat tremolo 3 {a8 e}
  b'8 e, g e g e |
  \repeat tremolo 3 {g8 e}
  \repeat tremolo 3 {g8 e}
  \repeat tremolo 3 {a8 e}
  b'8 e, g e g b |
  \barNumberCheck#OnemS
  e8 r g2:16\ff g2:16 a4:16 |
  a2.:16 b8 a g2:16 |
  g2.:16 g2:16 a4:16 |
  a2.:16 \repeat unfold 4 { e'8 e e4 } \alternative { e4 r4 }
  R2. e,4\fp g r R2.*2
  b,8\p b16 r r4 ds8 ds16 r |
  b8\> b16 r r4 ds8 ds16 r |
  b8 b16 r r4 ds8 ds16 r |
  b8 b16 r r4 ds8 ds16\pp r |
  \key e\major
  <<
    \repeat unfold 4 {e8 e16 r r4 ds8 ds16 r }
    \repeat percent 4 s2.
  >> <<
    \repeat unfold 3 { e8 e16 r r4 <ds b>8 <ds b>16 r }
    \repeat percent 3 s2.
  >>
  <ds b>8 <ds b>16 r r4 e8 e16 r |
  <<
    \repeat unfold 4 {e8 e16 r r4 ds8 ds16 r }
    \repeat percent 4 s2.
  >> <<
    \repeat unfold 3 { e8 e16 r r4 <ds b>8 <ds b>16 r }
    \repeat percent 3 s2.
  >>
  <ds b>4 r4 e8 e16 r |
  <cs e>8\fz <cs e>16 r r4 <cs e>8 <cs e>16 r |
  <cs e>8\fz <cs e>16 r r4 <cs e>8 <cs e>16 r |
  <b e>8\fz <b e>16 r r4 <b ds>8\pp <b ds>16 r |
  <b e>8 <b e>16 r r4 <e gs>8 <e gs>16 r |
  <cs e>8\fp <cs e>16 r r4 <cs e>8 <cs e>16 r |
  <cs e>8 <cs e>16 r r4 <cs e>8 <cs e>16 r |
  <b e>8\fp <b e>16 r r4 <b ds>8\pp <b ds>16 r |
  <b e>8 <b e>16 r r4 <b e>8 <b e>16 r |
  <b e>4 r r R2.*6
  \barNumberCheck#TwomS
  s1*0\ppp
  gs4(-. gs-. gs)-. |
  gs4(-. gs-. gs)-. |
  a4(-. a-. fs)-. |
  b4(-. gs-. gs)-. |
  gs4(-. gs-. gs)-. |
  gs4(-. gs-. gs)-. |
  a4(-. a-. fs)-. |
  b4(-. gs-. gs)-. |
  <<{
    d'2.:8\div d:8 c:8 c2:8 ef4:8 |
    cs2.:8 cs2:8 d4:8 | d2:8 f4:8 |
    ds2:8 fs4:8 | e2:8 g4:8 |
    f2:8 af4:8 | fs8 a a2:8 | a2:8 gs4:8 |
    gs8 gs fs a a a | a2.:8 a2.:8 fs2.:8
  }\\{
    g,2.:8\pp g:8 a:8\< a2:8 a4:8 |
    as2.:8 as2:8 as4:8 | b2:8\mf b4:8 |
    bs2:8\< bs4:8 | cs2:8 ds4:8\! |
    d2:8\f d4:8 | ds2.:8 | ds2:8\< ds4:8 |
    ds8 ds ds fs fs fs | fs2.:8 fs2.:8 ds2.:8
  }>>
  \barNumberCheck#ThreemS
  \key e\minor
  <<{
    g2.:8 g:8 fs:8 fs4:8 g2:8 |
    g2.:8 g:8 fs:8 |
    e4:8 g:8 c:8 | b:8 g:8 fs:8 | e:8 g:8 c:8 | b:8 g:8 fs:8 |
  }\\{
    e2.:8\fff e:8 e:8 e4:8 e2:8 |
    e2.:8 e:8 e:8 |
    b4:8 e:8 fs:8| g:8 e:8 c:8 | b:8 e:8 fs:8| g:8 e:8 c:8 |
  }>>
  <b g'>8 fs' e4 r |
  <b g'>8\ub fs' e4 r |
  <b g'>8 fs' e4 r |
  <b g'>8\ub fs' e4 r |
  <b g'>8\ffz\> fs' e2~ | e2.\! |
  <b g'>8\ffz\> fs' e2~ | e2.\! R2.*3\partPageBreak
  \cueWhile "violin2mS" "violin II" #UP R2.*2
  r4 b8\pp b b4 | e,-. e-. r R2.
  r4 b'8\ppp b b4 | e,4 r r |
  r4 b'8 b b4 | e,4 r r
  \barNumberCheck#FourmS R2.*5
  r4 r e'(\p\ub | ef af,) r R2.*4
  r4 r af\pp\db | af2(\<\ub cf4 | ef af2) |
  cf2(\> af4 | g ef2->~| ef2. ~ef2.) e2.\pp~ e2.~ e2 r4 R2.
  R2.*16
  << s2. \tag#'score R2. \tag#'part \thinSkip >>
  \barNumberCheck#FivemS
  \trCueWhile "violin2mS" "violin II 8va" #UP c R2.*4
  \trCueWhile "violin2mS" "" #DOWN c R2.*4
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \times2/3 {
    g4.:8 a:8 b:8 c:8 c,:8 c':8 | a:8 d,:8 fs:8 g:8 g,:8 g':8 |
    c,:8 d:8 e:8 f:8 f,:8 f':8| ds:8 b:8 ds:8 e:8 b:8 e,:8 |
  }
  ds'2\pp ds8 r | e2 e8 r | ds2 ds8 r | e2 e8 r |
  << {
    a2^\div a8 s | gs2 gs8 s | a2 a8 s |
    gs2 ~ gs8 s
  }\\{
    ds2 ds8 c\rest | e2 e8 c\rest | ds2 ds8 c\rest |
    e2\pp\startTrillSpan~e8\stopTrillSpan c\rest
  } >> R2.
  gs'2\startTrillSpan ~gs8 \stopTrillSpan r8 R2.
  a2\startTrillSpan ~a8 \stopTrillSpan r8 R2.
  a2\startTrillSpan ~a8 \stopTrillSpan r8 R2.
  s2.*0\pp
  \repeat unfold 5 { g8 g c, c a' a | }
  g8 g g, g f' f |
  e8 e g, g d' d |
  c8 c e e c c | s2.*0\<
  \repeat unfold 3 { g'8 g c, c a' a | }
  g8 g c, c c' c |
  b8 b e, e g g |
  b8 b g g e' e |
  c8\fz c g' g e e |
  c8 c g g e c |
  \barNumberCheck#SixmS
  s2.*0\pp \repeat unfold 6 \times2/3 <c ef>4.:8 |
  \repeat unfold 6 \times2/3 <cf ef>4.:8 |
  s2.*0\< \repeat unfold 6 \times2/3 <b ds>4.:8 |
  \repeat unfold 5 \times2/3 <ds fs>4.:8 \times2/3 <fs a>4.:8 |
  s2.*0\f\< \repeat unfold 3 \times2/3 <fs a>4.:8 s2.*0\!
  s2.%coda
  <<
    {s2.\ff s\> s\p\> s s\pp }
    \repeat unfold 12 g,2.:16
    \repeat percent 12 s2.
  >>
  <<
    {s2.\pp s s s s s s\< s\! }
    \repeat unfold 8 <f af>2.:16
    \repeat percent 8 s2.
  >>
  <fs a>2.:16\fz <fs a>2.:16
  \barNumberCheck#SevenmS
  <a cs>2.:16\p\< <a cs>2.:16
  a'2.:16 cs:16
  \clef treble fs:16\f\< a:16 a:16\fff a:16 a:16 a:16 |
  gs8 r \clef alto
  \unset tupletSpannerDuration
  \times2/3{ gs,,8( b gs } \times2/3{ b gs b } |
  \times4/6\repeat tremolo 3 {gs8 b} \times2/3{ gs b gs) } |
  s2.*0\>
  \times4/6\repeat tremolo 3 {b8( gs} \times2/3{ b gs b } |
  \times4/6\repeat tremolo 3 {gs8 b} \times2/3{ gs b gs) } |
  \times4/6\repeat tremolo 3 {b8( gs} \times2/3{ b gs b } |
  \times4/6\repeat tremolo 3 {gs8 b} \times2/3{ gs b gs) } |
  s2.*0\p
  \times4/6\repeat tremolo 3 {b8( gs} \times2/3{ b gs b } |
  s2.*0\>
  \times4/6\repeat tremolo 3 {gs8 b} \times2/3{ gs b gs) } |
  <e g>2.:16\p
  <e g>2.:16\>
  <e g>2.:16
  <e g>2.:16
  \repeat unfold 12 <e g>8 |
  \times6/5{ <e g>8(\ppp\ub <e g> <e g> <e g> <e g>) } |
  \times3/4{ <e g>4( <e g> <e g> <e g>) } |
  <e g>4(-. <e g>-. <e g>)-. |
  <e g>4 r r R2.
  <g e' b'>4\ff r r\partPageBreak
}

cellomS = \relative c' {
  \clef bass
  \key e\minor
  e4\f r r R2.
  b4 r r R2.*4
  e,,8\f\> e e2~ |
  <<
    { e4 e-.\p e-. \repeat unfold 33 e4-. }
    {s2. s\> s\pp s\> s\ppp}
    \repeat percent 12 s2.
  >> R2.*8
  \cueWhile "violamS" "viola" #UP {
    R2.*2 r4\f
  } g'8\< e d g | e d b e d b\! |
  r4 b8-.\ff\db b-. g4-. |
  b4-. b-. g-. |
  b8-. b-. g4-. ds'-. |
  e4-. ds-. e-. |
  g4-. b8-. b-. g4-. |
  b4-. b-. g-. |
  b8-. b-. g4-. ds'-. |
  b4-. ds-. b-. |
  ds4-. e-. g,,8\db e |
  \repeat tremolo 3 {g8 e}
  \repeat tremolo 3 {a8 e}
  b'8 e, g e g e |
  \repeat tremolo 3 {g8 e}
  \repeat tremolo 3 {g8 e}
  \repeat tremolo 3 {a8 e}
  b'8 e, g e g b |
  \barNumberCheck#OnemS
  e8 r b'8\ff b b4 | e,4-. e-. r |
  r4 fs4-.\db a-. | g8 fs e4 r |
  e8 r b'8\ff b b4 | e,4-. e-. r |
  r4 fs4-. a-. |
  \repeat unfold 4 { g8 fs e4 } \alternative { a4 r4 }
  R2.*2 e4-.\p g-. r | e-.\> g-. r |
  e8\p e16 r r4 b8 b16 r |
  e8\> e16 r r4 b8 b16 r |
  e8 e16 r r4 b8 b16 r |
  e8 e16 r r4 b8 b16\pp r |
  \key e\major
  <<
    \repeat unfold 4 {e8 e16 r r4 b8 b16 r }
    \repeat percent 4 s2.
  >> <<
    \repeat unfold 3 { e8 e16 r r4 gs8 gs16 r }
    \repeat percent 3 s2.
  >>
  b4-. b,-. e8 e16 r |
  <<
    \repeat unfold 4 {e8 e16 r r4 b8 b16 r }
    \repeat percent 4 s2.
  >> <<
    \repeat unfold 3 { e8 e16 r r4 gs8 gs16 r }
    \repeat percent 3 s2.
  >>
  b4-. b,-. e8 e16 r |
  a,8\fz a16 r r4 cs8 cs16 r |
  a8\fz a16 r r4 cs8 cs16 r |
  e8\fz e16 r r4 gs8\pp gs16 r |
  e8 e16 r r4 e,8 e16 r |
  a8\fp a16 r r4 cs8 cs16 r |
  a8 a16 r r4 cs8 cs16 r |
  e8\fp e16 r r4 gs8\pp gs16 r |
  e8 e16 r r4 e8 e16 r |
  gs8(\p b b2~ | b) \times2/3{ cs8(\< b fs } |
  e2 fs4) |
  gs8( b b2~ | b8)\mf e( ds cs b4~ | b8) gs( fs gs b\> gs |
  fs gs e2)
  \barNumberCheck#TwomS
  s2.*0\ppp
  <<
    \repeat unfold 24 e4-.
    \repeat percent 8 s2.
  >>
  e,2.->\p e'2.-> f2.->\fz f,2.->\< fs2. fs'2.
  g4(\mf af af,) | gs'4(\< a a,) |
  a'4( bf bf,) | bf'4(\f b b,) |
  b2.:8_\markup{\italic"più"\dynamic"f"}
  b2.:8\<
  b4. c8 ds4 |
  fs a2-> |
  e'4. ds8 c4 |
  b fs' b, |
  \barNumberCheck#ThreemS
  \key e\minor
  e2->\fff d4->~ | d cs2-> |
  c2 fs,4-. | b4-. g-. e-. |
  e'2-> d4->~ | d cs2-> |
  c2 a4 | e4 e a | e e a, | e' e a | e e a, | e' r r |
  a, r r | e' r r | a, r r | e4 r r R2. e4 r r R2.
  R2.*7 \partPageBreak
  r4 b'8\pp b b4 | e, r r |
  r4 b'8 b b4 | e, r r |
  r4 b'8 b b4 |
  \barNumberCheck#FourmS
  e,2(\< g4 | b4 e2) |
  g2(\> e4 | ef4 g,2\!~ g2.)(
  b2. c2.~ c2. ~ c2) r4 R2.*13
  c4\pp r r R2.
  r4 r8 g'\pp\db c,4-. | c4-. r r R2.*2
  r4 r8 g'\pp c,4-. | c4-. r r R2.*2
  r4 r8 g'\pp c,4-. | c4-. r r |
  e4 r r | g4 r r |
  r4 r8 g\pp c,4-. |
  c4-. r r
  << s2. \tag#'score { c4-. r r } \tag#'part \thinSkip >>
  \barNumberCheck#FivemS
  g'4-.\mf a-. b-. | c-. c,-. c'-.
  a4-. d,-. fs-. g-. g,-. g'-. |
  a,4-.\p r c-. | d-.\> d'-. d,-. |
  e4-.\pp r b-. | e-. e'-. e,-. |
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \times2/3 {
    g4.:8 a:8 b:8 c:8 c,:8 c':8 | a:8 d,:8 fs:8 g:8 g,:8 g':8 |
    c,:8 d:8 e:8 f:8 f,:8 f':8| ds:8 b:8 ds:8 e:8 b:8 e,:8 |
  }
  b'8 r b'2->\pp | b2 b8 r |
  b,8 r b'2-> | b2 b8 r |
  b,8 r b'2-> | b2 b8 r |
  b,8 r b'2-> |
  e2\pp~e8 r R2.
  e2~e8 r R2.
  d2~d8 r R2.
  d2~d8 r R2.
  s2.*0\pp
  \repeat unfold 5 { g,8 g c, c a' a | }
  g8 g g, g f' f |
  e8 e g, g d' d |
  c8 c e e c c | s2.*0\<
  \repeat unfold 3 { g'8 g c, c a' a | }
  g8 g c, c c' c |
  b8 b e, e g g |
  b8 b g g e' e |
  c8\fz c g' g e e |
  c8 c g g e c |
  \barNumberCheck#SixmS
  c4 r r R2.*3
  r4 r gs'8\pp gs |
  a4\< r a8 a8 |
  as4 r as8 as |
  b4. c8 cs4~ |
  cs8\f\< d ds4. e8
  s2.*0\!
  s2.%coda
  <<
    {s2.\ff s\> s\p\> s s\pp }
    \repeat unfold 12 bf,2.:16
    \repeat percent 12 s2.
  >>
  <<
    {s2.\pp s s s s s s\< s\! }
    \repeat unfold 8 af2.:16
    \repeat percent 8 s2.
  >>
  fs!2.:16\fz
  fs2.:16
  <<
    { s2.\p\< s s s s\f\< s }
    \repeat unfold 9 {a8 gs fs } \alternative { gs a}
  >>
  f2.:16\fff f:16 f:16 f:16 |
  e8 r
  \unset tupletSpannerDuration
  \times2/3{ gs8( b gs } \times2/3{ b gs b } |
  \times4/6\repeat tremolo 3 {gs8 b} \times2/3{ gs b gs) } |
  s2.*0\>
  \times4/6\repeat tremolo 3 {b8( gs} \times2/3{ b gs b } |
  \times4/6\repeat tremolo 3 {gs8 b} \times2/3{ gs b gs) } |
  \times4/6\repeat tremolo 3 {b8( gs} \times2/3{ b gs b } |
  \times4/6\repeat tremolo 3 {gs8 b} \times2/3{ gs b gs) } |
  s2.*0\p
  \times4/6\repeat tremolo 3 {b8( gs} \times2/3{ b gs b } |
  s2.*0\>
  \times4/6\repeat tremolo 3 {gs8 b} \times2/3{ gs b gs) } |
  e4\! r r R2.
  r4 b''8\p b b4 | e,4 r r R2.*7
  <e, b' g'>4\ff r r \partPageBreak
}

bassmS = \relative c {
  \clef "bass_8"
  \key e\minor
  e4\f r r R2.
  b4 r r R2.
  e8\f\db e e2 |
  b8\fz\db b b2~ | b2.
  \override PercentRepeatCounter #'padding = #1.5
  <<
    {s2.\fz\>\db s\p s\> s\pp s\> s\ppp}
    { \repeat unfold 12 b2.~ b2. }
    \repeat percent 13 s2.
  >> R2.*12
  r4 b,8-.\ff\db b-. g4-. |
  b4-. b-. g-. |
  b8-. b-. g4-. ds'-. |
  e4-. ds-. e-. |
  g4-. b8-. b-. g4-. |
  b4-. b-. g-. |
  b8-. b-. g4-. ds'-. |
  b4-. ds-. b-. |
  ds4-. e-.
  << {
    e,4 | e e e
    \repeat unfold 3 { e e' e, | e e e }
  }\\{
    e,4_\div | e e e
    \repeat unfold 3 { e e' e, | e e e }
  } >>
  \barNumberCheck#OnemS
  r4 b''8\ff b b4 | e,4-. e-. r |
  r4 fs4-. a-. | g8 fs e4 r |
  r4 b'8 b b4 | e,4-. e-. r |
  r4 fs4-. a-. |
  \repeat unfold 4 { g8 fs e4 } \alternative { a4 r4 }
  R2.*8
  \key e\major
  R2.*20
  \trCueWhile "flute1mS" "flute" #UP c,, R2.*4
  e4^\pizz\p r b | e r b\< | e r b | e r b |
  e4\mf r gs | e r gs\> | b b, e\!
  \barNumberCheck#TwomS
    r4^\arco e,2\ppp ~
  <<
    {\repeat unfold 6 e2.~ e2. }
    \repeat percent 7 s2.
  >>
  e2.->\p\db e'2.-> f2.->\fz f,2.->\< fs2. fs'2.
  g4(\mf af af,) | gs'4(\< a a,) |
  a'4( bf bf,) | bf'4(\f b b,) |
  b2.:8_\markup{\italic"più"\dynamic"f"}
  b2.:8\<
  b4. c8 ds4 |
  fs a2-> |
  e'4. ds8 c4 |
  b fs' b, |
  \key e\minor
  \barNumberCheck#ThreemS
  e2->\fff d4->~ | d cs2-> |
  c2 fs,4-. | b4-. g-. e-. |
  e'2-> d4->~ | d cs2-> |
  c2 a4 | e4 e a | e e a, | e' e a | e e a, | e' r r |
  a, r r | e' r r | a, r r | e4 r r R2. e4 r r R2.
  R2.*12
  R2.*17
  <<
    \tag#'part \trCueWhile "violin1mS" "violin" #UP c,, {
      \context CueVoice {s2.*4 s2 s4\stopSlurSpan}
    } R2.*5
  >>
  c'4\pp r r R2.
  r4 r8 g'\pp\db c,4-. | c4-. r r R2.*2
  r4 r8 g'\pp c,4-. | c4-. r r R2.*2
  r4 r8 g'\pp c,4-. | c4-. r r |
  e4 r r | g4 r r |
  r4 r8 g\pp c,4-. | c4-. r r \partPageBreak
  << s2. \tag#'score {c4-. r r} \tag#'part \thinSkip >>
  \barNumberCheck#FivemS
  g'4-.\mf a-. b-. | c-. c,-. c'-.
  a4-. d,-. fs-. g-. g,-. g'-. |
  a,4-.\p r c-. | d-.\> d'-. d,-. |
  e4-.\pp r b-. | e-. e'-. e,-. |
  g4\p r g | c, r c |
  d4 r d | g, r g |
  c4 r c | f r r |
  b,4 r b | e r r |
  R2.*15 %\partPageBreak
  s2.*0\pp^\pizz
  \repeat unfold 5 {c4 c' r }
  g,4 g' r |
  << {s2. s s\<} \repeat unfold 6 {c,4 c' r } >>
  e,4 e' r | g, g' r |
  c,,4\fz c' r | c, c' r |
  \barNumberCheck#SixmS
  R2.*4
  r4 r gs8\pp gs |
  a4\< r a8 a8 |
  as4 r as8\db as |
  b4. c8\ub cs4\db~ |
  cs8\f\< d\ub ds4.\db e8\ub\!
  s2.%coda
  <<
    {s2.\ff s\> s\p\> s s\pp }
    \repeat unfold 12 bf,2.:16
    \repeat percent 12 s2.
  >>
  <<
    {s2.\pp s s s s s s\< s\! }
    \repeat unfold 8 af2.:16
    \repeat percent 8 s2.
  >>
  fs!2.:16\fz
  fs2.:16
  <<
    { s2.\p\< s s s s\f\< s }
    \repeat unfold 9 {a8 gs fs } \alternative { gs a}
  >>
  f2.:16\fff f:16 f:16 f:16 |
  e2.->~ e2.~ e2.\> ~ e2. |
  << { \repeat unfold 5 e2.~ e2. }
     \repeat percent 6 s2.
     {s2.\!\> s s\p s\> s\pp\> s\! } >>
  R2.*2
  r4 b''8\p b b4 | e,4 r r R2.*2
  b'4\ppp-\tag#'part ^"pizz." -\tag#'score ^\pizz r r |
  e, r r R2.
  e4\ff^\arco r r\partPageBreak
}

