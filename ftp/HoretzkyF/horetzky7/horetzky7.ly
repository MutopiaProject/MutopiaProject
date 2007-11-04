% Entered on Nov 3, 2007
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
	title = "Nº. 7. Le Petit Tambour."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 7. Le Petit Tambour."
 mutopiacomposer = "HoretzkyF"
 mutopiapoet = ""
 mutopiaopus = ""
 mutopiainstrument = "Classical Guitar"
 date = "unk"
 source = "Boije collection #268"
 style = "Classical"
 copyright = "Public Domain"
 maintainer = "Stan Sanderson"
 moreInfo = "The Boije collection is found at http://www.muslib.se/ebibliotek/boije/"
 footer = "Mutopia-2007/11/04-1096"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Source & comments
%%	
%%  Felix Horetzky was born in Horyszów Ruski, Poland, January 1, 1796.
%%	Little is known about he came to the guitar. He traveled to Vienna
%%	to study under master guitarrist, Mauro Giuliani. He traveled
%%  extensively in Europe as a concert performer and teacher. He wrote
%%  between 100 and 150 pieces for the guitar. He died in Edinburgh
%%  on October 6, 1870.
%%
%%	This piece is from #268, "60 National Airs of Different Nations",
%%	in the Boije collection and is in the public domain.
%%	<http://www.muslib.se/ebibliotek/boije/>
%%	Publisher: Chappell (London), no date given.
%%
%%	Carl Boije (1849-1923) was an amateur guitarist whose vast collection
%%	was donated to the State Library of Sweden after his death.
%%
%%	The dynamic markings for the most part follow the original score; obvious
%%	notation errors have been corrected.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "english.ly"

%%%% shortcuts

dol = \markup { \smaller\italic "dolce."}
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
seg = \markup {\smaller \smaller \musicglyph #"scripts.segno"}
cod = \markup {\smaller \vcenter "to" \hspace #0.7 \smaller \vcenter \musicglyph #"scripts.coda"}
toseg = \markup { \bold \vcenter "to" \hspace #0.7 \vcenter \smaller \musicglyph #"scripts.segno" }
fin = \markup {\smaller \smaller \bold \italic "Fine."}		
I = \once \override NoteColumn #'ignore-collision = ##t	

%% End shortcuts


%%%%%%%%%%
%% Reminders
%
%    \once \override DynamicText #'extra-offset = #'(-3.75 . 5.5)
%    \once \override TextScript #'extra-offset = #'( 0.8 . -2.3 )
%
%%%%%%%%%%

upper = \relative c''{
	\set Staff.instrumentName=\markup{ \center-align 
	{\smaller\bold "Nº. 7  " \smaller\smaller\italic "ALLEGRO. "}}
	\repeat volta 2 {
		\partial 8*1 e16 d |
		c8[ g e g] |
		 c g\noBeam  d'16( c) b c |
		d8 d16. d32 d8 d |
		d8. g,16 a b c d |
		<e c>8 e16. e32 e8 e16. e32 |
		e8 f16( e) d8 e16 d |
		c8 d16 c c( b) a b |
		c4 c,8
	}
%	\repeat volta 2 {
		c'16. b32 |
		a8. a16 b8 c |
		<e b>4 <d b>8 <c a>16 <b g> |
		<a fs>8 <a fs> <b g> <c a> |
		d g16 fs e d c b |
		<a fs>8 <a fs> <b g> <c a> |
		d8 e16 d c8 d16 c |
		b8 c16 b a8 b16 a |
		g4 r8 g |
		c8 c16 c c8 c |
		c4 r8 g16. g32 |
		<c g e>8 <g e> e c |
		 \once \override DynamicText #'extra-offset = #'(-3.3 . 2.0)
		<g' d>_\ff g' r g, |
		c c16 c c8 c | 
		c4 r8 <c a>16 c |
		d c b a b a g fs |
		g4 r8 e'16 d
%		}
		c8 g e g |
		c g d'16( c) b c |
		d8 d16. d32 d8 d |
		d8. g,16 a b c d |
		<e c>8 e16. e32 e8 e16. e32 |
		e8 f16( e) d8 e16 d |
		c8 d16 c c( b) a b |
		c4 c,8
}
		

lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\repeat volta 2 {
		\partial 8*1 r8 |
		\once \override DynamicText #'extra-offset = #'(-2.3 . 2.0)
		c8_\p e c e |
		c e c <g' e> |
		g, <g' b,> <g g,> b, |
		g b r4 |
		\once \override DynamicText #'extra-offset = #'(-2.3 . 2.0)
		<g' c,>4_\f <d' gs, b,> |
		<c a a,> <f, f,> |
		<e g> <f g,> |
		<e c>8 <g e> c, 
	}
	r8 |
	\once \override DynamicText #'extra-offset = #'(-2.3 . 2.0)
	fs8_\p d r a' |
	g d g, r |
	d' d d d |
	<<{\voiceTwo 
		\override Stem #'length-fraction = #0.4
		b' b  
		\revert Stem #'length-fraction
		s  g }\\{\voiceFour d4 d }>> |
	d8[ c b a] |
	g4 \once \override TextScript #'extra-offset = #'( 1.8 . 2.3 )
		<a' c,>_\dol |
	<g d> <fs d> |
	g,8[ f'! e d] |
	\once \override DynamicText #'extra-offset = #'(-2.3 . 0.0)
	<g e c>8 <g e c>16 <g e c> <g e c>8 <g e c> |
	<g e c>4 r8 r |
	c, c c c |
	<d b g> <b' g d b g> r r |
	<g e c> <g e c> <g e c> <g e c> |
	<g e c>4 r8 <e a,> |
	<a d, fs,>4 <fs d> |
	g4 r8 r 
	\once \override DynamicText #'extra-offset = #'(-2.3 . 2.5)
		c,8_\p e c e |
		c e c <g' e> |
		g, <g' b,> <g g,> b, |
		g b r4 |
		\once \override DynamicText #'extra-offset = #'(-2.3 . 2.5)
		<g' c,>4_\f <d' gs, b,> |
		<c a a,> <f, f,> |
		<e g> <f g,> |
		<e c>8 <g e> c, 
	
}	

staffClassicalGuitar = \new Staff  {
		\time 2/4
		\key c \major
		\set Staff.connectArpeggios = ##t
		\set Staff.midiInstrument="acoustic guitar (nylon)"
		<<
			\new Voice = A { \voiceOne  \upper }			
			\new Voice = C { \voiceFour  \lower }
		>>
		\bar  "|."
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
