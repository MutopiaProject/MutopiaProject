
sectionA = {
  \clef bass
  \partial 4
  \relative c' {
    \tupletSpan 4
    \set Timing.beamExceptions = #'()
    \set Timing.baseMoment = #(ly:make-moment 1/4)
    \set Timing.beatStructure = 2,2
    \set Timing.beamExceptions =
    \beamExceptions {
      \repeat unfold 4 \tuplet 3/2 { 8[ 8 8] }
    }
    r4
    | r2 r4 d,
    | g #(if facsimile #{ g4. #} #{ g4 ~ g8 #} ) b8 a c
    | b2 b,
    | c8 d e fis
    \bentKnee
    g g, a b | a2 c2
    | b4 b b b
    | c c \stemUp d d \stemNeutral
    | g,2 r4 d'
    | \grace fis8 g4 #(if facsimile #{ g4. (  #} #{ g4 ~ ( g8  #} ) b8 ) a c
    | b4 #(if facsimile #{ b4. ( #} #{ b4 ( ~ b8 #} )  d8 ) c e
    | d4 c16 b a g g'4. fis8
    | fis4 e d r
    | c2 \grace { d16 c } b8 a g fis
    \tuplet 3/2 {
      | d'8 b c d e fis 
      \omit TupletNumber 
      \override TupletBracket.bracket-visibility=##f
      g fis e d c b
      | a8 gis a c b c e d c b a g
    }
    | g2 fis4 d8 e
    | fis4. d16 e fis8 fis g e
    | fis4 d a' g8 fis
    | e4 cis a cis
    | d8 d cis d d,4 r
    | r8 b' d e b4 r
    | r8 cis e a \stemUp cis,4 d \stemNeutral
    | g8 a16 b a8 g fis4. e8
    | cis2 d4 r
    | r8 b d e b4 r
    | r8 cis e a cis,4 \once \stemUp d
    | g8 a16 b a8 g fis e d cis
    | d ( e16  fis g a b c d c b a g fis) e d
    | a2 r4 a8 a
    | d16 e d e fis g fis g a g fis g a b cis d
    | cis2 r4 a,8 a
    | d ( e16 fis g a b cis ) d8 d, e fis
    \tuplet 3/2 {
      | g8 ( a b ) b b b a ( g fis ) fis fis fis
      | e8 ( fis g ) g g g fis ( e d ) d d d
    }
    | g,2. g'4 | fis g a a, | d d, d'8 ( e eis fis )
    | fis4. fis8 g ( b a g )
    | g4 fis g8 ( fis e d )
    #(if facsimile #{     cis8 _[ ( b cis d ] ) #} #{ cis8 ( b cis d ) #} )
    e4 e
    | e d d8 ( e eis fis )
    | fis4. fis8 g( b a g)
    | fis4 fis fis fis
    | g g a a,
    \partial 2.
    | d a d,
  }

}


sectionB= \relative c' {
  \partial 4
  | a,4
  | d #(if facsimile #{ d4. #} #{ d4 ~ d8 #} ) fis8 e g
   | fis4 #(if facsimile #{ fis4. #} #{ fis4 ~ fis8 #} ) a8 g b
  | a4 g16 fis e d d'4. cis8
  | cis4 b a r
  | g2 \grace { a16 g } fis8 e d cis
  | a'4. b16 cis
  \tuplet 3/2 {
    d8 cis b a g fis
    | e8 fis g g a b a b a g fis e
  }
  | d4 \grace { e16 d } cis8 b a g fis e
  | d4 r r a'
  | d4 #(if facsimile #{ d4. #} #{ d4 ~ d8 #} ) fis8 e g
  | fis4 fis16 e fis g a4 a
  | a c2 b4
  | a8 g fis e dis2 | e4 r r2 | r4 e fis gis
  | a a, c e
  | a,2. ais4 | b b b r
  | g'4. a8 g c b a | a g g4 r8 g g g
  | \grace { fis 16 g } a4 g8 fis \grace { fis 16 g } a4 g8 fis
  | fis2 e4 e
  | a,2 b | e8 dis e fis g a fis g
  | b a g fis e4 dis\trill
  | e2 \tuplet 3/2 {
    fis8 c' b a g fis
    | e2*3/2 fis8 c' b a g fis
  }
  | e2 fis | g b, | c2. cis4
  \tuplet 3/2 {
    | d8 fis a g fis e d e d c b a
  }
  | g4 g g g | a a a8 b a g
  | fis2 d
  \bentKnee
  | g8 g' fis g g,4 r
  | r8 e' g a e4 r
  | r8 fis a d fis,4 g
  | c8 e16 e d8 c b4. a8
  | fis2 g4 r
  | r8 e g a e4 r | r8 fis a d fis,4 g
  | c8 d16 e d8 c b a g fis
  | g8 ( a16 b c d e fis g fis e d c b  a ) g
  | d2 r4 fis8 fis
  | g16 a g a b c b c d c b c d e fis g
  | fis2 r4 fis,8 fis
  | g8 ( a16 b c d e ) fis g8 g, a b
  \tuplet 3/2{
    | c8 ( d e ) e e e d ( c b ) b b b
    | a8 ( b c ) c c c b ( a g ) g g g
  }
  | c,2. c4 | b c d d, 
  | g r g'8 ( a ais b )
  | b4. b8 c ( e d c )
  | c4 b c8 ( b a g ) | fis ( e fis g ) a4 a | a g g8 ( a ais b )
  | b4. b8 c ( e d c )
  | b2 b, | c4 c d d 
  \partial 2.
  | g, g' g,
}
