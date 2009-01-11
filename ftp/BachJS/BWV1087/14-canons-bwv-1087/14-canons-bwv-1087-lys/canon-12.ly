    violinOneDouze = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violine 1 "
       \set Staff.midiInstrument = "violin"
       r1 | % 1
       r1 | % 2
       r1 | % 3
       r1 | % 4
       r4 r16 d16 [ e fis ] g [ b a g ] d' [ g b8 ] ~ | % 5
       b8. [ a16 ] g [ fis e d ] cis8 [ g' ] r16 e16 [ fis g ]  | % 6
       fis8 [ a, ] r16 d,16 [ e fis ] g8 [ g' ] r16 b,16 [ a g ] | % 7
       e'8 [ e, ] r16 fis16 [ g a ] a [ c, a'8 ] r16 c16 [ a e ] | % 8
       d8 [ c ] b16 [ d e fis ] g [ b a g ] d' [ g b8 ] ~ | % 9
       b8. [ a16 ] g [ fis e d ] cis8 [ g' ] r16 e16 [ fis g ]  | % 10
       fis8 [ a, ] r16 d,16 [ e fis ] g8 [ g' ] r16 b,16 [ a g ] | % 11
       e'8 [ e, ] r16 fis16 [ g a ] a [ c, a'8 ] r16 c16 [ a e ] | % 12
       d2 s2 \bar "|." \pageBreak }}

     violinTwoDouze = \new Voice { \relative g''{
       \set Staff.instrumentName = "Violine 2 "
       \set Staff.midiInstrument = "violin"
       r1 | % 1
       r1 | % 2
       r1 | % 3
       r1 | % 4
       r16 g16 [ fis e ] d [ b c d ] g, [ d b8 ] ~ b8. [ cis16 ] | % 5
       d16 [ e fis g ] a8 [ d, ] r16 fis16 [ e d ] e8 [ cis' ] | % 6
       r16 g'16 [ fis e ] d8 [ d, ] r16 b'16 [ c d ] f,8 [ f' ] | % 7
       r16 e16 [ d c ] c [ a' c,8 ]r16 a16 [ c fis ] g8 [ a ] | % 8
       b16 [ g fis e ] d [ b c d ] g, [ d b8 ] ~ b8. [ cis16 ] | % 9
       d16 [ e fis g ] a8 [ d, ] r16 fis16 [ e d ] e8 [ cis' ] | % 10
       r16 g'16 [ fis e ] d8 [ d, ] r16 b'16 [ c d ] f,8 [ f' ] | % 11
       r16 e16 [ d c ] c [ a' c,8 ]r16 a16 [ c fis ] g8 [ a ] | % 12
       b2 s2  \bar "|." }}
 
    violinThreeDouze = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violine 3 "
       \set Staff.midiInstrument = "violin"
       r1 | % 1
       r8 d8 e8 [ fis ] g [ b ] a [ g ] | % 2
       d'8 [ d, ] a'4 g4 r4 | % 3
       r8 b8 a8 [ g ] fis [ d ] e [ fis ] | % 4
       g4. a8 b4 r4 | % 5
       r8 d,8 e8 [ fis ] g [ b ] a [ g ] | % 6
       d'8 [ d, ] a'4 g4 r4 | % 7
       r8 b8 a8 [ g ] fis [ d ] e [ fis ] | % 8
       g4. a8 b4 r4 | % 9
       r8 d,8 e8 [ fis ] g [ b ] a [ g ] | % 10
       d'8 [ d, ] a'4 g4 r4 | % 11
       r8 b8 a8 [ g ] fis [ d ] e [ fis ] | % 12
       g2 s2 \bar "|." }}

     violaDouze = \new Voice { \relative c''' {
       \set Staff.instrumentName = "Viola       "
       \set Staff.midiInstrument = "viola"
       \clef alto
       s2 r8 g,8 fis8 [ e ] | % 1
	   d8 [ b ] cis [ d ] g, [ g' ] cis,4 | % 2
	   d4 r4 r8 b8 c8 [ d ] | % 3
	   e8 [ g ] fis [ e ] d4. c8 | % 4
	   b4 r4 r8 g'8 fis8 [ e ] | % 5
	   d8 [ b ] cis [ d ] g, [ g' ] c,4 | % 6
	   d4 r4 r8 b8 c8 [ d ] | % 7
	   e8 [ g ] fis [ e ] d4. c8 | % 8
	   b4 r4 r8 g'8 fis8 [ e ] | % 9
	   d8 [ b ] cis [ d ] g, [ g' ] c,4 | % 10
	   d4 r4 r8 b8 c8 [ d ] | % 11
	   e8 [ g ] fis [ e ] d4. c8 | % 12
	 b2 s2 \bar "|." }}

     celloDouze = \new Voice { \relative c' {
       \set Staff.instrumentName = "Cello       "
       \set Staff.midiInstrument = "cello"
       \clef bass
       s2 g2 | % 1
	   fis2 e | % 2
	   d2 b | % 3
	   c2 d | % 4
	   g,2 g' | % 5
	   fis2 e | % 6
	   d2 b | % 7
	   c2 d | % 8
	   g,2 g' | % 9
	   fis2 e | % 10
	   d2 b | % 11
	   c2 d | % 12
	   g,2 s2 \bar "|." }}

% Alto
    violinOneDouzeAlto = \new Voice { \relative d{
       \set Staff.instrumentName = "Viola 1 "
       \set Staff.midiInstrument = "violin"
	   \clef alto
       r1 | % 1
       r1 | % 2
       r1 | % 3
       r1 | % 4
       r4 r16 d16 [ e fis ] g [ b a g ] d' [ g b8 ] ~ | % 5
       b8. [ a16 ] g [ fis e d ] cis8 [ g' ] r16 e16 [ fis g ]  | % 6
       fis8 [ a, ] r16 d,16 [ e fis ] g8 [ g' ] r16 b,16 [ a g ] | % 7
       e'8 [ e, ] r16 fis16 [ g a ] a [ c, a'8 ] r16 c16 [ a e ] | % 8
       d8 [ c ] b16 [ d e fis ] g [ b a g ] d' [ g b8 ] ~ | % 9
       b8. [ a16 ] g [ fis e d ] cis8 [ g' ] r16 e16 [ fis g ]  | % 10
       fis8 [ a, ] r16 d,16 [ e fis ] g8 [ g' ] r16 b,16 [ a g ] | % 11
       e'8 [ e, ] r16 fis16 [ g a ] a [ c, a'8 ] r16 c16 [ a e ] | % 12
       d2 s2 \bar "|." \pageBreak }}

     violinTwoDouzeAlto = \new Voice { \relative g'{
       \set Staff.instrumentName = "Viola 2 "
       \set Staff.midiInstrument = "violin"
	   \clef alto
       r1 | % 1
       r1 | % 2
       r1 | % 3
       r1 | % 4
       r16 g16 [ fis e ] d [ b c d ] g, [ d b8 ] ~ b8. [ cis16 ] | % 5
       d16 [ e fis g ] a8 [ d, ] r16 fis16 [ e d ] e8 [ cis' ] | % 6
       r16 g'16 [ fis e ] d8 [ d, ] r16 b'16 [ c d ] f,8 [ f' ] | % 7
       r16 e16 [ d c ] c [ a' c,8 ]r16 a16 [ c fis ] g8 [ a ] | % 8
       b16 [ g fis e ] d [ b c d ] g, [ d b8 ] ~ b8. [ cis16 ] | % 9
       d16 [ e fis g ] a8 [ d, ] r16 fis16 [ e d ] e8 [ cis' ] | % 10
       r16 g'16 [ fis e ] d8 [ d, ] r16 b'16 [ c d ] f,8 [ f' ] | % 11
       r16 e16 [ d c ] c [ a' c,8 ]r16 a16 [ c fis ] g8 [ a ] | % 12
       b2 s2  \bar "|." }}
 
    violinThreeDouzeAlto = \new Voice { \relative d'{
       \set Staff.instrumentName = "Viola 3 "
       \set Staff.midiInstrument = "violin"
	   \clef alto
       r1 | % 1
       r8 d8 e8 [ fis ] g [ b ] a [ g ] | % 2
       d'8 [ d, ] a'4 g4 r4 | % 3
       r8 b8 a8 [ g ] fis [ d ] e [ fis ] | % 4
       g4. a8 b4 r4 | % 5
       r8 d,8 e8 [ fis ] g [ b ] a [ g ] | % 6
       d'8 [ d, ] a'4 g4 r4 | % 7
       r8 b8 a8 [ g ] fis [ d ] e [ fis ] | % 8
       g4. a8 b4 r4 | % 9
       r8 d,8 e8 [ fis ] g [ b ] a [ g ] | % 10
       d'8 [ d, ] a'4 g4 r4 | % 11
       r8 b8 a8 [ g ] fis [ d ] e [ fis ] | % 12
       g2 s2 \bar "|." }}

     violaDouzeAlto = \new Voice { \relative c''' {
       \set Staff.instrumentName = "Viola 4 "
       \set Staff.midiInstrument = "viola"
       \clef alto
       s2 r8 g,8 fis8 [ e ] | % 1
	   d8 [ b ] cis [ d ] g, [ g' ] cis,4 | % 2
	   d4 r4 r8 b8 c8 [ d ] | % 3
	   e8 [ g ] fis [ e ] d4. c8 | % 4
	   b4 r4 r8 g'8 fis8 [ e ] | % 5
	   d8 [ b ] cis [ d ] g, [ g' ] c,4 | % 6
	   d4 r4 r8 b8 c8 [ d ] | % 7
	   e8 [ g ] fis [ e ] d4. c8 | % 8
	   b4 r4 r8 g'8 fis8 [ e ] | % 9
	   d8 [ b ] cis [ d ] g, [ g' ] c,4 | % 10
	   d4 r4 r8 b8 c8 [ d ] | % 11
	   e8 [ g ] fis [ e ] d4. c8 | % 12
	 b2 s2 \bar "|." }}

     celloDouzeAlto = \new Voice { \relative c' {
       \set Staff.instrumentName = "Viola 5 "
       \set Staff.midiInstrument = "cello"
       \clef alto
       s2 g2 | % 1
	   fis2 e | % 2
	   d2 b' | % 3
	   c,2 d | % 4
	   g2 g | % 5
	   fis2 e | % 6
	   d2 b' | % 7
	   c,2 d | % 8
	   g2 g | % 9
	   fis2 e | % 10
	   d2 b' | % 11
	   c,2 d | % 12
	   g2 s2 \bar "|." }}

