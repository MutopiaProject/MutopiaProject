\version "2.9.9"
\include "italiano.ly"

\header {
  title =	"Praeludium VI"
  opus = "BWV 851"
  composer = 	 "Johann Sebastian Bach (1685–1750)"
  enteredby = 	 "Davide Castellone"

  % mutopia headers.
  mutopiatitle = "Das Wohltemperierte Clavier I, Praeludium VI"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 851"
  mutopiainstrument = "Harpsichord, Piano"
  source = "Breitkopf & Hartel, 1866"
  date = "18th C."

  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Davide Castellone"
  mantainerweb = "www.liceonovello.it/Members/kastel"
  maintainerEmail = "davide.castellone@gmail.com"
  lastupdated =	 "2006/Jun/27"
 footer = "Mutopia-2006/07/02-538"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

staffOne = \change Staff = one
staffTwo = \change Staff = two

#(set-global-staff-size 17)

right =  {
	\time 4/4
	\key re \minor
	\clef treble

	#(override-auto-beam-setting '(end * * * *) 1 8 'Voice)
	#(override-auto-beam-setting '(end * * * *) 1 4 'Voice)
	#(override-auto-beam-setting '(end * * * *) 3 8 'Voice)
	#(override-auto-beam-setting '(end * * * *) 1 2 'Voice)
	#(override-auto-beam-setting '(end * * * *) 5 8 'Voice)
	#(override-auto-beam-setting '(end * * * *) 3 4 'Voice)
	#(override-auto-beam-setting '(end * * * *) 7 8 'Voice)
	\set tupletSpannerDuration = #(ly:make-moment 1 8)
	\relative do' {
		r8 r16 la' \times 2/3  { fa16 re la' \set Voice.tupletNumberFormatFunction = #'() \override TupletBracket #'stencil = #'() fa re re'
			sib sol sib sol mi sol mi dod sol' mi dod la' |
		fa re la' fa re \stemDown la'' \stemNeutral fa re fa re la re sib sol re' sib sol sol' mi do mi do sol do |
		la fa do' la fa fa' re sib re sib sol sol' mi do mi do la la' fa re fa re sib sib' |
		sol mi sol mi do do' la fa la fa do la' fa re fa re la fa' re sib re sib fa re' |
		sib sol sib sol re sib' sol do, sib' sol mi sib'la fa la fa do fa re sib fa' do sib mi |
	%5
		do la fa' do la do la fa do' la fa do' la fad do' la fad mib' la, fad re' la fad do' |
		sib sol re' sib sol re' sib sol mi' sib sol fad' sib, sol sol' re sib sol'
			mib la, sol' re la fad' |
		re sib sol' re sib re sib sol re' sib sol re' si sold re' si sold fa' si, sold mi' si sold re' |
		do la mi' do la mi' do la fad' do la sold' do, la la' mi do la' fa si, la' mi si sold' |
		mi do la' mi do do' fa, re sib' sol mi sib' la fa la do, la la' re, si sol' mi dod sol' |
	%10
		fa re re' la fa fa' sib, sol mib' do la mib' re sib re fa, re re' sol, mi do' la fad do' |
		sib sol re' sib sol sol' mib sol, sol' re sol, sol' dod, la sol' mi dod sib' mi, dod la' mi dod sol' |
		fa re la fa re la' fa re si' fa re dod' fa, re re' fa, re la' fa re sib' mi, dod la' |
		mi dod sol' re la fa' re sib mi \staffTwo \stemUp do fa, mib' sib fa re' la fa re' sib mi, re' la mi dod' |
		la fad la do la do \staffOne \stemNeutral mib do mib } fad8 \times 2/3 { \staffTwo \stemUp sib,16 sol sib
		\staffOne \stemNeutral re sib re sol re sol } sib8 ~ |
	%15
		\times 2/3 { sib16 sol mi' sib sol sol' sib, sol mi' sib sol dod sib sol mi'
			sib sol sol' sib, sol mi' sib sol dod |
		la fad re' la fad mib' la, fad re' la fad do' la fad re' la fad mib' la, fad re' la fad do' |
		sol re sol sib sol sib re sib re sol re sol sib la sol fa mi re dod la dod mi dod mi |
		sol mi re dod si la sol mi sol sib sol sib dod sol mi' dod sib mi dod la mi' dod sol mi' |
		do la re sib sol mib' la, fad re' la fad do' sol re sib' sol fa sib sol mib sib' sol re sib' |
	%20
		sol dod, sib' mi, dod sib' mi, dod la' mi dod sol' re si fa' re dod fa re si fa' re la fa' |
		dod sol mi' dod sib mi dod la mi' dod sol mi' si sold re' dod sold mi' re sold, fa' } sol,8 ~ |
		\times 2/3 { sol16 mi sol dod sol dod mi dod mi } sol8 \times 2/3 { fa16 re fa la fa la
			\stemUp re[ la re] } fa8 ~ |
		\times 2/3 { fa16 si, re fa re fa sold fa sold si sold fa sib sol mi la fad red sold fa re
			sol mi dod | \stemNeutral
		fad mib do fa re si mi dod sib mib do la }
		  << { \stemUp re2 ~ re4 dod re2^\fermata } \\ { r4 \stemUp < si sold >4 \shiftOn la2 \shiftOff la} \\
		     { s4 \stemDown < re, fa >4 | \shiftOn < re fa >4 \shiftOff <mi sol> < re fad >2 } >>
		}
	}


left =  {
	\clef bass
	\key re \minor
	#(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
	#(override-auto-beam-setting '(end * * * *) 3 4 'Staff)
\override Staff.NoteCollision #'merge-differently-dotted = ##t
	\relative do {
		re8 re re re re re re re |
		re re re' re sol, sol do do |
		fa, fa sib sol do la re re, |
		mi do fa mi re do sib la |
		sol fa mi do fa la sib do |
	%5
		fa,4 r8 mib' re do sib la |
		sol sib do re mib sib do re |
		sol,4 r8 fa' mi re do si |
		la do re mi fa do re mi |
		la, la' la sol fa fa, fa mi |
	%10
		re re' re do sib sib' sib la |
		sol4 r8 sib la sol fa mi |
		re fa sol la sib fa sol la |
		sib, fa \stemDown sol la sib fa sol la | \stemNeutral
		re,4. ~ \times 2/3 {re16 fad la} \tieDown re4. ~
			\set Score.tupletNumberFormatFunction = #'() \times 2/3 {re16 sol sib} |
	%15
		dod8 re, dod' re, dod' re, dod' re, |
		do' re, do' re, do' re, do' re, |
		sib' re, sib' re, sol re sol re |
		mi re mi re mi re mi re |
		fad re fad re ~ << {
		#(override-auto-beam-setting '(end * * * *) 1 4 'Voice)
			sol la sol fa |  %20a
			mi sol fa mi re mi fa4 | %21a
			mi8 sol fa mi fa mi fa ~ \times 2/3 { fa16[ mi re] } | %22a
			dod8 mi sol sib la \staffOne \stemDown re fa la | %23a
			sold8 sol8\rest sol4\rest sol2\rest } \\ %24a
			{ re,2 ~ | re sold,4. la8 |       %20b-21b
			| sib2 si4. sib8 |             %22b
			| la4. ~ \times 2/3 { la16 dod mi } la4. ~ \times 2/3 { la16 \staffOne re fa } | %23b
			\staffTwo { r1 } } %24b
			>> \stemNeutral
		<< { r2 r4 < sold, fa re >4 } \\ { r2 r4 si, } >> |
	%25
		<< \stemUp la'2 \\ { \stemUp \shiftOn < fa re >4 \shiftOff mi re2 } \\
		  { \stemDown \shiftOn la2 \shiftOff re,_\fermata } >>
	}
}

\paper { between-system-padding = 2\mm between-system-space = 2\mm ragged-last-bottom = ##f after-title-space = 1\mm between-title-space = 0.2\mm indent = 0\mm print-page-number = ##t
system-count = #13
}

\score {
	 \context PianoStaff \with { \override VerticalAlignment #'forced-distance = #10.5 } <<
		#(set-accidental-style 'piano)
		\context Staff = "one" {
		\right
		\bar "|." }

		\context Staff = "two" {
		\left
		\bar "|." }
	>>

	\midi { \tempo 4 = 66 }

	\layout {}
}
