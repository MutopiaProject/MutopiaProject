% Vier Sonaten fur Violine allein
% 4 unaccompanied violin sonatas
% by Max Reger, Op 42
% 7/3/2007 CB

\version "2.10.29"

\include "english.ly"

\paper {
%  #(set-paper-size "letter")
  top-margin = 		0.5\in
  bottom-margin = 	0.5\in
  left-margin = 	0.75\in
  line-width = 		7\in
}

\header {
    title = "Vier Sonaten für Violine allein"
    subtitle = "Sonate I"
    composer = "Max Reger, Op. 42, Heft 1 No. 1"
    arranger = "ed. Willy Burmester"
   % Mutopia Project specific headers:
	mutopiatitle = "Sonata 1 for Unaccompanied Violin"
	mutopiacomposer = "RegerM"
	mutopiaopus = "42, Heft 1 No. 1"
	mutopiainstrument = "Violin"
	date = "1900"
	source = "Jos. Aibl Verlag G.m.b.H Leipzig, 1900"
	style = "Classical"
	copyright = "Public Domain"
	maintainer = "Carl M. Bolstad"
	maintainerEmail = "ordinaryguy@zipcon.net"
 footer = "Mutopia-2008/04/16-1025"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "english.ly"

\include "functions.ly"

\score {
  \include "music.1.1.ly"
  \layout {raggedlast = ##t }
  \midi { }
}

%% 2nd movement: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {

  \include "music.1.2.ly"

\layout {raggedlast = ##t }
\midi { 
  \context {
    \Score
    tempoWholesPerMinute = #(ly:make-moment 72 8)
  }
}
}

%% 3rd movement: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  % The following command is to make LilyPond only typeset the last
  % 5 measures of music, to save lots of time while typesetting.
  % Be sure to comment it out when we're done!!
%  showLastLength = R2.*10

\score {

  \include "music.1.3.ly"

  \layout {raggedlast = ##t }
  \midi { 
  \context {
    \Score
    tempoWholesPerMinute = #(ly:make-moment 176 4)
    }
  }
}
