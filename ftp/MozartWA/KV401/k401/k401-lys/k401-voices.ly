\version "2.11.38"

markings =  {
    s1*95

    \once \override TextScript #'extra-offset = #'(0 . 2)
    s1^\markup { \large "(Abt Stadler.)" }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceI = \relative d'' {
    \tag #'two-hands { \voiceOne }
    \key g \minor

    d2 bes4. a16 g
    | fis8 g a4. es'8 d c
    | bes a bes c d a d4
    | e4. d8 cis2
    | d ~ d8 bes c d
    | es4. c16 bes a2
    | bes8 c d2 e8 f
    | g4. e16 d cis2
    | d8 c! bes a g2

% 10
    | f4 f'2 e4
    | f2 r
    | R1
    | r2 f
    | d4. c16 bes a8 bes c4 ~
    | c8 g' f es d bes c d
    | es bes es4 f4. es8
    | d c b4 c4. b8
    | c g c4 d4. c8
    | b2 a8 g f e

% 20
    | d4 a'4. b8 cis d
    | e4 cis d2
    | R1*2
    | c!2 as4. g16 f
    | e8 f g4 ~ g8 des' c bes
    | as c as g fis es' d c
    | bes d bes a! gis f'! e d
    | cis4 a r8 d e f
    | g4. f8 e2

% 30
    | a,4 d ~ d8 bes16 a g8 a16 bes
    | c8 bes a g fis c' d es
    | d4 g4. es16 d c4
    | d4. c8 b2
    | c8 g c4 ~ c8 b c d
    | es4. c8 d f e d
    | cis2 r4 d
    | e4. d8 cis2
    | d8 a d4 ~ d8 cis d e
    | f4. d8 e g fis e

% 40
    | dis4 b4. cis16 dis e8 dis16 e
    | fis4. e8 dis2
    | e4. d!8 cis2
    | d4. c!8 b2
    | c4. bes!8 a4. g16 fis
    | g4. g8 fis2
    | R1*5

% 51
    | r2 g2
    | bes4. c16 d es8 d c4 ~
    | c8 fis, g a bes2
    | a8 b16 cis d4. e16 f e8 d
    | cis a b cis d d, d'4 ~
    | d8 g c,4 ~ c8 d bes c
    | a2 g
    | c4. a16 g fis2
    | g4 r r2

% 60
    | R1
    | f'2 d4 ~ d8 c16 bes
    | a8 bes c4 ~ c8 g' f es
    | d4 r8 d c4. f8
    | bes,4. es8 as,4. bes16 as
    | g4 es'4. c16 bes as8 bes16 c
    | des8 c bes as g2
    | es'8 des c bes a!2
    | f'8 es d! c b2
    | c r

% 70
    | d bes4. a16 g
    | fis8 g a4 bes8 c d4
    | R1
    | a2 bes4. c16 d
    | c8 bes a4. g8 a b
    | c d e4. f16 e d c b a
    | gis4 a r8 es'!16 d c bes! a g
    | fis4 g c4.-\trill b16 c
    | d8 es f4. d8 c4 ~
    | c bes!2 a8 g

% 80
    | g4 fis8 e fis2-\fermata
    | R1
    | r2 d'
    | bes4. a16 g fis8 g a4 ~
    | a8 es' d c bes[ c] d[ c16 bes]
    | a8 b16 cis d4 e8[ d] g[ f16 e]
    | d2 r
    | g,8 fis g a r8 bes a g
    | f4. g8 as4 g8 f
    | <es g>2 c'4. d16 es

% 90
    | f8 es d4. b8 c d
    | es4. d8 c4 d ~
    | d d2 c4
    | d r d4. c16 bes
    | a2 r4 d ~
    | d8 bes16 a g4 r2
    | r4 d'4. c16 bes c4 ~
    | c8 bes16 a bes4 ~ bes8 a16 g a4 ~
    | a8 g16 fis g4. fis16 e fis4
    | g g' es4. d16 c

% 100
    | b8 c d b c d es4
    | d2. c4 ~
    | c2 <b g>4 <fis a>
    | <g b>1

    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceII = \relative g' {
    \key g \minor
    \tag #'two-hands { \voiceTwo }

    R1*2
    | g2 f4. e16 d
    | cis8 d e4. bes'8 a g
    | fis d e fis g4 a8 bes
    | c bes a g fis2
    | g a8 f g a
    | bes4. g16 f e2
    | d4 d2 cis4

% 10
    | d f bes4. bes8
    | a4 as g4. c8
    | f,4. bes8 es,2 ~
    | es4 d c2
    | d4. es16 d es4. d8
    | c2 d4 es8 f
    | g2 r
    | r g
    | es4. d16 c b8 c d4 ~
    | d8 f e d cis e d cis

% 20
    | d4 ~ d8 e16 f e8 d cis4 ~
    | cis8 g' f e d a f'4 ~
    | f8 d es2 d8 c
    | b c d4 es8 f g4 ~
    | g8 bes as g f4 c
    | c2 r
    | R1*2
    | a'2 f4. e16 d
    | cis8 d e4 ~ e8 bes' a g

% 30
    | fis4 ~ fis8 e16 fis g4 d ~
    | d c r8 fis4 fis8
    | g4. es16 d c4. d16 es
    | f4. es8 d f g as
    | g4. g8 f2
    | es8 f g4 ~ g gis
    | a4. f16 e d4. e16 f
    | g4. f8 e g a bes!
    | a4. a8 g2
    | f8 g a2 ais4

% 40
    | b4. g16 fis e4 b'
    | a4. g8 fis2
    | g4. f!8 e2
    | f4. e8 d2
    | es!4. d8 c4 bes ~
    | bes8 bes bes4 a2
    | << \tag #'two-hands { s1*2 }
         \tag #'four-hands { R1*2 } >>
    | d2 f4. g16 a
    | bes8 a g4. cis,8 d e

% 50
    | f4 d es e
    | f fis g4. f16 es!
    | d4 g ~ g8[ fis] g[ a16 g]
    | fis8 es d c bes c d4
    | d4. e16 fis g4. f8
    | e a4 a8 a4 r8 fis
    | g4. bes8 a4 g ~
    | g fis g2
    | R1
    | g2 f4. e16 d

% 60
    | cis8 d e4. bes'8 a g
    | f4 bes ~ bes8 d, f4
    | es!8 d c bes a2
    | bes8 f' bes4. g8 as4 ~
    | as8 f g4. es8 f g16 f
    | es4 g as8 es16 des c8 des16 es
    | f8 es des c bes2
    | ges'8 f es des c2
    | as'8 g! f es d!2
    | c r

% 70
    | R1
    | d2 g4. a16 bes
    | a8 g f4. e8 f g
    | a e a4 g f
    | e4. f16 e f2
    | e r
    | R1
    | r2 c
    | f!4. g16 as g8 f es4
    | d2 e

% 80
    | d1-\fermata
    | R1*3
    | r2 g
    | f!4. e16 d cis8[ d] e[ f16 g]
    | f8 a16 g f8 e16 d a'2
    | r2 g4 f8 e
    | d4. es8 f4 es8 d
    | c2 r

% 90
    | R1
    | c2 fis4. g16 a
    | bes!8 a g4. fis8 g a
    | fis4 d4. bes16 a g4
    | r c'4. a16 g fis4
    | r4 g4. es16 d cis4
    | d2 es
    | d es4. d16 c
    | d2 ~ d4. c8
    | b4 r g'4. f16 es

% 100
    | d8 es f d es f g4
    | g8 as g f es[ f] g[ f16 es]
    | d2. <c es>4
    | <b d>1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceIII = \relative d' {
    \tag #'two-hands { \voiceOne }
    \key g \minor

    R1*4
    | d2 bes4. a16 g
    | fis8 g a4. es'8 d c
    | bes[ a] bes[ c16 bes] a4. g16 f
    | e8 f g4 r a ~
    | a4 a bes8 bes a g

% 10
    | a4 d8 c bes4 c
    | c4. f8 es d es4 ~
    | es8 c d4 ~ d8 bes c bes
    | a4 bes2 a4
    | bes8 f bes4 c4. bes8
    | a2 bes ~
    | bes4. as16 g f8 g as4 ~
    | as8 f g as g f es4
    | c4. bes16 as g2
    | r a'

% 20
    | f4. e16 d cis8 d e4 ~
    | e8 bes'! a g f4 r8 a
    | b4 c8 g as2
    | g8 a b4 c8 d es4
    | e8 g, f e f g as4
    | g8 f e2 f8 g
    | c2. bes!8 a
    | g bes d2 c8 b
    | a2 r
    | R1

% 30
    | d2 bes4. a16 g
    | fis8 g a4. es'!8 d c!
    | bes2 g ~
    | g8 as f4 r8 d'4 d8
    | es4. es8 d2
    | c b4 bes
    | r4 a2 a4 ~
    | a8 bes g4 r8 e'4 e8
    | f4. f8 e2
    | d cis4 c

% 40
    | b2 b
    | R1*5
    | g2 bes4. c16 d
    | es8 d c4 ~ c8 fis, g a
    | bes4. a16 g a4. g16 f!
    | g8 a bes4 ~ bes8 bes a g

% 50
    | f4 r8 b c g c bes
    | a bes16 c d8 c bes a g4 ~
    | g8 a16 bes g4 c8 d es4
    | d8 c bes a g2
    | a4. bes!16 c d8 c bes4 ~
    | bes8 e, f g fis2
    | R1
    | d'2 bes4. a16 g
    | fis8 g a4 ~ a8 es' d c
    | bes b c cis d4 gis,

% 60
    | a4. gis8 g4 f8 e
    | d2 f ~
    | f ~ f8 es' d c
    | bes4 g e f
    | d' es! c d
    | es bes es,2
    | R1*3
    | g2 c4. d16 es

% 70
    | d8 c bes4 ~ bes8 a bes c
    | d4. c8 bes4. a16 g
    | cis4 d8 a d4. c16 bes
    | a2 r
    | c! a4. g16 f
    | e4. d16 c b8 c d4 ~
    | d8 f e c a bes! c4 ~
    | c8 es! d bes g'2
    | f8 g as es d g4 a8
    | r fis4 g8 r g a bes

% 80
    | bes4 a8 g a2-\fermata
    | g2 bes4. c16 d
    | es8 d c4. fis,8 g a
    | g a bes4 c8 bes a g
    | fis2 g8[ a] bes[ a16 g]
    | d4. e16 f g8[ f] e[ d16 cis]
    | d4 a' ~ a8 b16 cis d4 ~
    | d8 c! bes4 r2
    | R1
    | r4 g2 c4 ~

% 90
    | c8 d16 es f8 es d4. b8
    | c g as4 a4. g16 fis
    | g8 r r4 r2
    | R1
    | es'2 c4. bes16 a
    | g8 a bes2 ~ bes8 a16 g
    | fis4. e16 fis g4. a16 g
    | fis4. g8 c4. bes16 a
    | bes4. a16 g a2
    | g4 b,8 a16 b c8 d es f

% 100
    | g2 es4. d16 c
    | b2 c8 d es c
    | g'1
    | g

    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceIV = \relative g {
    \key g \minor
    \tag #'two-hands { \voiceTwo }

    << \tag #'two-hands { s1*4 R1*2 }
       \tag #'four-hands { R1*6 } >>
    | g2 f!4. e16 d
    | cis8 d e4. bes'8 a g
    | f2 e

% 10
    | d8 c! bes a g2
    | f4 d' b c
    | a bes! g a8 g
    | f4 bes f'2
    | bes8 r r4 r2
    | r bes,
    | g4. f16 es d8 es f4 ~
    | f8 as g f es d c4
    | << \tag #'four-hands { R1 } 
	 \tag #'two-hands { s1 } >>
    | gis'2 a

% 20
    | d a
    | a d4 d
    | g,! c f,2
    | g4. f8 es!4. d8
    | c2 f
    | c'4. des8 bes4 as8 g
    | f4. es8 d2
    | g4. f!8 e2
    | a8 a b cis d2
    | e4. d8 cis2

% 30
    | d r
    | R1
    | g2 es!4. d16 c
    | b8 c d4. as'8 g f
    | es4 r r2
    | R1
    | a2 f4. e16 d
    | cis8 d e4 r8 bes a g
    | f4 r r2
    | R1

% 40
    | b'2 g4. fis16 e
    | dis8 e fis4. c'8 b a
    | g a b4. bes8 a g
    | f! g a!4. as8 g f
    | es! f g4. fis8 g es
    | cis2 d4. c8
    | bes a g4 g'8 f es d
    | c4. d16 es d8 c bes a
    | g4 bes d8 a d4 ~
    | d8 f e d cis g' f e

% 50
    | d2 r
    | R1*2
    | r2 d
    | f4. g16 a bes8 a g4 ~
    | g8 cis, d f d4 r8 d
    | es4. es8 f fis g4
    | d2 g8 f! es4
    | es8 d c2 d4
    | es2 d4 bes!

% 60
    | a4. b8 cis2
    | d bes
    | c8 bes a g f2
    | bes r
    | r1 
    | es2 c4. bes16 as
    | g8 as bes4. des8 c bes
    | a! bes c4. es8 des c
    | b c d4. as'8 g f
    | es d c d es bes' a! g

% 70
    | fis4 g8 f es2
    | d r
    | a'2 f4. e16 d
    | cis2 r
    | r d
    | c!4. b16 a gis8 a b4 ~
    | b8 d c a fis g a4 ~
    | a8 c bes g es'2
    | d4. c8 b4 c
    | d g, cis2

% 80
    | d1-\fermata
    | R1*5
    | d2 f4. g16 a
    | bes!8 a g4. cis,8 d e
    | f es! d4. b8 c d
    | es4. d8 c bes'! as g

% 90
    | f2 g
    | c, d
    | g8 a bes g es!2
    | d bes4. a16 g
    | fis8 g a4. es'8 d c
    | bes4. a8 g f es4
    | \repeat unfold 3 d1
    | g ~

% 100
    | g ~
    | g ~
    | g ~
    | g
}
