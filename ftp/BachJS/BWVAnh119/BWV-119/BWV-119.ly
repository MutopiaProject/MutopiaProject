\version "2.10.25"
\include "english.ly"

\header
{
  title    	    = "Polonaise in G minor"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV Anh. 119"
  mutopiacomposer   = "BachJS"
  mutopiainstrument = "Piano"
  source	    = "Bach-Gesellschaft Ausgabe 1851-1899 Band 43 (1894)"
  sourceurl         = "http://imslp.org/wiki/Notebook_for_Anna_Magdalena_Bach_(Bach,_Johann_Sebastian)"
  style	            = "Baroque"
  copyright	    = "Public Domain"
  maintainer	    = "Steven McDougall"
  maintainerEmail   = "swmcd@world.std.com"
  maintainerWeb     = "http://world.std.com/~swmcd/steven/"
 footer = "Mutopia-2007/07/30-1016"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


upper = \relative g'
{
  \clef treble 
  \key bf \major
  \time 3/4

  \repeat volta 2
  {
    g8. a16 bf4 c 	   			       	| % 1
    a8 a16 bf c2  	   			       	| % 2
    bf8 bf16 c d8 g c, g'  			       	| % 3
    bf,8 a16 bf g2         			       	| % 4
  }

  \repeat volta 2
  {
    bf8. c16 d4 f4         			       	| % 5
    d8 c16 bf a bf c a f4  			       	| % 6
    f'8 d bf f' g16 f ef d 			       	| % 7
    ef8 c a ef' f16 ef d c 			       	| % 8
    d8 c16 d ef8 d c bf    			       	| % 9
    a16 bf c a bf4 bf,     			       	| % 10
    d'4\staccatissimo ef\staccatissimo g,\staccatissimo | % 11
    fs8 fs16 g a8 d, fs a                              	| % 12
    d4\staccatissimo ef\staccatissimo g,\staccatissimo 	| % 13
    fs8 fs16 g a8 d, fs a                              	| % 14
    d8 d16 ef d8 d16 ef d8 g                           	| % 15
    bf,8 a16 bf g4 g,                                  	| % 16
  }

  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower = \relative g
{
  \clef bass
  \key bf \major
  \time 3/4
  
  \repeat volta 2
  {
    g4 g g         | % 1
    g4 fs8 e fs d  | % 2
    g4 g, c        | % 3
    d4 g8 g, bf d  | % 4
  }

  \repeat volta 2
  {
    g8. a16 bf4 a  | % 5
    bf4 f f8 ef    | % 6
    d4 f ef        | % 7
    c4 f d         | % 8
    bf4 g' ef      | % 9
    f8 ef d ef d c | % 10
    bf4 c ef       | % 11
    d4 d c         | % 12
    bf4 c ef       | % 13
    d2 c4          | % 14
    bf4 g bf       | % 15
    d4 g,2         | % 16
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
