\version "2.18.2"

gigue =   \relative g {
    \key c \minor 
    \time 3/8
    \set Staff.midiInstrument = "cello"
    
    \repeat volta 2 {
		\partial 8 g8 | % 0
		es8. f16 d8 | % 1
		es8. f16 d8 | % 2
		c8. [bes16 (as16  g16) ] | % 3
		as8. c16 g8 | % 4
		f8. es'16 c8 | % 5
		d8. es16 c8 | % 6
		b8. d16 g,8 | % 7
		g'8. [f16 (es16  d16) ] | % 8
		es8. g16 c,8 | % 9
		as'8. [g16 (f16 es16) ] | % 10
		f8. as16 d,8 | % 11
		bes'8. [aes16 (g16 f16) ] | % 12
		g8. es16 c'8 | % 13
		aes8. f16 d'8 | % 14
		ees4. ~ | % 15
		ees8. [d16 (c16 bes16 ] | % 16
		c8.) [bes16 (aes16 g16 ] | % 17
		aes4.) ~ | % 18
		aes8. [g16 (f16 es16 ] | % 19
		d8.) [c16 (bes16 as16 ] | % 20
		g8.) as'16 f8 | % 21
		g8. bes16 d,8 | % 22
		es8. g,16 bes8 | % 23
		es,4  % 24
	}
	\repeat volta 2 {
		es'8 | % 0
		g8. as16 f8 | % 25
		g8. bes16 a8 | % 26
		bes8. [d,16 (es16 f16) ] | % 27
		bes,8. c16 d8 | % 28
		es8. c'16 a8 | % 29
		bes8. fis16 g8 | % 30
		fis8. a16 d,8 | % 31
		d'8. [c16 (bes16 a16) ] | % 32
		bes8. d16 g,8 | % 33
		f8. g16 d8 | % 34
		es8. g16 c8 | % 35
		ees4 d8 | % 36
		c8. fis,16 g8 | % 37
		d8. a'16 fis8 | % 38
		g8. [bes,16 (c16  d16) ] | % 39
		g,8. bes'16 g8 | % 40
		e8. g16 bes8 | % 41
		des8. bes16 c8 | % 42
		aes8. [g16 (f16 e16 )] | % 43
		f8. aes16 es8 | % 44
		d8. f16 aes8 | % 45
		c8. aes16 bes8 | % 46
		g8. [f16 (es16 d16 ] | % 47
		es8.) g16 bes8 | % 48
		a8. [f16 (es16 d16 ] | % 49
		es8.) a16 c8 | % 50
		b8. [g16 (f16 es16 ] | % 51
		f8.) b16 d8 | % 52
		c8. g16 ees'8 | % 53
		d8. g,16 f'8 | % 54
		ees4.-\prallprall | % 55
		e4.-\prallprall  | % 56
		f8. d16 ees8 | % 57
		d8. b16 c8 | % 58
		b8. \trill c16 d8 | % 59
		g,8. [f16 (es16 d16 ] | % 60
		es8) c'4 ~ | % 61
		c8. [bes16 (aes16 g16 ] | % 62
		aes8.) [g16 (f16 e16 ] | % 63
		f4.) ~ | % 64
		f8. [es16 (d16 c16 ] | % 65
		b8.) [as16 (g16 f16 ] | % 66
		es8.) g16 b8 | % 67
		d8. f16 as8 | % 68
		g8. d16 es8 | % 69
		g,8. c16 b8 | % 70
		c8. es,16 g8 | % 71
		c,4  % 72
	}
}

