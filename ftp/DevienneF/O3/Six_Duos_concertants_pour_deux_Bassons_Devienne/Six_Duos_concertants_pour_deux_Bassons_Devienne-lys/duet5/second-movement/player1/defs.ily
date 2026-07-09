uptoFine = \relative c' {
  #(if facsimile #{ c8 #} )
  | a4 f8 c'4 a8
  | \grace c8 bes8 a bes g4 a8
  | \grace c8 bes8 a g d g f
  | e d e c d e | f ( a c ) bes ( g bes)
  | a ( f c' ) bes ( g bes ) | a f' c c bes a
  | a g g g4 c8
  | a4 f8 c'4 a8
  | \grace c8 bes a bes g4 a8
  | bes a g d g f
  | e d e \bentKnee c c' f
  | e ( d e ) f ( c f )
  | e ( d e ) f ( e ees ) d ( c bes ) a ( bes g )
  | #(if facsimile #{ g4*3/2  #} #{ g4.   #} ) f4\fermata

}
uptoSegno = \relative c' {
  a8 
  | g4 e8 g4 e8 | f4 a8 f4 a8
  | g4 e8 g4 e8
  | f4 a8 f4 e8
  | f4. f
  | f4 fis8 g4 g8
  \tenorClef
  | g'4. f8 d b  | c4 e8 d4 g,8
  | g'4. f8 d b | c4 e8 d4 g,8
  | a16 b d c b a \clef bass g f #(if facsimile #{ b! #} #{ \once \omit Accidental b^\markup \natural #} ) a g f
  | e d g f e d c b d c b a
  | g b d g b d f d b g f d
  | \bentKnee e8 g' c, f d b | d c c c4 r8
  | f,4. e
  | b c | f e | b c | f4 r8 d4 r8
  | b2. c4 e8 f4 g8
  | c,4 r8 #(if facsimile #{ s4 #} #{ r4 #} ) c'8
  | b16 c d c b8 c16 d e d c8
  | d16 e f e d8 e16 g f e d c
  | b c d c b8 c16 d e d c8 | d16 e f e d8 e16 g f e d c
  | cis ( d ) e ( f ) cis ( d )  ( #(if facsimile #{ ais16 bes16 #} #{ bes16 b16 #} ) ) cis ( d ) ais ( #(if facsimile #{ bes16 #} #{ b16 #} ))
  | fis g ais b cis d e \cAccOn f \cAccOff d \cAccOn b \cAccOff g f
  | e g' f e d c #(if facsimile #{ d4*3/2\trill #} #{ d4.\trill #} )
  | #(if facsimile #{ c2.*11/12 \grace { d16 c } s16 b4. #} #{ c2. \grace { d16 c } ces4. #} )
   bes4. 
   | a8 d c c4 c8 | c bes g e c' bes
   | gis4 a8 c d c
   | #(if facsimile #{ b4 b8 #} #{ ces4 ces8 #} ) bes8 c bes
   | a d c c f e d c bes a g f
   | \bentKnee e8 g' f e d c
   #(if facsimile #{
   | b c d c b bes #}
        )
}
uptoEnd = \relative c' {
  \tenorClef  
  #(if facsimile #{ \partial 8 a8 #} )
  | d4. f8 e d
  | cis d e a,4 a8 
  | d cis d f e d 
  | e4. ( a4)  a,8 
  | bes ( d c ) bes ( a g )
  | fis ( g a bes c d )
  | b c bes a g f
  | e f g a bes c
  | bes g' bes, a  f' a, 
  | a g g g4 c8
  | e,4. f8 g a 
  | bes 4 c16 bes a8 c c 
  | e,4. f8 g a
  | bes c bes a c cis | d cis d e d e 
  | f e d c bes a
  | g d' c bes a g
  | g4. f4 r8
  \clef bass
  | d4. d
  | e  ~ e8 e d
  | cis2. 
  | d8 g f f4 f'8
  | e4 cis8 d 4 f8
  | e4 cis8 d4 a8
  | g f g bes a g
  | f a' g f e d | e g f e d cis
  | d2. ~ d4. e
  | f4 ( c8 a4 c8 ) | bes 4 ( g8 c4 bes8 )
  | a ( f' c ) a ( f c' ) 
  | bes ( g g' ) e ( c bes )
}

