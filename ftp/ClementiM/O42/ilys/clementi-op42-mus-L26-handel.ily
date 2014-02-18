\version "2.16.1"
\include "definitions.ily"

% LESSON XXVI. Minuet in Samson, by Handel.

LessonXXVIUpperAi = \relative c''{  %UPPER BEGIN TO SEGNO
	\clef treble
	\key g \major
	\tempo 4=88 \hideTempo
	\time 3/8
	%LINE 1
		d8-2 g4-5|fis16-4 e fis d g8-5|
		d8-2 e4-4|
		d16-3 c d e d8|
		b8-1 c4-5|
		b16-4 a b fis-2 g8-1|
		a16-4 b-5 \preTrill fis8.\trill^\trillThree g16|
		g4.-1|
		<<{d'8-2-3 g4-1-5|}\\{b,8 g b^\markup{\finger 2}|}>>
	%LINE 2  TO SEGNO
		<<{
			fis'16-1-4 e fis d g8-3-5|
			d8-2-4 e4-3-5|
			d16-2-4 c-1-3 d-2-4 e-3-5 d8-2-4|
			b-2-4 c4-1-5|
			b16-2-5 a-1-4 b-2-5 fis-1-3 g8-1-4|
			a16-2-4 b-5 \preTrill fis8.\trill^\trillFour g16|
		}\\{
			a4 d8|
			b c4|
			b16 a b c b8|
			g e a^\markup{\finger 4}|
			d,16 c d c b8|
			e \allowFingeringInStaff a,4-1|
		}>>

}
LessonXXVIUpperAii = \relative c'{  %UPPER SEGNO TO FIRST VOLTA & FINE
	%LINE 2  FROM SEGNO
		<g' d b>4.|
		\once \override Score.RehearsalMark #'font-size = #2
		\mark \markup { \musicglyph #"scripts.segno" }
		b,8-1 c8.\trill b32 c|
		d16-3 c d b e8^\switchFourOne|
		fis-2 g8.\trill fis32 g|
	%LINE 3
		a16-4 g a fis-2 b8^\switchFiveTwo|
		cis-2 d8.\trill cis32 d|
		e16-4 d e cis-2 fis8-4|
		b16-5 a g8 fis|
		e4.\trill|
		<<{
			cis'16-4 b cis a d8-5|
			g,16-2-5 fis-4 g-5 e-4 fis8-1-5|
			e16-2-4 fis-5 cis8.\trill d16|
		}\\{
			\allowFingeringInStaff e4-1 \allowFingeringInStaff <fis a>8-3-2|
			cis4 a8|
			b8 e,4|
		}>>
	%LINE 4                     TO FINE
		<d' a fis>4.-2-3-5|
		<<{d8 g4|}\\{b,8 g b|}>>
		<<{
			fis'16 e fis d g8|
			d8 e4|d16 c d e d8|
			b c4|b16 a b fis g8|
			a16 b fis8.\trill g16|
		}\\{
			a4 d8|b c4|b16 a b c b8|g e a|
			d,16 c d c b8|e a,4|
		}>>
		<g' d b>4.|
		\bar ":|:"
}

LessonXXVIUpperA ={ \repeat volta 2 { \LessonXXVIUpperAi \LessonXXVIUpperAii } }
LessonXXVIUpperB = \relative c''{     %  SECOND VOLTA START TO FINISH
	\repeat volta 2 {
		<<{
			d8-5-3 b-1-3 c-2-4|
			d16-1-3 e-2-4 d8-1-3 g-5|
			c,-3-5 a-2-3 b-1-4|
			c16-1-3 d-2-4 c8-1-3 a'-5|
			b,-4-5 g-1-4 a-2-5|
			b16-1-3 c-2-4 b-1-3 c-2-4 d8-3-5|
			c16-2-4 b-1-3 \preTrill a8.\trill^\markup{\finger 2}^\trillFour g16-2|
		}\\{
			b8 g a|
			b16 c b8 r|
			a fis g|
			a16 b a8 r|
			g b,d|g16 a g a b8|
			a16 g fis8. g16|
		}\\{
			\hideNotes  % MIDI error....this workaround is to fix "MIDI skips note if another voice struck it previously"
			s8 b s|
			s4.|
			s8 a s|
			s4.|
			s8 g s|
			s4.|
			s4.| \unHideNotes  
		}>>
		<<{<g d>4.-1-3|}\\
		{\hideNotes g \unHideNotes}
		>>
	}
		d'4.\startTrillSpan |d4 c8-1\stopTrillSpan|
	%LINE 5
		b8-3 g16-1 a b g|a4.\turn|
		d8-5 b-1 g'-5|
		d-3 b-1 g'-5|
		d-3 e16-4 d c b|
		a4.\trill|
		<<{
			cis'16 b cis a d8|
			g,16 fis g e fis8|
			e16 fis cis8.\trill d16|
			s4.
		}\\{
			e4 <fis a>8|
			cis4 a8|
			b8 e,4|
			<d' a fis>4.|
		}>>
		
	%LINE 6
		<<{
			d8 g4|
			fis16 e fis d g8|
			d8 e4|d16 c d e d8|
			b c4|
			b16 a b fis g8|
			a16 b fis8.\trill g16|
		}\\{
			b8 g b|
			a4 d8|
			b c4|
			b16 a b c b8|
			g e a|
			d,16 c d c b8|
			e a,4
		|}>>
		<g' d b>4.|
		\once \override Score.RehearsalMark #'font-size = #2
		\mark \markup {\musicglyph #"scripts.segno" }
		%\markup {"D.C. al Segno"}
		\bar "|."
}

LessonXXVIUpperFINEbar={\relative c'{<g' d b>4.|}}

LessonXXVILowerAi = \relative c'{   %LOWER BEGIN TO SEGNO
	\key g \major
	\clef bass
	\time 3/8
	%LINE 1
		g8-4 b-2 g|
		d'-1 c-2 b-1|
		g-3 c-1 c,-5|
		g'-1 g,-5 b-3|
		e-1 a,-5 fis'-2|
		g-1 d-3 e-2|
		c-4 d-1 d,|
		g-3 b'16-1 a-2 g-3 fis-4|
		g8-3 b-1 g-4|
	%LINE 2
		d'8 c b|g c c,|
		g'g,b|
		e a,fis'|
		g d e|
		c d d,|
}
LessonXXVILowerAii = \relative c{  %LOWER SEGNO TO FIRST VOLTA & FINE
		g-3 b-2 d-1|
		\once \override Score.RehearsalMark #'font-size = #2
		\mark \markup {\musicglyph #"scripts.segno" }
		g-2 a-1 d,-5|
		b'-1 g-3 c-1|
		a-2 b-1 g-2|
	%LINE 3
		fis8-3 d-5 g-1|
		e-3 fis-2 d-1|
		cis-3 a-5 d-3|
		g16-1 fis-2 e8-3 d|
		a'-1 a, a'|
		g4-2 fis8|
		g-1 a,-5 d-3|
		g-2 a-1 a,|
	%LINE 4
		d8^\markup{\finger "3-5"} d'16-1 c b a|
		g8-5 b-3 g-5|
		d'-1 c b|g c c,|
		g' g, b|
		e a, fis'|
		g d e|
		c d d,|
		<<{g4.|}\\{s4 s16 s32 s32^\markup{\right-align "Fine."}|}>>|
		\bar ":|:"
		}
LessonXXVILowerA= { \repeat volta 2 { \LessonXXVILowerAi \LessonXXVILowerAii } }

LessonXXVILowerB = \relative c' {     % LOWER SECOND VOLTA START TO FINISH
	%LINE 5
	\repeat volta 2{
		r4.|
		g8 d b|
		r4.|
		a'8 fis d|
		r4.|
		g8-1 e-2 b-5|
		c-4 d^\markup{\finger "3-5"} <d'-1>|
		b-2 g-3 d-5|
	}
		g-2 b-1 g|
		fis-3 d fis|
	%LINE 6
		g-2 b-1 g-3|
		d'-1 fis,-3 d-5|
		g4-2 r8|
		g4 r8|
		g4-5 c8-2|
		d-1 d,16 e fis d|
		g4 fis8|
		e a, d|
		g a a,|
		d d'16 c b a|
	%LINE 7
	g8 b g|
	d'c b|
	g c c,|
	g'g,b|
	e a,fis'|
	g d e|
	c d d,|
	<<{g b d|}\\{s4 s16 s16^\markup{\right-align "D.C. al Segno"}}>>
}
LessonXXVILowerFINEbar=\relative c'{g4.|}
