\version "2.18.2"

\header {
  title = "Opus 29 no. 13"
%  subtitle = ""
%  subsubtitle = " "
  composer = "Fernando Sor"
%  opus = "Opus 29"
%  piece = ""
%  instrument = "Guitar"
%  arranger = "Arranger"
%  poet = "Poet"
%  texttranslator = "Translator"
% copyright = "Creative Commons \\texttt{http://creativecommons.org}"
 license = "Creative Commons Attribution-ShareAlike 4.0"
 enteredby = "Steve Shorter"
 mutopiatitle = "Opus 29, No. 13"
 mutopiacomposer = "SorF"
 mutopiaopus = "O 29, No 13"
 mutopiainstrument = "Guitar"
 source = "Library"
 style = "Classical"
 maintainer = "Steve Shorter"
 maintainerEmail = "steve@linuxsuite.org"
 maintainerWeb = "http://www.linuxsuite.org/"

 footer = "Mutopia-2016/01/25-450"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  top-margin = 6\mm                              %-minimum top-margin: 8mm
  top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing #'padding = #5
  markup-markup-spacing #'padding = #1.2
  markup-system-spacing.basic-distance = #6      %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #11       %-pads music from copyright block
  bottom-margin = 10\mm
}


one = \relative c'' {
	\voiceOne
	\stemUp
	\override Slur.direction = #-1
%
	\override Rest.extra-offset = #'(0 . 1.0)
	\tuplet 6/4 {r16^\markup {"" \raise #6.0 \large {Andante lento}}
	 d bes f f' d}
	\omit TupletNumber \omit TupletBracket
	\tuplet 6/4 {r16 d bes f f' d} |
	\tuplet 6/4 {r16 ees c f, f' ees}	\tuplet 6/4 {r16 ees c f, f' ees} |
	\tuplet 6/4 {r16 d bes f f' d}		\tuplet 6/4 {r16 e c bes e c} |
	\tuplet 6/4 {r16 f c a c a}		\tuplet 6/4 {f16 f' c a c f} |
	\tuplet 6/4 {g16\rest g ees bes ees g}	\tuplet 6/4 {g16\rest a f c f a} |
	\tuplet 6/4 {g16\rest bes f bes, bes' f}	\tuplet 6/4 {g16\rest f d d, f' bes,} |
	\tuplet 6/4 {r16 ees bes g ees' bes}	\tuplet 6/4 {r16 ees a, f f' ees} |
	\tuplet 6/4 {r16 d bes f d' bes}		\tuplet 6/4 {f16 d' bes f d' bes} |
% 9
	\tuplet 6/4 {r16 c g e g' c,}		\tuplet 6/4 {r16 c g e g' c,} |
	\tuplet 6/4 {r16 f c f, f' c}		\tuplet 6/4 {a16 f' c f, f' c} |
	\tuplet 6/4 {r16 c g e g' c,}		\tuplet 6/4 {r16 c g e g' c,} |
	\tuplet 6/4 {r16 f c f, f' c}		\tuplet 6/4 {a16 f' c f, f' c} |
	\tuplet 6/4 {r16 c a f f' c}		\tuplet 6/4 {r16 cis a f f' cis} |
	\tuplet 6/4 {r16 d bes f f' d}		\tuplet 6/4 {r16 d bes g bes' d,} |
	\tuplet 6/4 {r16 a' f c a' f}		\tuplet 6/4 {r16 g e c g' e} |
	\tuplet 6/4 {r16 c' f, c c' f,}		\tuplet 6/4 {r16 c' f, c c' f,} |
%  17
	\tuplet 6/4 {r16 f c a c' f,}		\tuplet 6/4 {r16 f cis a cis' f,} |
	\tuplet 6/4 {r16 f d bes d' f,}		\tuplet 6/4 {r16 g d bes bes' g} |
	\tuplet 6/4 {r16 a f c a' f}		\tuplet 6/4 {r16 g e bes g' e} |
	\tuplet 6/4 {r16 f c a c a}	f8 s8 \bar ":|."
%
% 21
	\tuplet 6/4 {a'16\rest f c a c f}	\tuplet 6/4 {a16\rest g e bes e g} |
	\tuplet 6/4 {a16\rest a ees c ees a}	\tuplet 6/4 {a16\rest bes d, bes d bes'} |
	\tuplet 6/4 {r16 ees, c f, c' ees}	\tuplet 6/4 {r16 d bes f bes d} |
	\tuplet 6/4 {r16 d bes f bes d}		\tuplet 6/4 {r16 c a f a c} |
	\tuplet 6/4 {r16 f c a c f}		\tuplet 6/4 {a16\rest g e bes e g} |
	\tuplet 6/4 {a16\rest a ees c ees a}	\tuplet 6/4 {a16\rest bes d, bes d bes'} |
	\tuplet 6/4 {r16 ees, c f, ees' c}	\tuplet 6/4 {r16 d bes f d' bes} |
% 28
	\tuplet 6/4 {r16 c a f f' a, }		\tuplet 6/4 {g e' bes a ees' c} |
	\tuplet 6/4 {r16 d bes f f' d}		\tuplet 6/4 {r16 d bes f f' d} |
	\tuplet 6/4 {r16 ees c f, f' ees}	\tuplet 6/4 {r16 ees c f, f' ees} |
	\tuplet 6/4 {r16 d bes f f' d}		\tuplet 6/4 {r16 e c bes e c} |
	\tuplet 6/4 {r16 f c a c a}		\tuplet 6/4 {f16 a c f a, c} |
	\tuplet 6/4 {g'16\rest fis c a fis' c}	\tuplet 6/4 {g'16\rest fis c a fis' c} |
% 34
	\tuplet 6/4 {g'16\rest g c, g g' c,}	\tuplet 6/4 {g'16\rest g c, ees, g' c,} |
	\tuplet 6/4 {g'16\rest fis c a fis' c}	\tuplet 6/4 {g'16\rest fis c a fis' c} |
	\tuplet 6/4 {g'16\rest g c, g g' c,}	\tuplet 6/4 {g'16\rest g c, g g' c,} |
	\tuplet 6/4 {g'16\rest g c, a g' c,}	\tuplet 6/4 {g'16\rest ges c, a ges' c,} |
	\tuplet 6/4 {g'16\rest f d bes f' d}	\tuplet 6/4 {b'16\rest bes d, bes bes' d,} |
	\tuplet 6/4 {g16\rest bes c, g c bes'}	\tuplet 6/4 {a16\rest a ees c a' ees} |
	\tuplet 6/4 {r16 bes' f d f d }		\tuplet 6/4 {bes f' d bes d f} |
% 41
	\tuplet 6/4 {r16 g ees bes bes' g} 	\tuplet 6/4 {r16 g ees bes bes' g} |
	\tuplet 6/4 {r16 f d bes bes' f}		\tuplet 6/4 {r16 d bes f f' d} |
	\tuplet 6/4 {r16 c a f f' ees}		\tuplet 6/4 {r16 c a f f' ees} |
	\tuplet 6/4 {r16 d bes f f' d}		\tuplet 6/4 {r16 f d bes bes' f} |
	\tuplet 6/4 {r16 g ees bes bes' g}	\tuplet 6/4 {r16 ges ees bes bes' ges} |
	\tuplet 6/4 {r16 f d bes bes' f}		\tuplet 6/4 {r16 d bes f f' d} |
% 47
	\tuplet 6/4 {r16 c a f  f' ees }		\tuplet 6/4 {r16 c a f  f' ees } |
	\tuplet 6/4 {r16 d bes f f' d}		\tuplet 6/4 {r16 d bes f f' d} |
	\tuplet 6/4 {r16 d c d, fis' d}		\tuplet 6/4 {r16 d c d, fis' d}	|
	\tuplet 6/4 {r16 d bes d, g' d}		\tuplet 6/4 {r16 d bes d, g' d} |
	\tuplet 6/4 {r16 d c d, a'' d,}		\tuplet 6/4 {r16 d c d, a'' d,}	|
	\tuplet 6/4 {r16 d bes g bes' d,}	\tuplet 6/4 {r16 d bes g bes' d,} |
% 53
	\tuplet 6/4 {r16 g cis, bes g' cis,}	\tuplet 6/4 {r16 g' cis, bes g' cis,} |
	\tuplet 6/4 {r16 f d bes f' d}		\tuplet 6/4 {r16 d bes f d' bes} |
	\tuplet 6/4 {r16 c bes e, c' bes}	\tuplet 6/4 {r16 c a ees f' a,} |
	\override Rest.extra-offset = #'(0 . -1.0)
	\tuplet 6/4 {r16 bes d,( f) bes d,}	\tuplet 6/4 {r16 bes' d,( f) bes d,} |
	\tuplet 6/4 {r16 bes' f( d) f( d)}	\tuplet 6/4 {r16 bes' f( d) f( d)} |
	bes2 |
}

two = \relative c' {
	\voiceTwo
	\stemDown
	\override Rest.extra-offset = #'(0 . 0.5)
	f8\rest f4 f8 |
	f8\rest f4 f8 |
	f8\rest f f\rest bes |
	f8\rest a f4 |
% 5
	\override Rest.extra-offset = #'(0 . 1.0)
	g8\rest bes g8\rest c8 |
	g8\rest bes8 bes4 |
	\override Rest.extra-offset = #'(0 . 0.5)
	f8\rest g r f |
	f8\rest f[ f f] |
% 9
	f8\rest e4 e8 |
	f8\rest f[ a f] |
	f8\rest e4 e8 |
	f8\rest f[ a f] |
	f8\rest f4 f8 |
% 14
	f8\rest f8 r8 g8 |
	f8\rest c'4 c8 |
	g8\rest c[ a c] |
	g8\rest a4 a8 |
	g8\rest bes4 bes8 |
	g8\rest c4 bes8 |
	g8\rest  a8 s8 a8\rest
% 21
	\override Rest.extra-offset = #'(0 . 0.75)
	a8\rest a a\rest bes |
	a8\rest c a\rest bes |
	g8\rest f g\rest f |
	g8\rest f g\rest f |
	g8\rest a a\rest bes |
	a8\rest c a\rest bes |
	f8\rest f f\rest f |
% 28
	f8\rest s g a |
	f8\rest f4 f8 |
	f8\rest f4 f8 |
	f8\rest f8 r bes8 |
	f8\rest a f4 |
	g8\rest a4 a8 |
% 34
	g8\rest g g4 |
	g8\rest a4 a8 |
	g8\rest g[ g g] |
	g8\rest a4 a8 |
	g8\rest bes c8\rest bes |
	g8\rest g a\rest c |
	g8\rest d'[ bes bes] |
% 41
	g8\rest bes4 bes8 |
	g8\rest bes g\rest f |
	g8\rest f4 f8 |
	g8\rest f g\rest bes |
	g8\rest bes g\rest bes |
	g8\rest bes g\rest f |
	g8\rest f4 f8 |
% 48
	g8\rest f4 f8 |
	g8\rest d4 d8 |
	g8\rest d4 d8 |
	g8\rest d4 d8 |
	g8\rest g4 g8 |
	g8\rest bes4 bes8 |
% 54
	g8\rest bes4 f8 |
	g8\rest e4 ees8 |
	s2 |
	s2 |
	s2 |
}

three =	\relative c' {
	\voiceThree
	\stemDown
	bes4 bes |
	a4 a |
	bes4 g |
	f2 |
% 5
	ees'4 ees |
	d4. d8|
	c4 f,4 |
	bes2 |
	bes4 bes |
	a2 |
	bes4 bes |
	a2 |
% 13
	a4 a |
	bes4 g |
	c4 c |
	a2 |
	a4 a |
	bes4 bes |
	c4 c |
	f,4 f'8 s8
% 21
	f4 f |
	f4 f |
	a,4 bes |
	f4 f |
	f4 f' |
	f4 f |
	a,4 bes |
	f8 f'8 s4 |
% 29
	bes,4 bes |
	a4 a |
	bes4 g |
	f2 |
	d'4 d |
	ees4. ees8 |
	d4 d |
	ees2 |
	ees4 ees |
	d4 g |
% 39
	ees4 f |
	bes,4 r |
	bes4 bes |
	bes4 bes |
	bes4 bes |
	bes4 bes |
	bes4 bes |
	bes4 bes |
	bes4 bes |
	bes4 bes |
% 49
	a4 a |
	g4 g |
	fis4 fis |
	g4 g |
	e4 e |
	f4 f |
	f4 f |
	bes4 bes |
	bes4 bes |
	bes2 |
}


\score {
  {
    \new Staff \with {
      midiInstrument = #"acoustic guitar (nylon)"
      } <<
      \time 2/4 \key bes\major \clef treble
      \new Voice = "one" \one
      \new Voice = "two" \two
      \new Voice = "three" \three
    >>
  }
  \layout {}
  \midi {
    \tempo 4 = 30
  }
}
