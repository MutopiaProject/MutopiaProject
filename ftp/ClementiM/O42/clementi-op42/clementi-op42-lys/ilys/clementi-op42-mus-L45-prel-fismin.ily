\version "2.16.1"
\include "definitions.ily"

% LESSON XLIV. Prelude in F # Minor.

global = { \key fis \minor \time 2/4 }

LessonXLVUpperPrelA= \relative c''{

	\tempo "Moderato e legato" 4 = 81
	\hideTempo
	\mergeDifferentlyDottedOn
	b8\rest <a-3>4.		| %1
	b8\rest a4.		| %2
	b8\rest <d-5>4.		| %3
	b8\rest <b-5>4.		| %4
	b8\rest <ais-5>4.	| %5
	b8\rest <b-5>4.		| %6
	b8\rest <a!-5>4.	| %7
	b8\rest <gis-5>4.	| %8
	b8\rest <fis-5>4.	| %9
	b8\rest <eis,-5>4.	| %10
	\once \override Voice.Fingering #'extra-offset = #'(-0.1 . 3.8 )
	\allowFingeringInStaff <gis,-1>2-\markup{\small \center-align " ten"} | %11
	b'2\rest\fermata	| %12
	\bar "|."
}

LessonXLVUpperPrelB= \relative c''{
	
	s8 a[ \allowFingeringInStaff <eis-1> \allowFingeringInStaff <fis-2>]	| %1
	s8 a[ eis fis]		| %2
	s8 d'[ <fis,^2> <eis^1>]| %3
	s8 b'[ d,! cis]		| %4
	s8 ais'[ dis, e!]	| %5
	s8 b'[ cis, d!]		| %6
	s8 a'[ \allowFingeringInStaff \once \override Voice.Fingering #'extra-offset = #'(0.0 . 2.0 ) <bis,^1> \allowFingeringInStaff \once \override Voice.Fingering #'extra-offset = #'(0.0 . 1.5 ) <cis^2>] | %7
	s8 gis'[ \allowFingeringInStaff \once \override Voice.Fingering #'extra-offset = #'(0.0 . 1.5 ) <ais,^2> \allowFingeringInStaff \once \override Voice.Fingering #'extra-offset = #'(0.0 . 1.0 ) <b!^1>]  | %8
	s8 fis'[ b, bis]		| %9
	s8 eis[ \allowFingeringInStaff \once \override Voice.Fingering #'extra-offset = #'(0.0 . 1.0 ) <bis^2> \allowFingeringInStaff \once \override Voice.Fingering #'extra-offset = #'(0.0 . 0.5 ) <cis^3>]	| %10
	\staffDown \stemUp \forceFingeringToStem d,8\rest <eis^1>[( <bis^3> <cis^1>])	| %11
	<cis,^5>2\fermata		| %12
}
LessonXLVUpperPrel = { << \LessonXLVUpperPrelA \\ \LessonXLVUpperPrelB >>}

LessonXLVLowerPrelA= \relative c' {

	<a^2^1>2	| %1
	<fis^3^2>2	| %2
	<gis^5^1>2	| %3
	<eis^3^2>2	| %4
	fis2		| %5
	fis2		| %6
	fis2		| %7
	fis2		| %8
	gis2		| %9
	gis2		| %10
	s2		| %11
	s2		| %12
}

LessonXLVLowerPrelB= \relative c {

	fis2	| %1
	d2	| %2
	b2	| %3
	cis2	| %4
	fis,2	| %5
	b2	| %6
	cis2	| %7
	d2	| %8
	d2	| %9
	cis2	| %10
	s2	| %11
	s2	| %12
}

LessonXLVLowerPrel = { << \LessonXLVLowerPrelA \\ \LessonXLVLowerPrelB >> }
