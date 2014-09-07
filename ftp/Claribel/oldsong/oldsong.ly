\include "english.ly"
\version "2.18.2"
#(set-global-staff-size 17)

\header {
  title = "I Cannot Sing the Old Songs"
  composer = "Claribel (1830-1869)"
  poet = "Claribel [C. A. Barnard (1830-1869)]"
  instrument = "Voice and Piano"
  date = "1868"
  source = "Not known"
  license = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  mutopiacomposer = "Claribel"
  mutopiastyle = "Song"

 footer = "Mutopia-2014/09/07-431"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

melody = \relative c' {
	\key g\major \time 2/4 \partial 8
 	d8 b' a a8. g16 |
		g4 fs8 c' | c e, fs8. e16 | d4. b'8 |
	b8 a a g | g4 fs8 c' | c b b8. a16 | g4. g8 |
	g8 fs fs e' | e d b g | b a a g |
		g\melisma fs e\melismaEnd d |
	b' a a8. g16 | g4 fs8 c' | c e, fs8. e16 | d4. d8 |
	b'8 c d ds |
		fs\melisma e\melismaEnd g,8. a16 |
		b8 d, b'8. a16 | g4. \bar "|."
}

% Added during update to 2.18
dynamics = {
  \override DynamicTextSpanner.style = #'none
  \partial 8 s8^\mf s2 s4 s8^\< s8\! s8^\> s4 s8\! s2 s2
  s8^\< s4 s8\! s8 s8^\> s8 s8\! s2 s2^\mf s2
  s8^\< s4 s8\! s8^\> s4 s8\! s2 s8^\< s4 s8\! s8^\> s4 s8\!
  \crescTextCresc \dimTextDim
  s2 s8^\< s4 s8\! s4 s8^\> s8\! s2 s4.
}

textA = \lyricmode {
	I can -- not sing the old songs, I sung long years a -- go
	For heart and voice would fail me, And fool -- ish tears would flow;
	For by -- gone hours come o'er my heart, with each fa -- mil --iar strain __
	I can -- not sing the old songs, Or dream those dreams a -- gain,
	I can -- not sing the old songs, Or dream those dreams a -- gain.
}

textB = \lyricmode {
	I can -- not sing the old songs, Their charm is sad and deep;
	Their mel -- o -- dies would wa -- ken Old sor -- rows from their sleep;
	And though all un -- for -- got -- ten still, and sad -- ly sweet they be, __
	I can -- not sing the old songs, They are too dear to me,
	I can -- not sing the old songs, They are too dear to me.
}

textC = \lyricmode {
	I can -- not sing the old songs, For vis -- ions come a -- gain,
	Of gold -- en dreams de -- part -- ed And years of wea -- ry pain;
	Per -- haps when earth -- ly fet -- ters shall have set my spir -- it free, __
	My voice may know the old songs, For all e -- ter -- ni -- ty,
	My voice may know the old songs, For all e -- ter -- ni -- ty.
}

upper = \relative c' {
	\key g\major \time 2/4 \partial 8
 	d8 b'( a a8. g16) |
		g4( fs8) c' | <c fs,>( e, fs8. e16) | d4. <d b'>8 |
	<d b'>8( <c a'> <c a'> g') | <<{g4 fs8 c'}\\{c,4. e8}>> |
		<e c'>( <d b'> <d b'>8. <c a'>16) | <b g'>4. g'8 |
	<g e>8( <fs ds> <g e> <c e>) | <<{e d b g}\\{<g b>4( g8) r}>> |
		<<{ b8( a) a( g)}\\{e2}>> | <<{g8( fs e d)}\\{c!2}>>
	<d b'>8( <c a'> <c a'>8. g'16) | <g c,>4( <fs c>8) c' |
		<c e,>8( <e, c> <fs d>8. <e c>16) | d4. d8 |
	<g b>8( <fs c'> <g d'> ds') |
		<<{fs e}\\{<c g>4}>> <g e>8. a16 |
		<b! g d>8 d, <<{b'8. a16}\\{<fs c>4}>> | <g d b>4.
}

lower = \relative c {
	\key g\major \time 2/4 \partial 8
	r8 g([ d' <g b> d)] | a([ d <fs c'> d)] |
		d,([ d' <fs c'> d)] | g,([ d' <g b>)] r |
	g,8([ d' g d)] | a([ d a' d,)] | d,([ d' <fs c'> d)] | <g g,>([ d g)] r |
	c,([ g' c g)] | d([ g b d,)] | c( <e g>) cs( <e a>) |
		<<{a2}\\{\slurUp d,8[ d( e fs)]}>> |
	g,8([ d' g d)] | a([ d a' d,)] | a([ d a' d,)] | g, <gs' b>([ <a c>)] r |
	<g g,>8 <a a,> <b b,>4 |
		<c c,> <bf cs,>8. r16 | <d, d,>4 <d d,> | g,8([ d' g,)]
}

\score {
  <<
    \new Staff = "melodystaff" \with {
      midiInstrument = #"choir aahs"
    } <<
      \tempo "Moderato"
      \new Dynamics \with {
        alignAboveContext = "melodystaff"
      } { \dynamics }
      \new Voice = "mel" {
        \autoBeamOff
        \melody
      }
      \lyricsto "mel" \new Lyrics  { \set stanza = "1." \textA }
      \lyricsto "mel" \new Lyrics  { \set stanza = "2." \textB }
      \lyricsto "mel" \new Lyrics  { \set stanza = "3." \textC }
    >>
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Dynamics \dynamics
      \new Staff = "lower" <<
        \clef bass
        \lower
      >>
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi {
    \tempo 4 = 60
  }
}
