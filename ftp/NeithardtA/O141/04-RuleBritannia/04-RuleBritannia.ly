\include "deutsch.ly"

\version "2.6.0"

global = { \key b \major \time 4/4 } 

SRule = \relative c'' 
	{
	\partial 8
	f,8\f b4 b b16[ c d es f8] b, c4 c8[ d16 es] d4 \oneVoice r8 
	\voiceOne f,8 b16[ c b c d es d es f8] c d c b[ c16 d] c8[ b] a4 \oneVoice r8 
	\voiceOne f a[ f] c'[ a] f'[ e16 d c b] a[ g] f4 g8.[ f16] f4 \oneVoice r 
	\voiceOne b b8. f16 g4 \oneVoice r8 
	\voiceOne b es8. d16 c8 b a4 \oneVoice r8 
	\voiceOne c f4 es d16[ b es c f8] es d4 c8.[ b16] b4 \oneVoice r 
	\voiceOne d4.\ff d8 es es \oneVoice r 
	\voiceOne d es8. d16 c8 b a4 \oneVoice r8 
	\voiceOne c f4 es d16[ b es c f8] es d4-> c-> b-> \oneVoice r8^\fermata \bar "|."
	}

ARule = \relative c' 
	{
	\partial 8
	f8 d4 d d4. d8 g4 f f s8 
	f8 d4 f f f f e f s8 
	f f4 f f4. d8 c4 c c s 
	d d8. d16 es4 s8 
	f g8. f16 es8 des c4 s8 
	f f4 f f f8[ g] f4 es d s 
	f4. f8 es es s 
	f es8. f16 g8 g f4 s8 
	f f4 f f f8[ g] f4 es d s8 \bar "|."
	}

TRule = \relative c 
	{
	\partial 8
	f8 f4 f b8[ a16 g] f8 b b4 a b s8 
	f8 f4 b c b8[ c] d4 c c s8 
	a c4 a a8[ b c] b a4 b a s 
	f f8. b16 b4 s8 
	b g8. g16 g8 g f4 s8 
	a b4 a b8[ a] b4 b a b s 
	b4. b8 b b s 
	b b8. b16 c8 c c4 s8 
	a b4 a b8[ a] b4 b a b s8 \bar "|."
	}

BRule = \relative c 
	{
	\partial 8
	f8\f b,4 b g'8[ f16 es] f8 g es4 f b, \oneVoice r8 
	\voiceTwo f'8 b,4 b' a b8[ a] g4 c, f4 \oneVoice r8 
	\voiceTwo f f4 f f,8[ g a] b c4 c f \oneVoice r 
	\voiceTwo b, b8. b16 es4 \oneVoice r8 
	\voiceTwo d c8. d16 es8 e f4 \oneVoice r8 
	\voiceTwo f d4 c b8[ c] d[ es] f4 f, b \oneVoice r 
	\voiceTwo b8[\ff d16 f b8] as g g \oneVoice r 
	\voiceTwo as g8. f16 es8 e f4 \oneVoice r8 
	\voiceTwo es d4 c b8[ c] d[ es] f4-> f,-> b-> \oneVoice r8_\fermata \bar "|."
	}


LRule = \lyricmode {
	Als An -- fangs aus des Mee -- res Schoß 
	Bri -- tan -- ni -- a der Him -- mel hob, 
	Bri -- tan -- ni -- a der Him -- mel hob, 
	war dies das Los, 
	des schö -- nen Lan -- des Los, 
	und En -- gel san -- gen die -- sen Chor: 
	Herrsch'! Bri -- tan -- nia, 
	be -- herr -- sche du die See, denn dich drückt nie der Knecht -- schaft Weh!
}

%--------------------

\header
	{
 dedication = "" 
 title = "Rule Britannia" 
 subtitle = "" 
 subsubtitle = "" 
 composer = "Thomas Arne (1710-1778)" 
 opus = "op. 141, Nr. 4" 
% piece = "Nr. 4" 
 meter = "Maestoso" 
 instrument = "" 
 arranger = "August Neithardt (1793-1861)" 
 poet = "James Thomson (1700-1748)" 
 texttranslator = "" 

 mutopiatitle = "Rule Britannia"
 mutopiacomposer = "NeithardtA"
 mutopiapoet = "J. Thomson (1700-1748)"
 mutopiaopus = "O 141, 4"
 mutopiainstrument = "Voice, (SATB)"
 date = "1850"
 source = "Schlesinger"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2005/August/17"

 footer = "Mutopia-2005/08/18-574"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score { 
\context ChoirStaff 
	<< 
	\context Staff = Hi 
		<< 
			\clef "G" 
			\context Voice = Sopran { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \SRule 
				>> } 
			\context Voice = Alt { \voiceTwo 
 				<< 
				\autoBeamOff 
				\global \ARule 
				>> } 
			>> 
	\context Lyrics = I 
	\context Staff = Lo 
		<< 
			\clef "F" 
			\context Voice = Tenor { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \TRule 
				>> } 
			\context Voice = Bass { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				\global \BRule 
				>> } 
		>> 
	\context Lyrics = I \lyricsto Sopran \LRule 
	>> 

\midi { 
 \tempo 4=88 
} 

\layout { 
	\context { 
		} 
	} 
} 
