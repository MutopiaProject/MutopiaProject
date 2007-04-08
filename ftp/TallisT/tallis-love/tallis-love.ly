\include "english.ly"
\version "2.1.10"
\include "paper20.ly"

\header {
  title = "If Ye Love Me"
  composer = "Thomas Tallis (1510-1585)"
  instrument = "Voice"
  arranger = "Adapted by S. O. S. (2004)"
  poet = "John 14: 15-17"
  copyright = "Public Domain"

  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  	lastupdated = "1/24/2004"
  	
  	tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  	footer = "Mutopia-2004/01/24-412"
}

%%% Modified to fit the range of, shall we say, less flexible voices.
%%% My apologies to Tallis purists!

staffSetup = \notes { 
	\voiceTwo s1*12 \partial 2 s2
	\repeat volta 2 {\partial 2 s2
	s1*12 }
	\alternative {{ \partial 2 s2}{s1}} 
}	

sopMusic = \notes  \relative c' { \key f\major
	f2. f4 | g2 a( |\mark "A"  a4) a g f | bf2 a \mark \default | r4 a a a   | 
	c2 bf4 a( ~ | a8[ bf] g4) a2 \mark \default | R1 | r4 g f f | bf2. a4( | \mark \default
	a) f a g( | g) f2 e4    f2 
	r2 r1 
	r1 \mark \default
	r4 f c'2( 
	c4) bf a g f a g2 g r \mark \default
	r1 
	r4 c2 f,4 c' bf a2 g4 f e d \mark \default c f2 c'4
	d bf( c2) c2  c1
	}
sopWords = \lyrics {  
	If ye love me, keep my com- mand- ments, 
	and I will pray the Fa -- ther, and He shall 
	give you__ a- no- ther__ com- fort- er, 
	that He -- may bide with you for ev- er: 
	Ev'n the Sp'rit of truth, ev'n the Sp'rit 
	of truth, ev'n the Sp'rit of__ truth, truth.
	
	}

altoMusic = \notes  \relative c' {  
	c2. d4 | e2 f( | f4) f e d | f2 f( |
	f) r2 | R1 | r4 d d d | f2 e4 d( ~ | 
	d c) d d | bf bf f'2 | f4 c f e | d4( bf4 c4.) c8  c2 
	r2 r f
	bf2. a4 g f f e f2 f4 c  d d d2 e e 
	e4 a2 g4( ~ g8 f) f4 r4 f( f) bf, f' f e c'2 f,4 c' bf a g ~ 
	g8 f f2 e4 f2 f1
	}
altoWords =\lyrics { 
	If ye love me, keep my com- mand- ments, 
	and I will pray the Fa -- ther, and He shall 
	give you__ a- no- ther__ com- fort- er, 
	that He -- may bide with you for ev- er,
	with you for ev- er: 
	Ev'n the Sp'rit of truth, ev'n the Sp'rit 
	of truth, ev'n the Sp'rit of __ truth,
	ev'n the Sp'rit of __ truth, truth.
	}

tenorMusic = \notes \relative c { \key f\major
	a'2. f4 | c'2 c( | c4) c c a | d2 c( | c) r4 a |
	a a d4. c8 | bf2 a( | a) r2 | r2 r4 bf | g g d2 |
	c'4 a c2( | bf8 a) f4 g4. g8  f2
		r2 f bf(
	bf4) a g f e f c'2 f,4 f f e d d g2 c,2 r4 c'(
	c4) f, c' bf a2 f4 a ~ a8 f( g4) f2 r2 r4 f4( f) bf f g
	bf c c c a2 a1	
  
	}
tenorWords = \lyrics { 
	If ye love me, keep my com- mand- ments, 
	and I will pray the Fa -- ther, and He shall 
	give you__ a- no- ther__ com- fort- er, 
	that He -- may bide with you for ev- er,
	may bide with you for ev- er: 
	Ev'n the Sp'rit of truth, the Sp'rit 
	of truth, ev'n the Sp'rit of __ truth,
	the Sp'rit of __ truth, truth.
	
	
	
	}

bassMusic = \notes \relative c { 
	f2. d4 | c2 f( | f4) f c d | bf2 f'( | f1) |
	R1 | r2 d | d4 d g4. f8 | e2 d | r4 g d d |
	f2 f4 c | d d c c  f2 
		c2 f2. e4
	d4 c bf c c( a) g g a d c g a a b2 c4 g'2 c,4
	g'4 f e d c1 a4 d2 c4( c) d c bf a d c e
	bf f' g g f2 f1 

	}
bassWords = \lyrics { 
	If ye love me, keep my com- mand- ments, 
	and I will pray the Fa -- ther, and He shall 
	give you__ a- no- ther__ com- fort- er, 
	that He  may bide with you for ev- er,
	that He  may bide with you for ev- er:  
	Ev'n the Sp'rit of truth, the Sp'rit 
	of truth, ev'n the Sp'rit of  truth,
	the Sp'rit of truth, the Sp'rit of truth, truth.
	
	}


\score { \notes <<
		
	\context StaffGroup <<
	      \context Staff = sopmus {	      	
			\voiceOne
			\staffSetup 
			\property Staff.midiInstrument = "violin"
			}	
	      \context Lyrics = soplyr { s1}
	     
	      \context Staff = altomus { \key f\major
	 \property Staff.midiInstrument = "viola" s1}
	      \context Lyrics = altolyr { s1 }
	      \context Staff = tenmus {  \clef "treble_8" 
	 \property Staff.midiInstrument = "cello" s1 }
	       \context Lyrics = tenlyr { s1 }
	      \context Staff = basmus {  \clef bass \key f\major
	 \property Staff.midiInstrument = "cello" s1 }
	       \context Lyrics = baslyr { s1 }
		 
		
		 \addlyrics		 	
		 	\context Staff = sopmus \context Voice = voiceOne  \sopMusic 
		 		\context Lyrics = soplyr \sopWords
		 	\context Staff = sopmus
		 		\property Staff.instrument = "Sop."
		\addlyrics
			\context Staff = altomus \altoMusic
				 \context Lyrics = altolyr \altoWords
			\context Staff = altomus
				\property Staff.instrument = "Alto"
		\addlyrics
			\context Staff = tenmus \tenorMusic
				\context Lyrics = tenlyr \tenorWords
			\context Staff = tenmus
				\property Staff.instrument = "Ten."
		\addlyrics
			\context Staff = basmus \bassMusic
				\context Lyrics = baslyr \bassWords
			\context Staff = basmus
				\property Staff.instrument = "Bass"
		>>


	>>	 
		  
  \paper { 
 
         \translator {
           \VoiceContext
           \consists Ambitus_engraver
         }
       
  	\translator {

	% a little smaller so lyrics can be closer to the staff. (Does it work?)
	\StaffContext
	minimumVerticalExtent = #'(-2 . 2) 
    }
	}  
  \midi { }  
}


%%% Piano Reduction

\score {
	
  \context PianoStaff <<
  	    \context Staff = upper <<
    	\sopMusic \\
    	\altoMusic \\
    	\staffSetup
    	>>
    \context Staff = lower <<
    	\clef bass 
    	\tenorMusic \\
    	\bassMusic
    >>  
  >>
  \paper { }  
  \midi { }  
}

