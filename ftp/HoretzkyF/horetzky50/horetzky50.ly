% Entered on Nov 12, 2007
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
	title = "Nº. 50. Je Suis Lindor."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 50. Je Suis Lindor."
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
 footer = "Mutopia-2007/11/17-1147"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Source & comments
%%	
%%  	Felix Horetzky was born in Horyszów Ruski, Poland, January 1, 1796.
%%	Little is known about he came to the guitar. He traveled to Vienna
%%	to study under master guitarrist, Mauro Giuliani. He traveled
%%  	extensively in Europe as a concert performer and teacher. He wrote
%%  	between 100 and 150 pieces for the guitar. He died in Edinburgh
%%  	on October 6, 1870.
%%
%%	This piece is from #268, "60 National Airs of Different Nations",
%%	in the Boije collection and is in the public domain.
%%	
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
rit = \markup{\smaller\italic"ritard:"}
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
sdu = \once \override Stem #'direction = #UP
sdd = \once \override Stem #'direction = #DOWN

%% End shortcuts


%%%%%%%%%%
%% Reminders
%
%    \once \override DynamicText #'extra-offset = #'(-3.75 . 5.5)
%    \once \override TextScript #'extra-offset = #'( 0.8 . -2.3 )
%    \once \override Stem #'length-fraction = #0.8
%    \once \override Beam #'positions = #'(-2.2 . -3.0)
%
%%%%%%%%%%

upper = \relative c''{
	\set Staff.instrumentName=\markup{ \center-align 
	{\smaller\bold "Nº. 50.  " \smaller\smaller\italic "ANDANTINO  " 
	\tiny\smaller\italic "ESPRESSIVO. "}}
	<e cs>4 <cs a>8 <cs a> |
	<cs a>4. a8 |
	b[ b b <cs a>] |
	<<{e8. d16}\\{\override Stem #'length-fraction = #0.8 b4}>> <cs a>8 r |
	<<{a'4-> gs8 gs16 b}\\
	{\override Stem #'length-fraction = #0.8 cs,8 e d4}>> |
	<<{a'4-> gs8 gs16 b}\\
	{\override Stem #'length-fraction = #0.8 cs,8 e d4}>> |
	<a' cs,>8[ <e a,> <d b> <cs a>] |
	<<{<cs a>4->}\\{e,8\rest e16 ds}>> b'8 r | \bar "||"
	
	<b gs>4-> <b gs>8 <d b> |
	<d b>4 <cs a>8. e16 |
	<e gs,>8[ <b gs> <b gs> <d b>] |
	<d b>4-> <cs a>8 e |
	<<{a8 gs4-> fs16 e}\\
	{\override Stem #'length-fraction = #0.8 <d b>8[ <d b> <d b> <d b>]}>> |
	<<{a'8 gs4-> fs16 e}\\
	{\override Stem #'length-fraction = #0.8 <d b>8[ <d b> <d b> <d b>]}>> |
	<<{a'4 \grace gs16 fs8 e16 d }\\
	{\override Stem #'length-fraction = #0.7 cs8 e d cs16 b}>> |
	<cs a>4 <b gs> |
	a r |	
}


lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\set fingeringOrientations = #'(left)
	\once \override DynamicText #'extra-offset = #'(-2.0 . 2.5)
	a2_\p |
	a8[ e' cs fs] |
	<fs d>4 <gs e>8 a, |
	gs e a r |
	a4 a |
	a a |
	a8[ cs d ds] |
	\once \override DynamicText #'extra-offset = #'(-2.5 . 3.5)
	e,4_\f <gs' e>8 r |
	
	\once \override DynamicText #'extra-offset = #'(-2.0 . 3.5)
	e8[_\p b gs e] |
	r gs cs a |
	e4. gs8 |
	r e' a, r |
	e2 |
	e |
	a4 d |
	e <d e,> |
	<cs a> r |	
}

staffClassicalGuitar = \new Staff  {
		\time 2/4
		\key a \major
		\set Staff.connectArpeggios = ##t
		\set Staff.midiInstrument="acoustic guitar (nylon)"
		<<
			\new Voice = A { \voiceOne  \upper }
			\new Voice = C { \voiceFour  \lower }
		>>
		\bar "||"   %%  "|."
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
	\unfoldRepeats
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
