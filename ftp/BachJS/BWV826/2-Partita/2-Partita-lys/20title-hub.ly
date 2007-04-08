% This is the file to bring together all 6 movements of Partita #2.
% and print them with headers, so they stand on their own.
% Engraved by LilyPond, edited by Carl M. Bolstad on 8/7/2006.

\version "2.8.4"

\header {
  title = "Partita II"
  subtitle = "Clavierubung part I"
  composer = "J. S. Bach"
  mutopiatitle = "Six Partitas (Clavierubung part I): No. 2"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 826"
  mutopiainstrument = "Harpsichord, Piano, Clavichord"
  date = "1731"
  source = "Bach-Gesellschaft"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Carl Bolstad"
  maintainerEmail = "ordinaryguy AT  zipcon. DOT net"
  maintainerWeb = " "
  lastupdated = "2006/August/7"
  opus = "BWV 826"
 footer = "Mutopia-2006/08/21-602"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


% Now just pull in the files for the different movements by reference:

\include "21hub.ly"
\include "22hub.ly"
%\include "3/hub.ly"
%\include "4/hub.ly"
%\include "5/hub.ly"
%\include "6/hub.ly"
