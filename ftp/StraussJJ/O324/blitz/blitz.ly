\paper { linewidth = 7.0 \in
			topmargin = .5 \in
			bottommargin = 0.5 \in
			aftertitlespace = .5 \in
			footsep = .5 \in
		
		}
		

%%% From the music book entitled "Parlor Gems" (a Choice Selection
%%% of Music, Instrumental and Vocal, by the 
%%% Best Composers, to which is added original
%%% Charades for Parlor Performance
%%% by C. M. Cady.
%%% Published in 1878 by C. M. Cady, 107 Duane St., New York.

\header {
  title = "THUNDER AND LIGHTNING."
  subtitle = \markup {\small \small "(UNTER DONNER UND BLITZ.)"}
  subsubtitle = \markup {\small "FAST POLKA." }
  composer = "Johann Strauss II, Op. 324."
  arranger = ""
  poet = ""
  instrument = ""
  source = "C. M. Cady, Pub. 1878"
  copyright = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  lastupdated = "10/9/2005"
  
  % % These are headers used by the Mutopia Project 
  % http://www.mutopiaproject.org/ 
  mutopiatitle = "Thunder and Lightning" 
  mutopiacomposer = "StraussJJ"
  mutopiapoet = "" 
  mutopiainstrument = "Piano" 
  date = "1825-1899" 
  source = "C. M. Cady, Pub. 1878"
  maintainer = "Stan Sanderson" 
  maintainerEmail = "physinfoman@ameritech.net"
  maintainerWeb = ""
  lastupdated = "10/9/2005"
   footer = "Mutopia-2005/10/17-610"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


\include "english.ly"
\version "2.6.0"
#(set-global-staff-size 18)


upper = \relative c' { \time 2/4 \key g \major
%% 1-4
		<d a' c d>8_\f^\markup {\column {\italic \bold "Introduction."  " "}} 
			r <gs b d> r
		<g bf d> r <fs a d> r
		<e g d'> r < d fs d'> r
		<e g d'> r << {\slurDown r8 <d' fs>16\accent( <c e> 
%% 5-8
		<c fs,>4^\markup {\column {\italic \bold "Polka."  " "}}
			<fs, d>) }\\{<fs d>8 r s2}>> \slurNeutral
		<fs c'>4( <fs d>)
		<c' e>8[ r16 <c e>] <c e>8[ r16 <c e>]
		<c e>4.(<d fs>16 <c e>)
%% 9-12
		<b g>4( <g d>)
		<b g>( <g d>)
		<b e>8[ r16 <b e>] <b e>8[ r16 <b e>]
		<b e>4.( <d fs>16 <c e>)
%% 13-16
		<c fs,>4 <c fs>
		<c fs> <fs c'>
		<c d fs>8[ r16 <c d fs>] <c d fs>8[ r16 <c d fs>]
		<c d fs>4 ~ <c d fs>16( e d c)
%% 17-20
		<b g>4 <d g>
		<d g> <g b>
		<g d g,>8[ r16 <g d g,>] <g d g,>8[ r16 <g d g,>]
		<g d g,>4.( <fs d>16 <e c>)
%% 21-24
		<c fs,>4( <fs, d>)
		<c' fs,>( <fs, d>)
		<c' e>8[ r16 <c e>] <c e>8[ r16 <c e>]
		<c e>4.(<d fs>16 <c e>)
%% 25-28
		<b g>4( <g d>)
		<b g>( <g d>)
		<b e>8[ r16 <b e>] <b e>8[ r16 <b e>]
		<b e>4. e16( d)
%% 29-32
		<cs a>4 <cs g'>
		<cs g'> <g' b>
		<a fs>8. <a fs>16 <a fs>8. <a fs>16
		<a fs>4 b16( a gs a)
%% 33-36
		<b b,>8[ g e fs]
		<g g,>[ <a a,> <b b,> <cs cs,>]
		<d d,>[ d, d d]
		ef[ d e d]
%% 37-40
		<f d bf f>4. d8
		ef[ d e d] 
		<fs! d a fs!>4. d8
		<gs f d b gs>\accent r d r
%% 41-44
		<gs f d b gs>\accent r d r
		<a c! d fs! a> r r <e' e'>
		<d' d,>[ <c c,> <b b,> <a a,>]
		\repeat volta 2 {<c, c'>8[ d <b b'> d]
%% 45-48
		<a a'>[ d <g, g'> d']
		<a c fs> r <a c e> r
		<a c ds> r <a c e> r
		<c! d>4( <fs c'>8. <d fs>16)
%% 49-52
		<c d fs>2
		<b d>4( <g' b>8. <d g>16)
		<d g>8[ <d d'> <d e'> <d d'>]
		<c c'>[ d <b b'> d]
%% 53-56
		<a a'>[ d <g, g'> d']
		<a c fs> r <a c e> r
		<a c ds> r <a c e> r
		<b d!>4( <b g' b>8. <d g>16)
%% 57-60
		<d b>4( <d b' d>8. <g b>16)
		<e e'>8[ <d d'> <a a'> <b b'>]
		}
		\alternative {{<g g'>[ <d' d'> <e e'> <d d'>]}
			{<g, g'> <g g'> <g g'> r }} \break

%%
%% Trio Section
%%
%% 61-64
		\key c \major
		#(set-octavation 1)
		a''16[(^\markup {\column {\large \bold \italic "Trio."  " " }}
			g f e]) d8 r
		f16[( e d c]) b8 #(set-octavation 0) r
		<g b d g>8[ <f f'> <d d'> <b b'>] 
		<g g'> r r g
%% 65-68
	\repeat volta 2 { 
			c4( e)
			a( ~ a8. g16)
			f4( b,8 g)
			<f' g>2\accent
%% 69-72
			f4( b,8 g)
			<f' g>2\accent
			e4( c8. a16)
			g4 r8 g
%% 73-76
			c4( e)
			a( ~ a8. g16)
			f4( b,8 g)
			<f' g>2\accent
%% 77-80
			<gs gs,>8 r <a a,> r
			<as as,> r <b b,> r 
			<d d,>[ <e e,> <f f,> <fs fs,>] 
			}
		\alternative {{ <g g,> r r g,,} 
%% 81-84
			{<g' g'> r r4}} %% (2nd ending)
		\repeat volta 2 {
			\acciaccatura gs8 a8 r \acciaccatura fs g! r
			<d d'>8.(-^ <c c'>16 g'8) r
			\acciaccatura gs8 a8 r \acciaccatura fs g! r
%% 85-88
			<c, c'>8.(-^ <b b'>16 g'8) r
			\acciaccatura gs8 a8 r \acciaccatura fs g! r
			<g g'>4(\accent g8) r
			\acciaccatura gs8 a8 r \acciaccatura fs g! r
%% 89-92
			<g g'>4(_\accent g8) r
			\acciaccatura gs8 a8 r \acciaccatura fs g! r
			<d d'>8.( <c c'>16 g'8) r
			\acciaccatura gs8 a8 r \acciaccatura fs g! r
%% 93-96
			<c c,>8.( <b b,>16 <g g,>8) r
			\acciaccatura as8 b8 r \acciaccatura cs d r	
			<e e,>4( e,8) r
			<fs fs'>4(_\accent fs8) r
			}
%% 97-100
		\alternative {{<g g'>4(-^( g8) r}
			{<g g'>8 r c4(\trill_\accent
			b8) r a4(\trill 
			g8) r \acciaccatura f8 <a f>8 r
%% 101-104
			<g e>8 r <f d> g,
			c4( e)
			a4( ~ a8. g16)
			f4( b,8 g)
%% 105-108
			<f' g>2\accent
			f4( b,8 g)
			<f' g>2\accent
			e4( c8. a16)
%% 109-112
			g4 r8 g
			c4( e)
			a( ~ a8. g16)
			f4( e8 d)
%% 113-116
			<b b'>4. <a a'>8
			<a a'> r <g g'> r
			fs'[ g c e,]
			<e c g>4 <d b g f>
%% 117-120
			<c g e>8[ <c g e> <c g e>] r }} \break
			\key g \major
		<d, a' c d>8_\f^\markup {\column {\italic "Finale."  " "}} 
			r <gs b d> r
		<g bf d> r <fs a d> r
		<e g d'> r < d fs d'> r
%% 121-124
		<e g d'> r << {\slurDown r8 <d' fs>16\accent( <c e> 
		<c fs,>4 <fs, d>) }\\{<fs d>8 r s2}>> \slurNeutral
		<fs c'>4( <fs d>)
		<c' e>8[ r16 <c e>] <c e>8[ r16 <c e>]
%% 125-128
		<c e>4.(<d fs>16 <c e>)
		<b g>4( <g d>)
		<b g>( <g d>)
		<b e>8[ r16 <b e>] <b e>8[ r16 <b e>]
%% 129-132
		<b e>4.( <d fs>16 <c e>)
		<c fs,>4 <c fs>
		<c fs> <fs c'>
		<c d fs>8[ r16 <c d fs>] <c d fs>8[ r16 <c d fs>]
%% 133-136
		<c d fs>4 ~ <c d fs>16( e d c)
		<b g>4 <d g>
		<d g> <g b>
		<g d g,>8[ r16 <g d g,>] <g d g,>8[ r16 <g d g,>]
%% 137-140
		<g d g,>4.( <fs d>16 <e c>)
		<c fs,>4( <fs, d>)
		<c' fs,>( <fs, d>)
		<c' e>8[ r16 <c e>] <c e>8[ r16 <c e>]
%% 141-144
		<c e>4.(<d fs>16 <c e>)
		<b g>4( <g d>)
		<b g>( <g d>)
		<b e>8[ r16 <b e>] <b e>8[ r16 <b e>]
%% 145-148
		<b e>4. e16( d)
		<cs a>4 <cs g'>
		<cs g'> <g' b>
		<a fs>8. <a fs>16 <a fs>8. <a fs>16
%% 149-152
		<a fs>4 b16( a gs a)
		<b b,>8[ g e fs]
		<g g,>[ <a a,> <b b,> <cs cs,>]
		<d d,>[ d, d d]
%% 153-156
		ef[ d e d]
		<f d bf f>4. d8
		ef[ d e d] 
		<fs! d a fs!>4. d8
%% 157-160
		<gs f d b gs>\accent r d r
		<gs f d b gs>\accent r d r
		<a c! d fs! a> r r <e' e'>
		<d' d,>[ <c c,> <b b,> <a a,>]
%% 161-164
		\set Staff.voltaSpannerDuration = #(ly:make-moment 2 4 )
		\repeat volta 2 {<c, c'>8[ d <b b'> d]
		<a a'>[ d <g, g'> d']
		<a c fs> r <a c e> r
		<a c ds> r <a c e> r
%% 165-168
		<c! d>4( <fs c'>8. <d fs>16)
		<c d fs>2
		<b d>4( <g' b>8. <d g>16)
		<d g>8[ <d d'> <d e'> <d d'>]
%% 169-172
		<c c'>[ d <b b'> d]
		<a a'>[ d <g, g'> d']
		<a c fs> r <a c e> r
		<a c ds> r <a c e> r
%% 173-176
		<b d!>4( <b g' b>8. <d g>16)
		<d b>4( <d b' d>8. <g b>16)
		<e e'>8[ <d d'> <a a'> <b b'>]
		}
		\alternative {{<g g'>[ <d' d'> <e e'> <d d'>]}
%% 177-180
			{<g g'>[ <g g'> <g g'>] r 
			g2(\startTrillSpan
			g)\stopTrillSpan
			<a fs d a>4 <as fs d as>
%% 181-184
			<b g d b>8[ g d] r
			g2(\startTrillSpan
			g)\stopTrillSpan
			<b g d b>4 <a fs c a>
%% 185-188
			<g cs, bf g>8 r <cs, bf g e> r
			<g' cs, bf g> r <cs, bf g e> r
			d,16( e fs g a b! c! d)
			c( b a b c d e fs)
%% 189-192
			<g d b g>8[ <fs d c a> <g d b g> <fs d c a>]
			<g d b g>8[ <fs d c a> <g d b g> <fs d c a>]
			<g d b g> r r4
			<b g d b>8 r r4
%% 193
			g,,2\fermata
			}} 
	

	}	
	
two = \relative c {d,8_\fz r r4_\pp } %%% First measure work-around
		
lower = \relative c { \time 2/4 \key g \major \clef bass
%% 1-4
		d2(
		<d, d'>32) d'( d, d' d, d' d, d' d, d' d, d' d, d' d, d')
		\repeat "tremolo" 8 {d,32( d')}
		\repeat "tremolo" 8 {d,32( d')} \bar ".|"
%% 5-8
		a8[ <d fs c'> d, <d' fs c'>]
		a8[ <d fs c'> d, <d' fs c'>]
		fs,[ <d' a' c> d, <d' a' c>]
		fs,[ <d' fs c'>  <d fs c'>  <d fs c'> ]
%% 9-12
		g,[ <d' g b> b <d g b>]
		g,[ <d' g b> b <d g b>]
		g,[ <d' g b> b <d g b>]
		g,[ <d' g b> <d g b> <d g b>]
%% 13-16
		a[ <d fs c'> d, <d' fs c'>]
		a[ <d fs c'> d, <d' fs c'>]
		a[ <d fs c'> d, <d' fs c'>]
		a[ <d fs c'> <d fs c'> <d fs c'>]
%% 17-20
		g,[ <d' g b> d, <d' g b>]
		g,[ <d' g b> d, <d' g b>]
		g,[ <d' g b> d, <d' g b>]
		g,[ <d' g b> <d g b> <d g b>]
%% 21-24
		a[ <d fs c'> d, <d' fs c'>]
		a[ <d fs c'> d, <d' fs c'>]
		fs,[ <d' a' c> d, <d' a' c>]
		fs,[ <d' fs c'> <d fs c'> <d fs c'>]
%% 25-28
		g,[ <d' g b> b <d g b>]
		g,[ <d' g b> b <d g b>]
		g,[ <d' g b> b <d g b>]
		g,[ <d' g b> <d g b> <d g b>]
%% 29-32
		e[ <a cs g'> a, <a' cs g'>]
		e[ <a cs g'> a, <a' cs g'>]
		d,[ <a' d fs> d, <a' d fs>]
		d,[ <a' d fs> <a d fs> <a d fs>]
%% 33-36
		g[ <b e g> g <b e g>]
		a,[ <a' e' g> a, <a' e' g>]
		<d fs>[ <d a fs d> <d a fs d> <d a fs d>]
		ef[ d e d]
%% 37-40
		<d bf f! d>[ <d bf f d> <d bf f d> d]
		ef[ d e d]
		<d a fs! d>[ <d a fs d> <d a fs d> d]
		r4 <b gs f d>8 r
%% 41-44
		r4 <b gs f d>8 r
		<c! a fs! d>8[ d, d] r
		e2\rest 
		g,8[ <b d g> g <b d g>]
%% 45-48
		g[ <b d g> g <b d g> ]
		c[ <e a c> c <e a c> ]
		c[ <e a c> c <e a c> ]
		d[ <fs c' d> d <fs c' d> ]		
% 49-52
		d[ <a a'> <fs fs'> <d d'>]
		g[ <b d g> g <b d g> ]
		g[ <d' g b> <d g b> <d g b> ]
		g,[ <b d g> g <b d g> ]
%% 53-56
		g[ <b d g> g <b d g>]
		c[ <e a c> c <e a c>]
		c[ <e a c> c <e a c>]
		<d g b d> r r4
%% 57-60
		<d g b d>8 r r4
		d,8[ <d' fs c'> d, <d' fs c'>]
	%% alt 1
		<g b> r r4
	%% alt 2 
		<g b>8 <g b> <g b> r  \bar "|."

%%
%% Trio Section
%%
%%% 61-64
		\key c \major
		<f d b g>8 r r4	
		<f d b g>8 r r4	
		<f d b g>8 r r4	
		e2\rest  
%% 65-68
		c8[_\p <g' c e> c, <g' c e>]
		c,[ <g' c e> <g c e> <g c e>]
		d[ <g b f'> g, <g' b f'>]
		d[ <g b f'> <g b f'> <g b f'>]
%% 69-72
		d[ <g b f'> g, <g' b f'>]
		d[ < g b f'> <g b f'> <g b f'>]
		c,[ <g' c e> g, <g' c e>]
		c,[ <g' c e> <g c e> <g c e>]
%% 73-76
		c,[ <g' c e> c, <g' c e>]
		c,[ <g' c e> <g c e> <g c e>]
		d[ <g b f'> g, <g' b f'>]
		d[ <g b f'> <g b f'> <g b f'>]
%% 77-80
		<g b d f> r <g b d f> r
		<g b d f> r <g b d f> r
		<f d b g>[ <f d b g> <f d b g> <f d b g>]
		<f d b g> r r4
%% 81-84
		<f d b g>8 r g,,4\accent
		e''2\rest
		c8[ <g' c e> e <g c e>]
		c,[ <g' c e> e <g c e>]
%% 85-88
		d[ <g b f'> g, <g' b f'>]
		d[ <g b f'> g, <g' b f'>]
		g[ <b d f> g <b d f>]
		g[ <b d f> g <b d f>]
%% 89-92
		c,[ <g' c e> <g c e>] r
		c,[ <g' c e> e <g c e>]
		c,[ <g' c e> e <g c e>]
		c,[ <g' c e> e <g c e>]
%% 93-96
		g[ <b d> g <b d>]
		g[ <b d> g <b d>]
		<c a e c>4 r
		<c fs, d>4 r
%% 97-100
		<b g>8[ <g d b g> <g d b g>] r
		<b g> r <a c ef>4(
		<g b d>8) r <g c ef fs>4(
		<g b d g>8) r r4
%% 101-104
		e2\rest
		c8[ <g' c e> c, <g' c e>]
		c,[ <g' c e> <g c e> <g c e>]
		d[ <g b f'> g, <g' b f'>]
%% 105-108
		d[ <g b f'> <g b f'> <g b f'>]
		d[ <g b f'> g, <g' b f'>]
		d[ < g b f'> <g b f'> <g b f'>]
		c,[ <g' c e> g, <g' c e>]
%% 109-112
		c,[ <g' c e> <g c e> <g c e>]
		c,[ <g' c e> c, <g' c e>]
		c,[ <g' c e> <g c e> <g c e>]
		f[ <a d> f <a d>]
%% 113-116
		f[ <a d f> <a d f> <a d f>]
		g[ <c e> g <c e>]
		g[ <c e> <c e> <c e>]
		<g, g,>4 <g g,>
%% 117-120
		<c c,>8[ <e e,> <c c,>] r \bar "|."
		\key g \major
		<< d2 \\ {d,8_\fz r8 r4_\pp}>>
		<d d'>32 d'( d, d' d, d' d, d' d, d' d, d' d, d' d, d')
		\repeat "tremolo" 8 {d,32( d')}
%% 121-124
		\repeat "tremolo" 8 {d,32( d')} \bar ".|"
		a8[ <d fs c'> d, <d' fs c'>]
		a8[ <d fs c'> d, <d' fs c'>]
		fs,[ <d' a' c> d, <d' a' c>]
%% 125-128
		fs,[ <d' fs c'>  <d fs c'>  <d fs c'> ]
		g,[ <d' g b> b <d g b>]
		g,[ <d' g b> b <d g b>]
		g,[ <d' g b> b <d g b>]
%% 129-132
		g,[ <d' g b> <d g b> <d g b>]
		a[ <d fs c'> d, <d' fs c'>]
		a[ <d fs c'> d, <d' fs c'>]
		a[ <d fs c'> d, <d' fs c'>]
%%133-136		
		a[ <d fs c'> <d fs c'> <d fs c'>]
		g,[ <d' g b> d, <d' g b>]
		g,[ <d' g b> d, <d' g b>]
		g,[ <d' g b> d, <d' g b>]
%% 137-140
		g,[ <d' g b> <d g b> <d g b>]
		a[ <d fs c'> d, <d' fs c'>]
		a[ <d fs c'> d, <d' fs c'>]
		fs,[ <d' a' c> d, <d' a' c>]
%% 141-144
		fs,[ <d' fs c'> <d fs c'> <d fs c'>]
		g,[ <d' g b> b <d g b>]
		g,[ <d' g b> b <d g b>]
		g,[ <d' g b> b <d g b>]
%% 145-148
		g,[ <d' g b> <d g b> <d g b>]
		e[ <a cs g'> a, <a' cs g'>]
		e[ <a cs g'> a, <a' cs g'>]
		d,[ <a' d fs> d, <a' d fs>]
%% 149-152
		d,[ <a' d fs> <a d fs> <a d fs>]
		g[ <b e g> g <b e g>]
		a,[ <a' e' g> a, <a' e' g>]
		<d fs>[ <d a fs d> <d a fs d> <d a fs d>]
%% 153-156
		ef[ d e d]
		<d bf f! d>[ <d bf f d> <d bf f d> d]
		ef[ d e d]
		<d a fs! d>[ <d a fs d> <d a fs d> d]
%% 157-160
		r4 <b gs f d>8 r
		r4 <b gs f d>8 r
		<c! a fs! d>8[ d, d] r
		e2\rest 
%% 161-164
		g,8[ <b d g> g <b d g>]
		g[ <b d g> g <b d g> ]
		c[ <e a c> c <e a c> ]
		c[ <e a c> c <e a c> ]
%% 165-168
		d[ <fs c' d> d <fs c' d> ]		
		d[ <a a'> <fs fs'> <d d'>]
		g[ <b d g> g <b d g> ]
		g[ <d' g b> <d g b> <d g b> ]
%% 169-172
		g,[ <b d g> g <b d g> ]
		g[ <b d g> g <b d g>]
		c[ <e a c> c <e a c>]
		c[ <e a c> c <e a c>]
%% 173-176
		<d g b d> r r4
		<d g b d>8 r r4
		d,8[ <d' fs c'> d, <d' fs c'>]
	%% alt 1
		<g b> r r4
%% 177-180
	%% alt 2 
		<g b>8 <g b> <g b> r 
		\clef treble
			<f'! g b>4 <f g b>
			<e g c>8[ <g b d> <g c e>] r
		\clef bass
			<d, d,>4 <d d,>
%% 181-184
			<g d b g>8[ <g b d g> <g b d g>] r
		\clef treble
			<f'! g b>4 <f g b>
			<e g c>8[ <g b d> <g c e>] r
		\clef bass
			<d, d,>4 <d d,>
%% 185-188
			r g,,8 r			
			r4 g8 r	\tieNeutral
			<d' a' c d>2 ~ 
			<d a' c d>8[ <d a' c d> <d a' c d> <d a' c d>]
%% 189-192
			<g b d>[ <d a' d> <g b d> <d a' d>]	
			<g b d>[ <d a' d> <g b d> <d a' d>]				
			\repeat "tremolo" 8 {g,32 g'}
			\repeat "tremolo" 8 {g,32 g'}
%% 193
			\repeat "tremolo" 4 {g,32 g'}	<g g,>4\fermata
			\bar ".|."
		}
			
		
		
dynamics = {s8 s8 s8-\p s8
			s2*11 s4-\< s4 s4 s4\!
			s2*2 s4-\< s4\! s2*26		
			s8-\f s8 s4 %% measure 44
			s2*16 s8-\f s8 s4 		%% measure 61
			s2*2 s4 s8 s8-\p			%% measure 64
			s2*17 s8-\p s8 s4 			%% measure 82
			s2*18 s4 s8-\p s8			%% measure 101
			s2*14 s4-\f s4	s2			%% measure 116
			s8 s8 s8-\p s8		%% measure 118
			s2*15 s8-\< s4 s8\!			%% measure 134
			s2*26 s8-\f s8 s4			%% measure 161
			s2*3 s8-\fp s4.				%% measure 165
			s2*7 s8-\fz s4.				%% measure 173
			s2*11 s4 s8-\fz s8			%% measure 185
			s2*8						%% end
			}



\score {
 	     \context PianoStaff <<
 	     \set PianoStaff.instrument = \markup{\small "Piano" " " " "}
         \context Staff=upper \upper
         \context Dynamics=dynamics \dynamics
         \context Staff=lower << \lower \\ \two >>
         >>

       \layout {
         \context {
           \type "Engraver_group_engraver"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           minimumVerticalExtent = #'(-1 . 1)
          
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
     
           \override TextScript #'font-size = #2
           \override TextScript #'font-shape = #'italic
           \override DynamicText #'extra-offset = #'(0 . 2.5)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment #'forced-distance = #6.5
         }
       }
       \midi {
       	\tempo 4 =120
         \context {
           \type "Performer_group_performer"
           \name Dynamics
           \consists "Span_dynamic_performer"
           \consists "Dynamic_performer"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
         }
       }
	}
