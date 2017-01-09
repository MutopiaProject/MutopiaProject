\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Scitale}
	\set Staff.midiInstrument="oboe"
	\key es \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp		
			\autoBeamOff
			R1*14 |
			r2 b |
			es d16[ c b8] b4\prall |
			b es d16[ c] b8 r4\fermata |
			b,2 es |
			d16[ c b8] b4 b es |
			d16[ c] b8 r4\fermata b'8 b4\melisma es8\melismaEnd |
			c4\prall b b8 b4 es8 |
			c4\prall b es2 |
			es es~ |
			es8.[ d16] es8. d16 es2~ |
			es8[ c] as g f8.\prall[ es16] f4 |
			f' as, g r |
			f'8  b,4 as8 g16[ f] g8 r4 |
			b b, c c' |
			c c c16[\melisma d] es4.~ |
			es16[ d c b a g f es] d8.\prall[ c16]\melismaEnd b4 |
			f'' as, \appoggiatura as8 g4. g'8 |
			f16[ es d8] c16[ b as8] \appoggiatura as g2\melisma |
			g'16[ es d c] h[ c h c] g'[ f] es4. |
			f16[ d c b] a[ b a b] f'[ es] d4. |
			es16[ c b a] es'[ c b a] d[ b c b] c[ b c b] |
			es16[ c b a] es'[ c b a] b4\prall c\prall |
			d\prall es\prall f8.\prall\melismaEnd es32[ f] g8 b, |
			f8 c'4.\prall b'8 a16[ g] f[ es] d[ c] |
			b8 c4.\prall b4 r |
			R1*3 |
			r4 f'2 a,4 |
			b b b c16[ d es8] |
			d16[ c b8] b4 b es |
			d16[ c b8] b4 g es |
			d16[ c b8] b4 b es |
			d16[ c] b8 r4 es'2 |
			f g16[ f] es8 r4 |
			es,2 f\prall |
			g16[ f] es8 r4 es' es |
			es2~\melisma es8.[ d16] es8.[ d16] |
			es8.[ d16]\melismaEnd es8 g f b,4 as8 |
			g16[ f] es8 r4 es g8. a16 |
			b2 es4 es,8. es'16 |
			d16[ c] b8 r4 as\melisma as'~ |
			as16[ g f es d c]\melismaEnd b[ as] g4 es' |
			b,2 f'' |
			g16[\melisma f] es4.\melismaEnd es,2 |
			b d'\prall |
			es4 es, r8 b'[ c] des |
			c2 d\prall |
			es\prall f\prall |
			g16[\melisma es d c] h8[ c] g'16[ es d c] g'[ es d c] |
			f[ d c b] a8[ b] f'16[ d c b] f'[ d c b] |
			es[ c b as] es'[ c b as] d[ b as g] d'[ b as g] |
			c[ as g f] c'[ as g f] b[ es, f g as b c d] |
			es[ es, f g] as[ b c d]\melismaEnd es[ g f es] d[ c] b[ as] |
			g4 f\prall es es'~ |
			es a, b2\fermata |
			b, r8 es' es4~ |
			es es,8.[ f16] f4.\prall es8 |
			es4 r r2 |
			R1*6 \bar"||"
			c'4 es d g,8. fis16 |
			g4 d' c f,8.[ e16] |
			f4 c' h8.[\prall as16] g4 |
			c,8[ d] es f g4.\prall g8 |
			c,8[ d] es[ f] g4.\prall\melisma f8\melismaEnd |
			g4 r\fermata
			\time 3/8
			es'16.\prall[ d32 es8] fis |
			\appoggiatura fis g4 d8 |
			d16.[ c32 d8] e |
			f4 c8 |
			c16.[ h32 c8] d |
			es[ d] es |
			\appoggiatura f es8[ d] es |
			\appoggiatura f es8[ d] es |
			\appoggiatura f es8[ d] c |
			\appoggiatura c8 h4 d8 |
			\appoggiatura d8 c4 es8 |
			\appoggiatura es8 d4 g8 |
			es[ d] fis, |
			\appoggiatura fis g4. |
			es'8[ d] c |
			g' g, r |
			es'[ d] c |
			g' g, es' |
			c4\fermata h16[ c] |
			d4 r8 |
		}

	\bar "|."
	}

}
