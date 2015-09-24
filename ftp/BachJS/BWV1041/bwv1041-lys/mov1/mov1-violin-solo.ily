%Typeset by Federico Bruni, verified/adjusted by Javier Ruiz-Alma

\relative c'' {
  \scriptPadHalf
  \partial 8 e8\open-.\fz |
  % 1
  a4-1-- r8 e\open-._2 |
  f4-1-- r8 d-._3 |
  \phrasingSlurDashed e16_(\( d c) e\)_- d\(_- c_- b_- d\)_- \phrasingSlurSolid |
  c8-. a-.\open r16 a\upbow-2( gis a) |
  b16( a gis a) c a( gis a) |
  d16-4 a-2( gis a) e'_[ a,( gis a)] |
  \mbreak

  % 7
  f'16\( ( g f ) e-.\) d c b a |
  gis8-.( e-.\upbow ) b''4\downbow ~ |
  b8 a16 gis-1 a8-2 c-3 ~ |
  c8 fis,-1-. a4~ |
  a8 g16 fis g8-. b-2\( ~ |
  b16 a-. \) g fis e4~ |
  e8 fis16-1_\scrI g a8-. c,-. |
  b8-.[ a'-. g-. b,-.] |
  \mbreak
  \undo\scriptPadHalf
  % 15
  a16(^[ b c) b] a-4 g fis e |
  dis8-1-.([ c'-.) b-. e-4-.] |
  %%FB: cannot make the grace slashed after \afterGrace
  \scriptPadHalf
  g4--\upbow \afterGrace fis\trill ~(\( {
    \once\override Flag.stroke-style = #"grace"
    \once\stemDown
    \once\override Stem.length = #4.5
    e8
  } | %% nested phrasing slurs are not allowed in LilyPond
  fis16 g_- a)_- fis-.\)_- dis-2_(\( e) fis\)_- dis_- |
  b'8-.[ e,_\open-2^\scrStaccato fis_3-. dis-.] |
  e16 d! c b \undo\scriptPadQuart a8-.(  a-.) |
  a16^[ b c8~\(] c16 b-. \) a g |
  \mbreak

  % 22
  fis16-1 g-2 a8\( ~ a16 g-. \) fis e |
  dis8-. b'-4-. g--\trill fis16-2( e) |
  \mark \default
  e4 r16\mf e'16-2^\scrSolo ( d e) |
  a16 gis-1 a8-2 ~ a16 e( d e) |
  c'8( b) ~ b16 e,-2 ( d e) |
  b'16 a b8~ b16 e,( d e) |
  d'8( c) ~ c16 e,( d e) |
  \mbreak

  % 29
  c'16( b a) g f d-2( c d) |
  b'16( a g) f e c-2( b c) |
  a'16( g f) e-4 d b( a b) |
  gis'16( a gis) fis e-4 d\> c b |
  c16\p d c b a a' e g! |
  f16( g f) e\open d c b a\open |
  \mbreak

  % 35
  b16-3 c b a g g' d f |
  e16( f e) d c b a g |
  a16 bes a-3 g f f' c e |
  d16_\scrCresc( e d) c b-1 a\open gis fis |
  gis16 a gis fis e_\scrForte e' b d |
  c16( d c) b a a' e g |
  \mbreak

  % 41
  f16( g f) e\open d f-4 b,-1 d |
  \phrasingSlurDashed \scriptPadHalf e16\f_( \( d c) e\)_- d\(_- c_- b_- d\)_- \phrasingSlurSolid |
  \mark \default \undo\scriptPadHalf
  c8-. a-. r16 e\p\upbow a\open c |
  f32-2\( ( g a8) f16-.\) dis32-1\( ( e fis8) dis16-.\) |
  e16-2 b g e( dis e) g b |
  e32\( ( f g8) e16-.\) cis32-1\( ( d e8) cis16-.\) |
  \mbreak

  % 47
  d16-2 a f d( cis d) f a |
  d32\( ( e f8) d16-.\) b32-1( c d8) b16-.\downbow |
  c16\upbow g-1 a\< b c g d' g, |
  e'16 b-1 c d e\! c fis c |
  \posScriptA g'16\f g,-1 b d g4\( ~ |
  g16 c,_1-.\) e g c4\( ~ |
  c16 c,-.\) f a c4\( ~ |
  \mbreak

  % 54
  c8[ c,-.\upbow \) d-. b'-.] |
  c16-- g e c c,-. c'\mf[( b-1 c]) |
  d16 c( b c) e-4 c( b c) |
  f16 c(\< b c) g' c,( b\! c) |
  a'16\( ( bes a) g-.\) f e d c |
  b8-.\f( g-.-1) b'4-2~ |
  b8 a16 fis-1 a8-2-. c-3~ |
  \mbreak

  % 61
  c8 fis,16-1 g a( fis) g( e) |
  fis16 d( cis d-1) fis d a' fis |
  d'8-.( d,-.) a'4-1_3 ~ |
  a8 g16-2 fis g8-. b-2~ |
  b8 e,16\open fis g( e) fis( dis) |
  e16 c( b c-1) e c g' e |
  c'8-.( c,-.) g'4_2 ~ |
  g8 fis16-1 g a8-. c,-. |
  \mbreak

  % 69
  b8-.[ a'-. g-.( b,-.)] |
  a16(^[ b c) b] a-4 g fis e |
  dis8-.([ c'-.) b-. e-.-4] |
  g4--\> \afterGrace fis\trill\( ~ {
    \once\override Flag.stroke-style = #"grace"
    \once\stemDown
    \once\override Stem.length = #4.5
    e8
  } |
  fis16\p g a\) g fis a e\open a^\scrFingerOnePar |
  dis,16-2( e-3 fis-4) e dis fis c! fis |
  a,16-2( b c) b a c g c |
  \mbreak

  % 76
  fis,16-2( g a) g fis a e a |
  dis,16-1 a'-4 b, cis dis-4\cresc e\! fis g |
  a16\open( b) cis dis e fis g a |
  b8-.\f[ e,-.-2 fis-. dis-.] |
  e16 d! c b a8-.( a-.) |
  a16^[ b c8](~ c16 b-.) a g |
  fis16-1 g a8\( ~ a16 g fis\) e |
  \mPageBreak

  % 83
  dis8-. b'-.-4 g--\trill fis16-2( e) |
  \mark \default
  e4 r16 \once \fingerNoStaffPad b'-3_1\p( a b) |
  e16_4 dis e8~ e16 b-1( a b) |
  g'8-4_\scrTwoI \( fis~ fis16\) b,-1( a b) |
  fis'16-3_4 e fis8~ fis16 b,-1( a b) |
  a'8-4_\scrThreeI\( g~ g16\) e-2( dis e ) |
  fis16-.\< e( dis e) gis-. e( dis e) |
  \mbreak

  % 90
  a16-4-. e( dis e) b'-. e,( dis e)\! |
  \adjBeamA cis'16-.\f a,(\p gis a) cis-. a( gis a ) |
  d16-.-4\< a( gis a) e'-.^[ a,( gis a)]\! |
  e'16-.\f d,\p ( cis d) fis-. d( cis d) |
  g16-.-4 d( cis d) a'-. d,( cis d) |
  b'16-. g-2( fis g)
  b-.-4\cresc g( fis g) |
  \mbreak

  % 96
  c16-.-1 g( fis g) d'-. g,( fis g) |
  \scriptPadHalf
  e'16-. c-2( b c) e-.-4 c( b c) |
  f16-.-1 c( b c) g'-. c,( b c) |
  a'16\f( bes a) g f e d c |
  bes16( a bes) a' g f e\open d |
  cis16( d cis) b! a-4 g f e |
  \mbreak

  % 102
  f16\ff ( a\open) d f a4~ |
  a16 g( f a) f( e d f) |
  f16( \once\scriptUnderSlur e\open \once\fingerUnderSlur d-2 f) e( d cis e) |
  \mark \default
  d4 r16 d-2\p( cis d) |
  e16-. d( cis d)
  f-. d\cresc( cis d) |
  g16-. d( cis d) a'-. d,( cis d) |
  bes'2\f ~ |
  \mbreak

  % 109
  bes16 c,-2\p( b! c) e-.-4 c( b c) |
  f16-.\cresc c( b c) g'-. c,( b c-1)\! |
  a'2-2\f ~ |
  a16 d,-1\p\(_( e fis g a bes c |
  d16) c_( bes a g fis e d\)) |
  g2-3_\espressivo ~ |
  g16 \slurDown e-1\( ( f g \hairpinAddPad a\< b cis d |
  e16) d(\> cis b a g\! f e) \) \slurNeutral |
  \mbreak

  % 117
  f16\p d' f,( e f) a-1 d c |
  b!16( f) c' f, d' f, b( f) |
  e16 c' e,( d e) g-1 c b |
  a16( e) b' e, c' e, a( e) |
  d16 b'\< d,( c d) f-1 b a\! |
  gis16( d) a' d, b' d, gis( d) |
  \mbreak

  % 123
  c16\f a' c,( b c) e\open a e |
  f16 a d,( c d) f a b, |
  c8-. a'-. b,-. gis'-. |
  a4-- r16 \fingerNoStaffPad a,,-2\p( gis a) |
  c16-4 a( gis a) cis16-4 a( gis a) \undo\fingerNoStaffPad |
  \scrNoPad d16_\open^\scrFingerFourPar \fingerNoPad a(-2 gis a) e'16-2 a,( gis a) |
  f'16-3 d-2( cis d) fis d( cis d) |
  \mbreak

  % 130
  g16-4 d( cis d) a' d,( cis d) |
  bes'16 g-2( fis g) b g( fis g) |
  c16-1 g( fis g) d' g,( fis g) |
  ees'16 c-2( b\cresc c) e-4\! c( b c) |
  f16-1 c( b c) g' c,( b c-1) |
  aes'32-2\f\( ( bes c8) aes16-.\) fis32-1\( ( g a8) fis16-.\) |
  \mbreak

  % 136
  % TODO: fix starting slur position
  g16 d bes g( fis g) bes d |
  ees32-2\mf\( ( f g8) ees16-.\) cis32-1\( ( d e8) cis16-.\) |
  d16-2 a f d( cis d) f a |
  bes32-2\p\( ( c d8) bes16-.\) gis32-1( a b8) gis16-.\downbow |
  \mark \default
  a16\upbow e-1 fis\cresc gis\! a-4 e b' e, |
  c'16 gis-4 a\open b c a d a\open |
  \mbreak

  % 142
  gis16-3\f e gis b e4-2 ~ \( |
  e16 a,\open-.\) c-1 e a4~ \( |
  a16 \scriptUnderSlur a,\open-. \undo\scriptUnderSlur d-1\) f a4~ |
  a8 a,_\open-.\upbow e-. gis-. |
  a,8-. a'\open-.\upbow e'4-2\mf ~ |
  e8 d16 cis-1 d8-2-. f-3 ~ |
  f8 b,16-1 c! d( b) c( a) |
  b16 g( fis g-4) b g d' b |
  \mbreak

  % 150
  g'8-. g,-.\upbow d'4-3_1 ~ |
  d8 c16_2 b c8-1-. e~ |
  e8 a,16\open b c( a) b( gis) |
  a16 f( e f-1) a f c' a |
  f'8-. f,-.\upbow c'4-2~ |
  c8\cresc b16 c\! d8-. f,-. |
  e8-. d'-. c-.( e,-.) |
  d16 c'( b a ) b a-4( gis fis) |
  \mbreak

  % 158
  gis8-.-1([ f'-.\<) e-. a-.\!] |
  % Augener's Edition is different
  % http://violinsheetmusic.org/classical/b/bach/bach-violin-concerto-bwv-1041-violin.pdf
  %\grace { a16( b } c4) \afterGrace b4( { a16) } |
  \grace { a16( b } c4--\f) \afterGrace b4\>\trill~ \( {
    \once \stemDown
    \once\override Stem.length = #4.5
    \once \override Flag.stroke-style = #"grace"
    a8
  }
  b16 c\p d\) c b d a d |
  gis,16-2( a b) a gis b f! b |
  d,16-2( e f) e d f c f |
  b,16-1( c d) c b d a d |
  gis,16-4 d'-3 e, fis\cresc gis a b\! c |
  \mbreak

  % 165
  d16-1( e)\< fis gis a b c-2\! d |
  e8-.\f[ a,-1-. b-. gis-1-.] |
  a16-1 g! f e d8-.( d-.) |
  \undo\scriptPadHalf
  d16 e f8~ \( f16 e_4-.\) d c |
  b16 c d8~ \( d16 c-.\) b a |
  gis8^\markup\italic"(rit.)" e'-. c--\trill b16( a\open) |
  a4.-2 \bar "|."
}
