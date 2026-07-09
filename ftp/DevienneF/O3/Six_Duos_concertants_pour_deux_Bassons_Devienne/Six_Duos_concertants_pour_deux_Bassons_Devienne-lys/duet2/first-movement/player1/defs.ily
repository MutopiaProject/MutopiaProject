sectionA = {
  \clef bass
  \partial 4
  \relative c' {
    d,4
    \tupletSpan 4
    | \grace fis8 g4 #(if facsimile #{ g4. ( b8 ) a c #} #{ g4 ~ g8 b8 a c #} )
    | c8 b #(if facsimile #{ b4. d8 c e #} #{ b4 ~ b8 d8 c e #} )
    | d4 c16 b a g g'4. fis8
    | fis4 e\trill d r
    | c2 \grace { d8 c } b a g fis
    \set Timing.beamExceptions = #'()
    \set Timing.baseMoment = #(ly:make-moment 1/4)
    \set Timing.beatStructure = 2,2
    \set Timing.beamExceptions =
    \beamExceptions { \repeat unfold 4 \tuplet 3/2 { 8[ 8 8] } }
    \override TupletBracket.direction = #UP
    | d'4. e16 ( fis ) \tuplet 3/2  {
      g8 fis e d c b
      | \override TupletBracket.bracket-visibility = ##f
      \omit TupletNumber 
      a c d e d c b d g, a c fis,
      | g b a g fis e d e d c b a
    }
    | g4 r r d'
    | g #(if facsimile #{ g4. b8 a c #} #{ g4 ~ g8 b8 a c #} )
    | b2 b,2
    | c8 d e fis 

    #(if facsimile #{     \once \override Beam.auto-knee-gap=#1 #} )
    g g, a b
    | a2 c | b1
    | c4 e c cis
    | d d d fis8 g
    | a4. fis16 g a8 a b c
    | d4. e16 fis e4 e8 fis
    | g8 e16 fis d8 cis16 d cis8 a16 b a8 g
    | g4 fis r8 d' d d
    | d b gis4 r8 e'8 e e
    #(if (not facsimile) #{ \override TupletBracket.bracket-visibility = ##t \undo \omit TupletNumber #} )
    | \tuplet 3/2 { e8 cis a } 
         \override TupletBracket.bracket-visibility = ##f
      \omit TupletNumber 
\cAccOn g2 \cAccOff fis4
    | b8 c16 d c8 b #(if facsimile #{ a4 g8 s8 #} #{ a4. g8 #} )
    | eis2 fis8 d' d d
    | d b gis4 r8 e' e e
    | \tuplet 3/2 { e8 cis a } \cAccOn g2 \cAccOff fis4
    | b8 cis16 d cis8 b a g fis e
    | d4 r r a'8 a
    | a16 gis a b cis b cis d e d e fis \cAccOn g8 \cAccOff g
    | fis8 d a a a4 r
    | \grace b8 a16 gis a b cis b cis d e d e fis \cAccOn g8 \cAccOff g
    | fis8 d a a a4. gis8
    \tuplet 3/2 4 {
      b8 ( cis ) d d d d c ( b ) a a a a
      | g a b b b b a g fis fis fis fis
      | e fis g g a b b a g g fis e
    }
    | gis16 ( a b a ) g fis e d e2\trill
    | d2 fis8 ( g gis a ) | a4. ais8 b ( d cis b )
    | b4 a b8 ( a g fis )
    | e8 ( d e fis ) g4 g
    | g4 fis fis8 ( g g a )
    | a8 ( gis a ais ) b ( d cis b )
    | a ( d fis e ) d ( cis d c )
    | ais ( b d b ) a ( g fis e )
    \partial 2.
    e2 ( fis4 )
  }
}


sectionB= \relative c' {
  \partial 4
  | r4
  | r2 r4 a,
  | d #(if facsimile #{ d4. fis8 e g #} #{ d4 ~ d8 fis8 e g #} )
  | fis2 g
  | g,8 a b c d d e fis
  | e2 g
  | fis4 fis fis fis
  | g g a a
  | d,2 r4 a
  | d #(if facsimile #{ d4. fis8 e g #} #{ d4 ~ d8 fis8 e g #} ) 
  | fis4 #(if facsimile #{ fis4. a8 g b #} #{ fis4 ~ fis8 a8 g b #} )
  | a4\trill a16 gis a b c4 c
  | c8 dis, dis2 e4
  | fis4. g8 a b16 c b8 a
  | g4 b cis dis | e2 ( e )
  | \grace d8 c1 (
  | \grace d8) c4 b8 a a g fis e
  | e2 dis4 r
  | b'4. c8 b e d c
  | c8 b b4 r8 b b b
  | \grace { a16 b} c4 b8 a \grace { a16 b } c4 b8 a
  | a2 ( g4 g )
  | g8 fis a c c4 b8 dis,
  | e8 fis g a b cis dis e
  | \cAccOn d8 \cAccOff c b a g4 fis\trill
  \override TupletBracket.direction = #UP
  #(if (not facsimile) #{ \override TupletBracket.bracket-visibility = ##t \undo \omit TupletNumber #} )
  \tuplet 3/2 4 {
    e8 e' fis g fis e 
    \override TupletBracket.bracket-visibility = ##f
    \omit TupletNumber
    dis2*3/2
    | e8 e fis g fis e dis2*3/2
    | e8 e fis g fis e \cAccOn d \cAccOff cis d e d c
    | b8 d c b a g g' fis e d c b
  }
  | a16 g a b c b c d
  \tuplet 3/2 {
    e8 d c b a g
  }
  | g4 fis r b8 c
  | d4 b8 c d b a g
  | g fis #(if facsimile #{ fis4. #} #{ fis4 ~ fis8 #} ) g8 a b
  | c8 a16 ( b) a8 fis16 ( g ) fis8 d16 ( e ) d8 c
  | c b b4 r8 g''8 g g
  | g ( e ) cis4 r8 cis cis cis
  | d16 ( e d cis ) c2 b4
  | e8 fis16 g fis8 e d4. c8
  | ais2 b8 g' g g
  | g ( e ) cis4 r8 cis cis cis
  | d16 e d cis c2 b4
  | e8 fis16 g fis8 e d c b a
  | g2 r4 d8 d
  | d16 e d e fis g fis g a b a b c8 c
  | b g d' d d4\trill r
  | d,16 e d e fis g fis g a b a b c8 c
  | b g d' d d4.\trill ( dis8 )
  \tuplet 3/2 {
    | e8 ( fis g ) g g g fis ( e d ) d d d
    | c ( d e ) e e e  d ( c b ) b b b
    | a8 b c c d e e d c c b a
  }
  | #(if facsimile #{ cis16 _( d e d c b a g )  #} #{ cis16 ( d e d c b a g )  #} )
  a2\trill
  | g2 b8 ( c cis d )
  | d4. dis8 e ( g fis e )
  | e4 d e8 ( d c b )
  | a ( g a b ) c4 c
  | c b b8 ( c cis d )
  | d ( cis d dis ) e ( g fis e )
  | \cAccOn #(if facsimile #{ d8 _( \cAccOff b g' fis e d c b ) #} #{ d8 ( \cAccOff b g' fis e d c b ) #} )
  | gis ( a c e d c b a )
  \partial 2.
  | a2 g4
}
