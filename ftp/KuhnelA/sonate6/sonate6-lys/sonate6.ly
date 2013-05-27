\version "2.6.0"
#(set-global-staff-size 18)

%mutopia header
%\header {
% maintainer = "Jean-Marc Legrand"
% maintainerEmail = "cjmlegrand@libertysurf.fr"
% lastupdated = "02/12/2004"
%}



\header {
  
	title = "Soanata a due viola da gamba VI"
	composer = "August KUHNEL (1645-1700)"

        % moved minimal headers here from commented section above
	mutopiacomposer = "KuhnelA"
	mutopiainstrument = "Ensemble: Basso, viola da gamba, viola da gamba"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 2.5"
	mutopiatitle = "Sonata a due viola da gamba n°6"
	date = "1698"
	source = "fac simile"

        maintainer = "Jean-Marc Legrand"
        footer = "Mutopia-2005/08/07-581"
        tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
	}

\include "bI01.ly"
\include "bII01.ly"
\include "bc01.ly"

\score 	{
 

	
		 
		<<     
	\context Staff ="basseI" \basseI
	\context Staff ="basseII" \basseII
	\context Staff ="bassec" \bc
		>>
        \header { piece = " " }
	\layout {textheight= 30.0 \cm
		interscoreline = 19 \pt
		
		}	
        \midi { \tempo 4 = 112 }
	}




\include "bI02.ly"
\include "bII02.ly"
\include "bc02.ly"

\score 	{
 	
		 
		<<     
	\context Staff ="basseI" \basseI
	\context Staff ="basseII" \basseII
	\context Staff ="bassec" \bc
		>>
        \header { piece = \markup{ \italic { \bold "Gavotta" "allegro" } } }
	\layout {
		textheight= 30.0 \cm
		interscoreline = 19 \pt
		}	
        \midi { \tempo 4 = 112 }
	}



\include "bI03.ly"
\include "bII03.ly"
\include "bc03.ly"

\score 	{
 	
		 
		<<     
	\context Staff ="basseI" \basseI
	\context Staff ="basseII" \basseII
	\context Staff ="bassec" \bc
		>>
        \header { piece = \markup{ \italic { \bold "Sarabande" "adagio" } } }
	\layout {
		textheight= 30.0 \cm
		interscoreline = 19 \pt
		}	
        \midi { \tempo 2 = 88 }
	}





\include "bI04.ly"
\include "bII04.ly"
\include "bc04.ly"

\score 	{
 	
		 
		<<     
	\context Staff ="basseI" \basseI
	\context Staff ="basseII" \basseII
	\context Staff ="bassec" \bc
		>>
        \header { piece = \markup{ \italic { \bold "Giga" "allegro" } } }
	\layout {
		textheight= 30.0 \cm
		interscoreline = 19 \pt
		}	
        \midi { \tempo 4 = 112 }
	}
