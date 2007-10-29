% Entered on Oct 26-28 /Users/ssanders/Desktop/Matiegka4.ly2007
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
	title = "Nº. 4. Menuetto."
	subtitle = ""
	subsubtitle = "From '24 Pieces Progressives pour La Guitarre'"
	composer = \markup{\column \right-align 
	{\line {Wenzel Thomas Matiegka} 1773-1830}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 4. Menuetto."
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
 footer = "Mutopia-2007/10/29-1085"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


%% Source & comments
%%	W. T. Matiegka was born in Choceň, Bohemia and died in Leopoldstadt.
%%	In between he composed 33 guitar work in addition to works for other
%%	instruments.
%%
%%	This piece is from #345 in the Boije collection and is in the public domain
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

	dol = \markup { \smaller\italic "dol."}
	cres = \markup{\smaller\italic"cresc:"}
	cress = \markup{\tiny\smaller\italic"cresc:"}
	espr = \markup{\smaller\italic"espres:"}
	rit = \markup{\smaller\italic"ritart:"}
	atem = \markup{\smaller\italic"a tempo:"}
%% End shortcuts

%%%%%%%%%%
%% Reminders
%
%    \once \override DynamicText #'extra-offset = #'(-3.75 . 5.5)
%    \once \override TextScript #'extra-offset = #'( 0.8 . -2.3 )
%
%%%%%%%%%%

upper = \relative c''{
	\repeat volta 2 {
		\partial 4*1 
		\mark "Allegro" e8._\p f16 |
		g4 <c, g> <c g> |
		<b g>2^\< <c g>4\! |
		<f b, g>2 <e c g>4 |
		<d g,> r f8. g16 |
		a4 <b, af f> e8. f16 |
		g4 <cs, g> d8. e16 |
		f4 <b, gs> c8. d16 |
		e4 <a, e> b8. c16 |
		
		d4 <g, d>^\< gs\! |
		<a e>8[^\dol \slurDown ds( e) b( c a)]_\f |
		r4 <g' b, g> <fs c a> |
		<g b, g> \acciaccatura{cs,8} d4 <c a d,> |
		<b g d> \acciaccatura{cs8} d4 <fs c a> |
		<g b, g> \acciaccatura{cs,8} d4 <c a d,> |
		<b g d> \acciaccatura{cs8} d4 <fs c a> |
		<g b,> a,\rest
	}
	\repeat volta 2 {
		\acciaccatura{fs'8} g4 |
		r8 a,[ cs g' a, g'] |
		
		\once \override DynamicText #'extra-offset = #'(-3.25 . 2.5)
		<fs c! a>2_\sf \acciaccatura{e8} f4 |
		r8 g,[ b f' g, f'] |
		\once \override DynamicText #'extra-offset = #'(-3.25 . 2.5)
		<e c bf>2._\sf |
		r8 a,[(_\dol d cs) e_. d_.] |
		f[_. e( g) f_. e_. d] |
		<c g e>2.^\cres |
		<b g d>4 r r |
		<fs' c af>2._\p |
		<g b,>4 r r |
		\once \override DynamicText #'extra-offset = #'(-3.75 . 4.5)
		<c, a d,>2._\f |
		<b g d>4 r e8. f16 |
		
		fs8([_\espr g)] ds([ e)] b([ c)] |
		r g b g r c |
		r g f' g, r e' |
		<d g,>2 f8. g16 |
		gs8([_\espr a)] e([ f)] cs([ d)] |
		<b g d>2^\< <c g>4\! |
		<d a> s <b g f> |
		<c g e> \acciaccatura{fs8} g4 <c,g> |
		<b g> \acciaccatura{fs'8} g4 <b, g> |
		<c g> \acciaccatura{fs8} g4 <c, g> |
 
		<b g>4 \acciaccatura{fs'8} g4 <b,g f!> |
		<c g e> a\rest
	}
	\repeat volta 2 {
		e'8(_\mf f) |
		g e c4 e8 c |
		g4 c8 g e4 |
		g8 e c4 <c' g> |
		<b g>2^\< <cs g>4\! |
		d2 d8( e) |
		f_\mf b, g4 b8 g |
		d4 g8 d b4 |
		d8 b g4 
		\once \override DynamicText #'extra-offset = #'(-2.4 . 1.6)
			f_\sf |
			
		<g'' c, g>2 <g cs, bf>4 |
		r8 \once \override DynamicText #'extra-offset = #'(1.0 . -1.5)
			e(_\p f) cs( d) r |
		r4 <c g e> <b g f> |
		<c g e> a\rest 
	}
	\repeat volta 2 {
		\grace s8 r4 |
		r8 gs b e r d |
		c[ gs'( a) e c a] |
		r d, a' d r c |
		b[ fs'( g) cs,( d) b] |
		
		a gs( a) b_. c( d) |
		e_.^\rit fs( g) e c a |
		r4^\atem <g' b, g> <fs c a> |
		<g b, g>2 e8_._\mf f_. |
		g([_\espr e) c g e' c] |
		g[ e c' g e c] |
		g'[ e c g] e4 |
		r_\p <c'' g> <c g> |
		<d g,>2 <c g>4 |
		<b g>2 <a e>4
		
		<g d>2 fs4 |
		f!2 r4 |
		r r d'8_._\mf e_. |
		f_. d( b) g_. d'( b) |
		g d b' g d b |
		g' d b g^\< f4\! |
		<g'' c, g>2 <g cs, bf>4 |
		r8 \once \override DynamicText #'extra-offset = #'(1.0 . -1.5)
			e(_\p f) cs( d) r |
		r4 <c g e> <b g f> |
		<c g e> a\rest 
	}
	\repeat volta 2 {
		e'8. f16 |
		g4_\p c, c |
		<b g>2 <c g>4 |
		<f b, g>2 <e c g>4 |
		<d g,>4 r f8. g16 |
		a4_\sf <b, af> e8. f16 |
		g4_\sf <cs, g> d8. e16 |
		f4_\sf <b, gs> c8. d16 |
		e4_\sf <a, e> b8. c16 |
		d4_\sf <g, d>^\< gs\! |
		a8 ds(e) b( c) a_. |
		r4 <g' b, g> <fs c a> |
		<g b, g> \acciaccatura{cs,8} d4 <c a d,> |
		<b g d> \acciaccatura{cs8} d4 <fs c a> |
		<g b, g> \acciaccatura{cs,8} d4 <c a d,> |
		<b g d> \acciaccatura{cs8} d4 <fs c a> |
		<g b,> a,\rest
		}
	\repeat volta 2 {
		\acciaccatura{fs'8} g4 |
		r8 a,[ cs g' a, g'] |
		
		\once \override DynamicText #'extra-offset = #'(-3.75 . 2.5)
		<fs c! a>2_\sf \acciaccatura{e8} f4 |
		r8 g,[ b f' g, f'] |
		\once \override DynamicText #'extra-offset = #'(-3.75 . 2.5)
		<e c bf>2._\sf |
		r8 a,[(_\dol d cs) e_. d_.] |
		f[_. e( g) f_. e_. d] |
		<c g e>2.^\cres |
		<b g d>4 r r |
		<fs' c af>2._\p |
		<g b,>4 r r |
		\once \override DynamicText #'extra-offset = #'(-3.75 . 4.5)
		<c, a d,>2._\f |
		<b g d>4 r e8. f16 |
		
		fs8([_\espr g)] ds([ e)] b([ c)] |
		r g b g r c |
		r g f' g, r e' |
		<d g,>2 f8._\p g16 |
		gs8([_\espr a)] e([ f)] cs([ d)] |
		<b g d>2^\< <c g>4\! |
		<d a> s <b g f> |
		<c g e> \acciaccatura{fs8} g4 <c,g> |
		<b g> \acciaccatura{fs'8} g4 <b, g> |
		<c g> \acciaccatura{fs8} g4 <c, g> |
 		<b g>4 \acciaccatura{fs'8} g4 <b,g f!> |

		<c g e> r \acciaccatura{fs8} g4 |
		r8 a, cs g' a, g' |
		\once \override DynamicText #'extra-offset = #'(-3.25 . 2.5)
		<fs c! a>2_\sf \acciaccatura{e8} f4 |
		r8 g, b f' g, f' |
		\once \override DynamicText #'extra-offset = #'(-3.25 . 2.5)
		<e c bf>2._\sf	|
		r8 a, d( cs) e_\dol d |
		f_. e( g) f e d |
		<c g e>2.^\cres	|
		<b f d>4 r r |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 0.5)
		<fs' c>2._\p
		
		<g b,>4 r r |
		\once \override DynamicText #'extra-offset = #'(-3.25 . 2.5)
		<c, a d,>2._\f |
		<b g d>4 r e8. f16 |
		g8_\espr( e) c g e c |
		g4 <c' g>_\p <c g> |
		<b g>2 <c g>4 |
		g'( f) <e c g> |
		<d g,> r r |
		f8. g16 a4_\sf <b, af> |
		e8. f16  g4_\sf <cs, g> |
		d8. e16 f4_\sf <b, gs> |
		
		c8. d16 e4_\sf <cs g> |
		d8. e16 f4 b, |
		c8. d16 e4^\< <cs g>\! |
		<d a>8. e16 f4^\< b,\! |
		c8. d16 e4^\< <cs g>\! |
		d8. e16 f2 ~ |
		f4._\espr d8( b) g |
		f( d) b^\rit g( fs) f |
		r^\atem <g'' c, g> r <f d a> r <b, g f> |
		
		<c g e>4 \acciaccatura{fs8} g4 <c, g> |
		<b g>4 \acciaccatura{fs'8} g4 <b, g> |
		<c g>4 \acciaccatura{fs8} g4 <c, g> |
		<b g>4 \acciaccatura{fs'8} g4 <b, g> |
		<c g>4 \acciaccatura{f!8} e4 <c a e> |
		<b gs>4 \acciaccatura{f'8} e4 <b gs d> |
		<c a e>4 \acciaccatura{f8} e4 <c a e> |
		<b gs>4 \acciaccatura{f'8} e4 <b gs> |
		a4 \acciaccatura{b8} c4 <a c,> |
		<g c,>4 \acciaccatura{b8} c4 <g c,> |
		
		<a c,>4 \acciaccatura{b8} c4 <a c,> |
		<g c,>4 \acciaccatura{b8} c4 <bf c,> |
		<a c,>4 \acciaccatura{cs8} d4 <c d,> |
		<b! d,>4 \acciaccatura{f'8} e4 <d gs,> |
		<c e,>4 \acciaccatura{e8} f4 <e c> |
		<d g,>4 \acciaccatura{fs8} g4 fs |
		f!2. ~ |
		f4. e8_. d_. c_. |
		b_. a( g) f_. e_. d_. |
		c b^\rit a g fs f |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 2.5)
		<g'' c, g>2._\f |
		
		r4_\atem <f d> <f d> |
		r <e c> <e c>_\f |
		r <b g f> <b g f>_\p |
		e,8 g c g e g |
		f g b g f g |
		e g c g e g | 
		f g b g f g |
		e g c g e g |
		f g b g f g |
		<c g e>4 <c g e> <c g e> |
		<c g e>2 
	}			
}		

lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\repeat volta 2 {
		\partial 4 r4 |
		r e e |
		f2 e4 |
		d2 c4 |
		b r r |
		r_\sf f' r |
		r_\sf e r |
		r_\sf d r |
		r_\sf c r |
		
		r b r |
		c r r |
		d2 d4 |
		g, r_\p fs |
		g r_\f d' |
		g r_\p fs, |
		g r_\f d' |
		g s 
	}
	\repeat volta 2 {
		\grace s8 r4 |
		a,2. |
		
		d2 r4 |
		g,2. |
		c |
		f,4 a\rest r |
		R2. |
		g |
		g4 r r |
		af'2. |
		g4 r r |
		fs,2. |
		g4 r r |
		
		s2. |
		f'2 e4 |
		d2 c4 |
		b2 r4 |
		s2. |
		g4 f e |
		f r_\f g |
		c r_\p e |
		d r_\f f |
		e r_\p e |
		
		d r_\f g, |
		c s 
	}
	\repeat volta 2 {
		s4 |
		s2. |
		s2. |
		s2 e4 |
		\once \override DynamicText #'extra-offset = #'(-1.8 . 2.8)
		d2_\p e4 |
		<f g>2 r4 |

		s2. |
		s2. |
		s2. |
		
		e,2. |
		f4 r r8 
		\once \override DynamicText #'extra-offset = #'(-2.8 . 3.5)
			f_\f |
		g2 g4 |
		c s
	}
	\repeat volta 2 {
		\acciaccatura {\stemUp ds8} \stemDown e4 |
		e,2 e4 |
		a r r |
		fs2 fs4 |
		g r c\rest |
		
		c r r |
		R2. |
		\once \override DynamicText #'extra-offset = #'(-2.4 . 2.5)
		d2_\f d4 |
		g,2 s4 |
		s2. |
		s2. |
		s2. |
		s4 e' e |
		f2 e4 |
		d2 c4 |
		
		b2 a4 |
		b2 s4 |
		s2. |
		s2. |
		s2. |
		s2. |
		\once \override DynamicText #'extra-offset = #'(-2.4 . 2.5)
		e,2._\f |
		f4 r r8 \once \override DynamicText #'extra-offset = #'(-2.8 . 3.5)
			f_\f |
		g2 g4 |
		c s
	}		
	\repeat volta 2 {
		s4 |
		r <g' e> <g e> |
		f2 e4 |
		d g, c |
		b s r |
		r f' r |
		r e r |
		r d r |
		r c r |
		r b r |
		c r r |
		d2 d4 |
		g, r_\p fs |
		g r_\f d' |
		g r_\p fs, |
		g r_\f d' |
		g s 
		}
	\repeat volta 2 {
		\grace s8 r4 |
		a,2. |
		
		d2 r4 |
		g,2. |
		c |
		f,4 a\rest r |
		R2. |
		g |
		g4 r r |
		af'2. |
		g4 r r |
		fs,2. |
		g4 r r |
		s2. |
		
		f'2 e4 |
		d2 c4 |
		b2_\f r4 |
		R2. |
		g4 f e |
		f r_\f g |
		c r_\p e |
		d r_\f f |
		e r_\p e |
		d r_\f g, |

		c r r |
		a2. |
		d2 r4 |
		g,2. |
		c2. |
		f,4 r r |
		R2. |
		g2. |
		g4 r r |
		af'2. |
		
		g4 s s |
		fs,2. |
		g4 r r |
		s2. |
		g4 e' e |
		f2 e4 | 
		d2 c4 |
		b s s |
		r r f' |
		r r e | 
		r r d |
		
		r4 r e, |
		f r g | 
		a r_\sf e |
		f r gs |
		a r_\sf e |
		f r r |
		s2. |
		s2. |
		e4 f g |
		
		c r_\p e |
		d r_\f f |
		e r _\p e | 
		d r_\f f |
		e r_\p a, |
		e r_\f e |
		a r_\p a |
		e r_\f e |
		f r _\p f |
		e r_\f e |
		
		f r_\p f |
		e r_\f e |
		f r_\f fs |
		g r_\sf e |
		a r_\sf a |
		b r r |
		R2. |
		R2. |
		s2. |
		s2. |
		e,2. |
		
		\once \override DynamicText #'extra-offset = #'(-2.5 . 0.0)
		f2._\p |
		g |
		g |
		\once \override DynamicText #'extra-offset = #'(-2.6 . 2.5)
		c4_\p\once \override DynamicText #'extra-offset = #'(-2.6 . 2.5)
			g_\sf c |
		b \once \override DynamicText #'extra-offset = #'(-2.6 . 2.5)
			g_\sf b |
		c \once \override DynamicText #'extra-offset = #'(-2.6 . 2.5)
			g_\sf c |
		b \once \override DynamicText #'extra-offset = #'(-2.6 . 2.5)
			g_\sf b |
		c \once \override DynamicText #'extra-offset = #'(-2.6 . 2.5)
			g_\sf c |
		b g b |
		c g e |
		c'2
	}
	
}	

staffClassicalGuitar = \new Staff  {
		\time 3/4
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
			tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
	    }
    }
}
