\version "2.6.0"
violaThirdMov =  \relative c' {
  \key c \major
  \clef alto

  \repeat volta 2 {
    r4
    | R2.
    | c4-.\f c-. r
    | f,-. f-. r
    | d2 d'4 ~
    | d c r
    | r r c
    | b( c e)
    | a,( b) g'-.
    | a( b a)

    % 10
    | b( c a)
    | d2 d,4
    | g-. b,-. b-.
    | b-. b-. b-.
    | b b b
    | c c a
    | d2 r4
    | R2.*2
    | \grace s8 c2.(

    % 20
    | b4) r
  }

  \repeat volta 2 {
    r4
    | R2.*3
    | r4 r c ~
    | c d es8( c)
    | g'2 b,4\p
    | c( b) r
    | r r b
    | c( b) r

    % 30
    | R2.
    | r4 r b
    | c( b) r
    | R2.
    | c4-.\f c-. r
    | f,-. f-. r
    | d2 d'4 ~
    | d c r
    | r r c
    | d2 r4

    % 40
    | r r d
    | e2 r4
    | r r f
    | e( f a)
    | d,( e g)
    | g,2 a'4
    | a,2 d,4
    | g2.
    | g4-. g-. g-.
    | g-. g-. g-.

    % 50
    | g g e'
    | f2 d4
    | g r r
    | R2.*2
    | \grace s8 f2.(
    | e4) r
  }

  % Trio

  \repeat volta 2 {
    r4
    | R2.*2
    | e,2.\p ~

    % 60
    | e4 r r
    | R2.*2
    | fis2.(
    | e4) r
  }

  \repeat volta 2 {
    r4
    | R2.*2
    | e2( a4)
    | a r r
    | R2.

    % 70
    | r4 r gis\f
    | e'2( c4)
    | a( b c8 a)
    | e'4 r r
    | R2.
    | e,2. ~
    | e2\fermata r4
    | cis'2.\pp
    | R2.
    | b

    % 80
    | R2.*5
    | r4 r e,-.
    | cis'2( a4)
    | e4-. r e-.
    | d'2( b4)
    | e,4-. r r
    | r r fis
    | e2(gis4)
    | a r r
    | R2.*2
    | e2. ~
    | e4 r r
    | R2.
    | f!2( fis4)
    | e2. ~
    | e4 r
  }
}
