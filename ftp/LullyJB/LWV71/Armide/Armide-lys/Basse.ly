\version "2.16.0"
basse = {
	\relative c'{
	\clef bass
	\time 3/4
	\key f \major
		{
		R2.*3
		g8 f g f es d
		es4 d8 es d es
		c4 f f,
		bes8 a bes c bes a
		g2 g'4
		a8 g a g f e
		f e d a bes g
		a2~ a8 a
		d4 d,2
		g2 g4
		c2 c4
		d8 c d c bes a
		bes4 fis2
		g4 g' f
		es b c
		g8 fis g a bes bes
		c bes a g d4
		g8 fis g a bes g
		fis g fis e fis d
		g fis g a bes g
		c bes c8. d16 es8 c
		f g f es f d
		es d c bes a bes
		f' g f es d bes
		es d es f es d 
		c c f g a f
		bes es, f es f f,
		bes4 f' f
		f f f
		f8 es d c d bes
		a bes a g a f
		bes a bes c d d 
		c bes f' es f f,
		bes f' bes as g f
		es d es c b g
		c bes as g f d
		g d' g g es c
		f es d c g' g,
		g4 g' g
		g g g
		g8 f es d es c
		b c b a b g
		c b c d es es
		d c g' f g g,
		c b c d es c
		g' g, bes g d' es
		d c bes a bes g
		a4 a' a
		a a a
		a2.
		a8 g f e f d
		cis d cis b cis a
		d cis d e f f 
		e d a' g a a,
		d4 a' a
		a a a
		a8 g f e f d
		cis d cis b cis a
		d cis d e f f 
		e d a' g a a,
		d a' d c bes a
		g a bes g c bes
		a f c'8. d16 c8 bes
		a bes a g f d
		g f e d cis d
		a a' g f e cis
		d g, a b cis a
		d es d c b g
		c g' c d c bes
		a f bes a bes es,
		f es d c d bes
		a bes a g a f
		bes a bes c d d
		c bes f' es f f,
		bes4 d d
		d d d
		d8 c bes a bes g
		fis g fis e fis d
		g fis g a bes bes
		a g d' c d d,
		\once \override Voice.TextScript #'padding = #2.0
		g_\markup{On reprend le Prelude de la 3. Scene. Et sur la
		derniere notte du Prelude, l'on chante ce qui suit.} fis g a bes g
		c bes a bes a g
		d' c bes a bes g
		fis g fis e fis d
		g fis g a bes bes
		a g d' c d d,
		g2.
		}
	}
	}

