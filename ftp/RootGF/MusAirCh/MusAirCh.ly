\paper{ papersize = "letter" 
	linewidth = 165 \mm
	indent = 8 \mm
%	interscoreline = 4.0 \mm
}


\include "english.ly"
\version "2.1.30"
#(set-global-staff-size 16)

\header {
  title = "There's Music in the Air"
  composer = "Geo. F. Root (1820-1895)"
  instrument = "Quartette and Piano"
  source = "Boston: Russell and Richardson:1857"
  copyright = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  lastupdated = "2/26/2004"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/02/26-427"
}
  
%% Spelling curiosities not corrected!

TenBBass = \notes \relative c' {	
	\key af\major \time 4/4 \partial 4
	s4 s1*7 r2^\markup {\bold "Tenor or 2nd Bass"} r4
	ef4 af af af af af1
	g8 g g g g4 g af2. ef4 af af af af af1
	g8 g g g g4 g af2. r4
	af4 af af af af af af2
	g4 g bf g ef ef af2 af4 af af af af af af af8 af
	g4 g bf g ef1
	s1*3 s2 s4 
	
}

TenAlto = \notes \relative c' {
	\key af\major \time 4/4 \partial 4
	s4 s1*7 r2^\markup {\bold "Tenor or Alto"} r4
	<<{ef'4 ef ef ef ef f2( ef)}\\{ef,4 ef ef ef ef f2( ef)}>>
	<<{df'8 df df df ef4 df c2. ef4 ef ef ef ef f2( ef)}\\
		{df,8 df df df ef4 df c2. ef4 ef ef ef ef f2( ef)}>>
	<<{df'8 df df df ef4 df c2. r4}\\{df,8 df df df ef4 df c2. r4}>>
	<<{df'4 f f df c c ef2}\\{df,4 f f df c c ef2}>>
	<<{df'4 df df df c c c2 df4 f f df c c ef ef8 ef}\\
		{df,4 df df df c c c2 df4 f f df c c ef ef8 ef}>>
	<<{df'4 df df df c1}\\{df,4 df df df c1}>>
		s1*3 s2 s4 
}

Bass = \notes \relative c {
	\key af\major \time 4/4 \partial 4 \clef bass
	s4 s1*7 r2^\markup {\bold "Bass"} r4
	ef4 af, af af af af1
	ef'8 ef ef ef ef4 ef af,2. ef'4 af, af af af af1
	ef'8 ef ef ef ef4 ef af,2. r4 df4 df df df af af af2
	ef'4 ef ef ef af, af af2 df4 df df df af af af af8 af
	ef'4 ef ef ef af,1
	s1*3 s2 s4 
}

SopTenB = \notes \relative c' {
	\key af\major \time 4/4 \partial 4
	s4 s1*7 r2^\markup {\bold "Soprano or 2nd Tenor"} r4
	ef | c' c c c | df2( c) | bf8 bf bf bf c4 bf | af2. ef4 |
	c'4 c c c | df2( c) | bf8 bf bf bf c4 bf |
	af2. r4 | \repeat volta 2 { f4 af df f, | ef af c2 |
	c4 bf g ef | bf' af ef2 | f4\( af\) df f, |
	ef4 af c c8 c | c4\( bf\) g ef | af1^\markup { \italic {"2nd time" \bold  pp} }}
	s1*3 s2 s4 
}

textA = \lyrics { \set stanza = "1."
	There's mu- sic in the air __ When the in -- fant morn is nigh
	And faint its blush is seen __ On the bright and laugh- ing sky.
	Many a harp's ex -- tat -- ic sound With it's thrill of joy pro -- found
	While we list en -- chant -- ed there To the mu -- sic in the air.
}

textB = \lyrics { \set stanza = "2."
	There's mu- sic in the air __ When the noon- tide's sul -- try beam
	Re -- flects a gol -- den light __ On the dis -- tant mount- ain stream.
	When be -- neath some grate -- ful shade Sor -- row's ach -- ing head is laid
	Sweet -- ly to the spi -- rit there Comes the mus -- ic in the air.
}

textC = \lyrics { \set stanza = "3."
	There's mu- sic in the air __ When the twi- light's gen -- tle sigh
	Is lost on even -- ing's breast __ As its pen -- sive beau- ties die.
	Then, O then the loved ones gone Wake the pure ce -- les -- tial song
	An -- gel voi -- ces greet us there In the mu -- sic of the air.
}

upper = \notes\relative c' {
	\key af\major \time 4/4 \partial 4
  ef4^\markup \translate #(cons -5.5 +0) {\bold \large "Moderato" } c'8 af ef c c' af ef c |
   df' af f df c' af ef c | c' bf g ef c' bf g ef |
  bf' af ef c r c ef af | c af ef c c' af ef c | df'af f df c' af ef c |
  c' bf g ef c' bf g ef | \break
   bf' af ef c r2 | r4 <af c ef> r <af c ef> |
  r4 <af df f> r <af c ef> | r <g bf df> r <g bf df> | r <af c> <af c> <af c> |
  r4 <af c ef> r <af c ef> | r <af df f> r <af c ef> | r <g bf df> r <g bf df> |
  r4 <af c> <af c>2 | f'''8 df af f f' df af f | ef' c af ef ef' c af ef |
  ef'8 df bf g df' bf g ef | df' c af ef c ef af c | f df af f f' df af f |
  ef'8 c af ef ef' c af ef | ef' df bf g df' bf g ef | c' af ef c af2 |
  f''8 df af f f' df af f | f' ef c af ef af c ef | d ef f ef df bf f g |
  bf16 af g af c af ef c r4 \bar "|."
  
}

lower = \notes\relative c {
	\key af\major \time 4/4 \partial 4
  r4  af2 af' | af, af' | ef, ef' | af, af' |
  af, af' | af, af' | ef, ef' | af, af' | <af,, af'>  <af af'> |
  <af af'> <af af'> | <ef' ef'> <ef ef'> | <af, af'>1 |
  <af af'>2 <af af'> | <af af'> <af af'> | <ef' ef'> <ef ef'> | 
  <af, af'>1| df'2 <f af df> | <af, af'> <ef' af c> |
  <ef, ef'>2 <g' bf df> | <af, af'> <af' c> | df, <f af df> |
  <af, af'> <ef' af c> | <ef, ef'> <g' bf df> | af, <af' c> |
  df2 \clef treble <f af df> \clef bass af, \clef treble <ef' af c> \clef bass <ef, ef'>
  \clef treble <ef' g bf> \clef bass af, \clef treble af'4
}

\score {
	<<
		\context Voice = melA {
			\autoBeamOff
			\TenBBass
     	 	}
		\lyricsto melA \new Lyrics \textA

		\context Voice = melB {
			\autoBeamOff
			\TenAlto
     	 }
		\lyricsto melA \new Lyrics \textB
					
		\context Voice = melC {
	  		\autoBeamOff
	  		\SopTenB
      	}
		\lyricsto melC \new Lyrics \textC

		\context Voice = melD {
	  		\autoBeamOff
	  		\Bass
      	}
					
				
      \context PianoStaff <<
	  \context Staff = upper \upper
	  \context Staff = lower <<
	      \clef bass
	      \lower
	  >>
      >>
  >>
  \paper {
      \context { \RemoveEmptyStaffContext }
  }  
  \midi { \tempo 4=120 }  
}
