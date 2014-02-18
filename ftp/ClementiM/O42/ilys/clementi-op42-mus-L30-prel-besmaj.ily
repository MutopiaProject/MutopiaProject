\version "2.16.1"
\include "definitions.ily"

% LESSON XXX. Prelude in B flat, Major.

LessonXXXUpperPrel= \relative c''{
	\key bes \major
	\time 2/2
	\clef treble
	\tempo 2=55 \hideTempo
	<<{
		\set tupletSpannerDuration = #(ly:make-moment 2 4)
		\times 4/6 {b8\rest f[ bes d bes f]}
		\override TupletNumber #'stencil = ##f
		\override TupletBracket #'stencil = ##f
		\times 4/6 {d'\rest bes[ c e c bes]
		f'\rest a,[ c f c a] f'\rest a,[ c f c a]
		f'\rest b,[ d f d b] f'\rest c[ ees g ees c]
		d\rest f,[ bes! d bes f] b\rest c, f a f c
		b'\rest-1 d,-2 f-3 bes-5 f-3 d-2
		\change Staff = "lower" r8 f,-1[ d-2] bes-3[ f-1 d-2]}
	}\\{d''2 e_\markup{\italic \right-align "sempre legato"}|f f|f g|
	d a|bes bes^\markup{\finger 1}|}>>
	r1\fermata| \bar "|."
	\stopStaff \repeat unfold 32 {s32}
}

LessonXXXLowerPrel=\relative c{
	\key bes \major
	\time 2/2
	\clef bass
	<<{
		f2-1 g|c,-5-2 a'-4-1|aes-5-2 g4-4-2 c-1|
		f,2 \setFingeringLeft \allowFingeringInStaff <ees-2>|d-1 s
	}\\{
		bes2-4 g|f ees'|d ees|
		f, \setFingeringLeft \allowFingeringInStaff <f-5>|bes-3 s
	}>>
	<bes,-4>1\fermata
	\bar "|."
	\stopStaff  \repeat unfold 32 {s32}
}
