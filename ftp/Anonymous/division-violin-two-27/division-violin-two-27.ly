
\header {
    mutopiatitle = "27. Greensleeves  to a Ground with Division"
    title = \mutopiatitle
    subtitle = "The Second Part of the Division-Violin"
    mutopiacomposer = "Anonymous"
    composer = "Anonymous"
    mutopiainstrument = "Violin"
    source = "Facsimile from 1705 edition (4e) of Playford's Division Violin (second part), Royal College of Music, London"
    style = "Baroque"
    copyright = "Public Domain"
    maintainer = "Allen Garvin"
    maintainerEmail = "agarvin@tribalddb.com"
    lastupdated = "2009/Dec/08"
    filename = "division-violin-two-27.ly"
 footer = "Mutopia-2009/12/15-1730"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.10.3"
\include "english.ly"

violin =  \relative c'' {
    \key g \minor
    \override Staff.TimeSignature  #'style = #'single-digit
    \time 3/2
    \clef "treble"

    \repeat "volta" 2 {       % ** variation 1
      \mark \markup { \circle "1" }
      bf2 c4 d2 d4 | c2 a4 f2. | 
      g4. a8 bf4 c d bf | a2 fs4 d2. | \break
      bf'2 c4 d4. c8 bf4 | c2 a4 f4. g8 a4 | 
      bf4. a8 g4 a4. g8 fs4 | g2.( g) | \break
    }
    \repeat "volta" 2 {       % ** variation 2
      \mark \markup { \circle "2" }
      bf4. c8 d4 d4. ef8 d4 | c4. d8 c4 a4. bf8 c4 | 
      bf4. a8 bf4 g4. a8 bf4 | a4. bf8 a4 fs4. g8 a4 | \break
      bf4. c8 d4 d4. ef8 f4 | c4. d8 c4 a4. bf8 c4 | 
      bf4 a g fs4. \set suggestAccidentals = ##t e8 \set suggestAccidentals = ##f fs4 | g2.( g) | \break
    }
    \repeat "volta" 2 {       % ** variation 3
      \mark \markup { \circle "3" }
      f'2 f4 f ef d | c2 c4 a bf c | bf2 g4 g a bf | a2 a4 fs g a | \break
      f'2 f4 f ef d | c2 c4 a bf c | d c bf c a2 | g2.( g) | \break
    }
    \repeat "volta" 2 {       % ** variation 4
      \mark \markup { \circle "4" }
      d'4 bf g d' bf g | c a f c' a f | d'4 bf g d' bf g | a fs d a' fs d | \break
      f' d bf f' d bf | c a f c' a f | d' bf g a fs d | g2.( g) | \break
    }
    \repeat "volta" 2 {       % ** variation 5
      \mark \markup { \circle "5" }
      f' bf, g' f4. ef8 d4 | c a f c' c, ef'8[ f] | g4 g, a' bf a g | fs d a d d4. ef8 |\break
      f4 bf, g' f4. ef8 d4 | c a f c' c, d'8[ c] | bf4 a g a fs d | g2.( g) | \break
    }
                                \pageBreak
    \repeat "volta" 2 {       % ** variation 6
      \mark \markup { \circle "6" }
      g4 bf g d'8[ c bf a] g4 | f a f c'8[ bf a g] f4 | 
      g bf g d'8[ c bf a] g4 | d fs d \set suggestAccidentals = ##t a'8[ g fs e] \set suggestAccidentals = ##f d4 |\break
      bf' d bf f'8[ ef d c] bf4 | f a f c'8[ bf a g] f4 | 
      d'8[ c bf a] g4 a8[ g fs \set suggestAccidentals = ##t e] \set suggestAccidentals = ##f d4 | g2.( g) | \break
    }
    \repeat "volta" 2 {       % ** variation 7
      \mark \markup { \circle "7" }
      bf4 g a bf c d | a f g a bf c | bf g a bf c d | a2 fs4 d2. | \break
      d'4 bf c d ef f | a, f g a bf c | bf g bf a fs d | g2.( g) | \break
    }
    \repeat "volta" 2 {       % ** variation 8
      \mark \markup { \circle "8" }
      g8[ a bf c d g,] g'[ fs g a bf g] | g2 f4 f2. | 
      g,8[ a bf c d g,] g'[ fs g a bf g] | fs2 d4 d2. | \break
      bf8[ a bf c d ef] f[ g a f g a] | f4 c c c4. d8 ef4 | 
      bf a g fs4. \set suggestAccidentals = ##t e8 \set suggestAccidentals = ##f fs4 | g2.( g) | \break
    }
    \repeat "volta" 2 {       % ** variation 9
      \mark \markup { \circle "9" }
      bf8[ a bf c d c] bf[ a bf c d c] a[ g a bf c bf] a[ g a bf c bf] |
      bf[ a bf c bf a] g[ f g a bf g] a[ g a g fs \set suggestAccidentals = ##t e] d[ e fs g fs d] | \break \set suggestAccidentals = ##f 
      bf'[ a bf c d c] bf[ a bf c d c] | c[ bf c d c bf] a[ g a bf c a] |
      bf[ a bf c d c] c[ bf a g a fs] | g2.( g) | \break
    }
    \repeat "volta" 2 {       % ** variation 10
      \mark \markup { \circle "10" }
      g8[ a] bf4 g bf8[ c] d4 g, | f8[ g] a4 f a8[ bf] c4 f, |
      g8[ a] bf4 g bf8[ c] d4 g, | d8[ \set suggestAccidentals = ##t e] \set suggestAccidentals = ##f fs4 d fs8[ g] a4 d, | \break
      bf'8[ c] d4 bf d8[ ef] f4 bf, | f8[ g] a4 f a8[ bf] c4 f, |
      g'8[ a] bf4 g fs8[ g] a4 fs4 | g2.( g) | \break
    }
    \repeat "volta" 2 {       % ** variation 11
      \mark \markup { \circle "11" }
      bf4 bf bf bf, bf bf | f' f f f,4. g8 a4 | 
      g' g g g,4. a8[ bf c] | d4 d d fs, d d | \break
      bf'' bf bf bf,4. c8[ d ef] | f4 f g a4. g8 f4 | 
      bf a g fs4. \set suggestAccidentals = ##t e8 \set suggestAccidentals = ##f fs4 | g2.( g) | \break
    }
                            \pageBreak
    \repeat "volta" 2 {       % ** variation 12
      \mark \markup { \circle "12" }
      bf,8[ d d d d d] bf8[ d d d d d] | a[ c c c c c] a[ c c c c c] |
      g[ bf bf bf bf bf] g[ bf bf bf bf bf] | f[ a a a a a] d,[ a' a a a a] | \break
      d[ f f f f f] bf,[ f' f f f f] | a,[ c c c c c] f,[ c' c c c c] |
      g[ bf bf bf bf bf] d,[ a' a a a a] | g2.( g) | \break
    }
    \repeat "volta" 2 {       % ** variation 13
      \mark \markup { \circle "13" }
      g'4 f8[ ef d c] bf2 g4 | f'4 ef8[ d c bf] a2 f4 |
      g'4 f8[ ef d c] bf2 g4 | d'4 c8[ bf a g] fs2 d4 | \break
      bf''4 a8[ g f ef] d2 bf4 | f' ef8[ d c bf] a2 f4 |
      bf8[ c d \set suggestAccidentals = ##t e \set suggestAccidentals = ##f fs g] a[ g fs d  e \set suggestAccidentals = ##f fs] | g2.( g) | \break
    }
    \repeat "volta" 2 {       % ** variation 14
      \mark \markup { \circle "14" }
      bf,4 g d'8[ c] bf4 g c8[ bf] | a4 f c'8[ bf] a4 f d'8[ c] |
      bf4 g d'8[ c] bf4 g a8[ g] | fs4 d a'8[ g] fs4 d f'8[ ef] | \break
      d4 bf f'8[ ef] d4 bf c8[ bf] | a4 f c'8[ bf] a4 f d'8[ ef] | 
      f4 d g fs2 \set suggestAccidentals = ##t e8[ \set suggestAccidentals = ##f fs] | g2.( g) | \break
    }
    \repeat "volta" 2 {       % ** variation 15
      \mark \markup { \circle "15" }
      bf,4 f' ef d c bf] | f c' bf a g f | 
      g d' c bf a g | d' a' g fs e d | \break
      bf f' ef d c bf | f c' bf a g f | 
      g d' c8[ bf] a[ g fs \set suggestAccidentals = ##t e \set suggestAccidentals = ##f fs d] | g2.( g) | \break
    }

    

   
}

groundbass =  \relative c' {
    \key g \minor
    \override Staff.TimeSignature  #'style = #'single-digit
    \time 3/2
    \clef "bass"

    \repeat "volta" 2 {
        bf2. bf, | f' f, | g g' | d( d) | bf( bf) | f'( f) | g d | g,( g) |
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
                tempoWholesPerMinute = #(ly:make-moment 80 2)
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

