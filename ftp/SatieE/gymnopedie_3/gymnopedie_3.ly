\include "paper20.ly"

\header {
	title = "3$\\rm ^m$$\\rm ^e$ Gymnop\\'edie";
	dedication = "\\`a CHARLES LEVAD\\'E";
	composer = "Erik Satie";

	mutopiatitle = "Gymnop&eacute;die No. 3";
	mutopiacomposer = "E. Satie (1866 - 1925)";
	mutopiainstrument = "Piano";
	date = "1888";
	source = "Dover Edition";
	% The Dover edition contains photocopies of the original work
	% with translations from the French typed on them.  The translations
	% are all that is new (copyrighted), and are not included in this
	% file.
	
	style = "Classical";
	copyright = "Public Domain";

	filename = "gymnopedie_3.ly";
	maintainer = "Evin Robertson";
	maintainer_email = "nitfol@my-deja.com";
	lastupdated = "2000/Oct/25";

	tagline = "\\\\This music is part of the Mutopia project, http://www.mutopiaproject.org/\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged --- copy this music and share it!";
        footer = "Mutopiq-2000/10/25-39";
}


global = \notes {
	\key a \minor;
	\time 3/4;
}


top = \notes\relative c''' {
	\property Staff.textEmptyDimension=##t
	\property Voice.dynamicDirection = \up
	\stemUp
	\slurUp

	{
		<s2.^\textscript "Lent et grave" "Large" R2.> | R2. |
		R2. | R2. |
		a2.( \p \< | g4 f e |
		\! d e \> f | e d \! c |
		)e2. | g2( \< \!g4 |
		<\context Voice = othervoice {\stemDown r4 <a,2 f> | s2.}
		  { d2. \> ~ | \! d2. } > |
		< )d2. \context Voice = othervoice {\stemDown r4 <a2 f>}> |

		r4 c( f \< | g2 a4 |
		\! d, e f | b, \> a g |
		a2. | \! d,2. ~ |
		)d2. | e'2.( |
		f4 \< g \! f | e \> d e ~ |
		e2. ~ | e4 d c |
		b c \! b | )a2. |

		R2. | R2. |
		R2. | a'2.( |
		g4 f \< e | d e f |
		e \! d c | e2. |
		g2 g4 | c, \> b a |
		b2 c4 | \! d2. |
		)e2. |

		R2. | R2. |
		g2( \< a4 | d, e f |
		b, a \! g | a2. \> |
		d,2. ~ | \! )d2. |
		e'2.( | f4 \< g f |
		e d \! e ~ | e2. ~ |
		e4 \> d c | b c b |
		\! )a2. |

		R2. |
		R2. | R2. |
		<c2. a e c> ~ | <c2. a e c> |
	}

}

middle = \context Voice = accomp \notes\relative c'' {
	\property Voice.NoteColumn \push #'horizontal-shift = #1
	{
	\stemDown
		r4 <a2 \p e c> | r4 <g2 e b> |
		r4 <a2 e c> | r4 <g2 e b> |
		r4 <a2 e c> | r4 <a2 e c> |
		r4 <g2 d bes> | r4 <f2 d a> |
	\translator Staff=bass
	\stemUp
		r4 <e2 c a> | r4 <e2 b g> |
		r4 <b2 g d> | r4 <f'2 c a> |
		r4 <b,2 g d> |

		r4 <f'2 c a> | r4 <g2 e b> |
		r4 <f2 c a> | r4 <e2 c a> |
		r4 <f2 c a> | r4 <f2 c a> |
		r4 <g2 e b> |
	\translator Staff=treble
	\stemDown
		r4 <a2 \pp e c> |
		r4 <g2 e b> | r4 <a2 e c> |
		r4 <g2 e b> | r4 <a2 e c> |
		r4 <g2 e b> | r4 <f2 c a> |

		r4 <g2 \pp e b> | r4 <a2 e c> |
		r4 <g2 e b> | r4 <a2 \p e c> |
		r4 <a2 e c> | r4 <g2 d bes> |
	\translator Staff=bass
	\stemUp
		r4 <f2 d a> | r4 <e2 c a> |
		r4 <e2 b g> | r4 <f2 c a> |
		r4 <e2 b g> | r4 <f2 c a> |
	\translator Staff=treble
	\stemDown
		r4 <a2 e c> |

	\translator Staff=bass
	\stemUp
		r4 <e2 c a> | r4 <f2 c a> |
		r4 <g2 e b> | r4 <f2 c a> |
		r4 <e2 c a> | r4 <f2 c a> |
		r4 <f2 c a> | r4 <g2 e b> |
	\translator Staff=treble
	\stemDown
		r4 <a2 \pp e c> | r4 <g2 e b> |
		r4 <a2 e c> | r4 <g2 e b> |
		r4 <a2 e c> | r4 <g2 e b> |
		r4 <f2 c a> |

		r4 <g2 \pp e b> | r4 <a2 e c> |
		r4 <g2 e b> | s2. |
	}
}

bottom = \context Staff \notes\relative c {
	\stemDown
	{
		a2. | d,2. |
		a'2. | d,2. |
		a'2. | c2. |
		g2. | d2. |
		a'2. | e2. |
		g2. | d2. |
		g2. |

		d2. | g,2. |
		g2. | g2. |
		d'2. | g,2. |
		g2. | c2. |
		e2. | c2. |
		e2. | c2. |
		e2. | a2. |

		d,2. | a'2. |
		d,2. | a'2. |
		c2. | g2. |
		d2. | a'2. |
		e2. | e2. |
		e2. | d2. |
		d2. |

		d2. | d2. |
		g,2. | g2. |
		g2. | d'2. |
		g,2. | g2. |
		c2. | e2. |
		c2. | e2. |
		c2. | e2. |
		a2. |

		d,2. | a'2. |
		d,2. |
		<a'2. e a,> ~ | <a2. e a,> |
	}
}



\score {
	\context PianoStaff <
		\context Staff = treble < 
			\global
			\clef treble;
				\top
				\middle
		>
		\context Staff = bass <
			\global
			\clef bass;
				\bottom
		>
	>

	\midi { }

	\paper {
		linewidth = 18.0 \cm;
	}
}
