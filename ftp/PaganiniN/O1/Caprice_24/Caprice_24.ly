\version "2.18.2"
\include "articulate.ly"
\include "english.ly"

\header {
	title = "24 CAPRICCI: Caprice No. 24"
	composer = "Nicolò Paganini"
	instrument = "Violin"
	mutopiaopus = "Op. 1"
	mutopiacomposer = "PaganiniN"
	mutopiatitle = "24 Caprices for Solo Violin: 24"
    mutopiaopus = "O 1"
    style = "Romantic"
	license = "Creative Commons Attribution-ShareAlike 4.0"
%	source = "IMSLP (http://imslp.org/wiki/Special:ImagefromIndex/29587)"
    source = "Milan: Gio. Ricordi"
    date = "1836"
	enteredby = "Samuel Rummel"
	maintainer = "Samuel Rummel"

 footer = "Mutopia-2015/03/25-2000"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

#(set-global-staff-size 18)

mBreak = { \break }

%%---BEGIN MUSIC-------------------------------------------------------------
music = \relative b' {
	\tempo "quasi Presto"
	\key a \minor
	\set Staff.instrumentName = "TEMA"
	\time 2/4

\repeat volta 2 {
	\stemDown
	a8-.[\p r16 a-.] a (c b a) |
	\stemUp
	e'8 [r16 e,] e (gs fs e) |
	\stemDown
	a8 [r16 a] a (c b a) |
	e'4->(\stemUp e,8) r
	}
\stemDown
a'8 [r16 a] a ( bf a g) |
f8 [r16 d] d (f e d) |

g8 [r16 g] g (a g f) |
e8 [ r16 c] c (e d c)|
f8 [r16 b,] b (d c b) |
e8 [r16 a,] a (c b a) |
f8 [r16 ds'] e, (e' d b)|
\stemUp
a4-> a,8 r \bar "||"
}
%%---------------------------------------------------------------------------
varI = \relative a{
	\time 2/4
	\key a \minor
	\set Staff.instrumentName = "VAR. I"

\repeat volta 2 {
	\grace {a''32\f (c)} \stemDown \tuplet 3/2 { e8-.-> [(c-. a-.] } \tuplet 3/2 { e-. c-. a-.) }|
	\grace {e'32 (gs)} \stemDown \tuplet 3/2 { b8-.-> gs-. e-. } \tuplet 3/2 { b-. g-. e-. }|
	\grace {a'32 (c)} \stemDown \tuplet 3/2 { e8-.-> c-. a-. } \tuplet 3/2 { e-. c-. a-. }|
	\stemNeutral
	e'4->(e,8) r
	}
\grace {cs''32(e)} \tuplet 3/2 { a8 e cs } \tuplet 3/2 { a e c } |
\grace {c,32(f)} \tuplet 3/2 {a8 d f} \tuplet 3/2 {a8 d f}|

\grace {b,32(d)} \tuplet 3/2 {g8 d b} \tuplet 3/2 {g d b} |
\grace {c,32(e)} \tuplet 3/2 {g8 c e} \tuplet 3/2 {g c e} |
\grace {f32(d)} \tuplet 3/2 {b8 gs f} \tuplet 3/2 {d b g} | %ugly slur on grace note
\grace {e''(c)} \tuplet 3/2 {a8 e c} \tuplet 3/2 {a e c} |
\slurUp
\grace {d32(f } \tuplet 3/2 {b8 d f)}\tuplet 3/2 {e, e' gs,}|
\stemUp
a4->(a,8) r \bar "||"
}
%%---------------------------------------------------------------------------
varII = \relative a{
	\time 2/4
	\key a \minor
	\set Staff.instrumentName = "VAR. II"

\repeat volta 2 {
	\stemDown
	a'16-0\p (gs a gs \grace {bf32} a16\> b\! c d) |
	e16-0 ( ds e ds \grace {f32} e16\> d\! c b) |
	a16 gs a gs \grace {bf32} a16 b c d |
	e16 ds e ds \grace {f32} \autoBeamOff e8 \stemUp e, | \autoBeamOn
	}
	\stemDown
	a'16 gs a gs \grace {bf32} a16 g f e |
	d16 cs-4 d cs \grace {ef32} d16 e f d|
	g16 fs g fs \grace {af32} g16 f e d |
	c16 b c b \grace {df32} c16 d e c |
	f16 e f e \grace {g32} f16 d c b |
	e16 ds e ds \grace {f32} e16 c b a|
	b16 as b as \grace {c32} b16 f' e gs,|
	\stemUp
	a16-0 (gs a gs) \grace {b32} a8 r8|
	\bar "||"
  }
%%---------------------------------------------------------------------------
varIII = \relative a'{
	\time 2/4
	\key a \minor
	\set Staff.instrumentName = "VAR. III"

\repeat volta 2 {
	<< a4.\f^\markup {\italic "terza e quarta"}  c,4.( >>   << a'8 a,8 >> |
	<< bs8-> gs'>> << b bs, >> << e4-. e'4-.)>> |
	<< c4. c,4. >> << a8 a' >> |
	<< b8-> b, >> << ds ds'-> >> << f-> f, >> << e e'-> >> |
	}
<< \stemDown a4. ( a,4. >> << \stemUp cs8 cs,8  >> |	\mBreak
<< d8-> d' >> << e-> e, >> << f-> f' >> << fs-> fs, ) >> |

<< \stemDown g4. ( g'4. >> << \stemUp b,8 b,8  >> |
<< a8-> c' >> << d-> d, >> << ds-> ds' >> << e-> e, >> |
<< \stemDown f4. f'4. >> << \stemUp b,8 b, ) >> |

<< e4. e' >> << a,8 a,8 >> |
<< b8 b' >> << f f' >> << e e, >> << gs gs, >> |
<< b4 b' ( >> << a8 a, ) >> r8 | \bar "||"
}
%%---------------------------------------------------------------------------
varIV = \relative a{
	\time 2/4
	\key a \minor
	\set Staff.instrumentName = "VAR. IV"
	%\time 3/4 % tuplets unmarked in original; works nicely without them in 2/4

\repeat volta 2 {
	\stemDown
	a'16\p ( \ottava #1 a'' gs g fs f e ds)  |
	f16 (e ds f e b gs e) |
	a16 (a' gs g fs f e ds|
	f16 e ds f) \autoBeamOff e8 \stemUp e,8-. \autoBeamOn \stemDown
	}
a16 (a' gs g fs f e d ) | \mBreak
\stemUp cs16 e a, cs d a f d | \stemDown
g16 g' fs f e ef d c |
b16 d g, b \stemUp c g e c | \stemDown
f16 f' e ef d cs c b |
e,16 e' ds d cs c b a|
\ottava #0
f16 e ef d cs c b gs |
a16 a'' e c a e-0 c a| \bar "||"
}
%%---------------------------------------------------------------------------
varV = \relative a'{
	\time 2/4
	\key a \minor
	\set Staff.instrumentName = "VAR. V"
	%\time 3/4 % tuplets unmarked in original; works nicely without them in 2/4

\repeat volta 2 {
	\stemUp
	a,8-> \stemDown f''16([f, e' e,]) \stemUp a,8-> (|
	gs8) \stemDown ds'''16([d, e' e,]) \stemUp gs,,8-> (|
	a8) \stemDown f''16([f, e' e,]) \stemUp a,8-> (|
	gs8) \stemDown ds'''16([d, e' e,]) r8|
	}
\stemUp
cs,8 \stemDown bf'''16([b, a' a,]) \stemUp cs,,8-> (| \mBreak
d8) \stemDown e'16([e, f' f,]) \stemUp c8-> (|
b8) \stemDown af'''16([a, g' g,]) \stemUp b,,8-> (|
c8) \stemDown ds'16([d, e' e,]) \stemUp cs8-> (|
d8) \stemDown b''16([b, bf' b,]) \stemUp d,8 (|
e8) \stemDown gs'16([g, a' a,]) \stemUp f8 (|
d8) \stemDown f''16([f, e' e,]) \stemUp e,8(|
a,8) \stemDown c''16([c, a' a,]) r8| \bar "||"
}
%%---------------------------------------------------------------------------
varVI = \relative a'{
	\time 2/4
	\key a \minor
	\set Staff.instrumentName = "VAR. VI"
	%\time 3/4 % tuplets unmarked in original; works nicely without them in 2/4

\repeat volta 2 {
	<< c'4.\f e4. ( >> << d16 b >> << c a >> |
	<< b16 gs >> << a f >> << gs e >> << f d >>
	<< f c >> << d b >> << c a >> << b g ) >> |
	<< c4. a4. ( >> << d16 b >> << e c >> |
	<< d16 b >> << c a >> << b gs >> << a f >> \stemUp << gs4 e4 ) >> |
	}
\stemDown
<< a4. cs'4. ( >> << b16 b, >> << c cs' >> |

\ottava #1
	<< f16 d, >> << e g' >> << a f, >> << g b' >>
	<< cs a, >> << b d' >> << e c, >> << d f' ) >> | \mBreak
\ottava #0

\stemUp
<< b,,,4. g,4. ( >> << a16 c' >> << d b, >> |
\stemDown
<< c16 e' >> << f d, >> << e g' >> << a f, >>			<< g b' >> << c a, >> << b d' >> << e c, >> |
<< d4. f'4.) ( >> << e16 c, >> << b d' ) >> |
<< e4. c,4. ( >> << b16 e' >> << c a, ) >> |
<< d,8 f' ( >> << e16 e, >> << f d' >> << c e, >> << a d >> << b e, >> << gs b ) >> |
\stemUp a4 (a,8) r \bar "||"
}
%%---------------------------------------------------------------------------
varVII = \relative a{
	\key a \minor
	\set Staff.instrumentName = "VAR. VII"

\time 3/4
\stemDown
\repeat volta 2 {
	\tuplet 3/4 {e'''16\p (f e) }	c4->
	\tuplet 3/4 {a16(b a)} |
	\autoBeamOff
	b16 ([c b]) \tuplet 3/4 {gs ([a gs])} e ([f e])\stemUp e,8|
	\stemDown \tuplet 3/4 {e''16 ([f e]) } c4->
	\stemUp \tuplet 3/4 {a,,16 ([b a])}|
	b16 ([c b]) \tuplet 3/4 {e ([f e])}	gs ([a gs]) e8|
	}
\stemNeutral
\tuplet 3/4 {e''16 ([f e])} cs4-> \tuplet 3/4 {a16([b a])} |%\mBreak

d16([e d]) a,([f a]) f([g f]) d([e d])|
\tuplet 3/4 {d''16 [e d]} b4-> \tuplet 3/4 {g16 [a g]}|
c16[d c] g,[a g] e[f e] c[d c]|
\tuplet 3/4 {d''16[e d]} f4-> \tuplet 3/4 {d,,16[e d]}|
\tuplet 3/4 {c''16[d c]} e4-> \tuplet 3/4 {c,,16[d c]}|
d''16[e d] b,,[c b] b''[c b] gs,,[a gs]|
\tuplet 3/4 {a16[b a]} \tuplet 3/4 { a''([b a])} a,,8 r \bar "||"
\autoBeamOn
}
%%---------------------------------------------------------------------------
varVIII = \relative a{
	\time 2/4
	\key a \minor
	\set Staff.instrumentName = "VAR. VIII"

\time 3/4
\stemDown	%SlurUp seems to fail here?
\repeat volta 2 {
	<< {s4\f e''2 } \\ {\tuplet 4/6 {< a, c >8 (< c e >< d b >< c a >}} >>
	<< {e8 b'4 e,} \\ {\tuplet 4/6 {< gs, b >8 < b e >< fs a >< gs b > )}} >>

	<< {s4 e'2 } \\ {\tuplet 4/6 {< c a >8 < c e >< d b >< c a >}} >>
	<< {\tuplet 4/6 {e8 a gs e}} \\ {\tuplet 4/6 {< b gs >8 < ds f, >< e e, >< b e, >}} >>
	}
<< {s4 e2} \\ {\tuplet 4/6 {< cs a>8 < b d >< cs e >< cs a >}} >> | %\break

<< {\stemDown d,2 s4} \\ {\stemUp \tupletUp \tuplet 4/6 {< f' d' >8 < g e' >< a f' >< d f, >}} >> |
<< {\stemDown s4 g,,,2} \\ {\stemUp \tupletUp \tuplet 4/6 {< b' d, >8 < e, c' >< f d' >< d b' >}} >> |
<< {\stemDown s4 g2} \\ {\stemUp \tupletUp \tuplet 4/6 {< c, e' >8 < f' d, >< e, g' >< e' c, >}} >> |
<< {\stemDown s4 < b d, >2} \\ {\stemUp \tupletUp \tuplet 4/6 {f'8 d e f}}>>
\stemUp \tupletUp
\tuplet 4/6 {< e c c, >8 < d b b, >< c a a, >< cs g a, >}|
\tuplet 4/6 {< d f, d >8 < ds, c' a' >< e c' a' >< e b' gs' >}|
< a c a' >4 (a,8) r \bar "||" \tupletNeutral
}
%%---------------------------------------------------------------------------
varVIIII = \relative a{
	\time 2/4
	\key a \minor
	\set Staff.instrumentName = "VAR. VIIII"

\stemDown
\set Staff.midiInstrument = "pizzicato strings"
\repeat volta 2 {
	c''16-"pizz." a-0 e-0 c		a-0 e' c-0 a-0 |
	b'16 gs-0 e-0 d'			b-0 e,-0 gs e-0|
	c'16 a-0 e-0 c				a-0 e' c-0 a-0 |
	b'16 gs-0 e-0 e-0			b-0-4 g e8-0 |
	}
e''16 cs-0 a-0 e			\stemUp c a-0 g e-0 |
f16 d-0 \stemDown d'' a-0	f d-0 f, d-0 |

\stemNeutral
d''16 b-0 g-0 f-0	d b-0 f d-0|
e16 c-0 c'' g-0		e c-0 e, c-0|
b''16 a-0 gs-0 f	e-0 d c-0 b-0|
a16-0 g f-0 e-0		d-0 c b-0 a-0|
f'16 d-0 a'' f-0	gs, e-0 b'' g-0|
a16 e-0 c a-0		a,8-0 r8 \bar "||"|
\set Staff.midiInstrument = "violin"
}
%%---------------------------------------------------------------------------
varX = \relative a{
	\time 2/4
	\key a \minor
	\set Staff.instrumentName = "VAR. X"

\ottava #1
\repeat volta 2 {
	a'''4.\p (e16 c' |
	b16 a gs fs			e fs gs) e|
	a4 ( a16 b c d	| ds8.) e16  e,4|
	}
a4 a16 e' cs a |
g16 e cs a		g f e d |

g'4 g16 d' b g |
f16 d b g		f e d c |
f'4 f16 d b a |
gs16 e d b 		c e a g |
f16 d' b a		gs b' g e|
\grace gs8 a4 (a,8) r \bar "||"
\ottava #0
}
%%---------------------------------------------------------------------------
varXI = \relative a''{
	\time 2/4
	\key a \minor
	\set Staff.instrumentName = "VAR. XI"

\repeat volta 2 {
	< c,, e >16\f (< a' e' >)	< c, f >(< a' e' >)
	< b, gs' >(< b' e >)		< a, e' >(< c' e >)	|
	gs,32 (b c g' b e g b)		e16 g b e |

	< c,,, e >16 < a' e' >		< c, f >< a' e' >
	< b, gs' >< e' b' >			< a,, e' >< c' a' >	|
	\stemUp
	< gs, e' >16 \stemDown e''' b g		\stemNeutral e b g e |
}
< cs a' >16 < e' c' >< cs, a' >< e' c' >
< d, a' >16 < f' d' >< e, c' >< a' c > |
\tuplet 7/4 {f,16 (d f a d f a)}	d f a d |

< b,,, g' >16 < d' b' > < b, g' > < d' b' > < c, g' > < e' c' >< d, b'>< g' d'> |
\tuplet 7/4 { e,16 (c e g c e g)}	c e g c |

\mBreak

< d,,, b' >16 < f' d' >< d, b' >< f' d' >	< c, a' >< e' c' >< b, gs' >< e' b' >|
< a,, e' >16 < c' a' >< b, gs' >< e' b' >< c, a' >< e' c' >< ds, c' >< a'' fs' > |
\tuplet 6/4 { e,16 (a c e a c)}
\tuplet 6/4 { e,,16 (gs b e g b)}|

%%---------------------------------------------------------------------------
\mark "Finale" \bar "||"
\stemDown
\tuplet 6/4 { a,,\p (c e a c e)}
\tuplet 6/4 { a (e c a e c)}|

\tuplet 6/4 { a (cs e a c e)}
\tuplet 6/4 { a (e c a e cs)}|
\tuplet 6/4 { d (f a d f a)} d16 f a d |

< f,,, gs, >\f < d' b' >< g, b, >< f' d' >
< d, b' >< g' f' >< f, gs, >< d' b' > |
\stemDown
\tuplet 6/4 { a,\p c e a c e }
\tuplet 6/4 { a e c a e c } |

\tuplet 6/4 { a cs e a c e }
\tuplet 6/4 { a e c a e cs }
\mBreak

\tuplet 6/4 { d f a d f a } d16 f a d |
\stemUp
< f,,, gs, >\f < d' b' >< g, b, >< f' d' >
< d, b' >< g' f' >< f, gs, >< d' b' > |

%%---------------------------------------------------------------------------
\bar "." \key a \major

\stemUp \tupletUp
\tuplet 6/4 {a,16\p (cs e a cs e    } \tuplet 6/4 {       a e cs a e cs)} |
\tuplet 7/4 {a16 (cs e a cs e a     } \tuplet 7/4 {    cs a e cs a e cs)} |
\stemDown \tupletNeutral\mBreak
\tuplet 8/4 {a16 (cs e a cs e a cs  } \tuplet 8/4 {  e cs a e cs a e cs)} |
\tuplet 9/4 {a16 (cs e a cs e a cs e} \tuplet 9/4 {a e cs a e cs a e cs)} |
\stemUp a2\trill  ( a\trill  < a e' cs' a' >8\ff) r8 r8\fermata \bar "|."

%%---------------------------------------------------------------------------
} %end \music

%%---------------------------------------------------------------------------
\score {
	\new Staff {
		\music
	}
    \header { opus = "Op. 1" }
	\layout {}
}
\score { \new Staff { \varI }       \layout {} }
\score { \new Staff { \varII }		\layout {} }
\score { \new Staff { \varIII }		\layout {} }
\score { \new Staff { \varIV }		\layout {} }
\score { \new Staff { \varV }		\layout {} }
\score { \new Staff { \varVI }		\layout {} }
\score { \new Staff { \varVII }		\layout {} }
\score { \new Staff { \varVIII }	\layout {} }
\score { \new Staff { \varVIIII }	\layout {} }
\score { \new Staff { \varX }		\layout {} }
\score { \new Staff { \varXI }		\layout {} }
%%---------------------------------------------------------------------------
\score {
	\unfoldRepeats \articulate
	\new Staff {
		\key a \minor

		\set Staff.midiInstrument = "violin"
		\music
		\varI
		\varII
		\varIII
		\varIV
		\varVI
		\varVII
		\varVIII
		\varVIIII
		\varX
		\varXI
	}
	\midi { \tempo 4=186 }
}
