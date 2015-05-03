\version "2.18.0"

% ****************************** Final Version *********************************
mbreak = { }
renderingOff = { }
renderingOn = { }
% ******************************************************************************

% ****************************** Draft Version *********************************
% comment out these lines to render a final version
%	mbreak = { \break }
%	renderingOff =  { \set Score.skipTypesetting = ##f }
%	renderingOn = { \set Score.skipTypesetting = ##t }
% ******************************************************************************

\header
{
  title = "24 Caprices: Caprice No. 3"
  composer = "Niccolò Paganini"
  opus = "Op. 1"

  mutopiatitle = "24 Caprices for Solo Violin: 03"
  mutopiacomposer = "PaganiniN"
  mutopiaopus = "O 1"
  mutopiainstrument = "Violin"
  date = ""
  source = "http://imslp.org/wiki/Caprices_for_Solo_Violin%2C_Op._1_%28Paganini%2C_Niccol%C3%B2%29"
  style = "Romantic"
  license = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Andrew Buck"
  maintainerEmail = "andrew.buck@ndsu.edu"
  lastupdated = "2008/Jun/12"
  footer = "Mutopia-2008/06/15-1459"
}

\include "Caprice_3_notes.ly"

\score
{
  \capriceThree

  \layout { }
}

\score
{
  \unfoldRepeats
  {
    \capriceThree
  }

  \midi { }
}
