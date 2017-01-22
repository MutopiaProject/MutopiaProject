\version "2.8.4"

\header {
title = "Waltz"  composer = "Johannes Brahms, Op 39, No. 15"
mutopiatitle = "Waltz No. 15"
mutopiacomposer = "BrahmsJ"
mutopiaopus = "Op. 39"
mutopiainstrument = "Piano"
date = "19th C"
source = "Ed. R. Joseffy"
style = "Romantic"
copyright = "Public Domain"
maintainer = "Brian D. Rude"
maintainerEmail = "brianrude@hotmail.com"
maintainerWeb = "http://brianrude.com"
lastupdated = "2006/July/8"
 footer = "Mutopia-2006/07/30-794"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


\paper {
	#(set-paper-size "letter")
%	#(set-paper-size "a4")
  ragged-bottom=##f
  ragged-last-bottom=##f
}

     upper = \relative c'' {
        \clef treble
        \key aes \major
        \time 3/4

%1t
	<ees, c'>4. <c aes'>8 <c aes'> <ees c'>
%2t
	<ees c'>4. <c aes'>8 <c aes'> <ees c'>
%3t
	<<{des' ees16 des c4 bes} \\ { <f aes>4 <ees aes>  <des aes'>}>>
%4t
	<ees aes c>4. aes8 aes <c ees>
%5t
	<aes c f>4. <aes c>8 <aes c> ees'	\break
%6t
	<aes, c f>4. <aes c>8 <aes c> ees'
%7t
	<<{g f ees4 d} \\ {<g, c>4 <g c> <f b>}>>
%8t		line 21
	<g c ees>4. <ees g>8 <ees g> c'
%9t
	<ees, c'>4. <c aes'>8 <c aes'> <ees c'>
%10t
	<ees c'>4. <c aes'>8 <c aes'> <ees c'>
%11t
	<<{des' ees16 des c4 bes} \\ {<f aes> <ees aes> <des aes'>}>>	\break
%12t
	<ees aes c>4. aes8 aes <c ees>
%13t
	<aes c f>4. <aes c>8 <aes c> ees'
%14t
	<aes, c f>4. <aes c>8 <aes c> ees'
%15t
	<<{g f ees4 d} \\ {<g, c>4 <g c> <f b> }>>
%16t
	<g c ees>4. <ees g c>8 <ees g c> ees'
%17t
	<ees, g bes des ees>4. <ees g bes>8 <ees g bes> <des' ees>	\break
%18t
	<ees, aes c ees>4. <aes c>8 <aes c> ees'
%19t
	<aes, c ees ges aes>4. <aes c ees>8 <aes c ees> <ges' aes>
%20t
	<aes, des f aes>4. <aes des f>8 <aes des f> aes'
%21t
	<aes, bes d f bes>4. <bes d f>8 <bes d f> aes'
%22t
	<<{aes8 g f4 ees} \\ {<bes des>4 <aes des> <g des'>}>>
%23t
	<ees c'>4. <c aes'>8 <c aes'> <ees c'>			\break
%24t
	<ees c'>4. <c aes'>8 <c aes'> <ees c'>
%25t
	<<{des' ees16 des c4 bes} \\ {<f aes>4 <ees aes> <des aes'>}>>
%26t
	<ees aes c>4. aes8 aes <c ees>
%27t
	<aes c f>4. <aes c>8 <aes c> ees'
%28t
	<aes, c f>4. <aes c>8 <aes c> ees'			\break
%29t
	<<{aes ees des4 bes} \\ { aes4 g <des ees>}>>
%30t
	<c ees aes>4 r8 <ees aes c> <ees aes c> ees'
%31t
	<ees, g bes des ees>4. <ees g bes>8 <ees g bes> <des' ees>
%32t
	<ees, aes c ees>4. <aes c>8 <aes c> ees'
%33t
	<aes, c ees ges aes>4. <aes c ees>8 <aes c ees> <ges' aes>
%34t
	<aes, des f aes>4. <aes des f>8 <aes des f> aes'		\break
%35t
	<aes, bes d f bes>4. <bes d f>8 <bes d f> aes'
%36t
	<<{aes8 g f4 ees} \\ {<bes des> <aes des> <g des'>}>>
%37t
	<ees' c'> \times 2/3 {r8 <c, aes'>[ <ees c'>] } \times 2/3 { <c' aes'>8[ 
<ees c'> <c aes'>]}
%38t
	<ees c'>4 \times 2/3 {r8 <c, aes'>[ <ees c'>] } \times 2/3 { <c' aes'>[ 
<ees c'> <c aes'>] }
%39t
	<<{des'8 ees16 des c4 bes} \\ {<f aes>4 <ees aes> <des aes'>}>>			\break
%40t					 split last three notes into two voices for tie
	<ees aes c>4 \times 2/3 {r8 <c, aes'>[ <ees c'>]} \times 2/3 { <<{s8 s s} 
\\
	{<c' aes'>8[ <ees c'> <f c'>~]}>>}
%41t
	<<{<aes f'>4} \\ {<f c'>4}>> \times 2/3 {r8 <c, aes'>[ <ees c'>]} \times 
2/3 {<<{s8 s s} \\ {<c' aes'>8[ <ees c'> < f c'>~]}>>}
%42t
	<<{   <aes f'>4} \\ {<f c'>4}>> \times 2/3 {r8 <c, aes'>[ <ees c'>]} \times 
2/3 {<<{s8 s s} \\ {<c' aes'>8[ <ees c'> < aes c>]~}>>}
%43t
	<<{aes'8 ees des4 bes} \\ {<aes c>4 <des, g> <bes des>}>>
%44t
	<<{aes'4} \\ {<aes, c>4}>> r4 r

     }

     lower = \relative c {
        \clef bass
        \key aes \major
        \time 3/4


%1b
	aes4<ees' aes c> <c ees aes>
%2b
	aes, <ees'' aes c> <c ees aes>
%3b
	aes <des f des'> < f aes>
%4b
	aes,, <ees'' aes c> <c ees aes>
%5b
	f, <f' aes c f> <aes, ees' c'>
%6b
	f <f' aes c f> <aes, ees' c'>
%7b
	ees <ees' g c> <g, f' b>
%8b
	c, <ees' g c> <c ees>
%9b
	aes <ees' aes c> <c ees aes>
%10b
	aes, <ees'' aes c> <c ees aes>
%11b
	aes <des f des'> <f aes>
%12b
	aes,, <ees'' aes c> <c ees aes>
%13b
	f, <f' aes c f> <aes, ees' c'>
%14b
	f <f' aes c f> <aes, ees' c'>
%15b
	ees <ees' g c> <g, f' b>
%16b
	c, <ees' g c> <c ees g>
%17b
	ees, <ees' g des'> <ees g>
%18b
	aes, <ees' aes c> <ees aes>
%19b
	aes,, <aes'' c ges'> <aes c>
%20b
	des,, <aes'' des f> <aes des>
%21b
	<bes,, bes'> <aes'' bes d f> <f bes d>
%22b
	ees, <ees' bes' des> <ees bes' ees>
%23b
	aes, <ees' aes c> <c ees aes>
%24b
	aes, <ees'' aes c> <c ees aes>
%25b
	aes <des f des'> <f aes>
%26b
	aes,, <ees'' aes c> <c ees aes>
%27b
	f, <f' aes c f> <aes, ees' c'>
%28b
	f <f' aes c f> <aes, ees' c'>
%29b
	c, ees <ees' g>
%30b
	aes, <ees' aes> <ees aes c>
%31b
	ees, <ees' g des'> <ees g>
%32b
	aes, <ees' aes c> <ees aes>
%33b
	aes,, <aes'' c ges'> <aes c>
%34b
	des,, <aes'' des f> <aes des>
%35b
	<bes,, bes'> <aes'' bes d f> <f bes d>
%36b
	ees, <ees' bes' des> <ees bes' ees>
%37b
	aes,, <ees'' aes c> <c ees aes>
%38b
	aes, <ees'' aes c> <c ees aes>
%39b
	des, <des' aes'> <f aes>
%40b
	aes,, <ees'' aes c> <c ees aes>
%41b
	f, <f' aes c> <aes, ees' aes>
%42b
	f <f' aes c> <aes, ees' aes>
%43b
	c, ees <ees' g des'>
%44b
	aes,, <ees'' aes c> r



     }

     \score {
        \new PianoStaff <<
           \set PianoStaff.instrument = "Piano  "
           \new Staff = "upper" \upper
           \new Staff = "lower" \lower
        >>
        \layout { }
        \midi { \tempo 4=116 }
     }

