\version "2.6.0"
violaFirstMov =  \relative g' {
  \key c \major
  \clef alto

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)

  \repeat volta 2 {
    g8-.\f
    | c4( d8)-. b-. c4-. r8 d,-.\p
    | g,-. c-. b-. a-. g4 r8 g'-.
    | e4( f8)-. d-. c4 r8 g-.\f
    | a-. r <b d>-. r <c e>4 r8 g-.
    | e4( f8)-. d-. c4 r8 e'-.
    | c4( d8)-. g,-. e4-. r16. c32 d16. e32
    | f16.[ g32 a16. b32] c8[ c] ~ c[ f] e[ <g, g'>]
    | \repeat unfold 2 { <g f'>4.\fz b8-. c-. d-. e-. g-. }

    % 10
    | <g, f'>4.\fz d'8-. e[-. d-.] c16.[ e32 d16. c32]
    | b16. f'32 e16. d32 c16. e32 d16. c32 b16. f'32 e16. d32 c16. e32 d16. c32
    | b16. g32 c16. g32 b16. g32 c16. g32 b4 r8 d-.\p
    | b4( c8)-. a-. g4-. r8 d''-.
    | b4( c8-.) a-. g4. dis8
    | e4. b8 c4. d8
    | e2 d ~
    | d4 g,8( g') g4 e
    | fis r r r8 c-.
    | b[( cis)] d[-. d-.] \preNaturalTrill b8.[(^\naturalTrill a32 b)] c8[-. a-.]

    % 20
    | b[ g] fis[ d] a'8.[(\trill g32 a)] g8[-. g-.]
    | \repeat unfold 2 { a8.[(\trill\fz g32 a)] g8[-. g-.] }
    | a4\ff <d a'>8 <d a'> <d a'> r r4
    | r2 r4 r8 g\fz ~
    | g fis16 e fis8 e\fz ~ e d16 cis d8 c16 b
    | a8 b16 a g8 g-.\fz g4( fis8) c'-.
    | b16-.\f g-. g-. g-. g-. g-. g-. g-. d a' a a a a a a
    | b g g g g g g g d a' a a a a a a
    | b g' g g g g g g fis fis fis fis fis fis fis fis
    | g\fz g g g g g g g fis fis fis fis fis fis fis fis

    % 30
    | g\ff g g g g g g g f! f f f bes, bes bes bes
    | es g g bes bes as as f es g g bes bes as as f
    | g8-. bes-. bes-. bes-. bes r r4
    | r r8 bes,-.\p g4( as8-.) f-.
    | es4. d8-. es-. es'4( d8)
    | es4 bes8( as) g4( as)
    | bes4.( g8) bes4.( g8)
    | b!2( a!)
    | g16-.\f g-. g-. g-. g g g g d a' a a a a a a
    | b g g g g g g g d a' a a a a a a

    % 40
    | b b d d g, g b b c c a a d,8 d'32( c b a)
    | g8[ b'] b8.[(\trill a32 b)] a8[ d,] r d32( c b a)
    | g8 g' r fis r g r fis
    | g g r b, c8.(\trill b32 c) d8-. d-.
  }

  \alternative {
    {
      | d8-.[ fis-.] g[-. c,16( a)] b4 r8 d-.\p
      | b4-. r8 d'-. b4-. r8 d,-.
      | b4-. r r r8 s
    }
    {
      | d8[-. fis]-. g[-. c,16( a)] b4 r8 d-.\p
    }
  }

  \repeat volta 2 {
    | b4( c8)-. a-. g4 r8 b-.\f
    | gis4( a8)-. dis,-. e8( gis4) d'8-.

    % 50
    | b4( c8 a) gis4( b8 a)
    | gis4( b8 a) gis4 r
    | r8 d'-.\p b4-. r8 e-. c4-.
    | r8 g'-. e4-. r8 bes'-.\f g( a)
    | f4 r r8 a-. f( g)
    | g[-. b]-. c[-. d,]-. g,4 r8 c
    | b( e d cis) d4 r8 d
    | c!( f e dis) e4 r8 e,
    | dis( c' b a) \stemUp e( f'! e d!) \stemNeutral
    | c( bes a g) \stemDown f( e d) d''-. \stemNeutral

    % 60
    | b!4( c8)-. a-. g4 r8 e'
    | cis8.(\trill b32 cis) d8-. b-. a4 r8 fis'
    | dis8.(\trill cis32 dis) e8-. c!-. b4 b,16-. b'-. b,-. b'-.
    | b,-. b'-. b,-. b'-. b, b' b, b' b, b' b, b' b,8 g'
    | fis4( g8) g16 e dis8( e[ dis)] b16[-.\p b'-.]
    | b,-. b'-. b,-. b'-. b, b' b, b' b, b' b, b' b,8 g'
    | fis4( g8) g16 e dis8( e dis e)
    | dis( e dis e) dis4 r
    | r <e, b'>2\fz <e b'>4 ~
    | <e b'> <e b'>2\fz <e b'>4 ~

    % 70
    | <e b'> <e b'>2\fz <e b'>4 ~
    | <e b'> <e b'>2\fz <e b'>4 ~
    | <e b'> <e b'>2\fz <e b'>4 ~
    | <e b'> <e b'>2\fz <e b'>4 ~
    | <e b'> <e b'>2\fz <e b'>4 ~
    | <e b'> <e b'>2\fz <e b'>4 ~
    | <e b'> <e b'>2\fz <e b'>4 ~
    | <e b'> <e b'>2\fz <e b'>4
    | e8\p e' e e e, e' e e
    | e, e' e e e, e' e e

    % 80
    | e,\pp e' e e e, e' e e
    | e r e r e r e\noBeam g-.\f
    | c4( d8)-. b-. c4-. r8 d,-.\p
    | g,-. c-. b-. a-. g4 r8 g'-.
    | e4( f8)-. d-. c4 r8 g-.\f
    | a-. r <b d>-. r <c e>4 r8 g-.
    | e4( f8)-. d-. c4 r8 e'-.
    | c4( d8)-. g,-. e4-. r16. c32 d16. e32
    | f16.[ g32 a16. b32] c8[ c] ~ c[ f] e[ <g, g'>]
    | <g f'>4.\fz b8-. c[-. d]-. e[-. <g, g'>-.]

    % 90
    | <g f'>4.\fz f'8-. g-. f-. e-. e-.
    | f-. g-. a-. f-. g4( e)
    | d8-. e-. f-. b,-. c-. d-. e-. e,-.
    | f4.( fis8 g4) r
    | r r8 f'-. e[( fis]) g[-. g]-.
    | \preNaturalTrill e8.(^\naturalTrill d32 e) f!8[ d] e[ c] b[ b]
    | c8.(\trill b32 c) d8.(\trill c32 d) e8 c' b c
    | d r <g,, f'> r <g f'> r r\fermata a'-.\p
    | f4( g8) e-. d-.[ a'] d[ c]\fz ~
    | c b16 a b8 a\fz ~ a g16 fis g8 f16 e

    % 100
    | d8 e16 d c8 c-.\fz c4( b8) f'-.
    | e16\f g-. g-. g-. g-. g-. g-. g-. g2:16
    | g1:16
    | g4 r8 \acciaccatura f16 e16( d32 e) f8-. b-. b-. b-.
    | c4 r8 g f f d d
    | e4 r r8 c d f
    | fis2.\fermata r4\fermata
    | <g, d'>2.\fermata r8\fermata r
    | r8 g'-.\p e4-. r8 f-. d4-.
    | r8 e-. c4-. r8 cis-. d4-.

    % 110
    | r8 e-. f4-. r8 gis-. a4-.
    | r4 \grace { e,16[( g] } c4) r \grace { d,16[( f] } b4)
    | r4 c,2 es'4 ~
    | es c2 c'4 ~
    | c fis,2 es4 ~
    | es c2 a!4 ~
    | a a'2 r4
    | c,2( <b d>4) b
    | c16\f g' \repeat unfold 30 { g }
    | g8 e c e' d d d8.(\trill c32 d)

    % 120
    | c8 c c8.(\trill b32 c) 
    d8 d d8.(\trill c32 d)
    | c8 e, g e f8.(\trill e32 f) g8-. d-.
  }

  \alternative {
    {
      | e8-.[ d-.] c-.[ <g d'>-.] <g e'>4 r
      | r8 g'-.\p e4-. r8 g,-. e4-.
      | r8 g'-. e-. f-. d-. e-. c-. d-.
    }
    {
      | e-.[ d-.] c-.[ <g d'>-.] <g e'>4-. <g d'>-.
      | <g e'>-. r r r8
    }
  }

  \bar "|."
}
