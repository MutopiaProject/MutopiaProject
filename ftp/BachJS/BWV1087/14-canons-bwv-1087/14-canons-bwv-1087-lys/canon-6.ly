

    violinSixOne = \new Voice { \relative e'{
       \set Staff.instrumentName = "Violine 1 "
       \set Staff.midiInstrument = "violin"
       r16 e16 [ d c ] b8 [ bes ] | % 1
       a8 [ d ] cis [ c ]  | % 2
       b4 r16 d16 [ e f ]  | % 3
       e16 [ c a8 ] ~ a16 [ b32 c b16 a ] | % 4
       g16 [ e'16 d c ] b8 [ bes ]  | % 5
       a8 [ d ] cis [ c ]  | % 6
       b4 r16 d16 [ e f ]  | % 7
       e16 [ c a8 ] ~ a16 [ b32 c b16 a ] | % 8
       g16 [ e'16 d c ] b8 [ bes ]  | % 9
       a8 [ d ] cis [ c ]  | % 10
       b4 r16 d16 [ e f ]  | % 11
       e16 [ c a8 ] ~ a16 [ b32 c b16 a ] | % 12
       g2 \bar "|." \pageBreak }}

     violinSixTwo = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violine 2 "
       \set Staff.midiInstrument = "violin"
       r2 | % 1
       r2 | % 2
       r16 d16 [ e fis ] g8 [ gis ] | % 3
       a8 [ e ] f [ fis ] | % 4
       g4 r16 e16 [ d cis ]  | % 5
       d16 [ fis a8 ] ~ a16 [ g32 fis g 16 a ] | % 6
       b16 [ d, e fis ] g8 [ gis ] | % 7
       a8 [ e ] f [ fis ] | % 8
       g4 r16 e16 [ d cis ]  | % 9
       d16 [ fis a8 ] ~ a16 [ g32 fis g 16 a ] | % 10
       b16 [ d, e fis ] g8 [ gis ] | % 11
       a8 [ e ] f [ fis ]  | % 12
       g2  \bar "|." }}
 

      celloSix = \new Voice { \relative c' {
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
	g,2 \bar "|." }}

  % ALTOS
  

    violinSixOneAlto = \new Voice { \relative e'{
       \set Staff.instrumentName = "Viola 1 "
       \set Staff.midiInstrument = "violin"
	   \clef alto
       r16 e16 [ d c ] b8 [ bes ] | % 1
       a8 [ d ] cis [ c ]  | % 2
       b4 r16 d16 [ e f ]  | % 3
       e16 [ c a8 ] ~ a16 [ b32 c b16 a ] | % 4
       g16 [ e'16 d c ] b8 [ bes ]  | % 5
       a8 [ d ] cis [ c ]  | % 6
       b4 r16 d16 [ e f ]  | % 7
       e16 [ c a8 ] ~ a16 [ b32 c b16 a ] | % 8
       g16 [ e'16 d c ] b8 [ bes ]  | % 9
       a8 [ d ] cis [ c ]  | % 10
       b4 r16 d16 [ e f ]  | % 11
       e16 [ c a8 ] ~ a16 [ b32 c b16 a ] | % 12
       g2 \bar "|." \pageBreak }}

     violinSixTwoAlto = \new Voice { \relative d'{
       \set Staff.instrumentName = "Viola 2 "
       \set Staff.midiInstrument = "violin"
	   \clef alto
       r2 | % 1
       r2 | % 2
       r16 d16 [ e fis ] g8 [ gis ] | % 3
       a8 [ e ] f [ fis ] | % 4
       g4 r16 e16 [ d cis ]  | % 5
       d16 [ fis a8 ] ~ a16 [ g32 fis g 16 a ] | % 6
       b16 [ d, e fis ] g8 [ gis ] | % 7
       a8 [ e ] f [ fis ] | % 8
       g4 r16 e16 [ d cis ]  | % 9
       d16 [ fis a8 ] ~ a16 [ g32 fis g 16 a ] | % 10
       b16 [ d, e fis ] g8 [ gis ] | % 11
       a8 [ e ] f [ fis ]  | % 12
       g2  \bar "|." }}
 

      celloSixAlto = \new Voice { \relative c'' {
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
	g,2 \bar "|." }}