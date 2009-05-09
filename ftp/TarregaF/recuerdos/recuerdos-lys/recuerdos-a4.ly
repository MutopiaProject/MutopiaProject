\version "2.8.0"

#(ly:set-option 'point-and-click #f)
%set to 19.5 - at 20, page breaking goes weird with letter
#(set-global-staff-size 19.5)
#(set-default-paper-size "a4")

moveFingering = #(define-music-function (parser location shift) (pair?)
#{
	\once \override Fingering #'extra-offset = $shift
#})

moveStringNumber = #(define-music-function (parser location shift) (pair?)
#{
	\once \override StringNumber #'extra-offset = $shift
#})

barre = #(define-music-function (parser location padding text shorten) (number? string? pair?)
#{
	%\once \override TextSpanner #'enclose-bounds = #1
	\once \override TextSpanner #'dash-fraction = #'()
	\once \override TextSpanner #'font-shape = #'upright
	\once \override TextSpanner #'edge-height = #'(0 . 1)
	\once \override TextSpanner #'padding = #$padding
	\once \override TextSpanner #'edge-text = #`( ,$text . "")
	\once \override TextSpanner #'shorten-pair = $shorten
#})

rightAlignMark = #(define-music-function (parser location text padding) (string? number?)
#{
	\once \override Score.RehearsalMark #'padding = #$padding
	\once \override Score.RehearsalMark #'self-alignment-X = #right
	\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\mark \markup { \fontsize #-2 $text }
#})
padMarkup = #(define-music-function (parser location padding) (number?)
#{
	\once \override TextScript #'padding = #$padding
#})

\header
{
	%Mutopia headers
	mutopiatitle = "Recuerdos de la Alhambra"
	mutopiacomposer = "TarregaF"
	mutopiainstrument = "Guitar"
	source = "Orfeo Tracio Edition"
	style = "Romantic"
	maintainer = "Stewart Holmes"
	lastupdated = "2006/August/21"

	dedication = "Hommage à l'éminent artiste Alfred Cottin"
	title = "Recuerdos de la Alhambra"
	composer =  "Francisco Tárrega (1852-1909)"
	
	copyright = \markup { \teeny \center-align { "Copyright © 2009" "Licensed under the Creative Commons Attribution-ShareAlike 3.0 License" "http://creativecommons.org/licenses/by-sa/3.0." } }
	tagline = \markup { \teeny \center-align { "Typeset by Stewart Holmes" "Music from The Mutopia Project (www.mutopiaproject.org)" "Engraving by Lilypond (www.lilypond.org)" } }
	footer = "Mutopia-2009/05/09-810"
	mutopiacopyright = "Creative Commons Attribution-ShareAlike 3.0"
	
	printlink = "http://www.stewartholmes.com/publishing/viewpiece.php?piece_id=1"
}

top = \relative c
{
	\set subdivideBeams = ##t
	
	a32
	
	\set stringNumberOrientations = #'(down)
	\override Voice.TupletBracket #'bracket-visibility = ##f
	\set fingeringOrientations = #'(down)
	
	\moveFingering #'(0 . 3) <e''-4\2> e e \moveStringNumber #'(0 . -3) <e,> e' e e c e e e e, e' e e b \moveFingering #'(0 . 2.2) <d-2> d d e, d' d d |
	a, \moveFingering #'(0 . 1.9) <c'-1> c c e, c' c c a c c c e, c' c c b \moveFingering #'(0 . 2.2) <d-2> d d e, d' d d |
	a, \moveFingering #'(0 . 3) <e''-4> e e e, e' e e c e e e e, e' e e c e e e e, e' e e |
	a,, e'' e e e, e' e e c e e e e, e' e e d \moveFingering #'(0 . 3.2) <f-2> f f g, f' f f |
	c, \moveFingering #'(0 . 3.9) <g''-1> g g g, g' g g e g g g g, g' g g d \moveFingering #'(0 . 3.2) <f-2\2> f f g, f' f f | % bar 5
	c, \moveFingering #'(0 . 3) <e'-4> e e g, e' e e c e e e g, e' e e d \moveFingering #'(0 . 3.2) <f-2> f f g, f' f f | 
	c, \moveFingering #'(0 . 3.9) <g''-1> g g g, g' g g e g g g g, g' g g e g g g g, g' g g |
	c,, g'' g g g, g' g g e g g g g, g' g g e g g g g, g' g g |
	f, \moveFingering #'(0 . 4.9) <c''-1> c c c, c' c c a c c c c, c' c c g \moveFingering #'(0 . 4.9) <b-1> b b c, b' b b |
	f, \moveFingering #'(0 . 4.4) <a'-3> a a c, a' a a f a a a c, a' a a d,, \moveFingering #'(0 . 4.9) <b''-3> b b f b b b | % bar 10
	
	e,,, \moveFingering #'(0 . 4.3) <a''-2> a a b, a'  \times 2/3 { \slurDown \slurDashed a ( \set Score.beatLength = #(ly:make-moment 1 16) \moveFingering #'(0 . 5.9) <b-4> a) } e32 \set Score.beatLength = #(ly:make-moment 1 4) \moveFingering #'(0 . 4.0) <gis-2> gis gis b, gis' gis gis e gis gis gis b, gis' gis gis | 
	e,, gis'' gis gis d gis gis gis e gis gis gis d gis gis gis e gis gis gis d gis gis gis |
	
	%end of page 1
	
	\override Beam #'positions = #'(7.5 . 7.5) % tweak - collision with flat symbol
	a,, \moveFingering #'(0 . 4.4) <bes''-3> bes bes cis, bes' bes bes e, bes' bes bes cis, bes' bes bes \revert Beam #'positions e, \moveFingering #'(0 . 4.3) <a-1> a a cis, a' a a |
	cis,, \moveFingering #'(0 . 4.1) <g''-2> g g a, g' g g e g g g a, g' g g f \moveFingering #'(0 . 4.0) <a-1> a a a, a' a a |
	d,, \moveFingering #'(0 . 3.9) <g'-1> g g e g \times 2/3 { g ( \set Score.beatLength = #(ly:make-moment 1 16) \moveFingering #'(0 . 5.5) <a-4> g) } d32 \set Score.beatLength = #(ly:make-moment 1 4) \moveFingering #'(0 . 3.3) <f-1> f f a, f' f f d f f f a, f' f f | % bar 15 
	d, f' f f a, f' f f d f f f a, f' f f d f f f a, f' f f |
	d, \moveFingering #'(0 . 3) <e'-4> e e a, e' e e b e e e a, e' e e b \moveFingering #'(0 . 2.2) <d-2> d d a d d d |
	f,, \moveFingering #'(0 . 2.0) <c''-1> c c dis, c' c c a c c c dis, c' c c a \moveFingering #'(0 . 2.1) <d-4> d d dis, d' d d | 
	e,, \moveFingering #'(0 . 1.9) <c''-1> c c e, c' \times 2/3 { c ( \set Score.beatLength = #(ly:make-moment 1 16) \moveFingering #'(0 . 5.5) <d-4> c) } gis32 \set Score.beatLength = #(ly:make-moment 1 4) \moveStringNumber #'(0 . -2) \moveFingering #'(0 . 1.15) <b-0\2> b b e, b' b b gis b b b e, b' b b |  
	e,, b'' b b e, b' b b gis b b b e, b' b b gis b b b e, b' b b | % bar 20
	
	\bar ":|"
	\key a \major
	
	\repeat volta 2
	{
		a, \moveFingering #'(0 . 3.2) <e''-0> e e e, e' e e cis e e e e, e' e e b \moveFingering #'(0 . 2.2) <d-2> d d e, d' d d |
		a, \moveFingering #'(0 . 1.9) <cis'-1> cis cis e, cis' cis cis a cis cis cis e, cis' cis cis b d d d e, \moveFingering #'(0 . 2.2) <d'-2> d d |
		a, e'' e e e, e' e e cis e e e e, e' e e cis e e e e, e' e e | 
		a,, e'' e e e, e' e e cis e e e e, e' e e cis e e e e, e' e e |
		a,, \moveFingering #'(0 . 3.2) <fis''-2> fis fis fis, fis' fis fis d fis fis fis fis, fis' fis fis d fis fis fis fis, fis' fis fis | % bar 25
		a,, \moveFingering #'(0 . 4.9) <d''-1> d d d, d' d d b d d d d, d' d d d, fis fis fis fis, fis' fis fis | 
		
		%end of page 2
		
		a,, fis'' fis fis d fis \times 2/3 { fis ( \set Score.beatLength = #(ly:make-moment 1 16) \moveFingering #'(0 . 5.8) <gis-4> fis) } cis32 \set Score.beatLength = #(ly:make-moment 1 4) e e e e, e' e e cis e e e e, e' e e |
		a,, e'' e e e, e' e e cis e e e e, e' e e cis e e e e, e' e e |
		fis,, \moveFingering #'(0 . 4.1) <a''-4> a a fis, a' a a a, a' a a cis, a' a a a, a' a a fis, a' a a | 
		gis,, \moveFingering #'(0 . 4.0) <gis''-1> gis gis gis, gis' gis gis bis, gis' gis gis dis gis gis gis bis, dis dis dis gis, dis' dis dis | % bar 30 
		
		cis, \moveFingering #'(0 . 3.1) <fis'-4\2> fis fis gis, fis' fis fis cis \moveFingering #'(0 . 3.2) <e-2> e e gis, e' e e cis e e e gis, e' e e | 
		cis, e' e e gis, e' e e cis e e e gis, e' e e cis e e e gis, e' e e |
		b, \moveFingering #'(0 . 2.7) <d'-4> d d f, d' d d f, d' d d d, d' d d e, d' d d f, d' d d |
		e,, \moveFingering #'(0 . 2.2) <cis''-2> cis cis e, cis' cis cis e, cis' cis cis e, cis' cis cis e,, \moveFingering #'(0 . 1.7) <b''-0> b b d, b' b b | 
		a, b' b b e, b' \times 2/3 { b ( \set Score.beatLength = #(ly:make-moment 1 16) \moveFingering #'(0 . 6.0) <cis-2> b) } e,32 \set Score.beatLength = #(ly:make-moment 1 4) \moveFingering #'(0 . 0.9) <a-1> a a e a a a fis a a a gis a a a | % bar 35 
	}
	\alternative
	{
		{
			a, a' a a e a a a cis, a' a a e \moveFingering #'(0 . 1.7) <b'-4\3> b b a \moveFingering #'(0 . 2.05) <cis-1> cis cis b \moveFingering #'(0 . 2.4) <d-2> d d |
		}
		{
			a, a' a a e a a a e a a a gis \moveFingering #'(0 . 1.2) <b-0> b b a \moveFingering #'(0 . 2.0) <c-1> c c b \moveFingering #'(0 . 2.7) <d-3> d d | \bar "||"
		}
	}
	
	a,32 \moveFingering #'(0 . 1.2) <a'-2> a a e a a a e a a a e a a a e a a a e a a a | 
	a, a' a a f a a a f a a a f a a a f a a a f a a a | 
	a, \moveFingering #'(0 . 1.8) <b'-0> b b f b b b a \moveFingering #'(0 . 2.0) <c-1> c c f, c' c c a \moveFingering #'(0 . 2.2) <d-4> d d f, d' d d | % bar 40
	
	%end of page 3
	
	a, e'' e e e, e' e e cis e e e e, e' e e cis e e e e, e' e e |
	a,, e'' e e e, e' e e cis e e e e, e' e e cis e e e e, e' e e | 
	e,, e'' e e gis, e' e e gis, e' e e gis, e' e e gis, e' e e gis, e' e e |
	e,, \moveFingering #'(0 . 2.2) <d''-2> d d fis, d' d d e, \moveFingering #'(0 . 2.0) <cis'-1> cis cis e, cis' cis cis e,, \moveFingering #'(0 . 1.7) <b''-0> b b d, b' b b |
	a, \moveFingering #'(0 . 1.0) <a'-1> a a e a a a e a a a eis a a a fis a a a eis a a a | % bar 45
	
	a, a' a a e a a a e a a a e a a a e a a a e a a a |
	a, a' a a f a a a f a a a f a a a f a a a f a a a |
	a, b' b b f b b b a c c c f, c' c c a d d d f, d' d d |
	a, e'' e e e, e' e e cis e e e e, e' e e cis e e e e, e' e e |
	a,, e'' e e e, e' e e cis e e e e, e' e e cis e e e e, e' e e |
	e,, \moveFingering #'(0 . 3.9) <gis''-3> gis gis e, gis' gis gis e gis gis gis e, gis' gis gis e gis gis gis e, gis' gis gis | % bar 50
	
	e,, \moveFingering #'(0 . 2.9) <fis''-3> fis fis e, fis' fis fis cis \moveFingering #'(0 . 3.2) <e-0> e e e, e' e e b \moveFingering #'(0 . 2.7) <d-2> d d e, d' d d |
	a, \moveFingering #'(0 . 1.9) <cis'-1> cis cis e, cis' cis cis a cis cis cis e, cis' cis cis fis, cis' cis cis a cis cis cis |
	a, cis' cis cis e, cis' cis cis a cis cis cis e,, cis'' cis cis bis, cis' cis cis cis, cis' cis cis |
	a, cis' cis cis e, cis' cis cis a cis cis cis e,, cis'' cis cis bis, cis' cis cis cis, cis' cis cis | 
	
	\set fingeringOrientations = #'(left)
	a,8 \moveFingering #'(0 . -0.35) <e'-3> <a-2> \moveFingering #'(0 . -0.3) <cis-1> \moveFingering #'(0 . -0.3) <e-1\2> <a-1\1> | % bar 55 
	
	\set stringNumberOrientations = #'(up)
	
	\moveStringNumber #'(0 . 2)
	
	<e'-4\1 a,-2\2>2. |
	<a,,-1 e-\tweak #'extra-offset #'(0 . 0.2) -1>2. % bar 57	
}

pedal = \relative c
{
  \override Fingering #'extra-offset = #'(-2 . 1.6)
  
  \set stringNumberOrientations = #'(down)
  \set fingeringOrientations = #'(down)
  
  <a-0>2. | a | \break
  a | a | \break %4
  <c-1> | c | \break 
  c | c | \break %6
  \moveFingering #'(-2 . 1.9) <f-1> | f2 <d-0>4 | \break 
  e,2. | e | \pageBreak  
  
  a | \moveFingering #'(-3 . 1.6) <cis-3> | \break %12
  <d-0> | d | \break %14
  d | <f,-1> | \break
  e | e | \break %18
  
  \bar ":|"
  \key a \major
  
  \repeat volta 2
  {
	  a | a | \break
	  a | a | \break %22
	  a | a | \pageBreak
	  
	  a | a | \break %26
	  <fis-1> | <gis-1> | \break %28
	  <cis-1> | <cis> | \break
	  <b-1> | e, | \break %32
	  a
	  
	  \once \override Score.RehearsalMark #'padding = #6 
	  \once \override Score.RehearsalMark #'self-alignment-X = #right 
	  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	  \once \override Score.RehearsalMark #'extra-offset = #'(1.05 . 2)
	  
	  \mark \markup { \musicglyph #"scripts.coda" } |
  }
  \alternative 
  {
  	{
  		a\break
  	}
  	{
  		a
		\once \override Score.RehearsalMark #'padding = #2 
		\once \override Score.RehearsalMark #'self-alignment-X = #right 
		\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
		\once \override Score.RehearsalMark #'direction = #-1
		\once \override Score.RehearsalMark #'extra-offset = #'(0.95 . -2)
		
  		\mark \markup { \fontsize #-2 "D.C. al" \hspace #1 \raise #0.75 { \musicglyph #"scripts.coda" } } 
  	}
  }
  \bar "||"

  \once \override TextScript #'extra-offset = #'(-1.45 . 2)
  \padMarkup #6 a2.^\markup { \fontsize #2 \musicglyph #"scripts.coda" } | %nasty hack used here - Lilypond can't add 2 rehearsal marks to 1 barline
  
  a2. | a | \pageBreak
  a | a | \break
  e | e2 e4 | \break
  a2. | a | \break
  a2. | a | \break
  a | a | \break
  e | e | \break 
  a | a | \break 
  a | a |
  
  
  \set stringNumberOrientations = #'(down)
  \set fingeringOrientations = #'(left)
  
  \revert Fingering #'extra-offset
  \moveStringNumber #'(0 . -2)
  
  <cis'-3\4 a,-0\5> | <cis,-\tweak #'extra-offset #'(0 . -0.12) -3 a-\tweak #'extra-offset #'(0 . -0.4) -4>2. \bar "|."
}

bottom = \relative c
{
	\override Fingering #'font-shape = #'italic
	
	\set stringNumberOrientations = #'(down)
	\set fingeringOrientations = #'(left)
	
	s8 \moveFingering #'(0 . 0.1) <e-1> \moveStringNumber #'(0 . -2) \moveFingering #'(0.2 . 0) <c'-3\3> e, \moveFingering #'(0.1 . 0.2) <b'-3> \moveFingering #'(0 . 0.1) <e,-1> |
	s8 <e-2> <a-3> e \moveFingering #'(0.12 . 0) \moveStringNumber #'(0 . -2) \moveFingering #'(0.5 . 1.2) <b'-3\3> \moveFingering #'(0 . 0.1) <e,-1> |
	%\set fingeringOrientations = #'(left)
	s8 \moveFingering #'(0 . 0.1) <e-1> <c'-3> e, c' e, |
	s8 e c' e, \moveFingering #'(0.5 . 1.2) <d'-3> \moveFingering #'(0 . 0.1) <g,-1> |
	s8 \moveFingering #'(0 . 0.2) <g-3> \moveFingering #'(0.1 . 0) <e'-4> g, \moveFingering #'(0 . 0.2) <d'-3> \moveFingering #'(0 . 0.1) <g,-1> |
	s8 <g-2> \moveFingering #'(0.12 . 0) <c-3> g \moveFingering #'(0.5 . 1.2) <d'-3> \moveFingering #'(0 . 0.1) <g,-1> |
	s8 \moveFingering #'(0 . 0.1) <g-3> <e'-4> g, e' g, | 
	s8 g e' g, e' g, |
	s8 <c-3> \moveFingering #'(0.8 . 1.2) <a'-4> c, \moveFingering #'(0.8 . 1.2) <g'-2> \moveStringNumber #'(0 . -2) <c,-4\4> |
	s8 <c-2> \moveFingering #'(0.8 . 1.2) <f-4> <c-3> s \moveFingering #'(0.8 . 1.2) <f-2> | % bar 10
	
	s8 \moveFingering #'(0 . 0.1) <b,-1> \moveFingering #'(1 . 1.2) <e-3> \moveFingering #'(0 . 0.1) <b-1> e b |
	s8 \moveStringNumber #'(0 . -2) <d-4\3> \moveStringNumber #'(0 . -2) \moveFingering #'(0.1 . 0) <e-2\2> d e d |
	
	%end of page 1
	
	s8 \moveFingering #'(-1.2 . 0) <cis-2> \moveFingering #'(0 . 0.2) <e-1> cis e cis | 
	s8 \moveFingering #'(0 . 0.2) <a-1> \moveFingering #'(0.1 . 0.2) <e'-4> a, \moveFingering #'(0.8 . 1.2) <f'-4> \moveStringNumber #'(0 . -2) <a,-3\4> |
	s8 \moveFingering #'(0.1 . 0) <e'-3> \moveFingering #'(0.1 . 0) <d-4> <a-2> d a |
	s8 a d a d a |
	s8 \moveFingering #'(0 . 0.2) <a-1> \moveFingering #'(0 . 0.2) <b-3> a b a |
	s8 \moveFingering #'(-1.2 . -0.2) <dis,-1> \moveFingering #'(0.1 . 00) <a'-2> dis, a' dis, | 
	s8 \moveFingering #'(0 . 0.1) <e-2> \moveFingering #'(1.3 . 1.6) <gis-1> \moveFingering #'(0 . 0.1) <e-2> gis e |
  	s8 e gis e gis e | % bar 20
	
	\bar ":|"
	\key a \major
	
	\repeat volta 2
	{
		s8 \moveFingering #'(0 . 0.2) <e-1> \moveFingering #'(0.1 . 0) <cis'-2> e, \moveFingering #'(0 . 0.2) <b'-3> e, | 
		s8 \moveFingering #'(0 . 0.2) <e-1> \moveFingering #'(0.1 . 0.2) <a-1> e \moveFingering #'(0.8 . 1.3) <b'-3> e, |
		s8 e cis' e, cis' e, | 
		s8 e cis' e, cis' e, |
		s8 <fis-3> \moveFingering #'(0.1 . 0) <d'-2> fis, d' fis, | 
		s8 <d'-2> \moveFingering #'(0.8 . 1.2) <b'-3> d, d fis, |
		
		% end of page 2
		
		s8 d' cis e, cis' e, | 
		s8 e cis' e, cis' e, |
		s8 <fis-3> \moveFingering #'(0 . 0.2) <a-1> \moveFingering #'(0 . 0.2) <cis-1> a fis |
		s8 \moveFingering #'(0 . 0.2) <gis-3> \moveFingering #'(-1.2 . -0.2) <bis-2> \moveFingering #'(-1.2 . -0.2) <dis-1> bis gis | % bar 30
		
		s8 \moveFingering #'(0 . 0.2) <gis-3> <cis-2> gis cis gis | 
		s8 gis cis gis cis gis |
		s8 \moveFingering #'(-1.1 . 0) <f-3> f <d-0> <e-2> <f-3> |
		s8 \moveFingering #'(0 . 0.2) <e-1> e e e, d' | 
		s8 e e e \moveFingering #'(0.1 . 0) <fis-3> \moveFingering #'(0.8 . 1.35) <gis-4> | 
	}
	\alternative
	{
		{
			s8 \moveFingering #'(0 . 0.2) <e-1> <cis-3> e \moveFingering #'(0.75 . 1.4) <a-1> \moveFingering #'(0.5 . 1) \moveFingering #'(0.22 . 0.2) <b-3> |
		}
		{
			s8 e, e \moveFingering #'(0.8 . 1.25) <gis-2> \moveFingering #'(0.8 . 1.5) <a-2> \moveFingering #'(0.8 . 1.3) <b-4> | \bar "||"
		}
	}

	s8 \moveFingering #'(0 . 0.2) <e,-1> e e e e |
	s8 \moveFingering #'(-1.2 . -0.2) <f-3> f f f f |
	s8 \moveFingering #'(-1.2 . 0) <f-3> \moveFingering #'(0.8 . 1.4) <a-2> f a f | % bar 40
	
	% end of page 3
	
	s8 e cis' e, cis' e, |
	s8 e cis' e, cis' e, |
	s8 \moveFingering #'(0 . 0.1) <gis-1> gis gis gis gis |
	s8 <fis-3> \moveFingering #'(0 . 0.1) <e-1> e s d |
	s8 e e \moveFingering #'(-1.2 . 0) <eis-2> \moveFingering #'(0.1 . 0)<fis-3> eis |
	s8 e e e e e | 
	s8 f f f f f  |
	s8 f a f a f |
	s8 e cis' e, cis' e, |
	s8 e cis' e, cis' e, |
	s8 \moveFingering #'(0 . 0.1) <e-1> \moveFingering #'(0.1 . 0) <e'-4> e, e' e, | % bar 50
	
	s8 \moveFingering #'(0 . 0.1) <e-1> <cis'-2> e, \moveFingering #'(0.1 . 0.2) <b'-3> e, | 
	s8 e a e \moveFingering #'(0 . 0) <fis-3> a |
	s8 e a e, \moveFingering #'(-1.2 . 0)<bis'-3> <cis-4> |
	s8 e a e, bis' cis | 
}

dynamics =
{
	\override DynamicLineSpanner #'padding = #4.3
	
	\padMarkup #3	
	s8^\markup { \bold "Andante" } \> s s s s s32 s s s\! |
	s8\< s s s s s32 s s s\! |
	s8\> s s s s s32 s s s\! |
	s8\< s s s s s32 s s s\! |
	s2.*49
	
	\once \override TextScript #'padding = #3
	s2._\markup { \italic "Rit." }
}

fingering = 
{
	\override TextScript #'padding = #2.6
	s32 s^\markup { \hspace #0.08 \italic \small "a" } s^\markup { \hspace #-0.08 \italic \small "m" } s^\markup { \hspace #0.2 \italic \small "i" }
	s s^\markup { \hspace #0.09 \italic \small "cont. sim" }
}

barring =
{
	\textSpannerUp
	 
	s2. | s | s |
	s2 \padMarkup #4.5 s4^\markup { "V" } | % bar 4 
	
	\barre #4.8 "CIII" #'(-2 . -1)
	s4.\startTextSpan s16. s32\stopTextSpan \padMarkup #4.5 s4^\markup { "V" } | % bar 5
	
	%textscript-3.9
	%spanner = markup - 0.2
	%default padding = 4.8 (spanner)
	
	\barre #3.8 "CIII" #'(-2 . -1)
	s4.\startTextSpan s16. s32\stopTextSpan \padMarkup #4.5 s4^\markup { "V" } | % bar 6
	
	\barre #4.8 "CIII" #'(-2 . -1)
	s4.\startTextSpan s16. s32\stopTextSpan \padMarkup #5.1 s4^\markup { "V" } | % bar 7
	s2. |
	
	\barre #6.2 "CVIII" #'(-2 . -1)
	s2\startTextSpan s8 s16 s32 s\stopTextSpan | % bar 9
	\padMarkup #5.5 s2^\markup { "III" } \padMarkup #6.1 s4^\markup { "V" } | % bar 10
	\padMarkup #5.6 s4^\markup { "V" } \padMarkup #5.1 s2^\markup { "IV" } | % bar 11
	s2. |
	
	% end of page 1
	
	\barre #7.1 "½CV" #'(-2 . -1)
	s2\startTextSpan s8 s16 s32 s\stopTextSpan | % bar 13
	\padMarkup #5.1 s2^\markup { "II" } \padMarkup #5.5 s4^\markup { "V" } | % bar 14
	\padMarkup #5.1 s4^\markup { "III" } \padMarkup #4.5 s2^\markup { "I" } | % bar 15
	s2. | s |
	
	\barre #2.9 "CI" #'(-2 . -1)
	s2\startTextSpan s8 s16 s32 s\stopTextSpan | % bar 18
	s2. | s | % bar 20, end of 1st section
	
	\override Staff.VoltaBracket #'padding = #2.2
	
	\repeat volta 2
	{
		s2. | \barre #3 "CII" #'(-2 . -1) s2\startTextSpan s8 s16 s32 s32\stopTextSpan |
		s2. | s |
		\padMarkup #4.5 s^\markup "II" |
		\padMarkup #7.3 s^\markup "X" |
		s | s |
		\barre #5.3 "CII" #'(0 . -1) s2\startTextSpan s8 s16 s32 s\stopTextSpan |
		\barre #5.3 "CIV" #'(-2 . -1) 
		s2.\startTextSpan |
		s2. | s2 s8 s16 s32 s32\stopTextSpan |
		s2. | s | s4 \barre #2.6 "½CII" #'(-0.8 . -1) s2\startTextSpan |
	}
	\alternative
	{
		{
			s2 s8 s16 s32 s\stopTextSpan |
		}
		{
			\barre #1.9 "½CII" #'(0.8 . -1) s4\startTextSpan s16 s32 s\stopTextSpan s4. |
		}
	}
	
	s2. | s |
	s | s |
	s | s |
	
	\barre #3.5 "½CII" #'(-2 . -1)
	s4\startTextSpan s8 s16 s32 s\stopTextSpan s4 |
	\barre #2.2 "½CII" #'(1 . -1)
	s2\startTextSpan s8 s16 s32 s\stopTextSpan |
	s2. | s | s | s | s | s | s | 
	
	\barre #3.2 "½CII" #'(1 . -1)
	
	s2.\startTextSpan | s | s2 s8 s16 s32 s\stopTextSpan |
	
	s2. | s |
	
	\padMarkup #3
	s2.^\markup { "½CII" } |
}

thescore = \score
{
	<<
		\context Staff = guitar
		{
			\set Staff.midiInstrument = "acoustic guitar (nylon)"
			
			\clef "G_8"
			\time 3/4
			\key c \major
			
			#(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
			#(override-auto-beam-setting '(end * * * *) 1 2 'Staff)
			#(override-auto-beam-setting '(end * * * *) 3 4 'Staff)
			
			\override Staff.NoteCollision  #'merge-differently-headed = ##t
			\override Staff.NoteCollision  #'merge-differently-dotted = ##t
			
			<<
				\context Voice = "1" { \voiceOne \top }
				\context Voice = "2" { \voiceTwo \pedal }
				\context Voice = "4" { \voiceFour \bottom }
				\context Voice = "3" { \voiceThree << \dynamics \\ \fingering \\ \barring >> }
			>>
		}
	>>
}

\book
{
	\paper
	{
		ragged-last-bottom = ##f
		ragged-bottom = ##f
		%annotate-spacing = ##t
		
		line-width = 190\mm		
		left-margin = 10\mm
		bottom-margin = 10\mm
		indent = 0\mm
		%top-margin = 20\mm
		
	}
		
	\score
	{
		\thescore
	
		\layout
		{
			ragged-last = ##f
		} 
		
		\midi
		{
			\tempo 4 = 74
		}
	}
}
