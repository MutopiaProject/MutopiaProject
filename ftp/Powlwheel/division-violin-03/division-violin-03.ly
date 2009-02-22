\header {
 mutopiatitle = "3. Mr. Powlwheel's Division on a Ground"
 title = \mutopiatitle
 mutopiacomposer = "Powlwheel"
 composer = "Mr. Powlwheel"
 mutopiainstrument = "Violin"
 source = "Facsimile from 1685 edition of Playford's Division Violin, Bodleian Library"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Allen Garvin"
 maintainerEmail = "agarvin@tribalddb.com"
 maintainerWeb = "http://agarvin.nitfol.com/music"
 lastupdated = "2008/Jul/20"
 filename = "division-violin-03.ly"
 footer = "Mutopia-2009/02/22-1631"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.10.0"
\include "english.ly"

violin =  \relative c' {
    \clef "treble"
    \key d \minor
    \time 2/2

    f4. g8 a4 bf |
    c a d2 | 
    e2 f4 f8.[ e16] |
    e4 a b gs |
    a1 \bar "||" 

    d,,8.[ e16] f8[ g] a[ f] d'8.[ g,16] |
    a8[ e'] f8.[ a,16] bf8[ c] g'8.[ b,16] |
    c8[ e] a8.[ cs,16] d8[ e] f[ g16 f] |
    e8[ a,16 b] c8[ d16 c] b[ e d c] b8.[ a16] |
    a1\fermata \bar "||"

    a8[ bf c a] bf[ c d e] |
    f[ g a f] c[ a' g a] |
    f[ e f d] e16[ a g a] f[ g a f] |
    d[ f g a] bf[ a g f] e[ f e d] cs[ d e f] |
    d8[ d, f a] d2\fermata \bar "||"

    a'8[ a,16 b] c8[ e] g[ g,16 b] c8[ b] |
    a[ f] c'[ d] c[ gs] a[ cs] |
    d[ d,16 e] f[ g a b] c8.[ e,16] f8.[ a16] |
    bf[ d, g, d''] g8.[ f16] e[ cs a cs] a'8.[ cs,16] |
    d8[ d,] f16[ g a8] d2\fermata \bar "||"

    d,8[ d'] d8.[ e,16] f8[ d'] d8.[ g,16] |
    a8.[ e'16] f[ f, g a] bf8.[ d16] g[ g, a b] |
    c8.[ e16] a[ a, b cs] d8[ d,16 e] f8[ g] |
    a[ b] c[ d] e[ b16 c] b8[ gs] |
    a8[ e16 f] e8[ d] a2\fermata \bar "||"

    d16[ d' d e] f[ e f e,] f[ a b c] d[ c d g,] |
    a[ e' d e] f[ e f a,] b[ d e f] g[ f g b,] |
    c[ e f g] a[ g a cs,] d[ f e f] d[ d, f g] |
    a[ c b c] a[ b c d] e[ c b a] gs[ a b gs] |
    a8[ e16 f] e8[ d] a2\fermata \bar "||"

    a'8[ a'] c,16[ d e8] b[ g'] e,16[ g c8] |
    f,[ a] f16[ a f'8] e,[ e'] a,,16[ a' cs8] |
    d,[ d'] d,16[ d' f8] g,[ c] f,16[ c' f8] |
    bf,[ d] g,16[ d' g8] a,[ f'] e8.[ d16] |
    d1\fermata \bar "||"

    a8.[ b16] c[ d e fs] g[ g, a b] c[ c, d e] |
    f8.[ g16] a[ b c d] e[ e, fs gs] a[ a, b cs] |
    d8.[ e16] f[ g a bf] c[ g e c'] a[ f a f'] |
    bf,[ d, bf d'] g[ g, d' f] e[ cs a f'] e[ cs a cs] |
    d8[ a16 bf] a8[ g16 a] fs8[ d] d'4\fermata \bar "||"

    d8[ e16 d32 e] f8[ g] a8[ f,16 e32 f] g8[ bf16 a32 bf] |
    a8[ e'16 d32 e] f8[ a,16 g32 a] bf8[ d16 e32 f] g8[ b,16 a32 b] |
    c8[ e16 f32 g] a8[ cs,16 b32 cs] d8[ e16 d32 e] f8[ d,32 e f g] |
    a8[ b16 a32 b] c16.[ b32] a[ b c d] e8 e,32[ f g a] b8 a'32[ gs fs gs] |
    a8 cs,32[ b a b] cs16[ e cs a] a,2\fermata \bar "||"

    d16[ c' d e] f[ e f g] a[ c,] f,[ a] bf[ g] g, bf'' |
    a[ e] a,[ e'] f[ c] f,[ a'] bf,[ d,] bf[ d'] g[ d] g,[ f'] |
    c[ g e gs'] a[ a, a, cs'] d[ a] d,[ e] f[ g a b] |
    c[ b a e'] b[ e gs, e'] b[ gs e gs'] a32[ gs a gs] a[ gs a gs] |
    a4 a, a,2\fermata \bar "||"

    a''16[ a,32 bf] c16[ d e c] a[ e'32 f] g16[ b,] g[ a32 b] c16[ g] c,[ d32 e] |
    f8.[ g16] a32[ b c b] a[ b c d] e16 e,32[ f] g16[ b] a,[ a'32 b] c16[ e] |
    d,[ e] f32[ g a bf] c32[ b c b] c[ b a b] c16 c,32[ d] e16[ g] f[ a] g[ c] |
    a[ e'] d32[ e f d] g16[ g,] g32[ a b g] a16[ d cs b] d32[ cs d cs] 
        d[ cs b cs] |
    d4 d, d'2\fermata \bar "||"

    a'16[ g a e] cs[ d e f] g[ f g d] e[ d 
        \set suggestAccidentals = ##t cs b] \set suggestAccidentals = ##f  |
    a[ c, d e] f[ a b a] gs[ e fs gs] a[ c d e] |
    f[ a, bf c] d[ g, a bf] c[ bf a g] f[ c' a e'] |
    f[ e d c] bf[ a' g a] g[ f e d] cs[ a b cs] |
    d8[ a] d,[ a'] d2\fermata \bar "|."
}


groundbass =  \relative c {
  \key d \minor
  \time 2/2 
  \clef "bass"

  d4. e8 f4 g | a f bf g | c a d d, | a' f e2 | a,1 \bar "||"
  a'4. a8 g4 bf, | f'4. f8 e4 a, | d4. d8 c4 f, | bf g a2 | d1\fermata \bar ":|"
 
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

