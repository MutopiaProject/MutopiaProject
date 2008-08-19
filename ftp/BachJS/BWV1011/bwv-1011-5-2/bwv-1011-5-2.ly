\version "2.11.52"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Cello Suite V"
        subtitle = "\"Sechs Suiten für Violoncello\""
        piece = "6. Gavotte II"
        mutopiatitle = "Cello Suite V - BWV 1011 - Gavotte II"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1011"
        mutopiainstrument = "Cello"
		arrangement = "Hajo Dezelski"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/08/19-1524"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melody =    \relative g {
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
		c4 c,4 s2 | % 4 
	}
 	\repeat volta 2 {
		\partial 2 
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
		c4_\markup { Gavotte I da Capo } c,4 s2 | % 22
	    }
	}

% The score definition


\score {
 	\context Staff << 
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key es \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
