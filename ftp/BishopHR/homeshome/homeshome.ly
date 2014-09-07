\include "english.ly"
\version "2.18.2"
%#(set-global-staff-size 17)

\header {
  title = "Home, Sweet Home"
  subsubtitle ="from Clari, the Maid of Milan (1821)"
  composer = "Sir Henry Rowley Bishop(1786-1855)"
  mutopiacomposer = "BishopHR"
  poet = "J. H. Payne (1792-1852)"
  instrument = "Voice and Piano"
  date = "1852"
  source = "Not known"
  license = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  mutopiastyle = "Song"

 footer = "Mutopia-2014/09/07-435"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}
\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = 7\mm
  top-markup-spacing.basic-distance = #4
  markup-system-spacing.basic-distance = #13
  last-bottom-spacing.basic-distance = #14
  bottom-margin = 6\mm
}

melody = \relative c' {
	\key f\major \time 4/4
	\partial 4 f8.^\markup {\column {\bold \large "Andante" \dynamic p }}( g16)
%% 1-3
	a4.( bf8) bf4.^\< c8 \!| c4.^\> a8 a4(\! c) | bf4.( a8) bf4 g |
%% 4-6
	a2. f8. g16 | a4.( bf8) bf4.^\< c8\! | c2^\> a4\! c |
%% 7-9
	bf4.( a8) bf4 g | f2 r4 c'8\( c\) | f4.(^\mf e8) d4. c8 |
%% 10-12
	c2 a4 c | bf4.( a8) bf4^\> g\! | a2. c8\(^\< c\)\! |
%% 13-15
	f4.^\f( e8) d4. c8 | c2 a4 c | c bf2^\> g4\! |
%% 16-18
	f2. r4 | c'1^\p | bf2( g) |
%% 19-21
	f4^\< r g\! r | a2^\mf r4^\> c\! | f4.^\f( e8) d4. c8 |
%% 22-24
	c2 a4 c | bf4.^\>( a8) bf4 g\! | f2. \bar "|."
}

textA = \lyricmode {
	_'Mid pleas -- ures and pal -- a -- ces __ though __ we may roam,
	Be it ev -- er so hum -- ble there's no __ place like home.
	A __ _ charm __ from the skies seems to hal -- low us there,
	Which, _ seek __ thro' the world is ne'er met with else -- where.
}

textB = \lyricmode {
	I __ gaze __ on the moon as I __ tread __ the drear wild,
	And __ _ feel __ that my moth -- er now thinks __ of her child.
	As she looks __ on that moon from our own __ cot -- tage door,
	Thro' the wood -- bine whose fra -- grance shall cheer me no more.
%% chorus
	Home, Home, __ Home sweet home.
	There's no __ place like home,
	Oh, there's no __ place like home.
}

textC = \lyricmode {
	An __ ex -- ile from home, splen -- dor daz -- zles in vain,
	Oh __ _ give me my low -- ly thatch'd cot -- tage a -- gain.
	The __ _ birds __ sing -- ing gai -- ly that came __ at my call,
	Give me them __ and that peace of mind dear -- er than all.

}

upper = \relative c' {
	\key f\major \time 4/4
	f8._\p^\markup {\bold \large "Andante"}( g16)
%% 1-3
	<a f>4.( bf8) <bf e,>4._\<( c8)\! | <c a>4._\>( a8) <a f>4(\! <c a>) |
		<bf e,>4.( a8 <bf e,>4 <g e>) |
%% 4-6
	<a f>2. f8.( g16) | <a f>4.( bf8) <bf e,>4.(_\< c8)\! |
		<c a>2(_\>( <a f>4\!) <c a> |
%% 7-9
	<bf e,>4.( a8 <bf e,>4 <g e>) | f2 r4 c'8 ~ c |
		<<{<f a,>4.( <e c>8 <d bf>4. <c a>8)}\\{f,1_\mf}>> |
%% 10-12
	<f a c>2( a4 <a c>) | <<{bf4.( a8 bf4_\> g\!)}\\{e1}>> |
		<a f c>2. <c f,>8(_\< c)\! |
%% 13-15
	<<{<f a,>4.( <e c>8 <d bf>4. <c a>8)}\\{f,1_\f}>> |
		<<{<c' a>2( a4 <c a>)}\\{f,1}>> | <c' a>4( <bf e,>2_\> <g e bf>4)\!
%% 16-18
	<f c a>2. r4 | <f a c>1_\p | <d g bf>2( <d g>) |
%% 19-21
	<f c>4_\< r <g c,>\! r | <a f c>2_\mf r4_\> c\1\! |
		<<{<f a,>4.(_\f <e c>8 <d bf>4. <c a>8)}\\{f,1}>> |
%% 22-24
	<<{<c' a>2( a4 <c a>)}\\{f,1}>> |
		\slurUp <bf e,>4.(_\> a8 <bf e,>4 <g e bf>)\! |
		<f c a>2.
}

lower = \relative c {
	\key f\major \time 4/4
	r4
%% 1-3
	f,8( c' f c) g( c g' c,) | f,8( c' f c) f,( c' f c) | g( c g' c,) g( c g' c,) |
%% 4-6
	f,8( c' f c) f,8( c' f c) | f,8( c' f c) g( c g' c,) |f,8( c' f c) f,( c' f c) |
%% 7-9
	g( c g' c,) c,( c' <e bf'> c) | <f a>( c a c f,4) r |
		f8( c' <f a> c) bf( f' <bf d> f) |
%% 10-12
	f,( c' <f a> c) f,( c' <f a> c) | g( c g' c,) g( c <e bf'> c) |
		f,( c' f e d c a g)
%% 13-15
	f( c' <f a> c) bf( f' <bf d> f) | f,( c' <f a> c) f,( c' <f a> c) |
		c,( c' g' c,) c,( c' g' c,) |
%% 16-18
	f( c a c f,4) r | r8 c'( f a c a f c) | r (bf d g bf g d bf) |
%% 19-21
	 <c f a>4 r <c e bf'> r | <f, f'>2 r | f8( c' <f a> c) (bf f' <bf d> f) |
%% 22-23
	 f,( c' <f a> c) f,( c' <f a> c) | c,( c' <e bf'> c) c,( c' g' c,) |
	 	f( c a c f,4)
}

\score {
  <<
    \new Staff \with { midiInstrument = #"choir aahs" } <<
      \new Voice = "mel" {
        \autoBeamOff
        \melody
      }
      \lyricsto mel  \new Lyrics  { \set stanza = "1." \textA }
      \lyricsto mel  \new Lyrics  { \set stanza = "2." \textB }
      \lyricsto mel  \new Lyrics  { \set stanza = "3." \textC }
    >>

    \new PianoStaff \with { midiInstrument = #"acoustic grand" } <<
      \new Staff = "upper" \upper
      \new Staff = "lower" <<
        \clef bass
        \lower
      >>
    >>
  >>
  \layout { }
  \midi {
    \tempo 4 = 90
  }
}
