\new Staff  {
	\time 3/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 90 
	\set Staff.instrumentName="Soprano"
	\set Staff.midiInstrument="oboe"
	\key g \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			r8 h c \mark \markup { \musicglyph #"scripts.segno" } |
			d g, e'~ |
			e d4 |
			h8. a16[ g8] |
			R4. |
			r8 h c |
			d g, e'~ |
			e d4 |
			h16[\melisma a h c d e] |
			a,[g a h c d] |
			g,[ fis g a h c] |
			d[ e d e d e] |
			d8\melismaEnd c16[ h a8] |
			r8 c c |
			c[ h] h |
			r a g |
			fis[\melisma d g]~ |
			g16\melismaEnd a fis8. g16 |
			g8 h cis |
			d4.~ |
			d |
			r8 cis8. cis16 |
			d8.[ e16 fis8] |
			g e8. d16 |
			d4. |
			R4.*2 |
			r8 h h |
			h[ a] a |
			r g g |
			g[\melisma fis16 e fis g] |
			e16[ d e fis g a] |
			h[ a h c d e] |
			a,[ g a h c d] |
			g,4.~ |
			g8.[ a16 fis8]~ |
			fis16\melismaEnd g e8. d16 |
			d4. |
			r8 h' c |
			d g, e'~ |
			e d4 |
			h8. a16[ g8] |
			R4. |
			r8 h c |
			d g, e'~ |
			e d4 |
			h16[\melisma a h c d e] |
			a,[ g a h c d] |
			g,[ fis g a h c] |
			d[ e d e d e] |
			d8\melismaEnd c16[ h a8] |
			r c c |
			c[ h] h |
			r a g |
			fis d r |
			r d' h a4 g8 |
			d'8. c16[ h8] |
			a8[ fis16 e] d8 |
			r c' c |
			h16[\melisma a h c d e] |
			a,[ g a h c d] |
			g,[ fis g a h c] |
			fis,[ e fis g a h] |
			e,[ d e fis g a] |
			fis[ e fis g a h] |
			g[ fis g a h c] |
			d4.~ |
			d4\melismaEnd d8 |
			r c c |
			c8.[ d16 h8] |
			a16[ g] fis8. g16 |
			g8 g' g |
			g[ fis] fis |
			r e e |
			e[ d] d |
			r c c |
			c4.~\melisma |
			c~ |
			c16[ d h a h c] |
			a16[ g a h c d] |
			g,[fis g a h c] |
			d4. |
			c16[ h]\melismaEnd a8. g16 |
			g4. |
			r8 e' a |
			fis[ e16 d g8] |
			c,16[ h] a8. g16 |
			g4. |
			R4.*9 |
			r8\fermata \bar "||" e' dis |
			e h c~ |
			c h4 |
			g8. fis16[ e8] |
			R4.*3 |
			r8 e' a, |
			f'4.~\melisma |
			f16[ e d c h d] |
			e4.~ |
			e16[ d c h a c] |
			d8.[ e16 d c] |
			h[ a h c a h] |
			c[ h c d h c] |
			d[ c d e c d] |
			e8.\melismaEnd d16[ c h] |
			c[ d] h8. a16 |
			a8 d cis |
			d a h~ |
			h a4 |
			fis8 d r |
			R4.*2 |
			r8 fis' h, |
			g'4.~\melisma |
			g16[ fis e d cis e] |
			fis4.~ |
			fis16[ e d cis h d] |
			e8.[fis16 e d] |
			cis[ h cis d h cis] |
			d[ cis d e cis d] |
			e[ d e fis d e] |
			fis8.\melismaEnd e16[ d cis] |
			d[ e] cis8. h16 |
			h4. |
			R4.*4 |
			r8 h c \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
		}

	\bar "|."
	}

}
