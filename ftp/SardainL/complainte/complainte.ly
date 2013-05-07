\version "2.4.2"
\include "catalan.ly"
#(set-global-staff-size 16)

\header {
	title = "Complainte"
	subtitle = "pour Clarinette en La et Piano"
	composer = "L. Sardain"
	opus = ""
	tagline = "Public Domain"
	mutopiatitle = "Complainte"
	mutopiacomposer = "SardainL"
	mutopiainstrument = "Clarinet, Piano"
	date = "1999"
	source = "manuscript"
	style = "Classical"
	copyright = "Public Domain"
	maintainer = "Ludovic Sardain"
	maintainerEmail = "ludovicsardain@hotmail.com"
	lastupdated = "2005/Feb/25"

	footer = "Mutopia-2005/02/25-507"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

clarinette =  \relative do' {
	\time 6/8
	\once\override TextScript #'extra-offset = #'(-3.5 . 2)
        r4^\markup { \fontsize #2.0 Andante}
	fad8(\mp fad4 mid8 |
	mid4. dodd4) r8 |
	r4 mi!8( mi4 dodd8 |
	red4. la'4) r8 |
	r4 sold8(\< sold4 mi'8 |
	mi4 re8 re4 sid8 |
	sid2.\> |
	dod4.) r4.\! |
	r4 la8( la4 sold8 |
	sold4. si4) r8 |
	r4 fad8( fad4 mid8 |
	mid4. sold4) r8 |
	r4 si,8(\p dod4 re8 |
	la'4 sold8 fad4 mid8 |
	re2.~\< |
	re4.) r\! |
	r4. dodd4.~(\mf |
	dodd4 red8 mid4 fad8 |
	mid'4 dodd8 lad4.~ |
	lad~ lad4) r8 |
	r4. mi'4.~(\f |
	mi8 mi fadd sold fad mi |
	red8-.) r8 fadd( sold4.~ |
	sold~ sold4) r8 |
	r4.\cresc sold4.( |
	la si |
	mi~ mi4 re8 |
	mid4. re |
	dod2.~\!\> |
	dod~ |
	dod~ |
	dod4.)\! r |
	r4. dod,4.( |
	si la |
	sold2.~ |
	sold4.) r |
	r4. la( |
	sold fad |
	mid2.~ |
	mid4.) r |
	r4. fad(\p |
	mi re |
	dod si |
	dod re) |
	re2.~\pp |
	re |
	R2. |
	R2. |
	r4 fad8( fad4 mid8 |
	mid4. dodd4) r8 |
	r4 fad8( fad4 mid8 |
	mid4.~ mid4) r8 |
	r4 fad8~ fad4.~ |
	fad2.~ |
	fad2.~ |
	fad2. \bar "|."
}

pianod =  \relative do' {
	s2.*6 |
	s4. s4 red8 |
	red4 re8 re4. |
	s2.*8 |
	\stemUp \change Staff = lower fad,4 \change Staff = upper lad8 fad'4 lad,8 |
	\change Staff = lower fad4 \change Staff = upper lad8 fad'4 lad,8 |
	\change Staff = lower mid4 \change Staff = upper si'8 mid4 si8 |
	\change Staff = lower mid,4 \change Staff = upper si'8 mid4 si8 |
	\change Staff = lower mi,4 \change Staff = upper sold8 mi'4 sol8 |
	mi'4 sold,8 mi4 sold,8 |
	\change Staff = lower red4 \change Staff = upper la'8 red4 la'8 |
	red la red, fad red la |
	\change Staff = lower r8 re, fad sold si re |
	\change Staff = upper fad sold si re fad sold | 
	<si re> fad <sold si> re <fad sold> si, |
	<re fad> sold, <si re> fad <sold si> re |
	\clef bass dod sold mid dod mid sold |
	dod la fad dod fad la |
	dod lad fadd dod fadd lad |
	dod si sold dod, r4 |
	<< { \voiceOne r8 dod' dod dod re re |
	re dod dod dod re re |
	re dod dod dod re re |
	re dod dod dod4. |
	r8 re re re mi mi |
	mi re re re mi mi |
	mi re re re mi mi |
	mi re re re4. } \\
	{ \voiceTwo s8 la\p\< la la4 la8 |
	la4 la8 la4 la8 |
	sold4\> sold8 sold4 sold8 |
	sold4 sold8 sold4.\! |
	s8 fad\< fad fad4 fad8 |
	fad4 fad8 fad4 fad8 |
	mid4\> mid8 mid4 mid8 |
	mid4 mid8 mid4.\! } >>
	\clef violin r8 <re' fad>8 <re fad> <re fad> <mi sold> <mi sold> |
	<mi sold> <re fad> <re fad> <re fad>4. |
	r8 <fad la> <fad la> <fad la> <sold dod> <sold dod> |
	<sold dod> <fad la> <fad la> <fad la>4. |
	r8 <sold redd'> <sold redd'> <sold redd'> <lad mid'> <lad mid'> |
	<lad mid'> <sold dodd> <sold dodd> <sold dodd>4. |
	r8 <sold mid'> <sold mid'> <sold mid'> <dodd lad'> <dodd lad'> |
	<dodd lad'>2. |
	s2.*8 |
}

pianog =  \relative do {
	\clef bass
	<< {\voiceTwo red2.~ |
	red4.~ red4 re8 |
	dod2. |
	do! |} \\
	{ \voiceOne lad'4.~ lad8 soldd lad |
	si2. |
	sold4.~ sold8 fadd sold |
	la4. fad} >>
	<si, re fad sold>2. |
	<sold fad' si> |
	<dod mid si'>~ |
	<dod mid si'> |
	<< {\voiceTwo fad2.~ |
	fad4. mid |
	re2.~ |
	re4. dod |} \\
	{ \voiceOne dod'4.~ dod8 sid dod |
	re2. |
	la4.~ la8 sold la |
	si2.} >>
	<si, la'>2.~ |
	<si la'> |
	<< {\voiceTwo lad2.~ |
	lad4. lad, } \\
	{\voiceOne sold''2.~ |
	sold} >>
	\stemDown red,4 red'8 lad'4 red,8 |
	red,4 red'8 lad'4 red,8 |
	dodd,4 dodd'8 si'4 dodd,8 |
	dodd,4 dodd'8 si'4 dodd,8 |
	dod,4 dod'8 sold'4 \change Staff = upper dod8 |
	sold'4 dod,8 \change Staff = lower sold4 dod,8 |
	dod,4 dod'8 la'4 do8 |
	\change Staff = upper la'4 \change Staff = lower do,8 la4 do,8 |
	si,4 si'8 re4 fad8 |
	\change Staff = upper si re fad sold si re |
	\change Staff = lower \stemNeutral sold,,,,4. si'' |
	fad re |
	dod,2. |
	dodd |
	red4. redd |
	mid4.~ mid8 r4 |
	<< { \voiceOne dod'4. re |
	dod re |
	dod re |
	dod re |
	la si |
	la si |
	la si |
	la si |
	r4. la' |
	sold fad |
	mi re |
	mi fad } \\
	{ \voiceTwo fad,2.~ |
	fad |
	mid~ |
	mid |
	re~ |
	re |
	dod~ |
	dod |
	si~ |
	si |
	si'~ |
	si } >>
	lad4. mid' |
	lad mid |
	\clef violin lad mid' |
	si'2. |
	\clef bass
	<< {\voiceTwo red,,2.~ |
	red4.~ red4 re8 } \\
	{ \voiceOne lad'4.~ lad8 soldd lad |
	si2. |} >>
	<< {\voiceTwo red,2.~ |
	red2. } \\
	{ \voiceOne lad'4.~ lad8 soldd lad |
	si2. |} >>
	<red, lad'>2.~ |
	<red lad'> |
	R2.*2 |
}

\score {
	<<
		\context Staff = "clarinette"  \transpose do mib \clarinette
		\context PianoStaff <<
			\context Staff = "upper" \pianod
			\context Staff = "lower" \pianog
		>>
	>>
	\layout {}
	\midi { \tempo 8=180 }
}

\paper {
		topmargin = 1.0\cm
		bottommargin = 1.0\cm
		leftmargin = 2.5\cm
		linewidth = 16.0\cm
		raggedbottom = ##t
	}



