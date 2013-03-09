\version "2.9.9"
\include "italiano.ly"
#(set-default-paper-size "a4")

\header {
  title =	"Praeludium IV"
  opus = "BWV 849"
  composer = 	 "Johann Sebastian Bach (1685–1750)"
  enteredby = 	 "Davide Castellone"

  % mutopia headers.
  mutopiatitle = "Das Wohltemperierte Clavier I, Praeludium IV"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 849"
  mutopiainstrument = "Harpsichord, Piano"
  source = "Breitkopf & Hartel, 1866"

  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Davide Castellone"
  maintainerEmail = "davide.castellone@gmail.com"
  mantainerweb = "www.liceonovello.it/Members/kastel/music"
  lastupdated =	 "2006/Jun/27"
 footer = "Mutopia-2006/07/02-562"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 17.5)

tieHigh = \once \override Tie #'Y-offset = #2.0

acy = \set PianoStaff.connectArpeggios = ##t
acn = \set PianoStaff.connectArpeggios = ##f
staffOne = \change Staff = one
staffTwo = \change Staff = two

soprano = \relative do'' { \voiceOne \slurUp \override Staff.Script #'avoid-slur = #'inside
		sold8 fad mi red mi dod dod'4.\arpeggio si8 la4 |
		\appoggiatura la8 sold2.\prall ~ sold2 fad4 |
		red'8 dod sid lad sid sold sold'4.\arpeggio fad8 mi4 |
		\appoggiatura mi8 red2. ~ red2 sold4 |
		\appoggiatura red8 dod8 sid dod mi la4 ~ la8 sold fad mi red dod |
	%5
		\appoggiatura dod si la si red sold4 ~ sold8 fad mi red dod si |
		\appoggiatura si la sold la dod fad4 ~ fad8 mi red dod si la |
		sold2.\prall ~ sold4. fad8 la4\mordent ~ |
		la8 sold fad mi fad red \oneVoice red' dod sid lad sid sold |
		la' sold fad mi fad red \voiceOne mi2. ~ |
	%10
		mi4. red8 dod4 dod4. si8 lad4 |
		lad8 sold fadd mid fadd red red'2.\arpeggio ~ |
		red8 sid dod red mi red \appoggiatura dod si4. dod8 lad4\turn |
		\oneVoice <sold red si>2.\arpeggio ~ <sold red si>2 si4\mordent ~ |
		si8 sold lad dod mi4 ~ mi8 red mi sold fad4 |
	%15
		\voiceOne << { \tieHigh red2. ~ red2 } \\  \\ { \voiceThree \shiftOff s2 si4 ~ si2 } >> dod4 ~ |
		dod8 lad sid red fad sold la sold fad mi fad red |
		<< { \tieHigh mi2. ~ mi2. ~ } \\ \\ { \voiceThree \shiftOff s2 dod4 ~ dod2. } >> |
		\oneVoice mi8 re mid sold si4 ~ si8 re, dod si la sold |
		\voiceOne la2.\mordent ~ la8 sold la dod fad4 ~ |
	%20
		\oneVoice fad8 mi red dod si la \appoggiatura la sold fad sold si mi4 ~ |
		mi8 red dod si la sold \appoggiatura sold fad mi fad la red4 ~ |
		red8 dod sid lad sold fad \appoggiatura fad mi red mi sold dod4 ~ |
		dod8 si la sold la fad fad' mi re dod re la |
		\voiceOne s2. sid'2 sold4 |
	%25
		sold2. ~ sold8 fad mi red mi dod |
		fad2. ~ fad8 mi red dod red sold, |
		mi'2. ~ mi8 red mi fad sold la |
		sid,4.\lineprall dod8 red4 fad,2.\arpeggio ~ | \oneVoice
		fad8 mi red dod red sid la' sold fad mi fad red |
	%30
		sid' la sold fad sold red red' dod sid! lad sid sold |
		sold'4 fad8 mi red dod sid dod red fad la,4 ~ |
		la8 sold la fad la'4 ~ la4 sold8 fad mi red |
		\voiceOne mi2 ~ mi8 la mi4.\arpeggio fad8 red4\turn |
		dod2. ~ dod4. mi8 red4 |
	%35
		mi2. ~ mi4. sid8 dod4 ~ |
		<< { \voiceOne \tieHigh fadd2. ~ fadd2 sold4 } \\ \\ { \voiceThree dod,8 red mi red dod s2 sid4 } >> |
		dod2. ~ dod4. red8 << { \voiceOne sid4 } \\ \\ { \voiceThree red,8 fad ~ } >> |
		<< { \tieHigh dod'2 ~ dod8 sid dod2. } \\ \\ { \voiceThree fad,8 sold la fad ~ fad4 sold2. } >>
	}
alto = \relative do' { \stemDown
		s2. <mi sold>2\arpeggio fad4 |
		mi2. ~ mi2 fad4 ~ |
		fad2. <sold red>2\arpeggio <sold dod>4 |
		<sold sid>2. ~ <sold sid>2 <sold sid>4 |
		la4 r4 r4 la2. |
	%5
		sold4 r4 r4 sold2. |
		fad4 r4 r4 fad2. |
		mi2. s4. fad8 s4 |
		s1. |
		s2. r8 red'8 dod si dod lad |
	%10
		\appoggiatura sold fadd4. sold8 lad4_\mordent red,4. mid8 fadd!4_\mordent ~ |
		fadd8 s8 s2 <fadd lad>2 sold4 ~ |
		sold2. ~ sold2 fadd4 |
		s1.
		s1.
	%15
		r8 dod' si lad si fad ~ <fad~ red>2. |
		fad4 s4 s1 |
		r8 red'8 dod sid dod sold ~ <sold mi>2. |
		s1. |
		s2. fad4. mi8 red dod |
	%20
		s1.
		s1.
		s1.
		s1.
		la''8 sold fad mi fad red ~ red2. ~ |
	%25
		red4. mi8 red4 dod2. ~ |
		dod4. sid8 red4 sold,2. ~ |
		sold4. dod8 fad, sold la2. |
		sold2. <sid, red>\arpeggio |
		s1.
	%30
		s1.
		s1.
		s1.
		r8 red'8 dod sid dod4 dod2\arpeggio sid4 |
		r8 si lad sold fadd sold \appoggiatura sold fadd2. ~ |
	%35
		fadd8 sold \slurUp lad( sold) si( lad) lad2. ~ |
		lad8 s8 s2 lad!8 sold fadd mi fad red |
		mid si' la sold fad la mi4. fad8 red4 |
		dod2 red4 mid2.
	}

tenor = \relative do' {
		s1.
		sold8 fad mi red mi dod \appoggiatura { mi[ sold] } dod4. si8 la4 |
		sold2. ~ sold2 dod4 |
		red8 dod sid lad sid sold \appoggiatura { sid[ red] } fad4. mi8 red4 |
		mi2. red2. ~ |
	%5
		red dod ~ |
		dod si ~ |
		si8 la sold fad sold mi \appoggiatura { sold[ si] } mi4. red8 dod4 |
		sid1. ~ |
		sid4. dod8 red4 dod2. | \oneVoice
	%10
		lad,8 red dod si dod lad fadd si lad sold lad fadd |
		dod2. ~ dod8 dod' si lad si sold | \voiceOne
		s2. red' ~ |
		red8 dod si lad si sold si red sold mi fad red |
		mi2. fad4.^\mordent sold8 lad4 |
	%15
		\oneVoice si2.^\mordent ~ si8 si la sold la fad |
		\voiceOne s2 red4 ~ red2. |
		\oneVoice dod2. ~ dod8 red mi fad sold la |
		\voiceOne r4 r8 dod re!4 ~ re sold, dod4 ~ |
		dod8 si la sold la fad s2. |
	%20
		si4. dod8 red4 ~ red4. sold,8 dod sid |
		dod2.^\mordent ~ dod4. sid8 dod lad |
		sid4.^\mordent dod8 red4 dod2. |
		la4. si8 dod4 re2.^\mordent |
		sid2. fad'4 r4 r4 |
	%25
		\oneVoice mi,8 red dod si dod la la'2.^\mordent ~ |
		la8 sold fad mi fad red sid'2.^\mordent |
		dod8 si! la sold la fad fad'2. ~ |
		fad8 mi red dod sid lad sold fad mi red dod si |
		la4. si8 sold4 fad4. sold8 mi4 |
	%30
		red4. mi8 fad4 sid,4. red8 fad4 |
		mi8 mi' fad sold la fad red mi fad red sid dod |
		red sid sold lad sid dod red mi fad sold lad sid |
		dod si! la! sold la fad \voiceOne sold2. ~ |
		sold8 sold fadd sold lad red, mi2. ~ |
	%35
		mi8 red dod si dod mi fadd2. |
		\oneVoice red,2 r4 r2. |
		\voiceOne s2. s2 sold8 sold' ~ sold4 fad la sold2.
	}

bass = \relative do {
		dod1. ~
		dod1.
		sid2. ~ sid2 dod4 |
		sold'1. ~
		sold2. fad2. ~ |
	%5
		fad2. mi2. ~ |
		mi2. red2. |
		mi1.
		red2. sold4. fad8 sold4 |
		dod,2. ~ dod4. red8 mi4 |
	%10
		s1.
		s1.
		mi4.^\mordent red8 dod4 red2 red,4 |
		sold2. ~ sold2. |
		dod8 red dod si dod lad ~ lad2. |
	%15
		s1.
		red8 mi red dod red sid sold4. lad8 sid!4 |
		s1.
		si'2 ~ si8 si mid,2. |
		fad1.
	%20
		sold4. la8 si4 mi,2. ~ |
		mi4. red8 dod4 red2. |
		sold4. lad8 sid!4 dod4. si8 la sold |
		fad2. ~ fad4. mi8 fad4 |
		red4. fad8 la4 ~ la8 sold fad mi fad red |
	%25
		s1.*5
	%30
		s1.
		s1.
		s1.
		s2. sold2 sold,4 |
		lad2. ~ lad4. si8 dod4 |
	%35
		fadd,2. ~ fadd4. sold8 lad4 |
		s1.
		\oneVoice r8 red'8 dod si la fad sold red mi dod \voiceTwo sold4 |
		dod2. ~ dod2. |
	}

\paper { between-system-padding = 2\mm between-system-space = 2\mm ragged-last-bottom = ##f after-title-space = 1\mm between-title-space = 0.2\mm indent = 0\mm print-page-number = ##t
%#(if (equal? paper-width (* 8.5 in)) (define system-count 12))
%#(if (equal? paper-width (* 210 mm)) (define system-count 14))
}

\score {
	 \context PianoStaff << #(set-accidental-style 'piano)
		#(override-auto-beam-setting '(end * * * *) 3 4 'PianoStaff )
		\set PianoStaff.connectArpeggios = ##t
		\override PianoStaff.Arpeggio #'staff-position = #4.0
		\context Staff = "one" { \set Staff.extraNatural = ##t
		\clef treble
		\key dod \minor
		\time 6/4
		<< \soprano \\ \alto >>
		\bar "|." }

		\context Staff = "two" { \set Staff.extraNatural = ##t
		\override Score.NoteCollision #'merge-differently-dotted = ##t
		\clef bass
		\key dod \minor
		\time 3/2
		<< \tenor \\ \bass >>
		\bar "|." }
	>>

	\midi { \tempo 4 = 108 }
	\layout { }
}
