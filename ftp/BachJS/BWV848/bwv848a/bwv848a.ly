\version "2.9.9"
\include "italiano.ly"

\header {
  title =	"Praeludium III"
  opus = "BWV 848"
  composer = 	 "Johann Sebastian Bach (1685–1750)"
  enteredby = 	 "Davide Castellone"

  % mutopia headers.
  mutopiatitle = "Das Wohltemperierte Clavier I, Praeludium III"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 848"
  mutopiainstrument = "Harpsichord, Piano"
  source = "Breitkopf & Hartel, 1866"

  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Davide Castellone"
  maintainerEmail = "davide.castellone@gmail.com"
  mantainerweb = "www.liceonovello.it/Members/kastel/music"
  lastupdated =	 "2006/Jun/27"
 footer = "Mutopia-2007/01/12-561"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 17)

staffOne = \change Staff = one
staffTwo = \change Staff = two

stsd = { \staffTwo \stemUp }
sosn = { \staffOne \stemNeutral }

ssol = \relative do'' { sold16 r sold r sold | }
lla = \relative do'' { lad16 r lad r lad | }
ssi = \relative do'' { sid16 r sid r sid | }
sssol = \relative do' { sold16 r sold r sold | }
llla = \relative do' { lad16 r lad r lad | }

introright = \relative do'' {
		mid16 dod sold dod mid dod |
		\repeat unfold 3 { fad dod } |
		\repeat unfold 3 { sold' dod, } |
		\repeat unfold 3 { lad' dod, } |
		\repeat unfold 3 { sold' dod, } |
	%5
		fad mid red mid fad red |
		mid red dod red mid dod |
		red mid red dod sid lad |
	}
right =  {
	\clef treble
	\key dod \major
	\time 3/8
	\relative do''{
		\introright
		sold4 sold'8 |
		lad,4 sold'8 |
	%10
		sid,4 sold'8 |
		dod,4 sold'8 |
		sid,4 sold'8 |
		lad,4 fadd'8 |
		sold,4 sold'8 ~ |
	%15
		sold8 fad16 mid red mid |
		fad red lad red fad red |
		\repeat unfold 3 { sold red } |
		\repeat unfold 3 { lad' red, } |
		\repeat unfold 3 { si' red, } |
	%20
		\repeat unfold 3 { lad' red, } |
		sold fad mid fad sold mid |
		fad mid red mid fad red |
		mid fad mid red dod sid |
		lad4 lad'8 |
	%25
		sid,4 lad'8 |
		dod,4 lad'8 |
		red,4 lad'8 |
		dod,4 lad'8 |
		sid,4 soldd'8 |
	%30
		lad,4 lad'8 ~ |
		lad sold fadd |
		sold sold, sold' ~ |
		sold fad mid |
		fad16 mid red mid fad red |
	%35
		soldd fadd mid fadd soldd mid |
		lad soldd lad sid lad sold |
		fadd mid red mid fadd red |
		sold8 sold, sold' ~ |
		sold fad mid |
	%40
		fad fad, fad' ~ |
		fad mid red |
		mid16 red dod red mid dod |
		fadd mid red mid fadd red |
		sold fadd sold lad sold fad |
	%45
		mid red dod red mid dod |
		fad,4 fad'8 |
		sold,4 fad'8 |
		lad,4 fad'8 |
		si,!4 fad'8 |
	%50
		lad,4 fad'8 |
		sold,4 mid'8 |
		fad,4 fad'8 ~ |
		fad mid16 red dod red |
		\introright
	%62
		sid \ssol |
		sid \ssol |
		dod \ssol |
	%65
		dod \ssol |
		fad \ssol |
		fad \ssol |
		mid \ssol |
		mid \ssol |
	%70
		fadd \lla |
		fadd \lla |
		sold \ssi |
		sold \ssi |
		sold dod, r sold r dod |
	%75
		r mid r sold r lad |
		si! lad sold fad mid red |
		mid fad sold si! lad sold |
		lad red, r fad, r lad |
		r red r fad r sold |
	%80
		la! sold fad mi! red dod |
		red mi! fad la! sold fad |
		sold dod, r mi! r dod |
		r la! r fad r red' |
		r sold, r mi! r dod' |
	%85
		r la! r fad! r red |
		\staffTwo \stemUp sid \sssol |
		sid \sssol |
		dod \sssol |
		dod \sssol |
	%90
		\sosn fad \stsd \sssol \sosn |
		fad \stsd \sssol \sosn |
		mid \stsd \sssol \sosn |
		mid \stsd \sssol \sosn |
		fadd \stsd \llla \sosn |
	%95
		fadd \stsd \llla |
		\stsd s8. fad,16 la sid |
		s8. \staffOne \stemUp lad'16 dod mi |
		sid red fad red sid sold |
		s4. |
	%100
		mid16 sold dod sold mid dod |
		s4. |
		r8 <mid sold dod> <red sold sid> |
		<dod sold' dod>4.
	}
}


introleft = \relative do {
		dod4 dod'8 |
		red,4 dod'8 |
		mid,4 dod'8 |
		fad,4 dod'8 |
		mid,4 dod'8 |
	%5
		red,4 sid'8 |
		dod,4
	}

left =  {
	\clef bass
	\key dod \major
	\time 3/8

	\introleft dod'8 ~
	\relative do' {
		dod8 sid16 lad sold lad |
		sid sold red sold sid sold |
		\repeat unfold 3 { dod sold } |
	%10
		\repeat unfold 3 { red' sold, } |
		\repeat unfold 3 { mid' sold, } |
		\repeat unfold 3 { red' sold, } |
		dod sid lad sid dod lad |
		sid lad sold lad sid sold |
	%15
		lad si! lad sold fad mid |
		red4 red'8 |
		mid,4 red'8 |
		fad,4 red'8 |
		sold,4 red'8 |
	%20
		fad,4 red'8 |
		mid,4 dodd'8 |
		red,4 red'8 ~ |
		red dod16 sid lad sid |
		dod lad mid lad dod lad |
	%25
		\repeat unfold 3 { red lad } |
		\repeat unfold 3 { mid' lad, } |
		\repeat unfold 3 { fad' lad, } |
		\repeat unfold 3 { mid' lad, } |
		red dod sid dod red sid |
	%30
		dod sid lad sid dod lad |
		redd dodd sid dodd redd sid |
		mid redd mid fadd? mid red |
		dodd sid lad sid dodd lad |
		red8 red, red' ~ |
	%35
		red dod sid |
		dod dod, dod' ~ |
		dod sid lad |
		sid16 lad sold lad sid sold |
		dodd sid lad sid dodd lad |
	%40
		red dodd red mid red dod |
		sid lad sold lad sid sold |
		dod8 dod, dod' ~ |
		dod si! lad |
		si! si,! si' ~ |
	%45
		si lad sold |
		lad16 fad dod fad lad fad |
		\repeat unfold 3 { si fad } |
		\repeat unfold 3 { dod' fad, } |
		\repeat unfold 3 { red' fad, } |
	%50
		\repeat unfold 3 { dod' fad, } |
		si! lad sold lad si sold |
		lad sold fad sold lad fad |
		sold lad sold fad mid red |
		\introleft dod'8
	%61
		fad,8 mid red |
		sold fad' red |
		sold, fad' red |
		sold, mid' dod |
	%65
		sold mid' dod |
		sold red' sid |
		sold red' sid |
		sold mid' dod |
		sold mid' dod |
	%70
		sold mi'! dod |
		sold mi'! dod |
		sold red' sid |
		fad red' sid |
		mid, mid' dod |
	%75
		sold mid red |
		dodd mid lad |
		dodd mid sold |
		fad red lad |
		fad red dod |
	%80
		sid red sold |
		sid red fad |
		mi! dod la! |
		fad red' sid |
		mi,! dod' la!|
	%85
		fad red sid |
		\stemDown sold fad' red |
		sold, fad' red |
		sold, mid' dod |
		sold mid' dod |
	%90
		sold red' sid |
		sold red' sid |
		sold mid' dod |
		sold mid' dod |
		sold mi'! dod |
	%95
		sold mi'! dod |
		sold16 sid red s8. |
		\staffOne dod'16 mi! fadd s8. |
		\staffTwo \stemNeutral sold,,8 r r |
		fad''16 red sid sold sid red |
	%100
		sold,8 r r |
		lad16 fadd mi! dod mi fadd |
		<< { \stemDown sold,4. | dod } \\ { \stemUp r8 <dod mid sold> <red fad sold> | < mid sold >4. } >>
	}
}

\paper { between-system-padding = 2\mm between-system-space = 2\mm ragged-last-bottom = ##f after-title-space = 1\mm between-title-space = 0.2\mm indent = 0\mm print-page-number = ##t
#(if (equal? paper-width (* 8.5 in)) (define system-count 12))
#(if (equal? paper-width (* 210 mm)) (define system-count 14)) }
\score {
	 \context PianoStaff << #(set-accidental-style 'piano)
		\context Staff = "one" { \set Staff.extraNatural = ##t
		\right
		\bar "|." }

		\context Staff = "two" { \set Staff.extraNatural = ##t
		\left
		\bar "|." }
	>>

	\midi { \tempo 4 . = 96 }
	\layout { }
}
