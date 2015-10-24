\version "2.18.2"
voicetwo = \relative c'' {
    \scaleDurations #'(2 . 3) {
	\autoBeamOff
	s8 aes  g4  aes8  g | %1
	s8 aes  g4 aes8  g  | %2
	s8 g  f4 g8  f  | %3
	s8 f ees4 f8 ees | %4
	s8 f ees4 f8 ees | %5
	s8 ees  d4 ees8  d | %6
	s8 ees  d4 ees8  d | %7
	s8 ees  d4 ees8  d | %8
	s8 ees  d4 ees8  d | %9
	s8 d  c4 d8  c | %10
	s8 c  bes4 c8  bes | %11
	s8 bes  aes4 bes8  aes | %12
	s8 aes  g4 aes8  g | %13
	s8 d'  b4 d8  b | %14
	s8 g'  des8 s8 aes'  g | %15
	s8 g  f4 g8  f | %16
	s8 aes  f4 aes8  f | %17
	s8 ees'  c4 ees8  c | %18
	s8 des  bes4 des8  bes | %19
	s8 des  bes4 c8  bes | %20
	s8 bes  aes4 bes8  aes | %21
	s8 c  aes4 c8  aes | %22
	s8 b  g4 b8  g | %23
	s8 c  g4 c8  g | %24
	s8 c  aes4 c8  aes | %25
	s8 bes  aes4 bes8  aes | %26
	s8 bes  g4 bes8  g | %27
	s8 aes  f4 aes8  f | %28
	s8 g  ees4 g8  ees | %29
	s8 f  d4 ees8  d | %30
	s8 d  c4 ees8  c | %31
	s8 ees   c
    } s4 \bar "|." %32
}
