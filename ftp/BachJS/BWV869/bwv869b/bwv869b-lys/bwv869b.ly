\version "2.18.2"
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
	license = "Public Domain"
	maintainer = "Itay Perl"
	maintainerEmail = "itay.perl[at ]gmail.com"

 footer = "Mutopia-2015/09/01-1563"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\score {
		\new PianoStaff <<
			\accidentalStyle piano
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
