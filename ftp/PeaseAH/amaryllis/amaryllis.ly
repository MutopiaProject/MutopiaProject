\include "english.ly"
#(set-global-staff-size 20)

\version "2.6.0" 


%\paper { linewidth = 7.0 \in
%			topmargin = .5 \in
%			bottommargin = 0.5 \in
%			aftertitlespace = .75 \in
%			footsep = .5 \in
%			}

\header {
  title = "Amaryllis"
  subtitle = " "
  subsubtitle = \markup{\small \italic "(Air par le Roi Louis XIII.)"}
  composer = \markup {\column {"Arranged by A. H. Pease" "(1838-1882)"}}
  poet = ""
  instrument = ""  
  copyright = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  
  
  % These are headers used by the Mutopia Project 
  % http://www.mutopiaproject.org/ 
  mutopiatitle = "Amaryllis" 
  mutopiacomposer = "PeaseAH" 
  mutopiapoet = "" 
  mutopiainstrument = "Piano" 
  date = "1838-1882" 
  source = "C. M. Cady, Pub. 1878"
  maintainer = "Stan Sanderson" 
  maintainerEmail = "physinfoman@ameritech.net"
  maintainerWeb = ""
  lastupdated = "2/25/2005"
  
  footer = "Mutopia-2005/10/09-606"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


			
%%% From the music book entitled "Parlor Gems" (a Choice Selection
%%% of Music, Instrumental and Vocal, by the 
%%% Best Composers, to which is added original
%%% Charades for Parlor Performance
%%% by C. M. Cady.
%%% Published in 1878 by C. M. Cady, 107 Duane St., New York.



upper = \relative c'' { 
	\clef treble 
	\key e \major 
	\time 4/4 
		\partial 4 <g b>8_.^\markup {\italic \small Allegretto.} <a c>_. |
%% 1-3
		<<{b8(-> e8)}\\{g,4}>> <g b>8_. <a c>_. <g b>4-> <b d>8^. <c! e>^. |
	%% c sharp in original, measure 2
		<<{d8(-> g8)}\\{b,4}>> <b d>8^. <c e>^. <b d>4->
			<<{fs'8-. gs-.}\\{<b, ds>8 <b ds>}>> |
		<<{fs'8->([ b)] fs-.[ gs-.] fs->([ ds')] fs,-.[ gs-.]}\\
			{<b, ds>4 <b ds>8 <b ds> <b ds>4 <b ds>8 <b ds>}>>
%%% 4-6
		<<{fs'-> fs' cs,-.[ ds-.] b^>}\\
			{<b ds>4 fs8_. fs_. fs_>}>> <b b'>^.[_\< <b b'>^. <b b'>^.]\! |
		<b b'>^.( <b b'>^._\> <b b'>^. <b b'>^. <b b'>^. <b b'>^.)\!_\pp
			<e gs b>8\arpeggio^. <e gs cs>\arpeggio^. | \bar "|."
		<e gs b>8\arpeggio_\markup {\small \italic "quasi arpa"}
			<e gs b e>\arpeggio <e gs b>\arpeggio <e gs cs>\arpeggio
				<e gs b>\arpeggio r_\pp <e gs cs>\arpeggio 
					<e gs cs>\arpeggio |
%%% 7-9
		<ds fs b>8\arpeggio <ds fs cs'>\arpeggio
			<<{b'16 a gs fs}\\{<fs ds>8 <ds b>}>> <gs e b>\arpeggio
				<e gs b> <e gs b>\arpeggio <e gs cs>\arpeggio
		<e gs b>_\markup {\small \italic "sempre arpeggiando."}
			<e gs b e> <e gs b> <e gs cs> <e gs b> r <e gs cs> <e gs cs> |
		<ds fs b>8 <ds fs cs'> <<{b'16 a gs fs}\\{<ds fs>8 <ds b a>}>> 
			<e b gs> r #(set-octavation 1) <b' e gs b>_\ff <cs cs'> |
%%% 10-12
		<b e gs b>8 <e e'> <b e gs b> <cs cs'> <b e gs b> r <cs cs'> <cs cs'> |
		<b ds fs b>8 <cs cs'> <b ds fs b>16 <a a'> <gs gs'> <fs fs'> <gs gs'>8[
			<e e'>] <b' e gs b> <cs cs'> |
		<b e gs b>8 <e e'> <b e gs b> <cs cs'> <b e gs b> r <cs cs'> <cs cs'> |
%%% 13-15
		<b ds fs b>8 <cs cs'> <b ds fs b>16 <a a'> <gs gs'> <fs fs'> <e e'>8 r
			#(set-octavation 0) <b, g>_._\f <b g>_. | \bar "|."
		\key g \major \clef bass <b fs>8-.[_\f <b e,>16-. <b fs>-.] 
			<b g>8-. <b g>-. <b fs ds>4->  <b g>8-. <b g>-. |
		<<{c8 b16 a}\\{<g e>4}>> <b g d>8-.[ <a fs d>-.]
			<b fs d>->[( <g d b>-.]) <b g>-._\f <b g>-. |
%%% 16-18
		<b fs>8-.[ <b e,>16-. <b fs>-.] <b g>8-. <b g>-. <b fs ds>4->  
			<b g>8-. <b g>-. |
		<<{c8 b16 a}\\{<g e>4}>> <g e>8-. <e fs a>-. <ds fs b>4-> 
			\clef treble <e'' gs b>8_\p <e gs cs> | \bar "|."
		\key e \major <e gs b>8 <e gs b e> <e gs b> <e gs cs> <e gs b> r 
			<e gs cs> <e gs cs> |
%%% 19-21
		<ds fs b>8 <ds fs cs'> <<{b'16 a gs fs}\\{<fs ds>8 <ds b>}>> <gs e b>[
			<e b gs>] <e gs b> <e gs cs> |
		<e gs b> <e gs b e> <e gs b> <e gs cs> <e gs b> r <e gs cs> <e gs cs> |
		<ds fs b>8 <ds fs cs'> <<{b'16 a gs fs}\\{<ds fs>8 <ds b gs>}>> 
			<e b gs> r <cs cs'>16-._\p <d d'>-. <e e'>-. <fs fs'>-. | \bar "|."
%%% 22-24
		\key a \major <e e'>8-. <fs fs'>-. <gs gs'>-. <a a'>-. <b, b,> r 
			<a' a'>16-. <gs gs'>-. <fs fs'>-. <a a'>-. |
		<gs gs'>8-.[ <b b,>16-. <cs cs,>-.] \acciaccatura e8 <d d,>16-. 
			<cs cs,>-. 
			<d d,>-. <e e,>-. <cs cs,>8-. <a a,>-. <cs cs,>16-. <d d,>-.
				<e e,>-. <fs fs,>-. |
		<e e,>8-. <fs fs,> <gs gs,>-. <a a,>-. <b, b,>8-. r <a a'>16-. <gs gs'>-.
			<fs fs'>-. <a a'>-. |
%%% 25 27
		<gs' gs,>8 <b, b,>16 <cs cs,> \acciaccatura e8 <d d,>16 <cs cs,> <d d,>
			<b b,> <a a,>8 r #(set-octavation 1) <cs cs'>16-. <d d'>-. 
				<e e'>-. <fs fs'>-. | \bar "|."
		<e e'>8-. <fs fs'>-. <gs gs'>-. <a a'>-. <b, b'>4 <a' a'>16-. <gs gs'>-.
			<fs fs'>-. <a a'>-. |
		<gs gs'>8-. <b b,>16-. <cs cs,>-. \acciaccatura e8 <d d,>16-. <cs cs,>-. 
			<d d,>-. <e e,>-. <cs cs,>8-. <a a,>-. <cs cs,>16-. <d d,>-.
				<e e,>-. <fs fs,>-. |
%%% 28-30
		<e, e'>8-. <fs fs'>-. <gs gs'>-. <a a'>-. <b, b'>4 <a' a'>16-. 
			<gs gs'>-. <fs fs'>-. <a a'>-. |
		<gs gs'>8-.[ <b b,>16-. <cs cs,>-.] \acciaccatura e8 <d d,>16-. 
			<cs cs,>-. <d d,>-. <b b,>-. <a a,>8 r #(set-octavation 0) 
				<c,,, e>_. <c e>_. | \bar "|." \key c \major
		<e b>8->_._\f <e a,>16_. <e b>_. <e c>8_. <e c>_. <e b gs>4-> 
			<e c>8_. <e c>_. |
%%% 31-33
		<<{f8-> e16( d)}\\{<c a>4}>> <e c g>8_. <d b g>_. <e c g>_.[
			<c g e>_.] <e c>_. <e c>_. |
		<e b>8_. <e a,>16_. <e b>_. <e c>8_. <e c>_. <e b gs>4->_. 
			<e c>8_. <e c>_. |
		<<{f8-> e16( d)}\\{<c a>4}>> <c a>8_. <d b a>_. <e b gs>4->
			<cs' cs'>16_\p^. <d d'>^. <e e'>^. <fs fs'>^. | \bar "|."
%%% 34-36
		\key a \major <e e'>8^. <fs fs'>^. <gs gs'>^> <a a'>^> <b b,>4
			<a a'>16^. <gs gs'>^. <fs fs'>^. <a a'>^. |
		<gs gs'>8^. <b b,>16^. <cs cs,>^> \acciaccatura e8 <d d,>16^. 
			<cs cs,>^. <d d,>^. <e e,> <cs cs,>8^. <a a,>^. <cs cs,>16^. 
				<d d,>^. <e e,>^. <fs fs,>^. |
		<e e,>8^. <fs fs,>^. <gs gs,>^. <a a,>^. <b, b,>4^. <a a'>16^.
			<gs gs'>^. <fs fs'>^. <a a'>^. |
%%% 37-39
		<gs gs'>8^. <b b,>16^. <cs cs,>^> \acciaccatura e8 <d d,>16^. 
			<cs cs,>^. <d d,>^. <b b,> <a a,>8 r8 <b gs e> 
				<cs gs e> | \bar "|."
		\key e \major <b gs e>8[ <e b gs e> <b gs e> <cs gs e> <b gs e>] r
			<cs gs e> <cs gs e> |
		<b fs ds> <cs fs, ds> <<{b16 a gs fs}\\{<fs ds>8 <ds b>}>> 
			<gs e b>8 <e b[ gs>] <e gs b > <e gs cs> |
%%% 40-43
		<e gs b>8 <e gs b e> <e gs b> <e gs cs> <e gs b>4 <e gs cs>8 <e gs cs> |
		<ds fs b>8 <ds fs cs> <<{b'16 a gs fs}\\{<fs ds>8 <ds b a>}>>
			<e b gs>8 cs b16_. a_. gs_. fs_. |
		e8_. cs_. b16_. a_. gs_. fs_. e8 r <e'' b' e> r |
		s1 |		
	} 
	
lower = \relative c' { 
	\clef bass 
	\key e \major 
	\time 4/4
		\partial 4 e8-. e-. |
%% 1-3
		e4-> e8-. e-. e->([ e,)] g'-.[ g-.] |
		g4-> g8-. g8-. g([ g,!)] <fs'! fs,>-.[ <fs fs,>-.] |
		<ds fs,>4-> <ds fs,>8-. <ds fs,>8-. <ds fs,>4-> <ds fs,>8-. <ds fs,>8-. |
%%% 4-6
		<ds fs,>4-> <e as, fs>8-. <e as, fs>-. <ds b>8-> r8 r4 |
		R1 | 
		<e,, b' gs'>8\arpeggio b''( <gs e'> b) <e,, b' gs'>\arpeggio
			 b''( <gs e'> b)
%%% 7-9
		<a b,>8\arpeggio b( <ds a> b) <gs b, e,>\arpeggio
			b( <e gs,> b) |
		<e,, b' gs'>8 b''( <gs e'> b) <e,, b' gs'> b''( <gs e'> b) |
		<a b,>8 b( <ds a> b) <e, gs b e> r r4 |	
%%% 10-12
		<gs b, e,>8 b([ <gs e'> b)] <gs b, e,>8 b([ <gs e'> b)] |
		<a b,>8 b([ <a ds> b)] <gs b, e,> b([ <gs e'> b)] |
		<gs b, e,>8 b([ <gs e'> b)] <gs b, e,>8 b([ <gs e'> b)] |
%%% 13-15
		<a b,>8 b([ <a ds> b)] <e b gs e> r <e, e,>_. <e e,>_. |
		\key g \major <ds ds,>8_.[ <cs cs,>16_. <ds ds,>_.] <e e,>8_. <e e,>_.
			<b b,>4^>  <e e,>8_. <e e,>_. |
		<a, a,>4^> <d, d,>8 <d d,> <g g,>4^> <e' e,>8_. <e e,>_. |
%%% 16-18
		<ds ds,>8_.[ <cs cs,>16_. <ds ds,>_.] <e e,>8_. <e e,>_.
			<b b,>4^>  <e e,>8_. <e e,>_. |
		<a, a,>4^> <c c,>8 <c c,> <b b,>4^> r |
		\key e \major <e, b' gs'>8 b''( <gs e'> b) <e,, b' gs'>
			 b''( <gs e'> b) |
%%% 19-21
		<a b,>8 b( <ds a> b) <gs b, e,> b( <e gs,> b) |
		<e,, b' gs'>8 b''( <gs e'> b) <e,, b' gs'> b''( <gs e'> b) |
		<a b,>8 b( <ds a> b) <e, gs b e> r r4 |	
%%% 22-24
		\key a \major <cs' e a,>8 e([ <cs a'> e)] <b d,> d([ <b fs> d)] |
		<d e,>8 e([ <d gs> e)] <cs e, a,> e([ <cs a'> e)] |
		<cs e, a,>8 e([ <cs a'> e)] <b d,> d([ <b fs> d)] |
%%% 25-27
		<d e,>8 e([ <d gs> e)] <cs e, a,> e([ <cs a'> e)] |
		<cs e, a,>8^\pp e([ <cs a'> e)] <b d,> d([ <b fs> d)] |
		<d e,>8 e([ <d gs> e)] <cs e, a,> e([ <cs a'> e)] |
%%% 28-30
		<cs e, a,>8^\pp e([ <cs a'> e)] <b d,> d([ <b fs> d)] |
		<d e,>8 e([ <d gs> e)] <a, cs e a> r <a a,> <a a,> |
		\key c \major <gs gs,>8_.^> <fs fs,>16_. <gs gs,>_. <a a,>8_.
			<a a,>_. <e e,>4^> <a a,>8_. <a a,>_. |
%%% 31-33
		<d, d,>4^> <g, g,>8 <g g,> <c c,>4^> <a' a,>8_. <a a,>_. |
		\key c \major <gs gs,>8_.^> <fs fs,>16_. <gs gs,>_. <a a,>8_.
			<a a,>_. <e e,>4^> <a a,>8_. <a a,>_. |
		<d, d,>4^> <f f,>8_. <f f,>_. <e e,>4^> r |
%%% 34-36
		\key a \major <cs' e a,>8^\pp e([ <cs a'> e)] <b d,> d([ <b fs> d)] |
		<d e,>8 e([ <d gs> e)] <cs e, a,> e([ <cs a'> e)] |
		<cs e, a,>8^\pp e([ <cs a'> e)] <b d,> d([ <b fs> d)] |
%%% 37-39
		<d e,>8 e([ <d gs> e)] <e cs a>8 r r4 |
		\key e \major <e,, b' gs'>8 b''( <gs e'> b) <e,, b' gs'>
			 b''( <gs e'> b) |
		<a b,>8 b( <ds a> b) <gs b, e,> b( <e gs,> b) |
%%% 40-43
		<e,, b' gs'>8 b''( <gs e'> b) <e,, b' gs'> b''( <gs e'> b) |
		<a b,>8 b([ <ds a> b)] <e b gs e> cs^\pp b16^. a^. gs^. fs^. |
		e8_. cs_. b16_. a_. gs_. fs_. e8 r <e' b' gs'> r |
		<<{e8^\pp}\\{<e, e,>}>> r r4 r2 |
	 } 
		
\score { 
	\context PianoStaff << 
		\set PianoStaff.instrument = \markup{\small "Piano" " " " "}
		\context Staff = upper \upper 
		\context Staff = lower \lower 
	>> 
	
	\layout {betweensystemspace = 5\mm } 
	\midi { \tempo 4=60 } 
	} 