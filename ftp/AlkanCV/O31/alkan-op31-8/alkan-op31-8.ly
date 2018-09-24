\version "2.18.2"
\language "english"

\header {
	title = "Chanson de la Folle au Bord de la Mer"
	subtitle = "Gesang der Wahusinningen am Meeresgestade"
	composer = "Charles-Valentin Alkan"
	mutopiacomposer = "AlkanCV"
	mutopiainstrument = "piano"
	source = "A.M. Schlesinger, 1847"
	style = "Romantic"
	license = "Creative Commons Attribution-ShareAlike 4.0"
	maintainer = "Anonymous"
	opus = "Op. 31, No. 8"
	footer = "Mutopia-2018/09/24-2232"
	copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2018 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
	tagline = ##f
}

\score {
  <<
	% upper stave
	\new Staff {
		\clef "treble^8" \key ef \minor \time 6/8

		% upper stave, bar 1
		r2.^\markup { "Lento"} \bar ".|:"
		r8 r\p bf' ef''4.~ |
		ef''4 r8 r4 r8 |
		r8 r bf' ef''4.~ \bar "||"
		ef''4_\markup { \italic \small "Pedale sempre"}^\markup { "Tristo"} ef''8 af''16 cf''' af''8 g''16 f''16 |

		% upper stave, bar 6
		g''16 bf'' g''8 f''16 g'' af'' cf''' af''8 cf'''16 df'''16 |
		ef''' bf'' ef'''4 ef'''16 af''' ef'''8 df'''16 cf''' |
		df''' gf''' df'''8 cf'''16 bf'' cf''' ef''' cf'''8 bf''16 af'' |
		bf''8 ef''4 af''16 cf''' af''8 g''16 f''16 |

		% upper stave bar 10
		g''16 bf'' g''8 f''16 g'' af'' cf''' af''8 cf'''16 df'''16 |
		ef''' bf'' ef'''4 ef'''16 af''' ef'''8 df'''16 cf''' |
		df''' gf''' df'''8 cf'''16 bf'' cf''' ef''' cf''' af'' bf'' g'' |
		af''2. \bar ":|."

		% upper stave bar 14
		r8 r bf' ef''4.~ |
		ef''4 r8 r4 r8 |
		r8 r bf' ef''4.~ \bar "||"
		ef''8 r8 ef''8 af''16 cf''' af''8 g''16 f''16 |
		g'' bf'' df'''8 ef'''16 f''' g'' bf'' df'''8 bf''16 g'' |

		% upper stave, bar 19
		af'' c''' ef'''8 f'''16 g''' af''' c''' af'''8 g'''16 f''' |
		g''' bf''' df'''8 c'''16 bf'' c''' ef''' af''8 g''16 f'' |
		g'' bf'' df'''8 bf''16 g'' af'' c''' af''8 g''16 f''16 |
		g'' bf'' df'''8 ef'''16 f''' g'' bf'' df'''8 bf''16 g'' |

		% upper stave, bar 23
		af'' c''' ef'''8 f'''16 g''' af''' c''' af'''8 g'''16 f''' |
		g''' bf''' df'''8 c'''16 bf'' c''' ef''' af'''8 g'''16 f''' |
		g''' bf''' df'''8 c'''16 bf''  af''' c''' af'''8 g'''16 f''' |

		% upper stave, bar 26
		g''' bf''' bf'' ef''' d''' f''' g''' bf''' bf'' ef''' d''' f''' |
		g''' bf''' bf'' ef''' d''' f''' g''' bf''' bf'' ef''' d''' f''' |
		g''' bf''' bf'' ef''' bf'' ef''' bf'' ef''' bf'' ef''' bf'' ef''' |

		% upper stave, bar 29
		\tuplet 4/3 {bf''8( ef''') bf''( ef''')} \tuplet 4/3 { bf''( ef''') bf''( ef''')} |
		bf''8\>( ef''') bf''( ef''') bf''( ef'''~) |
		ef'''4 bf''8( ef'''4.)\!\fermata~ \bar "||"
		ef'''4 ef''8( af''16 cf''' af''8 g''16 f''16 |
		g'' bf'' g''8) r8 r4. |

		% upper stave, bar 34
		r4. ef'''16( ff''' ef'''8 df'''16 cf''' |
		df''' ff''' df'''8) r8 r4.
		r4 ef''8( af''16 cf''' af''8 g''16 f''16 |
		g'' bf'' g''8) r8 r4. |
		r4. ef'''16( af''' ef'''8 df'''16 cf''' |

		% upper stave, bar 39
		df'''_\markup{\small \italic "dim"} ff''' df'''8) r8 r4. \bar "||"
		r2. |
		r8 r bf'\pp ef''4.~ |
		ef''4 r8 r4 r8 |
		r8 r bf' ef''4.~ |
		ef''4^\markup{\small \italic "rall. poco."} r8 r4 r8 |
		r4 ef''8( ef''4.\ppp)\fermata \bar ".."
	}


	% lower stave
    \new Staff {
		\clef "bass_8" \key ef \minor \dynamicUp

		% lower stave, bar 1
		<ef, cf, af,, ef,,>4^\markup { \italic \small "Ped. sostenuto"}\< <ef, cf, af,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8\! |
		<ef, bf,, g,, ef,,>2. |
		<ef, cf, af,, ef,,>4\< <ef, cf, af,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8\! |
		<ef, bf,, g,, ef,,>2. |
		<ef, cf, af,, ef,,>4^\markup { \italic \small "molto sostenuto"} <ef, cf, af,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 |

		% lower stave, bar 6
		<ef, bf,, g,, ef,,>4 <ef, bf,, g,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 |
		<ef, bf,, g,, ef,,>4 <ef, bf,, g,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 |
		<ef, bf,, g,, ef,,>4 <ef, bf,, g,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 |
		<ef, bf,, g,, ef,,>4 <ef, bf,, g,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 |

		% lowerstave, bar 10
		<ef, df, bf,, ef,,>4 <ef, df, bf,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 |
		<ef, bf,, g,, ef,,>4 <ef, bf,, g,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 |
		<ef, bf,, g,, ef,,>4 <ef, bf,, g,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, bf,, g,, ef,,>8 |
		<ef, cf, af,, ef,,>4\< <ef, cf, af,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8\! \bar ":|."

		% lower stave, bar 14
		<ef, bf,, g,, ef,,>2. |
		<ef, cf, af,, ef,,>4\< <ef, cf, af,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8\! |
		<ef, bf,, g,, ef,,>2. \bar "||"
		<ef, c, af,, ef,,>4^\markup { \italic \small "piu forte ed animato poco a poco"} <ef, c, af,, ef,,>8 <ef, c, af,, ef,,>4 <ef, c, af,, ef,,>8 |
		<ef, df, bf,, ef,,>4 <ef, df, bf,, ef,,>8 <ef, df, bf,, ef,,>4 <ef, df, bf,, ef,,>8 |

		% lower stave, bar 19
		<ef, c, af,, ef,,>4 <ef, c, af,, ef,,>8 <ef, c, af,, ef,,>4 <ef, c, af,, ef,,>8 |
		<ef, df, bf,, ef,,>4 <ef, df, bf,, ef,,>8 <ef, c, af,, ef,,>4 <ef, c, af,, ef,,>8 |
		<ef, df, bf,, ef,,>4 <ef, df, bf,, ef,,>8 <ef, c, af,, ef,,>4 <ef, c, af,, ef,,>8 |
		<ef, df, bf,, ef,,>4 <ef, df, bf,, ef,,>8 <ef, df, bf,, ef,,>4 <ef, df, bf,, ef,,>8 |

		% lower stave, bar 23
		<ef, c, af,, ef,,>4 <ef, c, af,, ef,,>8 <ef, c, af,, ef,,>4 <ef, c, af,, ef,,>8 |
		<ef, df, bf,, ef,,>4 <ef, df, bf,, ef,,>8 <ef, c, af,, ef,,>4 <ef, c, af,, ef,,>8 |
		<ef, df, bf,, ef,,>4^\markup { \small \italic "cres."} <ef, df, bf,, ef,,>8 <ef, c, af,, ef,,>4 <ef, c, af,, ef,,>8 |

		% lower stave, bar 26
		<ef, bf,, g,, ef,,>4^\markup { \small \italic "cres."} <ef, cf, af,, ef,,>8 <ef, bf,, g,, ef,,>4 <ef, cf, af,, ef,,>8 |
		<ef, bf,, g,, ef,,>4^\markup { \small \italic "augmento."} <ef, cf, af,, ef,,>8 <ef, bf,, g,, ef,,>4 <ef, cf, g,, ef,,>8 |
		<ef, bf,, g,, ef,,>4^\markup { \small \italic "sempre Ped."} <ef, bf,, g,, ef,,>8 <ef, bf,, g,, ef,,>4^\markup { \small \italic "diminuendo e molto rallentando"} <ef, bf,, g,, ef,,>8 |

		% lower stave, bar 29
		<ef, bf,, g,, ef,,>2.~ |
		<ef, bf,, g,, ef,,>2.~ |
		<ef, bf,, g,, ef,,>2. \bar "||"
		<ef, cf, af,, ef,,>4\pp <ef, cf, af,, ef,,>8^\markup{\small \italic "a tempo."} <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 |
		<ef, bf,, g,, ef,,>4 <ef, bf,, g,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 |

		% lower stave, bar 34
		<ef, bf,, g,, ef,,>4 <ef, bf,, g,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 |
		<ef, bf,, g,, ef,,>4 <ef, bf,, g,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 |
		<ef, bf,, g,, ef,,>4 <ef, bf,, g,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 |
		<ef, df, bf,, ef,,>4 <ef, df, bf,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 |
		<ef, bf,, g,, ef,,>4 <ef, bf,, g,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 |

		% lower stave, bar 39
		<ef, bf,, g,, ef,,>4 <ef, bf,, g,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8 \bar "||"
		<ef, cf, af,, ef,,>4\< <ef, cf, af,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8\! |
		<ef, bf,, g,, ef,,>2. |
		<ef, cf, af,, ef,,>4\< <ef, cf, af,, ef,,>8 <ef, cf, af,, ef,,>4 <ef, cf, af,, ef,,>8\! |
		<ef, bf,, g,, ef,,>2. |
		<<
			\dynamicDown
			{<ef cf af,>4\< <ef cf af,>8 <ef cf af,>4 <ef cf af,>8\! |
			<ef cf af,>2.\fermata} \\
			{<ef, cf, af,,>4 <ef, cf, af,,>8 <ef, cf, af,,>4 <ef, cf, af,,>8 |
			<ef, cf, af,,>2.\fermata }
		>> \bar".."
	}
    >>
\layout { }
\midi {
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
