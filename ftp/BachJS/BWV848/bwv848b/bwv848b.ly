\version "2.9.9"
\include "italiano.ly"

\header {
  title =	"Fuga III"
  subtitle = "a 3 voci"
  opus = "BWV 848"
  composer = 	 "Johann Sebastian Bach (1685–1750)"
  enteredby = 	 "Davide Castellone"

  % mutopia headers.
  mutopiatitle = "Das Wohltemperierte Clavier I, Fuga III"
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
  
 footer = "Mutopia-2007/01/12-569"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 17)

tieHigh = \once \override Tie #'extra-offset = #'(0 . 2.0)
tieLow = \once \override Tie #'extra-offset = #'(0 . -0.5)
scriptHigh = \once \override Script #'padding = #2

staffOne = \change Staff = one
staffTwo = \change Staff = two

st = { \staffTwo \voiceOne }
so = { \staffOne \voiceTwo }

soprano = \relative do'' {
		r4 r8 sold lad16 sold fad sold mid'8 dod |
		sold fad16 mid fad8 red' mid, dod' red, sid' |
		dod, dod'16 sid dod red mid fad sold fadd? mid fadd sold fad mid red |
		mid4 ~ mid16 red16 dod mid red dod sid red dod sid dod lad |
		\appoggiatura lad sid8 red fad2 mid4 ~ |
	%5
		mid4 red4 ~ red8 dod sid red ~ |
		red sold, mid'4. mid16 dod \tieHigh lad4 ~ |
		lad8 lad red4. red16 sid \tieHigh sold4 ~ |
		sold8 sold dod4 ~ dod16 sid dod lad lad'4 ~ |
		lad16 sold fadd lad sold red mid fad mid red dod red sid'8 sold |
	%10
		red dod16 sid dod8 lad' sid, sold' lad, fadd' |
		sold,16 lad sid dod sid lad sold sid \oneVoice mid red dodd mid sold fad mid sold |
		\appoggiatura { sold16[ lad] } si!8 lad16 sold fad mid red dodd red fad mid red dodd! mid lad, sold |
		fad mid red dodd red mid fad sold lad sold fad sold lad sold fad mid |
		fad4 ~ fad16 mid red fad mid red dod mid red dod red sid |
	%15
		\voiceOne dod mid fad mid dod'4 ~ dod16 sid dod lad lad'4 ~ |
		lad16 red,, mid red sid'4 ~ sid16 lad sid sold sold'4 ~ |
		sold16 dod,, red dod lad'4 ~ lad16 sold lad fadd! fadd'4 ~ |
		fadd16 redd mid dod lad2 sold4 ~ |
		sold fadd ~ fadd8 mid redd fadd! |
	%20
		\oneVoice sid16 lad sold sid lad sold fadd lad sold mid dod' lad sid sold fad' redd |
		redd mid ladd sid redd,8. mid16 mid4r8 mid8 |
		si!16 lad sold lad mid'8 dodd sold fad16 mid \voiceOne fad8 red' |
		\oneVoice la!16 sold fad sold red'8 sid fad mid16 red mid sold dod red |
		\voiceOne mid red dod red sid'8 sold red dod16 sid dod8 lad' |
	%25
		sid, sold' lad, fadd' sold,16 red mid fadd! sold lad sid sold |
		dod sid lad sid dod sid lad sold lad4 ~ lad16 sold fad lad |
		sold fad mid sold fad mid red fad mid8 sold dod4 |
		r8 mi!16 dod lad4 r8 lad16 dod mi!4 |
		red8 sold dod, fadd sold, sold'16 fadd! sold lad si! sold |
	%30
		\oneVoice mid fad sold mid dod red mid dod lad sid dod lad fad' sold lad fad |
		red mid fad red sid dod red sid sold lad sid sold mid' fad sold mid |
		dodd red mid dodd lad sid dodd! lad fad sold lad fad red' mid fad red |
		sid dod red sid sold lad sid sold mid fad sold mid dod mid sold lad |
		si! lad sold lad fad'8 dod lad sold16 fad sold dod, mid sold |
	%35
		lad sold fad sold mid'8 dod sold fad16 mid fad sid, red fad |
		sold fad mid fad red'8 sid fad mid16 red mid sold lad sid |
		dod red mid red fad mid red dod \scriptHigh sold'2\downprall ~ |
		\voiceOne sold16 sold fad sold mid sold red sold dod, sold' sid, lad sid red mid fad |
		sold fad mid sold red sold dod, sold' sid, sold' lad, sold lad dod red mid |
	%40
		fad mid red mid dod red sid red lad red sold, fadd sold sid dod red |
		\oneVoice mid fad sold lad sid,8 sold lad16 sold fad sold mid'8 dod |
		sold fad16 mid fad8 red' mid, dod' red, sid' |
		\voiceOne dod, dod'16 sid dod red mid fad sold fad mid fad sold fad mid red |
		mid4 ~ mid16 red dod mid red dod sid red dod sid dod lad |
	%45
		sid8 red fad2 mid4 ~ |
		mid4 red4 ~ red8 dod sid red ~ |
		red sold, dod si! lad2 ~ |
		lad8 lad16 fad \tieHigh red4 ~ red8 red sold4 ~ |
		sold8 sold16 mid \tieHigh dodd4 ~ dodd8 lad fad'4 ~ |
	%50
		fad16 mid fad red red'4 ~ red16 dod sid red dod sold lad si! |
		\oneVoice lad sold fad sold mid'8 dod sold fad16 mid fad8 red' |
		mid, dod' red, sid' dod,16 mid fad sold lad sid dod red |
		mi! red dod red mi! fadd sold lad dod, sid lad sold red'8 fad, |
		\voiceOne mid8 <dod sold' dod> red sid' dod2\fermata
}

alto = \relative do {
		r1
		r1
		fa4\rest r8 dod'8 mid16 red dod red sid'8 sold |
		red dod16 sid dod8 lad' \st sid, \so sold' \st lad, \so fadd' |
		\st sold, \so sold'16 fadd sold lad sid sold dod sid lad sid dod sid lad sold |
	%5
		lad4 ~ lad16 sold fad lad sold fad mid sold fad mid fad red |
		mid4 r8 sold dod4. dod16 lad |
		red,4 r8 fadd sid4. sid16 sold |
		dod,4 r8 mid lad4 ~ lad16 dod red lad |
		sid4 r8 sold ~ sold16 fadd mid fadd sold fad mid red |
	%10
		mid4 ~ mid16 red dod mid red dod sid red dod sid dod \st lad |
		sid8 \so red sold4 \st r8 si,!16 sold mid4 |
		r8 mid16 sold si!4 lad8 si! lad dodd, |
		red4 r4 r2 |
		s1
	%15
		\so fa4\rest r8 mid' \tieLow lad4 ~ lad16 dod red lad |
		sid8 la,8\rest r8 red sold4 ~ sold16 sid dod sold |
		lad8 la,8\rest r8 dod \tieLow fadd4 ~ fadd16 lad sid fadd |
		sold4 r8 sid, dod16 sid lad sid sold'8 mid |
		sid8 \st lad16 sold lad8 \so fadd'! \st sold, \so mid' \st fadd, \so redd'! |
	%20
		\st mid,4. redd8 mid redd! mid lad |
		sold fadd16 mid fadd8 lad sold16 lad sid sold mid fad sold mid |
		dodd red mid dodd lad dodd mid lad red, fad lad dodd \so red mid fad red |
		\st sid dod red sid sold4 ~ sold16 sold lad sid dod8 r |
		\so r4 sid'2 lad4 ~ |
	%25
		lad8 sold fadd lad red,16 la16\rest la8\rest \st r8 sold |
		lad16 sold fad sold \so mid'8 dod \st sold fad16 mid fad8 \so red' |
		\st mid, \so dod' \st red, \so sid' dod4 r8 sold''16 mid |
		dod4 r8 dod16 lad fadd4 r8 dod'8 |
		si!4 lad sold8 r8 r4 |
	%30
		\st r8 si,!16 sold mid8 r r lad16 fad red8 r |
		r lad'16 fad red8 r r sold16 mid dodd8 r |
		r sold'16 mid dodd8 r r fad16 red sid8 r |
		r fad'16 red sid8 r8 r2 |
		\oneVoice r8 si'!16 dod, lad' dod, sold' dod, fad dod mid red mid8 sold, |
	%35
		r8 lad'16 dod, sold' dod, fad dod mid dod red dod red8 sold, |
		r8 sold'16 sold, fad' sold, mid' sold, red' sold, dod sid dod sold mid' red |
		mid sold, sold' fad sold sold, lad' sold, sid' dod red sid sold sid \so red mid |
		fad mid red mid dod'8 sold mid red16 dod red \st sold, \so dod red |
		mid red dod red sid'8 sold red dod16 sid dod \st sold \so sid dod |
	%40
		red dod sid dod lad'8 fadd \st \oneVoice dod sid16 lad sid sold lad sid |
		dod red mid red fad mid red dod fad8 lad,16 sid dod sid lad sold |
		lad4 ~ lad16 sold fad lad sold fad mid sold fad mid fad red |
		\so fa4\rest r8 dod'16 red mid red dod red sid'8 sold |
		red dod16 sid dod8 lad' \st sid, \so sold' \st lad, \so fadd' |
	%45
		\st sold,8 \so sold'16 fad sold lad sid sold dod sid lad sid dod sid lad sold |
		lad4 ~ lad16 sold fad lad sold fad mid sold fad mid fad red |
		mid2 ~ mid8 dod fad mid |
		fad4. fad16 red \st sold,4 r8 sid |
		\so mid4. mid16 dodd! \st fad,4 r8 lad |
	%50
		\so red4 ~ red16 fad sold red mid4 \st r8 dod8 ~ |
		dod16 sid lad sid dod sid lad sold lad4 ~ lad16 sold fad lad |
		sold fad mid sold fad mid red fad mid sold lad sid dod sid lad sold |
		fadd sold lad fad red4 ~ red16 red mid fad sold lad sid sold |
		\so dod4 <fad lad>8 <fad sold> <dod mid sold>2 |
}

bass = \relative sol {
		\oneVoice R1*4
		\voiceTwo r4 \oneVoice r8 sold lad16 sold fad sold mid'8 dod |
	%5
		sold fad16 mid fad8 red' mid, dod' red, sid' |
		dod, dod'16 sid dod red mid dod lad sid dod lad fadd sold lad fadd |
		sid,8 sid'16 lad sid dod red sid sold lad sid sold mid fadd sold mid |
		lad,8 lad'16 sold lad sid dod lad fadd sold lad fadd red mid fadd! red |
		sold,8 sold'16 lad sid8 sold dod4 sid |
	%10
		\voiceTwo lad8 sold fadd4 sold red |
		sold r8 red'16 sid sold4 r8 sold16 mid |
		dodd4 r8 mid fad sold lad lad, |
		red,4 r8 red' fad16 mid red mid dod'8 lad |
		\oneVoice mid red16 dod red8 sid' dod, lad' sid, soldd' |
	%15
		lad, lad'16 soldd lad sid dod lad fadd sold lad fadd red mid fadd! red |
		sold,8 sold'16 fadd sold lad sid sold mid fadd! sold mid dod red mid dod |
		fadd,8 fadd'!16 mid fadd sold lad fadd redd mid fadd! redd sid dodd! redd! sid |
		mid, fadd sold lad sid dodd redd sid mid red dod red mid red dod sid |
		\voiceTwo dod4 ~ dod16 sid lad dod sid lad sold sid lad sold lad fadd |
	%20
		sold8 dod fadd, sid mid, lad sold dod |
		sid2 mid4 r4 |
		r1
		r4 r16 sold, lad sid dod4 ~ dod16 red mid fadd |
		sold fadd mid fadd sold fadd! mid red mid4 ~ mid16 red dod mid |
	%25
		red dod sid red dod sid lad dod sid8 red fad4 ~ |
		fad4 mid2 red4 ~ |
		red8 dod red sold, dod16 red mid fad mid red dod mid |
		\oneVoice lad sold fadd lad dod si! lad dod mi!8 red16 dod si! lad sold fadd! |
		sold si! lad sold fadd mid red dod si! dod red si sold8 sold'16 mid |
	%30
		\voiceTwo dod8 r r dod16 lad fad8 r r fad'16 red |
		sid8 r r sid16 sold mid8 r r mid'16 dodd! |
		lad8 r r lad16 fad red8 r r red'16 sid |
		sold8 r r sold16 mid dod4 r4 |
		s1
	%35
		s1*5
	%40
		s1
		s1
		s1
		mid'8. sold16 lad sid dod8 ~ dod4 sid ~ |
		sid lad ~ lad8 sold lad red, |
	%45
		sold4 r8 sold lad16 sold fad sold mid'8 dod |
		sold fad16 mid fad8 red' mid, dod' red, sid' |
		dod,16 sold dod red mid fad sold mid fad fad, fad' mid fad sold lad fad |
		red mid fad red sid dod red sid mid,8 mid'16 red mid fad sold mid |
		dodd red mid dodd lad sid dodd! lad red,8 red'16 dodd red mid fad red |
	%50
		sid dod red sid sold lad sid sold dod,8 dod'16 red mid8 dod |
		fad4 mid red8 dod sid4 |
		dod sold lad8 r r4 |
		r4 r16 dod sid lad sold4 r4 |
		\oneVoice r8 mid8 fad sold dod,2_\fermata
}

#(define letter #f)

\paper { between-system-padding = 2\mm between-system-space = 2\mm ragged-last-bottom = ##f after-title-space = 1\mm between-title-space = 0.2\mm indent = 0\mm print-page-number = ##t
#(if (equal? paper-width (* 8.5 in)) (define letter #t) (define system-count 19))
#(if (equal? paper-width (* 210 mm)) (define system-count 14))
}

\score
{
	 \new PianoStaff \with { \override VerticalAlignment #'forced-distance = 
		#(cond (letter 11.5) (else 10.5)) } 
	 << %#(set-accidental-style 'piano)
 		#(override-auto-beam-setting '(end * * * *) 1 4 'PianoStaff)
 		#(override-auto-beam-setting '(end * * * *) 1 2 'PianoStaff)
 		#(override-auto-beam-setting '(end * * * *) 3 4 'PianoStaff)
		\context Staff = "one" {
			\set Staff.extraNatural = ##t
			\time 4/4
			\key dod \major
			<< \soprano \\ \alto >>
			\bar "|."
		}

		\context Staff = "two" {
			\set Staff.extraNatural = ##t
			\key dod \major
			\clef bass
			\bass
		}
	>>
	\midi { \tempo 4 = 96 }
	\layout { }
}
