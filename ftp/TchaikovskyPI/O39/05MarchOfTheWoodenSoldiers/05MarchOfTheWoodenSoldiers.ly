\version "2.18.2"
\header {
	title = "March of the Wooden Soldiers"
	composer = "Peter Ilyich Tchaikovsky (1840 - 1893)"
	opus = "Op. 39, No. 5"
	mutopiatitle = "March of the Wooden Soldiers"
	mutopiacomposer = "TchaikovskyPI"
	mutopiaopus = "Op. 39, No. 5"
	mutopiainstrument = "Piano"
	source = "Schirmer, 1904"
        license = "Public Domain"
	style = "March"
	maintainer = "Anonymous"

 footer = "Mutopia-2015/01/17-1806"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}
global = {
  \key d \major
  \time 2/4
  
  \tempo \markup\normal-text"Tempo di Marcia" 4 = 140
}
sup = {\change Staff = "staffu"}
sdown = {\change Staff = "staffl"}
upper = \relative c' {
	<a' d>8 r d r
	b8. (ais16 b8) [r16 cis]
	(<a d>8) r d r
	b8. (ais16 b8) [r16 cis]
	<a d>8 r <cis e> r 
	fis r <d fis> r
	<e g> [r16 <d fis>] (<cis e>8) [r16 <b d>]
	(<cis e>8) r4.
	<a d>8 r d r
	b8. (ais16 b8) [r16 cis]
	(<a d>8) r d r
	b8. (ais16 b8) [r16 cis]
	<a d>8 r <cis e> r 
	fis r <d fis> r
	<cis e> [r16 <b d>] (<a cis>8) [r16 <gis b>]
	(a8) r4.
	<e a>8 r a r
	bes8. (a16 bes8) [r16 gis]
	(a8) r a r
	bes8. (a16 bes8) [r16 gis]
	(a8) r b r
	<gis cis> r <a cis> r
	<b d> [r16 cis] (b8) [r16 a]
	(gis8) r4.
	<e a>8 r a r
	bes8. (a16 bes8) [r16 gis]
	(a8) r a r
	bes8. (a16 bes8) [r16 gis]
	(a8) r b r
	<gis cis> r <a cis> r
	<b d> [r16 cis] (b8) [r16 cis] 
	(a8) r4.
	<a d>8 r d r
	b8. (ais16 b8) [r16 cis]
	(<a d>8) r d r
	b8. (ais16 b8) [r16 cis]
	<a d>8 r <cis e> r 
	fis r <d fis> r
	<e g> [r16 <d fis>] (<cis e>8) [r16 <b d>]
	(<cis e>8) r4.
	<a d>8 r d r
	b8. (ais16 b8) [r16 cis]
	(d8) r d r
	b8. (ais16 b8) [r16 cis]
	<a d>8 r <cis e> r 
	fis r <d fis> r
	e [r16 dis] (e8) [r16 fis]
	(d8) r4.
}
lower = \relative d' {
	\clef treble
	<d fis>8 r4.
	<d g>8. (fis16 g8) [r16 e]
	(<d fis>8) r4.
	<d g>8. (fis16 g8) [r16 e]
	(<d fis>8) r a' r
	d r4.
	<d, a'>8 r4. 
	a'8-. a16-. a-. a8-. a-.
	<d, fis>8 r4.
	<d g>8. (fis16 g8) [r16 e]
	(<d fis>8) r4.
	<d g>8. (fis16 g8) [r16 e]
	(<d fis>8) r a' r
	d r d, r
	e2
	(a,8-.) a16-. a-. a8-. a-.
	<a cis> r4. 
	<a d f>2
	(<a cis e>8) r4.
	<a d f>2
	(<a cis e>8) r <e' gis> r
	<cis eis> r fis r
	<b, fis'> r4.
	e8 [r16 d] (cis8) [r16 b]
	<a cis>8 r4. 
	<a d f>2
	(<a cis e>8) r4.
	<a d f>2
	(<a cis e>8) r <e' gis> r
	<cis eis> r fis r
	<b, fis'> r <e gis> r
	a, [r16 a] (b8) [r16 cis]
	(<d fis>8) r4.
	<d g>8. (fis16 g8) [r16 e]
	(<d fis>8) r4.
	<d g>8. (fis16 g8) [r16 e]
	(<d fis>8) r a' r
	d r4.
	<d, a'>8 r4. 
	a'8-. a16-. a-. a8-. a-.
	<d, fis>8 r4.
	<d g>8. (fis16 g8) [r16 e]
	(<d fis>8) r4.
	<d g>8. (fis16 g8) [r16 e]
	(<d fis>8) r a' r
	d r b r
	<g b> r <a cis> r
	d, r4.
}
dynamics = {}
\score {
	\new PianoStaff <<
  \new  Staff = "staffu" << \global \upper >>
  \new Dynamics = "dynamics" \dynamics
  \new Staff = "staffl" << \global \lower >>
>>
  \layout {}
  \midi { }
  
}



