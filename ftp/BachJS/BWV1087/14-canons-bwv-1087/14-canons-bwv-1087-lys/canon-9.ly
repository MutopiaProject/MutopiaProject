
    violinOneNeuf = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violine 1 "
       \set Staff.midiInstrument = "violin"
       g16 [ b d g ] d [ b g d' ] | % 1
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 2
       d16 [ a fis d ] g [ b d g,] | % 3
       e' [ c a c ] fis, [ a d32 c b a ]  | % 4
        g16 [ b d g ] d [ b g d' ] | % 5
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 6
       d16 [ a fis d ] g [ b d g,] | % 7
       e' [ c a c ] fis, [ a d32 c b a ]  | % 8
       g16 [ b d g ] d [ b g d' ] | % 9
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 10
       d16 [ a fis d ] g [ b d g,] | % 11
       e' [ c a c ] fis, [ a d32 c b a ]  | % 12
       g16 [ b d g ] d [ b g d' ] | % 13
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 14
       d16 [ a fis d ] g [ b d g,] | % 15
       e' [ c a c ] fis, [ a d32 c b a ]  | % 16
       g4 s4  \bar "|." \pageBreak }}

     violinNeuf = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violine 2 "
       \set Staff.midiInstrument = "violin"
       r16 g16 [ b d ] g [ d  b g ] | % 1
       d'16 [ d, fis a ] cis, [ e  g cis ]   | % 2
       r16 d16 [ a fis ] d [ g b d ] | % 3
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 4
       b32 [ a g16 b d ] g [ d b g ] | % 5
      d'16 [ d, fis a ] cis, [ e  g cis ]   | % 6
       r16 d16 [ a fis ] d [ g b d ] | % 7
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 8
       b32 [ a g16 b d ] g [ d b g ] | % 9
      d'16 [ d, fis a ] cis, [ e  g cis ]   | % 10
       r16 d16 [ a fis ] d [ g b d ] | % 11
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 12
       b32 [ a g16 b d ] g [ d b g ] | % 13
       d'16 [ d, fis a ] cis, [ e  g cis ]   | % 14
       r16 d16 [ a fis ] d [ g b d ] | % 15
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 16
       b32 [ a ] g8. s4  \bar "|." }}
 

     celloNeuf = \new Voice { \relative c' {
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
	g,4 g'4 | % 13
	fis4 e | % 14
	d4 b | % 15
	c4 d | % 16
	g,4 s4 \bar "|." }}

% ALTOS
    violinOneNeufAlto = \new Voice { \relative c'{
       \set Staff.instrumentName = "Viola 1 "
       \set Staff.midiInstrument = "violin"
	   \clef alto
       g16 [ b d g ] d [ b g d' ] | % 1
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 2
       d16 [ a fis d ] g [ b d g,] | % 3
       e' [ c a c ] fis, [ a d32 c b a ]  | % 4
        g16 [ b d g ] d [ b g d' ] | % 5
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 6
       d16 [ a fis d ] g [ b d g,] | % 7
       e' [ c a c ] fis, [ a d32 c b a ]  | % 8
       g16 [ b d g ] d [ b g d' ] | % 9
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 10
       d16 [ a fis d ] g [ b d g,] | % 11
       e' [ c a c ] fis, [ a d32 c b a ]  | % 12
       g16 [ b d g ] d [ b g d' ] | % 13
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 14
       d16 [ a fis d ] g [ b d g,] | % 15
       e' [ c a c ] fis, [ a d32 c b a ]  | % 16
       g4 s4  \bar "|." \pageBreak }}

     violinNeufAlto = \new Voice { \relative c'{
       \set Staff.instrumentName = "Viola 2 "
       \set Staff.midiInstrument = "violin"
	   \clef alto
       r16 g16 [ b d ] g [ d  b g ] | % 1
       d'16 [ d, fis a ] cis, [ e  g cis ]   | % 2
       r16 d16 [ a fis ] d [ g b d ] | % 3
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 4
       b32 [ a g16 b d ] g [ d b g ] | % 5
      d'16 [ d, fis a ] cis, [ e  g cis ]   | % 6
       r16 d16 [ a fis ] d [ g b d ] | % 7
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 8
       b32 [ a g16 b d ] g [ d b g ] | % 9
      d'16 [ d, fis a ] cis, [ e  g cis ]   | % 10
       r16 d16 [ a fis ] d [ g b d ] | % 11
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 12
       b32 [ a g16 b d ] g [ d b g ] | % 13
       d'16 [ d, fis a ] cis, [ e  g cis ]   | % 14
       r16 d16 [ a fis ] d [ g b d ] | % 15
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 16
       b32 [ a ] g8. s4  \bar "|." }}
 

     celloNeufAlto = \new Voice { \relative c'' {
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
	g,4 g'4 | % 13
	fis4 e | % 14
	d4 b | % 15
	c4 d | % 16
	g,4 s4 \bar "|." }}
