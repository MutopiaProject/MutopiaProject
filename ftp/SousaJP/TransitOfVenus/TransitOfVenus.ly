\version "2.11.45"

\header {
	title = "TRANSIT OF VENUS MARCH."
	composer = "JOHN PHILIP SOUSA."
	
	mutopiatitle = "Transit of Venus March"
	mutopiacomposer = "SousaJP"
	mutopiainstrument = "Piano"
	date = "20 Aug 1896"
	source = "J. W. Pepper 1896"
	style = "March"
	copyright = "Public Domain"
	maintainer = "George Macon"
 footer = "Mutopia-2008/05/13-1410"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Original available at http://lcweb2.loc.gov/diglib/ihas/loc.natlib.ihas.100010997/default.html

mBreak = { } % Manuscript Break

\paper {
	ragged-last-bottom = ##f
}

upper = \relative g'' {
	\clef treble
	\key g \major
	\time 6/8
	
	% Introduction
	<g g'>8 <fis fis'> <e e'> <d d'> <e e'> <fis fis'> |
	<g g'> <fis fis'> <e e'> <d d'> <e e'> <d d'> |
	<cis cis'> <d d'> <cis cis'> <c c'> <b b'> <a a'> |
	<g g'>4 r8 d' e d \mBreak
	
	% First Strain
	\repeat "volta" 2 {
		cis=''4->( d8) <b g>4 <b g>8 |
		<b g>4 <b g>8 <b g> e d |
		cis4->( d8) <a fis>4 <a fis>8 |
		<a fis>4 <a fis>8 a d a' | \mBreak
		<a, c g'>4 <a c g'>8 <a c g'>4 <a c fis>8 |
		<a c fis>4 <a c fis>8 <a c fis>4 <c e>8 |
		<c e> <d fis> <e g> <d fis>4 <c e>8 |
		<b d>4. b8 e d |
		cis4->( d8) b4 b8 | \mBreak
		b4 b8 b e d |
		cis4->( d8) a4 a8 |
		a4 a8 a d fis |
		a4 b8 a fis d | \mBreak
		a d fis a b bis |
		cis4 b8 a g e |
	}
	\alternative {
		{ d4. d8 e d | }
		{ d4 d8 d cis d | \mBreak }
	}
	
	% Second Strain
	\repeat "volta" 2 {
		e=''4 d8 c' b a |
		g4 a8 b a g |
		fis g a fis4 e8 |
		d4. d8 e d |
		<c fis,>4( d8) <b g>4( d8) | \mBreak
		<c fis,>4( d8) <b g>4( d8) |
		<c fis,>4( d8) <fis c a>4( e8) |
		<d b>4. d8 g b |
		e,4 d8 c' b a |
		g4 a8 b a g |
		fis g a fis4 e8 | \mBreak
		d4. d8 e d |
		<c fis,>4( d8) <b g>4( d8) |
		<c fis,>4( d8) <b g>4( d8) |
		c d e fis4 d8 |
	}
	\alternative {
		{ g4 d8 d cis d | }
		{ g4 r8 <g d b g>4-> r8 | \mBreak }
	}
	
	% Trio
	\key c \major
	
	<e,=' e'>4. <e e'> |
	<e e'> <e e'> |
	<g g'> <fis fis'> |
	<f f'> <e e'> | \mBreak
	<f d'> <f d'> |
	d'8 e4 ~ e d8 |
	c c'4 ~ c a8 |
	g4. <g d b>4 f8 |
	<e, e'>4. <e e'> |
	<e e'> <e e'> | \mBreak
	<g g'> <fis fis'> |
	<f f'> <e e'> |
	<f a d> <f a d> |
	d'8 e4 ~ e d8 |
	<e, g c>2. ~ |
	<e g c>4 c'8 c4 c8 | \mBreak
	
	\key des \major
	des4. des |
	des des |
	des aes' |
	f des |
	c8( c'4 ~ c) c8 | \mBreak
	<c, c'>4. <c bes'> |
	<des f aes>2. ~ |
	<des f aes>4. aes'4 aes8 |
	<f aes des>4. <f aes des> |
	<ges aes c> <ges aes c> | \mBreak
	<des g bes> <des g bes> |
	<c f aes> <c f aes> |
	<c ees g> <c ees g> |
	<c f aes> <c ees aes> |
	<b d g>4 g'8-> g4-> g8-> | \mBreak
	ges4-> ges8-> ges4-> ges8-> |
	
	\key c \major
	<e e'>4.-> <e e'>-> |
	<e e'>-> <e e'>-> |
	<g g'>-> <fis fis'>-> |
	<f f'>-> <e e'>-> | \mBreak
	<d d'>-> <d d'>-> |
	<d d'>8 <e e'>4 ~<e e'> <d d'>8 |
	c8 c'4 ~ c a8 |
	g4. <g g'>4 <f f'>8 |
	<e e'>4.-> <e e'>-> |
	<e e'>-> <e e'>-> | \mBreak
	<g g'>-> <fis fis'>-> |
	<f f'>-> <e e'>-> |
	<d d'>-> <d d'>-> |
	<d d'>8 <e e'>4 ~ <e e'> <d d'>8 |
	<c c'>2. ~ |
	<c c'>4. <c e g c>4-> r8_\markup{ \center-align { \italic Fine. } } |
}

lower = \relative g {
	\clef bass
	\key g \major
	\time 6/8
	
	% Introduction
	<g g'>8 <fis fis'> <e e'> <d d'> <e e'> <fis fis'> |
	<g g'> <fis fis'> <e e'> <d d'> <e e'> <d d'> |
	<cis cis'> <d d'> <cis cis'> <c c'> <b b'> <a a'> |
	<g g'>4 r8 r4 r8 \mBreak
	
	% First Strain
	\repeat "volta" 2 {
		g=,4 <d' g b>8 d4 <d g b>8 |
		g,4 <d' g b>8 d4 <d g b>8 |
		a4 <fis' a c>8 d4 <fis a c>8 |
		a,4 <fis' a c>8 d4 <fis a c>8 | \mBreak
		a,4 <fis' a c>8 d4 <fis a c>8 |
		a,4 <fis' a c>8 d4 <fis a c>8 |
		a,4 <fis' a c>8 d4 <fis a c>8 |
		g,4 <d' g b>8 d4 <d g b>8 |
		g,4 <d' g b>8 d4 <d g b>8 | \mBreak
		g,4 <d' g b>8 d4 <d g b>8 |
		a4 <fis' a d>8 d4 <fis a d>8 |
		d4 <fis a d>8 <fis a d>4 <fis a d>8 |
		d4 <fis a d>8 <fis a d>4 <fis a d>8 | \mBreak
		d4 <fis a d>8 <fis a d>4 <fis a d>8 |
		e4 <g a cis>8 a,4 <e' g a cis>8 |
	}
	\alternative {
		{ <fis a d>4. <d fis a c> | }
		{ <fis a d>4 r8 r4 r8 | \mBreak }
	}
	
	% Second Strain
	\repeat "volta" 2 {
		a,=,4 <d fis c'>8 d,4 <d' fis c'>8 |
		g,4 <d' g b>8 d,4 <d' g b>8 |
		a4 <d fis c'>8 d,4 <d' fis c'>8 |
		g,4 <d' g b>8 <d g b>4 <d g b>8 |
		<d fis a c>4 <d fis a c>8 <d g b>4 <d g b>8 | \mBreak
		<d fis a c>4 <d fis a c>8 <d g b>4 <d g b>8 |
		a4 <d fis c'>8 d,4 <d' fis c'>8 |
		g,4 <d' g b>8 <d g b>4 <d g b>8 |
		a4 <d fis c'>8 d,4 <d' fis c'>8 |
		g,4 <d' g b>8 d,4 <d' g b>8 |
		fis,4 <d' fis c'>8 d,4 <d' fis c'>8 | \mBreak
		<g, g'>4 <d' g b>8 <d g b>4 <d g b>8 |
		<d fis a c>4 <d fis a c>8 <d g b>4 <d g b>8 |
		<d fis a c>4 <d fis a c>8 <d g b>4 <d g b>8 |
		a4 <d fis c'>8 d,4 <d' fis c'>8 |
	}
	\alternative {
		{ <d g b>4 r8 r4 r8 | }
		{ <d g b>4 r8 <g, g'>4-> r8 | \mBreak }
	}
	
	% Trio
	\key c \major
	
	c=8[ r <e g c>] b[ r <e gis d'>] |
	a,[ r <e' a c>] g,[ r <g' c>] |
	g,[ r <g' b d>] a,[ r <a' c d>] |
	b,[ r <g' b d>] c,[ r <g' c>] | \mBreak
	f4 <f a d>8 <f a d>4 <f a d>8 |
	<g g,>4 <g b f'>8 <g b f'>4 <g b f'>8 |
	<g c e>4. <fis a c dis> |
	<g c e> <g g,> |
	c,8[ r <e g c>] b[ r <e gis d'>] |
	a,[ r <e' a c>] g,[ r <g' c>] | \mBreak
	g,[ r <g' b d>] a,[ r <a' c d>] |
	b,[ r <g' b d>] c,[ r <g' c>] |
	f4 <f a d>8 <f a d>4 <f a d>8 |
	<g g,>4 <g b f'>8 <g b f'>4 <g b f'>8 |
	<c, c'>4 <a a'>8 <g g'>4 <e e'>8 |
	<c c'>4 r8 r4 r8 | \mBreak
	
	\key des \major
	des'4 <aes' des f>8 <aes des f>4 <aes des f>8 |
	des,4 <aes' des f>8 <aes des f>4 <aes des f>8 |
	des,4 <aes' des f>8 aes,4 <aes' des f>8 |
	des,4 <aes' des f>8 aes,4 <aes' des f>8 |
	c,4 <aes' c ges'>8 aes,4 <aes' c ges'>8 | \mBreak
	aes,4 <aes' c ges'>8 <aes c ges'>4 <aes c ges'>8 |
	<des,, des'>4 <ees ees'>8 <f f'>4 <ges ges'>8 |
	<aes aes'>4. <aes' c ees ges> |
	des,4 <aes' des f>8 <aes des f>4 <aes des f>8 |
	ees4 <aes c ges'>8 <aes c ges'>4 <aes c ges'>8 | \mBreak
	e4 <bes' des e>8 <bes des e>4 <bes des e>8 |
	f4 <f aes c>8 <f aes c>4 <f aes c>8 |
	<g, g'>4. <g g'> |
	<f f'> <fis fis'> |
	<g g'>-> <f f'>-> | \mBreak
	<d d'>-> <g g'>-> |
	
	\key c \major
	<c c'>4 <g' c e>8 <b, b'>4 <gis' b d>8 |
	<a, a'>4 <e' a c>8 <g, g'>4 <g' c e>8 |
	<g, g'>4 <g' b f'>8 <a, a'>4 <c' d fis>8 |
	<b, b'>4 <g' d' f>8 <c, c'>4 <g' c e>8 | \mBreak
	<f, f'>4 <f' a d>8 <f a d >4 <f a d>8 |
	<g, g'>4 <g' b f'>8 <g b f'>4 <g b f'>8 |
	<c, c'>4. <fis a c ees> |
	<g c e> <g b d f> |
	<c, c'>4 <g' c e>8 <b, b'>4 <gis' b d>8 |
	<a, a'>4 <e' a c>8 <g, g'>4 <g' c e>8 | \mBreak
	<g, g'>4 <g' b f'>8 <a, a'>4 <c' d fis>8 |
	<b b,>4 <g d f>8 <c c,>4 <g c e>8 |
	<f f,>4 <f a d>8 <f a d>4 <f a d>8 |
	<g g,>4 <g b d f>8 <g b d f>4 <g b d f>8 |
	<g c e>4 <g g,>8 <a a,> <g g,> <e e,> |
	<c c,>4. <c c'>4-> r8 |
}

dynamics = {
	% Introduction
	s2.\ff\< s2 s8 s\! s2.\> s4\! s8 s4\mf s8 |
	
	% First Strain
	\repeat "volta" 2 {
		s2.*4
		s4\ff s8 s4. s4\< s8 s4 s8\! s8\> s4 s4. s4.\! s4. s4\f s8 s4.
		s2.*4
		s2.*2
	}
	\alternative {
		{ s4. s8\mf s4 }
		{ s4 s8\< s s s\! }
	}
	
	% Second Strain
	\repeat "volta" 2 {
		s4\ff s2 s2.*3 s4\p s2
		s2.*3 s4\ff s2 s2.*2
		s2. s4\p s2 s2. s8\f s8 s2
	}
	\alternative {
		{ s4 s8\< s s s\! }
		{ s2. \bar "||" }
	}
	
	% Trio
	\break \mark "Trio"
	s8\mf s8 s2 s2. s8\< s2 s8\! s8\ff\> s2 s8\!
	s2.*6
	s8\< s2 s8\! s8\ff\> s2 s8 s4\! s2 s2.*3 \bar "||"
	s4\f s2 s2.*4
	s2.*5
	s2.*2 s4.\ff\< s s s\! s2.
	s2. \bar "||" s4.\ff s s2.*3
	s2.*6
	s2.*6 \bar "|."
	\once \override Score.RehearsalMark #'break-visibility = ##(#t #t #t)
	\mark \markup { \musicglyph #"scripts.ufermata" }
}

\score {
	\new PianoStaff <<
		\new Staff = "upper" { #(set-accidental-style 'piano-cautionary 'Score) \upper }
		\new Dynamics = "dynamics" \dynamics
		\new Staff = "lower" \lower
	>>
	\layout {
		\context {
			\type "Engraver_group"
			\name Dynamics
			\consists "Output_property_engraver"
			
			\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
			\override DynamicLineSpanner #'Y-offset = #0
			
			\consists "Script_engraver"
			\consists "Dynamic_engraver"
			\consists "Text_engraver"
			
			\override TextScript #'font-size = #2
			\override TextScript #'font-shape = #'italic
			
			\consists "Skip_event_swallow_translator"
			
			\consists "Axis_group_engraver"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}
\score {
	\new PianoStaff <<
		\new Staff = "upper" << {\unfoldRepeats \upper } {\unfoldRepeats \dynamics } >>
		\new Staff = "lower" << {\unfoldRepeats \lower } {\unfoldRepeats \dynamics } >>
	>>
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 360 8)
		}
	}
}
