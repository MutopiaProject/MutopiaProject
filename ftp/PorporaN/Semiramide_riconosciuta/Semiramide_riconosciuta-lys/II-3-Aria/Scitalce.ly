\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Scitalce}
	\set Staff.midiInstrument="oboe"
	\key es \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*8 |
			r2 b4 b8. b16 |
			b4 c8.\prall[ \times 2/3 {b32 c d]} es4 b8. b16 |
			b4 c8.\prall[ \times 2/3 {b32 c d]} es4 es, |
			r b' c es |
			b es c8 es b es |
			\appoggiatura b4 as2 g4 r8 b |
			es b r b es b es g |
			f b, r f' f f, f f |
			g16[ f] g8 r g' g g, g g |
			a16[ g] a8 r4 f'2 |
			g,\prall a\prall |
			b\prall\melisma c\prall |
			d16[ b a b] c[ b a b] g[ b a b] c[ b a b] |
			f[ b a b c b a b] es,[ b' a b c b a b] |
			d,[ f es d es f g a] b[ f g a b c d es] |
			f[ b, c d es f g a] b8\melismaEnd f d b |
			es,2 c'\prall |
			d8 g f16[ es] d[ c] b4 c\prall |
			d8 g f b d,4 c\prall |
			b r r2 |
			R1*2 |
			r2 b4 b8. b16 |
			b4 c8.[ \times 2/3 {b32 c d]} es4 es,8. es16 |
			es8.[\melisma \times 2/3 {d32 es f]} g8\melismaEnd a b4 b, |
			r b' c8 es b es |
			f4 b, es2 |
			c8 es b es c4\prall b8 es |
			\appoggiatura b4 as2 g4 r8 b |
			c as d b es es, r b' |
			c as d b es4 r8 g, |
			as2 b\prall |
			c\prall\melisma d\prall |
			es8[ d16 es] f[ es d es] c[ es d es] f[ es d es] |
			b[ es d es f es d es] as,[ es' d es f es d es] |
			g,[ b as g as b c d ] es8\melismaEnd d16[ c] b8 as |
			g4 f\prall es r8 es' |
			c2\prall b4 r8 es |
			as,2\prall g4 r8 b |
			c as d b es es, r b' |
			c as d b es g es b |
			c es c g as4 b |
			c8 es c g as4 b |
			g'8 f16[ es] d[ c] b[ as] g4 f\prall |
			es r r2 |
			R1*3 |
			r4 \bar "||" r8 g c4 es |
			d g, c8.\prall[ h16] c4 |
			c fis,8. fis16 fis4 c' |
			h8.[ a16] g4 c2 |
			h16[ a] g8 r4 r r8 g |
			g a16 b c8 b a16[ g] a8 r a |
			a b16 c d8 c h16[ a] h8 g'4 |
			as, f' g, es' |
			f,2\fermata r8 f' es d16[ c] |
			g'4 g, as8 c as es |
			f4 g c, r\fermata 
		}

	\bar "|."
	}

}
