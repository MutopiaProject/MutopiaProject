\version "2.11.52"
\include "notes.lyi"

#(set-global-staff-size 17)

\header {
	title = "Praeludium V"
	opus = "BWV 850"
	composer = "Johann Sebastian Bach (1685-1750)"
	
	mutopiatitle = "Das Wohltemperierte Clavier I, Praeludium V"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV 850"
	mutopiainstrument = "Harpsichord, Piano"
	source = "Breitkopf & Härtel, 1866"

	style= "Baroque"
	copyright = "Public Domain"
	maintainer = "Itay Perl"
 footer = "Mutopia-2008/07/30-1496"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {
		\new PianoStaff <<
			#(set-accidental-style 'piano)
			\set PianoStaff.connectArpeggios = ##t
			\new Staff = "RH" \rightHand
			\new Staff = "LH" \leftHand 
		>>
		\midi{}
		\layout{}
}
