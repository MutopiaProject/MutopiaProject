\version "2.10.25"
\include "english.ly"

\header
{
  title    	    = "Polonaise in F major"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV Anh. 117b"
  mutopiacomposer   = "BachJS"
  mutopiainstrument = "Piano"
  source	    = "Bach-Gesellschaft Ausgabe 1851-1899 Band 43 (1894)"
  sourceurl         = "http://imslp.org/wiki/Notebook_for_Anna_Magdalena_Bach_(Bach,_Johann_Sebastian)"
  style	            = "Baroque"
  copyright	    = "Public Domain"
  maintainer	    = "Steven McDougall"
  maintainerEmail   = "swmcd@world.std.com"
  maintainerWeb     = "http://world.std.com/~swmcd/steven/"
 footer = "Mutopia-2007/07/30-1015"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


upper = \relative c''
{
  \clef treble 
  \key f \major
  \time 3/4

  \repeat volta 2
  {
    f8\mordent f16 g \appoggiatura g16 a8 g16 a bf a g f                   | % 1
    g8 g16 a \appoggiatura g16 f8 e16 d e8\mordent c                       | % 2
    \appoggiatura bf8 a4 
                         
                         % The source has a schleifer on the d4,
                         % which LilyPond appears not to implement.
                         % I pieced one together from a prall and a slur.
                         \once \override Slur #'extra-offset = #'(  0.0  . -0.50 )
                         \grace { \hideNotes \stemDown a16^([ bf] \unHideNotes }
                         \once \override Script #'extra-offset = #'( -3.50 . -2.70 )
                         d4) \prall 

                                    c                                      | % 3
    bf8( 
         \once \override Script #'padding = #1.0
         c16\mordent d) \appoggiatura c16 bf8 a16 g a8\mordent f           | % 4
    a8( 
        \once \override Script #'padding = #0.5
        bf16\mordent c) d8 d16 e \appoggiatura d8 c4                       | % 5
    \appoggiatura c16 bf8( 
                           \once \override Script #'padding = #1
                           c16\mordent d) \appoggiatura c16 bf8 a16 g a8 f | % 6
    f'8 f16 e d8 c bf a                                                    | % 7
    g16 bf a g \appoggiatura g8 f2                                         | % 8
  }

  \repeat volta 2
  {
    a'8 a16 g  a8 g16 a bf a g f                                           | % 9
    g8 g16 f g8 f16 g a g f e                                              | % 10
    a8 a16 g f8 e d\prall c                                                | % 11
    b16 c d b c4 bf                                                        | % 12
    a8 c c\prall bf16 c \appoggiatura c8 d4                                | % 13
    g,8 bf bf a16 bf \appoggiatura bf8 c4                                  | % 14
    f8 f16 e d8 c bf a                                                     | % 15
    g16 bf a g \appoggiatura g8 f2                                         | % 16
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
    f8 a c a f c'                    | % 1
    e,8 c' d, b' c16 bf a g          | % 2
    f16 e d c bf f' e f a, f' e f    | % 3
    g,8 f' c e f,16 c' d e           | % 4
    f8 g16 a bf8 f a f               | % 5
    g8 f e c f16 g a bf              | % 6
    a8 f bf, c d bf                  | % 7
    c8 c, f a16 c f4                 | % 8
  }

  \repeat volta 2
  {
    f8 a c a f c'                    | % 9
    e,8 g c g e c                    | % 10
    f16 e f g a8 g f e               | % 11
    g8 g, c16 d e d c bf a g         | % 12
    f8 a c f bf, f'                  | % 13
    e8 g e c bf e                    | % 14
    a,8 f' bf, c d bf                | % 15
    c8 c, f a16 c f4                 | % 16
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
