
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
mutopiatitle = "Saakorasa"
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

title = Saakorasa
%subtitle = "One Mile, Two Miles"
arranger = "Arr. Y. Nagai, K. Obata"
 footer = "Mutopia-2010/04/04-1764"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

shamisenOne =  {
% 1
    a'8 [ a'8 ]  b'4 | 
% 2
    a'8 [ a'8 ] b'4 | 
% 3
    b'8 [ a'8 ] b'4 | 
% 4
    d''4 b'4 ~ | 
% 5
    b'8 [ g'8 ] a'4 | 
% 6
    d''8 [ d''8 ] e''8 ( [ d''8 ] | 
% 7
    b'8 [ a'8 ) ] b'4 | 
% 8
    a'8. [ g'16 ] e'4 ~ | 
% 9
    e'4 a'4 | 
\barNumberCheck #10
    a'8 [ g'8 ] a'4 | 
% 11
    d''4 b'4 ~ | 
% 12
    b'8 [ a'8 ] b'8 [ b'16 b'16 ] | 
% 13
    a'8 [ g'8 ] e'4 ~ | 
% 14
    e'2 | 
% 15
    g'8 [ g'8 ] a'8. [ g'16 ] | 
% 16
    e'8 [ d'8 ] e'4 | 
% 17
    e'4 e'4 | 
% 18
    d''8 [ d''8 ] e''8. [ d''16 ] | 
% 19
    b'8 [ a'8 ] b'4 | 
\barNumberCheck #20
    b'4 b'4 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 2/4 
    \clef "treble"
    \key c \major 
    \tempo 4 = 120
    \transposition c 
    \set Staff.midiInstrument = "shamisen"
    \shamisenOne
>>

\layout  { }
\midi  { }
}

