\version "2.6.3"
violinIIFirstMov =  \relative d'' {
  \key c \major
  \clef violin

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)

  \repeat volta 2 {
    d8-.\f
    | g,4( a8) <g, f'>-. <g e'>4-. r8 g-.\p
    | c-. e-. d-. c-. b4 r8 b'-.
    | c( bes a b) c4 r8 c,-.\f
    | c-. r <g f'> r <g e'>4 r
    | r4 r16. g32 a16. b32 c16. d32 e16. f32 g8 g-.
    | e4( f8) d-. c4-. r8 c' ~
    | c f e r r c,4 <e c'>8
    | <d b'>4.\fz d8-. e-. f-. g-. <e c'>-.
    | <d b'>4.\fz d8-. e-. f-. g-. <e c'>-.

    % 10
    | <d b'>4.\fz f8-. g[-. f]-. e16.[ g'32 f16. e32]
    | d16. a'32 g16. f32 e16. g32 f16. e32 
    d16. a'32 g16. f32 e16. g32 f16. e32
    | d16. g32 e16. g32 d16. g32 e16. g32 d4 r
    | r r8 fis-.\p g4( a8)-. fis-.
    | g( f! e fis) g( d g fis)
    | b,( cis16 dis e8) d g,( a16 b c8) g
    | g2( a4) c8 a ~
    | a d,( g) d' cis4( e8) cis
    | d4 r8 b'-. gis8.(\trill fis32 gis) a8-. fis-.
    | g8.( a32 g) fis8 d ~ d16 f( e d) c8 c(

    % 20
    | b[ bes]) a16.[ d32 d16. d32] 
    d16.[\fz d32 d16. d32] d16.[ d32 d16. d32]
    | d16.\fz d32 d16. d32 d16. d32 d16. d32 
    d16.\fz d32 d16. d32 d8-. d-.
    | <d, d'>4\ff <d c'>8 <d c'> <d c'> r r e\p
    | c4( d8) b a e' a b-.\fz
    | a4. g8-.\fz fis4. e8-.\fz
    | d4. g,8-.\fz b4( c8) a-.
    | b16-.\f \repeat unfold 7 { <b d>-. } \repeat unfold 8 { <c d> }
    | \repeat unfold 8 { <b d> } \repeat unfold 8 { <c d> }
    | <b d> \repeat unfold 7 { <d b'> } \repeat unfold 8 { <d a'> }
    | \repeat unfold 8 { <d bes'> } \repeat unfold 8 { <d a'> }

    % 30
    | \repeat unfold 8 { <d bes'> } 
    <as' bes> <as bes> <as bes> <as bes> 
    <f bes> <f bes> <f bes> <f bes>
    | \repeat unfold 2 { <g bes> <g bes> <g bes> <g bes>
    <f bes> <f bes> <f bes> <f bes> }
    | g bes bes, as' g bes bes, as' g8 r r4
    | r2 r4 r8 d\p
    | es( bes c as) bes4( c8-.) as-.
    | g( bes des c) des4( c)
    | des1(
    | d!2 c)
    | b16-.\f \repeat unfold 7 { <b d>-. } \repeat unfold 8 { <c d> }
    | <b d> \repeat unfold 7 { <d b'> } \repeat unfold 8 { <d a'> }

    % 40
    | \repeat unfold 2 { <d b>[ <d b> <d b> <d b>] } 
    a'8[ a] a8.[(\trill g32 a)]
    | b8 g, r g32( a b c) d8[ a'] a8.[(\trill g32 a)]
    | b8 <d, b'> r <d a'> r <d b'> r <d a'>
    | <d b'> <d b'> r b' c8.(\trill b32 c) d8-. c-.
  }

  \alternative {
    {
      | b8[-. c]-. b[-. fis']-. g4 r
      | r8 fis,-.\p g4-. r8 fis'-. g4-.
      | r8 fis,-. g-. gis-. a-. ais-. b-. s
    }
    {
      | b8[-. c]-. b[-. fis']-. g4 r
    }
  }

  \repeat volta 2 {
    r2 r4 r8 d,-.\f

    % 50
    | b4( c8)-. a-. gis( b e) f!-.
    | d4( e8 c) b4( d8 c)
    | b4( d8 c) b4 r8 d'-.\p
    | b4-. r8 c-. a4-. r8 g'!-.
    | e4-. r8 cis-.\f d4( e8-.) cis-.
    | d4 r8 b c!4( d8)-. b-.
    | c-. f,-. e4-. r2
    | r4 r8 a'( ~ a16 f d8) r4
    | r r8 b'!( ~ b16 gis d8) c( b)
    | a dis,4 dis8 e( b c d)

    % 60
    | e e( f cis') d( e f) f ~
    | f e16 d e8 fis g4 r8 g ~
    | g f!16 e f8 gis a4 r8 a ~
    | a g!16 fis g8 ais b4. a8-.
    | fis4( g8)-. e-. fis( dis e b)
    | a4( ais8) e'16 e, fis8[( g] fis[) a'!]\p
    | fis8.(\trill e32 fis) g8( e fis dis e b)
    | a4( ais8) e'16 e, fis8( g fis g)
    | fis( g fis g) fis4 r
    | <gis, e'>4\f( <a dis>) <gis e'>4. e'8

    % 70
    | dis fis4\fz dis16 b e fis gis a b8 gis16 e
    | dis8 fis4\fz dis16 b e8 e4\fz gis16 e
    | dis16. e32 fis16. gis32 a16. fis32 a16. fis32 
    e16. fis32 gis16. a32 b16. gis32 b16. gis32
    | a16. cis32 gis16. b32 fis16. a32 fis16. dis32 e8 b'4\fz gis16 e
    | fis16. a32 fis16. dis32 b16. dis32 fis16. dis32 e8 e4\fz gis16 e
    | dis16. e32 fis16. gis32 a16. fis32 a16. fis32 
    e16. fis32 gis16. a32 b16. gis32 b16. gis32
    | a16. cis32 gis16. b32 fis16. a32 fis16. dis32 e8 b'4\fz gis16 e
    | fis16. a32 fis16. dis32 b16. dis32 fis16. dis32 e8 e4\fz b'8
    | b, a'4\fz fis16 dis e8 e4\fz e16(\p fis)
    | g!4( a8) fis e16( dis e fis) g8 g

    % 80
    | fis[( a] c![ a16 fis)] g8 b4 e,16(\pp fis)
    | g4( a8) fis e16( dis e fis) g8 g
    | g r g r g r g d'!-.\f
    | g,4( a8) <g, f'>-. <g e'>4-. r8 g-.\p
    | c-. e-. d-. c-. b4 r8 b'-.
    | c( bes a b) c4 r8 c,-.\f
    | c-. r <g f'> r <g e'>4 r
    | r4 r16. g32 a16. b32 c16. d32 e16. f32 g8 g-.
    | e4( f8) d-. c4-. r8 c' ~
    | c f e r r c,4 <e c'>8

    % 90
    | <d b'>4.\fz d8-. e[-. f]-. g[-. <e c'>]-.
    | <d b'>4.\fz b'8-. bes-. a-.g-. g-.
    | a-. bes-. c-. c-. bes4( g8) e-.
    | f-. g-. a-. d,-. e-. f-. g4
    | a2 d,4 r8 e'-.
    | cis8.(\trill b32 cis) d8-. b-. c8.( d32 c) b8 g ~
    | g16[ bes( a g]) f8[ f]( e[ es]) d[ g'](
    | fis4 f) e8.( f32 e) d8-. c-.
    | <d, b'> r <d b'> r <d b'> r r\fermata c'\p ~
    | c b16 a b8 cis d4 r8 e-.\fz

    % 100
    | d4. c!8-.\fz b4. a8-.\fz
    | g4. c,8-.\fz e4( f8) d-.
    | <c e>16-.\f \repeat unfold 7 { <c e>-. } \repeat unfold 8 { <d f> }
    | e e e e \repeat unfold 4 { <c e>-. } \repeat unfold 8 { <d f> }
    | e4 r8 \acciaccatura d'16 c( b32 c) b8( f' e d)
    | c4 r8 \acciaccatura f16 e( d32 e) d8 b b b
    | c8[ g] a c4 e,8[ f d]
    | c2 fis'4.\fermata r8\fermata
    | <g,, f'!>2 <d'' f>4.\fermata e8-.\p
    | c4-. r8 d-. g,4-. r8 c-.

    % 110
    | e,4-. r8 e-. f4-. r8 cis'-.
    | d4-. r8 e-. f4-. r
    | \acciaccatura g,,8 g'4 r \acciaccatura g,8 g'4 r
    | as,2( c'
    | as as')
    | es( c
    | a! fis)
    | c' r
    | e,!( f4) d
    | <c e>16\f-. \repeat unfold 7 { <c e>-. } \repeat unfold 8 { <d f> }

    % 120
    | e16 e e e \repeat unfold 4 { <c e> } \repeat unfold 8 { <d f> }
    | e \repeat unfold 7 { <e c'> } f'8[ f] f8.[(\trill e32 f])
    | e8[ e] e8.[(\trill d32 f]) 
    f8[ f] f8.[(\trill e32 f])
    | e8 e e e f8.(\trill e32 f) g8-. f,-.
  }

  \alternative {
    {
      | e8[-. b']-. c[-. f]-. e4 r8 b-.\p
      | c4-. r8 b,-. c4-. r8 b'-.
      | c4-. r r2	    
    }
    {
      | e,8[-. b']-. c[-.<d f>]-. <c e>4-. <d, b'>-.
      | <e c'>-. r r r8
    }
  }

  \bar "|."
}
