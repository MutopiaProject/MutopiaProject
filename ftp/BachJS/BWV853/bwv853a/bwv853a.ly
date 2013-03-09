\version "2.10.10"
\include "italiano.ly"

\header {
  title =	"Praeludium VIII"
  opus = "BWV 853"
  composer = 	 "Johann Sebastian Bach (1685–1750)"
  enteredby = 	 "Davide Castellone"

  % mutopia headers.
  mutopiatitle = "Das Wohltemperierte Clavier I, Praeludium VIII"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 853"
  mutopiainstrument = "Harpsichord, Piano"
  source = "Breitkopf & Hartel, 1866"

  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Davide Castellone"
  maintainerEmail = "davide.castellone@gmail.com"
  mantainerweb = "www.liceonovello.it/Members/kastel/music"
  lastupdated =	 "2005/May/07"
 footer = "Mutopia-2008/05/21-563"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 17)

acy = \set PianoStaff.connectArpeggios = ##t
acn = \set PianoStaff.connectArpeggios = ##f
staffOne = \change Staff = one
staffTwo = \change Staff = two

right = \relative do'' { \acy \stemUp \set Staff.tupletNumberFormatFunction = #'()
		sib2 r4 r8 sib mib4. solb8 |
		dob,2 r4 r8 mib lab4. dob8 |
		re,2 r4 r8 fa \once \override Tie #'direction = #UP lab,4\prall ~ lab16 solb lab sib |
		solb4.\prall fa16 mib \stemNeutral solb'2 <solb, sib mib solb>2\arpeggio |
		<solb sib reb solb>\arpeggio r4 r16 solb' fab mib fab4. reb8 |
	%5
		<mib, solb dob mib>2\arpeggio <solb dob mib>\arpeggio <solb dob mib>\arpeggio |
		<sib mib sib'>\arpeggio r4 r16 mib reb dob reb4. sib8 |
		dob4.\prall sib16 lab \stemUp <mib' lab dob>2\arpeggio <mib lab dob>\arpeggio |
		<fa lab dob>\arpeggio r4 r16 sib lab solb fa solb fa solb lab solb lab fa |
		solb4.\prall fa16 mib <sib mib solb sib>2\arpeggio <reb mib solb sib>\arpeggio |
	%10
		<do mib solb do>\arpeggio r4 r16 \stemNeutral fa mib reb do! reb do reb mib reb mib do |
		reb4.\prall do16 sib <<sib4\arpeggio reb4 fa4~\arpeggio>> fa16 solb fa mib reb do! sib lab solb8 lab16 fa |
		<< { solb4 ~ solb8 sib16 reb } \\ { \stemUp \shiftOn mib,4 } >>
			solb'4 ~ solb16 fa mib reb do8. mib32 reb do16 reb mib8 |
		fa,8. sol32 la la8.\prall sol32 la << { sib1 ~ } \\ { r4 r8 fa solb4. mib8 } >> |
		<< sib'1 \\ { do,4 ~ do16 reb do reb mib reb do reb mib fa mib fa } >>
			<< la2 \\ do,2 \\ { solb'4 fa8.\trill mib16 } >> |
	%15
		<< { sib'4. do8 reb2\arpeggio reb\arpeggio } \\
			{ reb,4. mib8 <fa sib>2\arpeggio <fa sib>\arpeggio } >> |
		<< { reb'4. dob16 sib fab'2 ~ fab4. mib16 reb } \\
			{ <fab, sib>4. s8 <sib reb>2 ~ <sib reb>4. } >> |
		<< { sol'2 ~ sol4. fa16 mib lab2 ~ } \\ { <sib, reb>2 ~ <sib reb>4. s8 <dob mib>2 } >>
		<< { lab'8 sol lab sib sib2.\prall lab4 } \\ { s2 mib reb } \\ { s2 sol!1 } >> |
		<< lab4. \\ <dob, mib> >> dob'8 fa,4. solb16 lab re,4. mib16 fa |
	%20
		sib,4. lab'8 re,4. mib16 fa sib,4. do16 re! |
		mib4. reb16 dob reb2 << reb \\ <mib, sib'> >> |
		<< { reb'4. dob16 sib dob2 dob\arpeggio } \\ { <mib, sib'>4. r8 r2 <mib lab>\arpeggio } >> |
			\acn \set Staff.connectArpeggios = ##t
		<< { dob'4.\arpeggio sib16 lab } \\
			{ <fa lab>4.\arpeggio } >> \acy fa'4. dob8 sib4.\trill dob16 lab |
		\tieUp <mib solb>2\arpeggio ~ solb16 mib fa solb lab sib do re mib fa solb lab solb fa solb mib |
			\tieNeutral \acn
	%25
		<< fab4.\arpeggio \\ <fab, lab dob>\arpeggio >> \acy
			dob'16 sibb lab4. sibb16 dob fab,!4. solb16 lab |
		re,4. fa16 lab dob4. sib16 lab fa'4. mib16 re |
		<< { \stemDown dob'8 la4 sib8 \stemUp mib,2\arpeggio re4.\arpeggio mib8 } \\
			{ r2 <solb, sib>2\arpeggio <fa sib>\arpeggio } >> |
		<< { mib'1. ~ } \\ { <mib, sib'>4. \times 2/3 { lab16 sol lab }
			\once \override Script #'extra-offset = #'(0 . -1.5) lab2 ~^\prall lab4. sol!16 lab } >> |
			%This may seem brutal but it's necessary         ^
		<< { mib'2 ~ mib4 ~ mib16 mib reb dob reb4. sib8 } \\ sib1. >> |
	%30
		<< { dob2 ~ dob4 ~ dob16 dob sib lab sib4. sol8 } \\
			{ mib2 ~ mib4 ~ mib16 mib reb dob reb4. sib8 } \\ lab'2 >>
		\repeat unfold 3 <dob, re lab'>2 |
		\repeat unfold 3 <dob fa lab> |
		\repeat unfold 3 <re fa lab> |
		<< { dob'2\arpeggio ~ dob16 sib lab solb fa mib re! fa } \\ <re fa lab>2\arpeggio >>
			lab'16 dob re fa lab dob sib re, |
	%35
		<< { mib4. sib8 \appoggiatura lab solb2 fa8(\trill mib fa4) } \\ { r4 r8 solb mib2 re2 } >> |
		mib2 ~ mib4 ~ mib16 fa sol lab sib4 ~ sib16 fab mib reb |
		dob2 ~ dob8. mib16 fa sol! lab sib dob8 ~ dob32 sib lab solb fa16 solb lab fa |
		<< { re1 ~ re4. re8 } \\ { solb,4\rest solb8\rest dob16 sib dob4. \staffTwo \stemUp lab8 } >> |
		mib'1.\fermata
	}

left = \relative do' { \staffOne \stemDown
		<mib solb>2 <mib solb> <mib solb> |
		<mib lab> <mib lab dob> <mib lab dob> |
		<mib fa lab> <re! fa lab> <re fa> |
		mib \staffTwo \stemNeutral r4 r8 sib8 solb4. mib8 |
		sib2 <sib reb solb sib>\arpeggio <sib reb solb sib>\arpeggio |
	%5
		<dob mib solb dob>\arpeggio r4 r8 solb'8 mib4. dob8 |
		sol!2 <sol sib mib sol>\arpeggio <sol sib mib sol>\arpeggio |
		<lab dob mib lab>\arpeggio \staffOne \stemDown r4 r8 dob''8 lab4. fa8 |
		re!2 <re fa sib>\arpeggio <re fa sib>\arpeggio |
		<mib solb sib>\arpeggio r4 r8 solb8 mib4. do!8 |
	%10
		\staffTwo \stemNeutral la!2 <la do! fa>\arpeggio <la do fa>\arpeggio |
		<sib reb fa>\arpeggio <sib reb fa>\arpeggio <sib reb fa>\arpeggio |
		<mib, sib' reb>\arpeggio <mib sib' do!>\arpeggio <mib sib' do>\arpeggio |
		<mib la do> <reb fa sib>\arpeggio <mib sib'> |
		<< fa \\ fa >> <fa, fa'> <fa fa'> |
	%15
		<sib fa' sib> r4 r8 sib8 reb4. fa8 |
		sol,2 ~ sol4 ~ sol16 sib lab sol reb'2 ~ |
		reb4. dob16 sib fab'8 mib fab reb dob16 sib lab sib dob lab sib dob |
		fab,4 ~ fab16 fab' mib reb mib4. reb8 mib4. mib,8 |
		lab2 r4 r8 dob'8 fa,4. solb16 lab |
	%20
		re,!4. mib16 fa sib,4. lab'8 re,!4. mib16 fa |
		solb,2 sol!4. sib'8 sol!4. mib8 |
		lab,2 r4 r8 dob'8 lab4. fa8 |
		<re! fa lab>2\arpeggio <re fa sib>\arpeggio <re fa sib>\arpeggio |
		\repeat unfold 3 <mib solb sib>\arpeggio |
	%25
		<lab, dob fab lab>\arpeggio << { r2 r2 } \\ { r2 r2 } >> |
		<lab fa' sib> << { r2 r2 } \\ { r2 r2 } >> |
		<< r2 \\ r2 >> <sib mib solb sib>\arpeggio <sib fa' lab sib>\arpeggio |
		<dob dob'> <dob' mib> <dob mib> |
		\repeat unfold 3 <sol sib mib> |
	%30
		<lab dob> fab fab |
		fa!2 ~ fa4 ~ fa16 solb fa mib fa8. solb16 lab fa solb lab |
		re,2 ~ re4 ~ re16 mib re do re8. mib16 fa re mib fa |
		dob2 ~ dob4 ~ dob16 reb dob sib dob sib lab sib dob lab sib dob |
		re,2 << { r2 r2 } \\ { r2 r2 } >> |
	%35
		<< { r4 r8 mib' <mib solb>2 <fa lab> } \\ { r4 r8 mib, sib'2 sib } >> |
		\repeat unfold 3 <mib sol sib reb>\arpeggio |
		\repeat unfold 3 <mib lab> |
		\repeat unfold 3 <mib fa> |
		<mib, sib' mib sol! sib>1._\fermata |
	}

\paper { between-system-padding = 2\mm between-system-space = 2\mm ragged-last-bottom = ##f after-title-space = 1\mm between-title-space = 0.2\mm indent = 0\mm print-page-number = ##t
%#(if (equal? paper-width (* 8.5 in)) (define system-count 13))
%#(if (equal? paper-width (* 210 mm)) (define system-count 13))
}

\score {
	 \context PianoStaff << #(set-accidental-style 'piano)
		\override PianoStaff.Arpeggio #'staff-position = #4.0
		\context Staff = "one" \with {\consists "Span_arpeggio_engraver"} { \set Staff.extraNatural = ##t
		\clef treble
		\key mib \minor
		\time 3/2
		\right
		\bar "|." }

		\context Staff = "two" { \set Staff.extraNatural = ##t
		\clef bass
		\key mib \minor
		\time 3/2
		\left
		\bar "|." }
	>>

	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }


	\layout { }
}
