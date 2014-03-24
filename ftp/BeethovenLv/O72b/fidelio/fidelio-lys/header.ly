\version "2.18.0"

\header {
	title 				= "Overture"
	subtitle 			= \markup{\normalsize "zu"}
	subsubtitle			= \markup{\huge "Fidelio"}
	opus				= "Op. 72b"
	composer			= "L. van Beethoven"

	mutopiatitle 		= "Fidelio Overture"
 	mutopiacomposer 	= "BeethovenLv"
 	mutopiaopus 		= "Op. 72b"
 	mutopiainstrument 	= "Orchestra: Flutes, Oboes, Clarinets, Bassoons, Horns, Trumpets, Tenor Trombone, Bass Trombone, Timpani, Violins, Viola, 'Cello, Bass"
 	date 				= "1814/May/26"
 	source 				= "Eulenburg, 1919"
	style 				= "Romantic"
 	license				= "Public Domain"
 	maintainer 			= "Will Oram"
 	maintainerEmail 	= "spamguy@foxchange.com"

 footer = "Mutopia-2014/03/24-377"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}
\paper {
  top-margin = 10 \mm
  bottom-margin = 8 \mm
}
