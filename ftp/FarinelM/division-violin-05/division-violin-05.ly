\header {
 mutopiatitle = "5. Faronell's Division on a Ground"
 title = \mutopiatitle
 mutopiacomposer = "FarinelM"
 composer = "M. Farinel"
 mutopiainstrument = "Violin"
 source = "Facsimile from 1685 edition of Playford's Division Violin, Bodleian Library"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Allen Garvin"
 maintainerEmail = "agarvin@tribalddb.com"
 maintainerWeb = "http://agarvin.nitfol.com/music"
 lastupdated = "2008/Jul/20"
 filename = "division-violin-05.ly"
 footer = "Mutopia-2009/02/22-1633"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.10.0"
\include "english.ly"

violin =  \relative c'' {
    \clef "treble"
    \key d \dorian
    \time 3/4 

    d4 d4. e8 | cs4 cs2 | 
    d4 d4. cs16[ d] | e4 e2 |
    f4 f4. g8 | e4 e e | 
    d4 d4. e8 | cs4 cs cs |
    d4 d4. d8 | cs4 cs cs |
    d4 d4. cs16[ d] | e2 e4 |
    f4 f4. f8 | e4 e f8[ e] |
    f[ d] cs4. d8 | d2. \bar "||"

    d8.[ cs16 d8. e16 d8. e16] | cs8.[ b16 cs8. d16 cs8. e16] |
    d8.[ cs16 d8. e16 d8. f16] | e8.[ d16 e8. f16 e8. g16] |
    f8.[ e16 f8. g16 f8. g16]  | e8.[ d16 e8. f16 g8. f16] |
    d8.[ cs16 d8. e16 d8. e16] | cs8.[ b16 cs8. d16] cs[ a b cs] |
    d8.[ cs16 d8. e16 d8. e16] | cs8.[ b16 cs8. d16] cs[ a b cs] |
    d8.[ cs16 d8. e16 d8. f16] | e8.[ d16 e8. f16] e[ cs d e] |
    f8.[ e16 f8. g16 f8. a16] | g8.[ f16 g8. a16] g[ e f g] |
    f8.[ e16] e4. d8 | d2. \bar "||"

    d4 d, d' | cs a cs8[ cs] |
    d4 f, d'8[ d] | e4 g, e'8[ e] |
    f4 f,8[ f' e d] | e4 g,8[ e' d cs] |
    d4 f,8[ d' cs b] | cs4 a8[ b cs a] |
    d4 a d,8[ d'] | cs4 a e8[ cs'] |
    d4 a f8[ d'] | e4 c g8[ e'] |
    f4 c a8[ f'] | g4 e c8[ g'] |
    f[ e] e4. d8 | d2. \bar "||"

    d8[ a] f[ d] a'[ d] | cs[ a] e[ cs] a cs' |
    d[ a] f[ d] a'[ d] | 
        e[ cs] g[ e] \set suggestAccidentals = ##t cs8[ 
                     \set suggestAccidentals = ##f e'] |
    f[ cs] a[ f] \set suggestAccidentals = ##t cs'[ 
                 \set suggestAccidentals = ##f f] | e[ c] g[ e] c e' |
    d[ a] f[ d] a'[ d] | cs[ a] e[ cs] a16[ a' b cs] |
    d8[ a] f[ d] a'[ d] | 
        cs[ a] e[ \set suggestAccidentals = ##t cs8] 
                  \set suggestAccidentals = ##f a16[ a' b cs] |
    d8[ a] f[ d] a'[ d] | e[ cs] g e] c16[ c' d e] |
    f8[ c] a[ f] c'[ f] | g[ e] c[ g] e16[ e' f g] |
    a8[ e] f4. d8 | d2. \bar "||"
    
    f4 f4. g8 | e4 e2 |
    f4 f4. e16[( f)] | g4 g2 |
    a4 a4. b8 | g4 g a8[ g] |
    f[ e] f4. g8 | e4 e2 |
    f4 f4. g8 | e4 e e |
    f4 f4. e16[ f] | g4 g g |
    a a4. bf8 | g4 a8[ g f e] |
    f[ g] e4. d8 | d2. \bar "||"
    
    f8[ d16 e] d8[ e f g] | e[ d16 e] c8[ d e g] |
    f[ e16 f] e8[ a g f] | g[ f16 g] e8[ g f e] |
    f8[ c16 b] a8[ f a bf] | g[ f16 g] e8[ f g a] |
    f[ e16 f] d8[ e f g] | e[ d16 e] cs4 a |
    f'8[ e16 f] d8[ f16 g] a8[ g16 f] | e8[ e'16 d] cs8[ b16 cs] a8[ b16 cs] |
    d8[ a16 g] f8[ e16 f] d8[ e16 f] | g8[ f16 g] e8[ d16 e] c8[ c'16 d] |
    c8[ bf16 c] a8[ g16 a] f8[ bf16 a] | g8[ g'16 f] e8[ d16 e] c8[ d16 e] |
    f8[ e16 f] e4. d8 | d2. \bar "||"

    f4 d f | e cs e | f d f | g e g | 
    a f a | g e g| f d f | e cs e |
    f8[ e d a' f g] | e4 cs8[ a] e'[ cs] |
    d[ e f d a' f] | g4 e8[ c] g'[ e] |
    f[ g a d, f g] | e[ c e g e g] |
    f[ e] e4. d8 | d2. \bar "||"

    <f d>8[ <e cs>] <f d>4 r |
    <e cs>8[ <f d>] <e cs>4 r |
    <f d>8[ <e cs>] <f d>4 r |
    <g e>8[ <f d>] <g e>4 r |
    

}


groundbass =  \relative c {
  \key d \dorian
  \time 3/4
  \clef "bass"

  \repeat "volta" 10 {
    d4 d2 | a4 a2 | 
    d4 d2 | c4 c2 | 
    f4 f,2 | c'4 c2 | 
    d4 d,2 | a'4 a2 |
    d4 d2 | c4 c2 |
    f4 f,2 | c'4 c2 |
    d4 a2 | d2. |
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
          tempoWholesPerMinute = #(ly:make-moment 65 4)
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

