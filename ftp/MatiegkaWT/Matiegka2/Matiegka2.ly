% Created on ddd mmm dd yyyy
\version "2.11.34"
%#(set-global-staff-size 17) 

\paper {
%	#(set-paper-size "a4")
%	#(set-paper-size "letter")
	left-margin = 0.75 \in
	line-width = 7.0 \in
	between-system-padding = #2.0
	between-system-space = #2.0
	ragged-last-bottom = ##t 
	ragged-bottom = ##f
}

\header {
	title = "Nº. 2. Rondo"
	subtitle = ""
	subsubtitle = "From '24 Pieces Progressives pour La Guitarre'"
	composer = \markup{
		\column{"Wenzel Thomas Matiegka" "(1773-1830)"}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 2. Rondo"
 mutopiacomposer = "MatiegkaWT"
 mutopiapoet = ""
 mutopiaopus = ""
 mutopiainstrument = "Classical Guitar"
 date = "unk"
 source = "Boije collection #345"
 style = "Classical"
 copyright = "Public Domain"
 maintainer = "Stan Sanderson"
 moreInfo = "The Boije collection is found at http://www.muslib.se/ebibliotek/boije/"
 footer = "Mutopia-2007/10/23-1077"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%
%% Source & comments
%%	W. T. Matiegka was born in Choceň, Bohemia and died in Leopoldstadt.
%%	He composed 33 guitar work in addition to works for other instruments.
%%
%%	This piece is #345 in the Boije collection and is in the public domain
%%	<http://www.muslib.se/ebibliotek/boije/>
%%	Publisher unknown (illegible)
%%
%%	Carl Boije (1849-1923) was an amateur guitarist whose vast collection
%%	was donated to the State Library of Sweden after his death. Many of
%%	the works in that collection have check marks which, one presumes, are
%%	an indication of his personal preference. This piece is one of those
%%	so marked. 
%%
%%	The dynamic markings for the most part follow the style of the 
%%  original score.
%%
%%%%%%%%%%%%%%%%%%%%

\include "english.ly"

%%%% shortcuts
%  fingering orientations
	sfol = \set fingeringOrientations = #'(left)
	sfor = \set fingeringOrientations = #'(right)
	sfod = \set fingeringOrientations = #'(down)
	sfou = \set fingeringOrientations = #'(up)

%  string number orientations
	ssnol =  \set stringNumberOrientations = #'(left)  %(down right up)
	ssnou =  \set stringNumberOrientations = #'(up)
	ssnod =  \set stringNumberOrientations = #'(down)
	ssnor =  \set stringNumberOrientations = #'(right)

%  position indicators
	II = \markup {\smaller "II"}
	IIa = \markup {\smaller \hspace #2.0 \bold "CII"}
	III = \markup {\smaller  "III"}
	IV = \markup {\smaller  "IV"}
	V = \markup {\smaller  "V"}
	VII = \markup {\smaller  "VII"}
	VIII = \markup {\smaller  "VIII"}
%% (alternates A)
	loc = \markup{\smaller"loco."}
	bpos = \markup{\smaller"2 pos:"}
	cpos = \markup{\smaller"3 pos:"}
	dpos = \markup{\smaller"4 pos:"}
	epos = \markup{\smaller"5 pos:"}
	gpos = \markup{\smaller"7 pos:"}
	ipos = \markup{\smaller"9 pos:"}
	eposd = \markup{\smaller\column{"5 pos:" "dol:"}}
	
%% Barres
%% use \startTextSpan and \stopTextSpan following barre number indication
	dash = {   
	\override TextSpanner  #'dash-period = #1.0
	\override TextSpanner  #'dash-fraction = #0.5 }
	tsdn = \textSpannerDown
	tsup = \textSpannerUp
	tsB = \override TextSpanner #'bound-details #'left #'text = 			\markup{\smaller "CII "}
	tsC = \override TextSpanner #'bound-details #'left #'text = 			\markup{\smaller "CIII "}
	tsD = \override TextSpanner #'bound-details #'left #'text = 			\markup{\smaller "CIV "}
	tsE = \override TextSpanner #'bound-details #'left #'text = 			\markup{\smaller "CV "}
	tsF = \override TextSpanner #'bound-details #'left #'text = 			\markup{\smaller "CVI "}


% miscellaneous and reminders
	harm = \once \override NoteHead #'style = #'harmonic 
	octavado = \markup { \smaller \italic "arm. 12" }
	octavados= \markup {\smaller\italic\column {"arm." "12" }}
	%\mark \markup {\smaller \smaller \musicglyph #"scripts.segno"}
	%\markup {\smaller \vcenter "to" \hspace #0.7 \smaller \vcenter 		\musicglyph #"scripts.coda"}
	% \arpeggioUp \arpeggio
	%segn = \markup { \smaller \vcenter "to" \hspace #0.7 \vcenter 			\smaller \musicglyph #"scripts.segno" }
	dc = \markup{\smaller\bold "D.C."}
	dol = \markup { \smaller "dol."}
	I = \once \override NoteColumn #'ignore-collision = ##t
	atemp = \markup{\smaller"a tempo"}
	rit = \markup{\smaller"ritar:"}
	cres = \markup{\smaller\italic"cresc:"}
	cress = \markup{\tiny\italic"cresc:"}
% right-hand fingering...
	dotI = \markup{\small"."}
	dotII = \markup{\small"："}
	dotIII = \markup{\bold\small"⋮"}

%% End shortcuts




upper = {
	\relative c''{
	\repeat volta 2 {
		\mark\markup{\smaller\smaller Allegretto}
		\once \override DynamicText #'extra-offset = #'(-2.0 . 3.0)
		e,16_\p	g c e g8 g |
		\acciaccatura {\slurDown g} f f d4 |
%% following measure places the grace slur on the top note.				
		e8_\f c
		<<{\oneVoice \acciaccatura{\slurDown\stemUp g'} 
		\stemUp  f[ \I e]}\\
		{\stemUp \autoBeamOff \I <b g>4*1/2 <c g>4*1/2}>> 
%% crude, but it works.
		<d g,> b g r |
		\once \override DynamicText #'extra-offset = #'(-2.0 . 3.0)
		e16_\p	g c e g8 g |
		
		\slurDown g16( f) e( f) d4 |
		<e g,>8[ <c g> <d a> <b f>] |
		<c e,> <e g,>_\p <c e,>4 |
		}
	\repeat volta 2 {
		\once \override DynamicText #'extra-offset = #'(-2.0 . 3.0)
		<d g,>8_\p <d g,> <d g,>4 |
		<e g,>8 <e g,> <e g,>4 |
		<f b, g>8[ <f b, g> <e c g> <e c g>] |
		
		<d g,>16 c( b) a g8. g16 |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 4.5)
		<d' g,>8_\f <d g,> <d g,>4 |
		<e g,>8 <e g,> <e g,>4 | 
		<f b, g>8[ <d g,> <e g,> <c g>] |
		d[ g_\dol g g] |
		\acciaccatura{g}fs8.[ e16 d8 <c a>] |
		
		<b g>8.[ <c a>16 <d b>8 <g b,>] |
		\acciaccatura{g}fs8.[ e16 d8 <c a>] |		
		<b g>8.[ <c a>16 <d b>8 <g b,>] |
		\acciaccatura{g}fs8.[ e16 d8 <c a>] |
		b[ d-> c d->] |
		b[ d-> c d->] |
		
		b[ c b c] |
		b[ c d e] |
		f[ e-> f e->] |
		<f d>16 e( d) c_. b_. a( g) f_. |
		\once \override DynamicText #'extra-offset = #'(-2.0 . 3.0)
		e_\p g c e g8 g |
		g16( f) e( f) d4 |
		
		e8[_\f <c g> <f b, g> <e c g>] |
		<d g,>16 c( b) a_. g_. f( e) d_. |
		r g c e r g, c g' |
		r g, b f' r g, b f' |
		<e c g>8 r16 <c g> r <d a> r <b f> |
		r c g e c8 r |
	}
	\repeat volta 2 {
		a'4 r8 <a e> |
		<b gs>4 r8 <b gs> |
		<c a> e c^\> a\! |
		gs b e r |
		<a, e>4 r8 <a e> |
		<b gs>4 r8 <d gs,> |
		<c a> <c a> <b gs> <b gs> |
		a[ c a] r |
	}
	\repeat volta 2 {
		<c g>8[ g' e <c g>] |
		<b g>[ g' f <b, g>] |
		<c g>[ e c <g e>] |
		<gs e>[ e' d <gs, e>] | 
		a[ e' c a] |
		gs[ e' b gs] |
		a[ <e' c a> e, <e' b gs>] |
		a,[ <e' c> <c a>] r |
	}
	\once \override DynamicText #'extra-offset = #'(-2.0 . 2.5)
	e,16_\p	g c e g8 g |
	\acciaccatura {\slurDown g} f f d4 |
	e8 \times 2/3{r16 
	\once \override DynamicText #'extra-offset = #'(-0.0 . 4.0)
		g,_\f c}\times 2/3 {r g f'} \times 2/3 {r g, e'} |
	<d g,>16 c b a g r r8 |
	r16 g_\p  c e g8 g |
	g16( f) e( f) d4 |
	
	\times 2/3 {r16 g, e'} \times 2/3 {r g, c} 
		\times 2/3 {r a d} \times 2/3 {r g, b} |
	<c e,>8 <e g,> <c e,> r |
	<d g,> <d g,> <d g,>4 |
	<e g,>8 <e g,> <e g,>4 | 
	\override TupletNumber #'transparent = ##t
	\override TupletBracket #'transparent = ##t 
	\times 2/3 {r16 g, f'} \times 2/3 {r g, f'} 
		\times 2/3 {r g, e'} \times 2/3 {r g, e'} |	
	\times 2/3 {r16 g, d'} \times 2/3 {r 
%% following puts the cresc: inside the notes		
	\once\override TextScript #'outside-staff-priority = ##f	
	\once \override TextScript #'extra-offset = #'( -1.0 . -2.5 )
		g,_\cress c} \times 2/3 {r g b} \times 2/3 {r g c} |
	<d g,>8 <d g,> <d g,> r |
	<e g,>8 <e g,> <e g,>4 |
	\times 2/3 {r16 g, f'} \times 2/3 {r g, d'} 
	\times 2/3 {r g, e'} \times 2/3 {r g, c} |
	d8 g16. g32 g8 <g b,> |
	
	\acciaccatura{g8} fs8. e16 d8 c |
	<b g>8.[ <c a>16 <d b>8] g |
	\acciaccatura{g8} fs8. e16 d8 c |
	b16 g c a <d b>8 g |
	\acciaccatura{g8} fs8. e16 d8 c | 
	\override TupletNumber #'transparent = ##f
	\override TupletBracket #'transparent = ##f 
	b \times 2/3 {r16 d g,}\times 2/3 {r16 d' a}
		\times 2/3 {r16 c a} |
	\override TupletNumber #'transparent = ##t
	\override TupletBracket #'transparent = ##t 
	\times 2/3 {r16 b g} \times 2/3 {r d' g,} 
	\times 2/3 {r d' a} \times 2/3 {r c a} |
	\times 2/3 {r16 b g} \times 2/3 {r c a} 
	\times 2/3 {r d b} \times 2/3 {r e c} |
	\times 2/3 {r16 f d} \times 2/3 {r e cs} 
	\times 2/3 {r f d} \times 2/3 {r e cs} |
	
	<f d>8 r r_\p \times 2/3 {r16 e cs} |
	<f d>8 r r_\pp \times 2/3 {r16 e cs} |
	\times 2/3 {r f d} \times 2/3 {c[ e c] b[ d b] a[ c a] }
	\times 2/3 { g[ b g] f[_\cres a f] e[ g e] d[ b' g] } |
	r16 g c e g4 |
	
	\acciaccatura{g8} f f d4 |
	e8[ <c g> <f b, g> <e c g>] |
	<d g,>16 c b a g r r8 |
	r16 g c e r g, c g' |
	r g, b f' r d, g d' |
%% bug- in following run, 16th bar aligns with left side of note
%% \set stemLeftBeamCount = #1 is the workaround.
	<e c g>8[ r16 \set stemLeftBeamCount = #1 <c g> r <d a> 
		r <b g f>] |
	
	<c g e>8 <c g e> <c g e>4 |
	<d g, d>8 <d g, d> <d g, d>4 |
	<e c g>8^\cres <e c g> <e c g>4 |
	<f b, g>8 <f b, g> <f b, g>4 |
	<g c, g>8 <g c, g> <g c, g>4 |
	<f c a>8 < f c a> <f c a>4 |
	<e c>8 <e c g> <e c>4 |
	<d g,>8 <d g,> <d g,>4 |
	
	r16 e,_\p g c r e, g c |
	r d, g d' r d, g d' |
	r g,_\cres c e r g, c e |
	r g, b f' r g, b f' |
	r g,_\f c g' r g, c g' |
	r a, c f r a, c f |
	r g, c e r g, c e |
	
	r f, g b r f g b |
	<c g e>4 d8._\p g16 |
	e8[ g d g] |
	c,4  d8. g16 |
	e8[ g d g] |
	c, r d8. e16 |
	c8 r_\rit d8. e16 |
	c8 r_\ff <e c g e>4^\atemp |
	<c g e> r
	
	}
}		


lower = {
	\relative c' { 
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
	\repeat volta 2 {
		r8 c[ e c] |
		r d[ b g] |
		r e'[ d c] |
		b4 r |
		r8 c[ e c]|
		
		r d[ b g] |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 5.5)
		c[_\f e, f g] |
		c4 r
	}
	\repeat volta 2 {
		b8 b b4 |
		c8 c c4 |
		d8[ d c c] |
		
		b4 r |
		b8[ g b g] |
		c[ g c g] |
		d'[ b c e] |
		g4 r8 <b g> |
		<c a>4 r8 d, |
		
		g,4 r8 g' |
		<c a>4 r8 d, |
		g,4 r8 g' |
		<c a>4 r8 d, |
		g[ d a' d,] |
		g[ d a' d,] |
		
		
		g16_\cres d a' d, g d a' d, |
		g8_\p[ a b c] |
		d16 g, cs g d' g, cs g |
		g8 r b,4\rest | 
		r8 c[ e c] |
		r d[ b g] |
		r e'[ d c] |
		
		b4 g\rest |
		\once \override DynamicText #'extra-offset = #'(-2.0 . 3.5)
		c\f e |
		d b|
		c8[ e, f g] |
		c4 c8 r |
	}
	\repeat volta 2 {
		\once \override DynamicText #'extra-offset = #'(-2.0 . 3.5)
		a8_\p[ e' c a] |
		e[ e' b e,] |
		a4 r8 f' |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 3.5)
		e_\f[ b e,] r |
		\once \override DynamicText #'extra-offset = #'(-2.0 . 3.5)
		a8_\p[ e' c a] |
		e[ e' b e,] |
		\once \override DynamicText #'extra-offset = #'(-2.0 . 4.0)
		a_\f[ e' e, e'] |
		a,[ a' a,] r |
	}
	\repeat volta 2 {
		\once \override DynamicText #'extra-offset = #'(-2.0 . 2.0)
		e'4_\p r8 e |
		d4 r8 d |
		c4 r8 c |
		b4 r8 b |
		\once \override DynamicText #'extra-offset = #'(-2.0 . 4.5)
		a8_\f[ e' c a] |
		e[ e' b e,] |
		a[ e' e, e'] |
		a,4 r4 |
	}
	r8 c[ e c] |
	r d[ b g] |
	c[ e d c] |
	b4 r16 f'( e d) |
	c4 e8 c |
	r d[ b g] |
	
	\once \override DynamicText #'extra-offset = #'(-2.25 . 3.5)
	c8[_\f e, f g] |
	c4 r |
	\once \override DynamicText #'extra-offset = #'(-2.0 . 3.0)
	b8_\p b b4 |
	c8 c c4 |
	d8[ d c c] |
	b[ a g a] |
	\once \override DynamicText #'extra-offset = #'(-2.5 . 3.5)
	b[_\f g b g] |
	c[ g c g] |
	d'[ b c e] |
	g4 r8 g |
	
	<c a>4 r8 <a d,> |
	g,4 r8 <b' g> |
	<c a>4 r8 <a d,> |
	g,4 r8 <b' g> |
	<c a>4 r8 <a d,> |
	g d d d |
	
	d[ d d d] |
	d[ d d g] |
	g[ g g g] |
	
	g s s g |
	g s s g | 
	g r r4 |
	s4 s4 |
	c,4 e8 c |
	
	r8 d[ b g] |
	r e'[ d c] |
	b4 r16 f'( e) d-. |
	\override DynamicText #'extra-offset = #'(-2. . 2.5)
	c4_\f e |
	d b |
	c8[ e, f g] |
	
	c8[ g c g] |
	b[ g b g] |
	c[ g c g] |
	d'[ g, d' g,] |
	e'_\f[ e, e' e,] |
	f'[ f, f' f,] |
	g'[ g, g' g,] |
	f'[ g, f' g,] |
	
	c4 g |
	b g |
	c g |
	d' g, |
	e' e, |
	f' f, |
	g g |
	
	g g |
	c g' |
	c g |
	e g |
	c g |
	e8 r g4 |
	e8 r g4 |
	e8 s c4 |
	c r |
	}
}	

staffClassicalGuitar = \new Staff {
		\time 2/4
		\key c \major
		\set Staff.midiInstrument="acoustic guitar (nylon)"
	<<
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
		\new Voice = A { \voiceOne  \upper }
		\new Voice = C { \voiceFour  \lower }
		\bar "|." 
	>>
}

\score { 
		<<
			\staffClassicalGuitar
		>>
		}
		
\layout  {	}		

\score {
	\unfoldRepeats
	\staffClassicalGuitar
	  \midi {
	    \context {
	      \Score
      tempoWholesPerMinute = #(ly:make-moment 72 4)
      }
    }
}
