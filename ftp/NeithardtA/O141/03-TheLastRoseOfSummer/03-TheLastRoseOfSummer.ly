\include "deutsch.ly" 

\version "2.6.0" 

global = { \key f \major \time 3/4 } 

SRose = \relative f' 
	{ 
	\partial 4 
	f8.\p g16 a4 f' e8.[ d16] c4 a f8[ g] a4 b8[ a] a8.[ g16] f4 \oneVoice r 
	\voiceOne f8.\mf g16 a4 f' e8.[ d16] c4 a f8.[ g16] a4 b8[ a] a8.[ g16] f2 
	c'8.[ a16] f'4 f8[ e] \acciaccatura e8 d8.[ c16] c4 a c8.[ a16] f'4 f8[ e] d8[ cis] d2^\fermata 
	f,8.\p g16 a4 f' e8.[ d16] c4 a f8.[ g16] a4 b8[ a] a8.[ g16] f2 
	\bar "|." 
	} 

ARose = \relative f' 
	{ 
	\partial 4 
	f8. e16 f4 f f f f f f f e f s 
	f8. e16 f4 f f f f f8.[ e16] f4 f e f2 
	f4 f f f f f f a a8[ g] f[ e] f2 
	f8. e16 f4 f f f f f4 f f e c2 
	\bar "|." 
	} 

TRose = \relative f' 
	{ 
	c8. c16 c4 d c8.[ b16] a4 c a8[ h] c4 d8[ c] b!4 a s 
	a8. c16 c4 c b a c c c d c8[ b] a2 
	a8.[ c16] d4 d8[ c] b8.[ a16] a4 c4 a a a8[ b] a4 a2 
	a8. c16 c4 c b a c a8.[ h16] c4 d8[ c] b4 a2 
	} 

BRose = \relative f 
	{ 
	a8.\p g16 f4 b, b f f' f8[ d] c4 c c f, \oneVoice r4 
	\voiceTwo d'8.\mf c16 f4 a, b8.[ d16] f4 f a8.[ g16] f4 b,8[ h] c4 f,2 
	f'4 f f f f f f d d8[ g,] a4 d2_\fermata 
	d8.\p c16 f4 a, b8.[ d16] f4 f f8.[ d16] c4 c c f,2 
	} 

LRose = \lyricmode {
	Letz -- te Ro -- se, du woll -- test so ein -- sam hier blüh'n? 
	Dei -- ne freund -- li -- chen Schwes -- tern sind längst schon da -- hin. 
	Kein Blätt -- chen haucht Bal -- sam durch glü -- hen -- de Luft, 
	kei -- ne Blü -- te er -- qui -- cket mit lieb -- li -- chen Duft.
}

%--------------------

\header
	{
 dedication = "" 
 title = "Des Sommers letzte Rose" 
 subtitle = "" 
 subsubtitle = "" 
 composer = "" 
 opus = "op. 141, Nr. 3" 
% piece = "Nr. 3" 
 meter = "Wehmüthig" 
 instrument = "" 
 arranger = "August Neithardt (1793-1861)" 
 poet = "Thomas Moore (1779–1852)" 
 texttranslator = "" 

 mutopiatitle = "Des Sommers letzte Rose"
 mutopiacomposer = "NeithardtA"
 mutopiapoet = ""
 mutopiaopus = "O 141, 3"
 mutopiainstrument = "Voice, (SATB)"
 date = "1850"
 source = "Schlesinger"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2005/August/3"

 footer = "Mutopia-2005/08/06-575"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score { 
\context ChoirStaff 
	<< 
	\context Staff = boys 
		<< 
			\clef "G" 
			\context Voice = Sopran { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \SRose 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\global \ARose 
				>> } 
			>> 
	\context Lyrics = verse 
	\context Staff = men 
		<< 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \TRose 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				\global \BRose 
				>> } 
		>> 
	\context Lyrics = verse \lyricsto Sopran \LRose 
	>> 

\midi { 
 \tempo 4=76 
} 

\layout { 
	\context { 
		} 
	} 
} 

