\version "2.12.1"
\include "english.ly"

\header
{
  title    	    = "Aria “Warum betrübst du dich”"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV 516"
  mutopiacomposer   = "BachJS"
  mutopiainstrument = "Piano"
  source	    = "Bach-Gesellschaft Ausgabe 1851-1899 Band 43 (1894)"
  sourceurl         = "http://imslp.org/wiki/Notebook_for_Anna_Magdalena_Bach_(Bach,_Johann_Sebastian)"
  style	            = "Baroque"
  copyright	    = "Public Domain"
  maintainer	    = "Steven McDougall"
  maintainerEmail   = "swmcd@world.std.com"
  maintainerWeb     = "http://world.std.com/~swmcd/steven/"
  footer 	    = "Mutopia-2009/01/12-1622"

  tagline = \markup 
  { 
    \override #'(box-padding . 1.0)
    \override #'(baseline-skip . 2.7) 
    \box \center-column 
    {
      \small 
      \line 
      {
	Sheet music from \with-url #"http://www.MutopiaProject.org" 
	\line 
	{
	  \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 
	} 
	•
	\hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. 
      } 
      \line 
      { 
	\small 
	\line 
	{ 
	  Typeset using \with-url #"http://www.LilyPond.org" 
	  \line 
	  { 
	    \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org 
	  } 
%	  by \maintainer \hspace #-1.0 . 
	  \hspace #0.5 Reference: \footer 
	} 
      } 
      \line 
      { 
	\teeny 
	\line 
	{ 
	  This sheet music has been placed in the public domain by the typesetter, for details see: 
	  \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" 
	  http://creativecommons.org/licenses/publicdomain 
	} 
      } 
    } 
  }
}


upper = \relative af''
{
  \clef treble 
  \key f \minor

  \repeat volta 2
  {
    \partial 4 f4  			|
    c4 df df( c8) \noBeam bf		| %  1
    af2. \fermata af4			| %  2
    g8[ af]  g[ af]  bf c16 df  c8 bf	| %  3
    af4( g) f \fermata af		| %  4
    bf4  c  df8( ef16 f)  df8( c)	| %  5
    bf2. \fermata ef4			| %  6
    af,8[ g]  af[ df]  c4  bf8 af	| %  7
    af2.				  %  8
  }

  \partial 4 c4				| %  8
  bf4  c16( bf af8)  bf4  ef		| %  9
  df2. \fermata a4			| % 10
  bf4  ef8( f16 gf)  f4  ef8( df)	| % 11
  c2 bf4 \fermata df			| % 12
  c4 f e4. f8				| % 13
  g2. \fermata bf,4			| % 14
  af8[ g]  f[ e]  f4. g8		| % 15
  g2 f4	s \bar "|." 			  % 16

  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower =
{
  \clef bass
  \key f \minor

  \repeat volta 2
  {
    \partial 4 f8 g		|
    af4 bf e4. c8		| %  1
    f2._\fermata f4		| %  2
    bf,8 c  df4  g,  e8( c)	| %  3
    f4 c f, _\fermata f8 ef!	| %  4
    df4  c  bf,8 c  df4		| %  5
    ef2. _\fermata c4		| %  6
    f4  df  ef8 df  ef4		| %  7
    af2.			  %  8
  }

  \partial 4 af,4		| %  8
  ef4  ef  ef8( df)  c4		| %  9
  bf,2. _\fermata f4		| % 10
  gf4 c df ef			| % 11
  f4( f,) bf, _\fermata bf	| % 12
  bf4 af g f			| % 13
  e2. _\fermata c4		| % 14
  f4 c df bf,			| % 15
  c2 f,4 s \bar "|." 		  % 16

  \override Staff.RehearsalMark #'direction = #-1
  \mark \markup { \musicglyph #"scripts.dfermata" }
}

verseone = \lyricmode
{
  Wa4 --			| 
  rum4 be -- trü -- bst8 du	| %  1
  dich2. und4			| %  2
  beu4 gest dich zur		| %  3
  Er2 -- den,4 mein		| %  4
  sher4 ge -- plag -- ter	| %  5
  Geist,2. mein4		| %  6
  ab4 -- ge -- mat -- ter	| %  7
  Sinn?2. Wirst4		| %  8
  du4 dich nicht recht		| %  9
  fest2. in4			| % 10
  Got4 -- tes Wil -- len	| % 11
  grün2 -- den,4 kannst	| % 12
  du4 in E4. -- wig8 --		| % 13
  keit2. nicht4			| % 14
  wah4 -- re Ru4. -- he8	| % 15
  fiu2 -- den.4			  % 16
}

versetwo = \lyricmode
{
  Du4				|
  sorgst,4 wie will4. es8	| % 1
  doch2. noch4			| % 2
  end4 lich mit dir		| % 3
  wer2 den,4 und		| % 4
  fäh4 rest ü -- ber		| % 5
  Welt2. und 4			| % 6
  ü4 -- ber Him mel		| % 7
  hin.2.			  % 8
}


\score
{
  \new GrandStaff
  <<
    \new Staff = upper
    {
      \new Voice = "singer" \upper
    }

    \new Lyrics \lyricmode
    {
      \set associatedVoice = #"singer"
      \verseone
    }

    \new Lyrics \lyricmode
    {
      \set associatedVoice = #"singer"
      \versetwo
    }

    \new Staff = lowerstaff \lower
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

    \context { \GrandStaff \accepts "Lyrics"   }
    \context 
    { 
      \Lyrics 
        \consists "Bar_engraver" 
        \consists "Separating_line_group_engraver"
        \override BarLine #'transparent = ##t    
    }
  }

  \midi { }
}
