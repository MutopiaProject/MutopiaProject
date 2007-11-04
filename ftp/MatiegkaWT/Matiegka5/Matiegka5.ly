% Entered on Oct 29-31, 2007
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
	title = "Nº. 5. Siciliano."
	subtitle = ""
	subsubtitle = "From '24 Pieces Progressives pour La Guitarre'"
	composer = \markup{\column \right-align 
	{\line {Wenzel Thomas Matiegka} 1773-1830}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 5. Siciliano."
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
 footer = "Mutopia-2007/11/04-1087"
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
%%	The dynamic markings for the most part follow the original score; obvious
%%	notation errors have been corrected.
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
smz = \markup{\smaller\italic"smorz:"} % smorzando
showTup = { \override TupletNumber #'transparent = ##f
		\override TupletBracket #'transparent = ##f }
hideTup = { \override TupletNumber #'transparent = ##t
		\override TupletBracket #'transparent = ##t }		
	
%% End shortcuts

%%%%%%%%%%
%% Reminders
%
%    \once \override DynamicText #'extra-offset = #'(-3.75 . 5.5)
%    \once \override TextScript #'extra-offset = #'( 0.8 . -2.3 )
%
%%%%%%%%%%

upper = \relative c''{
	\key c \major
	\slurDown
	\repeat volta 2 {
		\partial 8*1 
		\mark "Andante."
		\once \override DynamicText #'extra-offset = #'(2.5 . 0.0)
		<e c>8_\p |
		<e c a>8. d16 c8 <c a e>8. b16 a8 |
		<b gs e>4 gs8 e4 gs8 |
		a4 b8 \acciaccatura{d} c8. b16^\< a8\! |
		gs4 b8 e4 e8 |
		<f b, gs>8. d16 b8 gs <b gs> f' |
		<e c a>8. c16 a8 e <c' a> e |
		
		b16 f'( e) d_. c( b) a4 c16( b) |
		a4 \once \override DynamicText #'extra-offset = #'(-2.0 . 2.0)
			c8_\p a4
	}
	\repeat volta 2 {
		e'8 |
		\once \override DynamicText #'extra-offset = #'(-2.8 . 3.2)
		<e cs g>8._\fp d16 cs8 <<cs4\\{
			\override Stem #'length-fraction = #0.4
			bf8. a16 g8 }>>
		<d' a f>4 <e cs a e>8 <f d a>4 f8 |
		<f b, g!>8. e16 d8 d^\dol c b |
		g'8. f16 e8 e^\dol d c |
		
		a16 gs'_\espr( a) e( f) cs( d) gs,( a) e(  
		\once \override DynamicText #'extra-offset = #'(-1.1 . 3.4)
		f)_\sf r
		r8 <e' c g> d c4 e8 |
		d16.[ e32 f16( e) b e] c16.[ e32 f16( e) a, c] |
		<b gs>4 r8 r16. gs32[ b16._\cres e32 f16( e)] |
		d8 r d 
		
		c8 r e |
		<b gs>4 r8 r4 r8 |
		<c e,>8. b16 a8 <c e,>8. b16 a8 |
		bf4^\cres <d bf>8 <f d bf>4 r8 |
		a,4 <c a>8 <fs c a>4 r8 |
		gs,4^\cres <b gs>8 <e b gs>4 r8 |
		<c a>16.[ e32_. f16( e) c a] 
		
		gs16.[ e'32( f16 e) gs, b] |
		a4 
		\once \override DynamicText #'extra-offset = #'(-2.0 . 2.4)
		c8_\p a4  % source has an eighth rest here 
	}
	\repeat volta 2 {
		\key a \major
		<cs a>8 |
		<cs a>4^\dol <cs a>8 <cs a>8. <b gs>16 <cs a>8 |
		\grace{a,32[ a'(cs e)]}<e cs>4 <cs a>8 
			\grace{a,32[ a'(cs e)]}<e cs>4 <cs a>8 |
		\once \override DynamicText #'extra-offset = #'(-2.4 . 3.7)	
		d16.([_\p b32) gs16 fs'( e_. d)] cs16.[ a32 e16 e'_. d( cs)] |
		
		b16.[ e32 gs,16. b32 e,16. gs32] b,16.[ e32 gs,16. b32 e,8] |
		<cs'' a e>4 <cs a>8 <cs a e>8. <b gs>16 <cs a>8 |
		\grace{a,32[ a'(cs e)]}<e cs>4 <cs a>8 
			\grace{a,32[ a'(cs e)]}<e cs>4 <cs a>8 |
		b16 es(_\dol fs) cs( d) b_. a cs e cs d gs, |
		a4 cs8 a4 
	}
	\repeat volta 2 {
		<b gs>8 |
		<b gs>4 <b gs>8 <b gs>8.( <cs a>16) <d b>8 |
		
		<bs gs>8( <cs a>) <cs a>_. <cs a>4 r8 |
		r16 ds,_\cres a' b ds e \acciaccatura{es8} fs8.[ ds16 b a] |
		a( gs) b_. a_. cs( b) d!( cs) e( d) b_. gs_. |
		<cs a e>4 <cs a>8 <cs a e>8. <b gs>16 <cs a>8 |
		\grace{a,32[ a'( cs e)]} <e cs>4 <cs a>8 
		\grace{fs,16[( as cs e)]} <e cs as>4^\< <cs as>8\! |
		
		<d b>16 es_\dol ( fs) cs( d) b a cs e cs d gs, |
		a4 cs8 a4 
	}
	\repeat volta 2 {
		\key c \major
		\once \override DynamicText #'extra-offset = #'(1.5 . 0.0)
		<e' c>8_\p |
		<e c a>8. d16 c8 <c a e>8. b16 a8 |
		<b gs e>4 gs8 e4 gs8 |
		a4 b8 \acciaccatura{d} c8. b16 a8 |
		gs4 b8 e4 e8 |
		f4 \acciaccatura{cs8} d8 <b gs>[c16( cs) d( ds)] |
		<e c a>4 \acciaccatura{b8} c8 a[ gs16( a) b( c)] |
		b[ \acciaccatura{\stemDown g'8 \stemUp} f16_\smz e d( c) b_.] 
			a4 \acciaccatura{d8}c16 b |
		a4 c8 a4 \acciaccatura{f'8}e16 d |
		<cs g>4 g'8 <g cs, bf>8. f16 e8 |
		
		<f d a>4 <e cs g>8 <d a f>4 <f d af>8 |
		f8. e16 d8 d c b |
		g'8. f16 e8 e d^\< cs\! |
		d16 gs( a) e( f) cs( d) gs,( a) e( f) r |
		r8 <e'c g> <d g, f> <c g>4 e8 |
		
		d16.[e32 f16( e) b e] c16.[ e32 f16( e) a, c] |
		<b gs>4 r8 r16. gs32[_\cres b16. e32 f16( e)] |
		d8 r b e r c |
		b16 e_\smz ds d cs c b a gs r8 r16 |
		
		<e' c a>8. d16 c8 <c a e>8. b16 a8 |
		bf4^\cres <d bf>8 <f d bf>4 r8 |
		\once \override DynamicText #'extra-offset = #'(-1.5 . -0.9)
		a,4^\p <c a>8 <fs c a>4 r8 |
		gs,4^\cres <b! gs>8 <f' b, gs>4 r8 |
		c16.[ e32_. f16( e) c a] gs16.[ e'32( f16 e) gs, b] |
		a4 <c a>8 a4 
	}
	\repeat volta 2 {
		e'8 |
		
		<e g,>8. <d f,>16 <c e,>8 \acciaccatura{d8} 
			<c e,>8. <b d,>16 <c e,>8  |
		<a f>8. <b g>16 <c a>8 <g e>4 g8 |
		r16 g[ b g' r g] r g,[ b f' r e] |
		r d,[g d' r c] r d,[ g b r b] |
		<e g,>8. <d f,>16 <c e,>8 <c e,>8. <b d,>16 <c e,>8 |
		
		<a f>16 <b g>( <c a>) <b g>( <c a>) <a f>_. <g e>4 g8 |
		r16 g[_\< b f'\!] e8 r16 gs,[_\< d' e]\! c8 |
		r16 a[ d f] <b, g f>8 <c g e>4 		
	}
	\repeat volta 2 {
		\acciaccatura{fs8} g8 |
		<g b, g>4. <g c, g> |
		
		f8. g16 f8 <e c g>8. <d g,>16 <c g>8 |
		<g' b, g>4. <g c, g> |
		<f d g,> <e c g>8. <d g,>16 <c g>8 |
		r16 a-. cs( d) f d r g,_. b( c) e c |
		r g_. b( d) f d
		
		r g,_. b( c) e c |
		g' fs( f)^\smz d( b) g_. r4 r8 |
		<e' g,>8. <d f,>16 <c e,>8 \acciaccatura{d8} <c e,>8. <b d,>16 <c e,>8 |
		<a f>16 <b g>( <c a>) <b g>( <c a>) <a f>_. <g e>4 g8 |
		r16 g_\< d' f_\sf e8
		
		r16 gs,_\< d' e\! c8 |
		r16 a d f <b, g f>8 <c g e>4
	}
		<e c>8_\p |
		<e c a>8. <d b>16 <c a>8 <c a e>8. <b d,>16 <a c,>8 |
		<b gs e b>4 gs8 e4 r16 gs |
		r e[ a c r b] r c[ r b r a] |
		
		gs4^\cres b8 e4 e8 |
		 <f b, gs>16\arpeggio e d( c) b_. a_. gs b( c) cs( d) ds_. |
		 <e c a>\arpeggio d_. c( b) a gs a gs( a) as_. b( c) |
		<bf g> f'_\smz e( f) d bf a4 \acciaccatura{d8} c16 b |
		
		a4 c8 a4 e'16. d32 |
		<cs bf>4 <e cs>8 <g cs, bf>8. f16 e8 |
		<f d a>4 <e cs g>8 <f d a>4 <f d af>8 |
		<f b, f>8. e16 d8 \times 2/3 {r16 g, d' } \times 2/3 {r16 g, c } 
			\times 2/3 {r16 g b } |
		<g' c, g>8. f16 e8 \times 2/3 {r16 g, e' } \times 2/3 {r16 g, d' }
			\times 2/3 {r16 g, c } |
		a16 cs(_\espr d) e_. f( g) a( b) c( a) f_. d_. |
		
		<c g e>8. g16 <e' g,> <d f,> <c g e>4 e16. e32 |
		d16. e32 f16 e b e c16. e32 f16 e a, c |
		b4 r8 r16. gs32[ b16._\cres e32 f16( e)] |
		d8 r b e r c |
		
		<b gs>16 as^\smz a gs! g fs r4 r8 |
		<c' a e>8. b16 a8 <c a e>8.^\cres b16 a8 |
		bf4 <d bf>8 <f d bf>4 r8 |
		a,4^\p  <c a>8 <fs c a>4 r8 |
		gs,4 <b gs>8 <f' b, gs>4 r8 |
		<e c a>4 <c a>8 <d gs,>4 <gs, d>8 |
		
		<a e>16.[ e'32_. f16( e) c_. a_.] <b gs>16.[ e32 f16( e) d_. b_.] |
		<c a>16.[ e32_. f16( e) c a] <b gs>16.[ e32 f16( e) d b ]|
		<c a e>16.[ e32_. f16( e) c a] b16.[ f'32 e16( f) d b] |
		<c a>16.[ e32 f16( e) c a] gs16.[ e'32( f16 e) gs, b] |
		
		\times 2/3 {r16 a[ c} \times 2/3 {e_\p c a} \times 2/3 {e' c a]}
		\hideTup
		\times 2/3 {e'[ c a} \times 2/3 {f'^\< c\! a} \times 2/3 {e' c a]}|
		\showTup
		\times 2/3 {r16 gs[ d'} \times 2/3 {e d gs,} \times 2/3 {e' d gs,]}
		\hideTup
		\times 2/3 {e'[ d gs,!} \times 2/3 {f'^\< d\! gs,} \times 2/3 {e' d gs,]}|
		\times 2/3 {r16 a[ c} \times 2/3 {e c a} \times 2/3 {e' c a]}
		\times 2/3 {e'[ c a} \times 2/3 {f'^\< c\! a} \times 2/3 {e'^\< c\! a]} |
		
		\times 2/3 {r16 gs[ d'} \times 2/3 {e d gs,} \times 2/3 {e' d gs,]}
		\times 2/3 {e'[ d gs,!} \times 2/3 {e'^\< d\! gs,} \times 2/3 {e' d gs,]} |
		\times 2/3 {r16 a[ c} \times 2/3 {e^\< c\! a} \times 2/3 {e'^\< c\! a]}
		\times 2/3 {r16 a[_\cres cs} \times 2/3 {g'^\< cs,\! a} \times 2/3 {g'^\< cs,\! a]} |
		\times 2/3 {r16 a[ d} \times 2/3 {fs^\< d\! a} \times 2/3 {fs'^\< d\! a]}
		\times 2/3 {r16 gs[ d'_\cres} \times 2/3 {f^\< d\! gs,} \times 2/3 {f'^\< d\! gs,]} |
		
		\times 2/3 {r16 a[ c} \times 2/3 {e^\< c\! a} \times 2/3 {e'^\< c\! a]}
		\times 2/3 {r16 bf[_\cres d} \times 2/3 {f^\< d\! bf} \times 2/3 {f'^\< d\! bf]} |
		\times 2/3 {r16 a[ c} \times 2/3 {e^\< c\! a} \times 2/3 {e'^\< c\! a]}
		\times 2/3 {r16 d,[ gs_\cres} \times 2/3 {b^\< gs\! d} \times 2/3 {b'^\< gs\! d]} |

		\showTup
		\times 2/3 {r16 e a } \hideTup \times 2/3 {e a c} \times 2/3 {a c e} 
		\showTup
		\times 2/3 {r16 d, gs^\<} \hideTup \times 2/3 {r d gs} \times 2/3 {r d gs\!} |
		
		\times 2/3 {r16 e[ a]} \times 2/3 {e[ a c]} \times 2/3 {a[ c e]}
		\times 2/3 {r d, gs^\<} \times 2/3 {r d gs} \times 2/3 {r d gs\!} |
		\showTup
		\times 2/3 {r e[_\pp a}  \times 4/6 { e a c a c e] } 
		\hideTup
		\times 2/3 {r e,[_\pp a}  \times 4/6 { e a c a c e] } |
		<a e c>4 r8 <e c a>4 r8
		<< <c a e>2. \\{s4^\< s8 s\! s4}>>
}		

lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\key c \major
	\slurUp
	\repeat volta 2 {
		\partial 8*1 
		s8 |
		a4 r8 a4 r8 |
		e4 r8 r4 d'8 |
		c4 b8 a4 ds8 |
		e4 b8 e,4 r8 |
		\once \override DynamicText #'extra-offset = #'(-3.0 . 2.2)
		d'4._\sf d |
		\once \override DynamicText #'extra-offset = #'(-3.0 . 2.8)
		c_\fp c |
		
		d e4 e,8 |
		a4 e'8 c4
	}
	\repeat volta 2 {
		s8 |
		a4. \once \override DynamicText #'extra-offset = #'(-2.8 . 3.2) a_\fp |
		a4 \once \override DynamicText #'extra-offset = #'(-2.8 . 3.2) a8_\fp  d4 r8 |
		\once \override DynamicText #'extra-offset = #'(-3.2 . 3.2)
		g,!4_\fp r8 f'16 g e g d g |
		\once \override DynamicText #'extra-offset = #'(-2.3 . 1.5)
		<c g c,>4_\fp r8 c,16 g' d g e g |
		
		f8 r r r r8. fs,16( |
		g4) <g' f g,>8 <g e c>4 r8 |
		\once \override DynamicText #'extra-offset = #'(-2.0 . 1.2)
		b_\p r gs a r f |
		r16. \once \override DynamicText #'extra-offset = #'(-2.5 . 3.8)
			e32^.[_\f ds16( e) b^. gs^.] e4 r8 |
		\once \override DynamicText #'extra-offset = #'(-2.8 . 3.2)
		gs'16.[_\p e32 ds16( e) gs e] 
		
		a16.[ e32 ds16( e) c' e,] |
		r16. \once \override DynamicText #'extra-offset = #'(-2.2 . 3.8)
		e32[_\f ds16( e) b gs] e[( gs b) e gs b] |
		a,4. \once \override DynamicText #'extra-offset = #'(-2.8 . 4.8)
		a8._\fp b16 c8 |
		d4 d8 d4 s8 |
		\once \override DynamicText #'extra-offset = #'(-2.8 . 2.0)
		ds4_\p ds8 ds4 s8 |
		d4 d8 d4 s8 |
		\once \override DynamicText #'extra-offset = #'(-2.8 . 2.4)
		e4._\fp
		
		\once \override DynamicText #'extra-offset = #'(-2.8 . 2.4)
		e,4._\fp |
		a4 e'8 c4 
	}
	\repeat volta 2 {
		\key a \major
		s8 |
		\once \override DynamicText #'extra-offset = #'(-2.8 . 2.4)
		<e a,>4_\fp r8 <e a,>4 r8 |
		\once \override DynamicText #'extra-offset = #'(-2.8 . 2.4)
		a,4_\fp r8 
		\once \override DynamicText #'extra-offset = #'(-2.8 . 2.4)
			a4_\fp r8 |
		e4 r8 a4 r8 |
		
		e4. s |
		\once \override DynamicText #'extra-offset = #'(-2.8 . 2.4)
		\once \override DynamicText #'extra-offset = #'(-1.8 . 2.4)
			a4_\fp r8 
		\once \override DynamicText #'extra-offset = #'(-2.8 . 2.4)
			a4_\fp r8 |
		\once \override DynamicText #'extra-offset = #'(-2.8 . 2.4)
			a4_\fp r8 
		\once \override DynamicText #'extra-offset = #'(-2.8 . 2.4)
			a4_\fp r8 |	
		d4. e4 e,8 |
		a4 \once \override DynamicText #'extra-offset = #'(-2.4 . 0.4)
		e'8_\pp cs4 
	}
	\repeat volta 2{
		s8 |
		e,4 r8 e4 r8 |
		a4 r8 r4 r8 |
		b4 r8 r r ds |
		e,4 e8 e4 r8 |
		a4 r8 a4 r8 |
		a4 r8 \once \override DynamicText #'extra-offset = #'(-2.8 . 2.4)
			fs'4_\fp r8 |
			
		d4. e4 e,8 |
		a4 \once \override DynamicText #'extra-offset = #'(-2.1 . 2.4)
			e'8_\p cs4
	}
	\repeat volta 2 {
		\key c \major
		s8 |
		a4 r8 a4 r8 |
		e4 r8 r4 d'8 |
		c4 b8 a4 ds8 |
		e4 b8 e,4 r8 |
		
		\once \override DynamicText #'extra-offset = #'(-2.6 . 2.4)
		<d' gs b>4._\fp d |
		\once \override DynamicText #'extra-offset = #'(-2.6 . 2.4)
		c_\fp c |
		d e4 e,8 |
		a4 \once \override DynamicText #'extra-offset = #'(-2.6 . 0.9) e'8_\pp c4 r8 |
		a4. \once \override DynamicText #'extra-offset = #'(-2.9 . 3.4) a_\sf
		
		\once \override DynamicText #'extra-offset = #'(-2.6 . 2.4)
		a4_\f a8 a4 r8 |
		<b' g g,>4 r8 \once \override DynamicText #'extra-offset = #'(-2.1 . 2.4)
			f16_\p g e g d g |
		\once \override DynamicText #'extra-offset = #'(-2.2 . 1.8)
		<c g e c>4_\fp r8 
		\once \override DynamicText #'extra-offset = #'(-2.6 . 2.4)
			c,16_\p g' d g e g |
		<a f>8 r r r r8. fs,16( |
		g4) \once \override DynamicText #'extra-offset = #'(-3.2 . 3.4)
			<f' g,>8_\f <e c>4 r8 |
			
		\once \override DynamicText #'extra-offset = #'(-2.1 . 2.4)
		b'8_\p r gs  a r f |
		\once \override DynamicText #'extra-offset = #'(-2.1 . 2.4)
		r16._\f e32[ ds16( e) b gs] e4 r8 |
		\once \override DynamicText #'extra-offset = #'(-2.1 . 2.4)
		gs'16.[_\p e32 ds16( e) gs e] c'16.[ e,32 ds16( e) a e] |
		gs4 r8 r8 r16 f!( e) d |
		
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.4)
		a4._\fp \once \override DynamicText #'extra-offset = #'(-2.5 . 3.4)
			a8._\fp b16 c8 |
		d4 d8 d4 s8 |
		ds4 ds8 ds4 s8 |
		d 4 d8 d4 s8 |
		\once \override DynamicText #'extra-offset = #'(-2.9 . 2.0)
		<a' e>4._\sfp e, |
		a4 \once \override DynamicText #'extra-offset = #'(-2.4 . 2.0)
			e'8_\pp c4
	}
	\repeat volta 2 {
		g'!8
		
		\once \override DynamicText #'extra-offset = #'(-2.4 . 2.4)
		c,4_\fp c8 c4 c8 |
		c4. c4 r8 |
		f4 \once \override DynamicText #'extra-offset = #'(-2.8 . 2.4)
			e8_\sf d4 
			\once \override DynamicText #'extra-offset = #'(-2.8 . 2.4)
			c8_\sf
		b4 \once \override DynamicText #'extra-offset = #'(-2.8 . 2.4)
			a8_\sf g4
			\once \override DynamicText #'extra-offset = #'(-2.8 . 2.4)
			f8_\sf
		\once \override DynamicText #'extra-offset = #'(-2.2 . 2.9)
		c'4_\fp c8 c4 c8
		
		c4. c4 r8 |
		g4 \once \override DynamicText #'extra-offset = #'(-2.2 . 2.9)
			c8_\sf e,4 
			\once \override DynamicText #'extra-offset = #'(-2.2 . 2.9)
			a8_\sf |
		f4 \once \override DynamicText #'extra-offset = #'(-2.2 . 2.9)
			g8_\f c4 
	}
	\repeat volta 2 {
		\grace{s8} r |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
		f8.[_\fp e16 d8] 
			\once \override DynamicText #'extra-offset = #'(-2.2 . 2.9)
			e8.[_\fp d16 c8] |
			
		\once \override DynamicText #'extra-offset = #'(-2.5 . 1.9)
		<b' g d>4._\fp 
			\once \override DynamicText #'extra-offset = #'(-2.2 . 2.9)
			c,8._\f d16 e8 |
		\once \override DynamicText #'extra-offset = #'(-2.2 . 2.9)
		f8._\fp e16 d8
			\once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
			e8._\fp d16 c8 |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
		b8._\fp a16 g8
			\once \override DynamicText #'extra-offset = #'(-2.2 . 1.9)
			c8._\f d16 e8 |
		\once \override DynamicText #'extra-offset = #'(-2.2 . 0.9)
		f4._\p e |
		d 
		
		c |
		<b' g g,>4 r8 f16( d) b^.^\cres g^. a( b) |
		\once \override DynamicText #'extra-offset = #'(-2.1 . 1.4)
		c4._\fp c |
		c c |
		b4 c8 
		
		e,4 \once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
			a8_\sf |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
		f4_\f \once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
			g8_\f c4 			
	}

		s8 |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
		a4._\fp 
			\once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
			a4._\fp |
		e4 r8 r4 \once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
		d'8_\p |
		c4 b8 a d ds |
		
		e4 b8 e,4 r8 |
		 d'4.\arpeggio d4 r8 |
		 c4.\arpeggio c4 r8 |
		d4. e4 e,8 |
		
		a4 \once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
			e'8_\pp c4 s8 |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
		a4._\fp \once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
			a_\sf |
		d4 a8 d4 \once \override DynamicText #'extra-offset = #'(-2.5 . 0.9)
			r8_\sf |
		\once \override DynamicText #'extra-offset = #'(-2.9 . 2.9)
		g,4._\sfp \once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
			f'8_\p e d |
		\once \override DynamicText #'extra-offset = #'(-2.9 . 2.9)
		c4._\sfp \once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
			c8_\p d e |
		f,4. r4 r8 |
		
		g4 g8 c4 r8 |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 0.0)
		b'8_\p r gs a r f |
		r16. \once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
			e32[_\f ds16 e b gs] e4 r8 |
		gs'16.[ e32 ds16( e) gs e] c'16.[ e,32 ds!16( e) a e] |
		
		e8 r r f!16 e^\rit ds d c b |
		\once \override DynamicText #'extra-offset = #'(-2.3 . 2.0)
		a4_\fp r8 a8. b16 c8 |
		\once \override DynamicText #'extra-offset = #'(-2.4 . 2.3)
		d4_\f d8 d4 s8 |
		ds4 ds8 ds4 s8 |
		d4 d8 d4 s8 |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 1.9)
		e4._\fp e,4 e8
		
		\once \override DynamicText #'extra-offset = #'(-2.2 . 1.4)
		a4._\fp \once \override DynamicText #'extra-offset = #'(-2.6 . 3.9)
			e_\fp |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
		a4._\fp \once \override DynamicText #'extra-offset = #'(-2.5 . 3.9)
			e_\fp |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
		a4._\fp \once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
			d_\fp |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 1.9)
		e4._\f e,4 e8 |
		
		a4 r8 r4 r8 |
		e4 r8 r4 r8 |
		a4 r8 r4 r8 |
		
		e4 r8 r4 r8 |
		a4 r8 a4 r8 |
		a4 r8 a4 r8 |
		
		a4 r8 d4 r8 |
		e4 r8 e,4 r8 |
		a4 r8  e e e |
		
		a4 r8 e e e |				
		a4 r8 a4 r8 |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
		a4_\p s8
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
			a4_\p s8 |
		\once \override DynamicText #'extra-offset = #'(-2.5 . 2.9)
		a2._\f
		
}	

staffClassicalGuitar = \new Staff  {
		\time 6/8
%		\key c \major
		\set Staff.connectArpeggios = ##t
		\set Staff.midiInstrument="acoustic guitar (nylon)"
		<<
			\new Voice = A { \voiceOne  \upper }
			\new Voice = C { \voiceFour  \lower }
		>>
		\bar "|."
}

\score { 
		<<
			\staffClassicalGuitar
		>>
		}
		
\layout  {\context {
   \Staff
   \consists Span_arpeggio_engraver
 } }

\score {
%%	\unfoldRepeats
	\staffClassicalGuitar
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
	    }
    }
}
