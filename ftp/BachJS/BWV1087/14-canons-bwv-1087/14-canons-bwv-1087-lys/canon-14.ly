
    violinOneQuatorze = \new Voice { \relative c'{
       \set Staff.instrumentName = "Violine 1 "
       \set Staff.midiInstrument = "violin"
       r1 | % 1
       r1 | % 2
       r16 d16 [e fis ] g [ b a g ] d'8 [ d, ] r16 a16 [ b cis ] | % 3
       d16 [ fis e d ] a' [ g fis d' ] r16 e32 [ fis g16 g, ] ~ g16 [ a32  b e,16 fis32 g ] | % 4
       fis16 [ g' fis e ] d [ b c d ] g, [ fis g a ] b [ d c b ] | % 5
       e16 [ f e d ] c [ a b c ] fis, [cis d e ] fis [ a g fis ] | % 6
       b16 [ d, e fis ] g [ b a g ] d'8 [ d, ] r16 a16 [ b cis ] | % 7
       d16 [ fis e d ] a' [ g fis d' ] r16 e32 [ fis g16 g, ] ~ g16 [ a32  b e,16 fis32 g ] | % 8
       fis16 [ g' fis e ] d [ b c d ] g, [ fis g a ] b [ d c b ] | % 9
       e16 [ f e d ] c [ a b c ] fis, [cis d e ] fis [ a g fis ] | % 10
       b16 [ d, e fis ] g [ b a g ] d'8 [ d, ] r16 a16 [ b cis ] | % 11
       d16 [ fis e d ] a' [ g fis d' ] r16 e32 [ fis g16 g, ] ~ g16 [ a32  b e,16 fis32 g ] | % 12
       fis16 [ g' fis e ] d [ b c d ] g, [ fis g a ] b [ d c b ] | % 13
       e16 [ f e d ] c [ a b c ] fis, [cis d e ] fis [ a g fis ] | % 14
       b16 [ d, e fis ] g [ b a g ] d'2 \bar "|." \pageBreak }}

     violinTwoQuatorze = \new Voice { \relative c'{
       \set Staff.instrumentName = "Violine 2 "
       \set Staff.midiInstrument = "violin"
       r4 d4 e fis| % 1
       g4 b a g | % 2
       d'2 d, | % 3
	   r4 a4 b cis| % 4
       d4 fis e d | % 5
       a'4 g fis d' | % 6
       r4 e8 [ fis ] g4 g, | % 7
	   r4 a,4 b cis| % 8
       d4 fis e d | % 9
       a'4 g fis d' | % 10
       r4 e8 [ fis ] g4 g, | % 11
	   r4 a,4 b cis| % 12
       d4 fis e d | % 13
       a'4 g fis d' ~ | % 14
       d1  \bar "|." }}
 

     violaQuatorze = \new Voice { \relative c'' {
       \set Staff.instrumentName = "Viola       "
       \set Staff.midiInstrument = "viola"
       \clef alto
       r1 | % 1
       r1 | % 2
       r2 r8 g8 fis8 [ e ] | % 3
       d8 [ b ] cis [ d ] g,4 g'4 | % 4
       r8 c8 b [ a ] g [ e ] f [ g ] | % 5 
       c,8 [ d ] e [ g, ] r8 fis16 [ e ]  d8 d' | % 6
      r2 r8 g8 fis8 [ e ] | % 7
       d8 [ b ] cis [ d ] g,4 g'4 | % 8
       r8 c8 b [ a ] g [ e ] f [ g ] | % 9 
       c,8 [ d ] e [ g, ] r8 fis16 [ e ]  d8 d' | % 10
      r2 r8 g8 fis8 [ e ] | % 11
       d8 [ b ] cis [ d ] g,4 g'4 | % 12
       r8 c8 b [ a ] g [ e ] f [ g ] | % 13 
       c,8 [ d ] e [ g, ] r8 fis16 [ e ]  d8 d' | % 14
       b1  \bar "|."}}

     celloQuatorze = \new Voice { \relative c' {
       \set Staff.instrumentName = "Cello       "
       \set Staff.midiInstrument = "cello"
       \clef bass
 	   r1 | % 1
	   r1 | % 2
       r2 g2 | % 3
	   fis2 e | % 4
	   d2 b | % 5
	   c2 d | % 6
	   g,2 g'2 | % 7
	   fis2 e | % 8
	   d2 b | % 9
	   c2 d | % 10
	   g,2 g' | % 11
	   fis2 e | % 12
	   d2 b | % 13
	   c2 d | % 14
	   g,1 \bar "|." }}
	   
	   
	   
% Alto
    violinOneQuatorzeAlto = \new Voice { \relative c{
       \set Staff.instrumentName = "Viola 1 "
       \set Staff.midiInstrument = "violin"
	   \clef alto
       r1 | % 1
       r1 | % 2
       r16 d16 [e fis ] g [ b a g ] d'8 [ d, ] r16 a16 [ b cis ] | % 3
       d16 [ fis e d ] a' [ g fis d' ] r16 e32 [ fis g16 g, ] ~ g16 [ a32  b e,16 fis32 g ] | % 4
       fis16 [ g' fis e ] d [ b c d ] g, [ fis g a ] b [ d c b ] | % 5
       e16 [ f e d ] c [ a b c ] fis, [cis d e ] fis [ a g fis ] | % 6
       b16 [ d, e fis ] g [ b a g ] d'8 [ d, ] r16 a16 [ b cis ] | % 7
       d16 [ fis e d ] a' [ g fis d' ] r16 e32 [ fis g16 g, ] ~ g16 [ a32  b e,16 fis32 g ] | % 8
       fis16 [ g' fis e ] d [ b c d ] g, [ fis g a ] b [ d c b ] | % 9
       e16 [ f e d ] c [ a b c ] fis, [cis d e ] fis [ a g fis ] | % 10
       b16 [ d, e fis ] g [ b a g ] d'8 [ d, ] r16 a16 [ b cis ] | % 11
       d16 [ fis e d ] a' [ g fis d' ] r16 e32 [ fis g16 g, ] ~ g16 [ a32  b e,16 fis32 g ] | % 12
       fis16 [ g' fis e ] d [ b c d ] g, [ fis g a ] b [ d c b ] | % 13
       e16 [ f e d ] c [ a b c ] fis, [cis d e ] fis [ a g fis ] | % 14
       b16 [ d, e fis ] g [ b a g ] d'2 \bar "|." \pageBreak }}

     violinTwoQuatorzeAlto = \new Voice { \relative c{
       \set Staff.instrumentName = "Viola 2 "
       \set Staff.midiInstrument = "violin"
	   \clef alto
       r4 d4 e fis| % 1
       g4 b a g | % 2
       d'2 d, | % 3
	   r4 a4 b cis| % 4
       d4 fis e d | % 5
       a'4 g fis d' | % 6
       r4 e8 [ fis ] g4 g, | % 7
	   r4 a,4 b cis| % 8
       d4 fis e d | % 9
       a'4 g fis d' | % 10
       r4 e8 [ fis ] g4 g, | % 11
	   r4 a,4 b cis| % 12
       d4 fis e d | % 13
       a'4 g fis d' ~ | % 14
       d1  \bar "|." }}
 

     violaQuatorzeAlto = \new Voice { \relative c'' {
       \set Staff.instrumentName = "Viola 3 "
       \set Staff.midiInstrument = "viola"
       \clef alto
       r1 | % 1
       r1 | % 2
       r2 r8 g8 fis8 [ e ] | % 3
       d8 [ b ] cis [ d ] g,4 g'4 | % 4
       r8 c8 b [ a ] g [ e ] f [ g ] | % 5 
       c,8 [ d ] e [ g, ] r8 fis16 [ e ]  d8 d' | % 6
      r2 r8 g8 fis8 [ e ] | % 7
       d8 [ b ] cis [ d ] g,4 g'4 | % 8
       r8 c8 b [ a ] g [ e ] f [ g ] | % 9 
       c,8 [ d ] e [ g, ] r8 fis16 [ e ]  d8 d' | % 10
      r2 r8 g8 fis8 [ e ] | % 11
       d8 [ b ] cis [ d ] g,4 g'4 | % 12
       r8 c8 b [ a ] g [ e ] f [ g ] | % 13 
       c,8 [ d ] e [ g, ] r8 fis16 [ e ]  d8 d' | % 14
       b1  \bar "|."}}

     celloQuatorzeAlto = \new Voice { \relative c' {
       \set Staff.instrumentName = "Viola 4 "
       \set Staff.midiInstrument = "cello"
       \clef alto
 	   r1 | % 1
	   r1 | % 2
       r2 g2 | % 3
	   fis2 e | % 4
	   d2 b' | % 5
	   c,2 d | % 6
	   g2 g2 | % 7
	   fis2 e | % 8
	   d2 b' | % 9
	   c,2 d | % 10
	   g2 g | % 11
	   fis2 e | % 12
	   d2 b' | % 13
	   c,2 d | % 14
	   g1 \bar "|." }}

 
 