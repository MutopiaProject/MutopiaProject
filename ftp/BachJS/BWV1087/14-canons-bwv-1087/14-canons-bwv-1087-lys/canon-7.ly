

    violinOneSept = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violine 1 "
       \set Staff.midiInstrument = "violin"
       r4 r16 g16 [ fis e ] | % 1
       d16 [ b c d ] g,4 ~ | % 2
       g16 [ fis g a ] g4 ~ | % 3
       g16 [ b' a g ] fis [ d e fis ] | % 4
       b,8 [ c ] d16 [ g fis e ] | % 5
      d16 [ b c d ] g,4 ~ | % 6
       g16 [ fis g a ] g4 ~ | % 7
       g16 [ b' a g ] fis [ d e fis ] | % 8
       b,8 [ c ] d16 [ g fis e ] | % 9
      d16 [ b c d ] g,4 ~ | % 10
       g16 [ fis g a ] g4 ~ | % 11
       g16 [ b' a g ] fis [ d e fis ] | % 12
       b,8 [ c ] d16 [ g fis e ] | % 13
      d16 [ b c d ] g,4 ~ | % 14
       g16 [ fis g a ] g4 ~ | % 15
       g16 [ b' a g ] fis [ d e fis ] | % 16
       b,2 \bar "|." \pageBreak }}

     violinTwoSept = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violine 2 "
       \set Staff.midiInstrument = "violin"
       r16 d16 [ e fis ] g [ b a g ] | % 1
       d'4 ~ d16 [ e d cis ]  | % 2
       d4 ~ d16 [ b, c d ] | % 3
       e16 [ g fis e ] b'8 [ a ]| % 4
       g16 [ d e fis ] g [ b a g ] | % 5
       d'4 ~ d16 [ e d cis ]  | % 6
       d4 ~ d16 [ b, c d ] | % 7
       e16 [ g fis e ] b'8 [ a ] | % 8
       g16 [ d e fis ] g [ b a g ] | % 9
       d'4 ~ d16 [ e d cis ]  | % 10
       d4 ~ d16 [ b, c d ] | % 11
       e16 [ g fis e ] b'8 [ a ]| % 12
       g16 [ d e fis ] g [ b a g ] | % 13
       d'4 ~ d16 [ e d cis ]  | % 14
       d4 ~ d16 [ b, c d ] | % 15
       e16 [ g fis e ] b'8 [ a ] | % 8      
       g2  \bar "|." }}
 

     celloSept = \new Voice { \relative c' {
       \set Staff.instrumentName = "Cello       "
       \set Staff.midiInstrument = "cello"
       \clef bass
        r4 g4 | % 1
	fis4 e | % 2
	d4 b | % 3
	c4 d | % 4
	g,4 g' | % 5
	fis4 e | % 6
	d4 b | % 7
	c4 d | % 8
	g,4 g'4 | % 9
	fis4 e | % 10
	d4 b | % 11
	c4 d | % 12
	g,4 g' | % 13
	fis4 e | % 14
	d4 b | % 15
	c4 d | % 16
	g,2 \bar "|." }}
	
% ALTOS


    violinOneSeptAlto = \new Voice { \relative c''{
       \set Staff.instrumentName = "Viola 1 "
       \set Staff.midiInstrument = "violin"
	   \clef alto
       r4 r16 g16 [ fis e ] | % 1
       d16 [ b c d ] g,4 ~ | % 2
       g16 [ fis g a ] g4 ~ | % 3
       g16 [ b' a g ] fis [ d e fis ] | % 4
       b,8 [ c ] d16 [ g fis e ] | % 5
      d16 [ b c d ] g,4 ~ | % 6
       g16 [ fis g a ] g4 ~ | % 7
       g16 [ b' a g ] fis [ d e fis ] | % 8
       b,8 [ c ] d16 [ g fis e ] | % 9
      d16 [ b c d ] g,4 ~ | % 10
       g16 [ fis g a ] g4 ~ | % 11
       g16 [ b' a g ] fis [ d e fis ] | % 12
       b,8 [ c ] d16 [ g fis e ] | % 13
      d16 [ b c d ] g,4 ~ | % 14
       g16 [ fis g a ] g4 ~ | % 15
       g16 [ b' a g ] fis [ d e fis ] | % 16
       b,2 \bar "|." \pageBreak }}

     violinTwoSeptAlto = \new Voice { \relative d'{
       \set Staff.instrumentName = "Viola 2 "
       \set Staff.midiInstrument = "violin"
	   \clef alto
       r16 d16 [ e fis ] g [ b a g ] | % 1
       d'4 ~ d16 [ e d cis ]  | % 2
       d4 ~ d16 [ b, c d ] | % 3
       e16 [ g fis e ] b'8 [ a ]| % 4
       g16 [ d e fis ] g [ b a g ] | % 5
       d'4 ~ d16 [ e d cis ]  | % 6
       d4 ~ d16 [ b, c d ] | % 7
       e16 [ g fis e ] b'8 [ a ] | % 8
       g16 [ d e fis ] g [ b a g ] | % 9
       d'4 ~ d16 [ e d cis ]  | % 10
       d4 ~ d16 [ b, c d ] | % 11
       e16 [ g fis e ] b'8 [ a ]| % 12
       g16 [ d e fis ] g [ b a g ] | % 13
       d'4 ~ d16 [ e d cis ]  | % 14
       d4 ~ d16 [ b, c d ] | % 15
       e16 [ g fis e ] b'8 [ a ] | % 8      
       g2  \bar "|." }}
 

     celloSeptAlto = \new Voice { \relative c'' {
       \set Staff.instrumentName = "Viola 3 "
       \set Staff.midiInstrument = "cello"
       \clef alto
    r4 g4 | % 1
	fis4 e | % 2
	d4 b | % 3
	c4 d | % 4
	g,4 g' | % 5
	fis4 e | % 6
	d4 b | % 7
	c4 d | % 8
	g,4 g'4 | % 9
	fis4 e | % 10
	d4 b | % 11
	c4 d | % 12
	g,4 g' | % 13
	fis4 e | % 14
	d4 b | % 15
	c4 d | % 16
	g,2 \bar "|." }}

