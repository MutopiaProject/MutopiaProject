
\header {
 mutopiatitle = "1. Select Divisions upon a Ground"
 title = \mutopiatitle
 mutopiacomposer = "Reddings"
 composer = "Mr. Reddings"
 mutopiainstrument = "Violin"
 source = "Facsimile from 1685 edition of Playford's Division Violin, Bodleian Library"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Allen Garvin"
 maintainerEmail = "agarvin@tribalddb.com"
 maintainerWeb = "http://agarvin.nitfol.com/music"
 lastupdated = "2007/Mar/16"
 filename = "division-violin-01.ly"
 footer = "Mutopia-2009/02/22-1629"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.10.0"
\include "english.ly"

violin =  \relative c' {
  \key d \major \partial 2 << a2 e' a cs ^"Tuning"  >>
  \override Staff.TimeSignature  #'style = #'single-digit
  \time 3/4
  \clef "treble"

  \repeat "volta" 2 { 
    g4 cs2      | % bar 1
    b4. a16[ b] cs4 |
    e,4 fs g |
    << b4. d,4. >> a'16[( fs)]  << g4 \\ g4 >> |
  } 
  \repeat "volta" 2 {
    << g \\ g >> g'2 |% bar 5
    g4. fs8 e4 |
    g fs e |
    << b4. d,4. >> a'16[( fs)]  << g4 \\ g4 >> | 
  }
  \repeat "volta" 2 {
    cs << g \\ g >> cs |% bar 9
    b fs cs' |
    e, fs g |
    << b4. d,4. >> a'16[( fs)]  << g4 \\ g4 >> | 
  }
  \repeat "volta" 2 {
    g' e g |% bar 13
    fs b, g' |
    e a, cs | 
    << b4. d,4. >> a'16[( fs)]  << g4 \\ g4 >> | 
  }
  \repeat "volta" 2 {
    a8.[ b16] cs4 b8.[ a16] |% bar 17
    fs8.[ a16] b4 a8.[ fs16] | \break
    e8.[ fs16] a4 b |
    << b4. d,4. >> a'16[( fs)]  << g4 \\ g4 >> | 
  }
  \repeat "volta" 2 {
    e'8.[ fs16] g4 fs8.[ e16] | 
    a,8.[ e'16] fs4 e8.[ b16] | \break
    a8.[ b16] e8.[ g16] fs8.[ e16] |
    << b4. d,4. >> a'16[( fs)]  << g4 \\ g4 >> | 
  }
  \repeat "volta" 2 {
    r cs a |
    r b cs |
    r e, a |
    << b4. d,4. >> a'16[( fs)]  << g4 \\ g4 >> | 
  }
  \repeat "volta" 2 {
    r g' e |
    r a b, |
    r g' e |
    << b4. d,4. >> a'16[( fs)]  << g4 \\ g4 >> |  
  }
  \repeat "volta" 2 {
    a8.[ b16] cs8.[ a16] d,8[ cs'] |
    b8.[ fs16] a8.[ b16] cs8.[ d,16] |
    e8.[ fs16] g8.[ b,16] a8.[ g'16] |
    fs8.[ b16] a8.[ fs 16] g8.[ g,16] | 
  }
  \repeat "volta" 2 {
    e''8.[ fs16] g8.[ e16] a,8.[ e'16] |
    fs8.[ g16] a8.[ b,16] fs8.[ b16] |
    e8.[ fs16] g8.[ e16] a,8.[ cs16] |
    b8.[ a16] fs8.[ b16] g8.[ g,16] | 
  }
  \repeat "volta" 2 {
    r4 cs'8( b) cs( a) |
    r4 b8( a) b( cs) |
    r4 e,8( fs) a( b) | 
    << b4. d,4. >> a'16[( fs)]  << g4 \\ g4 >> |  
  }
  \repeat "volta" 2 {
    r4 g'8( fs) g( e) | 
    r4 a8( g) a( b,) |
    r4 g'8( fs) g( e) |
    << b4. d,4. >> a'16[( fs)]  << g4 \\ g4 >> |  
  }
  \repeat "volta" 2 {
    a16[ b a b] cs8.[ a16] d,8.[ cs'16] |
    b8.[ fs16] a16[ b a b] cs8.[ d,16] |
    e16[ d e fs] g8.[ b,16] a8.[ g'16] |
    fs8.[ b16] a16[ b a fs] g8[ g,] | 
  }
  \repeat "volta" 2 {
    e''16[ fs e fs] g8.[ e16] a,8.[ e'16] |
    fs16[ e fs g] a8.[ b,16] fs8.[ b16] |
    e16[ fs e fs] g8.[ e16] a,8.[ cs16] |
    b8.[ a16] fs8.[ b16] a8[ g,] | 
  }
  \repeat "volta" 2 {
    cs'2. |
    b4. a16[ b] cs4 | 
    e,4 fs g |
    fs8.[ b16] a16[ b a fs] g8[ g,] | 
  }
  \repeat "volta" 2 {
    g4 g''2 |
    a,,4 fs''2 | 
    g,,4 cs'2 |
    fs8.[ b16] a16[ b a fs] g8[ g,] | 
  }
  \repeat "volta" 2 {
    g4. b8 fs4 |
    g4. b8 e4 |
    fs g a |
    fs2 e4 |
  }
  \repeat "volta" 2 {
    fs4. e8 b4 |
    e4. fs8 g4 |
    g4. a8 fs4 |
    g2. | 
  }
  \repeat "volta" 2 {
    b,4. a8 fs4 |
    a4. b8 e4 |
    e,4. fs'8 g4 |
    e2 b4 |
  }
  \repeat "volta" 2 {
    g'4. fs8 e4 |
    b4. g'8 fs4 |
    e4. fs8 b,4 |
    << g2. \\ g >> |
  }
}

groundbass =  \relative c' {
  \key d \major
  \override Staff.TimeSignature  #'style = #'single-digit
  \time 3/4
  \clef "bass"

  \repeat "volta" 19 {
    a4 a a | e2 fs4 | cs2 b4 | e2 a,4 |
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
