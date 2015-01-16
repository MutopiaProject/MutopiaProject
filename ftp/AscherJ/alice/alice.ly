\layout{
%	line-width = 172 \mm
	indent = 8 \mm
%	interscoreline = 4.0 \mm
}
\include "english.ly"
\version "2.19.15"
#(set-global-staff-size 18)

\header {
  title = "Alice, Where Art Thou?"
  composer = "Joseph Ascher (1829-1869)"
  poet = "W. Guernsey"
  instrument = "Voice and Piano"
  opus = ""
  source = "Not known"
  license = "Public Domain"
  mutopiacomposer = "AscherJ"
  mutopiastyle = "Song"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"

 footer = "Mutopia-2015/01/16-433"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-margin = 8\mm                              %-minimum top-margin: 8mm
  top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing #'padding = #5
  markup-markup-spacing #'padding = #1.2
  markup-system-spacing.basic-distance = #6      %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #11       %-pads music from copyright block
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  bottom-margin = 10\mm
}

\paper {
  top-margin = 6 \mm
  % default vertical spacing values have been multiplied by 1.5, except where noted with **
  system-system-spacing = #'((basic-distance . 18) (minimum-distance . 12) (padding . 1.5))
  % defaults are 12, 8, and 1
  score-system-spacing = #'((basic-distance . 21) (minimum-distance . 12) (padding . 1.5))
  % defaults are 14, 8, and 1
  markup-system-spacing = #'((basic-distance . 7.5) (padding . 6))
  % defaults are 5 and 0.5**
  score-markup-spacing = #'((basic-distance . 18) (padding . 0.75))
  % defaults are 12 and 0.5
  markup-markup-spacing = #'((basic-distance . 1.5) (padding . 0.75))
  % defaults are 1 and 0.5
  top-system-spacing = #'((basic-distance . 1.5) (padding . 1.5))
  % defaults are 1 and 1
  top-markup-spacing = #'((basic-distance . 4) (padding 1.5))
  % defaults are none** and 1
  last-bottom-spacing = #'((basic-distance . 1.5) (padding . 5))
  % defaults are 1 and 1**
}

melody = \relative c' {
	\key bf\major \time 3/4 \partial 8 s8
	s2.*7 r2 r8^\p f8 f4 bf4. c8 | bf4 a2 |
	g4 \acciaccatura a16 g8 fs g a | g4( f) r8 f | f4 d'4.^\markup { \italic "cresc." } ef8 |
		d4 c4. g8| bf4 a8(^\markup { \italic "dim." } g) a f |
	bf4 r r8 f | f4^\mf bf4. c8 | bf4 a4. a8 | g4 \acciaccatura a16 g8 fs g a |
		g4( f!4.) f8 |
	f4^\markup { \italic "cresc." } f' ef8( d) | d4 c4. g8 |
		bf4 a8(^\markup { \italic "dim." } g) a f |
			bf4 r r8 bf^\markup {\italic "Animato" \dynamic f } | bf4 a4. d,8 |
	a'4 g4. g8 | d'4 c8( bf) a g | g( fs a4) r8 d, | bf'4^\p a4. d,8 |
	a'4 g4. g8 | ef'( d) c( bf) c cs | d4 r r | f,!4^\pp(\melisma bf4. c8) |
	bf4\( a2\)\melismaEnd | g4^\p g8( fs) g( a) | g4 f r8 d' | d4^\f c4. b8 |
	b8( c) g4. c8 | c4 bf8(^^ a)^^ g^^ f^^ | f'2. |
		g,4.^\markup { \italic "dim." \dynamic p }( a8) bf c |
	f,4. g8 a bf d2 r8 f, | c'2^\markup { \italic "rit." } r8 f, |
		bf8^\markup { \italic "a tempo" } r r4 r8 \bar "|."
}

textA = \lyricmode {
	The birds sleep -- ing gent -- ly, Sweet Lu -- na gleam -- eth bright,
	Her rays tinge the for -- est, And all seems glad to -- night.
	The wind sigh -- ing by me, __ _ Cool -- ing my fev -- ered brow;
	The stream flows as __ ev -- er, Yet Al -- ice, Where art thou?
	One year back this e -- ven, And thou wert by my side, __
	One year back this e -- ven, And thou __ wert by my side.
	_(hum) __ Vow -- ing to __ love me; One year past this e -- ven
	And thou wert by my side, Vow -- ing to love me,
	Al -- ice, What e'er might be -- tide!
}

textB = \lyricmode {
	The sil -- ver rain fall -- ing, Just as it fall -- eth now, __
	And all things slept gent -- ly, Oh! Al -- ice, where art thou?
	I've sought thee by lake -- let, I've sought thee __ _ on the hill;
	And in the pleasant wild -- wood, When winds blow cold and chill.
	I've sought thee in for -- est, I'm look -- ing heav'n -- ward, now,
	I've sought thee in for -- est, I'm look -- ing heav'n -- ward now.
	_(hum) __ Oh!  there 'mid_the star -- shine;
	I've sought thee in for -- est
	I'm look -- ing __ heav'n -- ward now,
	Oh! __ there a -- mid the star -- shine
	Alice I know, art thou!
}


upper = \relative c' {
	\key bf\major \time 3/4 \tempo "Moderato"
    \partial 8 f8
	<<{f4( bf4. c8 bf4 a2)}\\{d,2. ef2.}>> |
		<<{g4( g8 fs g a g4 f!4. <f f'>8)}\\{ef2. d2.}>> |
		<f f'>4 <d' d'>4.( <ef ef'>8) |
	<d d'>4 <c c'>4.( <bf bf'>8) | <bf bf'>4 <a a'>8( <g g'> <a a'> <f f'>) |
		<bf bf'>4_\markup{\italic "a tempo"} r r8 f | <<{f4( bf4. c8 bf4 a2)}\\{d,2. ef2.}>>
	<<{g4( \acciaccatura a16 g8 fs g a)}\\{ef2.}>> | <<{g4 f r8 f}\\{d2.}>> |
		<<{f4( d'4. ef8 d4 c4.) g8( bf4 a8 g a f)}\\{f2._\markup { \italic "cresc." } ef2. ef2.}>>
	<d bf'>4 r r8 f | <<{d'2.( ef2.) e2.( f2.)}\\
		{f,4 bf4. c8 bf4 a4. a8 g4 \acciaccatura a16 \stemDown g8( fs) g a g4( f4.) f8}>>
	<<{f4( f' ef8 d) d4( c4.) g8
		bf4( a8_\markup { \italic "dim." } g a f bf4)}\\
			{f2._\markup { \italic "cresc." } ef2. ef2. d4}>>
		r4 r8 bf'_\markup { \italic "Animato" \dynamic f } | <<{bf4( a4. d,8)}\\{c2.}>> |
	<<{a'4( g4.) g8}\\{d2.}>> | <d d'>4 <ef c'>8( <d bf'> <c a'> <bf g'>) |
		g'8( fs a4) r8 d, | <<{d'2.}\\{bf4( a4. d,8)}>>

	<<{d'2.}\\{a4( g4. g8)}>> | <fs ef'>8( <g d'> <a c> bf <a c> <g cs>) |
		<fs d'>8 <d d'> <d d'> <d d'>^^ <ef d'>^^ <e d'>^^	|
			<<{d'2.}\\{f,!4( bf4. c8)}>> |
	<<{ef2.( ef2) ef4}\\{bf4( a2) g4 g8( fs) g( a)}>> | <g ef'>4\( <f d'> r8 d' |
		<d f,>4( <c f,>4. <b f>8) |
	<b ef,>8( c) g4. c8\) | <<{<c ef,>4( bf8^^ a^^ g^^ f^^)}\\{s4 ef2}>> |
		<f f'>2. | <<{g4.( a8 bf c)}\\{ef,2.}>> |
	<<{f4.( g8 a bf)}\\{d,2.}>> | <f bf d>2 r8 f | <ef a c>2 r8 f |
		<d f bf>8 r <d' f bf>4 r8

}

lower = \relative c {
	\key bf\major \time 3/4 \partial 8
	r8^\p bf8( f' bf f bf f) | bf,( f' a f a f) | bf,( ef bf' ef, bf' ef,) |
		bf( f' bf f bf f) | g,( d' <f b> d <f b> d) |
	c8( g' <c ef> g <c ef> g) | f,(^\markup{\italic "dim. e. rit."} c' <ef a> c <ef a> c) |
		bf( f' <bf d> f <bf d> f) | bf,( f' bf f bf f) | bf,( f' a f a f) |
	ef,8( ef' bf' ef, bf' ef,) | bf( f' bf f bf f) |
		g,( d' <f b> d <f b> d) |
			c( g' c g c g) | f,( c' <f a>^\markup { \italic "dim." } c <f a> c) |
	bf8( f' <bf d> f <bf d> f) | bf,(^\mf f' bf f bf f) | c( f a f a f) |
		cs8( e <bf' cs> e, <bf' cs> e,) | d( f <bf d> f <bf d> f) |
	g,8( g' b g b g) | c,( g' c g c g) |
		f,( f' a f a f) |
			bf,8( f' <bf d> f <bf d> f) |
				d,( d' fs d fs d) |
	d,8( d' <g bf> d <g bf> d) | d,( d' <g bf> d <g bf> d) |d,( d' <fs c'> d <fs c'> d) |
		d,8(^\p d' <fs c'> d <fs c'> d) |
	d,8( d' <g bf> d <g bf> d) | d,8( d' <g bf> d <g bf> d) |
	<d fs a>4 r^\markup { \italic "rit." } r | bf8(^\p f' <bf d> f <bf d> f) |
	f,8( f' <a ef'> f <a ef'> f) | f,( f' <a ef'> f <a ef'> f) |
		bf,8( f' <bf d> f <bf d> f)	| b,^\f <g' d'> <g d'>	<g d'> <g d'> <g d'> |
	c,8 <g' c> <g c> <g c> <g c> <g c> | f, <f' a> <f a> <f a> <f a> <f a> |
		bf,8 <f' bf d> <f bf d> <f bf d>^\markup { \italic "dim." }
			<f bf d> <f bf d> | ef8(^\p g bf g bf g) |
	bf,8( f' bf f bf f) | f2 r4 | <f f,>2^\markup { \italic "rit." } r4 |
		bf,8^\markup { \italic "a tempo" } r <bf bf,>4 r8

}


\score {
  <<
    \new Voice = "mel" {
      \autoBeamOff
      \melody
    }
    \new Lyrics \lyricsto mel { \set stanza = "1." \textA }
    \new Lyrics \lyricsto mel { \set stanza = "2." \textB }
    \new PianoStaff <<
	  \new Staff = "upper" { \upper }
	  \new Staff = "lower" { \clef bass \lower }
    >>
  >>
  \layout {
    \context {
      \Staff
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi {
    \tempo 4 = 90
  }
}
