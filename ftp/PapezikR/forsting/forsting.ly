\version "2.16.1"

%\markup \override #'(font-name . "Verdana")

\header {
	title = \markup { \fontsize #3 "Recuerdos" }
	composer = "Radan Papežík"
	mutopiatitle = "Recuerdos"
	mutopiacomposer = "PapezikR"
	mutopiaopus = "Op. 2"
	mutopiainstrument = "Guitar"
	date = "2003"
	source = "Original Composition"
	style = "Modern"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Vitr"
	maintainerEmail = "radanpapezik@centrum.cz"
	moreInfo = "I wrote this piece as a tribute to Sting after I had seen The South Bank Show with him playing Tárrega's Recuerdos de la Alhambra on his classical guitar."

 footer = "Mutopia-2013/03/09-1495"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}


\include "deutsch.ly"
#(set-global-staff-size 19)


noteTransparent = \once \override Voice.NoteHead #'transparent = ##t

guitarOne = {
	\time 3/4
	\clef treble
	\relative c'' {
		\key gis \minor
		s2.*4
		fis2.
		r2 gis4
		ais2 cis4
		h2.
		ais2 gis4
		fis2 e4		%10
		fis4. e8 dis cis
		h4 h e
		fis4. gis8[ ais fis]
		cis'2 h8 dis
		ais4. gis8 fis cis'
		h2 fis8 gis
		a2 gis4
		fis2 e4
		fis2.
		r2 e4		%20
		fis2.
		R2.
		gis2.
		a
		h4 r dis
		gis, fis8 e h'4
		gis2.
		g
		fis4. gis8 << a, dis >> fis
		e4 h dis8 e		%30
		fis2 e8 fis 
		gis2 fis8 gis
		gis2 fis8 gis
		ais2.
		h
		cis2 r8 fis
		<< fis,2 ais\fermata >> h,4\rest

		R2.
		
		\time 5/4 e8[ fis gis] e4 fis8( e4) fis \pageBreak
		\time 6/4 e8[ fis gis] e4 fis8[ e dis] \times 2/3 {e4 dis e}
		\time 5/4 e8[ fis gis] e4 fis8( e4) fis
		e8[ fis gis] e4 fis8( e4) h \break
		\time 3/4 << {gis'2 e4} {h'2 gis4} >>
		<< dis2. e fis >>
		gis2 fis8 gis
		<< fis2 ais >> h,4\rest
		
		\time 5/4 e8[ fis gis] e4 fis8( e4) fis \break
		\time 6/4 e8[ fis gis] e4 fis8[ e dis] \times 2/3 {e4 dis e}
		\time 5/4 e8[ fis gis] e4 fis8( e4) fis
		e8[ fis gis] e4 fis8( e4) h
		\time 3/4 << {gis'2 e4} {h'2 gis4} >>
		<< dis2. e fis >>
		\time 5/4 e8[ fis gis] e4 fis8( e4) fis
		\time 6/4 e8[ fis gis] e4 fis8[ e dis] \times 2/3 {e4 dis e}
		e8[ fis g] e4 fis8( e4) fis2
		\time 3/4 r2 r4
		\time 6/4 e8[ fis g] e4 fis8 e4 fis2
		\time 3/4 r2 r4
		\time 6/4 e8[ fis g] e4 fis8 e4 fis2
		\time 3/4 << g,2. a e' >>
		<< a, h fis' >>
		<< g,2. a e' >>
		<< ais,2 h fis' >> h,,8 ais'
		
		\noteTransparent e,8[ fis' h ais] cis, h'
		\noteTransparent gis,[ fis' h ais] h, ais'
		\noteTransparent e,8[ fis' h ais] cis, h'  \set subdivideBeams = ##t \set Voice.baseMoment = #(ly:make-moment 1 8)  \set Voice.beatStructure = #'(2 2 2 2)
		gis,32[ fis'' fis fis fis, fis' fis fis h, fis' fis fis ais, fis' fis fis h,, fis'' fis fis ais, fis' fis fis]
		e,,[ fis'' fis fis fis, fis' fis fis h, fis' fis fis ais, fis' fis fis cis, gis'' gis gis h, gis' gis gis]
		gis,,[ ais'' ais ais fis, ais' ais ais h, ais' ais ais ais, ais' ais ais h,, cis'' cis cis ais, cis' cis cis]
		e,,,[ h''' h h fis, h' h h h, h' h h ais, h' h h cis,, h'' h h h, h' h h]
		gis,,[ ais'' ais ais fis, ais' ais ais h, ais' ais ais ais, ais' ais ais h,, gis'' gis gis ais, gis' gis gis]
		e,,[ fis'' fis fis fis, fis' fis fis h, fis' fis fis ais, fis' fis fis cis, e' e e h e e e]
		gis,,[ fis'' fis fis fis, fis' fis fis h, fis' fis fis ais, e' e e h, dis' dis dis ais cis cis cis]
		e,,[ h'' h h gis h h h h h h h ais h h h cis, e' e e h e e e]
		gis,,[ fis'' fis fis fis, fis' fis fis h, fis' fis fis ais, gis' gis gis h,, ais'' ais ais ais, fis' fis fis]
		e,,[ cis''' cis cis fis,, cis'' cis cis h, cis' cis cis ais, cis' cis cis cis,, h'' h h h, dis' dis dis]
		gis,,,[ ais'' ais ais fis, ais' ais ais h, ais' ais ais ais, gis' gis gis h,, fis'' fis fis ais, cis' cis cis]
		e,,,[ h''' h h fis, h' h h h, h' h h ais, h' h h cis,, fis' fis fis h, gis' gis gis]
		d,[ a'' a a a, a' a a h, a' a a cis, a' a a a,, gis'' gis gis h, gis' gis gis]
		d,[ fis' fis fis cis fis fis fis h, fis' fis fis a, fis' fis fis e, e' e e h e e e]
		gis,,[ fis'' fis fis fis, fis' fis fis h, fis' fis fis ais, fis' fis fis h,, fis'' fis fis ais, fis' fis fis]
		e,,[ fis'' fis fis fis, fis' fis fis h, fis' fis fis ais, fis' fis fis cis, e' e e h e e e] \break
		gis,,[ fis'' fis fis fis, fis' fis fis h, fis' fis fis ais, fis' fis fis h,, fis'' fis fis ais, fis' fis fis]
		e,,[ fis'' fis fis fis, fis' fis fis h, fis' fis fis ais, fis' fis fis cis, fis' fis fis h, fis' fis fis]
		gis,,[ fis'' fis fis fis, fis' fis fis] ~ fis2 ~
		fis4 g\rest g\rest 
		R2.*2
		<< h,2. cis ais'\fermata >>
		<< h,2 cis ais'\fermata >> h,4\rest \bar "|."
	}
}

guitarTwo = \relative c'' {
	s2.*38
	g8\rest a[ h] g\rest a g4\rest g\rest a8
	g\rest a[ h] g\rest a g4\rest g8\rest s2
	a8\rest a[ h] g\rest a g4\rest a8 g\rest a
	f\rest a[ h] g\rest a g\rest g\rest a e4\rest
	s2.*4
	g8\rest a[ h] g\rest a g4\rest g\rest a8
	g\rest a[ h] g\rest a g4\rest g8\rest s2
	a8\rest a[ h] g\rest a g4\rest a8 g\rest a
	f\rest a[ h] g\rest a g\rest g\rest a \once \override Voice.Rest #'transparent = ##t e4\rest
	s2.*2
	g8\rest a[ h] g\rest a g4\rest g\rest a8
	g\rest a[ h] g\rest a g4\rest g8\rest s2
	g8\rest a[ h] g[ a fis g e fis d e c]
	d[ h c a h g]
	g'8\rest a[ h] g[ a fis g e fis d e c]
	d[ h c a h g]
	g'8\rest a[ h] g8\rest a g4\rest h8 g8\rest a g4\rest
	s2.*4
}

guitarThree = \relative c' {
	gis8[ fis' h ais] h,8[ ais']
	e,[ fis' h ais] cis, h'
	gis,[ fis' h ais] h, ais'
	e,[ fis' h ais] cis, h'
	\stemDown \noteTransparent gis,[ fis' h ais] h, ais'
	\noteTransparent e,[ fis' h ais] cis, h'
	\noteTransparent gis,[ fis' h ais] h, ais'
	\noteTransparent e,[ fis' h ais] cis, h'
	\noteTransparent gis,[ fis' h ais] h, ais'
	\noteTransparent e,[ fis' h ais] cis, h'		%10
	\noteTransparent gis,[ fis' h ais] h, ais'
	\noteTransparent e,[ gis' h ais] cis, h'
	\noteTransparent gis,[ fis' h ais] h, ais'
	\noteTransparent e,[ fis' h ais] cis, h'
	\noteTransparent gis,[ fis' h ais] h, ais'
	\noteTransparent e,[ fis' h ais] cis, h'
	\noteTransparent d,[ a' h cis] a, h'
	\noteTransparent d,[ cis' h a] e h'
	\noteTransparent gis,[ fis' h ais] h, ais'
	\noteTransparent e,[ fis' h ais] cis, h'		%20
	\noteTransparent gis,[ fis' h ais] h, ais'
	\noteTransparent e,[ fis' h ais] fis h
	\noteTransparent cis,[ h' e dis] e, e'
	\noteTransparent a,,[ h' e dis] fis, e'
	\noteTransparent cis,[ h' e dis] e,, e''
	\noteTransparent fis,,[ h' e dis] a, e''
	\noteTransparent cis,[ h' e dis] e, e'
	\noteTransparent a,,[ h' e dis] fis, e'
	\noteTransparent cis,[ h' e dis] e,, e''
	\noteTransparent fis,,[ gis' a gis]a, h'		%30
	\noteTransparent cis,[ h' e dis] e, e'
	\noteTransparent a,,[ h' e dis] fis, e'
	\noteTransparent ais,, cis' eis4 a,4 \rest
	\noteTransparent dis,8[ cis' fis eis] fis, fis'
	\noteTransparent h,,[ cis' fis eis] dis, fis'
	\noteTransparent gis,,[ h' fis' eis] h, fis'''
	s2.*2
	
	s1 s4
	s1.
	s1 s4
	s1 s4
	s2.*2
	\noteTransparent ais,,,8 cis' eis4 s4
	s2.
	s1 s4
	s1.
	s1 s4
	s1 s4
	s2.*2
	s1 s4
	s1.
	s1.
	s2.
	s1.
	s2.*6
}

guitarFour = \relative c' {
	\override Staff.NoteCollision #'merge-differently-headed = ##t
	gis2 h4
	e,2 cis'4
	gis2 h4
	e,2 cis'4
	gis2 h4
	e,2 cis'4
	gis2 h4
	e,2 cis'4
	gis2 h4
	e,2 cis'4		%10
	gis2 h4
	e,2 cis'4
	gis2 h4
	e,2 cis'4
	gis2 h4
	e,2 cis'4
	d2 a4
	d2 e4
	gis,2 h4
	e,2 cis'4		%20
	gis2 h4
	e,2 fis'4
	cis2 e4
	a,2 fis'4
	cis2 e,4
	fis2 a4
	cis2 e4
	a,2 fis'4
	cis2 e,4
	fis2 a4		%30
	cis2 e4
	a,2 fis'4
	ais,?2 s4
	dis2 f4
	h,2 dis4
	gis,2 h4
	<< cis2 h' >>  \pageBreak s4
	s2.
	
	fis,4. gis4 a h cis8
	fis,4. gis4 a4. \times 2/3 { << h4 h' >> cis, e}	%40
	dis4. cis4 h4. a4
	a4. gis4 fis4. e4
	<< fis'2 a >> gis4
	a2.
	ais,2 r4
	<< cis2 h' >> s4
	fis,4. gis4 a h cis8
	fis,4. gis4 a4. \times 2/3 { << h4 h' >> cis, e}
	dis4. cis4. h4. a8~
	a4 gis4. fis4. << e4 dis' >>	%50
	<< fis2 a >> gis4
	a2.
	fis,4. gis4 a h cis8
	fis,4. gis4 a4. \times 2/3 { << h4 h' >> cis, e}
	c2 s1
	s2.
	a2 s1
	s2.
	e4. fis4 g4. a4 h4
	c2.
	g
	c
	<< gis2 fis' >> h,4
	e,2 cis'4
	gis2 h4
	e,2 cis'4 \set Timing.beamExceptions = #'()
	gis8 fis' h ais h, ais'
	e, fis' h ais cis, h'
	gis, fis' h ais h, ais'
	e, fis' h ais cis, h'
	gis, fis' h ais h, ais'
	e, fis' h ais cis, h'
	gis, fis' h ais h, ais'
	e, gis' h ais cis, h'
	gis, fis' h ais h, ais'
	e, fis' h ais cis, h'
	gis, fis' h ais h, ais'
	e, fis' h ais cis, h'
	d, a' h cis a, h'
	d, cis' h a e h'
	gis, fis' h ais h, ais'
	e, fis' h ais cis, h'
	gis, fis' h ais h, ais'
	e, fis' h ais cis, h'
	gis, fis' h ais h, ais'
	e, fis' h ais cis, h'
	gis, fis' h ais h, ais'
	e, fis' h ais cis, h'
	<< gis,2. dis' >>
	<< gis,2 dis' >> s4
}

\paper {
	%#(set-paper-size "a4")
	print-page-number = ##t
}	

\score {
	
	
	\context Staff <<
		\set Staff.midiInstrument = #"acoustic guitar (nylon)"
%		\transposition c
		
		\new Voice { \voiceOne \guitarOne }
		\new Voice { \voiceTwo \guitarTwo }
		\new Voice { \voiceThree \guitarThree }
		\new Voice { \voiceFour \guitarFour }
	
	>>
	\midi { 
		\tempo 4 = 88
}
	\layout {}

	
}
