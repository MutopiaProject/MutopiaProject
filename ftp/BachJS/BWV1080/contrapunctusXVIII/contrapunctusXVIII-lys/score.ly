\version "2.8.0"

\header{
title="Die Kunst der Fuge"
subtitle="Contrapunctus XVIII a 4"
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus XVIII a 4 (rectus, inversus)"
mutopiacomposer = "BachJS"
mutopiaopus = "BWV 1080"
mutopiainstrument = "String Ensemble"
date = "?-1750"
source = "Breitkopf & Härtel, 1885"
style = "Baroque"
copyright = "Public Domain"
maintainer = "Arnaud Gossart"
maintainerEmail = "arnaud.gossart@tiscali.fr"
maintainerWeb = "http://arnaud.gossart.chez-alice.fr/"
lastupdated = "2006/May/08"

 footer = "Mutopia-2006/05/08-764"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


#(set-global-staff-size 16)
%#(set-default-paper-size "a4") 
%#(set-default-paper-size "letter") 

\paper{
	ragged-bottom=##t
}

% File with voices definitions %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "contrapunctusXVIII.ly"

% Score %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score{<<	
	\keepWithTag #'rectus \music
	\keepWithTag #'inversus \music
	>>
	\layout{}
}

