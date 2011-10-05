\version "2.14.0"
\include "english.ly"

\header
{
  title    	    = "Minuet in C minor"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV Anh. 121"
  mutopiacomposer   = "BachJS"
  mutopiainstrument = "Piano"
  source	    = "Bach-Gesellschaft Ausgabe 1851-1899 Band 43 (1894)"
  sourceurl         = "http://imslp.org/wiki/Notebook_for_Anna_Magdalena_Bach_(Bach,_Johann_Sebastian)"
  style	            = "Baroque"
  copyright	    = "Public Domain"
  maintainer	    = "Steven McDougall"
  maintainerEmail   = "swmcd@world.std.com"
  maintainerWeb     = "http://world.std.com/~swmcd/steven/"

 footer = "Mutopia-2011/06/15-1613"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


upper = \relative c
{
  \clef treble 
  \key c \minor
  \time 3/4

  \repeat volta 2
  {
    c''4 c d 	   		  | % 1
    ef4 ef f 	   		  | % 2
    g4 g af 	   		  | % 3
    fs2\trill g4 ~ 		  | % 4
    g8 af f! e f4 ~ 		  | % 5
    f8 g ef! d ef4 		  | % 6
    c8 b c4 d      		  | % 7
    g,2.            		  | % 8
  }

  \repeat volta 2
  {
    g4 g af         		  | % 9
    bf8 af g af bf4  		  | % 10
    c,4 e \times 2/3 { g8 af bf } | % 11
    af8 g f2                      | % 12
    f4 f g                        | % 13
    af8 g f g af4                 | % 14
    bf,4 d \times 2/3 { f8 g af } | % 15
    g8 f ef2                      | % 16
    g4 af a                       | % 17
    bf4 b c                       | % 18
    b4 c d                        | % 19
    ef4 e f                       | % 20
    d4 ef! e                      | % 21
    f4 fs g                       | % 22
    g,4 f'!8 ef d ef              | % 23
    c2.                           | % 24
  }

  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower = \relative c
{
  \clef bass
  \key c \minor
  \time 3/4

  \repeat volta 2
  {
    c2 r4    	  		   | % 1
    c4 c d   	  		   | % 2
    ef4 ef c 	  		   | % 3
    d4 c b   	  		   | % 4
    bf!2 a4  	  		   | % 5
    af!2 g4  	  		   | % 6
    af2 f4   	  		   | % 7
    g4 g'8 f ef d 		   | % 8
  }

  \repeat volta 2
  {
    << { r4 e f } \\
       { c2.    } >>               | % 9 
    g'4 e c                        | % 10
    e4 c e                         | % 11
    f4. g8 f ef!                   | % 12
    << { d2     ef4 } \\ 
       { r4 bf2     } >>           | % 13
    f'4 d c                        | % 14
    d4 bf d                        | % 15
    ef4. f8 ef d                   | % 16
    c4 f ef                        | % 17
    d4 g ef                        | % 18
    d4 c b                         | % 19
    c4 bf! a                       | % 20
    b4 c bf                        | % 21
    a4 af g                        | % 22
    ef'4 f g                       | % 23
    c,2.                           | % 24
    
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

  \midi   
  {
    \context 
    {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 108 4)
    }
  }
}
