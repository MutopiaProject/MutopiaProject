\version "2.11.60"
\include "notes.lyi"

#(set-global-staff-size 16)

\header {
	title = "Fuga XXIV"
	opus = "BWV 869"
	composer = "Johann Sebastian Bach (1685-1750)"
	
	mutopiatitle = "Das Wohltemperierte Clavier I, Fuga XXIV"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV 869"
	mutopiainstrument = "Harpsichord, Piano"
	source = "Breitkopf & Härtel, 1866"

	style= "Baroque"
	copyright = "Public Domain"
	maintainer = "Itay Perl"
	maintainerEmail = "itay.perl[at ]gmail.com"
 footer = "Mutopia-2008/09/28-1563"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {
		\new PianoStaff <<
			#(set-accidental-style 'piano)
			\set PianoStaff.connectArpeggios = ##t
			\new Staff = "RH" { << \soprano \\ \alto >> }
			\new Staff = "LH" { << \tenore \\ \basso >> }
		>>
		\midi {
		    % see http://lsr.dsi.unimi.it/LSR/Item?id=438
		    \context {
		  		\Staff
				\remove "Staff_performer"
			}
			\context {
			  \Voice
			  \consists "Staff_performer"
			}
		}
		\layout{}
}
