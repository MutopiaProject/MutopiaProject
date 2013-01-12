% Converted to LilyPond 2.0 syntax by Stan Sanderson,
% physinfoman@ameritech.net
% in order to correct mistakes in bars 12 and 13

\version "2.16.0"
#(set-global-staff-size 16)
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
	mutopiacomposer   = "BurgmullerJFF"
	mutopiainstrument = "Piano"
	date              = "19th Century"
	source            = "Collection Litolff, 19th Century"
	style             = "Romantic"
	maintainer        = "Bas Wassink"
	maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-225"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key g\major \time 3/4}
Treble = \clef treble
Bass = \clef bass

TOP =  \relative c''  {
	  <<
 {  r4 a a r gis gis r g! g } \\
 { 
     	\stemUp \slashedGrace cis,8 d2.->
     	\slashedGrace cis8 d2.->
      	\slashedGrace cis8 d2.-> } >>
      	<d fis>4 r8
      	\repeat volta 2 {
		 \stemNeutral \slurNeutral
		 d'8[-.-1 e-._\markup {\italic "grazioso"} 
		 fis-.]
  
		a-5 ( g b,-1 c cis d
		e)-| r fis,-.-2 r fis-.-2 r
		\slashedGrace dis'8 e8-| r fis,-. r fis-. r
  		g-1 ( b-2  d)-4 
  		d-.-1\< e-. fis-. 
  		a(\> g b,\! 
  		c cis d
   		e)-| r fis,-. r fis-. r	
  		\slashedGrace dis'8 e8-| r fis,-. r fis-. r
 		g4-3 r8
 		}

	\repeat volta 2 {
		fis'8[-.-2 g-. a-.]
		b ( g fis g fis  e)
  		\grace { \slurUp e16([ fis] } e4->  dis8 fis  b,4)
  		\grace { \slurUp e16[( fis] } e4->  dis8 fis b, dis
  		e-3\< dis e-1 fis g-1 a
   		c-4\> b a g fis-3  e)\!
	    	\grace { \slurUp e16[( fis] } e4->  dis8 fis  b,4)
 		 \grace { \slurUp e16([ fis] } e4->  dis8 fis b,-1 dis)-3
  		e4_\markup {\italic "dim. rall."} 
  		( ~ e8[ es d  c)] 
 	 	\grace { \slurUp b16[( c] } b4^\markup {\italic "a tempo"}  a) a-1
  		\grace { a16([ b] } a4  g) g-1
  		d'8-3 ( cis c a' a,-1 fis'-4
  		b,-1 g'  b,4)-1 b-2
		\grace { \slurUp b16([ c] } b4  a) a-1
  		\grace { a16[( b] } a4  g) g-1
  		d'8([-3 cis c a' a,-1 fis']-4
   		<b, g'>4)-1 r8
		}
	\break
	\repeat volta 2 {
	\key c\major   
  		g8[-.-2_\f a-._\markup {\italic "deciso"} g-.]
  		f r d''-| r f,,4-2 (
  		e4.)   e8[-.-2 f-. e-.]
 		d-. r g'-| r 
		d,4\> (
   		g4.)\!   g8[-.-2 a-. g-.]
		f-. r c''-| r f,,4-2\> (
		e4.)\!  
		 g8[-3 ( a g]
		fis g-1  e'4)-5 <f, d'>4
  	}
  	\alternative {
    	{<e c'>4 r8}
    	{\set Timing.measurePosition = #(ly:make-moment 0 8)
<e c'>2 r4}
  		}
 	 \bar "||"
}
  
BOT =  \relative c { 
	\grace s8 r4^\mf <d c'> <d c'>
	r <d b'> <d b'>
	r <d bes'> <d bes'>
	<d a'>4 r8

	r4.\p
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
  	<<
    	{
      	r4 <fis' a> <fis a>
      	r <fis a> <fis a> } \\
    	{
      	b,2.
      	b2. } 
      	>>
	\Bass \stemNeutral e,8 r \Treble <b' e g>4 <b e g>
	\Bass e,8 r \Treble <<b'4 e g^\markup {\italic "rit."}>> <b, e g>

	<<
    	{
		r4 <fis' a> <fis a>
      	r <fis a> <fis a> } \\
    	{
      	b,2.
      	b2. } 
      	>> 
	\stemNeutral \slurNeutral \tieNeutral {
} <e-3 g-1>4
	<fis-2 a-1> r4 \Bass 
	
	 d,4^\p <c' d> <c d>
	g <b d> <b d>
	d,^\markup {\italic "dolce"} d' d
	<< {r4 d d }\\ {g, 2. } >>  
  	\stemNeutral d4 <c' d> <c d>
  	g <b d> <b d>
	d,^\f d' d
	<d g,>^\markup { \large \italic "Fine"}  r8
	\key c\major r8 r4
	g,, <g' b> <g b>
	c, <g' c> <g c>
	<<
    {
      r4 <g b> <g b>
      r <g c> <g c>
      r c c
      r c c} \\
    {
      f,2. e a g
      }
  >>
	\stemNeutral \slurDown g,4-5 ( g'-1 b-2
	c)_\markup {\large \italic "D.C. al Fine."} r8
    	\set Timing.measurePosition = #(ly:make-moment 0 8)
	c2 r4
}
  
\score { {
<<
	\new PianoStaff <<
	\set PianoStaff.midiInstrument = "acoustic grand"
  	\set PianoStaff.instrumentName = \markup {\large \bold "14. "}
	\new Staff = "up" { 
			\Global \clef treble
    			\TOP
		}
	\new Staff = "down" {
			\Global \clef bass
			\BOT
		}
	>>
>>
	}
\layout { }

  \midi {
    \tempo 4 = 176
    }
}
