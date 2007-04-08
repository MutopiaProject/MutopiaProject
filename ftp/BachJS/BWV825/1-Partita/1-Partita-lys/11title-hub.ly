% title-hub11.ly
% This is the file to add the header to the first movement of Partita #1.
% Engraved by LilyPond, edited by Carl M. Bolstad on 4/18/2004.
% Updated to version 2.4.1 from 2.2.5 on 1/29/2005.

\version "2.7.40"

\header {
  title = "Partita I"
  subtitle = "Clavierubung part I"
  composer = "J. S. Bach"
  mutopiatitle = "Six Partitas (Clavierubung part I): No. 1"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 825"
  mutopiainstrument = "Harpsichord, Piano, Clavichord"
  date = "1731"
  source = "Bach-Gesellschaft"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Carl Bolstad"
  maintainerEmail = "ordinaryguy AT  zipcon. DOT net"
  maintainerWeb = " "
  lastupdated = "2004/August/30"
  opus = "BWV 825"
 footer = "Mutopia-2006/08/21-474"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


% Now just pull in the files for the first movement by reference:

% First movement, the Praeludium:

\include "11hub.ly"
