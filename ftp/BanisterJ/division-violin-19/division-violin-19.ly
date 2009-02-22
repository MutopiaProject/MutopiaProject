
\header {
 mutopiatitle = "19. A Division upon a Ground"
 title = \mutopiatitle
 mutopiacomposer = "BanisterJ"
 composer = "John Banister"
 mutopiainstrument = "Violin"
 source = "Facsimile from 1685 edition of Playford's Division Violin, Bodleian Library"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Allen Garvin"
 maintainerEmail = "allen.garvin@dal.tribalddb.com"
 maintainerWeb = "http://agarvin.nitfol.com"
 lastupdated = "2001/May/31"
 filename = "division-violin-19.ly"

 footer = "Mutopia-2009/02/22-94"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.10.0"
\include "english.ly"

voiceone =  \relative c' {
  \key f \major
  % \override Staff.TimeSignature   #'style = #'1style
  \override Staff.TimeSignature  #'style = #'single-digit
  \time 3/4
  \clef "treble"

  \repeat "volta" 2 { 
    f4 c'2			|
    c4.  c8[ d e] 		|
    f4 f4. e8	|
    e4. e8 f4			|
    g a bf			| \noPageBreak
    c,4.  c8[ d e]		| \noPageBreak
    f4 f4. e8			| \break
  }
  \repeat "volta" 2 {
    f4. f8 g4 			|
    a4. a8 bf4			|
    g4. g8 a4			|
     f8.[ e16] f4 g		| \break
    e4. d8 c4			|
    d4 e f			|
    c4. bf8 a4			|
     bf8.[ a16]  g8.[ d'16]  c8.[ bf16]	|
    a4. g8 f4			| \break
  }
  \repeat "volta" 2 {
     f8.[ e16] f8.[ g16] a8.[ b16]	|
     c8.[ bf16] c8.[ d16] e8.[ c16]	|
     f8.[ e16] d8.[ e16] f8.[ g16]	|
     e8.[ f16] e8.[ d16(]  c4)	| \break
     g'8.[ f16] g8.[ a16] bf8.[ e,16]|
     f8.[ g16] f8.[ e16] d8.[ g16]	|
    e4 f  f8.[ e16]		|
    f4 f4. g8			| \break
  }
  \repeat "volta" 2 {
     a8.[ g16] a8.[ bf16] c8.[ a16]	|
     bf8.[ a16] g8.[ f16] e8.[ a16]	|
     f8.[ g16] f8.[ e16] d8.[ g16]	|
     e8.[ f16] e8.[ d16] c8.[ f16]	| \break
     d8.[ c16] d8.[ e16] f8.[ d16]	|
     c8.[ d16 c8. bf16]  a8.[ bf16] |
     bf8.[ a16] g8.[ d'16] c8.[ bf16]|
    a4. g8 f4			|  \break
  }
  \repeat "volta" 2 {
    f4 a4. bf8			|
    c4 cs4. cs8			|
    d4 e f			|
    e fs4. fs8			| \break
    g4 a bf			|
    c a4. a8			|
    bf4 g f			|
    f4. c8 g'4			| \break
  }
  \repeat "volta" 2 {
    a4  f8.[ g16] a4		|
    g e  f8.[ g16]		| 
    f4  d8.[ e16] f4		|
    e4. d8 c4			| \break
    d  d8.[ e16]  f8.[ d16]	|
     c8.[ d16 c8. bf16] a4	|
     bf8.[ a16]  g8.[ d'16] c4	|
    a4. g8 f4			| \break
  }
  \repeat "volta" 2 {
    f4 c'2			    |
    c4. bf8 c4			|
    bf4. e8 f4			|
    e4. d8 c4			| \break
    d4 f2			    |
    f4. e8 f4			| 
    e4. a8 bf4			|
    a4. g8 f4			| \break
  }
  \repeat "volta" 2 {
    a4. bf8 a4			|
    g4. f8 e4			|
    f4. d8 g4			|
    e4. d8 c4			| \break
    d4. e8 f4			|
    c4. bf8 a4			|
    bf4. g8 c4			|
    a4. g8 f4			| \break
  }
  \repeat "volta" 2 {
    a4.  g8[ a bf]		|
    c4  a8.[ c16]  d8.[ e16]	|
    f4. d8 g4			|
    e4. e8 fs4			| \break
    g4.  g8[ a bf]		|
    c4 a4. bf8			|
     g8.[ d16] e4. f8		|
    f2.                 | \break
  }
  \repeat "volta" 2 {
    a2.				|
    a2.				|
    f2.				|
    e2.				|
    d2.				|
    c2.				|
    bf4 bf4. a8			|
    a2.				| \break
  }
  \repeat "volta" 2 {
     f8.[ e16] f8.[ g16 a8. bf16]	|
     c8.[ g16] a8.[ e16] f8.[ g16]	|
     f8.[ e16] d8.[ a'16] bf8.[ a16]	|
     g8.[ f16 e8. d16] c4	| \break
     d'8.[ c16] d8.[ e16 f8. g16]	|
     e8.[ d16 c8. bf16] a8.[ bf16] |
     bf8.[ a16] g8.[  f'16] e8.[ d16] |
     c8.[ bf16 a8. g16] f4	| \break
  }
  \repeat "volta" 2 {
     a'8.[ g16] a8.[ bf16] a8.[ bf16]|
     g8.[ f16] g8.[ a16 g8. a16]	|
     f8.[ e16] f8.[ g16] d8.[ f16]	|
     e8.[ f16] e8.[ d16] c8.[ f16]	| \break
     d8.[ c16] d8.[ e16] f8. d16]	|
     c8.[ d16] c8.[ bf16 a8. bf16]	|
     bf8.[ a16 bf8. g16]  d'8.[ e16] |
    c4. bf8(  a4)		| \break
  }
  \repeat "volta" 2 {
     a8.[ g16] a8.[ bf16 a8. bf16]	|
     g8.[ f16] g8.[ a16 g8. a16]	|
     f8.[ e16 f8. g16] d8.[ f16]	|
     e8.[ f16 e8. d16] c8.[ f16]	| \break
     d8.[ c16 d8. e16] f8.[ d16]	|
     c8.[ d16] c8.[ bf16] a8.[ bf16]	|
     bf8.[ a16 g8. a16 bf8. c16]	|
    a4. g8(  a4)			| \break
  }
  \repeat "volta" 2 {
     c'8[ a16(  bf)]  c8[ g a g]		|
     g[ e16(  f)]  g8[ a f e]		|
     f[ d16(  e)]  f[ g a bf]  c[ d e f] 	|
     g[ a g f]  e[ f e d] c4		|\break
     g'8[ g16(  a)]  bf8[ a] bf[ d,]		| 
     c[ d16(  c)]  bf8[ c]  a[ f'16(  e)] 	|
    f8 g4 f8  f8.[ e16]			|
    f2 g4				| \break
  }
  \repeat "volta" 2 {
     a8[ f16(  a)]  a8[ f bf a]		|
     g[ e16(  f)]  g8[ c, a' g]		|
     f16[ e d c]  b8[ g' d f]		|
     e16[ f e d]  c8[ g' e f]		| \break
     d16[ c d e]  f[ e f g]  f[ e f d]  	|
     c[ bf c d]  c[ d c bf]  a[ bf c a] 	|
     bf[ c bf a]  g[ f g a]  bf[ a bf c]	|
     a8.[ bf16 a8. g16] f4		| \break
  }
  \repeat "volta" 2 {
     a'16[ g a bf]  a[ bf a g]  a[ g a f] 	|
     g[ f g a]  g[ a g f]  e[ f g e]	|
     f[ e f g]  f[ g f e]  d[ e f e]	|
     e[ f e d]  c[ bf c d]  e[ d e c]	| \break
     d[ c d e]  f[ e f g]  f[ e f d]	|
     c[ bf c d]  c[ d c bf]  a[ bf c a]	|
     bf[ a bf c]  bf[ c bf a]  g[ a bf c]	|
    a4. g8(  f4)				| \break
  }
  \repeat "volta" 2 {
    c'2.		|
    cs?2.		|
     d8.[ a'16] bf4 bf	|
    bf4. bf8 a4		|
    a4. a8 g4		|
    g4. g8 f4		|
    f4 f4. e8		|
    f2.			| \break
  }
  \repeat "volta" 2 {
    a4 bf2		|
    g4 a2		|
    f4 g2		|
    e2 f4		|
    d4. d8 e4		|
    c4. c8 d4		|
    bf4 bf4. a8		|
    a2.			| \break
  }
  \repeat "volta" 2 {
     a8.[ bf16] bf4. bf8	|
    c4 d e		|
    f e f		|
    e fs4. fs8		|
    g4 a bf		|
    c,4. bf'8 a4	|
    g4 g4. f8		|
    f2.\fermata		| \break
  }
    
}

\score {
   \context GrandStaff << 
    \context Staff = "one" <<
      \voiceone
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
