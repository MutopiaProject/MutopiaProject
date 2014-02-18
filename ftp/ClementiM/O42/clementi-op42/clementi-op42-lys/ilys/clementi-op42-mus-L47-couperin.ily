\version "2.16.1"
\include "definitions.ily"

% LESSON XLVII.  Allegretto by Couperin.

global = { \key f \minor  }

tempoLegend = \markup { \right-align "Più tosto Vivace."}

LessonXLVIIUpper = \relative c''{
	\time 6/8
	\tempo 4=135 \hideTempo
	\partial 8
	\repeat volta 2 {
	f8-2				 %partial
	f8-2^\tempoLegend g f c4-1 f8-2	| %1
	g4.\trill c,4-1 aes'8-4		| %2
	g8-3 aes-4 f e\prall^\switchThreeTwoThreeTwo d-1 e-2 | %3
	f8-3 g f c4-1 f8-3		| %4
	f-2 g f  c4-1 f8		| %5
	g4.\trill c,4 aes'8		| %6
	g8 aes f e\prall d e-4		| %7
	\mergeDifferentlyDottedOn
	<<{
		\stemDown f8 c aes-2_~ aes4
	}\\{
		\stemUp s8 <c^3>4^~ \ignoreClashNoteOnce c4
	}\\{
		\stemUp f4.-5 ^~ \shiftOff f4
	}>>
	}
	\repeat volta 2 {
	\set Timing.measurePosition = #(ly:make-moment 5/8)
	\stemDown c'8-5			 %8
	c8-4 bes aes  c bes aes		 %9
	\preTrill bes4.\trill^\switchFourThree
	    \grace {aes8-2} g4-1 bes8-3	 %10
	bes8-4 aes g  bes aes g		 %11
	\preTrill aes4.\trill^\switchFourThree \grace {g8-2}
	    f4-1 \grace {f16-2[ g-3]} aes8-4	 %12
	g8-3 aes f e\prall^\switchFourThreeFourThree
	    d-2 c-1				 %13
	f4.^\switchThreeOne
	g^\markup{ 
		\override #'(baseline-skip . 0.8 )
		\center-column { 
			{\up-tied-lyric \finger 3 \finger 2}
			\musicglyph #"scripts.turn"
			\musicglyph #"scripts.trill"
		}
	   }				 %14
	aes8-3 bes c bes c aes 		 %15
	\preTrill g4.\trill^\switchFourThree ~ g4 c,8-1	 %16
	d8 e f e\prall d c		 %17
	f4.\prallmordent r4 c8		 %18
	d8 e f e\prall d c		 %19
	f4.\prallmordent 
	g^\markup{ 
		\override #'(baseline-skip . 0.8 )
		\center-column { 
			\musicglyph #"scripts.turn"
			\musicglyph #"scripts.trill"
		 }
	   }				 %20
	aes8 bes c g4\trill f8		 %21
	\mergeDifferentlyDottedOn
	<<{
		\stemDown f8 c aes_~ aes4
	}\\{
		\stemUp s8 c4^~ \ignoreClashNoteOnce c4
	}\\{
		\stemUp f4.^~ \shiftOff f4
	}>>				 %22
	
	}
}

LessonXLVIILower= \relative c {
	\time 6/8
	\partial 8
	\repeat volta 2 {
	
	r8				  %partial
	f4-5 g8-4 aes4-3 f8-5		 %1
	c'4-1 d8-3 e4-2 f8-1		 %2
	bes,4-4 des!8-2 c4-1 bes8-2	 %3
	aes4-3 g8-4 aes4-3 bes8-2	 %4
	aes4-3 g8-4 aes4 f8		 %5
	c'4-1 d8-3 e4 f8		 %6
	<<{
		\mergeDifferentlyDottedOn
		s4. c4.			 %7a
		f,4.~ \ignoreClashNoteOnce f4		 %8a
	}\\{
		bes4 des8 c4 \stemUp c,8  %7b
		\stemDown f4. \stemUp f,4 %8b
	}>>
	}
	
	
	\repeat volta 2 {
	\set Timing.measurePosition = #(ly:make-moment 5/8)
	g'8				 %8
	<<{
		aes4. aes, \stemDown	 %9a
		ees'4._~ ees4 f8	 %10a
	}\\{
		aes2. \stemUp		 %9b
		ees4 f8 g4 s8		 %10b
	}>>
	e4 d8 e4 c8-5			 %11
	f4-3 g8-1 aes4-2 f8-4		 %12
	bes4-2 g8-4 c4-1 bes8-2		 %13
	aes8-3 g-1 f-2 e-3 d c		 %14
	f4-1 ees!8 des!4 bes8-5		 %15
	c4^\switchFourFive c'8-1 bes4-2 aes8-3	 %16
	bes4 g8 c4 bes8			 %17
	aes4 g8 aes4 f8			 %18
	bes4 g8 c4 bes8			 %19
	aes8 g f e d c			 %20
	<<{
		\stemDown f4-1 \stemUp des8-4 \stemDown c4.	 %21a
		f4. \stemUp \ignoreClashNoteOnce f,4-5-1	 %22a
	}\\{
		\stemUp
		s4. a'4\rest^\switchThreeFive <c^1>8 	 %21b
		f,4.^\switchThreeOne~ f4		 %22b
	}>>
	}
}
