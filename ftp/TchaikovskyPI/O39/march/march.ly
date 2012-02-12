\version "2.14.2"
\header {
	title = \markup\normal-text{"March of the Wooden Soldiers"}
	composer = "Peter Ilyich Tchaikovsky (1840 - 1893)"
	opus = "Op. 39, No. 5"
	mutopiatitle = "March of the Wooden Soldiers"
	mutopiacomposer = "TchaikovskyPI"
	mutopiaopus = "Op. 39, No. 5"
	mutopiainstrument = "Piano"
	source = "Schirmer, 1904"
	copyright = "Public Domain"
	style = "March"
	maintainer = "Anonymous"

 footer = "Mutopia-2011/12/05-1806"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
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



