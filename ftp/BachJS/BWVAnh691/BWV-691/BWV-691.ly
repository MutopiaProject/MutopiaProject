\version "2.12.1"
\include "english.ly"

\header
{
  title    	    = "Chorale prelude “Wer nur den lieben Gott läßt walten”"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV Anh. 691"
  mutopiacomposer   = "BachJS"
  mutopiainstrument = "Piano"
  source	    = "Bach-Gesellschaft Ausgabe 1851-1899 Band 43 (1894)"
  sourceurl         = "http://imslp.org/wiki/Notebook_for_Anna_Magdalena_Bach_(Bach,_Johann_Sebastian)"
  style	            = "Baroque"
  copyright	    = "Public Domain"
  maintainer	    = "Steven McDougall"
  maintainerEmail   = "swmcd@world.std.com"
  maintainerWeb     = "http://world.std.com/~swmcd/steven/"
 footer = "Mutopia-2009/01/06-1616"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

upper = \relative c'
{
  \clef treble 

  \repeat volta 2
  {
    \partial 4 e4	                                       	      	      |
    a16\mordent b a b b8.\downprall a32 b c4 b16( c32 d c16 b) 	      	      | % 1  
    a16 a b\mordent c b8.\prall a16 gs8.\prall fs16 

                                                    % the source has a small descending hook here
                                                    \once \override Score.SeparationItem #'padding = #2
                                                    \once \override Slur #'extra-offset = #'( -0.75  . 1.5 )
                                                    \hideNotes
                                                    \appoggiatura a16 % 'a' was chosen to get the right shape for the hook,
                                                                      % not to indicate the pitch of the appoggiatura.
                                                    \unHideNotes

                                                    e8\noBeam\fermata g       | % 2 
    g16 f e f f8. e16 e4\mordent r16 a b c\mordent                    	      | % 3
    c16 b c\mordent d 

                      % The source has a small descending hook here.
                      \once \override Score.SeparationItem #'padding = #1.5
                      % Lilypond makes a big slur to curve under the sharp sign, but it doesn't look right as a hook.
                      % So we set the control points explicitly.
                      \once\override Slur  #'control-points = #'((0 . .5) (.2 . -.3) (.7 . -0.7) (1.5 . -.8))
                      \hideNotes
                      \appoggiatura a16 
                      \unHideNotes
                      gs8. a16 a4\mordent s4					% 4
  }

  \partial 4  b8\mordent ~ b32 c64 b a32 b                            	      | % 4
  c16 d c d d8.\downprall c32 d e4 e16f32 g f16 e\prall               	      | % 5
  a16 b, c d g, f' e d32 c c4\mordent\fermata e16( g f e              	      | % 6  
  d16 c b c) c8.\upprall b16 c b a\prall gs 
                                           % Logic dictates a 1/16 note appoggiatura here,
                                           % but the source shows an 1/8 note.
                                           \appoggiatura gs8 
                                                             a\mordent c16 b  | % 7
  c8\mordent d16 e c8\prall b16 a

  << { a4      	~ a8\fermata s8 } \\
     { a16 e c8 ~ c8\fermata    } \\
     { s16 
           \override Staff.NoteCollision #'merge-differently-dotted = ##t
           e8.  ~ 
                  \shiftOff 
                  \stemDown 
                  \once \override Stem #'flag-style = #'no-flag
                  e8            } >>                                            % 8

  \bar "|."
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower = 
{
  \clef bass
  
  \repeat volta 2
  {
    <<
      \relative c
      {
	\partial 4 c8 d                    	 |
	e8 a4\mordent gs8 a8. c16 d8 e ~   	 | % 1 
	e8[ d] ~ d[ c] b[ a] gs\noBeam\fermata b | % 2
	c4. b8 ~ b a16 gs a4               	 | % 3
	d8 c b4\prall a s                  	   % 4
      } 

      \\

      \relative c
      {
	\partial 4 a8 b                    	 |
	c8 f d e a4. g8                    	 | % 1
	f8. e16 d4 e4.\fermata e8          	 | % 2
	a4 d,8 g c,4 f8 e                  	 | % 3
	d4 e r8 a, s4                      	   % 4
      }
    >>
  }
  
  <<
    \relative c
    {
      \partial 4 r8 e ~                  	| % 4
      e8 f4 g8 ~ g g c4 ~                	| % 5
      c4 c8 b 
      	      \once \override Script #'extra-offset = #'(0 . -1.8) 
      	      r16
      	      ^\fermata 
      	      ^\markup \halign #-0.2 { \bold \line { ( \hspace #2 ) } }

                  g a b c4       	        | % 6
      b4 a ~ a8 d c b                    	| % 7  
      a4. gs8 r r16 e 
                      \override Script #'extra-offset = #'( -0.5 . 0.0 )
                      a8\fermata s8               % 8
    }

    \\

    \relative c
    {
      \partial 4 gs4                     	| % 4
      a4 b c4. a'8                       	| % 5

      f8 fs g4 
      	      \once \override Script #'extra-offset = #'(-0.2 . 2.2) 
               c,4
               _\fermata  
      	       _\markup \halign #-0.2 { \bold \line { ( \hspace #2 ) } }
                   r8 a' ~       	        | % 6

      a8 gs a c, d e fs gs!              	| % 7
      a8 d, e4 a, ~ a8\fermata s8        	  % 8  
    }
  >>

  \bar "|."
  \override Staff.RehearsalMark #'direction = #-1
  \override Score.RehearsalMark #'extra-offset = #'( -0.4 . 0.0 )
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
