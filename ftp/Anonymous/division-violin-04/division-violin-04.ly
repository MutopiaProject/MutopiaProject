
\header {
 mutopiatitle = "4. Old Simon the King"
 title = \mutopiatitle
 mutopiacomposer = "Anonymous"
 composer = "Anonymous"
 mutopiainstrument = "Violin"
 source = "Facsimile from 1685 edition of Playford's Division Violin, Bodleian Library"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Allen Garvin"
 maintainerEmail = "agarvin@tribalddb.com"
 maintainerWeb = "http://agarvin.nitfol.com/music"
 lastupdated = "2007/Mar/17"
 filename = "division-violin-04.ly"
 footer = "Mutopia-2009/02/22-1632"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.10.0"
\include "english.ly"

violin =  \relative c'' {
  \clef "treble"
  \key f \major
  \time 9/4

    \partial 4 g4 |
    a4. bf8 c4 c4. d8 c4 c2 a4 |
    a4. bf8 c4 c4. d8 e4 f2 f4 |
    a, f f f2 g4 a4. bf8 c4 |
    d2 c4 bf2 a4 g2 \bar "||" a'4 |

    g2 f4 e2 d4 c2 a'4 |
    g4. a8[ f g] e4. f8[ d c] c4 d e |
    f f, f a8[ bf c bf a g] a2 d,4 |
    g' g, g bf8[ c d c bf a] bf2 g4 \bar  "||" |

    a8[ bf] c4 e, c'( g) e c'2 g4 | 
    a8[ bf] c4 e, c'( g) e c'2 g4 | 
    a8[ bf] c4 g c( a) f a2 f4 | 
    bf8[ c] d4 g, e'8[ f] g4 d bf2 g4 \bar "||" |

    e'4. f8[ g a] g4 e d c4. d8[ e c] |
    e4. f8[ g a] g4 e c f4. g8[ a g] |
    a4 bf c c, a f a bf c |
    d4. e8[ f d] bf4. a8 bf4 g4. a8[ bf g] \bar "||" | 
    
    c4 a8([ bf c a)] g4 e8([ f g e)] c4 e8([ f g e)] |
    c'4 a8([ bf c a)] g4 e8([ f g e)] c4 e8([ f g e)] |
    f4 a8([ bf c a)] c4 a8([ bf c a)] f4 a8([ bf c a)]  |
    g4 bf8([ c d a)] d4 a8([ bf c a)] bf4 g8([ a bf g)] \bar "||" |
    
    c4 e8([ f g e)] g4 e8([ f g e)] c4 e8([ f g e)] |
    c4 e8([ f g e)] g4 e8([ f g e)] c4 e8([ f g e)] |
    f4 g8([ f e d)] c4 d8([ c bf a)] f4 a8([ bf c a)] |
    g'4 a8([ g f e)] d4 bf8([ c d bf)] g4 bf8([ c d bf)] \bar "||" |
    
    a8[ bf c bf a g] e[ d e f g e] a[ bf c bf a g] |
    a[ bf c bf a g] e[ d e f g e] a[ bf c bf a g] |
    f[ e f g a f] a[ g a bf c a] f[ e f g a f] |
    g[ a bf c d e] d[ c bf a bf g] bf[ a bf c d c] \bar "||" |

    c[ bf c d e c] e[ d e f g e] c[ bf c d e c] |
    c[ bf c d e c] e[ d e f g e] c[ bf c d e c] |
    f,[ e f g a f] a[ g a bf c a] f[ e f g a f] |
    g[ a bf c d e] d[ c bf a bf g] bf[ a bf c d bf] \bar "||" |

    c4. g8 e4 c d e c'4. g8 e4 |
    c'4. g8 e4 c d e c'4. g8 e4 |
    a( f) a a8([ bf)] c4 g a( f) a |
    bf g bf8([ g)] bf([ c)] d4 g, bf( g) bf \bar "||" |

    c8[ bf a bf c a] g[ f e d e c] e[ d e f g e] |
    c'[ bf a bf c a] g[ f e d e c] e[ d e f g e] |
    f[ e f g a bf] c[ bf a bf c a] f[ e f g a f] |
    g[ f g a bf g] bf[ a bf c d bf] g[ f g a bf g] \bar "||" |

    c4( e,) c' c( e,) c' c( e,) c' |
    c( e,) c' c( e,) c' c( e,) c' |
    a( f) a a( f) a a( f) a |
    bf( g) bf bf( g) bf bf( g) bf\fermata \bar "|."

}

groundbass =  \relative c {
  \key f \major
  \time 9/4
  \clef "bass"

  \repeat "volta" 2 {
    c2.( c2. c2.) |
    c2.( c2. c2.) |
    f,2.( f2. f2.) |
    g2.( g2. g2.) | \break
  }
}

\book {

\score {
   \context GrandStaff << 
    \context Staff = "one" <<
      \set Staff.instrumentName = \markup { "Violin" }
      \violin
    >>
  >>

  \layout{ }

  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 110 4)
      }
    }
}

\score {
   \context GrandStaff << 
    \context Staff = "one" <<
      \set Staff.instrumentName = \markup { \column { Ground Bass } }
      \groundbass
    >>
  >>

  \layout{ }

  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 110 4)
      }
    }
}

}
