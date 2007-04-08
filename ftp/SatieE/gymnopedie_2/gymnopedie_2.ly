\include "paper20.ly"

\header {
	title = "2$\\rm ^e$$\\rm ^m$$\\rm ^e$ Gymnop\\'edie";
	dedication = "\\`a CONRAD SATIE";
	composer = "Erik Satie";

	mutopiatitle = "Gymnop&eacute;die No. 2";
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

	filename = "gymnopedie_2.ly";
	maintainer = "Evin Robertson";
	maintainer_email = "nitfol@my-deja.com";
	lastupdated = "2000/Nov/1";

	tagline = "\\\\This music is part of the Mutopia project, http://www.mutopiaproject.org/\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged --- copy this music and share it!";
        footer = "Mutopia-2000/11/01-38";
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
		<s2.^\textscript "Lent et triste" "Large" R2.> | R2. |
		R2. | R2. |
		g2.( \p \< | \! a4 g f |
		e \> f \! g | )d2. |

		g2.( \< | \! a4 g \> f |
		e f \! g | d )c2 |
		R2. | R2. |

		c'2.( \f \< | f,4 \! g a |
		g2. | c,2. |
		f2. ~ | f4 ees d |
		f2. ~ | f4 g bes |
		a \> g \! f | g2. |
		)f2. | R2. |
		R2. |

		c'2.( \f \< | aes4 g \! f |
		g2. | f2. ~ |
		f4 ees \> d | f2. |
		d2. ~ | d4 ees \! aes |
		bes2. | )f2. |

		R2. | R2. |
		g2.( \p \< | \! f4 g a |
		e \> f g | \! )d2. |

		g2.( \< | f4 \! g a |
		e \> f \! g | f )c2 |
		R2. | R2. |

		c'2.( \f | f,4 \< g a |
		\! g2. | c,2. |
		f2. | g2. \> |
		d2. ~ | \! d2. ~ |
		d2. \> ~ | d2 \! f4 |
		bes2. | a4 )f2 |

		R2. | R2. |
		R2. | R2. \bar "|.";
	}

}

middle = \context Voice = accomp \notes\relative c'' {
	\property Voice.NoteColumn \push #'horizontal-shift = #1
	{
		r4 <g2 \pp e b> | r4 <a2 f c a> |
		r4 <g2 e b> | r4 <a2 f c a> |
		r4 <g2 e b> | r4 <a2 f c a> |
		r4 <g2 e b> | r4 <a2 f c a> |

		r4 <g2 e b> | r4 <a2 f c a> |
		r4 <g2 e b> | r4 <a2 f c a> |
		r4 <g2 e b> | r4 <a2 f c a> |

		r4 <c2 a e c> | r4 <a2 f c a> |
		r4 <g2 ees bes> | r4 <g2 ees bes g> |
		r4 <f2 d a> | r4 <f2 ees bes g> |
		r4 <f2 d a> | r4 <g2 f d bes> |
		r4 <a2 ees c> | r4 <g2 d bes> |
		r4 <a2 f c a> | r4 <g2 \p d bes> |
		r4 <a2 f c a> |

		r4 <c2 g ees> | r4 <c2 aes f c> |
		r4 <bes2 g d bes> | r4 <f2 d a!> |
		r4 <f2 ees bes g> | r4 <f2 d a> |
		r4 <g2 f d bes> | r4 <aes2 ees c> |
		r4 <g2 d bes> | r4 <a!2 f c a!> |

		r4 <g2 e! b!> | r4 <a2 f c a> |
		r4 <g2 e b> | r4 <a2 f c a> |
		r4 <g2 e b> | r4 <a2 f c a> |

		r4 <g2 e b> | r4 <a2 f c a> |
		r4 <g2 e b> | r4 <a2 f c a> |
		r4 <g2 \pp e b> | r4 <a2 f c a> |

		r4 <c2 a e c> | r4 <a2 f c a> |
		r4 <g2 ees bes> | r4 <g2 ees bes g> |
		r4 <f2 d a> | r4 <g2 ees bes g> |
		r4 <f2 d a> | r4 <f2 d bes g> |
		r4 <f2 ees bes g> | r4 <f2 d a> |
		r4 <g2 d bes> | r4 <a2 f c a> |

		r4 <g2 \pp d bes> | r4 <a2 f c a> |
		r4 <g2 d bes> | r4 <g2 e c> |		
	}
}

bottom = \context Staff \notes\relative c {
	\stemDown

	{
		g2. | d2. |
		g2. | d2. |
		g2. | d2. |
		g2. | d2. |

		g2. | d2. |
		g2. | d2. |
		g2. | d2. |

		c2. | c2. |
		c2. | f2. |
		f2. | f2. |
		f2. | f2. |
		f2. | bes,2. |
		d2. | g2. |
		d2. |

		c2. | c2. |
		c2. | f2. |
		f2. | f2. |
		f2. | f2. |
		bes,2. | d2. |

		g2. | d2. |
		g2. | d2. |
		g2. | d2. |

		g2. | d2. |
		g2. | d2. |
		g2. | d2. |

		c2. | c2. |
		c2. | f2. |
		f2. | f2. |
		f2. | f2. |
		f2. | f2. |
		bes,2. | d2. |

		g2. | d2. |
		g2. | c,2. |
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
