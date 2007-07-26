\version "2.10.25"
\include "english.ly"

\header
{
  title    	    = "Polonaise in F major"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV Anh. 117a"
  mutopiacomposer   = "BachJS"
  mutopiainstrument = "Piano"
  source	    = "Bach-Gesellschaft Ausgabe 1851-1899 Band 43 (1894)"
  sourceurl         = "http://imslp.org/wiki/Notebook_for_Anna_Magdalena_Bach_(Bach,_Johann_Sebastian)"
  style	            = "Baroque"
  copyright	    = "Public Domain"
  maintainer	    = "Steven McDougall"
  maintainerEmail   = "swmcd@world.std.com"
  maintainerWeb     = "http://world.std.com/~swmcd/steven/"
 footer = "Mutopia-2007/07/26-1013"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


upper = \relative c''
{
  \clef treble 
  \key f \major
  \time 3/4

  \repeat volta 2
  {
    f8\mordent f16 g \appoggiatura g16 a8 g16 a bf a g f                 |
    g8\mordent g16 a \appoggiatura g16 f8 e16 d e8\mordent c             |
    <<
      { \appoggiatura bf8 a 4 \stemUp d c } \\
      {                   f,4         f f }
    >>                                                         	         |
    bf8 c16\mordent d \appoggiatura c16 bf8 a16 g a8\mordent f           |
    a8( 
        \once \override Script #'padding = #0.5
        bf16\mordent c) d8 d16 e \appoggiatura d8 c4                     |
    \appoggiatura c16 bf8( 
                           \once \override Script #'padding = #1
                           c16\prall d) \appoggiatura c16 bf8 a16 g a8 f |
    f'8 f16 e d8 c bf a                                                  |
    g16 bf a g \appoggiatura g8 f2                                       |
  }

  \repeat volta 2
  {
    a'8\mordent a16 g \appoggiatura g16 a8 g16 a bf a g f                |
    g8\mordent g16 f \appoggiatura f16 g8 f16 g a g f e                  |
    a8 a16 g f8 e d c                                                    |
    b16 c d b c4\mordent bf\prallmordent                                 |
    a8 c c\prall bf16 c \appoggiatura c8 d4                              |
    g,8 bf bf\prall a16 bf \appoggiatura bf8 c4                          |
    f8 f16 e d8 c bf a                                                   |
    g16 bf a g \appoggiatura g8 f2                                       |
  }

  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower = \relative f
{
  \clef bass
  \key f \major
  \time 3/4
  
  \repeat volta 2
  {
    <<
      { a8 bf c4 c } \\
      { f,4   f  f }
    >>                               |
    <<
      { c'4 b c } \\
      { e,4 d c }
    >>                               |
    d16 ef d c bf8 bf' a a,          |
    g8 f' e c f16 c bf c             |
    <<
      { f4  f  f } \\
      { f,4 bf a }
    >>                               |
    <<
      { f'4 g } \\
      { d4  e }
    >>             f16 e f g         |
    a8 f bf c d bf                   |
    c8 c, f c16 a f4                 |
  }

  \repeat volta 2
  {
    <<
      { c''4 c c } \\
      { f, 4 f f }
    >>                               |
    <<
      { c'4         c c } \\
      { s 4 \stemUp g s } \\
      { s 4         e s } \\
      { e 4         c e }
    >>                               |
    <<
      {	c'4 c a } \\
      { f4  a f }
    >>                               |
    g8 g, c c, d e                   |
    f8 f'16 g a8 f bf bf,            |
    c8 d c bf a g                    |
    a8 f bf c d bf                   |
    c8 c, f a16 c f4                 |
  }

  \override Staff.RehearsalMark #'direction = #-1
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.dfermata" }
}

\score 
{
  \new PianoStaff
  <<
    \new Staff = upper \upper
    \new Staff = lower \lower
  >>
  
  \layout
  {
    \context 
    {
      \Score
      \remove "Mark_engraver"
    }
    \context 
    {
      \Staff
      \consists "Mark_engraver"
    }
  } 

  \midi   { }
}
