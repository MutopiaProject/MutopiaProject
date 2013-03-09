\version "2.9.9"
\include "italiano.ly"

\header {
  title =	"Praeludium II"
  opus = "BWV 847"
  composer = 	 "Johann Sebastian Bach (1685–1750)"
  enteredby = 	 "Davide Castellone"

  % mutopia headers.
  mutopiatitle = "Das Wohltemperierte Clavier I, Praeludium II"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 847"
  mutopiainstrument = "Harpsichord, Piano"
  source = "Breitkopf & Hartel, 1866"

  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Davide Castellone"
  maintainerEmail = "davide.castellone@gmail.com"
  mantainerweb = "www.liceonovello.it/Members/kastel"
  lastupdated =	 "2006/Jun/27"
 footer = "Mutopia-2006/07/02-550"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

staffOne = \change Staff = one
staffTwo = \change Staff = two

#(set-global-staff-size 17)

right =  {
	\time 4/4
	\key do \minor
	\clef treble

	\relative do'' { \override Score.MetronomeMark #'stencil = #'()
		\repeat unfold 2 { do16 mib, re mib do mib re mib }
		\repeat unfold 2 { lab fa mi fa do fa mi fa }
		\repeat unfold 2 { si fa mib fa re fa mib fa }
		\repeat unfold 2 { do' sol fa sol mib sol fa sol }
		\repeat unfold 2 { mib' lab, sol lab mib lab sol lab } |
	%5
		\repeat unfold 2 { re fad, mi fad re fad mi fad }
		\repeat unfold 2 { re' sol, fad sol re sol fad sol }
		\repeat unfold 2 { do mi, re mi do mi re mi }
		\repeat unfold 2 { do' fa, mi fa do fa mi fa }
		\repeat unfold 2 { sib fa mib fa re fa mib fa } |
	%10
		\repeat unfold 2 { sib sol fa sol mib sol fa sol }
		\repeat unfold 2 { lab sol fa sol mib sol fa sol }
		\repeat unfold 2 { lab re, do re sib re do re }
		\repeat unfold 2 { sol sib, lab sib mib sib lab sib }
		\repeat unfold 2 { fa' do sib do la do sib do } |
	%15
		\repeat unfold 4 { fa re do re si re do re }
		\repeat unfold 2 { mib do si do sol do si do }
		\repeat unfold 2 { fa, mib' re mib fa mib re mib }
		\repeat unfold 2 { fad, do' si do mib do si do } |
	%20
		\repeat unfold 2 { mib do si do sol do si do }
		\repeat unfold 2 { fad do si do la do si do }
		\repeat unfold 2 { sol' do, si do re do si do }
		\repeat unfold 2 { lab' do, si do re do si do }
		\stemUp \staffTwo s8 s16 fa, lab fa mi fa si fa re' si lab fa mi fa |
	%25
		s8 s16 sol do sol fad sol \staffOne \stemNeutral mib' do sol' mib
			\staffTwo \stemUp do lab sol lab |
		s8 s16 \staffOne \stemNeutral do mib do si do fad do la' fad mib do si do | %\break
		\tempo 4 = 160 r16^\markup{ \large\bold\column { Presto "" } } re' do re mib do si do la do si do re si la si |
		sol si la si do la! sol la fad la sol la si! sol fad sol |
		re sol' fa sol lab fa mib fa re fa mib fa sol mib re mib |
	%30
		\stemUp do mib re mib fa re do re si re do re mib do si do |
		sol do si do lab fa' mib fa sol, mib' re mib fa, re' do re |
		mib, do' si do lab fa mib fa sol mib re mib fa re do re |
		\set PianoStaff.connectArpeggios = ##t \tempo 4 = 40 \newSpacingSection
		<< { mi8[ ~ \arpeggio^\markup{ \large\bold\column { Adagio "" } } mi32 do re mi]
			fa64[ sol lab sib do sib lab sol fa16 sol32 mi!]
			fa8[ ~ \mordent\arpeggio fa32 sol fa mi] fa[ sol lab sol fa64 mib re mib fa re mib fa] | }
		  \\ { do4\arpeggio s4 do4\arpeggio s4 } >> \tempo 4 = 96 | \newSpacingSection
		<< s1^\markup{\large\bold\column { Allegro "" }} \\
		  {\staffTwo \stemUp si8. \stemUp \shiftOn re,16 \shiftOff fa lab sol fa si fa re' fa, si lab sol fa} >> |
	%35
		s1 \staffTwo \stemUp
		s2 fa8\rest r16 re mi sol sib sol |
		lab \staffOne \stemUp do fa re fa lab do si do sol fa re
		<< mi4^\fermata \\
		  \stemUp \once\override Script #'extra-offset = #'(0.3 . -1) \override Script #'font-size = #-1.5 s4_\mordent >>
	}
}


left =  {
	\clef bass
	\key do \minor
	\override Staff.NoteCollision #'merge-differently-dotted = ##t
	\relative do {
		\repeat unfold 2 { do16 sol' fa sol mib sol fa sol }
		\repeat unfold 2 { do, lab' sol lab fa lab sol lab }
		\repeat unfold 2 { do, lab' sol lab fa lab sol lab }
		\repeat unfold 2 { do, mib re mib sol mib re mib }
		\repeat unfold 2 { do do' sib do lab do sib do } |
	%5
		\repeat unfold 2 { do, la' sol la fad la sol la }
		\repeat unfold 2 { sib, sib' la sib sol sib la sib }
		\repeat unfold 2 { sib, sol' fa sol mi sol fa sol }
		\repeat unfold 2 { lab, lab' sol lab fa lab sol lab }
		\repeat unfold 2 { lab, re do re fa re do re }
	%10
		\repeat unfold 2 { sol, mib' re mib sol mib re mib }
		\repeat unfold 2 { do mib re mib lab mib re mib }
		\repeat unfold 2 { re fa mib fa lab fa mib fa }
		\repeat unfold 2 { mib sol fa sol lab sol fa sol }
		\repeat unfold 2 { mib la sol la fa la sol la }
	%15
		\repeat unfold 2 { re, fa mib fa lab fa mib fa }
		\repeat unfold 2 { do fa mi fa lab fa mi fa }
		% \repeat unfold 2 { do mib re mib fa mib re mib }
		  do mib re mib fa mib re mib sib mib re mib fa mib re mib
		%                              ^
		% I here followed the Urtext edition, that has sib (bf) instead of do (c)
		\repeat unfold 2 { lab, do si do re do si do }
		\repeat unfold 2 { la mib' re mib do mib re mib }
	%20
		\repeat unfold 2 { sol, mib' re mib fa mib re mib }
		\repeat unfold 2 { sol, mib' re mib do mib re mib }
		\repeat unfold 4 { sol, mib' re mib fa mib re mib } |
		\stemDown sol, si re s16 s4 s2 |
	%25
		sol,16 do mib s16 s4 s2 |
		sol,16 la fad' s16 s4 s2 | \stemNeutral
		\tieDown sol,1 ~ |
		sol16 \tieNeutral re'' do re mib do si do la do si do re si la si |
		sol si la si do lab sol la fa la sol la si sol fa sol |
	%30
		mib \staffOne \stemDown sol' fa sol lab fa mib fa re fa mib fa sol mib re mib |
		do mib re mib fa re do re mib do si do re \staffTwo \stemUp si la si \stemNeutral |
		do mib re mib fa, re' do re mib, do' si do re, si' la si |
		<< \stemUp \shiftOff sib4 \\ { \stemUp \shiftOn sol r4 } \\ { \stemDown \shiftOff do,\arpeggio r4 } >>
		  << { #(set-accidental-style 'default 'Staff) \stemUp \shiftOff lab' }
		  \\ { \stemUp \shiftOn fa r4 } \\ { \shiftOff \stemDown do\arpeggio r4 } >> |
		  #(set-accidental-style 'piano 'Staff)
		r16 << \new Voice { \shiftOff \stemUp \tieDown do,16 si'8 ~ \shiftOn si4 ~ si2 }
		       \new Voice { \shiftOff \stemDown \tieDown do,8. ~ \shiftOn do4 ~ do2 } >> |
	%35
		\stemUp mi'16 reb' sib sol do lab fa lab sol sib sol mi lab fa re fa |
		mi sol mi do fa re si re << \new Voice { \stemDown \tieDown do,2 ~ do1 }
		      \new Voice { \stemDown \tieDown r16 \shiftOn sol' \shiftOff do8 ~ do4 ~ do1 } >>
	}
}

\paper { between-system-padding = 2\mm between-system-space = 2\mm ragged-last-bottom = ##f after-title-space = 1\mm between-title-space = 0.2\mm indent = 0\mm print-page-number = ##t
#(if (equal? paper-width (* 8.5 in))
	(define system-count 12)) }
\score {
	 \new PianoStaff  << #(set-accidental-style 'piano)
		\context Staff = "one" {
		\right
		\bar "|." }

		\context Staff = "two" {
		\left
		\bar "|." }
	>>

	\midi { \tempo 4 = 120 }

	\layout {}
}
