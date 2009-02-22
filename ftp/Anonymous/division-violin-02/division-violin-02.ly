
\header {
 mutopiatitle = "2. Duke of Norfolk, or Paul's Steeple"
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
 lastupdated = "2007/Mar/16"
 filename = "division-violin-02.ly"
 footer = "Mutopia-2009/02/22-1630"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.10.0"
\include "english.ly"

violin =  \relative c'' {
  \clef "treble"
  \key d \minor 
  \time 2/2 

  \repeat "volta" 2 { 
    \partial 4 r8 e |         \noBreak
    f8.[ e16] d8[ e] f4 f8.[ g16] |
    e8[ c c c] c4. c8 |
    d[ cs d e] f4 e8.[ d16] |
    a'8[ a a a] a4. g8 | \break
    f[ f f f ] f4. f8 |
    g[ g g g ] g4. g8 |
    a4 g8.[ f16] e8[ d ] d[ cs ] |
    d8 [d, f a] d4 
  }
  \repeat "volta" 2 {
    a'8.[ g16] |
    f8[ e16 f] d8[ e] f[ a g f] | 
    e[ d16 e] c8[ d] e[ g f e] |
    f8[ e16 f] d8[ e] f4 g |
    a8[ g16 f] e[ f d e] cs4 a |
    f' c f, a' |
    g g, e g' |
    a8[ f] g[ e] f[ d] e[ cs] |
    d4 d, d'4.
  }
  \repeat "volta" 2 {
    e8 |
    a, f'16[ e] d8[ cs] d[ f e d] |
    c8[ e16 d] c8[ b] c[ e d c] |
    d8[ d16 e] f8[ e] d4 e |
    cs e, a, cs' |
    c8[ e16 d] f8[ c16 bf] a8[ g16 a] f4 |
    c'8[ c16 d] e8[ e16 f] g8[ f16 g] e8[ d16 cs] |
    d8[ a'] e[ g] a[ f] cs[ a] |
    d8.[ d,16] f8[ a] d4.
  }  
  \repeat "volta" 2 {
    e8 |
    f16[ e d cs] d[ e f g] a[ g a f] g[ f e d] |
    c[ b c d] e[ f g a] g[ f e d] c[ d e c] |
    d[ cs d e] f[ e d c] bf[ a g f] g[ a'] gs8 |
    a[ e16 f] e8[ d16 e] cs8[ b16 cs] a8[ a,] |
    f''[ c16 d] c8[ bf16 c] a8[ g16 a] f8[ a'] |
    g[ e16 f] e8[ c16 d] c8[ e,16 f] e8[ c] |
    f'16[ e d cs] d[ e f g] a8[ d] cs16[ d e cs] |
    d8[ a16 bf] a[ g f e] d2 |
  }
  \repeat "volta" 2 {
    f8[ d] f,[ d] c'[ f] a[ c] |
    e,[ c] g[ e] c[ c'] e[ g] |
    f[ d] d,[ e] f[ e f g] |
    a[ e'] cs[ e] a,[ e] cs[ a] |
    f''[ c] a[ f] c'[ f] a[ c] |
    e,[ c] e,[ g] c, g''[ e c] |
    d[ f] cs[ e] d[ a'16 g] f[ e d cs] |
    d4 d, d' a'8[ g] | \break
  }
  \time 12/8
  f8.[ e16 f8] d8.[ e16 f8] f8.[ g16 a8] a8.[ bf16 c8] |
  e,8.[ f16 g8] c,8.[ d16 e8] e,8.[ f16 g8] c,8. g''16[ a8]  |
  f8.[ e16 f8] d8.[ e16 d8] a'8.[ g16 f8] e8.[ f16 d8] | 
  cs8.[ d16 e8] a,8.[ gs16 a8] e8.[ d16 e8] a,8. a''16[ g8] |
  f8.[ c16 bf8] a8.[ g16 a8] f8.[ f'16 e8] f8.[ g16 a8] |
  g8.[ f16 g8] c,8.[ bf16 c8] g8.[ f16 g8] c,4 a''8 |
  g[( a) e] f[( g) d] c[( e) a,] d8.[ e16 cs8] |
  d4 a8 f8.[ g16 a8] d,2. |
  \repeat "volta" 2 {
    \partial 8 f'16[ e] |
    \time 2/2
    d8[ cs d e] d,8. f'16 e[ f e d] |
    e8[ c] g[ e16 f] g[ g e d] c8 g''16[ e] |
    f8 d4 e8[ f] a4 d,16[ e] |
    cs8 a4 e16[ d] cs8 a4 a''16[ g] |
    f8 f,( f16)[ e f g] a8[ f] f'[ e16 f] |
    g8 c,( c16)[ b c d] e8[ c] g'[ f16 e] |
    a8[ bf16 a] g8[ f16 e] f8[ g16 f] e8[ d16 cs] |
    d8[ f,] a[ a,] d4. 
  }
  e8 |
  f16[ e f g] f[ e d cs] d[ e f g] a[ g a f] |
  e[ f e d] c[ d e f] g[ a g f] e[ f g e] |
  f[ g f e] d[ cs d e] f[ e f g] a[ gs a b] |
  cs[ b cs d] e[ cs b cs] a[ e d e] cs[ d e a,] |
  f'[ e f g] a[ g a bf] c[ bf a g] f[ g a bf] |
  c[ b c d] e[ d e f] g[ f e d] c[ e f g] |
  a8[ d,16 e f8] e16[ a,] d8 f,16[ g] a8[ a,] |
  d1 ||
    
}

groundbass =  \relative c' {
  \key d \minor
  \time 2/2 
  \clef "bass"

  \repeat "volta" 16 {
    d,4 d d d | c c c c | bf bf bf bf | a2. g4 | f f f f | c' c c c |
    d g, a2 | d,1 | \break
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
