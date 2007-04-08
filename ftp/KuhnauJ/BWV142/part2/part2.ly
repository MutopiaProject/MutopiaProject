
\header {
 mutopiatitle = "Uns ist ein Kind geboren"
 mutopiacomposer = "J. Kuhnau"
 mutopiainstrument = "Voice"
 style = "Classical"
 copyright = "MutopiaBSD"
 maintainer = "Robert de Vries"
 maintainerEmail = "rhdv@xs4all.nl"
 lastupdated = "2002/Oct/10"

  title = "Uns ist ein Kind geboren"
  composer = "attr. J. Kuhnau"
  opus = "BWV 142"
  piece = "2. Coro"

%  footer = "VVE 2002"
%  tagline = "VAK Vokaal Ensemble 2002"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small This music is part of the Mutopia project, \\texttt{http://www.MutopiaProject.org/}\\\\It has been typeset and released under the MutopiaBSD license by" + \maintainer + ".\\\\You should have received a copy of the license with this music. If not, it is available at the above website.}"
  footer = "Mutopia-2002/10/10-286"
}

\version "1.6.4"

global = {
   \time 4/4
}

sopraan = \notes\relative c'' {
\clef "violin"
\dynamicUp
\key c \major
%1
R1 * 4 |
%5
r8 e e [d16 c] d8 [b16 c] d4 | c8 c c [b16 a] 
%6 II
b4 b | c b r8 e, e e | a4 c b2 |
%9
a8 a a [g16 fis] g8 [e16 fis] gis4 | a8 e' e [d16 c] b4 e | e () dis
%11 II
e r | r8 a, a a e'4 g | fis2 e8 e e [d16 c] |
%14
d8 d d [c16 b] c8 e e [d16 c] | d8 [b16 c] d4 c8 [cis16 d] [e f] [g e] | f4 d e2 |
%17
a,4 r r8 e'8 e [d16 c] | d8 d d [c16 b] c4. f8 | b,2 a4 r |
%20
R1 | R1 | R1 |
%23
r8 e' e [d16 c] d8 [b16 c] d4 | c r r2 | R1 |
%26
R1 | R1 | R1 |
%29
R1 | r2 r8 e d [c16 b] | c8 c b8. b16 
%31 II
b8 [a16 b] [b8. a16] | a4 r8 f'8 f [e16 d] e8 e | e [d16 c] d8 d d [c16 b] c8 b |
%34
c8. d16 b4 a8 cis cis8. cis16 | d8. d16 d8 [c16 b] b4. () a8 |
%36
a4 r r2 | R1 | R1 |
%39
R1 | R1 | R1 |
}

alto = \notes\relative c' {
\clef "violin"
\dynamicUp
\key c \major
%1
R1 | r2 r8 a' a [g16 f] | g8 [e16 f] g4 f8 f f [e16 d] |
%4
e8 e a a gis a [a gis] | a4 a a () gis | a8 a, a a
%6 II
e'4 g | fis2 e8 e d [c16 b] | c8 a' a [g16 fis] g4 e |
%9
e () dis e8 e e e | e e [e fis] g b b c | b4 b 
%11 II
r8 e, e e | a4 c b2 | a8 a a [g16 fis] g8 [e16 fis] [gis fis gis a] |
%14
b8 b b [a16 gis] a4 a | a () gis a r | r8 a a [g16 f] g8 [e16 f] g4 |
%17
f8 f f [e16 d] e8 g g a | b b b [a16 gis] a4 a | a () gis a r |
%20
R1 | R1 | r2 r8 e e e |
%23
a4 c b2 | a4 r r2 | R1 |
%26
r8 g g [f16 e] f8 f f4 ~ | [f8 g16 f] [e g f e] d4 r | R1 |
%29
r2 r8 b' b [a16 g] | a8 [fis16 g] a4 g8 e fis gis | a e e e 
%31 II
e8. f16 e4 | e r8 a g g g b | a a a [gis16 fis] gis8 [a16 gis] a8 gis |
%34
a a [a gis] a e e8. e16 | d8. f16 a8 f e2 |
%36
e4 r r2 | R1 | R1 |
%39
R1 | R1 | R1 |
}

tenor = \notes\relative c' {
\clef "violin_8"
\dynamicUp
\key c \major
%1
r8 e, e e a4 c | b2 a4 r | r8 e' e [d16 c] d8 [b16 c] d4 |
%4
c8 c c [b16 a] b8 c [b8. a16] | a4 r r8 d d [c16 b] | c8 [a16 b] c4 
%6 II
b8 b b e | e e [e dis] e c b [a16 gis] | a8 c [c a] b b b [a16 g] |
%9
a8 [fis16 g] a4 b r | r8 a a a e'4 g | fis2 
%11 II
e8 e d [c16 b] | c8 [c16 b] [a c b a] g8 b b e | c c b4 b r | 
%14
r8 e, e e a4 c | b2 a8 [a16 b] [cis d] [e cis] | d4 d d () cis |
%17
d8 d d [c16 b] c8 c e e | e e e8. e16 e4. d8 | b4 () e e r |
%20
R1 | R1 | R1 |
%23
r8 c c [b16 a] b8 a gis4 | a r r2 | R1 |
%26
r4 r8 e' e [d16 c] d8 d | d4 () c b r | R1 |
%29
r2 r8 g' g [fis16 e] | fis8 e dis4 e r | r8 a, gis8. gis16 
%31 II
gis8 a [a gis] | a c c [b16 a] b8 b b [a16 g] | a8 a a a e'4. e8 |
%34
e f b,4 c8 a a a | a8. a16 a8 a8 a4 () gis |
%36
a r r2 | R1 | R1 |
%39
R1 | R1 | R1 |
}

bas = \notes\relative c {
\clef "bass"
\dynamicUp
\key c \major
%1
R1 | R1 | R1 |
%4
r2 r8 e e e | a4 c b2 | a8 a a [g16 fis]
%6 II
g8 g g [fis16 e] | a8 [g16 fis] [b8 b,] e4 r | r8 a, a a e'4 g |
%9
fis2 e8 e d [c16 b] | c8 c c [b16 a] g8 g' g a | b4 () b,
%11 II
e4 r | r2 r8 g g [fis16 e] | [a c] [b a] b4 e, r |
%14
R1 | r2 r8 a, a a | d4 f e2 |
%17
d8 d d g c, c' c [b16 a] | gis4 r8 e a8. a16 a8 d, | e2 a,4 r |
%20
R1 | R1 | R1 |
%23
R1 | R1 | R1 |
%26
r4 r8 c'8 a a b g | c4 () c, g' r | R1 |
%29
r8 b, b b e4 g | fis2 e4 r | r8 e d [c16 b]
%31 II
c8. d16 e4 | a,8 a' a [g16 f] g8 g g [f16 e] | f8 f f [e16 d] e4. e8 |
%34
a d, e4 a8 g g [f16 e] | f8. f16 f8 d e4 () e, |
%36
a r r2 | R1 | R1 |
%39
R1 | R1 | R1 \bar "|."
}

soptext = \lyrics {
}

alttext = \lyrics {
}

tentext = \lyrics {
}

bastext = \lyrics {
}

\score {
    \context ChoirStaff = coro <
	\property Score.BarNumber \override #'padding = #2
%	\property Score.TimeSignature \set #'style = #'numbered

	\context Staff = soprano <
	    \property Staff.autoBeaming = ##f
	    \property Staff.automaticMelismata = ##t
	    \property Staff.midiInstrument = #"flute"
	    \property Staff.instrument = #`("Soprano")
	    \property Staff.instr = #`("S")
	    \sopraan
	    \context Lyrics = soprano \soptext
	>

	\context Staff = alto <
	    \property Staff.autoBeaming = ##f
	    \property Staff.automaticMelismata = ##t
	    \property Staff.midiInstrument = #"flute"
	    \property Staff.instrument = #`("Alto")
	    \property Staff.instr = #`("A")
	    \alto
	    \context Lyrics = alto \alttext
	>

	\context Staff = tenoren <
	    \property Staff.autoBeaming = ##f
	    \property Staff.automaticMelismata = ##t
	    \property Staff.midiInstrument = #"flute"
	    \property Staff.instrument = #`("Tenore")
	    \property Staff.instr = #`("T")
	    \tenor
	    \context Lyrics = tenoren \tentext
	>

	\context Staff = bassen <
	    \property Staff.autoBeaming = ##f
	    \property Staff.automaticMelismata = ##t
	    \property Staff.midiInstrument = #"flute"
	    \property Staff.instrument = #`("Basso")
	    \property Staff.instr = #`("B")
	    \bas
	    \context Lyrics = bassen \bastext
	>

    >
    \midi  { \tempo 4=70 }
    \paper {
	linewidth = 15.0\cm
%	\translator { \HaraKiriStaffContext }
    }
}

