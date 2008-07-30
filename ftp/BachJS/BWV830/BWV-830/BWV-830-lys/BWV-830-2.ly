% This file prints Bach BWV 830, movement 2. Allemande

\version "2.10.33"

\header
{
  title    	    = "Keyboard partita in E minor"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV 830"
  mutopiacomposer   = "BachJS"
  mutopiainstrument = "piano"
  source	    = "Bach-Gesellschaft Ausgabe 1851-1899 Band 43 (1894)"
  sourceurl         = "http://imslp.org/wiki/Notebook_for_Anna_Magdalena_Bach_(Bach,_Johann_Sebastian)"
  sourceurltwo      = "http://world.std.com/~swmcd/steven/music/bach/Bach-AnnaMagdalena1725.pdf"
  style	            = "Baroque"
  copyright	    = "Public Domain"
  maintainer	    = "Steven McDougall"
  maintainerEmail   = "swmcd@world.std.com"
  maintainerWeb     = "http://world.std.com/~swmcd/steven/"
 footer = "Mutopia-2008/07/30-1497"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "english.ly"

bc = % bass cleff
{
  \change Staff = lower
}

tc = % treble cleff
{
  \change Staff = upper
}

sd = { \stemDown    }
su = { \stemUp      }
sn = { \stemNeutral }

% Beam Count function
beams = #(define-music-function (parser location left right) (integer? integer?)
#{
\set stemLeftBeamCount  = #$left
\set stemRightBeamCount = #$right   
#})

longStem = #(define-music-function (parser location length) (number?)
#{
  \once \override Stem #'length = #$length
#})


upper = \relative e''
{
  \clef treble 
  \key e \minor

  \repeat volta 2
  {
    \partial 8 r16 g |

    << { g8[ ~ g32 fs e ds] } \\ { b8 s8 } \\ { e8 s8 } >> 
    e8[ ~ e32 d c b]
    c8[ ~ c32 b a gs]
    a16.[ c32 fs,16. a32] | % 1

    ds,8[ ~ ds32 c' b a]  fs'16.[ a,32 b16. fs32]  g8 fs16 e << { <b'>8. \arpeggio b16 } \\
								{ <e,>8. \arpeggio     } \\ 
								{  g  8.	       } >> | % 2

    b16.[ fs32 g16. e32]  << { <c'>8. \arpeggio c16 } \\
			     { <e,>8. \arpeggio	    } \\
			     {  a  8.		    } >>  c16.[ g32 a16. fs32]  << { <d' >8. \arpeggio d16 } \\
										   { <fs,>8. \arpeggio	   } \\
										   {  b   8.		   } >> | % 3

    << { <d >8[ \arpeggio ~ d32 f e d]  b'16.[ d,32 e16. b32]  c8 b16 a  e'8. e16 } \\
       {  e, 8									  } \\
       {  b' 8									  } >> | % 4

    \su e16[ ds32 cs ds e fs g]  a16.[ c,32 b16. fs'32]  g16.[ b,32 as16. e'32]  fs16.[ a,32 gs16. d'32] \sn | % 5

    e16.[ g,!32 fs16. cs'32]  d16.[ as32 b16. fs32]  g16.[ ds32 e16. g32]  cs!16.[ as!32 e'16. cs32] | % 6

    g'16[ fs32 e as16 gs32 fs]  b16[ a32 g fs e d cs]  d32[ cs b as b16. es,32]  fs16.[ b32 cs!16. as!32] | % 7

    << { as8[( b]) } \\ { e,8[ ds] } >> s4 

    <<
      % The source notates these four notes as dotted quarters.
      % This is the closest I could get in LilyPond.
      \override Staff.NoteCollision #'merge-differently-dotted = ##t
      { b''4.    	} \\ { } \\
      { s16 fs4  	} \\ { } \\
      { s16 s32 ds4     } \\ { } \\
      { s16 s32 s32 b4  } 
    >> 
  }

  \repeat volta 2
  {
    << { r16 fs' } >> | % 8

    << { fs8[ ~ fs32 e ds! cs] } \\ 
       { b8 		       } \\ 
       { ds8		       } >>  ds8[ ~ ds32 c b a]  b16.[ fs32 a16. c32]  e32[ ds! cs b a'16. fs32] | % 9

    << { g4 ~                    g32[ b a  g fs e d         c] } \\
       { r32 e[ d! c! b a g fs]  e  [ g fs e d  c b \bc \su a] } >>  d'[ f e d b'16. c32]  gs8. \trill fs32 gs | % 10

    a16[ a,32 b b16 \prall a32 b]  c16[ b32 a b c d e]  f16.[ a,32 gs16. d'32]  e16.[ g,32 fs!16. cs'32] | % 11

    d16.[ f,32 e16. b'32]  c!16.[ e,32 ds16. a'32]  b16.[ d,32 cs16. gs'32]  a16.[ c,32 b16. fs'32] | % 12

    \su a16 gs fs e  
    d'8. e16  

    % The source does not show a triplet for the three 64th notes,
    % and it aligns the e over the g in the left hand.
    c16.[ \times 2/3 { f64 e d } gs16. a32]  

    % The stem on the gs4 runs through the dot on the b8.
    % This will be fixed in Lilypond 2.11, so I didn't try to fix it here.
    << { b,8.[ a16] } \new Voice = "3" { \voiceThree gs4 } >> \sn | % 13

    a8 ~ a32 b a gs  a[ b c d e fs g! e]  fs8 \prall e16 d  a'8. a16 | % 14

    ds,8[ ~ ds32 e fs g]  a[ c b a b16. fs32]  g16[ b32 g e16 g32 e]  c16[ e32 c a16 c32 e] | % 15

    fs16[ a32 fs d16 fs32 d]  b16[ d32 b g16 b32 d]  e16[ g32 e c16 e32 c]  a16[ c32 a fs16 a32 c] | % 16

    ds,16[ fs32 a c16 b32 a]  fs'8.[ fs16]  fs16[ b,32 cs ds16 cs32 b]  g'16.[ e32 ds16. e32] | % 17

    a,16[ ds32 e fs16 e32 ds]  a'16.[ e32 ds16. e32]  b16[ e32 fs g16 fs32 e]  

    % The source has b'8. , which is obviously wrong.
    b'16.[ \beams #2 #3 a32 \beams #3 #3 g fs e d] | % 18

    c16[ b32 a ds16 cs32 b]  fs'32[ e ds! cs! b a g fs]  g[ fs e ds e16. as,32]  b16.[ e32 fs16. ds!32] | % 19

    ds8 e s4 <<
    	       % Again, the source notates all these as dotted quarters.
    	       \override Staff.NoteCollision #'merge-differently-dotted = ##t
    	       { e'4.    	} \\ { } \\
    	       { s16 b4 	} \\ { } \\
    	       { s16 s32 g4     } \\ { } \\
    	       { s16 s32 s32 e4 } 
    	     >> % 20
  }

  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower =
{
  \clef bass
  \key e \minor

  \repeat volta 2
  {
    \partial 8 r8 |
    << { r8 fs g gs a b c' a } \\
       { e1 ~                } >> | % 1

    << { f2          e8     s8            s4                } \\
       { e8 e ds b,  e,8[ ~ e,32 b, c d]  e8[ ~ e32 d c b,] } >> | % 2

    << { \longStem #8
	 g8    s8           s4  		  \longStem #8
	 					  d'8 					      } \\
       { c8[ ~ c32 e fs g]  a16.[ c'32 e16. g32]  fs8[ ~ fs32 e d c]  b,16.[ fs,32 d16. b,32] } \\
       { e8    s8	    s4			  a8					      } >> | % 3

    << { b4 											       } \\
       { gs4 \arpeggio ~ gs8 ~ gs32 e fs gs  a16[ \tc b32 c' d' e' fs'! gs']  a'16.[ fs'32 g'16. e'32] } >> | % 4

    \tc \sd fs'8 e' ds' b  e' cs' d' \bc \su b \sn | % 5

    cs'8[ as]  b[ ~ b32 b, cs ds]  e8[ ~ e32 d e fs]  g8[ ~ g32 e fs g] | % 6

    as,8 fs, d b,  << { r8 d' cs' e'! } \\ { fs2 } >> | % 7

    b,8. ds32 fs  b16[ \tc ds'!32 fs' b'16 ds''32 fs'']  b''16[ fs''32 ds'' b'16 fs'32 ds']  b8 \bc
  }

  \repeat volta 2
  {
    r8 | % 8

    b,8 b fs a  ds fs b, ds | % 9

    % The source omits the r4
    e,8 r8  r4  gs8[ ~ gs32 f e d]  b16.[ d32 e16. b,32] | % 10

    c8[ ~ c32 e fs! gs]  a8[ ~ a32 g f e]  d8 b cs a | % 11

    b,8 gs a, fs  gs a f d | % 12

    e4 ~  e16[ gs32 b \tc \sd e'16 fs'32 gs'!]  a'16.[ g'32 f'16. d'32]  e'8 \bc e \sn | % 13

    a16.[ e32 c16. e32]  a,8[ ~ a,32 a b c']  d'16[ fs'32 d' a16 c'32 a]  fs16[ a32 fs ds16 fs32 ds] | % 14

    a,16[ c32 a, fs,16 a,32 fs,]  ds,8[ ~ ds,32 b, cs ds]  e8[ ~ e32 d c b,]  a,8[ ~ a,32 a b c'] | % 15

    d'8[ ~ d'32 c' b a]  g8[ ~ g32 g, a, b,]  c8[ ~ c32 b, a, g,]  fs,8[ ~ fs,32 fs g a] | % 16

    b4 ~  b16[ a32 g a16 g32 fs]  g16[ fs32 e fs16 e32 ds]  e16[ g32 b c'8] ~ | % 17
    
    c'16.[ b32 a16. c'32]  fs16[ a32 c' fs'8] ~ fs'16.[ e'32 ds'16. e'32]  g16[ b32 ds'! e'8] ~ | % 18

    e'16.[ c'32 a16. fs32]  ds8.[ b,16]  << { e8. fs16 g8 a } \\
					    { e8  c    b,4  } >> | % 19


    << { a8[   g]           } \\
       { e,8 ~ e,16 g,32 b, } >> e16[ g32 b \tc e'16 g'32 b']  e''16[ b'32 g' e'16 \bc b32 g]  e8 % 20
  }

  \override Staff.RehearsalMark #'direction = #-1
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.dfermata" }
}

\score 
{
  \new PianoStaff 
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
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
  \header { piece = "2. Allemande" }
  \midi   { }
}

