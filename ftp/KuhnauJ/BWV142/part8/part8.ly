
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
  piece = "8. Choral"

%  footer = "VVE 2002"
%  tagline = "VAK Vokaal Ensemble 2002"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small This music is part of the Mutopia project, \\texttt{http://www.MutopiaProject.org/}\\\\It has been typeset and released under the MutopiaBSD license by" + \maintainer + ".\\\\You should have received a copy of the license with this music. If not, it is available at the above website.}"
  footer = "Mutopia-2002/10/10-283"
}

\version "1.6.4"

global = {
   \time 3/4
}

sopraan = \notes\relative c'' {
\clef "violin"
\dynamicUp
\key c \major
%1
R2. * 6 | 
%7
r4 r a | c2 b4 | a2 r4 |
%10
r r a | c2 b4 | a2 r4 |
%13
R2. | r4 r4 e' | d d c |
%16
b2 r4 | r r b | c2 c4 |
%19
d2 d4 | e2 e4 | d2 c4 ~ |
%22
c b2 | a2. | R2. |
%25
r4 r4 e' | d2 c4 | b2. |
%28
R2. r4 r e | d2 c4 |
%31
b2. | r4 r b | c2 c4 |
%34
d2 d4 | e2 e4 | d2 c4 ~ |
%37
c b2 | a2. | R | R | R\fermata |
}

alto = \notes\relative c' {
\clef "violin"
\dynamicUp
\key c \major
%1
R2. * 6 | 
%7
r4 r c | e2 e4 | e2 r4 |
%10
r r c | e2 e4 | e2 r4 |
%13
R2. | r4 r g | g g e |
%16
e2 r4 | r r e | e2 e4 |
%19
g2 g4 | g2 g4 | g2 e4 ( |
%22
)f b, () e | e2. | R2. |
%25
r4 r g | g2 e4 | e2. |
%28
R2. | r4 r g | g2 e4 |
%31
e2. | r4 r e | e2 e4 |
%34
g2 g4 | g2 g4 | g2 e4 ( |
%37
)f b, () e | e2. | R | R | R\fermata |
}

tenor = \notes\relative c' {
\clef "violin_8"
\dynamicUp
\key c \major
%1
R2. * 6 | 
%7
r4 r a | a2 gis4 | a2 r4 |
%10
r r a | a2 gis4 | a2 r4 |
%13
R2. | r4 r c | b b a |
%16
gis2 r4 | r r gis | a2 a4 |
%19
b2 b4 | c2 c4 | b2 a4 ~ |
%22
a a () gis | a2. | R2. |
%25
r4 r c | b2 a4 | gis2. |
%28
R2. | r4 r c | b2 a4 |
%31
gis2. | r4 r gis | a2 a4 |
%34
b2 b4 | c2 c4 | b2 a4 ~ |
%37
a a () gis | a2. | R | R | R |
}

bas = \notes\relative c {
\clef "bass"
\dynamicUp
\key c \major
%1
R2. * 6 | 
%7
r4 r a' | a2 e4 | a,2 r4 |
%10
r r a' | a2 e4 | a,2 r4 |
%13
R2. | r4 r c'4 | g g a |
%16
e2 r4 | r r e | a2 a4 |
%19
g2 g4 | c2 c4 | g2 a4 ( |
%22
) d, e2 | a,2. | R2. |
%25
r4 r c' | g2 a4 | e2. |
%28
R2. | r4 r c | g'2 a4 |
%31
e2. | r4 r e | a2 a4 |
%34
g2 g4 | c2 c,4 | g'2 a4 ( |
%37
) d, e () e, | a2. | R | R | R\fermata | \bar "|."
}

text = \lyrics {
_2. _ _ _ _ _ 
%7
_2 Al4 -- le2 -- lu4 -- ja,2 _4
%10
_2 Al4 -- le2 -- lu4 -- ja,2 _4
%13
_2. _2 ge4 -- lo -- bet sei
%16
Gott,2 _4 _ _ sin -- gen2 wir4
%19
all'2 aus4 un2 -- sers4 Her2 -- zens2 __
%22
Grun -- de;2. _
%25
_4 _ denn Gott2 hat4 heut,2.
%28
_2. _4 _ ge -- macht2 solch'4
%31
Freud',2. _4 _ der wir2 ver4 --
%34
ges2 -- sen4 solln2 zu4 kei2 -- ner __
%37
Stun -- de.2. 
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
	    \global
	    \sopraan
	    \context Lyrics = soprano \text
	>

	\context Staff = alto <
	    \property Staff.autoBeaming = ##f
	    \property Staff.automaticMelismata = ##t
	    \property Staff.midiInstrument = #"flute"
	    \property Staff.instrument = #`("Alto")
	    \property Staff.instr = #`("A")
	    \global
	    \alto
	    \context Lyrics = alto \text
	>

	\context Staff = tenoren <
	    \property Staff.autoBeaming = ##f
	    \property Staff.automaticMelismata = ##t
	    \property Staff.midiInstrument = #"flute"
	    \property Staff.instrument = #`("Tenore")
	    \property Staff.instr = #`("T")
	    \global
	    \tenor
	    \context Lyrics = tenoren \text
	>

	\context Staff = bassen <
	    \property Staff.autoBeaming = ##f
	    \property Staff.automaticMelismata = ##t
	    \property Staff.midiInstrument = #"flute"
	    \property Staff.instrument = #`("Basso")
	    \property Staff.instr = #`("B")
	    \global
	    \bas
	    \context Lyrics = bassen \text
	>

    >
    \midi  { \tempo 4=80 }
    \paper { linewidth = 15.0\cm }
}

