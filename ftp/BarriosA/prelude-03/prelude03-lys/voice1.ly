\version "2.18.2"
voiceone = \relative c {

    \tempo \markup \column { \fontsize #2 "Adagio" }

    \override TupletBracket.bracket-visibility = ##t
    \tuplet 6/4 { c16 g'_0 aes' ees g g, }
    \tuplet 6/4 { c,16 g' aes' ees g g, } | %1

    \scaleDurations #'(4 . 6) {
	b,16 g' aes' d, g g, b,16 g' aes' d, g g, | %2
	d g g' b, f' g, d g g' b, f' g, | %3
	c, g'_0 f'^\2 c^\3 ees g, c, g' f' c ees g, | %4
	bes, g'_0 f'^\2 c^\3 ees g, bes, g' f' c ees g, | %5
	a, fis'_\4 ees' c d fis, a, fis' ees' c d fis, | %6
	aes, f' ees' c d f, aes, f' ees' c d f, | %7
	g, g' ees' c d g, g, g' ees' c d g, | %8
	g, f' ees' c d f, g, f' ees' b d f, | %9
	g, ees'_4 d'^\2 g, c^\3 ees, g, ees' d' g, c ees, | %10
	g, d' c' f, bes d, g, d' c' f, bes d, | %11
	g, c bes' ees, aes c, g c bes' ees, aes c, | %12
	g b aes' d, g b, g b aes' d, g b, | %13
	f d' d' g, b d, f, d' d' g, b d, | %14
	e, g' g' bes, des g, e, bes'' aes' des, g bes, | %15
	f, aes' g' c, f aes, f aes g' c, f aes, | %16
	ees aes aes' c, f aes, ees aes aes' c, f aes, | %17
	d, f' ees' aes, c f, d, f' ees' aes, c f, %18
	ees, ees' des' g, bes ees, ees, ees' des' g, bes ees, | %19
	e, des' des' g, bes des, e, des' c' g bes des, | %20
	f, c' bes' f aes c, f, c' bes' f aes c, | %21
	d, c' c' f, aes c, d, c' c' f, aes c, | %22
	g b b' f g b, g b b' f g b, | %23
	g c c' ees, g c, g c c' ees, g c, | %24
	f, c' c' ees, aes c, f, c' c' ees, aes c, | %25
	f, bes bes' d, aes' bes, f bes bes' d, aes' bes, | %26
	ees, bes' bes' ees, g bes, ees, bes' bes' ees, g bes, | %27
	f aes aes' des, f aes, f, aes' aes' des, f aes, | %28
	g, g' g' c, ees g, g, g' g' c, ees g, | %29
	g, g' f' b, d g, g, g' ees' b d f, | %30
	c ees^2 d'^3 g,^1 c ees, c ees ees' g, c ees, | %31
	c ees^2 ees'^4 g,^1 c ees,
       } \override Script #'padding = #2 c4 _\fermata
}
