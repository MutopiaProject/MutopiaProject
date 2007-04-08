\version "2.6.3"
violinIFirstMov =  \relative g'' {
  \key c \major
  \clef violin

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)

  \repeat volta 2 {
    g8-.\f
    | e4( f8)-. d-. c4-. r8 g-.\p
    | e-. a-. g-. fis-. g4 r8 d'-.
    | e-. g4 f e16\trill d e8\noBeam c'-.\f
    | d,,-. r <g, g'>-. r <c e>4 r
    | R1
    | r4 r16. g'32 a16. b32 c16. d32 e16. f32 g8 c-.
    | \acciaccatura b8 a4( g8) c,-. \acciaccatura b8 a4( g16.) g'32 
    e16. c32
    | b16.\fz c32 d16. e32 f16. e32 f16. a32 
    e16. g32 d16. f32 c16. g'32 e16. c32 

    % 10
    | b16.\fz c32 d16. e32 f16. e32 f16. a32 
    e16. g32 d16. f32 c16. g'32 e16. c32
    | b16. c32 d16. e32 f16. g32 a16. b32 
    c16. d32 e16. f32 g16. g32 g16. g32
    | \repeat unfold 8 { g16. g32 }
    | g16. g,32 g'16. g,32 g'16. g,32 g'16. g,32 g'4 r
    | r r8 d8-.\f b4( c8)-. a-.
    | b-. d4 c b16\trill a b8 a ~
    | a g16\trill fis g8 f ~ 
    f e16\trill dis e8 d
    | << { cis2( c4) e8( c) } { s2 s8 s8^\turn } >>
    | b4 d8( b) g'4.( a16 g)
    | fis8 d, r d''-. b8.\trill( a32 b) c8-. a-.

    % 20
    | g( b) a-. b-. 
    gis8.(\trill fis32 gis) a8 \appoggiatura g16 fis16( e32 fis)
    | g8 \appoggiatura d16 cis16( b32 cis) d8 g 
    fis8.(\trill\fz e32 fis) g8-. g-.
    | fis8.(\trill\fz e32 fis) g8-. g-. 
    fis8.(\trill\fz e32 fis) g8-. b-.
    | \times 4/6 { c16[\ff a fis d c a] } \times 4/6 { fis[ a c d fis a] } c8 r r
    << { b,8( a4. b8) } \\ { g8\p ~ g fis16 e fis8 gis } >> <c a>4 r8 e-.\fz
    | cis4( d8) c-.\fz ais4( b8) a-.\fz
    | fis4( g8) e'-.\fz g,4( a8) fis-.
    | g4\f r8 g-. fis-. c'-. b-. a-.
    | g-. b-. d-. g-. fis( c' b a)
    | g b16 d g fis e d \repeat unfold 4 { c( d,) }
    | \repeat unfold 4 { bes'( d,) } \repeat unfold 4 { c'( d,) }

    % 30
    | bes'\ff g bes d g d bes g as d f! d as' f d as
    | \repeat unfold 2 { g bes es g as, d f as }
    | g es as f g es as f g8 r r4
    | r2 r4 r8 bes,,-.\p
    | g4( as8)-. f-. es4.( f8
    | g4. as8) bes4.( as8)
    | g4.( bes8) g4.( bes8)
    | g2 ~ g8 fis( a! fis)
    | g4\f r8 g-. fis-. c'-. b!-. a-.
    | g-. b-. d-. g-. fis( c' b a)

    % 40
    | g16( a32 b c d e fis) g16 fis e d \repeat unfold 4 { c d,, }
    | \repeat unfold 4 { b'' d,, } \repeat unfold 4 { c'' d,, }
    | \repeat unfold 2 { b'' d,, b'' d,, c'' d,, c'' d,, }
    | b'' g b d g8 b,, c8.(\trill b32 c) d8-. <a fis'>-.
  }

  \alternative {
    {
      | <b g'>[-. <d a'>]-. <g b>[-. <d d'>]-. <g b>4-. r
      | r8 d-.\p b4-. r8 d'-. b4-.
      | r8 d,-. b-. e-. c-. f!-. d-. s8
    }
    {
      | <b g'>8[-. <d a'>]-. <g b>[-. <d d'>]-. <g b>4 r
    }
  }

  \repeat volta 2 {
    | r4 r16. d,32\p e16. fis32 g16. a32 b16. c32 d8 r
    | r16. f,!32\f e16. d32 c16. e32 a16. c32 e16.( dis32) e16.( dis32) e8 r

    % 50
    | r16. e,32 fis16. gis32 a16. b32 c16. d32 
    \repeat unfold 2 { e16.( dis32 e16. dis32 e16. dis32 e16. dis32) }
    e16.( dis32 e16. dis32) e8-.\noBeam f-.\p
    | d4-. r8 e-. c4-. r8 bes'-.
    | g4-. r8 a-.\f f4( g8)-. e-.
    | d16( cis d e) f8-. g-. e4( f8)-. d-.
    | c!-. d-. e-. g,-. e( a g fis)
    | g4 r8 g f!( bes a gis)
    | a4 r8 a gis( f' e d)
    | c( a b c) b( gis a b)
    | c( cis d e) f( g a) a-.

    % 60
    | g4. c8 ~ c b16 a b8 bes
    | a4. d8 ~ d c16 b! c8 c
    | b4. e8 ~ e dis16 cis dis8-. c-.
    | a4( b8)-. g-. a( fis g e)
    | dis4( e8) ais, b[( ais] b[) c'!]\p
    | a8.(\trill g32 a) b8( g a fis g e)
    | dis4( e8) ais, b( ais b ais)
    | b( ais b ais) b4 b'8\noBeam b,-.\f
    | gis4( a8)-. fis-. e16 fis gis a b8 e
    | dis fis4\fz dis16 b e fis gis a b8 gis16 e

    % 70
    | dis8 fis4\fz dis16 b e8 e4\fz gis16 e
    | dis16. e32 fis16. gis32 a16. fis32 a16. fis32 
    e16. fis32 gis16. a32 b16. gis32 b16. gis32
    | a16. cis32 gis16. b32 fis16. a32 fis16. dis32 e8 b'4\fz gis16 e
    | fis16. a32 fis16. dis32 b16. dis32 fis16. dis32 e8 e4\fz gis16 e
    | dis16. e32 fis16. gis32 a16. fis32 a16. fis32 
    e16. fis32 gis16. a32 b16. gis32 b16. gis32
    | a16. cis32 gis16. b32 fis16. a32 fis16. dis32 e8 b'4\fz gis16 e
    | fis16. a32 fis16. dis32 b16. dis32 fis16. dis32 e8 e4\fz b'8
    | b,, a''4\fz fis16 dis e8 e4\fz b'8\p
    | b,4( c!8) a g!16( fis g a) b8 e
    | dis fis4 dis16 b e8 g4 e8\pp

    % 80
    | b4( c8) a g16( fis g a) 
    \repeat unfold 4 { b8[ \acciaccatura dis8 e] }
    b-.\noBeam g'-.\f
    | e4( f!8)-. d-. c4-. r8 g-.\p
    | e-. a-. g-. fis-. g4 r8 d'-.
    | e-. g4 f! e16\trill d e8\noBeam c'-.\f
    | d,,-. r <g, g'>-. r <c e>4 r
    | R1
    | r4 r16. g'32 a16. b32 c16. d32 e16. f32 g8 c-.
    | \grace { \graceStroke b8 } a4( g8) c,-. 
    \grace { \graceStroke b8 } a4( g16.) g'32 e16. c32
    | b16.\fz c32 d16. e32 f16. e32 f16. a32 
    e16. g32 d16. f32 c16. g'32 e16. c32

    % 90
    | b16.\fz c32 d16. e32 f16. e32 f16. a32 
    e16. f32 g16. a32 bes16. a32 bes16. d32
    | a16. c32 g16. bes32 f16. c'32 a16. f32 
    e16. f32 g16. a32 bes16. a32 bes16. g32
    | f16. a32 e16. g32 d16. a'32 g16. f32 
    e16. g32 d16. f32 c16. g'32 f16. e32
    | d16. f32 a16. g32 f16. e32 d16. c32 g4 r8 g'-.
    | e8.[(\trill d32 e]) f8[-. d]-. c[( e]) d[-. e]-.
    | cis8.(\trill b32 cis) d8 \grace { c16( } b16)( a32 b) 
    c8 \grace { g16( } fis16)( e32 fis) g8 g'
    | a4\trill b\trill c\trill d8-. e-.
    | \repeat unfold 2 { \times 4/6 { f16[ d b g b d] } } f8 r r\fermata e,-.\p
    | d4.( e8) f4 r8 a-.\fz
    | fis4( g8) f-.\fz dis4( e8) d-.\fz

    % 100
    | b4( c8) a'-.\fz << { c,4( d8) b-. } { s8 s8-\turn } >>
    | c4\f r8 c-. b-. f'-. e-. d-.
    | c-. e-. g-. c-. b-. f'-. e-. d-. c-. e-. g-. e-. d( a' g f)
    | e16 g e g e g e c b c d e f a g f
    | e8 c a f e[ c'] g,,[ b]
    | c16 fis a b c fis a b c8.\fermata a16 c8 r\fermata
    | g,,16 g' b d f! g b d f8.\fermata d16 f r\fermata g,8-.\p
    | e4-. r8 f-. d4-. r8 e-.
    | c4-. r8 cis-. d4-. r8 e-.
    | f4-. r8 gis-. a4-. r

    % 110
    | \grace { e,16[( g] } c4) r \grace { d,16[( f] } b4) r
    | c,2( es'
    | c c')
    | fis,( es
    | c a!)
    | a' r
    | g,2. f8( d)
    | c4\f r8 c'-. b-. f'-. e-. d-.
    | c-. e-. g-. c-. b-. f'-. e-. d-.
    | #(set-octavation 1) c-. e-. g-. c-. b16 g b g b g b g

    % 120
    | c8 c c c b16 g b g b g b g
    | c8 c c #(set-octavation 0) e,, f8.(\trill e32 f) g8-. b,-.
  }

  \alternative {
    {
      | c8[-. f]-. e[ \acciaccatura c'16 b16( a32 b]) c4 r8 g-.\p
      | e4-. r8 g,-. e4-. r8 g'-.
      | e4-. r r2
    }
    {
      | c8[-. f]-. e[ \acciaccatura c'16 b16( a32 b]) c4 <b, g'>-.
      | <c e>-. r r r8
    }
  }

  \bar "|."
}
