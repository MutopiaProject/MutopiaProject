% Vier Sonaten fur Violine allein
% 4 unaccompanied violin sonatas
% by Max Reger, Op 42
% This is Sonata #3
% 2/14/2009 CB

\version "2.12.0"

\include "english.ly"

\paper {
%  #(set-paper-size "letter")
  top-margin = 		0.25\in
  bottom-margin = 	0.25\in
  left-margin = 	0.7\in
  line-width = 		7.25\in
%  between-system-space = 0.5\cm
%  between-system-padding = #0.5
}

\header {
    title = "Sonata 3 für Violine allein"
    composer = "Max Reger, Op. 42, Heft 2 No. 3"
    arranger = "ed. Willy Burmester"
   % Mutopia Project specific headers:
	mutopiatitle = "Sonata 3 for Unaccompanied Violin"
	mutopiacomposer = "RegerM"
	mutopiaopus = "42, Heft 2 No. 3"
	mutopiainstrument = "violin"
	date = "1900"
	source = "Jos. Aibl Verlag G.m.b.H Leipzig, 1900"
	style = "Classical"
	copyright = "Creative Commons Attribution 3.0"
	maintainer = "Carl M. Bolstad"
	maintainerEmail = "carl dot bolstad at gmail dot com"

 footer = "Mutopia-2009/11/30-1690"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

\include "functions.ly"

  % The following command is to make LilyPond only typeset the last
  % 10 measures of music, to save lots of time while typesetting.
  % Be sure to comment it out when we're done!!
% showLastLength = R2*10

\score {
  \include "music.1.ly"
  \layout { raggedlast = ##t }

  \midi { 
  \context {
    \Score
    tempoWholesPerMinute = #(ly:make-moment 66 8)
  }
  }

}

\pageBreak
%% 2nd movement: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {

  \include "music.2.ly"

 \layout { raggedlast = ##t }

\midi { 
  \context {
    \Score
    tempoWholesPerMinute = #(ly:make-moment 69 4)
  }
}

}

\pageBreak
%% 3rd movement: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\score {

  \include "music.3.ly"

  \layout { raggedlast = ##t }

\midi { 
  \context {
    \Score
    tempoWholesPerMinute = #(ly:make-moment 276 8)
    }
      }

}

%% 4th movement: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\score {

  \include "music.4.ly"

  \layout { raggedlast = ##t }

\midi { 
  \context {
    \Score
    tempoWholesPerMinute = #(ly:make-moment 83 4)
    }
      }

}
