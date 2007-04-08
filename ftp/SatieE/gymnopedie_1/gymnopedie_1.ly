\include "paper20.ly"

\header {
	title = "1$\\rm ^e$$\\rm ^r$$\\rm ^e$ Gymnop\\'edie";
	dedication = "\\`a Mademoiselle JEANNE de BRET";
	composer = "Erik Satie";

	mutopiatitle = "Gymnop&eacute;die No. 1";
	mutopiacomposer = "E. Satie (1866 - 1925)";
	mutopiainstrument = "Piano";
	date = "1888";
	source = "Dover Edition";
	% The Dover edition contains reproductions of the original work
	% with translations from the French typed on them.  The translations
	% are all that is new (copyrighted), and are not included in this
	% file.
	
	style = "Classical";
	copyright = "Public Domain";

	filename = "gymnopedie_1.ly";
	maintainer = "Evin Robertson";
	maintainer_email = "nitfol@my-deja.com";
	lastupdated = "2000/Nov/1";

	tagline = "\\\\This music is part of the Mutopia project, http://www.mutopiaproject.org/\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged --- copy this music and share it!";
        footer = "Mutopia-2000/11/01-37";
}


global = \notes {
	\key b \minor;
	\time 3/4;
}


% The original doesn't use a volta, and thus takes nearly twice as much paper.
% Change from volta to unfolded (for each voice) to make it look like the
% original.


top = \context Staff \notes\relative c'' {
	\property Staff.textEmptyDimension=##t
	\property Voice.dynamicDirection = \up
%	\property Voice.Crescendo \push #'direction = #1
	\stemUp
	\slurUp

	\repeat volta 2 {
		<s2.^\textscript "Lent et douloureux" "Large" R2.> | R2. |
		R2. | R2. |
		r4 fis( \pp \< a | g fis cis |
		b \! cis d \> | a2. |
		\! )fis2. ~ | fis2. ~ |
		fis2. ~ | fis2. |

		r4 fis'( \< a | g fis cis |
		b cis \! d | a2. \> |
		cis2. | fis2. |
		\! )e,2. ~ | e2. ~ | e2. |

		a4( \< b c | e d b |
		d c \! b | d2. \> ~ |
		\! )d2 d4( \< | e f g |
		a c, \! d | e \> d b |
		\! d2. ~ | )d2 d4  |
		\break

	} \alternative { {
		g2.( \< | \! fis2. |
		b,4 a b | cis d e |
		cis d \> e | fis,2. |
		<\! )c'2. a e c> | <d2. a fis d> |
	} {
		g2.( \< | \! f2. |
		b,4 c f | e d c |
		e d c \> | f,2. |
		<c'2. a e c> | <\! )d2. a f d> \bar "|.";
	} }

}

middle = \context Voice = accomp \notes\relative c' {
	\property Voice.NoteColumn \push #'horizontal-shift = #1

	\repeat volta 2 {
		r4 <fis2 d b> | r4 <fis2 cis a> |
		r4 <fis2 d b> | r4 <fis2 cis a> |
		r4 <fis2 d b> | r4 <fis2 cis a> |
		r4 <fis2 d b> | r4 <fis2 cis a> |
		r4 <fis2 \f d b> | r4 <fis2 cis a> |
		r4 <fis2 d b> | r4 <fis2 cis a> |

		r4 <fis2 \pp d b> | r4 <fis2 cis a> |
		r4 <fis2 d b> | r4 <fis2 cis a> |
		r4 <fis2 cis a> | r4 <fis2 d b> |
	\translator Staff=bass
	\stemUp
		r4 <b,2 g> | r4 <g'2 d b> | r4 <d2 a f>

		r4 <e2 \p c a> | r4 <e2 b g> |
		r4 <e2 b g d> | r4 <d2 a e c> |
		r4 <d2 a fis c> | r4 <f2 c a> |
		r4 <e2 c a> | r4 <e2 b g d> |
		r4 <d2 a e c> | r4 <d2 a fis c> |

	} \alternative { {
	\translator Staff=treble
	\stemUp		
		r4 <g2 e b> | r4 <fis2 cis a> |
		r4 <fis2 d b> | r4 <a2 e cis> |
		r4 <a2 fis cis a> |
		r4 <d,4 a> <g d b> |
		s2. | s2. |	
	}  {
	\translator Staff=treble
	\stemUp		
		r4 <g2 e b> | r4 <a2 f d a> |
		r4 <f2 c a> | r4 <a2 e c> |
		r4 <a2 f c a> |
		r4 <d,4 a> <g d b> |
		s2. | s2. |
	} }
}

bottom = \context Staff \notes\relative c {
	\property Staff.noVoltaBraces=##t
	\property Staff.voltaVisibility=##f
	\stemDown

	\repeat volta 2 {
		g2. | d2. |
		g2. | d2. |
		g2. | d2. |
		g2. | d2. |
		g2. | d2. |
		g2. | d2. |

		g2. | d2. |
		g2. | d2. |
		fis2. | b,2. |
		e2. | e2. | d2. |

		a2. | d2. |
		d2. | d2. |
		d2. | d2. |
		d2. | d2. |
		d2. | d2. |

	} \alternative { {
		e2. | fis2. |
		b,2. | e2. |
		e2. | < \context Voice = othervoice {r4 b' e} e,2. > |
		<g2. a,> |
		\stemUp
		<d2. a d,> |
	}  {
		\stemDown
		e2. | e2. |
		e2. | e2. |
		e2. | < \context Voice = othervoice {r4 b' e} e,2. > |
		\stemUp
		<g2. a,> | <d2. a d,> |
	} }
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
