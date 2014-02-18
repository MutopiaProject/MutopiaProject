\version "2.16.1"
\include "definitions.ily"

% LESSON XII. Arietta by Mozart.

LessonXIIUpper=\relative c''{
	\key f \major
	\time 6/8
	\tempo "Andante" 4=70
	\hideTempo
	\clef treble
	<a f>4.-1-3_\markup{\italic "dolce"} \grace c16-5 <bes g>8-2-4 <a f>-1-3 <bes g>-2-4|
		<<{c4-1-3 f8-5 f4-1-5}\\{a,4. a4}>> r8|f4.-2 \grace a16-4 g8-3 f-2 g-3|
		<a f>8-2-4 <bes g>-3-5 <a f>8-2-4 <g e>4-1-3 r8|<a f>4.-1-3\< \grace c16 <bes g>8 <a f> <bes g>\!|
		<<{c4 f8 f4}\\{a,4. a4}>> r8|<<{a4.-2-4 \grace a16-4 g8-1-3 f-2 g-3|}\\{f4.\p e4 e8|}>>
		f4-2 a8-4 f4-2 \bar "|." %fine
		c'8-5|
	%LINE 2
		c4-5 bes8-4 g-2 a-3 bes-4|c4-5 a8-3 f4-1 c'8-5|c4-5 bes8-4 g a bes|
		c4 a8 f4-1 c'8-3|d4-4 bes8-2 f'4-5 f8-5|c4-3 a8-1 f'4-5 f8-5|
		<<{c8-1-3 d-2-4 c-1-3 c-2-5 bes-4 a-1-3|a4.-2-4( g4-1-3)}\\{a8 bes a g4 f8|f4. e4}>>
		r8^\markup{\large "D.C."} \bar "|."
}
LessonXIIUpperB = \relative c''{c,8-5} 
LessonXIIUpperC = \relative c''{c4-5 bes8-4 g-2 a-3 bes-4|c4-5 a8-3 f4-1 c'8-5|c4-5 bes8-4 g a bes|c4 a8 f4-1 c'8-3|d4-4 bes8-2 f'4-5 f8-5|c4-3 a8-1 f'4-5 f8-5|}

LessonXIILower=\relative c{
	\clef bass
	\key f \major
	f,4 f'8 f4 f8|f4.~ f4 r8|<<{a4-2 c8-1 c4 c8|c4. c4}\\{f,4.-4 e-5|f4.-3 c4-5}>>r8
	f,4 f'8 f4 f8|f4.~ f4 r8|
	<<{f8 a-2 c-1 bes-2 a-1 bes-2|a4-2 c8-1 a4-2}\\{f4.-3 c-5|f~-3 f4_\markup{\larger "Fine."}}>>
	%fine
	r8
	%second section
	<<{c'2.-1|c-1|c-1|c4.-2~ c4 f8-1|bes,-3 d-2 f-1 bes, d f|a,-4 c-2 f a, c f|c2.-1|}\\
	  {e,4-5 g8-4 bes4-2 g8-4|a4-3 f8-5 a4-3 r8|e4-5 g8-4 bes4-2 g8-5|a4-4 f8-5 a4.-4|f2.-5|f-5|f4.-4 e4-5 f8-3|}>>
	  c4-5 c'8-1 c,4-5 r8
	  \bar "|."
}
LessonXIIUpperMIDI=\relative c''{
	\key f \major
	\time 6/8
	\tempo 4=70
	\hideTempo
	\clef treble
		<a f>4.-1-3-\tweak #'stencil ##f \mf \grace c16-5 <bes g>8-2-4 <a f>-1-3 <bes g>-2-4|
		<<{c4-1-3 f8-5 f4-1-5}\\{a,4. a4}>> r8|f4.-2 \grace a16-4 g8-3 f-2 g-3|
		<a f>8-2-4 <bes g>-3-5 <a f>8-2-4 <g e>4-1-3 r8|<a f>4.-1-3\< \grace c16 <bes g>8 <a f> <bes g>\!|
		<<{c4 f8 f4}\\{a,4. a4}>> r8|<<{a4.-2-4 \grace a16-4 g8-1-3 f-2 g-3|}\\{f4.\p e4 e8|}>>
		f4-2 a8-4 f4-2 \bar "|." %fine
		c'8-5|
	%LINE 2
		c4-5 bes8-4 g-2 a-3 bes-4|c4-5 a8-3 f4-1 c'8-5|c4-5 bes8-4 g a bes|
		c4 a8 f4-1 c'8-3|d4-4 bes8-2 f'4-5 f8-5|c4-3 a8-1 f'4-5 f8-5|
		<<{c8-1-3 d-2-4 c-1-3 c-2-5 bes-4 a-1-3|a4.-2-4( g4-1-3)}\\{a8 bes a g4 f8|f4. e4}>>
		r8^\markup{\large "D.C."}
		%DA CAPO AL FINE
		<a f>4.-1-3 \grace c16-5 <bes g>8-2-4 <a f>-1-3 <bes g>-2-4|
		<<{c4-1-3 f8-5 f4-1-5}\\{a,4. a4}>> r8|f4.-2 \grace a16-4 g8-3 f-2 g-3|
		<a f>8-2-4 <bes g>-3-5 <a f>8-2-4 <g e>4-1-3 r8|<a f>4.-1-3\< \grace c16 <bes g>8 <a f> <bes g>\!|
		<<{c4 f8 f4}\\{a,4. a4}>> r8|<<{a4.-2-4 \grace a16-4 g8-1-3 f-2 g-3|}\\{f4.\p e4 e8|}>>
		f4-2 a8-4 f4-2 \bar "|."
}
LessonXIILowerMIDI=\relative c{
	\clef bass
	\key f \major
	f,4^"dolce" f'8 f4 f8|f4.~ f4 r8|<<{a4-2 c8-1 c4 c8|c4. c4}\\{f,4.-4 e-5|f4.-3 c4-5}>>r8
	f,4 f'8 f4 f8|f4.~ f4 r8|
	<<{f8 a-2 c-1 bes-2 a-1 bes-2|a4-2 c8-1 a4-2}\\{f4.-3 c-5|f~-3 f4_\markup{\larger "Fine."}}>>
	%fine
	r8
	%second section
	<<{c'2.-1|c-1|c-1|c4.-2~ c4 f8-1|bes,-3 d-2 f-1 bes, d f|a,-4 c-2 f a, c f|c2.-1|}\\
	  {e,4-5 g8-4 bes4-2 g8-4|a4-3 f8-5 a4-3 r8|e4-5 g8-4 bes4-2 g8-5|a4-4 f8-5 a4.-4|f2.-5|f-5|f4.-4 e4-5 f8-3|}>>
	  c4-5 c'8-1 c,4-5 r8
	  %DA CAPO al FINE
	  f,4^"dolce" f'8 f4 f8|f4.~ f4 r8|<<{a4-2 c8-1 c4 c8|c4. c4}\\{f,4.-4 e-5|f4.-3 c4-5}>>r8
	f,4 f'8 f4 f8|f4.~ f4 r8|
	<<{f8 a-2 c-1 bes-2 a-1 bes-2|a4-2 c8-1 a4-2}\\{f4.-3 c-5|f~-3 f4_\markup{\larger "Fine."}}>>
	  \bar "|."
}
