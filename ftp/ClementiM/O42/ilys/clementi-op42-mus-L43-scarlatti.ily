\version "2.16.1"
\include "definitions.ily"

% LESSON XLIII: Minuet by Scarlatti

%-------definitions
adjustSlurOne = \once \override Slur #'control-points = #'( ( 1.1556 . 2.191) ( 1.5143 . 2.291) ( 2.0722 . 2.012) ( 2.132 . 1.594) )

global = {\key c \minor  \time 3/4}

LessonXLIIIUpperVoiceOne= \relative c''{
	\clef treble
	\tempo 4=100
	\hideTempo
	\repeat volta 2 {
		\stemDown c8-2( g'-5 c,4-2 b-1) | %1   ---LINE 1
		c8-2( aes'-5 c,4-2 b-1)| %2
		c8( g'c,4 b) | %3
		c8-2 aes'-5 b,-1 g'-5 aes,!-2 f'-5 |%4
		f,-1 f'-5 ees-4 d-3 ees-5 g,-2  |%5
		f-1 f'-5 ees d ees-4 c-2 | %6
		d-3 f-5 c4-3( \lessScriptPriority b)\trill-2 | %7
		\hideAccidental b2( c4)  |%8                         ---LINE 2
	}
	\repeat volta 2 {
		\stemNeutral
		g'8-4( aes!-5) e4-2 f-5  |%9
		bes,!8-2( c-3) g4-1 aes!-\switchTwoOne  | %10
		g'8-4( aes-5) f4-3 \lessScriptPriority e\trill-2  | %11
		e2( f4) | %12
		f8-3( g-4) d4-1 ees!-5  | %13
		a8-2_( bes-3) f4-1 g^\switchTwoOne | %14
		f8-4 g-5 \stemUp \adjustSlurOne \grace ees4-3( \stemDown \lessScriptPriority d2)\trill-2  | %15
		ees8-3 f \stemNeutral g4 g,^\switchOneTwo  | %16
		f8-1 d'-5 f, d' ees,-2 c'-5 |  % 17    ---LINE 3
		d,-1 d'-5 c b c-5 g-2  | %18
		f-1 d'-5 f,d'ees,c' |  %19
		d,-1 d'-5 c b c-5 g-2 | % 20
		\once \override Beam #'positions = #'(3.7 . 3.7)
		\stemUp f8-1 f' ees d ees-5 g,-2 | %21
		\once \override Beam #'positions = #'(0.2 . 0)
		f8-1[ \stemDown f'] \stemUp \grace f16 \stemNeutral ees8[ d] ees-4[ c-2] | %22
		d8-3 f-5 c4-3( b)\trill | %23
		\hideAccidental b2( c4) | %24
	}
}
%{
LessonXLIIIUpperVoiceTwo= \relative c'{
} %}
LessonXLIIILowerVoiceOne=\relative c'{
	\clef treble
	\repeat volta 2 {
		<c ees>2-5-3 <d f>4-4-2| %1        ---LINE 1
		<ees g>2-3-1 <d f>4-4-2 | %2
		<c ees>2 <d f>4-3-1 | %3
		<ees g>-\markup{\finger "4 3"}-\switchTwoOne <d f>-4-2 <c ees> | %4
		<b d>4.-5-3 <b d>8 <c ees>4-4-2 | %5
		<b d>4. <b d>8 <c ees>4 | %6
		\sameSizeClef
		\clef bass
		aes4 g2 | %7
		c,4 c,2  | %8                      ---LINE 2
	}
	\repeat volta 2 {
		c''2-1 aes!4-2  | %9
		g2-4-1 f4-3  |  %10
		s4 c'2 | %11
		s2.  | %12
		d2-3-1  c4^\switchTwoOne  | %13
		f,2-3 ees4-4  | %14
		s4 bes'2 | %15
		a4\rest^\switchThreeFive \pushFingerLeft ees'-1 ees,^\switchFiveTwo  | %16
		f,4\rest \stemDown <b^5> c  | %17  ---LINE 3
		a'4\rest \stemUp <g^1> <ees^2>  | %18
		f,4\rest \stemDown <b^5> c  | %19
		a'4\rest \stemUp <g^1> <ees^3>  | %20
		b'4\rest^4 b8\rest <b^1> <c^5^1>4~ | %21
		<c^4^1>4. <b^1>8 <c^5^1>4  | %22
		<aes^3^2>4 g2 | %23
		s2. | %24
	}
}
LessonXLIIILowerVoiceTwo=\relative c{
	\clef treble
	\repeat volta 2 {
		\repeat unfold 6 {s2.} | %1-6      ---LINE 1
		\sameSizeClef
		\clef bass
		f4 g g, | %7
		s2.     | %8                       ---LINE 2
	}
	\repeat volta 2 {
		s2. |   %9
		e'4 <c^5> f   | %10
		<bes^2>4 c c,  |  %11
		f4 f,2 | %12
		bes'2 c4 | %13
		g,4\rest <d'^5> ees | %14
		aes4^2 \stemNeutral bes-1 <bes,^5>  | %15
		ees2 ees4  | %16
		\stemUp <d^3>2 <c^4>4  | %17       ---LINE 3
		\stemDown \allowFingeringInStaff <g^5>2 ees'4 | %18
		\stemUp <d^3>2 <c^4>4 | %19
		\stemDown g2 ees'4  | %20
		d2 c4 | %21
		d2 c4 | %22
		f4 <g^1> \stemUp g,  | %23
		<c^1>4 c,2  | %24
	}
}
