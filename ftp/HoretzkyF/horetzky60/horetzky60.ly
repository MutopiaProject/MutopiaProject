% Entered on Nov 12-13, 2007
\version "2.11.34"
%#(set-global-staff-size 17) 

\paper {
%	#(set-paper-size "a4")
%	#(set-paper-size "letter")
	left-margin = 0.75 \in
	line-width = 7.0 \in
%	between-system-padding = #4.0
	between-system-space = #22.0
	ragged-last-bottom = ##t 
	ragged-bottom = ##f
}

\header {
	title = "Nº. 60. Care Pupille By Blangini."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 60. Care Pupille By Blangini."
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
 footer = "Mutopia-2007/11/17-1157"
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
fin = \markup {\smaller \bold \italic "Fine."}		
I = \once \override NoteColumn #'ignore-collision = ##t
sdu = \once \override Stem #'direction = #UP
sdd = \once \override Stem #'direction = #DOWN
sd = \slurDown
su = \slurUp
sstm = \override Stem #'length-fraction = #0.6

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
	{\smaller\bold "Nº. 60.  " \smaller\smaller\italic "ANDANTINO  " 
	\tiny\smaller\italic "CON MOTO. "}}
	<fs d>4. \grace{\sd fs16[( g])} <fs d>8 <e cs> <fs d> |
	<a fs>4. <fs d>4 r8 |
	d4. e4 e8 |
	<fs d> <a fs> <g e> <e cs>4 r8 |
	<fs d>4. 
	\once \override Beam #'positions = #'( 5.3 . 5.3)
	<g e>8[ \grace {\override Stem #'length-fraction = #0.7
	a16[( g]) \su} <fs d>8 <g e>] |
	<gs es>4-> <a fs>8 <fs d> <g e> <a fs> |
	\set doubleSlurs = ##t
	<a fs>( <g e>) <g e> <g e>( <fs d>) <fs d> |
	\set doubleSlurs = ##f
	<e cs>4 r8 r4 r8 |
	<e cs>4.
	\once \override Beam #'positions = #'( 4.3 . 4.3)
	<e cs>8[ \grace{\override Stem #'length-fraction = #0.7
	\sd f16[( e])} <d b>8 <e cs>] |
	<e cs>4 <f d>8 <f d>4 r8 |
	<a f>4.-> 
	\once \override Beam #'positions = #'( 6.0 . 5.6)
	<a f>8[ \grace{\override Stem #'length-fraction = #0.7
	bf16[( a])} <g e>8 <f d>] |
	<a f>4 <f d>8 <e cs>4 r8 |
	<e cs>4. 
	\once \override Beam #'positions = #'( 4.3 . 4.3)
	<e cs>8[ \grace{\override Stem #'length-fraction = #0.7
	f16[( e]) \su } <d b>8 <e cs>] |
	<e cs>4 <f d>8 <f d>4 r8 |
	\I <gs d>4. \I <gs d>4 \I <gs d>8 |
	<a cs,>4.(  <a cs,>8) 
	\once \override TextScript #'extra-offset = #'( -1.0 . -0.0 )
		<gs d>_\rit <g e> |
	<fs d>4. \grace{\sd fs16[( g])\su} <fs d>8 <e cs> <fs d> |
	<a fs>4. <fs d> |
	d4. e4 e8 |
	\set doubleSlurs = ##t
	<fs d>( <a fs>) <g e> <e cs>4 r8 |
	\set doubleSlurs = ##f
	<fs d>4. \grace{\sd g16[( a])\su} <g e>8 <fs d> <g e> |
	<a fs>4. <g e>8[ <b g>-> <a fs>16 <g e>] |
	<fs d>8[ <a fs>-> <g e>16 <fs d>] <e cs>8[ <g e>-> <fs d>16 <e a,>] |
	d4 \once \override TextScript #'extra-offset = #'( -1.6 . -0.0 )
		r8_\fin \bar "||" \break
	
	a8 a a |
	a8. b16 a8 \I g'4.-> |
	<fs a,>4. a,8 a a |
	a8. b16 a8 \I g'4.-> |
	fs4. fs8 fs fs |
	fs8. g16 fs8 fs fs fs |
	fs8. g16 fs8 fs fs fs |
	fs8. g16 fs8 fs fs fs |
	fs4. d8 d d |
	d e d \I c'4.-> |
	<b d,>4. d,8 d d |
	d8. e16 d8 \I c'4.-> |
	b4. <b g>8 <b g> <a fs> |
	<a fs> <g e> <fs d> <fs d> <e cs> <d b> |
	<cs a>4 r8 <a'a,>8 <gs b,> <g cs,> |
	\grace g16 <fs d>8 <e cs> <fs d> <a fs> <g e> <fs d> |
	<e cs>4. <a a,>8 <gs b,> <g cs,> |
	\grace g16 <fs d>8 <e cs> <fs d> <a fs> <g e> <fs d> |
	<e cs>4.\fermata  <e cs>16[ <fs d>_\rit <g e> <gs es> <a fs> 
	\once \override TextScript #'extra-offset = #'( -1.2 . -0.3 )<g e>]
	_\markup{\smaller\bold\italic "D.C."}|
}

lower = \relative c' { 
	\override Staff.NoteCollision #'merge-differently-headed = ##t
	\set fingeringOrientations = #'(left)	
	d4. d |
	d r4 r8 |
	fs4. a4 a8 |
	d,4 g8 a4 r8 |
	d,4. d |
	d d |
	a d |
	a'8 e cs a4 r8 |
	a4. a |
	a a4 r8 |
	a4. a | 
	a a4 r8 |
	a4. a |
	a a4 r8 |
	<<{
	\override Stem #'length-fraction = #0.6
	\override Staff.NoteCollision #'merge-differently-headed = ##t
	\override Staff.NoteCollision #'merge-differently-dotted = ##t
	bf8_\< d e f d bf\!}
		\\{bf2.}>> |
	a4. ~ a4 r8 |
	d4. d |
	d d |
	fs a4 a8 |
	d,4 g8 a4 r8 |
	d,4. d |
	d g |
	a, a |
	<fs'd>4 r8
	
	\once \override DynamicText #'extra-offset = #'(-2.5 . 2.5)
	<fs d>4._\f |
	<g cs,> <<{\sstm a8. a16 a8}\\{cs,4.}>> |
	d <fs d> |
	<g cs,> <<{\sstm a8 a a}\\{cs,4.}>> |
	<a' d,>4. 
	\once \override DynamicText #'extra-offset = #'(-1.5 . 0.5)
	<d b>4._\p
	<cs as>4. <cs as> |
	<d b> <d b> |
	<cs a> <cs a> |
	<d b> <b g> |
	<c fs,> <<{\sstm d8 d d}\\{fs,4.}>> |
	g4. <b g> |
	<c fs,> <<{\sstm d8 d d}\\{fs,4.}>> |
	<d' g,>4. g, |
	g gs, |
	a4 r8 a4. |
	a a |
	a a |
	a a |
	a_\fermata r4 r8
}

staffClassicalGuitar = \new Staff  {
		\time 6/8
		\key d \major
		\set Staff.connectArpeggios = ##t
		\set Staff.midiInstrument="acoustic guitar (nylon)"
		\override Staff.NoteCollision #'merge-differently-dotted = ##t
		\override Staff.NoteCollision #'merge-differently-headed = ##t
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
			tempoWholesPerMinute = #(ly:make-moment 80 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
	    }
    }
}
