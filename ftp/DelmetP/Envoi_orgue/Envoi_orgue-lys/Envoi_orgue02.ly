\version "2.10.19"

 \header {
  title = "Envoi de Fleurs" 
  subtitle = "Transcription pour Grand Orgue"
  composer = "Paul Delmet (1862-1904)"
  arranger = \markup {\small "Transcription par Benjamin Intartaglia"}
  mutopiatitle = "Envoi de Fleurs"
  mutopiacomposer = "DelmetP"
  mutopiainstrument = "Organ"
  date = "1897"
  source = "ENOCH & Cie 1897"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "Benjamin Intartaglia"
  maintainerEmail = "benjamin.intartaglia@wanadoo.fr"
  lastupdated = "2007/March/26"
  version = "2.10.19"

 footer = "Mutopia-2007/03/29-943"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}



#(set-global-staff-size 21) 

\markup {I (GO) Bourdon 8', Flûte 4'}
\markup {II (REC) Trompette ou Basson-Hautbois 8'}
\markup {PED Soubasse 16', Bourdon 8'}

     MainDroite = \relative c'' {
        \clef treble
        \key c \major
        \time 6/8
     
	    \partial 8*4
		
        g8\noBeam(^\markup{\raise #2.5 \bold \fontsize #1 "Moderato" \raise #2.0 "[Andantino]"} b c d |
		e4 e8 f d f |
		e4 c8 d c a |
		g4. <f d'> |
		
		<e c'>) r8 <b g'>4 |
		
		r8 <c g'>4 r8 <c a'>4 |
		r8 <c g'>4 r8 <c f>4 |
		r8 <c e>4 r8 <a c> <b d> |
		r <c e>4 r8 <b d>4 |
		
		
		
		r8 <c e>4 r8 <d g b>4 |
		r8 <c g' c>4 r8 <c a' c>4 
		r8 <c g' c>4 r8 <c f c'>4
		r8 <c e c'>4 r8 <d a>4
		r8 <c e>4 r8 <b f'>4
		
		
		
		
		r8 <g e'>4 r8 <fis' d'>( d) 
		r8 <fis d'>( d) r8 <fis c'>( d) 
		r8 <d b'>( b) r <e a>( c)
		r <d g>( b)^\markup {\italic "rall. -  -  -  -  -"} r <c fis>4
		<c fis>4.(\mf <b g'>4) r8
		
		
		r8 <c g'>4 r8 <b f'!>4
		r8 <c e>4 r8 <c a'>4
		r8 <c g'>4
		r8 <c f>4
		r8 <c e>4 r8 <a d>4 
		
		
		
		r8 <c e>4 r8 <f, b d>4 
		<e g c>4 g'8(
		b c d |
		e4 e8 f d f |
		e4 c8 d c a |
		g4. <f d'> |
		
		
		<e c'>) r8 <b g'>4 |
		r8 <c g'>4 r8 <c a'>4 |
		r8 <c g'>4 r8 <c f>4 |
		r8 <c e>4 r8 <a c> <b d>
		r <c e>4 r8 <b d>4
		r8 <c e>4 r8 <d g b>4
		r8 <c g' c>4 r8 <c a' c>4
		r8 <c g' c>4 r8 <c f c'>4
		r8 <c e c'>4 r8 <d a>4
		r8 <c e>4 r8 <b f'>4
		r8 <g e'>4 r8 <fis' d'>( d) 
		r8 <fis d'>( d) r8 <fis c'>( d) 
		r8 <d b'>( b) r <e a>( c)
		r <d g>( b)^\markup {\italic "rall. -  -  -  -  -"} r <c fis>4
		<c fis>4.(\mf <b g'>4) r8
		r8 <c g'>4 r8 <b f'!>4
		r8 <c e>4 r8 <c a'>4
		r8 <c g'>4
		r8 <c f>4
		r8 <c e>4 r8 <a d>4 
		r8 <c e>4 r8 <f, b d>4 
		r8 <e c'>4
		r8 <fis' d'>( d) r8 <fis d'>( d) r8 <fis c'>( d) 
		r8 <d b'>( b) r <e a>( c)
		r <d g>( b) r <c fis>4
		<c fis>4.( <b g'>4.)
		r8 <c g'>4 r8 <b f'!>4
		r8 <c e>4 r8 <c a'>4
		r8 <c g'>4
		r8 <c f>4
		r8 <c e>4 r8 <a d>4 
		r8 <c e>4 r8 <f, b d>4 
		<e g c>4 r8 <e'' c'>4 r8
		\bar "|."
		
     }
     
     MainGauche = \relative c' {
        \clef bass
        \key c \major
        \time 6/8
     
	 \partial 8*4
	\override DynamicLineSpanner #'staff-padding = #2
	r8^\p
	<g f'>4.^"{I"
	<g c e> <g a c f>\arpeggio
	<g c e> 
	<f c' d> 
	<e c'> <g, b'>\arpeggio
	<c g'>4
	
	g'8(_"II"^\markup{\small \italic "molto cantabile"} g\< a b 
	c4 d8 c b a 
	g4)\! g8( f g a 
	e4 e8
\stemDown
	d\> c d e4. d)\!
\stemNeutral	
	r4 e8( g\< a b 
	c4\! b8 d c a 
g4 g8 f c' f, 
e4 e8 d a' f e4.\> d c4)\! e8(
fis\rfz g a 
b4 b8 c a d	b4  g8 a g e  d4 d8 e fis b 
a4. g)
r4 g8(\< g a b 
c4\! c8 d c a 
g4 g8 f c' f, e4 e8 d a' f 
e4.\> d 
c4)\! r8 
	<g' f'>4.^"{I"
	<g c e> <g a c f>\arpeggio
	<g c e> 
	<f c' d> 
	<e c'> <g, b'>\arpeggio
	<c g'>4
	
	
	
	g'8(_"II" g\< a b 
	c4 d8 c b a 
	g4)\! g8( f g a 
	e4 e8
\stemDown
	d\> c d e4. d)\!
\stemNeutral	
	r4 e8( g a b 
	c4 b8 d c a 
g4 g8 f c' f, 
e4 e8 d a' f e4. d c4) e8(\rfz
fis g a 
b4 b8 c a d	b4  g8 a g e  d4 d8\< e fis b 
a4. g)\!
r4 g8( g\< a b 
c4 c8 d c a 
g4\! g8 f c' f, e4 e8\> d a' f 
e4. d 
c4)\! 

	e8(
fis_\markup{\italic "cresc."} g a 
b4 b8 c a d	b4  g8 a g e  d4 d8 e fis b 
a4. g)
r4 g8( g a b 
c4 c8 d c a 
g4 g8 f c' f, e4 e8\> d a' f 
e4. d 
c4)\! r8 <c' g'>4^"{I" r8
\bar "|."
    
     }
     
	 Pedale = \relative c {
        \clef bass
        \key c \major
        \time 6/8
		
	 
        \partial 8*4
	r8 r4.
	r1*6/8
	r1*6/8
	r1*6/8
    r4.
	f,4.
	e f 
	e d 
	g g
	g g
	c, f e f e d c f g g
	c, c' b a g c, d d g~ g4 f!8
	e4. d c f e a g f g g c,4 r8

	r4 r8

	r1*6/8
	r1*6/8
    r1*6/8
	r4 r8
	f4.
	e f 
	e d 
	g g
	g g
	c, f e f e d c f g g
	c, c' b a g c d d g,4.~ g4 f!8
	e4. d c f e a g f g g
	 c, c' b a g c d d g,4.~ g4 f!8
	e4. d c f e a g f g g c,4 r8 r4 r8
	 
	 \bar "|."
	 
	 
	 }
	 
	 

\score {

   <<
      \new PianoStaff 
	  
	  \with {
         
							} <<
            \context Staff = right {
               \MainDroite
									}
            \context Staff = left {
               \MainGauche
								  }
         >>
      
      \context Staff = Pedale {
	  
	  
         \Pedale
      }
   >>
   
   %{
\midi {
\context {
\Score
tempoWholesPerMinute = #(ly:make-moment 140 4)
}
}
%}


}
	
   \layout {
indent = 0.0\cm
}
