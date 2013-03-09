\version "2.9.9"
\include "italiano.ly"

%% modifications et suggestions de corrections par G. Greco.
%% les modif. sont précédées du texte original précédé de %#

\header {
  title =	"Fuga VIII"
  subtitle = "a 3 voci"
  opus = "BWV 853"
  composer = 	 "Johann Sebastian Bach (1685–1750)"
  enteredby = 	 "Davide Castellone"

  % mutopia headers.
  mutopiatitle = "Das Wohltemperierte Clavier I, Fuga VIII"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 853"
  mutopiainstrument = "Harpsichord, Piano"
  source = "Breitkopf & Hartel, 1866"

  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Davide Castellone"
  maintainerEmail = "davide.castellone@gmail.com"
  mantainerweb = "www.liceonovello.it/Members/kastel/music"
  lastupdated =	 "2005/Aug/26"
  
 footer = "Mutopia-2006/07/02-597"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 17)

tieHigh = \once \override Tie #'Y-offset = #2.0

staffOne = \change Staff = one
staffTwo = \change Staff = two

st = { \staffTwo \voiceOne }
so = { \staffOne \voiceTwo }

soprano = \relative do'' { \voiceOne
		R1
		R
		r2 lad4 red ~ |
		red8 fad mid red dod red mid4 |
		lad, red4. dod8 sid4 |
	%5
		lad8 sid dod4 ~ dod4. si!8 |
		lad4 red ~ red8 dodd red mid |
		fad4 mid8 fad sold mid fad sold |
		lad sold fad mid fad4 mid8 red |
		dodd red4 dodd8 red dod si4 ~ |
	%10
		si8 lad16 sold lad8 si16 dod red8 mid16 fad mid8. red16 |
		dodd4 red8 dod si lad sold fad |
		mid fad sold4 ~ sold8 fad16 mid fad8 sold |
		lad4 si8 dod16 red sold,4 r8 lad |
		sid dod red mid fad sold lad si ~ |
	%15
		si dod, fad2 mid4 ~ |
		mid red8 dod sid dodd red mid |
		fad4 mid8 red dod red mid fad |
		dod4 sid lad r |
		lad mid' ~ mid8 fad mid red |
	%20
		dod red mid4 lad, red ~ |
		red8 dod sid4 lad r8 sold' ~ |
		sold fad mid4 ~ mid16 red mid fad red8. mid16 |
		mid4 lad ~ lad8 si lad sold! |
		fadd sold lad4 red, sold ~ |
	%25
		sold8 fad mid2 red4 ~ |
		red sold4. lad8 sold fad |
		mid fad sold4 dod, fad ~ |
		fad8 mi red sold dod, fad4 mid8 |
		fad4 dod ~ dod8 sid dod red |
	%30
		mid red dod4 sold' dod, ~ |
		dod8 red mid4 fad2 ~ |
		fad8 mid red dod sid4 dodd |
		red2 dod |
		si8 dod red mi lad, si dod red |
	%35
		si lad sold fad mid4 fad8 sold |
		lad4 sid8 dodd red4. dod8 |
		sid dodd red2 dodd4 |
		red4 dodd8 red mid sold fad mid |
		red[ dod] si lad16 si lad8 sid dodd red |
	%40
		mid lad, lad' sold fad sold lad si |
		mid,4 fadd sold8 fad mid red |
		dodd4 red ~ red8 dod si lad |
		si lad sold4 ~ sold8 fad16 mid fad8 sold |
	        lad4 red, ~ red8 % \once \override NoteColumn #'force-hshift = #1
			dodd red mid |
	%45
		fad mid red4 lad' red, ~ |
		red8 mid fadd4 sold sold' |
		red4. dod8 red4. mid8 |
		fad4. mid8 red4 lad' |
		red,4. red8 dodd red mid dodd |
	%50
		red mid fad sold lad lad, red mid |
		dodd4 r lad red ~ |
		red8 mi red dod si dod red4 |
		sold,8 lad16 si lad8 si dod4 fad, ~ |
		fad8 mid fad sold lad sold fad4 |
	%55
		mi'2 ~ mi8 dodd red4 ~ |
		red8 fad mid red dodd mid lad4 ~ |
		lad8 si lad sold fad sold lad4 |
		red, sold ~ sold8 fad mid4 |
		red dod si lad |
	%60
		sold fad mid r8 sid' |
		dodd red mid4 ~ mid8 red dod!16 si dod fadd |
		sold lad si4 lad16 sold lad8 red, mid fadd |
		sold4 r lad red, ~ |
		red8 si dod red mi! red dod4 |
	%65
		sold' red ~ red8 mid fadd4 |
		sold8 lad sold fad mid fad sold4 ~ |
		sold8[ fad] mid fad16 sold lad sold lad4 sold16 fad |
		mid8 fad4 mid8 fad dod fad4 ~ |
		fad8 sold fad mi! red mi fad4 |
	%70
		si, mi! ~ mi8 red dod4 |
		si mi! ~ mi8 dodd red4 ~ |
		red sold ~ sold8 sold fadd fad! ~ |
		fad fad mid mi! red4 dod |
		%# si4. si8 lad4. fad'8 |
		si4. si8 \once \override NoteColumn  #'force-hshift = #0.3 lad4. fad'8 |

	%75
		sold,2 ~ sold8 fad16 mid fad8 sold |
		lad4 r mid'2 |
		lad2. si4 |
		lad sold fad sold |
		lad2 red, |
	%80
		sold2. fad4 |
		mi!2 red2 ~ |
		red8 si sold4 ~ sold8 lad si4 ~ |
		si8 sold mid4 ~ mid8 fad sold4 ~ |
		sold8 mid dodd4 ~ dodd8 dodd red mid |
	%85
		fad fadd sold lad si sid dodd red |
		red4 dodd red2^\fermata
	}

tenor = \relative do' { \so
		red4 lad'4. si8 lad sold |
		fad sold lad4 red, sold ~ |
		sold8 fad mid4 red4. mid8 |
		fad4 sold lad4. sold8 |
		fad8[ mid] fad[ mid16 red] mid8 lad4 soldd8 |
	%5
		lad4 ~ lad8 sold fadd red sold4 ~ |
		sold8 fad mid red mid4 fad8 sold |
		lad sid dodd red mid dodd red mid |
		fad mid red dodd red dod si4 |
		lad sold fad sold8 fad |
	%10
		mid4. red16 mid fad8 sold16 lad sold8. fad32 sold |
		lad8 sold fad mid red4 dodd8 red |
		mid red dodd sid dodd4 red8 mid |
		fad4 sold8 fad mid dod fad4 ~ |
		fad mid2 red4 |
	%15
		dod8 mid fad sold lad si dod si |
		lad sold fad mid red mid fad lad |
		red dod sid2 lad4 ~ |
		lad soldd lad, mid' ~ |
		mid8 fad mid red dod red mid4 |
	%20
		\st lad, \so r8 red ~ red dod sid4 |
		\st lad \so r8 sold' ~ sold fad mid4 |
		red r8 dod lad' soldd lad4 |
		soldd lad red4. mid8 |
		red4. dod8 sid4. dod8 |
	%25
		red4 sold, dod2 |
		sid4 r sold dod ~ |
		dod8 red dod si! lad si dod4 |
		fad, si ~ si8 lad sold4 |
		fad8 mid fad sold lad sold lad sid |
	%30
		dod si!4 lad8 si lad sold si |
		lad2 ~ lad8 sid dod red |
		sold,4 lad ~ lad8 sold fad mid |
		red fad si4 ~ si8 lad sold fadd |
		sold2. fadd4 |
	%35
		sold red ~ red8 dodd red mid |
		fad mid red4 lad' red, ~ |
		red8 mid fad4 sold2 |
		fad8 sold lad sid dodd \st lad, sid dodd |
		\so red4. mid8 fad4 mid8 red |
	%40
		dodd red mid4 ~ mid8 red16 dodd red4 ~ |
		red8 \st dod si lad si \so red sold4 ~ |
		sold8 fad mid red mid4 fadd |
		sold8 fad mid red dodd4 red8 mid |
		fad mid fad sold
			\once \override Beam #'beamed-stem-shorten = #'(-0.3 -0.3 -0.3)
			lad[ \once \override NoteColumn #'force-hshift = #0.1 sold] fad mid16 red |
	%45
		dodd8 sold'4 fad16 mid fadd8 sold lad dod, |
		si dod red mi! red4 \st sold, ~ |
		sold8 fadd sold lad si lad sold4 |
		red' lad ~ lad8 si dod4 ~ |
		dod8 \so dod' si lad sold fad sold mid |
	%50
		fad sold lad sold ~ sold fad16 mid fad8 sold |
		lad4 \st lad, \so red4. mi8 |
		red dod si dod red4 \st sold,8 fad |
		mid4 dod' fad,4. mid8 |
		fad sold lad sold fad4 si8 lad |
	%55
		sold4 \so dod' fad,2 |
		si8 lad sold fad mid red dodd mid |
		\st lad, \so sold' fad mid red4 red'8 dod |
		si lad sold si lad red4 dod8 ~ |
		dod si4 lad sold fad8 ~ |
	%60
		fad mid4 red8 dodd mid lad4 ~ |
		lad8 si lad sold fad sold lad4 |
		red, sold ~ sold8 fadd mid mi! |
		red si' lad sold fadd red16 mid fadd8 sold16 lad |
		si4. lad8 sold fadd sold lad |
	%65
		red, mid fadd sold lad16 si dod4 si16 lad |
		si4 r sold2 |
		dod2. red4 |
		dod si lad si |
		dod2 fad, |
	%70
		si2. lad4 |
		sold2 fad4 si ~ |
		si8 red dod si lad si dod4 |
		sold dod ~ dod8 si lad4 ~ |
		lad8 red, sold4 ~ \once \override NoteColumn  #'force-hshift = #-0.8 sold8 sold fad4 ~ |
	%75
		fad8 fad mi red dodd4 red ~ |
		red8 dodd16 sid dodd8 mid lad4. si8 |
		lad4. sold8 fad4. sold8 |
		lad2 red,4 sold ~ |
		sold8 fad mid4 fadd8 lad, red4 ~ |
	%80
		red8 mi! red dod si dod red4 |
		\st sold, dod ~ dod8 si lad4 |
		sold4. lad8 si lad sold fad |
		mid4. fad8 sold fad mid red |
		dodd4. red8 mid4 fad8 sold |
	%85
		lad lad si \so dod red red mid fad |
		mid si' lad sold fadd2
	}

bass = \relative do { \oneVoice
		R1*5
	%5
		R1
		R
		red4 lad'4. si8 lad sold |
		fad sold lad4 red, sold ~ |
		sold8 fad mid4 red red' |
	%10
		dodd dod sid si |
		lad8 lad, red4 ~ red8 fad mid red |
		dodd red mid4 lad, red ~ |
		red8 dod si2 lad4 |
		sold8 lad si dod red mid fad sold |
	%15
		lad sold lad si dod4 dod, |
		fad, fad' ~ fad8 mid red dod |
		sid lad soldd mid lad sid dod red |
		mid red mid mid, lad soldd lad sid |
		dod sid dod red mid[ red] dod red16 mid |
	%20
		\voiceTwo fad mid fad8 soldd,4 lad sid |
		dod8 lad mid' red dodd red4 dodd8 |
		\oneVoice red sid' soldd lad fad mid fad4 |
		mid r fad si ~ |
		si8 dod si lad sold fadd sold lad |
	%25
		sid4 dod8 si! lad sold fadd red |
		sold lad sold fad mid fad mid red |
		dod si' lad sold fad sold fad mi! |
		red dod si sold lad fad dod' dod, |
		fad sold lad sold fad fad' mid red |
	%30
		dod4 fad2 mid4 |
		fad8 mid red dodd red4 lad8 sid |
		dod4 fad, sold lad |
		si8 lad sold fad mi!4 red |
		sold8 lad si dod red4 r8 red |
	%35
		sold lad si sold lad sold fad mid |
		red4 sold4. fadd16 mid fadd4 |
		sold8 fad mid red mid fad sold lad |
		\voiceTwo red,16 red' dod si lad4 ~ lad8 fad sold lad |
		\oneVoice si lad sold4 red' lad ~ |
	%40
		lad8 sid dodd4 red8 si! fad sold |
		\voiceTwo lad4 red, sold8 lad si4 |
		\oneVoice lad2 r |
		r lad,4 red, ~ |
		red8 dodd red mid fad mid red4 |
	%45
		lad' red, ~ red8 mid fadd4 |
		sold lad \voiceTwo si8 dod si lad |
		sold[ lad] si mid16_\markup{\natural} dod sold'4 si,8 dod |
		red dodd red mid fad sold mid fadd |
		sold lad sold fad \oneVoice mid red dodd si' |
	%50
		lad sold fad mid red dod si4 |
		\voiceTwo lad red4. mi!8 red dod |
		si dod red4 sold,8 lad si4 |
		dod fad, ~ fad8 mid fad sold |
		lad sold fad mi'! red2 ~ |
	%55
		red8 dod si lad si4 si'8 lad |
		sold lad si sold lad4. sold8 |
		fad sold lad4 red,8 mid fadd4 |
		\oneVoice sold8 fad mid red dodd red lad lad' |
		si red, mid fadd sold mid dodd red |
	%60
		sid dodd red red, lad'4 r |
		lad'2 red ~ |
		red4 mi! red dod |
		si dod red2 |
		sold, dod ~ |
	%65
		dod4 si lad2 |
		sold4 dod ~ dod8 red dod si |
		lad si dod4 fad, si ~ |
		si8 lad sold4 fad8 mi red16 dod red mi |
		lad,8 fad sold lad si[ dod] red mi!16 fad |
	%70
		sold8 lad16 si dod,8 red16 mi! fad,8 fad'4 fadd8 |
		sold fadd sold lad si lad sold fad! |
		mid fad mid red dodd dodd'16 red mi!8 lad, |
		si \once \override Script #'padding = #1 sid\prallmordent dod lad fadd sold4 fadd8 |
		sold fad mi! red dod dodd red lad |
	%75
		si sid dod sold lad2 ~ |
		lad8 mid' lad4 ~ lad8 si lad sold |
		fad sold lad4 red,8 mid16 fad sold4 ~ |
		sold8 fad mid dodd' red mid16 fad mid8 red |
		dodd red4 dod!8 ~ dod red16 mi! red8 dod |
	%80
		si dod si lad sold fad mi! red |
		\voiceTwo dod dod'16 si lad8 sold fadd sold4 fad!8 |
		mid2 ~ mid8 fad mid red |
		dodd2 ~ dodd8 red dodd! sid |
		lad2 ~ lad8 sold fad mid |
	%85
		red dod' si lad sold fad' mid red |
		\oneVoice lad'4 lad, red2_\fermata
	}

\paper { between-system-padding = 2\mm between-system-space = 2\mm ragged-last-bottom = ##f after-title-space = 1\mm between-title-space = 0.2\mm indent = 0\mm print-page-number = ##t
%#(if (equal? paper-width (* 8.5 in)) (define system-count 13))
#(if (equal? paper-width (* 210 mm)) (define system-count 19))
}

\score {
   {
	 \new PianoStaff \with { \override VerticalAlignment #'forced-distance = #11 }
	 << 
		\context Staff = "one" { #(set-accidental-style 'modern)
		\set Staff.extraNatural = ##t
		\time 4/4
		%# >
		\key red \minor
		<< \soprano \\ \tenor >>
		\bar "|." }

		\context Staff = "two" { #(set-accidental-style 'modern)
		\set Staff.extraNatural = ##t
		%# >
		\key red \minor
		\clef bass
		\bass
		\bar "|." }
	>>
   }
   \midi { \tempo 4 = 74 }
   \layout { }
}
