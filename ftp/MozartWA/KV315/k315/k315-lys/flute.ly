\version "2.18.0"

flutePart =  \relative e'' {
#(define afterGraceFraction (cons 15 16))
    \key c \major
    \clef violin

    \noTupletBracket

    R2
    | r4 r8 e16.\trill f32
    | g16( e) c4( d8)
    | dis( e) r16 e( f g)
    | a( f) c'8( ~ c16. d64 c b16) a-.
    | a8\trill g r g16.\trill g32
    | c16( a) f4 f8
    | \grace { g32 } f16 e32 d d4 e16.( c32)
    | b16( a) f'( d) c( b) g'( f)

% 10
    | dis8( e) r g16.\trill g32
    | \tuplet 3/2 { c16( a f) } f4 f8
    | f16( b) b8-. r c32( b bes a)
    | gis( a b! a g[ f e d)] c16( e8) f32( d)
    | d16(\trill c) c8 r c16.( g'32)
    | g16( fis) fis8( ~ fis32 e g fis a[ g fis e)]
    | e16(^\markup { \tiny \semisharp
		      \hspace #0.3 \musicglyph #"scripts.trill" }
      d) d8 ~ d16 b'( a32[ g fis e)]
    | d16( c) c'8 ~ c16 a( fis c)
    | b( d g b) d4 ~
    | d16 c8 b a[ g16]

% 20
    | \grace { g32 } fis16 e32 d cis[( d e d)] d8 r
    | R2
    | r4 r16 d( g b)
    | d2 ~
    | d4 ~ d16 e32 d \grace { d32 } c16[ b32 a]
    | g( a b a) g4( fis8)
    | e32( fis g fis) e4( d8)
    | c8.\trill b32 c d8( c)
    | ais( b) r32 g( a b c[ d e fis)]
    | g[( a b a)] g8 ~ g16 d'( c b)

% 30
    | gis( a) r e' r \grace { d32 } c16 r \grace { b32 } a16
    | b16.( g32) d'8( ~ d16 cis c b)
    | \afterGrace a2 \startTrillSpan { g32[( a)] \stopTrillSpan }
    | g4 r
    | R2*3
    | r16 g,( b d) g32-. d-. e-. fis-. g-.[ a-. b-. c-.]
    | d2 ~
    | d4 ~ d16 \raiseSlur d-.( d-. d-.)

% 40
    | es4( fis,)
    | g8 a^\markup { \tiny \sharp
		     \hspace #0.3 \musicglyph #"scripts.trill" }
      bes r
    | bes32( a c a) g4( fis8)
    | a16( g) g8-. r g
    | g4 ~ g16 g( fis g)
    | bes( a) a8 ~ a16 d( cis d)
    | bes4( cis,)
    | d8 e\trill f r
    | f32( e g e) d4( cis8)
    | e16( d) d8 r16 f f f

% 50
    | f( e) e8 r16 d d d
    | d( c!) a'8 ~ a16 g32 f e16[ dis]
    | dis( e) e8 r16 e-. e-. e-.
    | g( f) f8-. r32 f( e f g[ f e f)]
    | c'16( b) b8 r32 b( a b c[ b a b)]
    | c4 r
    | r r8 e,16.\trill f32
    | g16( e) c4( d8)
    | dis( e) r16 e( f g)
    | a16.[( f32) c'8(] ~ c16. d64 c b16) a-.

% 60
    | a8\trill g r g16.\trill g32
    | c16( a) f4 f8
    | \grace { g32 } f16e32 d d4 e16.( c32)
    | b16( a f'd) c( b g' f)
    | dis8( e) r g16.\trill g32
    | \tuplet 3/2 { c16( a f) } f4 f8
    | f16( b) b8-. r c32( b bes a)
    | gis[( a b! a] g[ f e d)] c16( e8) f32( d)
    | d16(\trill c) c8 r c16. c32
    | cis16( d) d'8 ~ d32[( c! bes a] g[ f e d)]

% 70
    | d16(\trill c!) c'8 ~ c32[( bes a g] f[ e d c)]
    | c16(\trill bes) bes'8 ~ bes16 d( c bes)
    | gis a8 g f e16
    | cis32[( d e d] e[ f g f)] gis[( a b a] g[ f e d)]
    | c!8.( d32 c b8) r
    | R2
    | r4 r16 g( c e)
    | g2 ~
    | g4 ~ g16 gis( a b)
    | c32( d e d) c4( b8)

% 80
    | a32( b c b) a4( g8)
    | f8.\trill e32 f g8( f)
    | dis( e) r32 c[( d e] f g a b)
    | c[( d e d)] c8 ~ c16[ bes( a gis)]
    | gis( a) r \grace { d32 } c16 r \grace { b!32 } a16 r \grace { g32 } f16
    | e( g) g8 ~ g16 fis( f e)
    | \afterGrace d2 \startTrillSpan { c32[( d)] \stopTrillSpan}
    | c4 r
    | R2*4

% 92
    | g'8.\fermata c,16 d8.\trill\fermata c32 d
    | c4 r
    | r r8 e16.\trill f32
    | g16( e) c4( d8)
    | dis[( e16) r32 e] \raiseScript f32[(\trill e f g)]
      \raiseScript a[(\trill g a b)]
    | c16. g32 \grace { b } a16[ g32 f] e8 d
    | d4( c8) r

    \bar "|."
}
