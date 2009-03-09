\version "2.12.2"
%{
Entered manually by
Louie van Bommel, Ottawa Canada, 2009

Differences from original document:

- I used instrument name, to denote Var 1 , Var 2, Var 3.  In the original,
the words for the variations actually appear above the staff.  Tema is as it should be.

- There were notes (for 2 separate parts) in Variation 3 that are of unequal
duration that should be joined by the same stems but I was tired by then.  
It's technically correct, just aesthetically awkward.

-I corrected 2 mistakes from the original copy.

- The original's clef wasn't a _8 clef.  
%}
\header {
  title = \markup { \sans "THE OLD FOLKS AT HOME (Swanee River)"}
  subtitle = \markup { \left-align "With Variations for Guitar"}
  composer = "by Stephen C. Foster (1826-1864)"
  arranger =  "Arr. by W. L. HAYDEN, 1881"
  dedication = \markup { \sans "To S. A. LINCOLN" }
  % copyright = "Copyright MDCCCLXXXI, by O.DITSON & CO."
  % instrument = "Guitar"
  
  mutopiatitle = "The Old Folks At Home (Swanee River)"
  mutopiacomposer = "FosterSC"
  mutopiainstrument = "guitar"
  date = "1851"
  source ="Gems of The Season (arranged for guitar by W.L. Hayden) Boston: Ditson & Co., Oliver, 1881. Library of Congress http://memory.loc.gov/cgi-bin/ampage?collId=mussm&fileName=sm/sm1881/01900/01976/mussm01976.db&recNum=0&itemLink=h?ammem/mussm:@field(NUMBER+@band(sm1881+01976))&linkText=0"
  style = "Folk" 
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Louie van Bommel"
  
 footer = "Mutopia-2009/03/09-1641"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Start Music%%%%%%%%%%%%%%%
TemaMainVoice = 
{
  cis'2^\markup \italic{"Andante cantabile"}\< b8 a cis' b
  a4  a' <d' fis'>8 a'4.
  e'2 cis'4 a
  <gis b>2. r4
  cis'2 b8 a cis' b
  a4 a' <d' fis'>8 a'4.
%  \break
  
  %7
  e'4 cis'8 a <gis b>4 <e gis b>
  <e a>4 <a cis'> <e a> r
  cis'2 b8 a cis' b
  a4 a'4 <d' fis'>8 a'4.
  e'2 cis'4 a
  <gis b>2. r4
%  \break
  
  
  %13
  cis'2 b8 a cis' b
  a4 a' <d' fis'>8 a'4.
  <a cis' e'>4 cis'8. a16 <gis b>4 <gis b>
  a4 e a r
  <b gis'>4. <cis' a'>8 <d' b'>4 <b gis'>
  <a cis' e'>4. fis'8 <a cis' e'>4 a'
%  \break
  
  %19
  <d' a'>4 <d' fis'> <a d'> <a d' fis'>
  <a cis' e'>4 e8. fis16 e8 d cis b,
  cis'2 b8 a cis' b
  a4 a' <d' fis'> a'
  e'4 cis'8. a16 <gis b>4 <gis b>8. b16
  a4 <a cis'> a r^\fermata \bar "|."

%  \break
  %fermata symbol here  end of main part, variations follow
  % double closed bar

}
TemaBassVoice =
{
  a,4 <e a> a, e
  a,2 d2
  a,4 <e a> a, e
  e,8 e dis e fis e d b,
  a,4 <e a> a, e
  a,2 d

  %7
  a,2 e,4 e
  a,4 e a,4 r
  a,4 e a, e
  a,2 d2
%  gis,4 e a, e
  a,4 e a, e
  e,4 e8. fis16 e8 d cis b,  
  
  %13
  a,4 <e a> a, e
  a,2 d2
  a,2 e,4 e
  a,4 a, a, r
  e,2 e,2
  a,2 a,2
  
  %19
  d2 d2
  a,4 a, r2
  a,4 <e a> a, e
  a,2 d2
  a,2 e,4 e4
  a,4 a, a, r
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%End of Tema%%%%%%%%%%%%%%
% Var. 1

% some bars repeat, so I use variables for them
barone = 
{
  <a d' fis'>4 \times 2/3{<a d' fis'>8 <a d' fis'> <a d' fis'> } e'8 d' fis' e'
}
bartwo = 
{
  <g d'>4 \acciaccatura g'8 d''4 <d' g' b'>8 d''4.
}
barfour =
{
  <a cis' e'>2 r
}
barseven =
{
  <fis' a'>4 <a d' fis'>8. d'16 <a cis' e'>8 \times 2/3{e'16 e' e'} e'8 [e']
}
bareight = 
{
  <a d'>2 <a d'>4 r
}

bassone = 
{
  d4 d d2
}
basstwo = 
{
  g,2 d4 d
}
bassfour =
{
  a,8 a,16 a, cis8 e a g fis e
}
bassseven =
{
  d4 d a,2
}
basseight = 
{
  d4 a, d4 r
}

VarOneMainVoice = 
{
  \barone
  \bartwo
  <fis' a'>4 \times 2/3 {<fis' a'>8 <fis' a'> <fis' a'>}  <a d' fis'>8 <a d'>16 <a d'> <a d'>8 <a d'>
  \barfour
  <a d' fis'>4 \times 2/3 {<a d' fis'>4.:8}  e'8 d'8 fis' e'
  
  %6
  \bartwo
  \barseven
  \bareight
  \barone
  \bartwo
  <fis' a'>4 \times 2/3{<fis' a'>4.:8}  <a d' fis'>8 <a d'>16 <a d'>16 <a d'>4:8
 
  %12
  \barfour
  \barone
  \bartwo
  \barseven
  <a d'>4 <a d' fis'> <a d'> r \bar "||" 
  
  %17
  cis'4. \grace {d'16 ( [cis' bis cis']} d'8 e') \times 2/3{a16 a a} a8 [a]
  a8 \times 2/3 {a16 a a} a8 [b] a8 \times 2/3 {d'16 d' d'} d'8 [d'8]
  <g d'>8 \times 2/3{b16 b b} b8 [b] g8 \times 2/3{g16 g g} g8 [b]
  
  %20
  a8 \times 2/3 {a16 a a} a8 [fis'] <a cis' e'>4 r \bar "||" 
  % error in original score, fixed here by me:
%  <a d' fis'>4 \times 2/3 {<a d' fis'>16 <a d' fis'> <a d' fis'>} e'8 d' fis' e'
  \barone
  \bartwo
  \barseven
  \bareight \bar "||" 
}

VarOneBassVoice = 
{
  %1
  \bassone
  \basstwo
  d4 d d2
  \bassfour
  d4 d d2
  
  %6
  \basstwo
  \bassseven
  \basseight
  \bassone
  \basstwo
  d4 d d2
 
  %12
  \bassfour
  \bassone
  \basstwo
  \bassseven
  d4 d d r
  
  %17
  a,2 a,
  d2 d
  g,2 g,
  
  %20
  d4 d a, r
  \bassone
  \basstwo
  \bassseven
  \basseight
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%End of Var 1%%%%%%%%%%%%%%
%Var 2
barOneTwo = 
{
	 cis'16 cis'  cis'  cis'  cis'  cis' cis'  cis'  b  b  a  a  cis'  cis'  b  b | 
	 % 2
	 a16  a  a  a  a'  a'  a'  a'  fis'  fis'  fis'  fis'  a'  a'  a'  a'   | 
}
bbThree = 
{
  e'16  e'  e'  e'  e'  e'  e'  e'  cis'  cis'  cis'  cis'  a  a  a  a | 
}
bbFifteen = 
{
  e'16  e'  e'  e'  cis'  cis'  a  a  b  b  b  b  b  b  b  b | 
}
barOneTwoBass = 
{
	 a,4  e  a,  e | 
	 % 2
	 a,  a,  d  d   \break  | 
}
bbThreeBass =
{
  a,4 e a, e
}
bbSevenBass =
{
  a,4 e e, e
}

VarTwoMainVoice = 
{
  	 cis'16^\markup \italic{"Brillante"}\<  cis'  cis'  cis'  cis'  cis' cis'  cis'  b  b  a  a  cis'  cis'  b  b | 
	 % 2
	 a16  a  a  a  a'  a'  a'  a'  fis'  fis'  fis'  fis'  a'  a'  a'  a'   | 
 \break 
  % 3
  \bbThree
  % 4
  \times 2/3 {  e,16  b  b  }  \times 2/3 {  e  b  b  }  \times 2/3 {  dis 
  b  b  }  \times 2/3 {  e  b  b  }  
  \times 2/3 {  fis   b  b  }  \times 2/3 {  e  b  b  }  \times 2/3 {  d    b  b  }  \times 2/3 {  b, b  b  }   \break  | 
  %5
  \barOneTwo
  %7 is almost like 15 , but two notes.
  e'16  e'  e'  e'  e'  e'  a  a  b  b  b  b  b  b  b  b | 
  %8
  a16 a a a cis' cis' cis' cis' cis'4 r4
  %9
  \barOneTwo 
  %11
  \bbThree
  %12
  b16 b b b b b b b b b b b b b b b
  %13
  \barOneTwo
  %15
  \bbFifteen
  %16
  a16 a a a e e e cis' a4 r4
  %17
  % yes , I don't know how to do the -----| after the IV so I cheated and put an "I" in next bar
  \override TextSpanner #'(bound-details left text) = #"IV "
    \override TextSpanner #'(bound-details right text) =
    \markup { \draw-line #'(0 . -2) }
gis'4-2\startTextSpan  <b-1 e'-3>8 a' b'4-4 <b-1 e'-3 gis'-2> \stopTextSpan
  %18
  e'4 <cis' e'>8 fis' e'4 <cis' a'>
  %19
  a'4-> <a d' fis'> d'-> <a d' fis'>
  %20
  <a cis' e'>8-> dis' e' fis' e' d' cis' b
  \barOneTwo
  \bbFifteen
  a16 a a a cis' cis' cis' cis' a4 r4 \bar "||"
}
VarTwoBassVoice = 
{
  \barOneTwoBass
  %3
  \bbThreeBass
  % 4
  e,8  e  dis  e  fis  e  d  b   \break  | 
  %5
  \barOneTwoBass
  %7
  \bbSevenBass
  %8
  a,4 e a, r4
  %9
  \barOneTwoBass
  %11
  \bbThreeBass
  %12
  e,4 e e,8 d cis b,
  %13
  \barOneTwoBass
  %15
  \bbSevenBass
  %16
  %b,4 b b r4
  a,4 a, a, r4
  %17
  e,2 e,
  %18
  a,2 a,
  %19
  d2 d
  %20
  a,2 e,
  \barOneTwoBass
  \bbSevenBass
  a,4 e a, r4
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%End of Var 2%%%%%%%%%%%%%%
% var 3
cac = {
	cis'16 a cis'
}
varThreeBarOneTwo = {
	a,16 \cac
	e    \cac
	b e a e
	cis' e b e
	
	a, a e a
	a, a' <a cis'> a'
	d fis' <a d'> fis'
	d a' <a d'> a'
}
varThreeBarSeven =
{
	a,16 e' <a cis'> e'
	a, cis' e a
	e, \cac
	e, b gis b
}
varThreeBarSevenBass =
{
	a,4 a, e, e,
}
varThreeBarOneTwoBass = {
	a,4 e e,2
	a,4 a, d d
}

VarThreeMainVoice = 
{
	% 1
	% 2
	\varThreeBarOneTwo
	% 3
	a,16 e' <a cis'> e'
	e    e' <a cis'> e'
	a, \cac
	a, a e a
	% 4
	e,16 b gis b
	e b gis b
	e,16 b gis b
	e' d' b gis
	% 5
	% 6
	\varThreeBarOneTwo
	% 7
	\varThreeBarSeven
	% 8
	a,16 a e a
	a cis' a e
	a4
	r4 \bar "||"
	% 9  Bug here: they don't merge with the bass notes.
	gis8-> [ <b e'>16  <b e'>16  <b e'>8 a8] 
	b8-3 [ <b e'>8 ]
	e8-> [ <b e'>8 ]
	% 10
	%I think the correspon. bass note is dotted as 4. here:
	e8 [ <cis' e'>16 <cis' e'>16 <cis' e'>8 fis8 ]
	e8 [<cis' e'>8]
	a8 [<cis' e'>8]
	% 11
	a8 [<d' fis'>8]
	fis8 [<d' fis'>8]
	d8 [<d' fis'>8]
	fis8 [<d' fis'>8]
	% 12
	e8 [ <a cis' e'>16 <a cis' e'>16 <a cis' e'>8 	<a cis' e'>8 ]
	e4 r4
	% 13
	% 14
	\varThreeBarOneTwo
	% 15
	\varThreeBarSeven
	% 16
	a,16 a e a
	a, cis' e cis'
	a4
	r4 \bar "|."
}
VarThreeBassVoice = 
{
	% 1
	% 2
	\varThreeBarOneTwoBass
	% 3
	a,4 e a, a,
	% 4
	e,4 e e, r4
	% 5
	% 6
	\varThreeBarOneTwoBass
	% 7
	\varThreeBarSevenBass
	% 8
	a,4 a, a, r4
	% 9
	gis4. a8 b4 e4
	% 10
	e4.-> fis8-> e4-> a4->
	% 11
	a4-> fis4-> d4-> fis4->
	% 12
	e2 e8 d cis b,
	% 13
	% 14
	\varThreeBarOneTwoBass
	% 15
	\varThreeBarSevenBass
	% 16
	a,4 a, a, r4
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%End of Var 3%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%End of Music%%%%%%%%%%%%%%
\score {
  <<
    \new Staff = "Tema"
    {
      \key a \major
      \time 4/4
      \clef "G_8" 
      %\transpose c c'
      <<
        \set Staff.instrumentName = "Tema"
        \set fingeringOrientations = #'(left)
        \TemaMainVoice \\
        \TemaBassVoice 
      >>
    }
  >>
  % layout can be in a score as well as outside
  \layout { }
  \midi { }
}
\score {
  <<
    \new Staff = "Var 1"
    {
      \key d \major
      \time 4/4
      \clef "G_8" 
      <<
        \set Staff.instrumentName = "Var. 1"
        \set fingeringOrientations = #'(left)
        \VarOneMainVoice \\
        \VarOneBassVoice
      >>
    }
  >>
  % layout can be in a score as well as outside
  \layout { }
  \midi { }
}
\score {
  <<
    \new Staff = "Var 2"
    {
      \key a \major
      \time 4/4
      \clef "G_8" 
      <<
        \set Staff.instrumentName = "Var. 2"
        \set fingeringOrientations = #'(left)
        \VarTwoMainVoice \\
        \VarTwoBassVoice
      >>
    }
  >>
  % layout can be in a score as well as outside
  \layout { }
  \midi { }
}
\score {
  <<
    \new Staff = "Var 3"
    {
      \key a \major
      \time 4/4
      \clef "G_8" 
      <<
        \set Staff.instrumentName = "Var. 3"
        \set fingeringOrientations = #'(left)
        \VarThreeMainVoice \\
        \VarThreeBassVoice
      >>
    }
  >>
  % layout can be in a score as well as outside
  \layout { }
  \midi { }
}

\layout 
{
  \context 
  { 
    \Score
%   \override whatever
  }
  \context 
  { 
    \Staff
%    \override TimeSignature #'style = #'numbered
  }
  \context 
  { 
    \Voice
  }
}

