\version "2.16.1"

\header{
  title = "A Breeze From Alabama"
  subtitle = "March and Two-Step"
  composer = "Scott Joplin"

  % This is feature misuse ("Not fast" is not musical piece :), but other
  % Lilypond files (mis)use it in the same way,...
  piece = "Not Fast"

  mutopiatitle = "A Breeze From Alabama"
  mutopiacomposer = "JoplinS"
  mutopiainstrument = "Piano"
  mutopiasource = "Reproduction of original edition (1902)"

  date = "c. 1902"
  style = "Jazz"
  copyright = "Public Domain"

  maintainer = "Daniel Škarda"
  maintainerEmail = "0rfelyus@ucw.cz"

% This file is maintained using GNU Arch (http://www.gnuarch.org):
%
%  Archive and version: 0rfelyus@hobitin.ucw.cz--2004-music/joplin-a-breeze-from-alabama--main--1.0
%  ArchiveLocation:     http://www.ucw.cz/~0rfelyus/{archives}/0rfelyus@hobitin.ucw.cz--2004-music

 footer = "Mutopia-2013/03/03-485"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

% TODO: Fix warnings about clashing note columns when lily can typeset slurs to individual notes of a chord

% ---- Helpers ... ---------------------------------------------------

markFermata =  { \mark \markup { \musicglyph #"scripts.ufermata" } }

mergeDiffHeads = { \override Staff.NoteCollision #'merge-differently-headed = ##t }

% line breaks in original. Define to {} if you want to overide original line breaks.
oBreak = \break
% oBreak = {}

barRest =  { s2 | }

% --- INTRO ... ------------------------------------------------------

introCommon =  {
   \key c \major
   \time 2/4
}

% --- PART ZERO ... --------------------------------------------------

partZeroGlobal =  {
    \partial 8 s8 | \barRest | \barRest | \barRest | \barRest  |
    % \bar "||" is in partOne as ||:
    \oBreak
}

partZeroRHnotes =  \relative c' {
    \partial 8 <e g>8 |									% 0 - 4
    << { c'8 a16 gis a16 b c8 | s2  | s2 | } \\
       { <c dis,>8 r r <c e,> ~ |
	 <c e,>16 g e dis \stemUp e f g8 ~ |
	 g16 f d cis e d b a | } >>
    g8 r \stemDown <g' b d g>-^ g |
    \stemNeutral
}

partZeroLHnotes =  \relative c' {
    c8 |										% 0 - 4
    << { c a16 gis a b c8 | s2 | s2 | }
    \\ { <c a fis>8 r r <c g> ~ |
	 <c g>16 g e dis e f g8 ~ |
	 g16 f d cis e d b a | }
    >>
    g8 r <g g,>^^ r |
}

partZeroDynamics =  {
   s8 |	\barRest | \barRest | \barRest | \barRest |					% 0 - 4
}

partZeroRH =  { << \partZeroGlobal \partZeroRHnotes >> }
partZeroLH =  { << \partZeroGlobal \partZeroLHnotes >> }

% --- PART ONE ... ---------------------------------------------------

partOneGlobal =  {
    \repeat volta 2 {
	\bar "||:"
	\barRest | \barRest | \barRest | \barRest | \barRest |				% 5 - 9
	\oBreak

	\barRest | \barRest | \barRest | \barRest | \barRest |				% 10 - 14
	\oBreak

	\barRest | \barRest |								% 15 - 20
    } \alternative {
	{
	    \barRest | \barRest | \barRest | \barRest |
	    \oBreak
	}
	{
	    \barRest |									% 21 - 24
	}
    }

    {
	\barRest | \barRest | \barRest |
	% \bar "||" in the next section as "||:"
	\oBreak
    }
}

partOneRHnotes =  \relative c'' {
    \repeat volta 2 {
	<g e'>16 <fis dis'> <g e'> <e c'> ~ <e c'> e f fis |				% 5 - 9
	g c e <g e g,> ~ <g e g,> <fis dis fis,> <g e g,>8 |
	<g, e'>16 <fis dis'> <g e'> <e c'> ~ <e c'> e f fis |
	g c e <g e g,> ~ <g e g,> <fis dis fis,> <g e g,>8 |
	<g g,>16 <gis f gis,> <a f a,> <b f b,> ~ <b f b,> <g f g,> <a f a,> <b f b,> |


	<c e, c> <b e, b> <c e, c> <e g, e> ~ <e g, e> <dis dis,> <e e,>8 |		% 10 - 14
	e16 d cis d ~ d <c e,> <b d,> <a c,> |
	<g b,>4-> ~ <g b,>8 <f! d b g> |
	<g, c e>16 <fis dis'> <g e'> <e c'> ~ <e c'> e f fis |
	g c e <g e g,> ~ <g e g,> <fis dis fis,> <g e g,>8 |

	<e g,>16 <dis fis,> <e g,> g, ~ g bes a gis |					% 15 - 20
	a d f <a f a,> ~ <a f a,> f d a |
    } \alternative {
	{
	    << { c8 a16 gis a16 b c8 | s2  | s2 | } \\
	       { <c dis,>8 r r <c e,> ~ |
		 \stemUp <c e,>16 g e dis e f g8 ~ |
		 g16 f d cis e d b a | } >>
	    g8 r \stemDown <g' b d g> g |
	    \stemNeutral
	}
	{										% 21 - 24
	    a16 gis a b c b c d |
	}
    }
    {
	e 8 <f cis g>4 <e cis g>8 |
	<e c! fis,> <e b f>4 \stemDown <d b f>8 \stemNeutral |
	<c e,> r
	  << { \appoggiatura { g'16 [a b ] } c4*1/2-^ } \new Voice e, >>
	  r  |
    }
}

partOneLHnotes =  \relative c {
    \repeat volta 2 {

	\repeat unfold 4 { c <g' c e> g, <g' c e> | }					% 5 - 9
	d <g b f'> g, <g' b f'> |

	c, <g' c e> cis, <ais' g'> |							% 10 - 14
	d, <b' d g> d, <c' d fis> |
	<< { <d g>4-> ~ <d g>8 r | } \\
	   { g,8 f!16 d ~ d b g8 | } >>
	\repeat unfold 2 { c <g' c e> g, <g' c e> | }

	c, <g' c e> cis, <g' a e'> |							% 15 - 20
	d <f a d> f <a d> |
    } \alternative {
	{
	    << { c a16 gis a b c8 | s2 | s2 | } \\
	       { <c a fis>8 r r <c g> ~ |
		 <c g>16 g e dis e f g8 ~ |
		 g16 f d cis e d b a | } >>
	    g8 r <g g,> r |
	}
	{
	    <fis' a c dis> r <fis a c dis> r |						% 21 - 24
	}
    }
    {
	<g c e> <a a,> <a, a,>4 |
	\stemDown <d d,>8 <g g,> \stemNeutral <g, g,>4 |
	< c c,>8 r <c c,>^^ r |
    }
}

partOneDynamics =  {
    \repeat volta 2 {
	s2 \f |										% 5 - 9
	s2 | s2 | s2 |
	s4 \< s8. s16 \! |

	s8 \< s s s \! |								% 10 - 14
	s \< s s s16 s \! |
	s4 s16 s \> s8 |
	s \f s s s |
	s2 |

	s2 | s2 |
    } \alternative {
	{ s2 | s2 | s2 | s2 | }
	{ s2 | }
    }
    { s2 | s2 | s2 | }
}

partOneRH =  { << \partOneGlobal \partOneRHnotes >> }
partOneLH =  { << \partOneGlobal \partOneLHnotes >> }

% --- PART TWO ... ---------------------------------------------------

partTwoGlobal =  {
    \repeat volta 2 {
	\bar "||:" \barRest | \barRest | \barRest | \barRest | \barRest |		% 25 - 29
	\oBreak

	\barRest | \barRest | \barRest | \barRest | \barRest | \barRest |		% 30 - 35
	\oBreak

	\barRest | \barRest | \barRest | \barRest |					% 36 - 42
    } \alternative {
	{ \barRest | }
	{ \barRest | }
    }

    % \bar "||" is in the next part as "||:"
    \oBreak
}

partTwoRHnotes =  \relative c''' {
    \repeat volta 2 {
	<a f a,>8 <c a c,>4 <a f a,>8 |							% 25 - 29
	<a f a,> <g e g,>4. |
	<f d>16 <e c> <d b> <e c> <f d> <a f>8 <a f>16 |
	<g e> <f d> <e c> <f d> <g e> <e c'>8 <e c'>16 |
	<a f a,>8 <c a c,>4 <a f a,>8 |

	<a f a,> <g e g,>4. |								% 30 - 35
	<c e, c>16 <b e, b> <a e a,>  <b e, b> <c a c,> <cis a cis,> <d b a d,> <dis b a dis,> |
	<e b gis e> 8 r <g, e bes>4-> |
	<a f a,>8 <c a c,>4 <a f a,>8 |
	<a f a,> <g e g,>4. |
	<f d>16 <e c> <d b> <e c> <f d> <a f>8 <a f>16 |


	<g e> <f d> <e c> <f d> <g e> <e c'>8 <e c'>16 |				% 36 - 42
	<d d'>8 <d d'> ~ <d d'>16 c' b a |
	<e a>8 <e g> ~ <e g>16 c d e |
	<b g'>8 <b f'>4 <b g f>8 |
    } \alternative {
	{ <c g e> <g g'>16 <g g'> <g g'>8 <g g'> | }
	{ <c g e>8 r
	  << { \appoggiatura { g'16 [a b] } c4*1/2-^ } \new Voice e,8 >>
	  r8
      }
    }
}

partTwoLHnotes =  \relative c {
    \repeat volta 2 {
	f,8 <a' c f> a, <a' c f> |							% 25 - 29
	c, <g' c e> e <g c e> |
	g, <g' b f'> b, <g' b f'> |
	c, <g' c e> c, <g' c e> |
	f, <a' c f> a, <a' c f>

	c, <g' c e> e <g c e> |								% 30 - 35
	<a a,> <a c e> <f f,> <f f,> |
	<e e,> r <c c'>4^> |
	f,8 <a' c f> a, <a' c f> |
	c, <g' c e> e <g c e> |
	g, <g' b f'> b, <g' b f'> |

	c, <g' c e> e <g c e> |
	f <a c d> fis <a c dis> |
	g <c e> e, <g c e> |
	d <g d'> \stemDown <g g,>4 \stemNeutral |
    } \alternative {
	{ <c, c,>8 r8 r4 | }
	{ <c c,>8 r <c c,>^^ r | }
    }
}

partTwoDynamics =  {
    \repeat volta 2 {
	s2 \f | s2 | s2 | s2 | s2 |							% 25 - 29

	s2 | s4 \< s8. s16 \! |								% 30 - 35
	s8 s s8 \> s16 s \! |
	s2 \f |
	s2 | s2 |

	s2 | s2 | s2 | s2 |								% 36 - 41
    } \alternative {
	{ s2 | }
	{ s2 | }
    }
}

partTwoRH =  { << \partTwoGlobal \partTwoRHnotes >> }
partTwoLH =  { << \partTwoGlobal \partTwoLHnotes >> }

% --- Part Three ... ---------------------------------------------------

partThreeGlobal =  {
    \key as \major

    \repeat volta 2 {
	\bar "||:"
	\barRest | \barRest | \barRest | \barRest |					% 42 - 45
	\oBreak

	\barRest | \barRest | \barRest | \barRest |					% 46 - 49
	\oBreak

	\barRest | \barRest | \barRest | \barRest | \barRest |				% 50 - 54
	\oBreak

	\barRest | \barRest |								% 55 - 59
    } \alternative {
	{ \barRest | }
	{ \barRest | }
    }
    \bar "||"

    {
	\barRest |
	\oBreak

	\barRest | \barRest | \barRest |						% 60 - 62
    }
}

partThreeRHnotes =  \relative c'' {

    \repeat volta 2 {
	<c es c'>8 <c es c'> ~ <c es c'>16 es as bes |					% 42 - 45
	<c, es c'> <c es c'>8 <c es c'>16 ~ <c es c'> <c c'> <des des'> <es es'> |
	<f as f'>8 <f as f'> ~ <f as f'>16 <f as f'> <es g es'> <des f des'> |
	<c es c'> <c es c'>8 <c es c'>16 ~ <c es c'> <c c'> <bes bes'> <as as'> |

	<g des' g>8 <g des' g> ~ <g des' g>16 <es es'> <f f'> <g g'> |			% 46 - 49
	<as c as'> <as c as'>8 <as c as'>16 ~ <as c as'> <c c'> <bes bes'> <as as'> |
	<f bes f'>8 <des' f des'> ~ <des f des'>16 <des des'> <c c'> <bes bes'> |
	<as as'>8 <as as'>16 <as as'> <as as'>8 <bes bes'> |

	<b b'> <b b'> ~ <b b'>16 <e e,> <gis gis,> <b! b,!> |				% 50 - 54
	<fis dis b fis> <fis dis b fis>8 <fis dis b fis>16 ~ <fis dis b fis>
	  <fis fis,> <b! b,!> <dis! dis,!> |
	<cis cis,>8 <cis cis,> ~ <cis cis,>16 <fis, fis,> <gis gis,> <ais ais,> |
	<b b,>8 <b b,>16 <b b,> <b b,>8 <b b,> |
	<b b,> <b b,> ~ <b b,>16 <e, e,> <gis gis,> <b! b,!> |

	<c es,! c> <c es, c>8 <c es, c>16 ~ <c es, c> <c c,> <bes! bes,!> <as! as,!> |	% 55 - 59
	<g des! g,>8 <es es'> ~ <es es'>16 <des des'> <c c'> <bes bes'> |
    } \alternative {
	{ <as as'>8 es'16 es es8 es | }
	{ <as as,>8 <as as,>16 <as as,> <as as,>8 <as as,> | }
    }
    {
	<a a,> <f f'> ~ <f f'>16 <e e'> <d d'> <c c'> |

	<g g'> <a a'> <bes! bes'!>8 ~ <bes bes'>16 <bes d bes'> <a! c a'!> <g bes g'> |	% 60 - 62
	<f a f'>8 <f as des! f>4 <f as des f>8 |
	<f a c f> r <f' a c f> r |
    }
}

partThreeLHnotes =  \relative c' {

    \repeat volta 2 {
	<as as,>8 <es as c> <es es,> <es as c> |					% 42 - 45
	<as as,> <es as c> <es es,> <es as c> |
	<des des,> <f as des> <des des,> <f as des> |
	<as as,> <es as c> <es es,> <es as c> |

	<bes bes'> <es bes' des> <es es,> <es bes' des> |				% 46 - 49
	<as as,> <es as c> <es es,> <es as c> |
	<des des,> <bes bes,> <es es,> <es g des'> |
	<as c> r r4 |

	e8 <gis b> e <gis b> |								% 50 - 54
	% DIFF: ... bes, ..... |  in original there is no cancel (imho there should be)
	dis <fis b> b, <dis! fis b> |
	\stemDown fis, <e' fis ais> fis, <e' fis ais> \stemNeutral |
	<b dis fis b> r r4 |
	es8 <gis b> es <gis b> |

	es! <es as! c> es <as c> |							% 55 - 59
	<es es,> <es g des'> <es es,> <es g des'> |
    } \alternative {
	{ <as c> r r4 | }
	{ <as c>8 r <des as f des>4 | }
    }
    {
	<c a f c>8 <f f,> ~ <f f,>16 <e e,> <d d,> <c c,> |

	<e, e,> <f f,> <g g,>8 ~ <g g,>16 <c, c,> <d d,> <e! e,!> |			% 60 - 62
	<f f,>8 <des! des,!>4 <des des,>8 |
	<f f,> r <f, f,> r |
    }
}

partThreeDynamics =  {
    \repeat volta 2 {
	s2 | s2 | s2 | s2 |								% 42 - 45
	s2 | s2 | s2 | s2 |								% 46 - 49
	s2 | s2 | s2 | s2 | s2 | 							% 50 - 54
	s2 | s2 |									% 55 - 59
    } \alternative {
	{ s2 | }
	{ s2 | }
    }
    {
	s2 |

	s2 | s2 |									% 60 - 62
	s8 s s \> s \! |
    }
}

partThreeRH =  { << \partThreeGlobal \partThreeRHnotes >> }
partThreeLH =  { << \partThreeGlobal \partThreeLHnotes >> }

% --- PART FOUR ... --------------------------------------------------

partFourGlobal =  {
    \key f \major

    \repeat volta 2 {
	\bar "|:" \barRest | \barRest |						% 63 - 64
	\oBreak

	\barRest | \barRest | \barRest | \barRest | \barRest |				% 65 - 69
	\oBreak

	\barRest | \barRest | \barRest | \barRest | \barRest |				% 70 - 74
	\oBreak

	\barRest | \barRest | \barRest |						% 75 - 79
    } \alternative {
	{ \barRest | }
	{ \barRest \bar "||" | }
    }

    \oBreak
    {
	\barRest | \barRest | \barRest | \barRest |					% 80 - 83
	\oBreak
    }
}

partFourRHnotes =  \relative c''{
    \repeat volta 2 {
	\stemDown <bes g>8. c16 <bes g>8. c16 |						% 63 - 64
	r e d c bes a bes g |

	<a f>8. c16 <a f>8. c16 |							% 65 - 69
	r f e d c b c a |
	<bes a'>8. g'16 bes,4 ~ |
	bes16 c <bes e> c d e d c |
	<g' a,>8. f16 \stemUp a,4 ~ \stemDown |

	a16 a d a c d c a |								% 70 - 74
	<bes g>8. c16 <bes g>8. c16 |
	r e d c bes a bes g |
	<a f>8. c16 <a f>8. c16 |
	r f e d c b c a |

	<f f'>8. <g g'>16 <as as'>4 |							% 75 - 79
	r16 f' <a! c,> f g a g f |
	\acciaccatura c'8 bes16 a g8 ~ g16 bes a g |
    } \alternative {
	{ f8 c16 c c8 c | }
	%  .... s4 - RH is in LH staff
	{ f8 r s4 | }
    }

    {
	s2 | s2 |									% 80 - 83
	\stemNeutral
	\acciaccatura b,8 a16 g fis g gis a ais b |
	c8 r
	   << { \appoggiatura { g'16 [ a b ] } c4*1/2-^ } \new Voice e, >>
	   r
    }
}

partFourLHnotes =  \relative c {

    \repeat volta 2 {
	e8 <g bes c> c, <g' bes c> |							% 63 - 64
	e8 <g bes c> c, <g' bes c> |

	f <a c> c, <a' c> |								% 65 - 69
	f <a c> c, <a' c> |
	g <bes c e> c, <bes' c e> |
	g <bes c e> c, <bes' c e> |
	f <a c f> c, <a' c f> |

	f <a c f> c, <a' c f> |								% 70 - 74
	e8 <g bes c> c, <g' bes c> |
	e8 <g bes c> c, <g' bes c> |
	f <a c> c, <a' c> |
	f <a c> c, <a' c> |

	des, <f as b> des <f as b> |							% 75 - 79
	c <f a! c> c <a' c f> |
	g <bes c e> c, <bes' c e>
    } \alternative {
	{ <f a c f>8 r r4 | }
	{
	    <f a c f>8 r
	    << { f^" R.H." fis } \\
	       { f,_" L.H." fis } >> |
	}
    }

    {
	<< {										% 80 - 83
	     g'8 a ~ a16 g fis g |
	     c8 d ~ d16 c b c | } \\
	   { g,8 a ~ a16 g fis g |
	     c8 d ~ d16 c b c | } >>
	<g' b f'!>4 <g b f'> |
	<c e>8 r <c, c,>^^ r |
    }
}

partFourDynamics =  {

    \repeat volta 2 {
	s2 \p | s2 |									% 63 - 64

	s2 | s2 | s2 | s2 | s2 |							% 65 - 69

	s2 | s2 | s2 | s2 | s4 \< s8 s16 s \! |						% 70 - 74

	s8 \f \< s s \> s \! |								% 75 - 79
	s16 \> s s \p s s4 |
	s2 |
    } \alternative {
	{ s2 | }
	{ s8 s s \< s16 s \! | }
    }

    {
	s8 \< s8 s16 \! s s8 |								% 80 - 83
	s8 \< s s16 s \! s8 |
	s4 \< s \! |
	s2 |
    }
}

partFourRH =  { << \partFourGlobal \partFourRHnotes >> }
partFourLH =  { << \partFourGlobal \partFourLHnotes >> }

% --- PART FIVE ... --------------------------------------------------

	% .... is almost identical carbon copy of PART TWO ....

partFiveGlobal =  {
    \key c \major

    \repeat volta 2 {
	\bar "||:" \barRest | \barRest | \barRest | \barRest | \barRest | \barRest	% 84 - 89
	\oBreak

	\barRest | \barRest | \barRest | \barRest | \barRest |				% 90 - 94
	\oBreak

	\barRest | \barRest | \barRest | \barRest |					% 95 - 100

    } \alternative {
	{ \barRest | }
	{ \barRest  }
    }

    \bar "|."
    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \markFermata |
}

partFiveRHnotes =  \relative c''' {
    \stemNeutral
    \repeat volta 2 {
	<a f a,>8 <c a c,>4 <a f a,>8 |							% 84 - 89
	<a f a,> <g e g,>4. |
	<f d>16 <e c> <d b> <e c> <f d> <a f>8 <a f>16 |
	<g e> <f d> <e c> <f d> <g e> <e c'>8 <e c'>16 |
	<a f a,>8 <c a c,>4 <a f a,>8 |
	<a f a,> <g e g,>4. |
											% 90 - 94
	<c e, c>16 <b e, b> <a e a,>  <b e, b> <c a c,> <cis a cis,> <d b a d,> <dis b a dis,> |
	<e b gis e> 8 r <g, e bes>4-> |
	<a f a,>8 <c a c,>4 <a f a,>8 |
	<a f a,> <g e g,>4. |
	<f d>16 <e c> <d b> <e c> <f d> <a f>8 <a f>16 |


	<g e> <f d> <e c> <f d> <g e> <e c'>8 <e c'>16 |				% 95 - 100
	<d d'>8 <d d'> ~ <d d'>16 c' b a |
	<e a>8 <e g> ~ <e g>16 c d e |
	<b g'>8 <b f'>4 \stemUp <b g f>8 \stemNeutral |
    } \alternative {
	{ <c g e> <g g'>16 <g g'> <g g'>8 <g g'> | }
	{ <c g e>8 r
	  << { \appoggiatura { g'16 [a b] } c4*1/2-^ } \new Voice e,8>>
	  s  |
        }
    }
}

partFiveLHnotes =  \relative c {
    \repeat volta 2 {
	f,8 <a' c f> a, <a' c f> |							% 84 - 89
	c, <g' c e> e <g c e> |
	g, <g' b f'> b, <g' b f'> |
	c, <g' c e> c, <g' c e> |
	f, <a' c f> a, <a' c f>
	c, <g' c e> e <g c e> |

	<a a,> <a c e> <f f,> <f f,> |							% 90 - 94
	<e e,> r <c c'>4^> |
	f,8 <a' c f> a, <a' c f> |
	c, <g' c e> e <g c e> |
	g, <g' b f'> b, <g' b f'> |

	c, <g' c e> e <g c e> |								% 95 - 100
	f <a c d> fis <a c dis> |
	g <c e> e, <g c e> |
	d <g d'> \stemDown <g g,>4 \stemNeutral |
    } \alternative {
	{ <c, c,>8 r8 r4 | }
	{ <c c,>8 r <c c,>  s | }
    }
}

partFiveDynamics =  {
    \repeat volta 2 {
	s2 \f | s2 | s2 | s2 | s2 | s2 |						% 84 - 89

	s4 \< s8. s16 \! |								% 90 - 94
	s8 s s8 \> s16 s \! |
	s2 \f |
	s2 | s2 |

	s2 | s2 | s2 | s2 |								% 94 - 100
    } \alternative {
	{ s2 | }
	{ s8 s s s ^\markup { \vcenter \right-align "FINE." } |
      }
    }
}

partFiveRH =  { << \partFiveGlobal \partFiveRHnotes >> }
partFiveLH =  { << \partFiveGlobal \partFiveLHnotes >> }

% --- Combine .... ---------------------------------------------------

rightHand =  {
    \clef treble
    \introCommon

    \partZeroRH
    \partOneRH
    \partTwoRH
    \partThreeRH
    \partFourRH
    \partFiveRH
}

leftHand =  {
    \clef bass
    \introCommon

    \partZeroLH
    \partOneLH
    \partTwoLH
    \partThreeLH
    \partFourLH
    \partFiveLH
}

dynamics =  {
    \partZeroDynamics
    \partOneDynamics
    \partTwoDynamics
    \partThreeDynamics
    \partFourDynamics
    \partFiveDynamics
}

% --- Score ... ------------------------------------------------------

\score {

  \context PianoStaff <<
%    \accidentalStyle "piano"
%    \accidentalStyle "default"

    \context Staff = RH \rightHand
    \context Dynamics = "dynamics" \dynamics
    \context Staff = LH \leftHand
  >>

  \layout { }
}

\score {
  \context PianoStaff <<
    \context Staff = RH \unfoldRepeats \rightHand
    \context Dynamics = "dynamics" \unfoldRepeats \dynamics
    \context Staff = LH \unfoldRepeats \leftHand
   >>

  \midi {
   \tempo 4 = 82
    \context {
      \type "Performer_group"
      \name Dynamics
      \consists "Dynamic_performer"
    }
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}

% arch-tag: Daniel Skarda Sat Oct 16 23:09:56 2004 (A Breeze From Alabama)
