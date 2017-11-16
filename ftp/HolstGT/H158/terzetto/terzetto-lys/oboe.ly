\version "2.18.2"
\language "deutsch"

oboeI = \new Staff \with {
	instrumentName = #"Oboe"
	midiInstrument = #"oboe"
} \relative a' {
	\override DynamicTextSpanner.style = #'none

	\clef treble
	\key as \major
	\numericTimeSignature
	\time 4/4

	\partial 4
	% no idea why that is needed
	\set Score.currentBarNumber = #2

	\tempo "Allegretto"
	r4 |
	R1 |
	R1 |
	R1 |
	R1 |
	c4(_\p des8 es c2~ |
	c8) c( des es c4. b16 as) |
	\tuplet 3/2 { c8( des es } c4. b16 as c4) |
	g1~ |
	g8 r r4 g4~ g8 r |
	r4 c2(^\markup\italic{poco cresc.} c4~ |
	c des8 es c4. b16_\mf as) |
	\tuplet 3/2 { c8( des es } c b16 as c4.) des8( |
	es4. c8 des4.) r8 |
	es4.( c8 des2~ |
	des8) r as'4(_\dim g f |
	es des c b | \time 2/4
	as ges) | \time 4/4 \mark \default

	f8_\p( ges16 as f8 es16 des f4.) ges16( as |
	f8 es16 des f4~ f) r8 des'8( |
	c8 f, ges[ des'] c f) ges[( des]) |
	f( des) ges[( des]) f4( ges8 des) |
	f4(_\cresc ges8 des) f4( ges) |
	as8( ges f des) as'4(_\f ges |
	f es) as,( ges |
	f es) des2~_\dim |
	des8 r r4 es2(_\p |
	des8) r r4 r2 | \mark \default

	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	\tuplet 3/2 { f8(_\p c' f, } es4) c4.( d8) |
	es( f d4.) c8(\noBeam d es |
	f g as[) c]~( c as16 c) as'8( g) |
	f2~ f4 r4 |
	r8 es\noBeam(_\cresc b' es,) des2~ |
	des4. r8 \tuplet 3/2 {es( b' es,) } des4~ |
	des4._\mf des8( c4._\dim b8) |
	as2~\> as8\! r r4 |

	\tempo "Andante"
	as'4--_\pp ges-- as-- c,--~ |
	c des-- es~\fermata es~ |
	es des-- c-- b-- |
	as'-- g-- as2-- |

	\tempo "Allegretto"
	R1 |

	\tempo "Andante"
	as,4-- ges-- as-- c,--~ |
	c des-- es2--~ |

	\tempo "Allegretto"
	es4~ es8 r r2 |
	r2 \tempo "Andante" g2 |

	f es |
	f2.~\> f8\! r | \mark \default

	\tempo "Allegretto"
	\tuplet 3/2 { f(_\mf c' f, } es4) c4.( d8) |
	es( f d4.) h8(\noBeam c d |
	es f g[) b](~ b g16 b) f'4~ |
	f1( |
	e8) r r4 r2 |
	R1 |

	r2 \tempo "Agitato" es,_\f |
	as4. es16 as g'2->~( |
	g4 f) g->( f) |
	f( c) f( c) |
	\tuplet 3/2 4 { r8 f( b, as f as) } b8[\> f'] b, as |
	\tuplet 3/2 { b(_\dim f' b,~ } b4) \tuplet 3/2 { b8( f' b,~ } b4~) |
	b8 c( f b, c f~ f) b,( |
	c f~ f2.~ |
	f8 b,) c4_\p f2~\> |
	f4~ f8\! r r2 |

	\tempo "Tempo I"
	R1 |
	R1 |
	R1 |
	R1 |
	as,4(_\p b8 c as4 g8 f |
	as4.) g16( f as8 b16 c as4~ |
	as4.) b16( c as8 g16 f as4~ |
	as8 g16 f as4.) b16( c \tuplet 3/2 { as8 g f } |
	as4.) << { \oneVoice b16( c \tuplet 3/2 { as8 g f } as4~ |
	as8) g( as4.) g8( as4)~ |
	as1~ |
	as2. } \\ { s8 s2 | s2 s2_\> | s1_\pp | s2. } >> g4( |
	as2.) g4 |

	\tempo "Andante"
	des'2. c4-- |
	des-- es,-- as-- g-- |

	\tempo "Allegretto"
	f2~ f8 r r4 |
	R1 |

	r2 r4 f'8(_\p ges16 as |
	f8_\cresc es16 des f4~ f8) ges16( as f8 es16 des) |
	as'4(_\f ges as8) es( des4) |
	as4_\dim( ges8 f es4.) r8 |
	R1 |
	R1 |
	R1 |
	\tuplet 3/2 { es'8(_\p c' es, } des4) b4.( c8) |
	des8( es c2) b8(_\cresc c |
	des es f4) f, as8( f16 as) |
	es'4_\mf( des c b) |
	es( des) as2 |
	des4. as16 des as'4(-> g) |
	as(-> g) es(-> d) |
	f(_\dim b,) f'( b,) |
	f1 |
	r4 as8(_\p es'~ es4) as,8( es'~ |
	es)_\dim c( es as, c es~ es as,) |
	b4 c2._\pp \breathe |

	\tempo "Andante"
	f4-- es-- des-- c--~ |
	c b2( as8) r |

	\tempo "Allegretto"
	R1 |
	R1 |

	\tempo "Andante"
	as4--_\pp ges-- f-- es-- |
	des'-- c-- des2-- |

	\tempo "Allegretto"
	R1 |

	\tempo "Andante al fine"
	ges,2 f |
	es f~ |
	f~ f8_\markup{\italic sempre \dynamic pp} r c'( des16 es |
	c8 b16 as c4~ c8) b16( as c8 des16 es |
	c2) des8( es~ es des) |
	es( des \tuplet 3/2 { c b as) } b( c \tuplet 3/2 { des es c } |
	des16 as' des,8~ des2)_\markup\italic{poco cresc.}  des16( as' des,8~ |
	des8. as'16 des, as' des,8~ des8. as'16 des, as' des,8) |
	c8(_\mf des16 es c2) c8(_\markup\italic{dim. al fine} des16 es) |
	c4( des8 es~ es4) c4( |
	des es2) c8( des |
	es1)~ |
	es4 c4.(\> des8)\! r4 | \bar "|."
}

oboeII = \new Staff \with {
	instrumentName = #"Oboe"
	midiInstrument = #"oboe"
} \relative a'' {
	\override DynamicTextSpanner.style = #'none

	\clef treble
	\key as \major
	\numericTimeSignature
	\time 6/8

	\tempo "Un poco vivace"

	R2.*5 |
	as8\p r es b r g' |
	des r as as' es b |
	f( g as g4 f8) |
	f( g as g4 f8) |
	g( as g f4.) |
	des4.(\cresc es |
	f g |
	as) es'8(\f b f) |
	as4. es'4.->~ | \mark \default

	es8 r r es4.-- |
	b-- f--~ |
	f es'8\p^"stacc." r b |
	f r d' as r es |
	es' b f c( d es) |
	d2. |
	c8( d es f g as |
	b c d es f g) |
	f2.~ | \time 9/8
	f8 r r r4. des8( as es~ | \time 6/8
	es[ f g as b c] |
	des2.) |
	es8[(\cresc f g as b c] |
	des2.) |
	as,8(\f b c b4.~ |
	b4 as8) b( c b) | \mark \default

	as2.~\p |
	as |
	as8( b c b4.~ |
	b4) c8( b as b |
	c4.) c8(\cresc des es |
	des c des es c as) |
	es'( c as) es'( c as) |
	es'( c as) es'( c as) |
	es'( c as) es'( c as) |
	R2. |
	r4. b8\ff( g es) |
	b'( g es) b'( g es) |
	R2.
	r4. des8( f as) |
	des,(\dim f as) des,( f as) | \mark \default

	des,( f as) r4. |
	R2. |
	des,8(\mf f as) r4. |
	R2. |
	R2. |
	\set Staff.timeSignatureFraction = 2/4
	\scaleDurations 3/2 {
	c8(^\scaleNote\p as~ as c |
	g4) c8( des |
	es des) c( as~ |
	as c) \tuplet 3/2 { es,( g c, } | }
	\unset Staff.timeSignatureFraction

	es g c, es g c,) |
	R2. |
	R2. |
	R2. |
	es8(^\mf^\> g c, es g c,)\! |
	R2. |
	R2. |
	r4. es'~ |
	es2.~ | \bar "||" \key des \major

	\set Staff.timeSignatureFraction = 2/4
	\scaleDurations 3/2 {
	es8\p( c4 es8 |
	b4) es8( f |
	ges f) es( c~ |
	c as' es4~ |
	es4. des8 |
	c b as4) |
	es'8(\pp c4 es8 |
	b4) es8( f |
	ges f) es( c~ |
	c as' es4~ |
	es4. des8 |
	c b as4) | \mark \default
	b8( c des4~ |
	des8[) es( des c]) |
	b[( c des es]) |
	f8( ges4 f8 |
	es4.) f8( |
	ges[ as ges f]) |
	es8( c4 es8 |
	b4) es8( f |
	ges f) es( c~ |
	c as' es4~ |
	es4.) des8( |
	c b as4) |
	h8(^"Solo" c des4~ |
	des8[) es( des c]) |
	b[( c des es]) |
	f( ges4 f8 |
	es4.) f8( |
	ges[ as ges f]) |
	es( c4 es8 |
	b4) es8( f |
	ges f) es( c~ |
	c as' es4~ |
	es4.) des8( | \bar "||" \mark \default }
	\unset Staff.timeSignatureFraction

	\tempo "Tempo I"
	\tuplet 2/3 { c b } as4.~ |
	as2.)~ |
	as8 r r r4. |
	R2. |
	R2. |
	r4. f'8\p^"stacc." r c |
	g r es' b r f |
	f' c g d( e f) | \bar "||" \key as \major

	e2. |
	d8( e f e f e) |
	d2. |
	d8( e f e4 d8) |
	e8( f e d4.) |
	b'8(\cresc c d c4 b8) |
	des,!8( es f e4.) |
	f4. b |
	as des8.(\f es16 des c |
	des8) r r r4. |
	R2. |
	R2. |
	R2. |
	R2. | \mark \default

	es8^"stacc."\p r b f r des' |
	as r es es' b f |
	c( des es f g as |
	b c des es f g) |
	f2.~ | \time 9/8
	f8 r r r4. des8( as es~ | \time 6/8
	es[ f g as b c] |
	des2.) |
	es8[(\cresc f g as b c] |
	des2.) |
	as,8(\f b c b4.~ |
	b4 as8) b( c b) |
	as2.\p~ |
	as |
	as8( b c b4.~ |
	b4) c8( b as b | \mark \default

	c4.) c8(\cresc des es |
	des c des es c as) |
	es'( c as) es'( c as) |
	es'(\f c as) es'( c as) |
	es'( c as) es'( c as) |
	R2. |
	r4. b8(\ff g es) |
	b'( g es) b'( g es) |
	R2. |
	r4. des8( f as) |
	des,(\dim f as) des,( f as) |
	des,( f as) r4. |
	R2.*3 | \bar "||" \mark \default

	R2.*5 | \bar "||" \tempo "Meno mosso"
	R2.*5 |
	r4. c8( es as |
	b4 as8 g f g |
	as g f es des c |
	b4 c8 des c b |
	c4.) f8( es des |
	es g b c4.~ |
	c8) r r es,(\pp c es | \mark \default

	b4)
	b8 b( c des) |
	es( c es b c des |
	c b as b4.) |
	es8( c es b4) b8 |
	b( c des) c( des es) |
	f( g f es des c |
	b) r as( g f g) |
	as4( b8 c des es |
	des4 es8 f es des |
	c) r as'( b as g |
	f es des c b as |
	g4.) r |
	R2. |
	R2. | \mark \default

	\tempo "Tempo I"
	R2. |
	R2. |
	\tuplet 4/6 4. { c,16\f( des es f g as b c |
	des es f g } as8)_"stacc." r es |
	b r ges' des r as |
	as' r es b r ges' |
	des r as as' r es |
	b r ges' des r as |
	r f' c g r r |
	es' b f r4. |
	R2. |
	R2. |
	R2. | \mark \default

	\set Staff.timeSignatureFraction = 2/4
	\scaleDurations 3/2 {
	c'8\p( as~ as c |
	g4) c8( des |
	es des) c( as~ |
	as as' es4~ |
	es2)~ | }
	\unset Staff.timeSignatureFraction
	es8 as\mf( c, es as c, |
	es as c, es\dim as c, |
	es as c, es as c,) |
	as( c es, as\> c es, |
	as c es,) es( as c,) |
	r\p es( as c,) r r | \bar "||" \time 2/4
	es8( as c,) es( |
	as c,) es( as |
	c es as) c,( |
	es4 as8) r |
	c2~\fermata\pp |
	c8 r r4 | \bar "|."
}
