\version "2.9.9"
\include "italiano.ly"

\header {
  title =	"Praeludium X"
  opus = "BWV 855"
  composer = 	 "Johann Sebastian Bach (1685–1750)"
  enteredby = 	 "Davide Castellone"

  % mutopia headers.
  mutopiatitle = "Das Wohltemperierte Clavier I, Praeludium X"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 855"
  mutopiainstrument = "Harpsichord, Piano"
  source = "Breitkopf & Hartel, 1866"
  date = "18th C."

  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Davide Castellone"
  maintainerEmail = "davide.castellone@gmail.com"
  mantainerweb = "www.liceonovello.it/Members/kastel"
  lastupdated =	 "2005/Mar/29"
  mutopiapublicdomain = \markup { \column { { This music is part of the Mutopia project,
    \typewriter "http://www.mutopiaproject.org/" } { It has been typeset and placed in the public domain by
    \maintainer. } { Unrestricted modification and redistribution is permitted
    and encouraged -- copy this music and share it. } } }
 footer = "Mutopia-2006/07/02-545"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 18)

staffOne = \change Staff = one
staffTwo = \change Staff = two


soprano =  { \override Score.MetronomeMark #'stencil = #'()
	\relative do'' { \voiceOne
	#(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
	#(override-auto-beam-setting '(end * * * *) 1 2 'Staff)
	#(override-auto-beam-setting '(end * * * *) 3 4 'Staff)
		mi2 ~ mi8[ fad32 mi red mi] mi8.^\prall red32 mi |
		fad1 ~ |
		fad16 mi red( mi) fad( mi) sol( fad) la4 ~ la32[ do si la sol16 la32 fad] |
		sol2 ~ sol8 do16 si do8 mi,8 |
		fad2 ~ fad8 si8 ~ si32[ do si la si sol la si] |
	%5
		mi,2 ~ mi16 do la si do[ mi re mi32 do] |
		re2 ~ re8 sol8 ~ sol32[ fa mi re do16 re32 si] |
		do2 ~ do16 re mi fad sol fad la do, |
		\appoggiatura do8 si2 ~ si8 si8 la32[ sol fad16 sol32 fad mi16] |
		mi'8[ ~ mi32 fad mi red] mi8. fad16 fad4.^\trill r16 mi32 fad32 |
	%10
		sol2 ~ sol16 si, la sol ~ sol[ fad32 mi red16 mi] |
		do'8 ~ do32[ si la si] do[ re do si do16 re] re4.^\trill r16 do32 re |
		mi2 ~ mi8 re16 do re si sold la |
		re2 ~ re16 fa mi re do8.^\prall[ re32 si] |
		do1 ~ |
	%15
		do4 ~ do16 la sold la do la sold la mi la sold la |
		do2 ~ do8 si dod mi16 red |
		mi1 ~ |
		mi8 red16 fad la do si red, mi2 ~ |
		mi4 ~ mi32[ fad mi red mi dod red16] red4.^\trill mi8 |
	%20
		mi1 ~ |
		mi1 ~ | \tempo 4 = 120  \newSpacingSection
		mi16^\markup { \hspace #0 \large \raise #1.0 \bold Presto } la si do \stemNeutral si do si la
			mi la si do si do si la |
		si la sold la si la sold la re,8 si' ~ si16 la sold la |
		fa si, do re do re do si mi re mi fa mi fa mi re |
	%25
		do sold la si la sold la si do la' sol fa mi fa mi re |
		dod mi fad! sol fad sol fad mi red fad sol la sol la sol fad |
		sol sol, la si la si la sol fa' sold, la si la si la sold |
		mi' la, si do si do si la re si do re do re do si |
		do la sold la mi la sold la do2 ~ |
	%30
		do16 la sold la red, la' sold la do la sold la mi la sold la |
		do fad, sol! la sol fad mi red si' mi, fad sol fad mi red mi |
		la sol' la si la si la sol la, fad' sol la sol la sol fad |
		\stemUp lad, mi' fad sol fad sol fad mi red2 |
		r16 si do re do re do si la2 |
	%35
		r16 sol la si la si la sol r16 fad sol la sol la sol fad |
		r16 mi fad sol fad sol fad mi red2 |
		si16 dod red mi fad sol la si do!2 |
		dod red |
		mi16 re do si la sol fad mi do' si la sol fad mi red dod |
		\override Staff.NoteCollision #'merge-differently-dotted = ##t
		red si fad'8 r16 mi8 red16 mi2
	}
}

rx = { r8 r4 }

solsi = { <sol si>8 \rx }
lado = { <la do>8 \rx }
sifad = { <si fad'>8 \rx }
simi = { <si mi>8 \rx }
sire = { <si re>8 \rx }
fadla = { <fad la>8 \rx }
misol = { <mi sol>8 \rx }
resol = { <re sol>8 \rx }
mila = { <mi la>8 \rx }
soldsi = { <sold si>8 \rx }

alto =  { \stemDown
	\relative sol' {
		\solsi \solsi
		\lado \lado
		\lado \sifad
		\simi \simi
		\lado \sire
	%5
		\solsi \lado
		\fadla \solsi
		\misol \fadla
		\resol \resol
		<la' dod>8 \rx <la red>8 \rx
	%10
		\simi \solsi
		<fa la>8 \rx <fa! si>8 \rx
		<sol do>8 \rx \misol
		\fadla <sold si>8 \rx
		\mila \mila
	%15
		<red la'>8 \rx \mila
		\fadla \fadla
		\soldsi <lad dod>8 \rx
		\fadla \solsi
		<sol dod>8 \rx <fad si>8 \rx
	%20
		\solsi \soldsi
		\lado \sire
		do8 s8 s4 s2
		\repeat unfold 10 s1
	%33
		s2 r16 la si do si do si la |
		sol2 r16 fad sol la sol la sol fad |
	%35
		mi2 red2 |
		dod2 \change Staff = two \stemUp r16 la si do si do si la | \change Staff = one \stemDown
		s2 r16 fad' sol la sol la sol fad |
		r16 sol la si la si la sol r16 la si do si do si la |
		sol8 \rx s2 |
	%40
		r16 si,8. ~ si8[ \change Staff = two \stemUp la] <si sold>2
	}
}

bla = \relative do' { la16 si do si do si la }
bsol = \relative do' { sol16 la si la si la sol }
bfad = \relative do { fad16 sol la sol la sol fad }
bmi = \relative do { mi16 fad sol fad sol fad mi }
bsi = \relative do' { si16 do re do re do si }
bdod = \relative do' { dod16 re mi re mi re dod }
bred = \relative do' { red16 mi fad mi fad mi red }
brex = \relative do { re16 mi fa! mi fa mi re }
bmix = \relative do { mi16 fa! sol fa sol fa mi }
bsold = \relative do' { sold16 la si la si la sold }
bdo = \relative do' { do16 re mi re mi re do }
brexu = \relative do' { re16 mi fa mi fa mi re }
blay = \transpose do do, \bla
bsoly = \transpose do do, \bsol
bredy = \transpose do do, \bred

left =  { \clef bass
	\key mi \minor
  %0
	mi16 \bsol mi \bsol
	mi \bla mi \bla
	red \bla red \bla
	mi \bsol mi \bsol
	mi \bfad re \bfad |
  %5
	re \bmi do \bmi
	do \bfad si, \bsol
	si, \bmi la, \bfad
	sol, \bla sol \bsi
	la \bdod fad \bred |
  %10
	mi \bfad mi \bsol
	mi \bla re \bsi
	do \brex do \bmix
	do \bfad si, \bsold
	la \bsi sol \bla |
  %15
	fad \bla mi \bla
	red \bla red \bfad
	re! \bsold dod \bmi
	do! \bfad si, \bmi
	lad, \bmi si, \bfad |
  %20
	mi \bsol re \bsold
	do \bla sold \bsi |
	la \bdo la \bdo
	la \brexu la \brexu
	sold \brexu sold \bsi
  %25
	la \bsi la \bsi |
	sol \bdod fad \bred |
	mi' \bmi re \bmix
	do fad sold la sold la sol fad  si, \bsold |
	la \blay sol, \blay |
  %30
	fad, \blay mi, \blay
	red, \blay mi, \bsoly
	do,8 r8 r4 r16 \bla |
	dod8 r8 r4 si,16 \bfad |
	si, \bsol si, \bla |
  %35
	si, \bsi si, \bla
	si, \bsol si, \bfad
		\overrideProperty
		#"Score.NonMusicalPaperColumn"
		#'line-break-system-details
		#'((fixed-alignment-extra-space . 5)) \break
	sol si la sol fad mi red fad
	<< { \stemUp r16 \bredy | r16 \bmi r16 \bfad | mi8 r8 r4 }
		\\ { \stemUp si,2 | si, si, | do8 r8 r4 } >>
	la,16 si, do re mi fad sol la ~ |
	<< { \stemUp \tieUp la8. la16 \stemDown sol8 fad8 } \\
		{ \stemDown si,2 mi,2 } >>
}

\paper { between-system-padding = 1\mm between-system-space = 1\mm ragged-last-bottom = ##f after-title-space = 0.5\mm between-title-space = 0.2\mm indent = 0\mm print-page-number = ##t
#(if (equal? paper-width (* 8.5 in)) (define system-count 13))
#(if (equal? paper-width (* 210 mm)) (define system-count 14))
}

\score {
	\context PianoStaff \with { \override VerticalAlignment #'forced-distance = #9.5 }
	<< #(set-accidental-style 'piano)
		\context Staff = "one" {
		\time 4/4
		\key mi \minor
		\clef treble
		<< \soprano \\ \alto >>
		\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
		\mark \markup { \musicglyph #"scripts.ufermata" } \bar "|." }

		\context Staff = "two" {
		\left
		\bar "|." }
	>>
\midi { \tempo 4 = 66}
\layout {}
}
