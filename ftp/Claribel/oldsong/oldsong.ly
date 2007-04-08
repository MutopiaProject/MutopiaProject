\paper{ papersize = "letter" 
	linewidth = 165 \mm
	indent = 8 \mm
%	interscoreline = 4.0 \mm
}

\include "english.ly"
\version "2.1.31"
#(set-global-staff-size 17)

\header {
  title = "I Cannot Sing the Old Songs"
  composer = "Claribel (1830-1869)"
  poet = "Claribel (Charlotte Alington Barnard)"
  instrument = "Voice and Piano"
  opus = "1868"
  source = ""
  copyright = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  lastupdated = "3/9/2004"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/03/09-431"
}
  
melody = \notes\relative c' {
	\key g\major \time 2/4 \partial 8
 	d8^\markup {\column <\bold \large "Moderato" \dynamic mf >} b' a a8. g16 |
		g4 fs8^\< c'\! | c^\> e, fs8. e16\! | d4. b'8 |
	b8 a a g | g4^\< fs8 c'\! | c b^\> b8. a16\! | g4. g8 |
	g8^\mf fs fs e' | e d b g | b^\< a a g\! | 
		g^\>\melisma fs e\melismaEnd d\! |
	b' a a8. g16 | g4^\< fs8 c'\! | c^\> e, fs8. e16\! | d4. d8 |
	b'8^\markup { \italic "cresc." } c d ds | 
		fs\melisma e\melismaEnd g,8.^\markup { \italic "dim." } a16 | 
		b8 d, b'8. a16 | g4. \bar "|."
}


textA = \lyrics {  
	I can -- not sing the old songs, I sung long years a -- go
	For heart and voice would fail me, And fool -- ish tears would flow;
	For by -- gone hours come o'er my heart, with each fa -- mil --iar strain __
	I can -- not sing the old songs, Or dream those dreams a -- gain,
	I can -- not sing the old songs, Or dream those dreams a -- gain.
}

textB = \lyrics { 
	I can -- not sing the old songs, Their charm is sad and deep;
	Their mel -- o -- dies would wa -- ken Old sor -- rows from their sleep;
	And though all un -- for -- got -- ten still, and sad -- ly sweet they be, __
	I can -- not sing the old songs, They are too dear to me,
	I can -- not sing the old songs, They are too dear to me.
}

textC = \lyrics { 
	I can -- not sing the old songs, For vis -- ions come a -- gain, 
	Of gold -- en dreams de -- part -- ed And years of wea -- ry pain;
	Per -- haps when earth -- ly fet -- ters shall have set my spir -- it free, __
	My voice may know the old songs, For all e -- ter -- ni -- ty,
	My voice may know the old songs, For all e -- ter -- ni -- ty.
}

upper = \notes\relative c' {
	\key g\major \time 2/4 \partial 8
 	d8 b'( a a8. g16) |
		g4( fs8) c' | <c fs,>( e, fs8. e16) | d4. <d b'>8 |
	<d b'>8( <c a'> <c a'> g') | <<{g4 fs8 c'}\\{c,4. e8}>> | 
		<e c'>( <d b'> <d b'>8. <c a'>16) | <b g'>4. g'8 |
	<g e>8(\mf <fs ds> <g e> <c e>) | <<{e d b g}\\{<g b>4( g8) r}>> |
		<<{ b8( a) a( g)}\\{e2}>> | <<{g8( fs e d)}\\{c!2}>>
	<d b'>8( <c a'> <c a'>8. g'16) | <g c,>4( <fs c>8) c' |
		<c e,>8( <e, c> <fs d>8. <e c>16) | d4. d8 |
	<g b>8( <fs c'> <g d'> ds') |
		<<{fs e}\\{<c g>4}>> <g e>8. a16 |
		<b! g d>8 d, <<{b'8. a16}\\{<fs c>4}>> | <g d b>4.
}

lower = \notes\relative c {
	\key g\major \time 2/4 \partial 8
	r8^\markup {\column <\bold \large "Moderato" \dynamic mf >} g([ d' <g b> d)] | a([ d <fs c'>^\< d)]\! | 
		d,([^\> d' <fs c'> d)]\! | g,([ d' <g b>)] r |
	g,8([ d' g d)] | a([^\< d a' d,)]\! | d,([ d'^\> <fs c'> d)]\! | <g g,>([ d g)] r |
	c,([ g' c g)] | d([ g b d,)] | c(^\< <e g>) cs( <e a>)\! | 
		<<{a2}\\{\slurUp d,8[^\> d( e fs)]\!}>> |
	g,8([ d' g d)] | a([^\< d a' d,)]\! | a([^\> d a' d,)]\! | g, <gs' b>([ <a c>)] r |
	<g g,>8^\markup { \italic "cresc." } <a a,> <b b,>4 | 
		<c c,> <bf cs,>8.^\markup { \italic "dim." } r16 | <d, d,>4 <d d,> | g,8([ d' g,)] 
}

\score {
  <<
      \context Voice = mel {
	  \autoBeamOff
	  \melody
      }
		\lyricsto mel \new Lyrics \lyrics { \set stanza = "1." \textA }
		\lyricsto mel \new Lyrics \lyrics { \set stanza = "2." \textB }
		\lyricsto mel \new Lyrics \lyrics { \set stanza = "3." \textC }
					
      \context PianoStaff <<
	  \context Staff = upper \upper
	  \context Staff = lower <<
	      \clef bass
	      \lower
	  >>
      >>
  >>
  \paper {
      \context { \RemoveEmptyStaffContext }
  }  
  \midi { \tempo 4=60 }  
}
