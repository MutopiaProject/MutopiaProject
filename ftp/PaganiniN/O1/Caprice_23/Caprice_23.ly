\version "2.18.2"
\include "articulate.ly"
\include "english.ly"

\header {
	title = "24 CAPRICCI: Caprice No. 23"
	composer = "Nicolò Paganini"
	instrument = "Violin"
	mutopiaopus = "Op. 1"
	mutopiacomposer = "PaganiniN"
	mutopiatitle = "24 Caprices for Solo Violin: 23"
    mutopiaopus = "O 1"

	mutopiatitle = "24 Caprices for Solo Violin: 23"
	mutopiacomposer = "PaganiniN"
	mutopiainstrument = "Violin"
	date = "1836"
	license = "Creative Commons Attribution-ShareAlike 4.0"
%	source = "IMSLP (http://imslp.org/wiki/Special:ImagefromIndex/29587)"
    source = "Milan: Gio. Ricordi"
	style = "Romantic"
	enteredby = "Samuel Rummel"
	maintainer = "Samuel Rummel"
	lastupdated = "2015/Mar/7"

 footer = "Mutopia-2015/03/25-1999"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

#(set-global-staff-size 18)

mBreak = {}
%mBreak = { \break }
%%---BEGIN MUSIC-------------------------------------------------------------

global = { \key ef \major \time 6/8 }

music = \relative b' {

\repeat volta 2 {
	% using this instead of \partial to fix warning caused by \unfoldReapeats in MIDI block
	%\set Score.currentBarNumber = #1
	\set Timing.measurePosition = #(ly:make-moment -1 8) < bf bf' >8 |
	< ef ef' >4 bf,16^"4 corda" (c32 d ef4) < bf' bf' >8 |
	< ef ef' >4 bf,16           (c32 d ef4) < bf' bf' >8 |
	< ef ef' >4 < f f' >8 < g g' >16 < af af' >32 < g g' > < f f' >8 < ef ef' > |
	< f f' >16 (< bf bf, >4.) r8.
	}
\repeat volta 2 {
\ottava #1
\stemDown
\set Timing.measurePosition = #(ly:make-moment -1 8) bf16 (bf') |
bf8 \tuplet 5/4 { bf32 ( a af g gf f e ef d df ) } \stemUp c8 [c,-. bf-.] |

\mBreak %line 2
af8 [\stemDown af''16(g)] \tuplet 3/2 {g16(f e)} f8 [f, f'16 af] |
af8 \tuplet 5/4 { af32( g gf f e ef d df c cf  } \stemUp bf8-.)  bf,-. af-. |
g8-. [\stemDown g''16(f)] \tuplet 3/2 {f16(ef d)} ef8-. [ef,-. ef'16(gf)] |
gf8.->  f32 ( e ef d df c )  cf8 [\stemUp c,] \stemDown ef'16 (gf)  |

\mBreak %line 3
\stemNeutral
gf8.-> \tuplet 7/6 { f32 ( e ef d df c cf ) } bf8[bf,-.] ef'16[(gf)] |
gf8.  \tuplet 7/6 { f32 ( e ef d df c cf ) } a8 af,-. g''16[(ef)] |

d16 [bf,-. d-. f-. bf-. d-.] f-.[(bf-.)]
\ottava #0 \autoBeamOff bf,,,8-. < bf' bf' > | \autoBeamOn
< ef ef' >4 bf,16 [(c32 d)] ef4 < bf' bf' >8 |
< ef ef' >4 \tuplet 5/4 { bf,32(c d ef f } g4)  < bf' bf' >16 r |

\mBreak %line 4
< g,, bf' >4 (< af af' >8 < bf g' >4 f8\trill) |
< g ef' ef' >4.
\mark "Fine" r4
}}

%%---------------------------------------------------------------------------
minore = \relative b {
\repeat volta 2 {
\mark "Minore"
\set Timing.measurePosition = #(ly:make-moment -1 8) bf'8|
< g, ef' c' >16 [g'64 (f ef d)] c16 [< g ef' ef' >]
g'16-. [g64 (f ef d)] c16 [< g ef' c' g' >]
g'32 (fs af g f ef d c) |

< g d' b' >16 [d'32 (c bf af)] g16 [< g d' b' g' >16-.]
d'16-. [d64 (c bf af)] g16 [< g d' b' d' >]
\tuplet 8/6 { bf32 (c d ef f) af!-. g-. f-. } |

\mBreak %line 5
\stemUp ef32 [(d c) \stemDown ef''-.]
\stemUp ef,,32 [(d c) \stemDown ef''-.]
\stemUp d,,32 [(b g) \stemDown d'''-.]
\stemUp ef,,32 [(d c) \stemDown ef''-.]
\stemUp ef,,32 [(d c) \stemDown ef''-.]
\stemUp d,,32 [(b g) \stemDown d'''-.]	|

\stemUp ef,,32 [(d c) \stemDown ef''-.]
\stemUp c,,32 [(bf af) \stemDown c''-.]
\stemNeutral c,,32 [(bf af)  fs''-.]
%\stemUp c,,32 [(bf af) \stemDown fs''-.] % causes beam slope warning
< g,, d' b' g' >8 r
}

%%---------------------------------------------------------------------------
\repeat volta 2 {
\set Timing.measurePosition = #(ly:make-moment -1 8) g''8|
< g, e' c' >16 g32 [(f ef d)] c16 [< b' g' e' >]
g64 [(f ef d c16)] < af' fs' f' >16 [c64 (b af g] f16) \tuplet 6/4 { af'32 (g fs e d c)}|

\mBreak %line 6		(decres.)
\stemUp
< d, bf' bf' >16 f32 [(ef d c)] bf16 < af' f' d' >
f64 [(ef d c bf16)] < g' ef' ef' >16 [( bf64 af g f )]
ef16 \tuplet 6/4 {g'32 (f ef d c bf)} |

<<	{ \stemDown \autoBeamOff c,8_\markup {\italic "decres."} s4 c8 s4 c8 bf a } \\
	{ \stemUp \autoBeamOn af'32 [ef af ef]
		< bf g' >16 g''32( f ef d c bf )
		af [ef af ef]
		< bf g' >16 g''32( f ef d c bf )
		\slurUp
		af32 ([ef af ef] g ef g ef gf [ef gf ef])
		\slurNeutral
		< bf d >16-. [f''64 (ef d c)]
  }
>>
\stemNeutral
bf16 f''64 ( ef d c bf16)  [< d,, a >] |

< g, ef' >16-. bf'64 (af g f) ef16 [ef'64 (d c bf)] a16 [< ef c >]
< bf d >16 f''64(ef d c) bf16 [f''64(ef d c] bf16) < ef,, af, > |

\mBreak	%line 7 (cres.)
< ef g, >16 bf'64 (af g f) ef16 [ ef'64 (d c bf)] a16 [< ef c >-.]
< bf d >16 f''64 (ef d c) bf16 [ f''64( ef d c)] bf16 f64(ef d c) |

bf16_\markup {\italic "cres."} f64(ef d c) \stemDown bf16 [ f''64( ef d c)] bf16 \stemUp
f64[(ef d c)] b16 [ \stemNeutral f'''64(ef d c)] bf16 f64 (ef d c) bf16 [af64(f ef d)] |

\mBreak %line 8 (3rd from bottom)
\stemUp c16 \stemDown g'''64(f ef d)  c16 [g64(f ef d)]
\stemUp c16 g64(ef c bf) af16 [\stemDown c''64(af fs ef)] c16 [fs64(ef c af)]
\stemUp f16 f64(ef c af) |

\stemNeutral	% no good beam slope walning
g16 [g''64 ( af fs af )] g16 b64( c a c ) b16 [bf,,64(d bf af)]
g16 [ b''64(c f, c')] b16 d64(ef c ef) d16 [ d,,64 f d c ] |
%g16 [\stemDown g''64 ( af fs af )] g16 b64( c a c ) b16 [\stemUp bf,,64(d bf af)]
%g16 [\stemDown b''64(c f, c')] b16 d64(ef c ef) d16 [ d,,64 f d c ] |

\mBreak	%line 8
\stemUp b16\stemDown d''64( ef c ef)
d16 [f64 ( g e g )]
f16-> d64 c ( b af	g [f ef d]	b'!-> af g f		ef [d c b]	af'-> g f ef d c b af g f ef d ) |

< e c' c' >16 \stemNeutral g64[(f e d)]
c16 [< bf' g' ef' >] g64[( f e d ) c16]
< af' f' f' >8 [ c64 (bf af g] \tuplet 4/3 { f16 ) af'32 (g bf af g f) }|

\autoBeamOn
\mBreak	%LAST LINE
ef,32-. g'(ef c)
af32-. [af'(f d)]
g,,32-. f''(d b)

\stemUp ef,[(d c) \stemDown ef''-.]
\stemUp ef,,[(d c) \stemDown ef''-.]
\stemUp d,,[(b g) \stemDown d'''-.]	|

\stemUp ef,,[(d c) \stemDown ef''-.]
\stemUp ef,,[(d c) \stemDown ef''-.]
\stemUp d,,[(b g) \stemDown d'''-.]
\stemUp ef,,[(d c) \stemDown ef''-.]
\stemUp f,,[(ef d) \stemDown f''-.]
\stemUp g,,[(f ef) \stemDown g''-.]
%LAST MEASURE
af,,32(g f) af'' r8
\stemUp < g,,, d' bf' g'>16 r c4_"D.C."
}
%%---------------------------------------------------------------------------
} %end \music

%%---------------------------------------------------------------------------
\score {
	\new Staff {
	\set Staff.instrumentName = "POSATO"
        \global
		\music
		\minore
	}
	\layout {}
}
%%---------------------------------------------------------------------------
\score {
	\new Staff {
		\set Staff.midiInstrument = "violin"
        \global
		\unfoldRepeats \articulate {
			\music
			\minore
		}
		\articulate \music
	}
	\midi { \tempo 4=86 }
}
