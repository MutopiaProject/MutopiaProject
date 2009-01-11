\version "2.10.25"
\include "english.ly"

\header
{
  title    	    = "Chorale setting \"Gib dich zufrieden und sei stille\" in F major"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV 510"
  mutopiacomposer   = "BachJS"
  mutopiainstrument = "Piano"
  source	    = "Bach-Gesellschaft Ausgabe 1851-1899 Band 43 (1894)"
  sourceurl         = "http://imslp.org/wiki/Notebook_for_Anna_Magdalena_Bach_(Bach,_Johann_Sebastian)"
  style	            = "Baroque"
  copyright	    = "Public Domain"
  maintainer	    = "Steven McDougall"
  maintainerEmail   = "swmcd@world.std.com"
  maintainerWeb     = "http://world.std.com/~swmcd/steven/"
 footer = "Mutopia-2007/07/22-1006"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


upper = \relative c'
{
  \clef treble 
  \key f \major

  % The source has a single-digit time signature of "3", which seems obviously wrong.
  \time 2/2

  \repeat volta 2
  {
    \partial 2 f2	|
    a2 bf		|
    c a			|
    d c			|
    bf1			|       
    <<a\fermata f c>>	|
    f'2 e		|
    d  c		|
    b c4 d		|
    d1		        |
    <<c g e>>		|
  }
  
  \repeat volta 2
  {
    \partial 2 d'2	|
    d d		        |
    bf4 c d2		|
    c4 d bf2		|
    a1		        |
    <<g\fermata d b>>	|
    g''2 g4 g		|
    e f g2		|
    f e			|
    d1			|
    <<c\fermata g e>>	|
    c'2 d4 g,		|
    g2 <<f c>>	        |
  }
}

lower = \relative f
{
  \clef bass
  \key f \major
  \time 2/2
  
  \repeat volta 2
  {
    \partial 2 s2	|
    f2 d		|
    a  f		|
    bf a		|
    g  c		|
    <<f1 f,>>		|
    a'2 g		|
    f1 ~		|
    f2		        % Strange mark here in the source. Don't know what it is.
    e4 f		| 
    g2 g,		|
    <<c1 c,>>		% Bar check fails here. Maybe a lilypond bug?
  }
  
  \repeat volta 2
  {
    \partial 2 bf''2	|
    bf, bf'		|
    g,4 a bf2		|
    e4 fs g c,	        |
    d2 d,2		|
    <<g1 g'>>		|
    g,2 b4 g		|
    c d e c		|
    d b c f,		|
    g'2 g,		|
    <<c1 c,_\fermata>>	|
    a'2 bf		|
    c4 c, <<f2 f'>>	|
  }
}

\score 
{
  \new PianoStaff 
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  
  \layout { }
  \midi 
  {
    \context 
    {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 1)
    }
  }
}
