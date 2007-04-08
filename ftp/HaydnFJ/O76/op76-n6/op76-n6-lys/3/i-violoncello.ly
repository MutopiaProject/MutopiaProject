\version "2.6.0"
celloFirstMov =  \relative b {
  \key c \major
  \clef bass

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)

  \repeat volta 2 {
    b8-.\f
    | c4( f,8)-. g-. c,4-. r8 b-.\p
    | c-. a-. d-. d-. g,4 r
    | r2 r4 r8 e'-.\f
    | f-. r g-. r c,4 r8 e-.
    | c4( d8)-. g,-. e4-. r
    | R1
    | r4 r16. c32 d16. e32 f16. g32 a16. b32 c8 c
    | \repeat unfold 3 { <c, c'>2\fz ~ <c c'>8 r r4 }

    % 11
    | g'16. g'32 a16. b32 c8 r g,16. g'32 a16. b32 c8 r
    | g,16. g32 g16. g32 g16. g32 g16. g32 g4 r8 b'-.\p
    | g4( a8)-. d,-. g4-. r
    | R1
    | r2 r4 r8 bes,-.
    | a4( bes8)-. g-. fis2
    | g4( b!8) g e e' cis a
    | \repeat unfold 8 { d16 d' d, d' }

    % 20
    | d, d' d, d' d,8 b' c8.[\fz\trill( b32 c]) b8[-. b]-.
    | c8.[\fz\trill( b32 c]) b8[-. b]-.
    c8.[\fz\trill( b32 c]) b8[-. g]-.
    | fis4\ff fis,8 fis fis r r4
    | R1
    | r2 r4 r8 c'\fz ~
    | c b16 a b8 cis\fz d2
    | g,8\f g' r g,16 b d8 fis' r fis
    | g g,, r g16 b d8 fis' r fis
    | g g,, r g16 b d8-. fis-. a-. fis-.
    | g,-.\fz g'-. bes-. g-. d,-. fis'-. a-. fis-.

    % 30
    | g16\ff g g g g g g g d d d d d d d d
    | es es es es d d d d es es es es d d d d
    | es8-. d-. es-. d-. es r r bes-.\p
    | g4( as8-.) f-. es2 ~
    | es4. bes'8-. g4( as8-.) f-.
    | es1 ~
    | es
    | d!
    | g8\f g' r g,16 b! d8 fis' r fis
    | g g,, r g32( a b c) d8 fis' r fis

    % 40
    | g g,, r g32( a b c) d8 fis' fis8.[\trill( e32 fis)]
    | g8[ g] g8.[(\trill fis32 g) ]
    fis8[ fis] fis8.[(\trill e32 fis) ]
    | g8 g r fis r g r fis
    | g g r b, c8.[(\trill b32 c]) d8[-. d,]-.
  }

  \alternative {
    {
      | g8[-. d-.] g[-. d-.] g,4 r8 fis-.\p
      | g4-. r8 fis'-. g4-. r8 fis,-.
      | g4-. r r r8 s
    }
    {
      | g'8[-. d-.] g[-. d-.] g,4 r8 b'-.\p
    }
  }

  \repeat volta 2 {
    g4( a8-.) d,-. b4 r
    | e,1\f ~
    | e ~
    | e2. r4
    | r8 b''-.\p gis4-. r8 c-. a4-.
    | r8 e'-. cis4-. r2
    | r r4 r8 g-.\f
    | e f16 d c8-. b-. c4 r8 d
    | g,4 r r r8 e'
    | e,4 r r2
    | r4 r8 a gis( d' c b)
    | a( g! f e) d4 r
    | R1*3
    | r2 r4 r8 b'
    | c,16-. c'-. c,-. c'-. c, c' c, c' b2
    | r2 r4 r8 b\p
    | c,16-. c'-. c,-. c'-. c, c' c, c' b2 ~
    | b2. r4
    | <e, b'>2\fz( <e b'>\fz
    | <e b'>\fz) <e b'>\fz(
    | <e b'>-\markup { \italic { sempre } } <e b'>
    | <e b'>) <e b'>(
    | <e b'> <e b'>)
    | <e b'>( <e b'>
    | <e b'>) <e b'>(
    | <e b'> <e b'>)
    | <e b'>( <e b'>
    | <e b'>) <e b'>(
    | <e b'>4)\p r r2
    | R1*2
    | r2 r4 r8 b''-.\f
    | c4( f,8)-. g-. c,4-. r8 b-.\p
    | c-. a-. d-. d-. g,4 r
    | r2 r4 r8 e'-.\f
    | f-. r g-. r c,4 r8 e-.
    | c4( d8)-. g,-. e4-. r
    | R1
    | \grace s8 r4 r16. c32 d16. e32 f16. g32 a16. b32 c8 c
    | <c, c'>2\fz ~ <c c'>8 r r4
    | <c c'>1\fz
    | <c c'>2 cis\fz
    | d4 r r2
    | r \repeat unfold 14 { g16 g' g, g' }
    | g,8 r g r g r r\fermata r
    | R1
    | r2 r4 r8 f'\fz ~
    | f e16 d e8 fis-.\fz g4 g,
    | c\f r8 c,16 c' g8 b' r \acciaccatura c16 b16( a32 b)
    | c8 c,, r c16 c' g8 b' r \acciaccatura c16 b16( a32 b)
    | \repeat unfold 2 { c1:16 }
    | c8 e, f a g g g g,
    | a2.\fermata r4\fermata
    | b2.\fermata r8\fermata r
    | r8 b'-.\p c4-. r8 d-. g,4-.
    | r8 c-. e,4-. r8 e-. f4-.
    | r8 cis'-. d4-. r8 e-. f4-.
    | r \acciaccatura g,,8 g'4 r \acciaccatura g,8 g'4
    | r as,2 c'4 ~
    | c as2 \clef tenor as'4 ~
    | as es2 c4 ~
    | c \clef bass a!2 fis4 ~
    | fis c'2 r4
    | g,1
    | c4\f r8 c,16 c' g8 b' r8 \acciaccatura c16 b16( a32 b)
    | c8 c,, r c16 c' g8 b' r8 \acciaccatura c16 b16( a32 b)
    | c16 \noBeam \clef tenor g' g g g4:16 g2: 
    | g1: \clef bass 
    | c,8 c c e, f8.[(\trill e32 f)] g8[-. g-.]
  }

  \alternative {
    {
      | c,8-. g-. c-. g-. c,4 r
      | r8 b''-.\p c4-. r8 b,-. c4-.
      | r8 b'-. c-. a-. b-. g-. a-. fis-.
    }
    {
      | c8-. g-. c-. g-. c,4-. g'-.
      | c,-. r r r8
    }
  }

  \bar "|."
}
