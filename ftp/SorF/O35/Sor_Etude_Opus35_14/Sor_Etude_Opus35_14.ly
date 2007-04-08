\header {
	title =		"Etude";
	composer =	"Fernando Sor";
	opus =		"Opus 35, No. 14";
	% instrument =	"Guitar";

	% Mutopia file info:

	mutopiatitle =	"Etude";
	mutopiacomposer =	"Fernando Sor (1778-1839)";
	mutopiaopus =	"Opus 35, No. 14";
	mutopiainstrument =	"Guitar";
	style =		"Classical";
	copyright =	"Public Domain";
	filename =	"Sor_Etude_Opus35_14.ly";
	enteredby =	"Jakob Bagterp";
	maintainer =	"Jakob Bagterp";
	maintainer_email =	"jakob_bagterp@hotmail.com";
	lastupdated =	"2001/March/29";
	footer =	"Mutopia-2001/03/29-64";
	tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
}

% This score has been optimized for A4 paper layout. /Jakob Bagterp

\version "1.3.46";
\include "paper20.ly";
\include "deutsch.ly";

global = \notes {
	\clef treble;
	\key a \minor;
	\time 4/4;
}

melody = \notes \relative c'' \context Voice = melody {
	\global
	\stemup

	\repeat volta 2 {

		\partial 4;
		c8.^1^"\bf Andante" h16^0 |

		% 1
		a8.^2 h16^0 c8.^1 d16^4 e4^0 f^2^1 |
		h,^0 e2^0 d4^1^4 |
		c^2^1 h^0^0 a8.^3^2 c16^1 \slurdown \times 2/3 { c8( )h a^3 } \break |
		gis4^1 h r \grace { d8 } c8. h16 |

		% 5
		a8. h16 c8. d16 e4 fis^1^2 |
		g4.^4 f!8^1 e4^0 c |
		a^2 d^4 h8. c16^1 d8.^4 h16 |
		c2^1 r4
	}

	\repeat volta 2 {

		g'8.^4 f16^1 |
		e4^0 e8. d16^4 c4^1 c |

		% 10
		a'4..^4 g16^4 f4^1 f8. e16^0 |
		d4^1 d8. c16^1 h4^0 h |
		g'4..^4 f16^1 e4^0 e8. e16 |
		d4^1^4 e8. e16 c4^2^1 e8. e16 |
		h4^1^0 e8. e16 a,4^2 e'8. e16 |

		% 15
		d4 e8. e16 c4 e8. c16^1 |
		<gis4 h^1^0> e' r \grace { d8 } c8. h16 |
		a8. h16 c8. d16 e4 f |
		h, e2 d4^4 |
		c h a8. c16 \times 2/3 { c8( )h a } |

		% 20
		gis4 h r c8. h16 |
		a8. h16 c8. d16 e4 a,^1 |
		b8.^3 d16^4 f2^1 d8. b16 |
		a8.^3 c16^1 e2 gis,8.^1 h16 |
		\partial 2.; a4^3 <e c'^2^1> a |
	}
}

bass = \notes \relative c' \context Voice = bass {
	\global
	\stemdown
	\repeat volta 2 {

		\partial 4;
		r4 |

		% 1
		a2 r4 <d a'> |
		<e2_1_2 gis> e,4 gis' |
		a g! f d |
		e2_2 e,4 r |

		% 5
		a2 r4 <d c'> |
		<g2 h> c4_1 e,_2 |
		f2_3 g |
		c,8._3 g'16 e8._2 g16 c,4
	}

	\repeat volta 2 {

		r4 |
		r2 r4 a'8._2 g16_0 |

		% 10
		f4_1 f8. e16_2 d4_0 r |
		h'4.._2 a16_2 g4_0 g8. f16_3 |
		e4_2 e8. d16_0 c4_3 r |
		<h2_2 gis'> <a a'> |
		<d gis> <c_3 a'> |

		% 15
		<h gis'> <a a'> |
		e4 e'_2 e, r |
		a4 r r <d a'> |
		< { e2_3_2 ~ e_1 } { a gis } > |
		a4 g! f d |

		% 20
		e2 e,4 r |
		a4 r r c_2 |
		d2_0 d |
		e_2 e, |
		\partial 2.; a2 a4 |
	}
}

GuitarStaff = \context Staff <
	\property Staff.midiInstrument = "acoustic guitar (nylon)"
	\property Staff.transposing = -12

	\melody
	\bass
>

\score {
	\GuitarStaff

	\midi {
		\tempo 4=80;
	}

	\paper {
		linewidth = 18.0 \cm;
	}
}
