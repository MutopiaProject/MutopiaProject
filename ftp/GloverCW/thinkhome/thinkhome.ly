\version "2.18.2"

\include "english.ly"
#(set-global-staff-size 16)

\header {
  title = "Do They Think of Me At Home?"
  subsubtitle =""
  composer = "Charles W. Glover (1797-1868)"
  poet = "J. E. Carpenter"
  instrument = "Voice and Piano"
  opus = "circ. 1851"
  source = ""
  license = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  mutopiacomposer = "GloverCW"
  mutopiaopus = " "
  mutopiadate = "c. 1851"
  mutopiastyle = "Song"
  mutopiasource = "Not known"

 footer = "Mutopia-2014/11/13-437"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

melody = \relative c'' {
	\key f\major \time 3/4
	\partial 4 a8^\p^\markup {\large "Andante"
		\smaller \italic "With feeling"} bf
%% 1-3
	a4. g8 a g | f2 g8 f | e^\< d'4.\! c8^\> g\! |
%% 4-6
	a2 a8 bf | a4. g8 a g | f2 f8 g |
%% 7-9	
	\tuplet 3/2 { a8^\<( c,) bf'\!} a4.^\> g8\! |
		f4. r8^\mf g f | e4. e8^\< f fs |
%% 10-12
	g2\! e8 c' | b4. d,8^\> f8. e16\! | c4( bf'!8)\fermata r^\p a bf |
%% 13-15
	a4. g8 a g |f2 g8 f | e4.^\< d'8\! c g |
%% 16-18
	a2 a8 bf | c4.^\< d8 a c\! | bf2^\mf a8 g |
%% 19-20
	f8^\> c a'4. g8\! | f2 \bar "|."
}

textA = \lyricmode {
	Do they think of me at home, Do they ev -- er think of me?
	I who shared their ev -- _ 'ry grief, I who min -- gled in their glee?
	Have their hearts grown cold and strange, To the one now doom'd to roam?
	I would give the world to know Do they think of me at home?
	I would give the world to know Do they think of me at home?
}

textB = \lyricmode {
	Do they think of me at eve, Of the song I used to sing?
	Is the harp I struck un -- touch'd, Does a stran -- ger wake the string?
	Will no kind for -- giv -- ing word, Come a -- cross the rag -- ing foam?
	Shall I nev -- er cease to sigh  “Do they think of me at home?”
	Shall I nev -- er cease to sigh  “Do they think of me at home?”
}

textC = \lyricmode {
	Do they think of how I loved, In my hap -- py, ear -- ly days?
	Do they think of him who came, But could nev -- er win their praise?
	I am hap -- py by his side, And from mine he'll nev -- er roam.
	But my heart will sad -- ly ask, “Do they think of me at home?”
	But my heart will sad -- ly ask, “Do they think of me at home?”
}

upper = \relative c'' {
	\key f\major \time 3/4
	\partial 4 <a f c>8(
		<bf f d>)
%% 1-3
	<a e c>4. <g e bf>8([ <a e c> <g e bf>)] | <f c a>2 <g c,bf>8( <f c a>) |
		<e bf>8(_\< <d'bf e,>4.)\! <c g e>8(_\> <g e>)\! |
%% 4-6
	<a f c>2 <a f c>8( <bf f d>) | <a e cs>4. g8([ <a e a,> g)] |
		<f d a>2 <f b,>8( <g f b,>) |
%% 7-9	
	\tuplet 3/2 { <a f c>8(_\< c, bf'!)\!} <<{ a4.(_\> g8\!)}\\{e2}>> |
		f4. r8\mf <g e>( <f d>) | <e c>4. <e c>8_\<[ <f d> <fs ds>] |
%% 10-12
	<g e>2\! <e c>8 <c' e, c> | <b f d>4. <d,b!>8_\>[ <f b,>8. e16\!] |
		c4( bf'!8)\fermata r8\p <a e c> <bf f d> |
%% 13-15
	<a e c>4. <g e bf>8[ <a e c> <g e bf>] | <f c a>2 <g c,>8 <f c> |
		<e bf>4._\< <d' bf e,>8[ <c e,>\! <g e>] |
%% 16-18
	<a f c>2 <a f c>8 <bf f c> | <<{ c4._\< d8[ a c\!]}\\{<fs, d>2 <fs d>4}>> |
		<d g bf>2\mf <bf f'! a>8 <bf f'g> |
%% 19-20
	<<{ <a f'>8_\> c a'4.( g8)\!}\\{s4 <e bf>2}>> | <f c a>2
}
	
lower = \relative c {
	\key f\major \time 3/4
	r4^\p^\markup {\bold \large "Andante"}
%% 1-3
	<c c,>4 <c c,> r | f( f,) r | <c' c,> <c c,> r |
%% 4-6
	f( f,) r | <a a,>2 <cs cs,>4 | <d d,> <d d,>( <df df,>) |
%% 7-9
	<c c,> <c c'>4. <d bf'>8 | <f a>4( f,8) r r4 | <c' g'>2 <c g'>4 |
%% 10-12
	<c g'>2 <c g'>4 | <g g'> <g g'> <g g'> | <c e g>4.\fermata r8 r4 |
%% 13-15	
	<c c,>4 <c c,> r | f( f,) <e e'>8 <f f'> | <g g'>4( c) c |
%% 16-18
	f( f,) r | <d d'> <d d'> r | <g g'>2 <df df'>4 |
%% 19-20
	<c c'> <c c'>2 | <f f'>
}

\score {
  <<
    \new Voice = "mel" {
      \autoBeamOff
      \melody
    }
    \lyricsto mel  \new Lyrics  { \set stanza = "1." \textA }
    \lyricsto mel  \new Lyrics  { \set stanza = "2." \textB }
    \lyricsto mel  \new Lyrics  { \set stanza = "3." \textC }

    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" <<
        \clef bass
        \lower
      >>
    >>
  >>

  \layout {
    \context {
      \Lyrics
      % Some space before, between and after the lyrics
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.minimum-distance = #6
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = #4
      \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.minimum-distance = #6
    }
  }

  \midi {
    \tempo 4 = 76
  }
}
