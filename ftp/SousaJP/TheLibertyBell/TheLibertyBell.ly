\version "2.6.0"
\include "english.ly"
\header {
 title="THE LIBERTY BELL"
 subtitle="MARCH."
 composer="JOHN PHILIP SOUSA."

 mutopiatitle = "The Liberty Bell March"
 mutopiacomposer = "SousaJP"
 mutopiainstrument = "Piano"
 date = "1893"
 source = "The John Church Company"
 style = "Classical"
 maintainer = "Benjamin Bloomfield"
 maintainerEmail = "bhb123@gmail.com"
 license = "Public Domain"
 lastupdated = "2005/October/30"

 footer = "Mutopia-2005/11/09-625"
 copyright = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 }  \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\paper {
	hsize = 8.5\in
	vsize = 11\in
	raggedlastbottom=##f
	betweensystempadding = #0
}

     upper = \relative c' {
	\override Staff.NoteCollision
         #'merge-differently-dotted = ##t
       \clef treble
       \key f \major
       \time 6/8

	<f f'>4^( <e e'>8 <d d'>4 <df df'>8 | <c c'>4 <b b'>8 <bf bf'>4 <a a'>8) |
	<g g'>8^.[ <a a'>^. <bf bf'>^.] <a a'>4 <g g'>8 | c4 r8 r4 c'8
\repeat volta 2
{
	<a f>8[ r <a f>] <a f>[ gs <a f>] | <a f'>[ r <a c>] <a c>[ r <a f>]

	\break

	<g bf>4 <g bf>8 <g bf>4 <a c>8 | <bf d>4.~ <bf d>4 <g bf>8 | <e g>[ r <e g>] <e g>[ fs <g e>] |
	<bf e>[ r <bf d>] <bf d>[ r <g bf>] | <f a>[ r <f a>] <f a>[ r <g bf>] | <a c>4.~ <a c>4 <a c>8

	\break

	<f a>8[ r <f a>] <f a>[ gs <a f>] | <c a'>[ r <a f'>] <a f'>[ r <a c>] | <g b>[ r g'] <g d b>[ r g] |
	<g d b>4.~ <g d b>4 f8 |
	<< \stemUp {e8^>[^( r g] g[ fs g]) | d^>[^( r g] g[ fs g])} \\
	 \stemDown {<c, g>4. <c g> | <b g> <d g,>} >>

	\break

	<c g e>8^>[ r <b g f>] <c g e>^>[ r <b g f>]
}
\alternative
{
	{
		<c g e>4. <c g e>
	}
	{
		<c g e>4. bf^>
	}
}
\repeat volta 2
{
	a8[^( gs a] d4 c8 | a4. f) | d^( g

	\break

	f4.~ f4) f8 |
	<< \stemUp {g8[^( a bf] e4 d8)} \\
	 \stemDown {g,4. <g bf>} >> |
	<a c>4. <af c f> | <g c e> <f b d> <e g c>4.~ <e g c>4 c'8 |
	<< \stemUp {\phrasingSlurUp  d8[\( r d] \acciaccatura e d[ cs d]\)} \\
	 \stemDown {f,2.} >>

	\break

	<a e'>4. <g e'> |
	<< \stemUp {f'4 f8 \acciaccatura a g[^( f) g] | a4.~ a4 a8 | \acciaccatura a \stemDown g4*3/2} \\
	 \stemDown {f,4. d' | cs2._( | <d g>8)[ r f]} >> d8[ r bf] |
	a4. f | g e

\pageBreak
}
% begin page 2
\alternative
{
	{
		f4.~ f4 c'8
	}
	{
		f,4.~ f4 f8
	}
}
	\bar "||"
	\key bf \major
	<d bf' d>4.^( <ef bf' ef> | <e bf' e> <f bf f'>) | #(set-octavation 1)
	<f' bf d>8_^\arpeggio[ r <f bf d>] <f bf d>[ r <e bf' cs>] | <f bf d>4.~ <f bf d>4 #(set-octavation 0) f,8

	\break

	<d bf' d>4.^( <ef bf' ef> | <e bf' e> <f bf f'>) | #(set-octavation 1)
	<f' c' ef>8^^[ r <f c' ef>] <f c' ef>[ r <f b d>] | <f c' ef>4.~ <f c' ef>4 #(set-octavation 0) d8 |
	<< \stemUp {c4.^( b | <f a c>4)} \\
	 \stemDown {d4\rest <c ef a>8 d4\rest <gs d b>8 | s4} >> f8_( e4 f8)

	\break

	<< \stemUp {d'4.^( cs | <d bf f>4) } \\
	 \stemDown {d,4\rest <d f bf>8 d4\rest <e g bf>8 | s4} >> f8_( e4 f8) |
	a4. c | bf4^( c8) \stemUp g4_( bf8) | \stemNeutral
	<< \stemUp {a4^( bf8) g4^( a8) | f4^( g8) ef4^( f8)} \\
	 \stemDown {<c ef>4. <bf ef> | <a ef'> <a c>} >>

	\break

	<d bf' d>4.^( <ef bf' ef> | <e bf' e> <f bf f'>) | #(set-octavation 1)
	<f' bf d>8[ r <f bf d>] <f bf d>[ r <e bf' cs>] | <f bf d>4.~ <f bf d>4 #(set-octavation 0) f,8 |
	<d bf' d>4.^( <ef bf' ef> | <e bf' e> <f bf f'>) | #(set-octavation 1)

	\break

	<f' c' ef>8[ r <f c' ef>] <f c' ef>[ r <f b d>] | <f c' ef>4.~ <f c' ef>4 #(set-octavation 0) d8 |
	<< \stemUp {c4.^>^( b | <f a c c,>4)} \\
	 \stemDown {d4\rest <ef a>8 d4\rest <d gs>8 | s4} >> f8_( e4 f8) |
	<< \stemUp { d'4.^( cs \break <d, f bf d>4)} \\
	 \stemDown { d4\rest <d f bf>8 d4\rest <e g bf>8 \break s4} >>

%	\break

	f8_( e4 f8) | g4.^( ef') | d4^( bf8 c4 a8) |
	<< \stemUp {bf2.^( | <bf f d>4)} \\
	 \stemDown {d,4\rest <d f>8 <d f>4 <d f>8 | s4} >> r8 r4 r8

\pageBreak

% begin page 3

\repeat volta 2
{
	r4 <ef a ef'>8 <ef a ef'>[ <ef a d> <ef a c>] | <d g bf>4. r4 r8 |
	r4 <ef a ef'>8-. <ef a ef'>-.[ <ef a d>-. <ef a c>]-. | <d g bf>4 r8 r4 r8 |
	r4 <ef a ef'>8 <ef a ef'>[ <ef a d> <ef a c>]

	\break

	<d g bf>4 <d g bf>8 <ef g c>[ <ef g bf> <ef g c>] | <d fs a d>4 r8 #(set-octavation 1) <d' fs a d>4 r8 |
	<d' fs a d>4 #(set-octavation 0) r8 r4 r8 | r4 <g, ef g,>8-. <g ef g,>-.[ <f d f,>-. <ef c ef,>-.] |
	<d bf d,>4 r8 r4 r8

	\break

	r4 <g ef g,>8 <g ef g,>[ <f d f,> <ef c ef,>] | <d bf d,>4 r8 r4 r8 |
	r4 <g ef g,>8 <g ef g,>[ <f d f,> <ef c ef,>] | <d bf d,>4 <d bf d,>8 <e bf e,>[ d <e bf e,>] |
	<f c a f>4 r8 #(set-octavation 1) <f' c a f>4 #(set-octavation 0) r8

	\break

	#(set-octavation 1) <f a c f>4 #(set-octavation 0) r8 r4 r8 | r4 r8 r4 <e, df bf e,>8^^ |
	<f c a f>4^^ c'8^^ <f f,>4.^^ | r4 r8 r4 <e, df bf e,>8^^ |
	<f c a f>4^^ c'8^^ <f f,>4.^^ |

	\break

	<e, df bf e,>2.^^ | <f d bf f>^^ | <gf ef bf gf>^^ | <f ef a, f>4. <ef ef,>4.^^
	\bar "||"
	<< \stemUp {<d d,>4.^^ <ef ef,>^^
		\break

		<e e,>^^ <f f,>^^} \\
	 \stemDown {\set fontSize=#-4 g,4\rest \set fontSize=#0 <f bf>8 \set fontSize=#-4 b4\rest \set fontSize=#0 <f bf>8
		\break

		\set fontSize=#-4 b4\rest \set fontSize=#0 <g bf>8 \set fontSize=#-4 b4\rest \set fontSize=#0 <f bf>8} >> |
	<f' bf d>8^^[ r <f bf d>] <f bf d>[ r <e bf' cs>] | <f bf d>4.~ <f bf d>4 <f f,>8 |
	<< \stemUp {<d d,>4.^^ <ef ef,>^^ | <e e,>^^ <f f,>^^} \\
	 \stemDown {\set fontSize=#-4 g,4\rest \set fontSize=#0 <f bf>8 \set fontSize=#-4 b4\rest \set fontSize=#0 <f bf>8 |
		\set fontSize=#-4 b4\rest \set fontSize=#0 <g bf>8 \set fontSize=#-4 b4\rest \set fontSize=#0 <f bf>8} >> |

\pageBreak
% begin page 4

	<ef' a ef'>8[ r <ef a ef'>] <ef a ef'>[ r <d gs d'>] | <ef a ef'>4.~ <ef a ef'>4 <d d'>8 |
	<< \stemUp {s64*1/2 \set fontSize=#-4 f4*31/32\rest \set fontSize=#0 <ef a>8
		    s64*1/2 \set fontSize=#-4 f4*31/32\rest \set fontSize=#0 <gs d>8} \\
	 \stemDown {<c c,>4.^^ <b b,>^^} >> |
	<c a f c>4 <f, f,>8( <e e,>4 <f f,>8) |
	<< \stemUp {s64*1/2 \set fontSize=#-4 a4*31/32\rest \set fontSize=#0 <bf f>8
		    s64*1/2 \set fontSize=#-4 f4*31/32\rest \set fontSize=#0 <e bf'>8} \\
	 \stemDown {<d d'>4.^^ <cs cs'>^^} >>

	\break

	<f bf d>4 <f f,>8( <e e,>4 <f f,>8) | <a a,>4.^^ <c c,>^^ | <bf bf,>4( <c c,>8) <g g,>4( <bf bf,>8) |
	<< \stemUp {a4^^^( bf8) g4^^^( a8) | f4^( g8) ef4^( f8)} \\
	 \stemDown {<ef c>4. <ef bf> | <ef a,> <c a>} >>

	\break

	<< \stemUp {<d d,>4.^^ <ef ef,>^^ | <e e,>^^ <f f,>^^} \\
	 \stemDown {\set fontSize=#-4 g,4\rest \set fontSize=#0 <bf f>8 \set fontSize=#-4 a4\rest \set fontSize=#0 <bf f>8 |
		\set fontSize=#-4 a4\rest \set fontSize=#0 <bf g>8 \set fontSize=#-4 b4\rest \set fontSize=#0 <bf f>8} >> |
	<f' bf d>8^^[ r <f bf d>] <f bf d>[ r <e bf' cs>] | <f bf d>4.~ <f bf d>4 f8 |
	<< \stemUp {<d d,>4.^^ <ef ef,>^^ | <e e,>^^ <f f,>^^} \\
	 \stemDown {\set fontSize=#-4 g,4\rest \set fontSize=#0 <bf f>8 \set fontSize=#-4 a4\rest \set fontSize=#0 <bf f>8 |
		\set fontSize=#-4 a4\rest \set fontSize=#0 <bf g>8 \set fontSize=#-4 b4\rest \set fontSize=#0 <bf f>8} >> |

	\break

	<ef a ef'>8^^[ r <ef a ef'>] <ef a ef'>[ r <d gs d'>] | <ef a ef'>4.~ <ef a ef'>4 <d d'>8 |
	<< \stemUp {s64*1/2 \set fontSize=#-4 f4*31/32\rest \set fontSize=#0 <ef a>8
		    s64*1/2 \set fontSize=#-4 f4*31/32\rest \set fontSize=#0 <gs d>8} \\
	 \stemDown {<c c,>4.^^ <b b,>^^} >> |
	<c a f c>4 <f, f,>8( <e e,>4 <f f,>8) |
	<< \stemUp {s64*1/2 \set fontSize=#-4 a4*31/32\rest \set fontSize=#0 <bf f>8
		    s64*1/2 \set fontSize=#-4 f4*31/32\rest \set fontSize=#0 <e bf'>8} \\
	 \stemDown {<d d'>4.^^ <cs cs'>^^} >> |
	<d f bf d>4 <f f,>8^( <e e,>4 <f f,>8)

	\break

	<g g,>4.^^ <ef ef'>^^ | <d d'>4^^ <bf bf'>8 <c c'>4^^ <a a'>8
}
\alternative
{
	{
		<< \stemUp {s64*1/2 \set fontSize=#-4 f'4*31/32\rest \set fontSize=#0 <f d>8 <f d>4 <f d>8 | s4} \\
		 \stemDown {\tieNeutral <bf bf,>2.~ | <bf f d bf>4} >>
			r8 r4 r8
	}
	{
		<< \stemUp {s64*1/2 \set fontSize=#-4 f4*31/32\rest \set fontSize=#0 <f d>8 <f d>4 <f d>8 | s4} \\
		 \stemDown {\tieNeutral <bf bf,>2.~ | <bf f d bf>4} >>
			r8 <bf f d bf>4^^ r8
	}
}
\bar "|."
     }
     
     lower = \relative c {
       \clef bass
       \key f \major
       \time 6/8

	f4^( e8 d4 df8 | c4 b8 bf4 a8) | g8-.[ a-. bf-.] a4 g8 | <c c,>4 r8 r4 r8
\repeat volta 2
{
	f,8[ r <f' a c>] <f a c>[ r <f a c>] | f,8[ r <f' a c>] <f a c>[ r <f a c>]

	\break

	<e e,>4_( <f f,>8 <g g,>4 <f f,>8 | <e e,>4 <d d,>8 <c c,>4) r8 | <c c,>8[ r <bf' c>] <bf c>[ r <bf c>] |
	<g g,>[ r <bf c>] c,[ r <bf' c>] | <f f,>4_( <g g,>8 <a a,>4 <g g,>8 | <f f,>4 <e e,>8 <d d,>4 <c c,>8)

	\break

	<f f,>8[ r <f a c>] <f a c>[ r <f a c>] | <f f,>8[ r <f a c>] <f a c>[ r <f a c>] |
	<d d,>4^( <e e,>8 <f f,>4 <e e,>8 | <d d,>4 <c c,>8 <b b,>4 <a a,>8) | <g g,>8[ r <e' g c>] <e g c>[ r <e g c>] |
	<g, g,>[ r <f' b g>] <f b g>[ r <f b g>]

	\break

	<c c,>^>[ r <g g,>] <c c,>^>[ r <g g,>]
}
\alternative
{
	{
		<c c,>4 r8 <c e g c>8 r r
	}
	{
		<c c,>4 r8 r4 r8
	}
}
\repeat volta 2
{
	f8[ r <a c>] c,[ r <a' c>] | f[ r <a c>] a,[ r <f' c'>] | bf,[ r <f' bf>] c[ r <e bf'>]

	\break

	f,[ r <f' a c>] <f a c>[ r <f a c>] | e[ r <bf' c>] c,[ r <bf' c>] | f[ r <a c>] d,[ r <af' c>] |
	g,[ r \acciaccatura fs' g] g,[ r \acciaccatura fs' g] | c,[ r <g' c>] <g c>[ r <g c>] |
	bf,[ r <bf' d>] <bf d>[ r <bf d>]

	\break

	a,[ r <a' cs>] <a cs>[ r <a cs>] | d,[ r <a' d>] bf,[ r <bf' d>] | a,[ r <a' e'>] <a e'>[ r <a e'>] |
	bf,[ r <bf' d g>] <bf d g>[ r <bf d g>] | c,[ r <a' c>] <a c>[ r <a c>] | e[ r <bf' c>] c,[ r <bf' c>]

\pageBreak
}
% begin page 2 (lower)

\alternative
{
	{
		<f a c>8[ r <f a c>] <f a c>4 r8
	}
	{
		<f a c>8[ r <f a c>] <f a c>4 r8
	}
}
	\bar "||"
	\key bf \major

	bf,8-^[ r bf'] c,-^[ r bf'] | cs,-^[ r bf'] d,-^[ r bf'] | bf,[ r <bf' d f>] <bf d f>[ r <bf cs e>] |
	bf,[ r <bf' d f>] <bf d f>[ r <f bf d>]

	\break

	bf,8-^[ r bf'] c,-^[ r bf'] | cs,[ r bf'] d,[ r bf'] | f,[ r <a' c ef>] <a c ef>[ r <gs b d>] |
	f,[ r <a' c ef>] <a c ef>[ r <a c ef>] | f,[ r <f' a>] f,[ r <f' gs>] | f,[ r <f' a>] f,[ r <f' a>]

	\break

	bf,[ r <f' bf>] bf,[ r <bf' cs>] | bf,[ r <f' bf d>] bf,[ r <f' bf d>] | c[ r <f a c>] c[ r <f a c>] |
	c[ r <e bf' c>] c[ r <e bf' c>] | f,4^( f'8) f,4^( f'8) | f,4^( f'8) f,4^( f'8)

	\break

	bf,8-^[ r bf'] c,-^[ r bf'] | cs,-^[ r bf'] d,-^[ r bf'] | bf,[ r <bf' d f>] <bf d f>[ r <bf cs e>] |
	bf,[ r <bf' d f>] <bf d f>[ r <f bf d>] | bf,8-^[ r bf'] c,-^[ r bf'] | cs,-^[ r bf'] d,-^[ r bf']

	\break

	f,[ r <a' c ef>] <a c ef>[ r <gs b d>] | f,[ r <a' c ef>] <a c ef>[ r <a c ef>] |
	f,[ r <f' a c>] f,[ r <f' gs b>] | f,[ r <f' a c>] <f a c>[ r <f a c>] | bf,[ r <f' bf>] bf,[ r <bf' cs>]

	\break

	bf,[ r <f' bf d>] <f bf d>[ r <f bf d>] | ef[ r <g bf ef>] c,[ r <g' bf ef>] |
	f[ r <g bf d>] f,[ r <f' a ef'>] | bf,[ r <f' bf>] <f bf>[ r <f bf>] |
	<bf bf,>4 <bf bf,>8-. <bf bf,>-.[ <a a,>-. <g g,>-.]

\pageBreak

% begin page 3 (lower)

\repeat volta 2
{
	<fs fs,>2.( | <g g,>4) <bf bf,>8-. <bf bf,>-.[ <a a,>-. <g g,>-.] | <fs fs,>2.( |
	<g g,>4) <bf bf,>8 <bf bf,>[ <a a,> <g g,>] | <fs fs,>2.(

	\break

	<g g,>4) <g bf>8 <ef g>4 <ef g>8 | <d fs a>4 r8 <d d,>4 r8 | r4 <d d'>8-. <d d'>-.[ <c c'>-. <bf bf'>-.] |
	<a a'>2.( | <bf bf'>4) <d d'>8-. <d d'>-.[ <c c'>-. <bf bf'>-.]

	\break

	<a a'>2.( | <bf bf'>4) <d d'>8 <d d'>[ <c c'> <bf bf'>] | <a a'>2.( | <bf bf'>4.) <gf gf'> |
	<f f'>4 r8 <f f'>4 r8

	\break

	r4 <f f'>8 <f f'>[ <f f'> <f f'>] | <gf gf'>4 <df' df'>8 <bf bf'>4 <gf gf'>8^^ |
	<f f'>4^^ c'8^^ <f f,>4^^ <f f,>8 | <gf gf,>4 <df df'>8 <bf bf'>4 <gf gf'>8^^ |
	<f f'>4^^ c'8^^ <f f,>4^^ <f f,>8

	\break

	<bf bf,>4^^ <a a,>8 <bf bf,>4 <gf gf,>8 | <f f,>4^^ <e e,>8 <f f,>4 <d d,>8 |
	<c c,>4^^ <d d,>8 <ef ef,>4 <c c,>8 | <f f,>4. r4 r8
	\bar "||"
	bf,8^^[ r <d bf'>] c^^[ r <ef bf'>]

	\break

	cs^^[ r <e bf'>] d^^[ r <f bf>] | bf,[ r <bf' d f>] <bf d f>[ r <bf cs e>] | bf,[ r <bf' d f>] <bf d f>[ r <bf d>] |
	bf,^^[ r <d bf'>] c^^[ r <ef bf'>] | cs^^[ r <e bf'>] d^^[ r <f bf>]

\pageBreak

% begin page 4 (lower)

	c8[ r <a' c ef>] <a c ef>[ r <gs b d>] | f,[ r <a' c ef>] <a c ef>[ r <a c ef>] | f,[ r <f' a>] f,[ r <f' gs>] |
	f,4 <f f'>8_( <e e'>4 <f f'>8) | bf[ r <f' bf>] bf,[ r <bf' cs>]

	\break

	bf,4 <f f'>8_( <e e'>4 <f f'>8) | c'8[ r <f a c>] c[ r <f a c>] | c[ r <e bf' c>] c[ r <e bf' c>] |
	f,4^( f'8) f,4^( f'8) | f,4^( f'8) f,4^( f'8)

	\break

	bf,8^^[ r <d bf'>] c^^[ r <ef bf'>] | cs^^[ r <e bf'>] d^^[ r <f bf>] | bf,[ r <bf' d f>] <bf d f>[ r <bf cs e>] |
	bf,[ r <bf' d f>] <bf d f>[ r <bf d>] | bf,^^[ r <d bf'>] c^^[ r <ef bf'>] | cs[ r <e bf'>] d[ r <f bf>]

	\break

	c[ r <a' c ef>] <a c ef>[ r <gs b d>] | f,[ r <a' c ef>] <a c ef>[ r <a c ef>] | f,[ r <f' a>] f,[ r <f' gs>] |
	<f f,>4 <f f,>8_( <e e,>4 <f f,>8) | bf,8[ r <f' bf>] bf,[ r <bf' cs>] | bf,4 <f f'>8_( <e e'>4 <f f'>8)

	\break

	ef'8[ r <g bf ef>] c,[ r <g' bf ef>] | f[ r <bf d>] f,[ r <f' a c ef>]
}
\alternative
{
	{
		bf,4 <bf bf'>8 <f f'>4 <d d'>8 | <bf bf'>4 <bf' bf'>8-. <bf bf'>-.[ <a a'>-. <g g'>-.]
	}
	{
		bf4 <bf bf'>8 <f f'>4 <d d'>8 | <bf bf'>4 r8 <bf bf'>4^^ r8
	}
}
\bar "|."
     }
     
     dynamics = {
	s2.\ff | s2.*3 | s2.\p | s2.

	s2\< s4\! | s4.\> s4.\! | s2.\p | s2. | s4 s4.\< s8\! | s8 s4.\> s4\!

	s2.*2 | s4. s4.\< | s2.\! | s2.\f | s2.

	s2.*3 | s2.\p | s2.*2

	s2.*6

	s2. | s4.\< s4.\! | s2. | s4. s4\> s8\! | s2.*2

% begin page 2

	s2.*2 | s2\p\< s8 s8\! | s2.*2 | s2 s8 s8\p

	s8 s2\< s8 | s2.\! | s2.*4

	s2.*4 | s8 s2\f s8 | s2.

	s4 s2\< | s4 s2\! | s2.*2 | s2\< s8 s8\! | s2.

	s2.*5

	s4. s4\< s8\! | s2.\f | s2.*2 | s8 s2\ff s8

% begin page 3

	s2.\f | s2.*4

	s2. | s4.\sf s4.\sf | s2.\ff | s2.*2

	s2.*4 | s4.\sf s4.\sf

	s2.\ff | s2.*4

	s2.*3 | s4. s4\< s8\! | s2.\ff

	s2.*5

% begin page 4

	s2.*5

	s2.*5

	s2.\< | s2.\! | s16 s16*11\fff | s2. | s2.\< | s4. s4.\!

	s2.\f | s2.*5

	s2.*6
     }
     
     pedal = {
	s2.*4 | s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp

	s2.*2 | s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp  | s2.*2

	s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp | s2.*2 |
	s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp

	s2.\sustainDown | s8 s4\sustainUp s4\sustainDown s8\sustainUp | s2. |
	s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp |
	s4\sustainDown s16 s8\sustainUp s32*9\sustainDown s32\sustainUp |

	s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp |
	s4\sustainDown s16 s8\sustainUp s32*9\sustainDown s32\sustainUp |
	s4\sustainDown s16 s8\sustainUp s32*9\sustainDown s32\sustainUp |
	s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp |

	s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp |
	s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp |
	s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp |

% begin page 2

	s2\sustainDown s8. s16\sustainUp | s2. | s2.\sustainDown | s2 s8. s16\sustainUp |
	s2.\sustainDown | s4 s16 s8\sustainUp s16*5 |

	s2.\sustainDown | s2 s8. s16\sustainUp | s2.\sustainDown | s2 s4\sustainUp |
	s4\sustainDown s16 s8\sustainUp s32*9\sustainDown s32\sustainUp |
	s2\sustainDown s8. s16\sustainUp |

	s4\sustainDown s16 s8\sustainUp s32*9\sustainDown s32\sustainUp |
	s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp |
	s2.*2 |

	s2.*6

	s2.\sustainDown | s2 s4\sustainUp |
	s4\sustainDown s16 s8\sustainUp s32*9\sustainDown s32\sustainUp |
	s2\sustainDown s8. s16\sustainUp |
	s4\sustainDown s16 s8\sustainUp s32*9\sustainDown s32\sustainUp |

	s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp |
	s4\sustainDown s16 s8\sustainUp s32*9\sustainDown s32\sustainUp |
	s2.\sustainDown | s8 s8\sustainUp s4.\sustainDown s16 s16\sustainUp

% begin page 3

	s2.\sustainDown | s2.*4

	s2.*2 | s4\sustainUp s2\sustainDown | s2.*2

	s2.*5

	s4 s8.\sustainUp s4\sustainDown s16 | s2. | s2 s8. s16\sustainUp | s2.\sustainDown | s16*11 s16\sustainUp |

	s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp | s2\sustainDown s8. s16\sustainUp |
	s2.*2

	s2.*5

% begin page 4
% no pedals on page 4
     }
     #(set-global-staff-size 16)
     \score {
       \context PianoStaff <<
         \context Staff=upper \upper
         \context Dynamics=dynamics \dynamics
         \context Staff=lower <<
           \clef bass
           \lower
         >>
         \context Dynamics=pedal \pedal
       >>
       \layout {
         \context {
           \type "Engraver_group_engraver"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           minimumVerticalExtent = #'(-1 . 1)
           pedalSustainStrings = #'("Ped." "*Ped." "*")
           pedalUnaCordaStrings = #'("una corda" "" "tre corde")
     
           \consists "Piano_pedal_engraver"
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
     
           \override TextScript #'font-size = #2
           \override TextScript #'font-shape = #'italic
           \override DynamicText #'extra-offset = #'(0 . 2.5)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment #'forced-distance = #5.75
         }
       }
     }
     \score {
	\unfoldRepeats
       \context PianoStaff <<
         \context Staff=upper << \upper \dynamics >>
         \context Staff=lower << \lower \dynamics >>
         \context Dynamics=pedal \pedal
       >>
       \midi { \tempo 4=200
         \context {
           \type "Performer_group_performer"
           \name Dynamics
           \consists "Piano_pedal_performer"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
         }
       }
     }
