\version "2.9.9"
\include "italiano.ly"

\header {
  title =	"Fuga X"
  subtitle = "a 2 voci"
  opus = "BWV 855"
  composer = 	 "Johann Sebastian Bach (1685–1750)"
  enteredby = 	 "Davide Castellone"

  % mutopia headers.
  mutopiatitle = "Das Wohltemperierte Clavier I, Fuga X"
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
  lastupdated =	 "2005/Mar/27"

 footer = "Mutopia-2006/07/02-546"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 17)

staffOne = \change Staff = one
staffTwo = \change Staff = two


upper = \relative do' {
		mi16 sol si mi red mi re mi dod mi do mi |
		si mi red mi lad, dod sol fad sol lad fad mi |
		re8 si' r16 fad' sol fad mi re dod mi |
		re4 ~ re16 dod si lad si dod lad si |
		dod fad, lad dod mi lad, dod mi sol fad mi sol |
	%5
		fad mi re dod si lad sold fad re'4 ~ |
		re16 mi, sold si re sold, si re fa mi re fa |
		mi re do si la sold fad mi do'4 ~ |
		do16 la re, mi fad sol la si do re mi fad |
		sol fad la sol fad mi re do si sol' la, fad' |
	%10
		sol, si re sol fad sol fa sol mi sol mib sol |
		re sol fad sol dod, mi sib la sib dod la sol |
		fad8 re' r16 la' si la sol fad mi sol |
		fad4 ~ fad16 mi re dod re mi dod re |
		mi re dod si la sold mi' re dod si la sol! |
	%15
		fad8 re fad la re fad, |
		re'16 do si la sol fad re' do si la sol fa! |
		mi8 do mi sol do mi, |
		mi'16 re do si la sold mi' re do si la sold |
		la do mi la r mi fa mi re do si re |
	%20
		do4 ~ do16 si la sold? la fad red si' |
		mi, sol si mi red mi re mi dod mi do mi |
		si mi red mi lad, dod sol fad sol lad fad mi |
		red8 si' r16 si' do si la sol fad la |
		sol4 ~ sol16 fad mi red mi fad re mi |
	%25
		dod8 la' r16 la sib la sol fa mi sol |
		fa4 ~ fa16 mi re dod re mi do re |
		si8 sol' r16 la, si do re mi fa re |
		mi re sol fa mi re dod sib la sib sol la |
		fa8 re' r16 la' sib la sol fa mi sol |
	%30
		fa4 ~ fa16 mi re do re do re mi |
		la, do mi la sold la sol la fad la fa la |
		mi la sold la red, fad do si do red si la |
		sold8 mi sold si mi sold, |
		mi'16 re dod si la sold mi' re dod si la sol |
	%35
		fad8 re fad la re fad, |
		re'16 do si la sol fad re' do si la sol fad |
		si la sol fad mi red si' la sol fad mi red |
		mi sol si mi red mi re mi dod mi do mi |
		si la sol do si la si sold la sol la fad |
	%40
		sol fad sol la red, fad do si do red si la |
		sold32( si mi16) r8 r4 r4 |
}
lower = \relative do {
		R2.
		R2. |
		si16 re fad si lad si la si sold si sol si |
		fad si lad si mid, sold re dod re mid! dod si |
		lad8 fad' r16 fad' sol fad mi re dod mi |
	%5
		re4 ~ re16 dod si lad si dod la! si |
		sold,8 mi' r16 mi' fa mi re do si re |
		do4 ~ do16 si la sold la si sol la |
		fad,8 re' r16 mi fad sol la si do la |
		si la do si la sol fad mi re mi do re |
	%10
		si8 sol' r16 re' mi re do si la do |
		si4 si16 la sol fad sol fad sol la |
		re, fad la re dod re do re si re sib re |
		la re dod re sold, si fa! mi fa sold mi re |
		dod8 la dod mi la dod, |
	%15
		la'16 sol fad mi re dod la' sol fad mi re do! |
		si8 sol si re sol si, |
		sol'16 fa mi re do si sol' fa mi re do si |
		mi re do si la sold mi' re do si la sold |
		la do mi la sold la sol la fad la fa la |
	%20
		mi la sold la red, fad do si do red si la |
		sol8 mi' r16 si' do si la sol fad la |
		sol4 ~ sol16 fad mi red mi fad red mi |
		fad si, red fad la red, fad la do si la do |
		si la sol fad mi red dod si sol'4 ~ |
	%25
		sol16 la, dod mi sol dod, mi sol sib la sol sib |
		la sol fa mi re dod si la fa'4 ~ |
		fa16 re sol, la si do re mi fa sol la si |
		do si mi re dod sib la sol fa re' mi, dod' |
		re, fa la re dod re do re si re sib re |
	%30
		la re dod re sold, si fa mi fa sold mi re |
		do8 la' r16 mi'16 fa mi re do si re |
		do4 ~ do16 si la sold la fad red fad |
		si la sold fad mi red si' la sold fad mi re |
		dod8 la dod mi la dod, |
	%35
		la'16 sol fad mi re dod la' sol fad mi re do |
		si8 sol si re sol si, |
		si'16 la sol fad mi red si' la sol fad mi red |
		mi si sol mi r si'' do si la sol la fad |
		sol fad mi mi' red mi re mi dod mi do mi |
		si8[ la] si r si, r |
		mi, r8 r4 r4 |
}

\paper { between-system-padding = 2\mm between-system-space = 2\mm ragged-last-bottom = ##f after-title-space = 1\mm between-title-space = 0.2\mm indent = 0\mm print-page-number = ##t
#(if (equal? paper-width (* 8.5 in)) (define system-count 11))
#(if (equal? paper-width (* 210 mm)) (define system-count 12))
}

\score {
	\context PianoStaff
	<<
		\context Staff = "one" {
		\time 3/4
		\key mi \minor
		\clef treble
		\upper
		\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
		\mark \markup { \musicglyph #"scripts.ufermata" } \bar "|."
		}

		\context Staff = "two" {
		\time 3/4
		\key mi \minor
		\clef bass
		\lower
		\bar "|."
		}
	>>
\midi { \tempo 4 = 120 }
\layout { \context { \RemoveEmptyStaffContext } }
}
