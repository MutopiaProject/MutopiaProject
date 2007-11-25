\new Staff  {
	\time 6/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R2.*3 |
			a8. h16 c8 h a4 |
			f' e8 r4. |
			a,8. h16 c8 h a4 |
			f'8. e16 d8 c4 e8~ |
			e16 f d4 e r8 |
			r4. r8 r e |
			a,4 d8 d cis4 |
			f8.\melisma e16\melismaEnd d8 r4. |
			r8 r d g,4 c8 |
			c h4 e8. f16 g8 |
			h,4 c e8.[ d16] |
			c4 r8 r4. |
			R2. |
			e8. f16 e8 e e4 |
			d8. e16 d8 d d4 |
			c8. d16 e8 a,4 gis8~ |
			gis a4 h r8 |
			r4. r8 r e, |
			f8. g16\melisma f8\melismaEnd f fis4 |
			g8. a16\melisma g8\melismaEnd g gis4 |
			a8. h16 c8 d4.~ |
			d8.[\melisma e16 f8] e4\melismaEnd a,8~ |
			a c8.[ h16] a4 r8 |
			r4. r8 r a |
			b8. c16\melisma b8\melismaEnd b h4 |
			c8. d16\melisma c8\melismaEnd c cis4 |
			d8. e16 f8 e4.\trill\melisma |
			d\trill c\trill |
			b8.[ gis16]\melismaEnd a4 c8.[ h16] |
			a4 h8 e,4 e'8~ |
			e c8.[ h16] a4 r8 |
			R2. |
			r4. r8 r \bar "||" c8 |
			d8. e16 c8 d e4 |
			f e8 d c4 |
			h8.[ a16] g8 r4. |
			r8 r d' e8. f16 d8 |
			e fis4 g e8 |
			d4 c h8.[ a16] |
			g4 r8 r4. |
			R2. |
			r4. r8 r d' |
			cis8. d16 e8 a, e'4 |
			f d8 c b4 |
			a4.~ a |
			a r |
			r8 r d es8. f16 es8 |
			es d4 g f8 |
			es4 d f8.[ e16] |
			d4 r8 r4. |
			r8 r e f8. g16 f8 |
			f e4 dis e8 |
			a,4 e' dis |
			e r8 r4. |
			r8 r g f4 e8~ |
			e g8.[ fis16] e4 r8 |
		}

	\bar "|."
	}

}
