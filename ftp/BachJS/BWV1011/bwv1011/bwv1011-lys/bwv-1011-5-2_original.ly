gavotteII =    \relative g {
    \set Staff.midiInstrument = "cello"
    \key c \minor 
    \time 4/4
    
	\repeat volta 2 {
		\partial 2 
	    \times 2/3 {g8 [( f g)] }
	    \times 2/3 {aes8 [( g f )]} | % 0
		g4 ~ 
		\times 2/3 {g8  [(f es)]}
		\times 2/3 {d8  [(es f)]}
		\times 2/3 {es8 [(d c)]} | % 1
		\times 2/3 {b8  [(c d)]} 
		\times 2/3 {g,8 [(b d)]} 
		\times 2/3 {g8  [(f g)]} 
		\times 2/3 {as8 [(g f)]} | % 2
		\times 2/3 {g8  [(f es)]} 
		\times 2/3 {d8  [(es f)]} 
		\times 2/3 {es8 [(d c)]} 
		\times 2/3 {b8  [(c d)]} | % 3
		c4 c,4  % 4 
	}
 	\repeat volta 2 {
		\times 2/3 {es'8 [(d es)]} 
		\times 2/3 {f8  [(es d)]} | % 0
		es4 ~
		\times 2/3 {es8 [(f g)]}
		\times 2/3 {as8 [(g f)]}
		\times 2/3 {g8  [(f es)]} | % 5
		\times 2/3 {d8  [(es f)]} 
		\times 2/3 {bes,8 [(d f)]} 
		\times 2/3 {c'8  [(b c)]} 
		\times 2/3 {d8  [(c b)]} | % 6
		\times 2/3 {c8  [(b as)]} 
		\times 2/3 {f'8 [(es d)]} 
		\times 2/3 {c8  [(b as)]}
		\times 2/3 {fis8 [(as b)]} | % 7
		<g as>4 g,4 
		\times 2/3 {g'8 [(f g)]} 
		\times 2/3 {as8 [(g f)]} | % 8
		g4 ~ 
		\times 2/3 {g8  [(f es)]} 
		\times 2/3 {d8  [(es f)]} 
		\times 2/3 {es8 [(d c)]} | % 9
		\times 2/3 {b8  [(c d)]} 
		\times 2/3 {g,8 [(b d)]} 
		\times 2/3 {g8  [(f g)]} 
		\times 2/3 {as8 [(g f)]} | % 10
		\times 2/3 {g8  [(f es)]} 
		\times 2/3 {d8  [(es f)]} 
		\times 2/3 {es8 [(d c)]} 
		\times 2/3 {b8  [(c d)]} | % 11
		\times 2/3 {c8  [(g es)]}
		\times 2/3 {c8  [(es g)]} 
		\times 2/3 {c8  [(es as)]}
		\times 2/3 {d8  [(es cis)]} | % 12
		d4 ~ 
		\times 2/3 {d8  [(c bes)]}
		\times 2/3 {as8 [(bes c)]} 
		\times 2/3 {bes8 [(as f )]} | % 13
		\times 2/3 {e8 [(f g)]} 
		\times 2/3 {c,8 [(d e)]} 
		\times 2/3 {f8  [(e f) ]} 
		\times 2/3 {g8  [(f e) ]} | % 14
		\times 2/3 {f8 es [(des } 
		\times 2/3 {c8 des es)] }
		\times 2/3 {des8 e [(f }
		\times 2/3 {g8 f e)] } | % 15
		\times 2/3 {f8 c [(bes }
		\times 2/3 {a8 bes c)]} 
		\times 2/3 {bes8 es [(f }
		\times 2/3 {g8 f es)]} | % 16
		\times 2/3 {b8 f' [(g} 
		\times 2/3 {as8 g f)]} 
		\times 2/3 {d'8 [(c bes)]}
		\times 2/3 {as8 [(f e)]} | % 17
		\times 2/3 {f8  [(g as)]}
		\times 2/3 {g8  [(as f)]} 
		\times 2/3 {cis'8 [(d es) ]}
		\times 2/3 {d8  [(es cis)]} | % 18
		\times 2/3 {d8  [(c bes)]}
		\times 2/3 {as8 [(f es)]} 
		\times 2/3 {as8 [(g f)]}
		\times 2/3 {es8 [(d c)]} | % 19
		\times 2/3 {b8  [(c d)]} 
		\times 2/3 {g,8 [(b d)]}
		\times 2/3 {g8  [(f g)]}
		\times 2/3 {as8 [(g f)]} | % 20
		\times 2/3 {g8  [(f es)]} 
		\times 2/3 {d8  [(es f)]}
		\times 2/3 {es8 [(d c)]}
		\times 2/3 {b8  [(c d)]} | % 21
		c4_\markup { Gavotte I da Capo } c,4 % 22
	}
}


