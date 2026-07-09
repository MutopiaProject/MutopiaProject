sectionA = {
  \clef bass
  \relative c' {
    \tenorClef
    c2. e8 d
    | d2. f8 e
    | e8 f16 g f8 e d c b d
    | b4 a\trill g4 r
    | g2 c4. e8
    | e8 f cis d d4 r
    | g,4. b8 d4. f8
    | dis2 e4 r
    | fis8 g f e d c b bes 
    | a \cAccOn b \cAccOff c cis d e f fis
    | g4 \cAccOn f16 \cAccOff e d c d2\trill
    | c4 r r2
    | c4 \grace d8 c16 b c d e8 c e fis
    | g4. fis16 e d4 r8 d
    | d c b c fis e d c | c b b4 r16 d cis d e\trill d c b
    | a8 g g2 gis4
    | b8 a a a  a16 g a b  c b c\trill d
    | dis8 e b c gis a e a
    | \cAccOn g16 \cAccOff fis e d d8 d d4 r
    \clef bass
    | g,4 g' g, g'
    | g, g' g, fis' | g a b c
    | b4. \tuplet 3/2 { c16 b a }
    \bentKnee g8 g, a b
    | c4 e g c
    | e,2 fis4 g
    | c,4 c c c
    | d2 d8 a' b c | d2 e8 d c b
    | b8 a  g2 a4
    | b8 ( g ) c ( a ) d( b ) g' ( e )
    | d4. \tuplet 3/2 { e16 d c}   b4 r
    | e4 #(if facsimile #{ e4. #} #{ e4 ~ e8 #} ) fis16 [ g ] fis8 e
     | d8  #(if facsimile #{ cis8 #} #{ des8 #} )   c2  b4
%%| d8 #(if facsimile #{ cis #} #{ des #} )  c2  b4
    | dis16 e dis e d c b a a2\trill
    \tuplet 3/2 4 {
      | g8 a b a b c
      \omit TupletNumber
      \override TupletBracket.bracket-visibility=##f
      b c d c d e
      | d8 b d c a c b g b a fis a
      | g a b a b c b c d c d e
      | d8 b d c a c b g b a fis a
    }
    | g8 a16 b c d e fis g4 b,,,4
    | c4 fis''8 g fis e d c
    | b16 ( c cis d ) c ( b a g ) a2\trill
    | g4 fis g a | b a g d | g fis g a | b a g d
    | \repeat tremolo 4 g8 \repeat tremolo 4 g8
    | \repeat tremolo 4 e8 \repeat tremolo 4 fis8
    | g8 g c, c d d d d
    | g8 ( a ) a ( b ) b ( c ) c-. c-.
    | c8 ( b) b ( a ) a ( g ) g ( fis )
    | g ( a ) a ( b ) b ( c ) c-. c-.
    | c ( b ) b ( a ) a ( g ) g ( fis )
    | #(if facsimile #{ f2 #} #{ fis2 #} ) ( g4 ) r
  }
}


sectionB= \relative c' {
  | r8 g, b d g4 r
  | r8 d fis a d4 r
  | g,,2 b | d4 c\trill  b8 #(if facsimile #{  ^[ #} #{ [ #}  ) g' d b ]
  | g8 b d g b4 g | a c ~ c8  b  a g 
  | fis1 | g2 g8 e d c
  
  | b1 c2 
  \bentKnee c8 c' b a
  | g4 c, d d
  | g2 ~ g8  a16 ( b c d e f )
  | g2 g8 f d f | f8 e e4 r2
  | e2 e8 d b d | d c c4 r c8 c
  | c8 b  b2  a4
  | gis8 b  e2  d4
  | d8 c b a d c b a
  | gis b   e2  d4
  | d8 c b a a' f e dis
  | e2 r
  | e4. ( c8 ) a4 r
  | r4 a( c e ) | e ( d d ) r | r d d d
  | d4. ( b8 gis4 ) r
  | r4 gis ( b d ) | b c c r
  | r e e e | a1 a,
  | #(if facsimile #{ bes1 ( b!4 ) #} #{ ais1 ( b4 ) #} ) b4 d f
  | f e r e
  | r d b gis
  | a8 c c c d16 c b c d c b a
  | g8 a a a b16 a g a b a g f
  | e8 f f f g16 f e f g f e d
  | #(if facsimile #{ g4 s8 #} #{ g4. #} ) a16 b c8 d e c
  | b8 a a4 a8 b c cis
  | d8 cis d e g f e d
  | c16 b a g g8 g g4 r
  | c,,4 c' c, c' | c, c' c, c'
  | c d e f
  | e4.
  #(if (not facsimile) #{ \once \undo \omit TupletNumber \once \override TupletBracket.bracket-visibility=##t #} )
  \tuplet 3/2 { f16 e d } c8 c, d e
  \omit TupletNumber
  |f4 a c f
  | a,2 b4 c
  | f,4 f f f
  | g2 ~ g8 d' e f
  | g2 ( a8 ) g f e
  | e d #(if facsimile #{ \once \stemDown c2 #} #{ c2 #} ) d4
  | e8 c f d g e c' a
  | g4.
  #(if (not facsimile) #{ \once \undo \omit TupletNumber \once \override TupletBracket.bracket-visibility=##t #} )
  \tuplet 3/2 { a16 g f } e4 r
  \omit TupletNumber
  | a4 #(if facsimile #{ a4. #} #{ a4 ~ a8 #} ) b16 c  b8 a
  | g4 #(if facsimile #{fis f2*1/2 #} #{ ges f4 #} ) e
  | gis16 ( a gis a ) g ( f e d ) d2\trill 
  | c8 d16 e f g a b c d e d c b a g
  | f g a g f e d c b g b d f g  f d
  | c8 d16 e f g a b c d e d c b a g
  | f g a g f e d c b g b d f g f d
  | c8 d16 e f g a b c d e f g8 e,,
  | f4 d''8 c b a g f
  | e16 f fis g f e d c d2\trill
  | c2 r4 e | d r f d | e2 r4 e
  | d2 f4 d
  | \repeat tremolo 4 e8 g,2
  | a b | c4 f g g,
  | \tenorClef c'8 ( d ) d ( e ) e ( f ) f-. f-.
  | f ( e ) e ( d ) d ( c ) c ( b )
  | c ( d ) d ( e ) e ( f ) f-. f-.
  | f ( e ) e ( d ) d ( c ) c ( b ) 
  | d2 ( c4 ) r
}
