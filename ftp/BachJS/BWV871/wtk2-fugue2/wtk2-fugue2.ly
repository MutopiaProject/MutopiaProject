\header {
  title =       "Fuga II";
  subtitle =    "a 4 voci";
  opus =        "BWV 871 -- Fuga";
  source =      "Peters Urtext";
  composer =    "Johann Sebastian Bach (1685-1750)";
  enteredby =   "Felix Braun";

  %mutopia headers
  mutopiatitle = "Das Wohltemperierte Clavier II, Fuga II (c-minor)";
  mutopiacomposer = "J. S. Bach (1685-1750)";
  mutopiaopus = "BWV 871 -- Fuga";
  mutopiainstrument = "Hapsicord, Piano";
  source = "Urtext";
  style = "Baroque";
  copyright = "Public Domain";
  tagline = "\parbox{\hsize}{\\thefooter\quad\small\\\\This music is part of
the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been
typeset and placed in the public domain by Felix Braun\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
  footer = "Mutopia-2001/02/28-9";
  maintainer = "Felix Braun";
  maitainer_email = "fbraun@atdot.org";
  lastupdated = "2001/Feb/28";
}

\version "1.3.122";

\include "deutsch.ly"                 % for correct parsing of note names

forceShiftOff = { \property Voice.NoteColumn \revert #'force-hshift }

global = \notes {
  \key c \minor;
  \time 4/4;
  \property Staff.timeSignature \override #'style = #'C
}

soprano = \context Voice=one \notes \relative c''
{
	\voiceOne r1 |
	r8 [c b c] [d g,] [c b16 a] |
	b4 as! [g8 c] f,4~ |
	[f8 es16 d] [g8 f] es4 d-\prall |
	[c8 g'] c4~ [c8 b16 c] [d e f? g] |
%6
	[as f c' b] [as g f es!] [d b f' es] [d c b as] |
	g8 r r4 r2 |
	r8 r16 g' [es8. f16] [g8 c,] [f es16 d] |
	[es8 as,] [des c16 b] [c8 f,] [b as16 g] |
	[as8. as16] [d,8 es] f es4 f8~ |
%11
	[f es] [as8. as16] [g8. g16] [c8. b?16]~ |
	[b b as8]~ [as16 g as b] e,!8 r16 as [des8. c16]~ |
	[c c b8]~ [b16 a b c] [fis,!8 g]~ [g16 g8 fis16] |
	g8 [g' es f] [g c,] [f es16 d] |
	[es d c h] [c es f g] [as c, h a] [h g' f g] |
%16
	es8 r r4 r8 [g e fis] |
	[g c,] [f! es!16 d] [es8. es16] [d8 e] |
	[f b,] [es! d16 c] [d8 g,] es'4~ |
	[es16 es d8]~ [d16 c8 h16] [c8 g'] [d es16 f] |
	[es8 d] r16 [c8 b16] [as8. as16] g4~ |
%21
	g c2~ [c16 h c d] |
	[g,8 as] [g8. a16] [b8 h] r16 [g c fis,] |
	[g8 es] d4 c8 r r c' |
	[h c] [d g,] [c b16 as] [b8 c]|
	[as b c f,] [b as16 g] [as8 g]~ |
%26
	[g a16 b32 c] [f,8 c'] [d? c16 h] c4 |
	r16 [d es h] c4~ c r8 <h g f d>|
	<g1 c c, es> |
}

alto = \context Voice=two \notes \relative c''
{
	\voiceTwo r8 [g es f] [g c,] [f es16 d] |
	es4 [d8 c] b4 a |
	g8 g'4 f es [d16 c] |
	h4 c2 h4 |
	c r8 es [d16 fis g8] r4 |
%6
	r2 r8 \translator Staff=left \stemUp [d b d] |
	[es16 \translator Staff=right \stemDown c as' g] [f es d c] [h f' es d] [es as g f] |
	[d' c d8]~ [d16 h c8]~ [c16 h c8]~ [c16 h8.] |
	[c16 g as8]~ [as16 g8.]~ [g16 e f8]~ [f16 e8.] |
	[f8 c h c] [d g,] [c h16 a] |
%11
	[g h c8]~ [c16 c d8]~ [d16 d es8]~ [es16 f ges8] |
	e r16 f des4~ [des16 c f8]~ [f16 g as8] |
	fis r16 g es4~ [es16 d8 c16] [b8 a] |
	g r \translator Staff=left \stemUp g'4 es f |
	g c, f [es8 d] |
%16
	es \translator Staff=right \stemDown [c' b? c] [d g,] [c b16 a] |
	[b8 as!16 g] [c \translator Staff=left \stemUp c,
	\translator Staff=right \stemDown g'8]~ [g16 g a8] [b16 c des8] |
	r16 [c16 b as!] [g8 a] [b es,] [as g16 f] |
	[g8. f16] [es8 d] [c es'] as,4 |
	r16 [g8 f16] [es8 e] r16 [f16 d8] r16 [es16 f8]~ |
%21
	[f es]~ [es16 e f g] as4 [g8 f]~ |
	[f16 es8 f16]~ [f f es8] r16 [f es d] es4 |
	r16 [d8 c16]~ [c a h8] c [g' es f] |
	[g c,] [f es16 d] [e8 f] [g f16 e] |
	[f8 g e f] [g c,] [f e16 d] |
%26
	[e8 es des es] [f es16 d] \stemUp\shiftOn [es8 g] | \shiftOff r4 r16
	<
	 \context Voice=twoA {\tieUp
	 \property Voice.NoteColumn \override #'force-hshift =  #'1.3 a8.~
	 \forceShiftOff a4}
	 {\stemDown\tieUp [a16 fis8]~ \stemUp fis4}
	>
	s4 }

tenor = \context Voice=three \notes \relative c'
{
	r1*3 |
	r8 [g es f] [g c,] [f es16 d] |
	[es g c, d] [es f g a] [b d g, a] [b c d e] |
%6
	[f8 as,! f as] b r r4 |
	r8 [c, h c] [d g,] [c h16 a] |
	[h8 g c as!] [es8. as'16] [d,8 g] |
	[c,8. f16] [b,8 es] [as,8. des16] [g,8 c] |
	[f,16 c' f8]~ [f16 es d c] [h g c b] [as c d,8]
%11
	[es8. c16] [f8 b] h [c as b] |
	[c f,] [b as16 g] [as8 as'16 f] [b8 c] |
	[d, g] [c, b16 a] [b8 es c d] |
	g, \stemDown r r4 r2 |
	r8 [g' as g] [f d'] [g, a16 h] |
%16
	[c \stemBoth d es f] [g es d c] [b a b8]~ [b16 a d c] |
	[b g] [c8 a h] [c f,] [b as16 g] |
	[a8 d?]~ [d16 c f es] [d c des8]~ [des16 c b as] |
	\stemUp
	[b8  h c d] [g,16 c h c]~ [c h c8]~ |
	[c h] c4~ [c8 h?] [c8. h16]~ |
%21
	[h g c8]~ [c b] [as16 \translator Staff=right \stemDown g' f
	\translator Staff=left \stemUp es] d4~ |
	[d8 c d c] f, g4 a8 |
	g4 r8 r16 f es8 r8 r4 |
	r8 [es' h c] g r r4 |
	r8 [des' g, as] [e c' as b] |
%26
	[c f,] [b as16 g] [as8 g] [g \translator Staff=right \stemDown es']
	| r4 r8 r16 \stemDown
	\property Voice.NoteColumn \override #'force-hshift =  #'0.6 d es4}

bass = \context Voice=four \notes \relative c'
{
	r1*18 |
	\stemDown r4 g es f |
	g c, f [es8 d] |
%21
	[es8. g16] [as8 g] [f d'] [g, a16 h] |
	c8 [c, h c] [d g,] [c h16 a] |
	[h8 c f, g] c, r r4 |
	r2 c'8 r r4 |
	r2 c8 r r4 |
	r8 [c des c] [h f'] [es16 d c d32 es] |
	\stemBoth fis,4 r r16 [h' c fis,] [g8 g,] |
	<c1 c,>
}

\score {
    \context PianoStaff <
	\context Staff = right <
	    \global \clef violin;
	    \soprano
	    \alto
	>
	\context Staff = left <
	    \global \clef bass;
	    \tenor
	    { \bass \bar "|."; | }	>
    >

    \paper{
    	linewidth = 18.0 \cm; %required by mutopia
    }
    \midi {
    	\tempo 4 = 58;
    }
}
