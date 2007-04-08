violaPartIII = \relative b {
    \key g \major
    \time 2/2
    \clef alto
    %\override Hairpin #'minimum-length = #5
    \noTupletBracket

    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \partial 4
    
    r4
    | R1*7
    | r2 r4 b8-.-\f c-.
    | cis( d e d) d4 d

% 10
    | g( c,!2 b4)
    | e( a,2 g4)
    | fis8( a) d4 r fis,8-. g-.
    | a( g) gis-. a-. b( a) ais-. b-.
    | c( b) cis-. d-. e( d) fis-. g-.
    | a( g) g-. e-. d( b) c!( a)
    | g4 r r2
    | R1*10
    | <a' c>4-\p <a c> <a c> <a c>
    | <g b> r r2
    | \repeat unfold 4 <a c>4

% 30
    | <g b> r r2
    | \repeat unfold 4 <a c>4
    | <g b> r r2
    | r r4 g-.
    | g-. g-. r2
    | r r4 g-.-\f
    | g-. g-. r2
    | b,8(-\p d b d b d c d)
    | b4 r r e'8 d
    | c b a g fis e d c

% 40
    | b d c e d fis e g
    | fis a g b a c b d
    | c4 r <d, c'> r
    | << b'2 \\ { \voiceOne <g, d'>4 s } >> \oneVoice r2
    | R1*8

% 52
    | g'2(-\p a8 g a fis)
    | b4 r r2
    | c,8( a c a c a c a)
    | b4.( c16 a g4) r
    | b( d g fis)
    | g r r2
    | g8( e g e g e g e)
    | fis4 r r2

% 60
    | R1
    | r4 e,( g cis)
    | e r r2
    | r4 fis,( a d)
    | fis r r2
    | R1*2
    | cis'2(-\f d)
    | cis( d)
    | cis4 r r2

% 70
    | R1
    | a4-\p a( g) g(
    | fis) fis( d2)
    | d4 d( a') a(
    | cis) cis( d2)
    | d,8 a' fis a a, g' e g
    | a, fis' d fis fis, d' a d
    | g, d' b d fis, d' a d
    | a e' cis e fis, d' a d
    | a( a' a a a( fis) fis( d)

% 80
    | e( cis) cis( a) d4 r
    | a8( a') a a a( fis) fis( d)
    | e( cis) cis( a) d4 r
    | R1*6
    | a8(-\p cis) e e e( cis) cis( a)

% 90
    | fis'4 cis8.(-\trill b32 cis) d4 r
    | e8-\f cis d e fis g a b
    | cis b a g fis e d cis
    | \repeat unfold 2 { d b' a g eis( fis) cis e }
    | d2 d' ~
    | d1 ~
    | d8( d, d' d, d' d, d' d,)
    | r8 g( a b a g fis e)
    | d-. e-. fis-. g-. fis-. g-. e-. fis-.

% 100
    | << { cis1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	 { s2. s8. \grace { b16[( cis]) } s16 } >>
    | d4 r r2
    | R1*3
    | r4 g(-\p a8) r fis r
    | g r g,4( a8) r fis r
    | g4 r r2
    | R1*3

% 111
    | a8(-\p d fis d a d fis d)
    | a( d fis d fis d a' fis)
    | a,( cis e cis e cis e g)
    | fis( a fis d cis e cis a)
    | d( cis d e fis g a fis)
    | d( fis a fis d fis a fis)
    | e( g b g e g b g)
    | e( g a g e g a g)
    | fis4 r r2

% 120
    | d1(
    | cis)
    | d2( <cis e>
    | d1)
    | \set doubleSlurs = ##t <a fis'>1(
    | <b e>) \set doubleSlurs = ##f
    | \tieUp \repeat unfold 3 { <g a>1_( ~ | <fis a>4_) r r2 } \tieNeutral
    | << { c'2 } \\ { es,4(-\f d) } >> r2
    | << { c'2 } \\ { es,4( d) } >> r2
    | r4 es'( c a)
    | <c d>2 r4-\fermata r
    | R1*7
    | r2 r4 b8-.-\f c-.
    | cis( d e d) d4 d
    | g( c,!2 b4)
    | e( a,2 g4)
    | fis8( a) d4 r fis,8-. g-.
    | a( g) gis-. a-. b( a) ais-. b-.
    | c( b) cis-. d-. e( d) fis-. g-.

% 150
    | a( g) g-. e-. d( b) c!( a)
    | g4 r r2
    | R1*10
    | <a' c>4-\p <a c> <a c> <a c>
    | <g b> r r2
    | <a c>4 <a c> <a c> <a c>
    | <g b> r r2
    | \repeat unfold 3 { << { b4 b b b } { a a g g } >> }
    | <a b> r r2

% 170
    | R1*2
    | <g b>4-\p r <g b> r
    | <a c>2 r
    | R1*2
    | <a b>4-\p r <a b> r
    | <g b>2 r4 dis(-\f
    | e) g, b dis,
    | e2 r

% 180
    | R1
    | r2 r4 gis(
    | a) g! fis e
    | d2 r
    | R1
    | r2 r4 fis(
    | g) f e d
    | c2 r
    | fis'!(-\p f
    | e dis)

% 190
    | fis!( e)
    | a,( g)
    | fis4 r r dis'(-\f
    | e) g, b dis,
    | e2 r
    | R1
    | r2 r4 a(-\f
    | c) fis, a e
    | dis2 r
    | R1

% 200
    | << { d'!1 ~ | d | e ~ e } \\ 
	 { b1-\p ~ | b2.( gis4) | g!1 ~ | g2.( cis4) } >>
    | <c! a'>1 ~
    | \set doubleSlurs = ##t <c a'>2.( <a f'>4) 
    | <d f>1 ~
    | <d f>2.( <b d>4) \set doubleSlurs = ##f
    | <c e> r r e,8-.-\f f-.
    | fis!( g) a-. g-. g4 r

% 210
    | r2 r4 f8-. g-.
    | gis( a) b-. a-. a4 r
    | r2 r4 fis!8-. g!-.
    | gis( a) b a ais( b) c b
    | b( c) d c gis( a!) b a
    | e( fis) g! fis fis( g) a g
    | b( c) d c b( cis) d cis
    | d4 r r2
    | R1*15
    | g2(-\p a8 g a fis)
    | bes4 r r2
    | c,8( a c a c a c a)
    | bes4.( c16 a g4) r
    | R1*2
    | f'4( d c) r

% 240
    | R1
    | g'1
    | fis!4 r r2
    | fis,4 fis( d') d(
    | fis) fis( d2)
    | d4 d( fis) fis(
    | a) a( fis2)
    | R1*3

% 250
    | d4-\p d( c) c(
    | b) b( g2)
    | g4 g( d') d(
    | fis) fis( g2)
    | g8 d' b d d, c' a c
    | e, b' g b b, g' d g
    | c, g' e g b, g' d g
    | d a' fis a b, g' d g
    | d,( d') d d d( b) b( g)
    | a( fis) fis( d) g4 r

% 260
    | d'8( d') d d d( b) b( g)
    | a( fis) fis( d) g4 r
    | R1*6
    | d8(-\p fis a) a a( fis) fis( d)
    | b'4 fis8.(-\trill e32 fis) g4-. r

% 270
    | a8(-\f b c) b a g fis e
    | d( e fis) e d c b a
    | \repeat unfold 2 { g e' d c ais( b) fis a }
    | g2 g' ~
    | g1 ~
    | \stemUp g8 g,( g' g, g' g, g' g,) \stemNeutral
    | r c'( d e d c b a)
    | g-. a-. b-. c-. b-. c-. a-. b-.
    | << { fis1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	 { s2. s8. \grace { e16[( fis]) } s16 } >>

% 280
    | g4 r r2
    | R1*2
    | r4 c4(-\p d8) r d, r
    | c r c4( d8) r f, r
    | e4 r r2
    | R1*3
    | d8(-\p g b g d g b g)

% 290
    | d( g b g b g d' b)
    | d,( fis a fis a fis a c)
    | b( d b g fis a fis d)
    | g( fis g a b c d b)
    | g( b d b g b d b)
    | a( c e c a c e c)
    | a( c d c a c d c)
    | b4 r r2
    | g'1(
    | fis)

% 300
    | g2( <fis a>
    | g1)
    | \set doubleSlurs = ##t <d b'>1(
    | <e a>) \set doubleSlurs = ##f
    | \tieUp \repeat unfold 2 { <c d>_( ~ | <b d>4_) r r2 } 
    | \set doubleSlurs = ##t <a dis>1(
    | <g e'>4) r r2 \set doubleSlurs = ##f
    | <g a>1_( ~
    | <fis a>4_) r r2 \tieNeutral
    | r r4 fis'8 fis
    | fis( g a g) g2 ~
    | g2. g8 g
    | gis( a b a) a2 ~
    | a2. a8 a ais( b c b) b4 b(
    | ais a gis g)
    | fis2. d8 d

% 320
    | dis( e fis e) e2
    | eis8( fis g fis) fis2(
    | g4) r r2
    | R1*6
    | r2 r4 b,8-\f c

% 330
    | cis( d e d) d4 d
    | g( c,!2 b4)
    | e( a,2 g4)
    | fis8( a) d4 r fis,8 g
    | a( g) gis a b( a) ais b
    | c( b) cis d e( d) fis g
    | a( g) g e d( b) c!( a)
    | g4 r r e''8 d
    | c b a g fis e d c

% 340
    | b d c e d fis e g
    | fis a g b a c b d
    | c4 r <d, c'> r
    | es,2 r
    | r r4 es'8-\p es
    | f( es d es) es2 ~
    | es2. es8 es
    | f( es d es) es2 ~
    | es2. g8 g
    | fis!( g as g) g4 g
    | <g b!>1-\crescText

% 350
    | <c, d>
    | <b d>4-\ff g8 g a a b b
    | c c d d e e fis fis
    | g g a a b b c c
    | d4 r d, r
    | <g, g'> b8 c cis( d e d)
    | g4 b,8 c! cis( d e d)
    | b4 b8 c! cis( d e d)
    | e( d) cis d cis( d) e d
    | b4 r <g d' b'> r
    | g2 r4

    \bar "|."
}
