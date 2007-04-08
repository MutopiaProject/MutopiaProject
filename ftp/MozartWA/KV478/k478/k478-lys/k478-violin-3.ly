violinPartIII = \relative b' {
    \key g \major
    \time 2/2
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
    | R1*9
    | r8 g'(-\p a b a g fis e)
    | e( d) d-. d-. cis( d) d-. d-.
    | e( d) g( b a g fis e)
    | e( d) d-. d-. cis( d) d-. d-.

% 30
    | e( d) g( b a g fis e)
    | e( d) d-. d-. cis( d) d-. d-.
    | e( d) r4 r b8-. c!-.
    | cis( d e d) d4 d-.
    | e-. g-. r2
    | r r4 d-.-\f
    | e-. g-. r8 e(-\p c a)
    | g2.( b8 a)
    | g4 r r e'8-\f d
    | c b a g fis e d c

% 40
    | d b e c fis d g e
    | a fis b g c a d b
    | e4 r <d, a' fis'> r
    | << { <d b'>4 s } \\ { \voiceOne g'2 } >> \oneVoice r2
    | R1*8

% 52
    | b,2(-\p c8 b c a)
    | d2. b8( g)
    | d4 d d d
    | d4.( e16 c b4) r
    | g'( b2 a4)
    | d( b') a8( g fis e)
    | \appoggiatura d16 cis4-. cis-. cis-. cis-.
    | d r r2

% 60
    | R1
    | r4 g,( cis e)
    | g r r2
    | r4 a,( d fis)
    | a r r2
    | R1*2
    | e2(-\f fis)
    | e( fis)
    | e4 r r2

% 70
    | r4 r8 a,-.-\p b-. cis-. d-. e-.
    | fis4 fis( e) e(
    | d) d( a2)
    | b4 b( d) d(
    | e) e( fis2)
    | fis,8 d' a d e, cis' g cis
    | d, d' b d d, a' fis a
    | d, b' g b d, a' fis a
    | cis, g' e g a, fis' d fis
    | a4 r r2

% 80
    | a8( a') a a a( fis) fis( d)
    | e( cis) cis( a) d4 r
    | a8( a') a a a( fis) fis( d)
    | d4 r r2
    | R1*3
    | a8(-\p cis) e e e( cis) cis( a)
    | b4 cis8.(-\trill b32 cis) d4 r
    | cis8( e) g g g( e) e( cis)

% 90
    | d4 \raiseScript e8.(-\trill d32 e) fis4 r
    | g8-\f e fis g a b cis d
    | e d cis b a g fis e
    | fis d' cis b gis( a) e g
    | fis d' cis b gis( a) e g
    | fis4 fis2( g8.-\trill fis32 g)
    | a4 fis2( g8.-\trill fis32 g)
    | a4( c! b ais)
    | r8 b( cis d cis b a! g)
    | fis-. g-. a-. b-. a-. b-. cis-. d-.

% 100
    | << { e,1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	 { s2. s8. \grace { d16[( e]) } s16 } >>
    | d4 r r2
    | R1*3
    | r4 b'4(-\p c!8) r c, r
    | b r b4( c8) r c, r
    | b4 r r2
    | R1*3

% 111
    | r2 r4 d'8(-\p fis)
    | a2. fis8( d)
    | e2. cis8( a)
    | d4 d e e
    | fis( d) r d8( fis)
    | a2. fis8( d)
    | b'2. g8( e)
    | cis4 cis cis cis
    | d r r2

% 120
    | << { fis,1( g2 e) a( g fis1) a( b) } \\
	 { a,1 ~ a a ~ a d ~ d } >>
    | \set doubleSlurs = ##t <cis e>1(
    | <d fis>4) r r2
    | <cis e>1(
    | <d fis>4) r r2

% 130
    | <cis e>1(
    | <d fis>4) \set doubleSlurs = ##f r r2
    | << { g4( fis) } \\ { a,2-\f } >> r2
    | << { g'4( fis) } \\ { a,2 } >> r2
    | <a g'>4^( ~ <a fis'>2^) <a fis'>4
    | <a fis'>2 r4-\fermata r
    | R1*7
    | r2 r4 b'8-.-\f c-.
    | cis( d e d) d4 d
    | g( c,!2 b4)
    | e( a,2 g4)
    | fis8( a) d4 r fis,8-. g-.
    | a( g) gis-. a-. b( a) ais-. b-.
    | c( b) cis-. d-. e( d) fis-. g-.

% 150
    | a( g) g-. e-. d( b) c!( a)
    | g4 r r2
    | R1*9

% 161
    | r8 g'(-\p a b a g fis e)
    | e( d) d-. d-. cis( d) d-. d-.
    | e( d) g( b a g fis e)
    | e( d) d-. d-. cis( d) d-. d-.
    | e( d) g( b a g fis e)
    | e( dis) dis dis fis( e) e e
    | g( fis) fis fis fis( e) e e
    | e( dis) dis dis fis( e) e e
    | g( fis) r4 r2

% 170
    | R1
    | r2 r8 b,(-\p b' g
    | fis e) b'( g fis e) c'( a
    | g fis) fis4 r2
    | R1
    | r2 r8 a,(-\p a' fis
    | e dis) a'( fis e dis) b'( g
    | fis e) e4 r dis(-\f
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
    | c2 c'-\p ~
    | c b ~
    | b a ~

% 190
    | a( g)
    | f( e)
    | dis4 r r dis'(-\f
    | e) g, b dis,
    | e2 r
    | R1
    | r2 r4 a(-\f
    | c) fis, a e
    | dis2 r
    | R1

% 200
    | r2 r8 \lowerDynamics d!(-\p d'! b
    | a gis) d'( b a gis) f'( e)
    | d( cis) cis2( e4)
    | g!( e g) r
    | r2 r8 c,,!( c'! a
    | \stemUp g fis) c'( a g fis) es'( d) \stemNeutral
    | c( b) b2( d4)
    | f( d f) r
    | r2 r4 e,8-.-\f f-.
    | fis!( g) a-. g-. g4 r

% 210
    | r2 r4 f8-. g-.
    | gis( a) b-. a-. a4 r
    | r2 r4 fis!8-. g!-.
    | gis( a) b a ais( b) c b
    | b( c) d c gis( a!) b a
    | e( fis) g! fis fis( g) a g
    | b,( c) d c b( cis) d cis
    | d4 r r2
    | R1*15
    | bes'2(-\p c8 bes c a)
    | d2.( bes8 g)
    | d4 d d d
    | d4.( es16 c bes4) r
    | R1*2
    | g'4.( as16 f es4) r

% 240
    | r2 r4 d' ~
    | d( cis g' cis,)
    | d r r2
    | d,4 d( fis!) fis(
    | a) a( fis2)
    | fis4 fis( a) a(
    | c!) c( a2)
    | R1*3

% 250
    | b4-\p b( a) a(
    | g) g( d2)
    | e4 e( g) g(
    | a) a( b2)
    | b8 g' d g a, fis' c fis
    | g, g' b, g' g, d' b d
    | g, e' c e g, d' b d
    | fis, c' a c d, b' g b
    | d4 r r2
    | d,8( d') d d d( b) b( g)

% 260
    | a( fis) fis( d) g4 r
    | d'8( d') d d d( b) b( g)
    | g4 r r2
    | R1*3
    | d8(-\p fis a) a a( fis) fis( d)
    | e4 \raiseScript fis8.(-\trill e32 fis) g4-. r
    | fis8( a c) c c( a) a( fis)
    | g4 \raiseScript a8.(-\trill g32 a) b4-. r

% 270
    | c8(-\f d e) d c b a g
    | fis( g a) g fis e d c
    | b g' fis e cis( d) a c
    | b g' fis e cis( d) a c
    | b4 b2( c8.-\trill b32 c)
    | d4 b'2( \RaiseScript c8.-\trill b32 c)
    | d4( f e dis)
    | r8 e( fis! g fis e d! c)
    | b-. c-. d-. e-. d-. e-. fis-. g-.
    | << { a,1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	 { s2. s8. \grace { g16[( a]) } s16 } >>

% 280
    | g4 r r2
    | R1*2
    | r4 e(-\p f8) r f, r
    | e r e4( f8) r d r
    | c4 r r2
    | R1*3
    | r2 r4 g'8(-\p b)

% 290
    | d2. b8( g)
    | a2. fis8( d)
    | g4 g a a
    | b( g) r g8( b)
    | d2. b8( g)
    | e'2. c8( a)
    | fis4 fis fis fis
    | g r r2
    | << { b1( c2 a) d( c b1) d( e) } \\
	 { d,1 ~ d d ~ d g ~ g } >>
    | \set doubleSlurs = ##t
    \repeat unfold 2 { <fis a>1( <g b>4) r r2 } \set doubleSlurs = ##f
    | <b, fis'>1^( ~
    | <b g'>4^) r r2 \set doubleSlurs = ##t
    | <cis e>1(
    | <d fis>4) r r2 \set doubleSlurs = ##f
    | r r4 a'8 a
    | ais( b c b) b2 ~
    | b2. b8 b
    | b( c d c) c2 ~
    | c2. c8 c
    | cis( d e d) d4 d(
    | cis c b bes)
    | a2. fis8 fis

% 320
    | fis( g a g) g2
    | gis8( a b! a) a2(
    | g!4) r r2
    | R1*6
    | r2 r4 b8-\f c

% 330
    | cis( d e d) d4 d
    | g( c,!2 b4)
    | e( a,2 g4)
    | fis8( a) d4 r fis,8 g
    | a( g) gis a b( a) ais b
    | c( b) cis d e( d) fis g
    | a( g) g e d( b) c!( a)
    | g4 r r e'8 d
    | c b a g fis e d c
    | d b e c fis d g e

% 340
    | a fis b g c a d b
    | e4 r <d, a' fis'> r
    | <g, es'>2 r
    | r r4 g'8-\p g
    | as( g f g) g2 ~
    | g2. g8 g
    | as( g f g) g2 ~
    | g2. bes8 bes
    | a( bes c bes) bes4 bes
    | d1(-\crescText

% 350
    | <a, fis'>)
    | <g g'>4-\ff g'8 g a a b! b
    | c c d d e e fis fis
    | g g a a b b c c
    | d4 r d, r
    | <d, b' g'> b'8 c cis( d e d)
    | g4 b,8 c! cis( d e d)
    | b4 b8 c! cis( d e d)
    | e( d) cis d cis( d) e d
    | b4 r <d, b' g'> r
    | g,2 r4

    \bar "|."
}
