\new Staff  {
	\time 12/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key a \major
	\clef treble
	\relative c'' {
		\partial 8 a8 |
		e'8. fis16 e8 e4 e8 e cis d e4 e8 |
		fis4.~ fis16 gis a gis fis8 e4. d\prall |
		cis8 e d cis h a gis4. a4\prall gis16 a |
		h8 e d cis h a gis4. a4\prall gis16 a |
		e4. e' \grace{fis16[ gis]} a8 gis fis fis e dis |
		\appoggiatura dis8 e4. fis \grace{fis16[ gis]} a8 gis fis fis e dis |
		<e h e,>4. fis16 e d e fis8 \appoggiatura fis8 e4. d16 cis h cis d8 |
		\appoggiatura d cis4. fis16 e d e fis8 \appoggiatura fis8 e4. d16 cis h cis d8 |
		cis8 h cis d cis h a h4~\prall h a16 h |
		cis8 a' gis fis e d cis4. h\prall |
		a r4 r8 e' fis e e4 e8 |
		e cis d e4 e8 fis4.~ fis16 gis a gis fis8 |
		e4. d\prall cis8 e d cis h a |
		gis4. a\prall h8 e d cis h a |
		gis4. a\prall h cis16 d e d cis8 |
		\appoggiatura cis h4. cis16 d e d cis8 \appoggiatura cis h4. r8 r\fermata h |
		h gis a h4 e8 cis4.\prall h4 h8 |
		h gis a h4 e8 cis4.\prall h4 e8 |
		a, gis a fis'4.~ \grace {fis16[ gis]} a8 gis fis fis e dis |
		\appoggiatura dis e4. fis~ \grace {fis16[ gis]} a8 gis fis fis e dis |
		\appoggiatura dis e4. cis16 h a h cis8 \appoggiatura cis8 h4. a16 gis fis gis a8 |
		\appoggiatura a16 gis4. cis16 h a h cis8 \appoggiatura cis h4. a16 gis fis gis a8 |
		gis8 e' dis cis h a gis4. fis |
		gis8 e' dis cis h a gis16 fis e4 dis'4.\prall |
		e8 gis h cis16 h a h cis8 \appoggiatura cis8 h4. a16 gis fis gis a8 |
		\appoggiatura a gis4. cis16 h a h cis8 \appoggiatura cis h4. a16 gis fis gis a8 |
		gis8 fis gis a gis fis e fis4~ fis e16 fis |
		e4. r8 r a e fis e e4 e8 |
		e cis d e4 e8 fis4.~ fis16 gis a gis fis8 |
		e4. d\prall cis8 e d cis h a |
		gis4. a h8 e d cis h a |
		gis4. a\prall h cis16 d e d cis8 |
		\appoggiatura cis8 h4. cis16 d e d cis8 \appoggiatura cis4 h2.\prall |
		r8 r e e4.~ e8 cis d e4 a8 |
		fis4.\prall e4 e8 e cis d e4 a8 |
		fis4.\prall e4 a8 \appoggiatura e4 d2. |
		cis4. fis~ \grace {fis16[ gis]} a8 gis fis fis e dis |
		\appoggiatura dis e4. fis~ \grace {fis16[ gis]} a8 gis fis fis e dis |
		e g fis e d cis d fis e d cis his |
		cis8 e d cis h ais h d cis h a gis |
		a4.\prall e'\prall a8 gis fis e4 d8 |
		cis4. h a fis'16 e d e fis8 |
		\appoggiatura fis e4. d16 cis h cis d8 \appoggiatura d cis4. fis16 e d e fis8 |
		\appoggiatura fis8 e4. d16 cis h cis d8 cis h cis d cis h |
		a4. h\prall cis8 a' gis fis e d |
		cis16 h a4 h4. a8 cis e fis16 e d e fis8 |
		\appoggiatura fis e4. d16 cis h cis d8 \appoggiatura d cis4. fis16 e d e fis8 |
		\appoggiatura fis e4. d16 cis h cis d8 cis a' gis fis e d |
		cis16 h a4 h4.\prall a \bar "||"
		\key a \minor
		\time 3/4
		\partial 4 r4 |
		e' c r8 r16 e |
		e4 e, r8 r16 e' |
		e4 d r8 r16 dis |
		e4 e, r8 r16 gis' |
		a4 c, r8 r16 a' |
		gis4 h, r8 r16 gis' |
		a4 c, r8 r16 a' |
		gis4 h, r8 r16 f' |
		e4 e, r8 r16 g' |
		a4 a, r8 r16 g' |
		fis4 fis, r8 r16 a' |
		h4 h, r8 r16 g' |
		g4 f r8 r16 a |
		d,4 e r8 r16 g |
		g4 f r8 r16 a |
		d,4 e r8 r16 g |
		a4 a, r8 r16 fis' |
		g4 a, r8 r16 fis' |
		g4 h, r8 r16 e |
		e4 e, r8 r16 e' |
		e4 e, fis' |
		g a, h |
		c r\fermata e |
		h8 a16 g a4 h |
		e, r r \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
