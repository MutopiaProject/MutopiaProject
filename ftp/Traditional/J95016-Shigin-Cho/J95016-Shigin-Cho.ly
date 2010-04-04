
\version "2.12.0"

tsfooter = \markup { 
\column {
  \line {"Arranged by:  Nagai, Iwai and Obata, Kenhachiro"} 
  \line {"Source:  Seiyo gakufu Nihon zokkyokushu,  pub. Miki Shoten, Osaka, 1895."}
  \line {"English title:  \"A Collection of Japanese Popular Music.\""}
  \line {"Copyright Public Domain  Typeset by Tom Potter 2007"}
  \line {"http://www.daisyfield.com/music/"}
}
}

\paper {
  top-margin = 2 \cm
  bottom-margin = 2 \cm
%  oddFooterMarkup = \tsfooter  
}

\header {
mutopiatitle = "Shigin-Cho, Nanagon Zeku"
mutopiacomposer = "Traditional"
%mutopiapoet = ""
%mutopiaopus = ""
mutopiainstrument = "Shamisen"
%date = ""
source = "Nagai, Iwai and Obata, Kenhachiro, \"Seiyo gakufu Nihon zokkyokushu\", pub. Miki Shoten, Osaka, 1895.  English title, \"A Collection of Japanese Popular Music.\" "
style = "Folk"
copyright = "Public Domain"
maintainer = "Anonymous"
%maintainerEmail = ""
maintainerWeb = "http://www.daisyfield.com/music/"
moreInfo = "Typeset by Tom Potter, 2007."  

encodingdate = "2008-06-09"
title = "Shigin-Cho, Nanagon Zeku"
%subtitle = "Shigin Song, Nanagon Poem."
arranger = "Arr. Y. Nagai, K. Obata"
 footer = "Mutopia-2010/04/04-1769"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

shamisenOne =  {
% 0
    \partial 4   b'4  | 
%    b'4 s2. | 
% 1
    b'4 b'16 [ b'16 b'8 ] b'16 [ b'16 b'8 ] a'4 | 
% 2
    \numericTimeSignature \time 3/4  
    b'16 [ d''8. ] e''16 [ d''8. ] b'8. [ a'16 ] | 
% 3
    \numericTimeSignature \time 4/4  
    a'4 ( b'8 [ e'8 ] d'4 e'8 ) r8 | 
% 4
    e'4 fis'8. [ a'16 ] a'4 b'8 [ b'8 ] | 
% 5
    a'4 b'8 [ d''8 ] e''8 [ d''8 ] b'4 | 
% 6
    b'8. [ a'16 ] a'16 [ a'16 ] a'4. ^\fermata r8 r8 | 
% 7
    e''4 e''8 [ d''8 ] d''4 d''8 [ b'8 ] | 
% 8
    a'4 a'8 [ b'8 ] d''8 [ b'8 ] a'4 ( | 
% 9
    \time 5/4  
    b'8 [ e'8 ] d'4 e'4 ) r4 d'4 | 
\barNumberCheck #10
    \numericTimeSignature \time 4/4  
    e'8. [ fis'16 ] a'4 b'8 [ b'8 ] a'4  |
% 11
    b'8 [ d''8 ] e''8 [ d''8 ] c''4 ( b'8. [ a'16 ) ] | 
% 12
    a'16 [ a'16 ] a'4. ^\fermata r4 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \numericTimeSignature \time 4/4
    \clef "treble"
    \key g \major
    \tempo  4 = 90
    \transposition c
    \set Staff.midiInstrument = "shamisen"
    \shamisenOne
>>

\layout  { }
\midi  { }
}

