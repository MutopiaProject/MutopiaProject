\version "2.16.1"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
	
\paper{
	indent = 10. \mm
	line-width = 189. \mm
	top-margin = 20\mm
	bottom-margin = 13\mm
	
	system-system-spacing #'basic-distance = #15
	markup-system-spacing #'basic-distance = #6
	top-system-spacing #'basic-distance = #12
	
	evenHeaderMarkup = \oddHeaderMarkup
}

\header{
  title =	 "Konzert Nr. 3 Es dur"
  subtitle =     \markup{ \center-column { "für Horn und Orchester" " " \normal-text "Horn in F" } }
  composer =	 \markup{ \override #'( baseline-skip . 2.5 ) \right-column { \caps "Wolfgang Amadeus Mozart" "(1756-1792)" }}
  opus =         "KV 447"

  enteredby =	 "HWN"
  %updated from v1.5.57 to v2.16.1 by Javier Ruiz-Alma (2014/01/18)
  license = "Public Domain"
  editor = "Henri Kling"
  mutopiatitle = "Horn Concerto No. 3"
  mutopiacomposer = "MozartWA"
  mutopiaopus = "KV 447"
  mutopiainstrument = "Horn in F"
  style = "Classical"
  maintainer = "hanwen@cs.uu.nl"
  maintainerEmail = "hanwen@cs.uu.nl"
  maintainerWeb = "http://www.cs.uu.nl/~hanwen/"
  lastupdated = "2014/01/18"
  source = "Edition Breitkopf 2563 (Ed. Henri Kling)"

 footer = "Mutopia-2014/03/28-25"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%{

This is the Mozart 3 for horn.  It's from an Edition Breitkopf EB
2563, edited by Henri Kling. Henri Kling (1842-1918) was a horn
virtuoso that taught in Geneva. 

%}

\include "mozart-hrn3-allegro.ly"
\include "mozart-hrn3-romanze.ly"
\include "mozart-hrn3-rondo.ly"



