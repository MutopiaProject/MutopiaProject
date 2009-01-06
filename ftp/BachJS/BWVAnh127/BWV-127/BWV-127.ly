\version "2.11.1"
\include "english.ly"

\header
{
  title    	    = "March in E-flat major"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV Anh. 127"
  mutopiacomposer   = "BachJS"
  mutopiainstrument = "Piano"
  source	    = "Bach-Gesellschaft Ausgabe 1851-1899 Band 43 (1894)"
  sourceurl         = "http://imslp.org/wiki/Notebook_for_Anna_Magdalena_Bach_(Bach,_Johann_Sebastian)"
  style	            = "Baroque"
  copyright	    = "Public Domain"
  maintainer	    = "Steven McDougall"
  maintainerEmail   = "swmcd@world.std.com"
  maintainerWeb     = "http://world.std.com/~swmcd/steven/"
 footer = "Mutopia-2009/01/06-1614"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


upper = \relative ef'
{
  \clef treble
  \key ef \major
  \time 2/2

  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat volta 2
  {
    \partial 4 ef8 g	     		    	       	     |
    bf4 c8 d ef bf g'4       		    	       	     | % 1
    g8 f ef d ef4 << c 4 \\
		     af4 >>  		    	       	     | % 2
    << { c 4 bf2 af4 } \\
       { af4 g 2 f 4 } >>    		    	       	     | % 3
     \times 2/3 { g8[ f ef] } ef2 g'4         	       	     | % 4
     \times 2/3 { f8[ ef d] } d d d f ef d    	       	     | % 5
     \times 2/3 { ef8[ d c] } c c c ef d c    	       	     | % 6
     \times 2/3 { d8[ ef f] } << { f8 f f f } \\
			       { d8 d d d } >> bf'8 d,       | % 7
     \times 2/3 { c8[ d ef] } << { ef8 ef ef ef } \\
			       { c 8 c  c  c  } >> c'8 ef,   | % 8
     \times 2/3 { d8[ bf' a] g[ f ef] d[ c bf] } c4\trill    | % 9
     bf2. s4                                	       	     | % 10
  }

  \repeat volta 2
  {
    \partial 4 bf8 d                        	       	     | % 11
    f4 ef8 d c bf af'!4                     	       	     | % 12
    af4\trill g2 g,4                        	       	     | % 13
    \times 2/3 { ef'8[ d c] f[ ef d] g[ f ef] } af c,  	     | % 14
    c4\trill b2 g8 g                        	       	     | % 15
    b8 g d' g, g f f f                      	       	     | % 16
    b8 g d' f, f ef c' ef                   	       	     | % 17
    g8 c, \times 2/3 { f[ ef d] } d2\trill    	       	     | % 18
    c2. ef8 d                               	       	     | % 19
    ef8 bf g'2 df4                          	       	     | % 20
    df4\trill c2 d4                          	       	     | % 21
    \times 2/3 { ef8[ f g] af[ g f] g[ f ef] } bf' ef, 	     | % 22
    \times 2/3 { d8[ c bf] } bf2 af4          	             | % 23
    \times 2/3 { g8[ af bf] } << { bf8 bf bf bf } \\
				 { g 8 g  g  g  } >> ef'8 g, | % 24
    \times 2/3 { f8[ g  af] } << { af8 af af af } \\
				 { f 8 f  f  f  } >> f'8 af, | % 25
    \times 2/3 { g8[ af bf] } << { bf8 bf } \\
				 { g 8 g  } >> g'8 bf, af g  | % 26
    \times 2/3 { f8[ g  af] } << { af8 af } \\
				 { f 8 f  } >> f'8 af, g f   | % 27
    \times 2/3 { g8[ ef' d] c[ bf af] g[ f ef] }  f4\trill   | % 28
    ef2. s4                                 	       	     | % 29
  }
}

lower = \relative ef
{
  \clef bass
  \key ef \major
  \time 2/2

  \repeat volta 2
  {
    \partial 4 ef4	     |
    g4 af8 f g4 ef           | % 1
    bf4 bf' ef, af           | % 2
    bf2 bf,                  | % 3
    ef4 g8 f g4 ef           | % 4
    d4 bf' bf, bf'           | % 5
    f,4 << { a'4 a a } \\
	   { f 4 f f } >>    | % 6
    << { bf4 bf bf bf } \\
       { f 4 f  f  f  } >>   | % 7
    << { a4 a a a } \\
       { f4 f f f } >>       | % 8
    bf4 ef, f f,             | % 9
    bf4 f bf, s                % 10
  }

  \repeat volta 2
  {
    \partial 4 bf'4	     | % 11
    bf4 c d bf               | % 12
    ef,4 ef'8 d ef f ef d    | % 13
    c4 d ef f                | % 14
    g,4 g'8 fs g4 g,         | % 15
    g4 g g g                 | % 16
    g4 g c c                 | % 17
    ef af g g,               | % 18
    c4 c' bf8 af g f         | % 19
    g4 ef8 f g4 ef           | % 20
    af,4 af'8 g af4 f        | % 21
    g4 d ef g                | % 22
    bf4 bf,8 c d4 bf         | % 23
    ef4 ef ef ef,            | % 24
    bf'4 << { d 4 d  d  } \\
	    { bf4 bf bf } >> | % 25
    << { ef4 ef ef ef } \\
       { bf4 bf bf bf } >>   | % 26
    << { d 4 d  d  d  } \\
       { bf4 bf bf bf } >>   | % 27
    ef4 af bf bf,            | % 28
    ef4 bf ef, s             | % 29
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
      tempoWholesPerMinute = #(ly:make-moment 48 2)
    }
  }
}
