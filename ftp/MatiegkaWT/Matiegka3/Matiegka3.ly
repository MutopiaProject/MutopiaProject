% Entered on Oct 25-26 2007
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
	title = "Nº. 3. Andante"
	subtitle = ""
	subsubtitle = "From '24 Pieces Progressives pour La Guitarre'"
	composer = \markup{\column \right-align 
	{\line {Wenzel Thomas Matiegka} 1773-1830}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 3. Andante"
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
 footer = "Mutopia-2007/10/28-1082"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


%% Source & comments
%%	W. T. Matiegka was born in Choceň, Bohemia and died in Leopoldstadt.
%%	In between he composed 33 guitar work in addition to works for other
%%	instruments.
%%
%%	This piece is #345 in the Boije collection and is in the public domain
%%	<http://www.muslib.se/ebibliotek/boije/>
%%	Publisher unknown (illegible)
%%
%%	Carl Boije (1849-1923) was an amateur guitarist whose vast collection
%%	was donated to the State Library of Sweden after his death.
%%
%%	The dynamic markings for the most part follow the original score.
%%
%%%%%%%%%%%%%%%%%%

\include "english.ly"

%%%% shortcuts

	dol = \markup { \smaller "dol."}
	cres = \markup{\smaller\italic"cresc:"}
	cress = \markup{\tiny\smaller\italic"cresc:"}

%% End shortcuts

upper = {
	\relative c''{
	\repeat volta 2 {
		\once \override DynamicText #'extra-offset = #'(-3.75 . 5.5)
		e2_\f c2 |
		a a\rest |
		\once \override DynamicText #'extra-offset = #'(-3.75 . 5.5)
		f'4._\f e8 d4. c8 |
		b2 a\rest |
		\once \override DynamicText #'extra-offset = #'(-3.75 . 5.0)
		g'2_\f e4. d8 |
		c2. \once \override DynamicText #'extra-offset = #'(-3.75 . 4.25)
			cs4_\f |
		d e f d |
		\acciaccatura {c8}b2 a\rest |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.5)
		<e' g,>2_\f <c g> |
		<c a> a\rest |
		
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.5)
		<f' a,>_\f <d a> |
		<b g> a\rest |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.5)
		<g' c, g>_\f <f d g,> |
		<e c g> d4 f |
		c e g, b |
		<c g e>2 a\rest
		}
	\repeat volta 2 {
		\once \override DynamicText #'extra-offset = #'(-2.0 . 2.5)
		<d g,>2_\p <e b>-> | %% note: original used "<"; I assume accent
		<c e,> <d a>-> |
		\once \override TextScript #'extra-offset = #'( 1.4 . 5.3 )
		<b g>_\cress <cs g> |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.5)
		<d a>_\f r4 d |
		\once \override TextScript #'extra-offset = #'( -5.0 . 5.0 )
		c!_\dol a d, d' |
		
		b g d d'-> |
		c a d, d'-> |
		b g d g'_\f |
		d b g g' |
		g e c a |
		g g' a, fs' |
		<g b,>2 r |
		r8 a, c a d-> a c a |
		r g b g d'-> g, b g |
		
		r a c a d-> a c a |
		r^\cres g b g d' g, g' g,_\f |
		r g b g' r g, b g' | 
		r g, c g' r a, c e |
		r g, b g' r a, c fs |
		<g b, g>4 <d b>_\p <cs as> 
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.5)
			<fs c a>_\f |
		<g b,> <d b>_\p <cs as> <fs c a> |
		
		g <d b> <cs as> 
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.5)
			<fs c a>_\f |
		a,2\rest 
		\once \override DynamicText #'extra-offset = #'(-1.5 . -0.0)
		<g' b, g>_\p | 
		a,2\rest <fs' c a> | 
		a,2\rest <f'! d g,> | 
		r4 <e g,> r < c g> |
		r <c a> r <cs a>-> |
		r <f a,> r <d a> |
		r <g b,> r <g b,>-> |
		r <g c, g> r <f b, g> |
		r <e c g> r <d gs, e>-> |
		
		r <c a e> r <fs c a>-> |
		r <g b, g> r2 |
		r8 g, e' g, r g c g |
		r a b_\p( cs) d e f4 |
		r8 a, f' a, r a d a |
		r
		\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
			 b_\p( c) d e f g4 |
			 
		r8 b, g' b, r b e b |
		r a c a r g cs g |
		r a d a r a f' a, |
		r g c e r f, g b |
		<c g e>4 \acciaccatura {fs8} g2 <g c, g>4 |
		<g b, g>2. <g b, g>4 |
		
		<g c, g>2. <g c,>4 |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 1.75)
		<g b, g>2._\f <g b, g>4 |
		<g c, g>2. <g c,>4 |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 1.75)
		<g b, g>2._\f <g b, g>4 |
		r4 <g e> r <f d> |
		r <e c > r <d f,> |
		<c g e> \times 2/3 { r8 c g'} \times 2/3 { r8 c, g'} \times 2/3 { r8 c, g'} |
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'transparent = ##t
		\times 2/3 { r8 b,_\f g'} \times 2/3 { r8 b, g'} \times 2/3 { r8 b, g'} 
			\times 2/3 { r8 b, g'} |
		
		\times 2/3 { r8 
		\once \override DynamicText #'extra-offset = #'(1.0 . -1.0)
			c,_\p g'} \times 2/3 { r8 c, g'} \times 2/3 { r8 c, g'} 
			\times 2/3 { r8 c, g'} |
		\times 2/3 { r8 b,_\f g'} \times 2/3 { r8 b, g'} \times 2/3 { r8 b, g'} 
			\times 2/3 { r8 b, g'} |
		\times 2/3 { r8 
		\once \override DynamicText #'extra-offset = #'(1.0 . -1.0)
			c,_\p g'} \times 2/3 { r8 c, g'} \times 2/3 { r8 c, g'} 
			\times 2/3 { r8 c, g'} |
		\times 2/3 { r8 b,_\f g'} \times 2/3 { r8 b, g'} \times 2/3 { r8 b, g'} 
			\times 2/3 { r8 b, g'} |
			
		\times 2/3 { r8 c, g'} \times 2/3 { r8 c, g'} \times 2/3 { r8 
		\once \override TextScript #'extra-offset = #'( -1.0 . 2.3 ) cs,_\cress g'} 
			\times 2/3 { r8 cs, g'} |
		\times 2/3 { r8 
		\once \override TextScript #'extra-offset = #'( 0.4 . -2.3 )
		c,!_\cress fs} \times 2/3 { r8 c fs} \times 2/3 { r8 
		\once \override TextScript #'extra-offset = #'( 0.8 . -2.3 )
		b,_\cress f'} 
			\times 2/3 { r8 b, f'} |
		\times 2/3 { r8 g, e'} \times 2/3 { r8 g,_\f e'} \times 2/3 { r8 a, d} 
			\times 2/3 { r8 a d} |
		\times 2/3 { r8 e, c'} \times 2/3 { r8 e, c'} \times 2/3 { r8 d, b'} 
			\times 2/3 { r8 d, b'} |
			
		c2 \once \override DynamicText #'extra-offset = #'(-1.25 . -0.75)
			fs8(_\p g) a_. g_. |
		\once \override DynamicText #'extra-offset = #'(-1 . 1.25)
			<b,g>2_\p fs'8( g) a_. g_. |
		<c, g>2 fs8( g) a_. g_. |
		f4_\p f f g |
		e2 fs8(_\p g) e_. c_. |
		<b g>2 fs'8( g) f d |
		<c g>2 fs8( g) e c |
		b4_\f <b g f> <b g f> <b g f> |
		
		<c g e>2 r4 <d g,> |
		r <e c g> r <d g,> |
		r <c g e> r < d g,> |
		r <e c  g> r <d g,> |
		c \once \override DynamicText #'extra-offset = #'(-2.25 . 3.0)
			g_\f c e |
		g2 \once \override DynamicText #'extra-offset = #'(-2.5 . 3.0)
			<f b, g>_\f |
		<e c g>4\once \override DynamicText #'extra-offset = #'(-2.0 . 3.0)
			r8_\f g, r c r e |
		g2 \once \override DynamicText #'extra-offset = #'(-2.5 . 3.0)
			<b, g f>_\f |
		<c g e> \once \override DynamicText #'extra-offset = #'(-2.75 . 2.0)
			<e c g>_\ff |
		<c g e> r
		}	
	}
}		

lower = {
	\relative c' { 
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
	\repeat volta 2 {
		\once \override DynamicText #'extra-offset = #'(-2.0 . 2.75)
		c2_\p e |
		f s |
		\once \override DynamicText #'extra-offset = #'(-2.0 . 2.75)
		d_\p f |
		g s |
		\once \override DynamicText #'extra-offset = #'(-2.0 . 2.25)
		e_\p g |
		a2. \once \override DynamicText #'extra-offset = #'(-2.0 . 1.5)
			g4_\p |
		f e d f |
		g2 s |
		c,4 d e c |
		f2 s |
		
		d4 e f d |
		g2 s |
		e4 c b g |
		c e, \once \override DynamicText #'extra-offset = #'(-1.8 . 1.5)
			<f a'>2_\p |
		<g g'> <g f'> |
		c s
		}
	\repeat volta 2 {
		b2 gs |
		a fs |
		g a |
		d r |
		fs,2. fs4 |
		g2. g4 |
		fs2. fs4 |
		g2 r |
		f'!2. f4 |
		e2 c |
		d d |
		g4 d b g |
		fs2. fs4 |
		g2. g4 |
		
		fs2. fs4 |
		g2 r |
		f' d |
		e c4 a |
		d2 d |
		g,4 r r d' |
		g r r d |
		
		<b' g> r r d, |
		\once \override DynamicText #'extra-offset = #'(-2.90 . 2.25)
		g,1_\f |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 2.0)
		a_\f |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 2.0)
		b_\f |
		\once \override DynamicText #'extra-offset = #'(-2.25 . 2.75)
		c2_\p e |
		f e |
		d f |
		g f |
		e d |
		c b |
		
		a d |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 2.0)
		g,_\f r |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 2.0)
		c_\f e |
		f, r |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 2.0)
		d'_\f f |
		g, r |
		
		\once \override DynamicText #'extra-offset = #'(-2.75 . 4.0)
		e2_\f g |
		a g |
		f d' |
		g, g |
		c4 r r e |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 1.5)
		f_\f( d) b f |
		
		e c' e g |
		\once \override DynamicText #'extra-offset = #'(-2.0 . 4.5)
		f(_\p d) b f |
		e c' e g |
		\once \override DynamicText #'extra-offset = #'(-2.0 . 4.5)
		f(_\p d) b f |
		\once \override DynamicText #'extra-offset = #'(-2.0 . 0.0)
		e2 f |
		g g |
		c4 e_\cres g e |
		f d b f |
		
		e c' e g |
		f d b f |
		e c' e g |
		f d b f |
		
		e e a a |
		d d g, g |
		c c f, f |
		g g g g |
		
		c2 r |
		f r |
		e r | 
		r4 d' b g |
		c2 r |
		f, r |
		e r | 
		r4 g, g g |
		
		c2 b |
		c g |
		c b |
		c g |
		c4 g c e |
		g2 g, |
		c4 g c e |
		g2 g, |
		c c |
		c s |
	}
}}	

staffClassicalGuitar = \new Staff  {
		\time 4/4
		\key c \major
		\set Staff.midiInstrument="acoustic guitar (nylon)"
		<<
			\new Voice = A { \voiceOne  \upper }
			\new Voice = C { \voiceFour  \lower }
		>>
}

\score { 
		<<
			\staffClassicalGuitar
		>>
		}
		
\layout  { }

\score {
	\unfoldRepeats
	\staffClassicalGuitar
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
	    }
    }
}
