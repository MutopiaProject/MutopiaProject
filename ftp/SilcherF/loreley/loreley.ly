\include "english.ly"
\version "2.19.15"

#(set-global-staff-size 17)

\layout{
%	line-width = 180 \mm
	indent = 8 \mm
%	interscoreline = 4.0 \mm
}

\header {
  title = "The Loreley"
  subsubtitle =""
  composer = "F. Silcher (1789-1860)"
  poet = "Heinrich Heine (1823)"
  instrument = "Voice and Piano"
  opus = "circ. 1837"
  source = ""
  license = "Public Domain"
  mutopiacomposer = "SilcherF"
  mutopiapoet = "H. Heine"
  mutopiadate = "c. 1837"
  mutopiastyle = "Song"
  mutopiasource = "Not known"
  mutopiaopus = " "
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"

 footer = "Mutopia-2015/01/16-438"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-margin = 6\mm                              %-minimum top-margin: 8mm
  top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing #'padding = #5
  markup-markup-spacing #'padding = #1.2
  bottom-margin = 10\mm
  ragged-bottom = ##f
}


% separate dynamics context is used between the piano staff
pdynamics = {
  \time 6/8
  \partial 8 s8\mf
  \override DynamicTextSpanner.style = #'none
  s2.*4 |
  s2.\mf s2.*4 | s4\cresc s2\! |
  s2. s4\dim s2\! | s4. s8\cresc s4\! | s2. | s4 s4\dim s4\! | s2.
}

melody = \relative c'' {
	\key d\major \time 6/8
    \tempo "Andante"
	\partial 8 a8\mf
%% 1-3
	a8. b16 a8 d cs b | a4. g4 g8 | fs4^\< fs8\! e^\> d e\! |
%% 4-6
	fs4. ~ fs8 r a | a8.^\mf( b16) a8 d cs b | a4. g4 g8 |
%% 7-9
	fs4 fs8 a( g) e | d4. ~ d8 r fs | e8.( cs16) e8 a e a |
%% 10-12
    \override DynamicTextSpanner.style = #'none
	cs4.^\cresc b4 b8\! | a4 a8 gs( a) b | a4.^\dim ~ a4 a8\! |
%% 13-15
	a8.( b16) a8 d( cs) b | a4( fs'8) e4 e8 | d4 d8 cs( b) cs |
%% 16-18
	d4. ~ d8 r \bar "|."
}

textA = \lyricmode {
	I know not what spell is en -- chant -- ing,
	That makes me sad -- ly in -- clined, __
	An old __ strange leg -- end is haunt -- ing,
	And will not leave __ my mind; __
	The day -- light slow -- ly is go -- ing,
	And calm -- ly flows __ the Rhine, __
	The moun -- tain's peak is glow -- ing,
	In eve -- ning's mel -- low shine.
}

textB = \lyricmode {
	The fair -- _ est maid is re -- clin -- ing,
	In daz -- zling beau -- _ ty there, __
	Her gild -- ed rai -- ment is shin -- ing,
	She combs her gold -- en hair; __
	With gold -- en comb __ _ she's comb -- ing,
	And as she combs __ she sings, __
	Her song __ a -- midst the gloam -- ing,
	A weird en -- chant -- ment brings. __
}

textC = \lyricmode {
	The boat -- _ man in __ _ his bo -- som,
	Feels pain -- ful long -- _ ings stir, __
	He sees __ not dan -- ger be -- fore him,
	But ga -- zes up __ at her; __
	The wat -- ers sure __ _ must swal -- low,
	The boat and him __ ere long, __
	And thus __ is seen the pow -- er,
	Of cru -- el Lor-e -- ley's song. __
}

upper = \relative c'' {
	\key d\major \time 6/8
	\partial 8 a8
%% 1-3
	<a fs>8.( b16 a8 <d b> cs b) | <a fs>4.( <g e>4) g8 |
		<fs d>4 fs8 <e cs>( d e) |
%% 4-6
	<fs d>4. ~ <fs d>8 r a | <a fs>8.( <b g>16 <a fs>8 <d b> <cs a> <b g>) |
		<a fs>4.( <g e>4) g8 |
%% 7-9
	<fs d>4( fs8 <a cs,>\( g\) e) | d4. ~ d8 r fs | <e cs>8.( cs16 e8 <a e> e a) |
%% 10-12
	<<{cs4.( b4 b8) }\\{<fs d>2.}>> | <<{a4( a8 gs a b)}\\{<e, cs>4. <e d>}>> |
		<<{a4. ~ a4 a8}\\{cs,8 <e cs> <fs d> <g! e> <fs d> <e cs>}>>
%% 13-15
	<a fs>8.( b16 <a fs>8 <d b> <cs a> <b g>) |
		<a fs>4( <fs' a,>8 <e b g>4 <e b g>8) |
		<<{d4( d8 cs b cs) } \\ {<a fs>4. <g e>4.}>>

	<d' fs, d>4. ~ <d fs, d>8 r
}

lower = \relative c {
	\key d\major \time 6/8
    \tempo "Andante"
	r8
%% 1-3
	d8( fs a) d,( g b) | d,( fs a) g,( b e) | a,( d a') a,( e' cs) |
%% 4-6
	d( fs a) d,( fs a) | d,( fs a) d,( g b) | d,( fs a) g,( b e) |
%% 7-9
	a,( d a') a,( e' cs) | <fs d>( a, d d,) r r | a'( e' a) cs,( a' e) |
%% 10-12
	d( fs b) d,( fs d) | e( a e) e( b' e,) | <e a,>2.
%% 13-15
	d,8( fs a) d,( g b) | d( fs a) g,( b g) | a( d fs) a,( e' a,) |

	d( a fs d) r
}

\score {
  <<
    \new Voice = "mel" {
	  \autoBeamOff
	  \melody
    }
    \new Lyrics \lyricsto mel { \set stanza = "1." \textA }
    \new Lyrics \lyricsto mel { \set stanza = "2." \textB }
    \new Lyrics \lyricsto mel { \set stanza = "3." \textC }

    \new PianoStaff <<
	  \new Voice = "upper" \upper
      \new Dynamics { \pdynamics }
	  \new Voice = "lower" <<
        \clef bass
        \lower
      >>
    >>
  >>
  \layout {
  }

  \midi {
    \tempo 4 = 76
  }
}
