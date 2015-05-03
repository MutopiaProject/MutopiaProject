\version "2.18.2"

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

 footer = "Mutopia-2015/05/03-1459"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
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
