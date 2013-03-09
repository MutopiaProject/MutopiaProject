\version "2.9.9"
\include "italiano.ly"
#(set-default-paper-size "a4")

\header {
  title =	"Fuga IV"
  subtitle = "a 5 voci"
  opus = "BWV 849"
  composer = 	 "Johann Sebastian Bach (1685–1750)"
  enteredby = 	 "Davide Castellone"

  % mutopia headers.
  mutopiatitle = "Das Wohltemperierte Clavier I, Fuga IV"
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
 footer = "Mutopia-2006/07/02-596"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 17)

tieHigh = \once\override Tie #'Y-offset = #1.5
tieLow = \once\override Tie #'Y-offset = #-1.5

staffOne = \change Staff = one
staffTwo = \change Staff = two

sovo = { \staffOne \voiceOne }
sovt = { \staffOne \voiceTwo }
sovf = { \staffOne \voiceFour }
stvo = { \staffTwo \voiceOne }
stvt = { \staffTwo \voiceTwo }
stvtt = { \staffTwo \voiceThree }

soprano = \relative do'' \context Staff = "one" \new Voice { \voiceOne
		s1*10
	%10
		s1
		s
		s
		fa2\rest dod |
		sid mi |
	%15
		red1
		\shiftOn dod2. \shiftOff red4 |
		mi red dod2 |
		si2 dod |
		red r |
	%20
		r4 mi red dod |
		si red sold2 ~ |
		sold4 fad sold la |
		si1 ~ |
		si4 la sold fad |
	%25
		sold8 fad mi red dod2 ~ |
		dod si ~ |
		si4 dod si la |
		sold2 lad4 si |
		dod2 si ~ |
	%30
		si lad |
		\tieHigh si1 ~ |
		si4 dod red mi ~ |
		mi2 red |
		mi4 red mi fad |
	%35
		sold8 fad sold la sold fad mi sold |
		fad mi fad sold fad mi red fad |
		mi red mi fad mi red dod mi |
		red dod red mi red dod si red |
		dod si dod red dod si lad! dod |
	%40
		si2 ~ si8 dod red si |
		dod2. mi4 |
		red2. fad4 |
		mi1 ~
		mi4 red2 dod4 ~ |
	%45
		dod4 sid8 lad sid4 red |
		sold8 fad sold la sold fad mi sold |
		fad mi fad sold fad mi red fad |
		mid2 la |
		sold1 ~
	%50
		sold4 fad8 mi re!2 |
		r4 dod fad fad |
		fad mi8 re! mi2 ~ |
		mi4 re!8 dod re2 ~ |
		re dod |
	%55
		fad mi ~ |
		mi4. fad8 mi re! dod mi |
		re! dod re mi re dod si re |
		dod1
		sid2 mi |
	%60
		red1 ~
		red4 sold, dod dod |
		dod si8 la si2 ~ |
		si la |
		sold re'\rest |
	%65
		red1 |
		dodd2 fad |
		mid mi! |
		red8 dod red mi red dod si red |
		dod si dod red dod mi red dod |
	%70
		sid2 si! |
		lad la! |
		sold re'2\rest |
		re1\rest
		re\rest
	%75
		dod1
		sid2 mi |
		red1 ~ |
		red2 dod ~ |
		dod sid |
	%80
		do4\rest dod8 red mi4 fad |
		sold8 fad sold la sold fad mi sold |
		fad mi fad sold fad mi red fad |
		mi red mi fad mi re! dod mi |
		re! dod re mi re dod si re |
	%85
		dod si dod re! dod si la dod |
		si la si dod si la sold si |
		la2 re2\rest |
		dod1
		sid2 mi |
	%90
		red1 ~
		red4 dod sold' sold |
		sold fad8 mi fad2 |
		mi1
		red2 sol! |
	%95
		fad \glissando fad, |
		mid la |
		sold4 s4 s2 |
		sol'4\rest sid, fad' fad |
		fad mi8 red mi4 red8 dod |
	%100
		red4 sid dod2 ~ |
		dod1
		sid2 si! |
		lad la! |
		sold1
	%105
		lad2 sid |
		dod1
		sid2 \tieHigh mi ~ |
		mi red4 dod |
		sid2 \tieHigh dod ~ |
	%110
		dod sid |
		dod1 ~
		dod ~
		dod ~
		dod\fermata
	}

alto = \relative do'' \context Staff = "one" \new Voice { \voiceOne
		s1*10
	%10
		s1
		r2 sold |
		mid la | \voiceThree
		sold fad ~ |
		fad \tieDown dod' ~ | \tieUp
	%15
		dod si ~ |
		\shiftOff si \shiftOn la |
		sold \tieDown la ~ | \tieUp
		la4 sold fad mi |
		lad2 sold ~ | \voiceTwo
	%20
		sold fadd |
		sold si, |
		dod2. dod4 |
		red dod red mid |
		fad2 la |
	%25
		sold r8 si la sold |
		fad4 la sold fad |
		mid2 fad ~ |
		fad4 mi!2. ~ |
		mi2 red | \voiceThree
	%30
		\tieDown mi1 ~ |
		mi4 red mi fad8 sold |
		fad2 si ~ | \tieUp
		si4 dod si la |
		sold2 sol\rest |
	%35
		sol1\rest
		sol\rest
		s
		s
		s
	%40
		s
		s
		s \voiceFour
		si2\rest dod | \voiceTwo
		sid mi |
	%45
		  red1 ~ |
		red2 dod ~ |
		dod sid4 si! ~ |
		si8 si dod re! dod si la dod |
		si la si dod si la sold si |
	%50
		la2 ~ la8 dod si la |
		sold2 r2 |
		r1
		r2 la |
		sold dod |
	%55
		si1 ~
		si4 mi, la la |
		la sold8 fad sold2 ~ |
		sold4 dod,8 red! mi4 fad |
		sold8 fad sold la sold fad mi sold |
	%60
		fad mi fad sold fad mi red fad |
		mi red mi fad mi red dod mi |
		red dod red mi re! dod si re |
		dod si dod re! dod mi red dod |
		sid2 dod |
	%65
		red4 red sold8 lad si4 ~ |
		si lad red red |
		red dod8 sid dod2 ~ |
		dod si |
		lad la! ~ |
	%70
		la4 red, sold sold ~ |
		sold fad8 mid fad2 ~ | \voiceThree
		fad2 mi |
		red dod |
		red1
	%75
		s1 \voiceFour
		fa,4\rest sold' dod dod |
		dod sid8 lad sid dod red sid | \voiceTwo
		sold fad sold la sold fad mi sold |
		fad mi fad sold fad mi red fad |
	%80
		mi sold la si dod red sid dod |
		red4 fa,4\rest r2 |
		r1
		r
		r4 fad si \voiceFour si |
	%85
		si la8 sold la2 |
		sold1 ~
		sold8 sold fad mid fad2 |
		sold2 ~ sold8 sold fad mi |
		red la' sold fad mi sold dod si! |
	%90
		la sold la fad sold2 ~ |
		sold4 dod8 sid dod2 ~ |
		dod4 lad red red |
		red dod8 si dod2 |
		si si |
	%95
		lad re! |
		\slurDashed \slurUp dod1(
		\voiceThree s4 sold) dod dod | \voiceFour
		dod sid8 lad sid dod red4 ~ | \voiceThree
		red dod8 sid dod2 |
	%100
		fad,2 sold ~ |
		sold fad ~ |
		fad4 r4 s2 |
		fa'4\rest dod, fad fad |
		fad mi8 red mi2 ~ |
	%105
		mi4 fad8 sold la4 \tieDown sold ~ | \tieUp
		sold mi la la |
		la sold8 fad sold4 lad8 sid |
		dod2 lad |
		sold sold ~ |
	%110
		 sold1 ~
		sold2 fad |
		mid la |
		sold1~
		\shiftOff sold
	} 

tenor = \relative do' \context Staff = "one" \new Voice { \oneVoice
		r1
		r
		r
		r
		r
	%5
		r
		r2 dod | 
		sid mi
		red1
		dod2 fad ~ |
	%10
		fad4 mi red dod | \voiceTwo
		dod2 si |
		dod fad ~ |
		fad4 mi red dod |
		red2 sold |
	%15
		r4 la sold fad |
		mid dod fad2 |
		mi1 ~
		mi2 sold |
		red r |
	%20
		s1
		s
		s
		s \stvo
		r2 dod |
	%25
		sid mi |
		red1
		dod ~
		dod
		fad,4 sold lad si | \sovt
	%30
		dod1
		r2 mi |
		red sold |
		fad1
		mi2 r |
	%35
		r1
		r1
		r2 sold |
		fadd si
		\tieLow lad1 ~ |
	%40
		lad4 red, sold2 ~ |
		sold4 fad8 mi fad2 ~ |
		fad4 mi8 fad sold2 ~ |
		\tieLow sold1 ~
		sold1 |
	%45
		r1
		r
		r \stvo
		dod,4\rest dod fad fad |
		fad mid8 red mid2 |
	%50
		fad4 fad,8 sold la4 si |
		dod8 si dod re! dod si la dod |
		si la si dod si la sold si |
		la sold la si la si dod re! |
		mi re! mi fad mi re dod mi |
	%55
		re! dod re mi re dod si re |
		dod si dod re! dod si la dod |
		si1
		la8 sold fad mi red dod si dod |
		red2 mi'\rest |
	%60
		mi1\rest
		s
		s
		si4\rest dod, fad fad |
		fad4 mi8 red mi2 |
	%65
		fadd sold
		r1
		r1
		r4 red sold sold |
		sold fad8 mi fad2 ~ |
	%70
		fad8 la sold fad mid red mid dod |
		fad mid fad sold la sold la si |
		dod sid dod red \sovt mi red mi fad |
		sold fad sold la sold fad mi sold |
		fad mi fad sold fad mi red fad |
	%75
		mi red mi fad mi red dod mi |
		red2 r2
		r1 \stvo
		r1
		r1
	%80
		s
		dod4\rest sold dod dod |
		dod sid8 lad sid2 |
		dod1
		si2. \sovt fad'4 |
	%85
		mid2 fad | \stvo
		si, dod ~ |
		dod ~ dod8 dod si la |
		sold1
		r1
	%90
		r
		r
		r
		r
		mi'4\rest si mi mi |
	%95
		mi re!8 dod si4 fa'4\rest | \sovt
		r4 dod fad fad |
		fad mi8 red mi2 |
		\tieLow fad2. ~ fad8 sold |
		la4 sold8 fad sold4 fad8 mi |
	%100
		red2 mi ~ |
		mi red4 dod |
		red mid8 fad sold4 sold |
		sold fad8 mi red4 dod |
		sid2 dod ~ |
	%105
		dod red |
		dod4 dod fad fad |
		fad mi8 red mi4 fad8 sold |
		lad2 red, ~ |
		red mi |
	%110
		red2. mi8 fad |
		mid4 dod2. ~ |
		dod4 dod fad fad |
		fad2 mid4 red |
		mid1
	}

bariton = \relative do \context Staff = "two" \new Voice { \voiceOne
		fa1\rest
		fa\rest
		fa\rest
		sold
		fadd2 si
	%5
		lad1
		sold2 la! ~ |
		la4 sold8 fad sold4 dod |
		fad, sold8 la si2 ~ |
		si4 la sold fad |
	%10
		sold2 fad4 mi |
		red2. re!4 |
		dod1 ~ 
		dod |
		fa1\rest
	%15
		fa\rest
		fa\rest
		fa\rest
		sold2\rest sold |
		fadd si |
	%20
		lad1 |
		sold4 la sold fad |
		mid2 la |
		sold1 \voiceFour
		fad1 ~
	%25
		fad4 sold8 fad mi4 fad8 sold |
		la4 fad sold2 | \voiceThree \shiftOff
		dod,1 ~
		dod ~ | \voiceThree
		dod2 fad |
	%30
		mi4 red mi fad | \voiceOne
		sold fad sold la |
		si1 ~
		si ~
		si2 dod |
	%35
		sid mi |
		red1 |
		dod ~
		dod4 si lad sold ~ |
		sold fadd8 mid fadd2 |
	%40
		sold8 lad sold fadd sold lad si sold |
		la! si la sold lad si dod lad |
		si dod si lad sid dod red sid |
		dod1
		r
	%45
		r
		r
		r \voiceFour
		re,\rest
		re\rest
	%50
		re2\rest fad |
		mid la
		sold1
		fad
		fa\rest
	%55
		s
		s
		s
		s
		la4\rest sold dod dod |
	%60
		dod sid8 lad sid2 |
		dod la
		fad sold
		mid fad |
		sold1 \voiceThree
	%65
		red
		mid4 fa\rest fa2\rest
		re1\rest
		si\rest
		si\rest
	%70
		si\rest
		si\rest
		si\rest \voiceOne
		r4 sold dod dod |
		dod sid8 lad sid2 |
	%75
		dod2 dod\rest |
		dod1\rest
		dod\rest
		r
		s
	%80
		dod1 \voiceThree
		sid2 mi | \shiftOff
		red1 \voiceFour
		dod4 mi la la |
		la sold8 fad sold2 ~ | \voiceOne
	%85
		sold fad | \voiceThree \shiftOn
		sold1 \voiceThree
		la2 \tieDown fad ~ | \voiceThree
		fad8 fad mi red mi4 dod |
		sold'1 \voiceThree
	%90
		fad2 red |
		mi8 red mi fad mi red dod mi |
		red dod red mi red dod sid red |
		dod4 mi la la | \voiceFour
		la sol8 fad mi2 |
	%95
		mi4\rest fad si si |
		si la8 sold \voiceOne la sold fad mi |
		red2 si'4\rest sold |
		red' red red dod8 sid |
		dod1
	%100
		sid2 mi |
		r4 dod, fad fad |
		fad mid8 red dod2 ~ |
		dod red ~ |
		red4 red sold sold |
	%105
		sold fad8 mi fad4 fad |
		fad4 mi8 red mi4 red8 dod |
		red4 sold, dod dod |
		dod si8 lad red2 ~ |
		red8 mi fad4 ~ fad8 mi red dod |
	%110
		sold'1
		la2. sold8 la |
		si4 la sold fad |
		dod' si8 la sold4 fad |
		sold1
	}

bass = \relative do \context Staff = "two" \new Voice { \voiceTwo
		dod1 |
		sid 2 mi |
		red1 |
		dod4 red mi2 ~ |
		mi4 red8 dod red4 sold |
	%5
		dod, red8 mi fad2 ~ |
		fad4 mi red dod |
		red2 dod ~ |
		dod4 si la sold |
		la2 lad2 |
	%10
		sid dod |
		sold4 la si2 ~ |
		si4 la sold fad |
		dod'2 la ~ |
		la4 sold fad mi |
	%15
		fad2 sold |
		la4 sold la si |
		dod si dod red |
		mi2 dod ~ |
		dod4 si lad sold |
	%20
		dod2 red |
		sold, r2 |
		r1
		r1
		r1
	%25
		re1\rest
		mi\rest
		mi\rest
		sold2\rest si2 |
		lad2 red |
	%30
		dod1 |
		si1 ~ |
		si4 sold' fad mi |
		si'2 si, |
		mi la |
	%35
		sold dod ~ |
		dod sid |
		dod r2 |
		r1
		r1
	%40
		r1
		r1
		r1
		r4 dod,8 red mi4 fad |
		sold8 fad sold la sold fad mi sold |
	%45
		fad mi fad sold fad mi red fad |
		mi red mi fad mi la sold la |
		red, dod red mi red sold fad sold |
		dod,2 r2
		r1
	%50
		r1
		r1
		r1
		r1
		r4 mi la la |
	%55
		la sold8 fad sold2 |
		la fad |
		si, mi |
		la,1 |
		sold2 r2 |
	%60
		r1
		r1
		r1
		r1
		r4 sold dod dod |
	%65
		dod si8 lad si lad sold si |
		lad sold lad si lad sold fad lad |
		sold fad sold lad sold si lad sold |
		fadd2 sold |
		lad r2 |
	%70
		sold r2 |
		r1
		dod,1
		sid2 mi |
		red1 |
	%75
		dod4 dod8 red mi4 fad |
		sold8 fad sold la sold fad mi sold |
		fad mi fad sold fad mi red fad |
		mi4 mi' la la |
		la sold8 fad sold4 sold, |
	%80
		dod si la2 |
		sold4 r4 r2 |
		r1
		r1
		r1
	%85
		r4 dod fad fad |
		fad mid8 red mid2 |
		fad r2 |
		r1 |
		r4 sold, dod dod |
	%90
		dod sid8 lad sid dod red sid |
		mi,2 r4 la4 |
		red,2 r4 sold |
		dod, r4 r2 |
		r1
	%95
		r1
		r2 dod'2 |
		sid mi |
		red1
		dod4 mi la la |
	%100
		la sold8 fad mi red dod si |
		lad2 la! ~ |
		la4 sold8 fad mid2 |
		fad1
		sold1 ~
	%105
		sold ~
		sold ~ 
		sold
		fadd
		sold ~
	%110
		sold
		dod ~
		dod ~
		dod ~
		dod\fermata
	}

\paper { between-system-padding = 2\mm between-system-space = 2\mm ragged-last-bottom = ##f after-title-space = 1\mm between-title-space = 0.2\mm indent = 0\mm print-page-number = ##t
#(if (equal? paper-width (* 8.5 in)) (define system-count 18))
#(if (equal? paper-width (* 210 mm)) (define system-count 19))
}

\score {
	 \context PianoStaff \with { \override VerticalAlignment #'forced-distance = #10.5 }
	 << %#(set-accidental-style 'piano)
	 	
		\context Staff = "one" { \set Staff.extraNatural = ##t
		\time 2/2
		\key dod \minor
		s1*115 \bar "|."
		}

		\context Staff = "two" { \set Staff.extraNatural = ##t
		\key dod \minor
		\clef bass
		s1*115
		}
		
	\bass \bariton \tenor \alto \soprano >>

	\midi { \tempo 4 = 112 }
	\layout { }
}
