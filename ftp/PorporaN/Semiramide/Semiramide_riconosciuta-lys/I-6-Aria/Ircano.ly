\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Ircano}
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef "G_8"
	\relative c'' {
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R4.*21 |
			r8 r g |
			e[ c] g |
			e c g'' |
			e[ c] g |
			e[ c] c' |
			d16.\prall[ c32 d16 e] f32[ e d16] |
			e32[ f g16] c,8. e16\melisma |
			d16.[ c32 d16 e] f32[ e d16] |
			e16[ g f e d c] |
			h8\melismaEnd c4\prall |
			d8 \grace { e16[ f]} g4~ |
			g8 f16[ e] d[ c] |
			h8 c4\prall |
			d16 g[ f e d c] |
			h[\melisma c32 d] c8\melismaEnd fis, |
			g4 r8 |
			a' a g |
			fis32[\melisma g a16] g8[ f] |
			e32[ f g16] f8[ e] |
			dis32[ e fis16] e8[ d] |
			cis32[ d e16] d8[ c]~ |
			c\melismaEnd fis4 |
			g8 fis16[ e] d[c] |
			\times 2/3 {h[\melisma a g]} \times 2/3 {d'[ c h]} \times 2/3 {e[ d c]} |
			\times 2/3 {h[ a g]} \times 2/3 {d'[ c h]} \times 2/3 {e[ d c]} |
			g'16. g,32 a4\prall\melismaEnd |
			g8 r r |
			R4.*6 |
			r8 r d' |
			h[ g] g' |
			e c d |
			h[ g] g' |
			e[ c] e |
			d16.\prall[ c32 d16 e] f32[ e d16] |
			e32[\melisma f g16] c,8.\melismaEnd e16 |
			d16.\prall[\melisma c32 d16 e] f32[ e d16] |
			e32[ f g16] c,8\melismaEnd b |
			\appoggiatura b a4 f'8~ |
			f e16[ d] c[ h] |
			\appoggiatura h8 c4 a'8~ |
			a8 g16[ f] e[ d] |
			e g[ f e d c] |
			h8 c4\prall |
			g8 r f'~ |
			f e d |
			e\melisma \times 2/3 {r16 g[ f]} \times 2/3 {e[ d c]} |
			\times 2/3 {d [ e f ]} \times 2/3 {g [ f e ]} \times 2/3 {d [ c h ]} |
			\times 2/3 {c [ e d ]} \times 2/3 {c [ e d ]} \times 2/3 {c [ h a ]} |
			\times 2/3 {h [ c d ]} \times 2/3 {e [ d c ]} \times 2/3 {h [ a g ]} |
			\times 2/3 {a [ c h ]} \times 2/3 {a [ c h ]} \times 2/3 {a [ g f ]} |
			\times 2/3 {g [ a h ]} \times 2/3 {c [ e d ]} \times 2/3 {c [ d e ]} |
			f8 \appoggiatura e d4 |
			\times 2/3 {e16 [ d c ]} \times 2/3 {g' [ f e ]} \times 2/3 {a [ g f ]} |
			\times 2/3 {e [ d c ]} \times 2/3 {g' [ f e ]} \times 2/3 {a [ g f ]} |
			c'16.[ c,32] d4\prall\melismaEnd |
			c8 r r |
			a' a g |
			fis32[\melisma g a16] g8\melismaEnd f |
			e16[ f32 g] f8[ e] |
			dis32[\melisma e fis16] e8\melismaEnd d |
			cis32[\melisma d e16] d8[ c] |
			h\melismaEnd c fis, |
			g4.\melisma |
			d'\prall\fermata\melismaEnd |
			c8 r r |
			R4.*8 |
			r8 r \bar "||" e |
			c[ a] gis |
			a e e' |
			c[ a] gis |
			a r e' |
			d16 c h8 e |
			a, r f' |
			d16 c h8 e |
			a, a'4~ |
			a8 f e |
			dis16[\melisma e32 fis] e8[ d] |
			cis16[ d32 e] d8[ c] |
			h16[ c32 d] c8[ h] |
			a16[ b32 c] b8[ a] |
			gis\melismaEnd a r |
			dis4.\prall\melisma |
			e8\melismaEnd e e |
			e4.~ |
			e4\melisma d32[ c h a] |
			g8 fis4\prall\melismaEnd |
			e4\fermata \bar "||" r8 |
			R4.*10 |
			r8 r g' |
		}

	\bar "|."
	}

}
