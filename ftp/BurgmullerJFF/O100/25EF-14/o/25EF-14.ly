% Converted to LilyPond 2.0 syntax by Stan Sanderson,
% physinfoman@ameritech.net
% in order to correct mistakes in bars 12 and 13

\version "2.0.1"
\include "paper16.ly"
\include "nederlands.ly"

\header {
	title             = "La Styrienne"
	subtitle          = "Steierischer Tanz  *  Styrian Dance"
	composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
	opus              = "Opus 100."
	piece             = "25 Etudes faciles"
	meter             = "Tempo di Valse"
	copyright         = "Public Domain"
	mutopiatitle      = "La Styrienne"
	mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
	mutopiainstrument = "Piano"
	date              = "19th century"
	source            = "Collection Litolff, 19th century"
	style             = "Romantic"
	maintainer        = "Bas Wassink"
	maintainerEmail   = "basvanlola@zonnet.com"
%	lastupdated       = "2002/Apr/5"
	lastupdated		  = "2003/Dec/1"

	tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
	footer            = "Mutopia-2003/12/01-225"
}

Global = \notes {\key g\major \time 3/4}
Treble = \clef treble
Bass = \clef bass

tsUpIIh = \property Voice.TextScript \override #'extra-offset = #'(0 . 2.5)
tsUpII = \property Voice.TextScript \override #'extra-offset = #'(0 . 2)
tsUpIh = \property Voice.TextScript \override #'extra-offset = #'(0 . 1.5)
tsUpI = \property Voice.TextScript \override #'extra-offset = #'(0 . 1)
tsUph = \property Voice.TextScript \override #'extra-offset = #'(0 . 0.5)
tsZero = \property Voice.TextScript \revert #'extra-offset
tsDownh = \property Voice.TextScript \override #'extra-offset = #'(0 . -0.5)
tsDownI = \property Voice.TextScript \override #'extra-offset = #'(0 . -1)
tsDownII = \property Voice.TextScript \override #'extra-offset = #'(0 . -2)
tsDownIIh = \property Voice.TextScript \override #'extra-offset = #'(0 . -2.5)
tsDownOd = \property Voice.TextScript \override #'extra-offset = #'(0 . -0.3)

TOP = \notes \relative c''  {
		\partial 8 \skip 8
		\bar empty
	  <<  \scriptUp {  r4 a a r gis gis r g! g s8 } \\
	  		\scriptDown  { 
	  	\grace {
  			\property Voice.Stem \override #'stroke-style = #"grace"
   			cis,8 
  			\property Voice.Stem \revert #'stroke-style 
  			} d2.->
     	\grace {
 			\property Voice.Stem \override #'stroke-style = #"grace"
  		 	cis8 
  			\property Voice.Stem \revert #'stroke-style 
  			} d2.->
      	\grace {
  			\property Voice.Stem \override #'stroke-style = #"grace"
   			cis8 
  			\property Voice.Stem \revert #'stroke-style } d2.-> 
  			} >>
      	\partial 8*3 <d fis>4 r8
      	\repeat volta 2 {
		 \partial 8*3 \stemBoth \slurBoth \scriptBoth   
		 d'8[-.^"1" \tsDownIIh e-._\markup {\italic "grazioso"} 
		 \tsZero fis-.]
  
		a^"5" ( g b,^"1" c cis d
		e)-| r fis,-.^"2" r fis-.^"2" r
		\grace {
			\property Voice.Stem \override #'stroke-style = #"grace"
   			dis'8 
  			\property Voice.Stem \revert #'stroke-style 
  			}
 		e8-| r fis,-. r fis-. r
  		g^"1" ( b^"2"  d)^"4" 
  		\property Staff.Hairpin \override #'extra-offset = #'(0 . -1)
  		d-.^"1"\cr e-. fis-.\rc 
  		a(\decr g b,\rced 
  		\property Staff.Hairpin \revert #'extra-offset
  		c cis d
   		e)-| r fis,-. r fis-. r	
  		\grace {
  			\property Voice.Stem \override #'stroke-style = #"grace"
   			dis'8 
  			\property Voice.Stem \revert #'stroke-style 
  			}
 		e8-| r fis,-. r fis-. r
 		\partial 8*3 g4^"3" r8
 		}

	\repeat volta 2 {
		\partial 8*3   fis'8[-.^"2" g-. a-.]
		b ( g fis g fis  e)
  		\scriptDown
  		\grace {
  			\property Voice.Stem \override #'stroke-style = #"grace"
  			 \slurUp e16([ fis]
  			\property Voice.Stem \revert #'stroke-style 
  			}
 		e4->  dis8 fis  b,4)
  		\grace {
  		\property Voice.Stem \override #'stroke-style = #"grace"
		\slurUp e16[( fis]
  		\property Voice.Stem \revert #'stroke-style 
  		}
 		e4->  dis8 fis b, dis
  		\property Staff.Hairpin \override #'extra-offset = #'(0 . -2)
  		e^"3"\cr dis e^"1" fis g^"1" a\rc
   		\tsUpI c^"4"\decr b a g fis^"3"  e)\rced
   		\property Staff.Hairpin \revert #'extra-offset
    	\grace {
  			\property Voice.Stem \override #'stroke-style = #"grace"
   			\slurUp e16[( fis]
  			\property Voice.Stem \revert #'stroke-style 
  			}
 		e4->  dis8 fis  b,4)
 		 \grace {
  		\property Voice.Stem \override #'stroke-style = #"grace"
   		\slurUp e16([ fis]
  		\property Voice.Stem \revert #'stroke-style 
  		}
 		e4->  dis8 fis \tsZero \tsDownh b,^"1" \tsZero  dis)^"3"
  		\tsDownIIh e4_\markup {\italic "dim. rall."} 
  		( ~ e8[ \tsZero es d  c)] 
 %workaround to get bass clef to print at end of lower staff 
   		s16
  		\break
 	 	\grace {
  			\property Voice.Stem \override #'stroke-style = #"grace"
   			\slurUp b16[( c]
  			\property Voice.Stem \revert #'stroke-style 
  			}
 		\tsUpIh b4^\markup {\italic "a tempo"}  a) \tsZero a_"1"
  		\grace {
  			\property Voice.Stem \override #'stroke-style = #"grace"
   			a16([ b]
 			\property Voice.Stem \revert #'stroke-style 
 			}
 		a4  g) g_"1"
  		\property Voice.TextScript \override #'extra-offset = #'(-0.5 . 0) 
  		d'8^"3" ( \tsZero cis c a' a,^"1" \tsDownOd fis'^"4"
  		b,^"1" g'  b,4)^"1" b^"2"
		\grace {
  			\property Voice.Stem \override #'stroke-style = #"grace"
   			\slurUp b16([ c]
  			\property Voice.Stem \revert #'stroke-style 
  			}
 		b4  a) a_"1"
  		\grace {
  			\property Voice.Stem \override #'stroke-style = #"grace"
   			a16[( b]
  			\property Voice.Stem \revert #'stroke-style 
  			} 
  		a4  g) g_"1"
  		\property Voice.TextScript \override #'extra-offset = #'(-0.5 . 0) 
  		d'8([^"3" \tsZero cis c a' a,^"1" \tsDownOd fis']^"4"
   		\partial 8*3 <b, g'>4)_"1" r8
		}
	\repeat volta 2 {
		\property Voice.DynamicText \override #'extra-offset = #'(0 . -2) 
		\scriptBoth \partial 8*3 \key c\major   
  		g8[-.^"2"_\f \tsDownIIh a-._\markup {\italic "deciso"} \tsZero g-.]
  		f r d''-| r f,,4^"2" (
  		e4.)   e8[-.^"2" f-. e-.]
 		d-. r g'-| r 
		\property Staff.Hairpin \override #'extra-offset = #'(0 . -1) 
		d,4\decr (
   		g4.)\rced   g8[-.^"2" a-. g-.]
		f-. r c''-| r f,,4^"2"\decr (
		e4.)\rced  
		\property Staff.Hairpin \revert #'extra-offset
		 g8[_"3" ( a g]
		fis g_"1"  e'4)^"5" <f, d'>4
  	}
  	\alternative {
    	{\partial 8*3 <e c'>4 r8}
    	{<e c'>2 r4}
  		}
 	 \bar "||"
}
  
BOT = \notes \relative c { 
	\partial 8 \skip 8
	\property Voice.DynamicText \override #'extra-offset = #'(-3 . 1.5) 
	r4^\mf <d c'> <d c'>
	r <d b'> <d b'>
	r <d bes'> <d bes'>
	\partial 4. 
% workaround- compensate for first grace note (top staff)	  
	\skip 8 <d a'>4
	\property Voice.DynamicText \set #'extra-offset = #'(5 . 2) r8^\p 
	r4.
	g8 r <b d> r <b d> r
	d, r <c' d> r <c d> r
	d, r <c' d> r <c d> r
	g r <b d> r <b d> r
	g8 r <b d> r <b d> r
	d, r <c' d> r <c d> r
	d, r <c' d> r <c d> r
	<g b d>4 r8
	
	r8^\mf r4
	e8 r \Treble <b' e g>4 <b e g>
  	<< \context Voice = VcII
    	{ \voiceOne \scriptUp
      	r4 <fis' a> <fis a>
      	r <fis a> <fis a> } 
   		\context Voice = VcIIb
    	{ \voiceTwo \scriptDown
      	b,2.
      	b2. } 
      	>>
	\Bass \stemBoth e,8 r \Treble <b' e g>4 <b e g>
	\Bass e,8 r \Treble <<b'4 e g^\markup {\italic "rit."}>> <b, e g>

	<< \context Voice = VcII
    	{ \voiceOne \scriptUp
		r4 <fis' a> <fis a>
      	r <fis a> <fis a> }
   		\context Voice = VcIIb
    	{ \voiceTwo \scriptDown
      	b,2.
      	b2. } 
      	>> 
	\stemBoth \slurBoth \tieBoth \scriptBoth <e g>4_"1"_"3" 
	<fis a>_"1"_"2" r4 \Bass 
	\bar empty \partial 16 s16
	
	 d,4^\p <c' d> <c d>
	g <b d> <b d>
	\tsUpIIh d,^\markup {\italic "dolce"} \tsZero d' d
	<< {r4 d d }\\ {g, 2. } >>  
  	\stemBoth d4 <c' d> <c d>
  	g <b d> <b d>
	d,^\f d' d
	\property Voice.TextScript \override #'extra-offset = #'(2 . 1) 
	<d g,>^\markup { \large \italic "Fine"}  r8
	\tsZero \key c\major r8 r4
	g,, <g' b> <g b>
	c, <g' c> <g c>
	<<\context Voice=VcII
    {\voiceOne
      r4 <g b> <g b>
      r <g c> <g c>
      r c c
      r c c}
   	\context Voice=VcIIb
    {\voiceTwo
      f,2. e a g
      }
  >>
	\stemBoth \slurDown g,4_"5" ( g'^"1" b^"2"
	c)_\markup {\large \italic "D.C. al Fine."} r8
	c2 r4
}
  
\score {\notes {
	\context PianoStaff <<
	\property PianoStaff.midiInstrument = "acoustic grand"
  		\property PianoStaff.instrument = \markup {\large \bold "14. "}
		\context Staff = "up" <<
			\Global \clef treble
    		\context Voice=VoiceI \TOP
		>>
	\context Staff = "down" <<
		\property Staff.VoltaBracket = \turnOff
			\Global \clef bass
			\context Voice=VoiceI \BOT
		>>
	>>
	}
\paper { }
\midi {\tempo 4=176}
}

