
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
mutopiatitle = "Shashari"
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

title = Shashari
%subtitle = ""
arranger = "Arr. Y. Nagai, K. Obata"
 footer = "Mutopia-2010/04/04-1767"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

shamisenOne =  {
% 1
    <b b'>8 [ <b b'>8 ] <b b'>8 [ a'8 ] | 
% 2
    <b b'>8 [ <b b'>8 ] <b b'>8 [ a'8 ] | 
% 3
    f'8 [ f'8 ] a'8 [ f'8 ] | 
% 4
    e'4 r4 | 
% 5
    <b b'>8 [ <b b'>8 ] <b b'>8 [ a'8 ] | 
% 6
    <b b'>8 [ <b b'>8 ] <b b'>8 [ a'8 ] | 
% 7
    f'8 [ f'8 ] a'8 [ f'8 ] | 
% 8
    e'4 r4 | 
% 9
    e''16 [ e''8 c''16 ] b'8 [ c''16 b'16 ] | 
\barNumberCheck #10
    a'16 [ a'16 b'16 a'16 ] b'4 | 
% 11
    e''16 [ e''8 c''16 ] b'8 [ c''16 b'16 ] | 
% 12
    a'16 [ a'16 b'16 a'16 ] b'4 | 
% 13
    e''8 [ c''8 ] b'8 [ a'8 ] | 
% 14
    f'8 [ e'8 ] a'8 [ f'8 ] | 
% 15
    e'8 [ c'8 ] b4 | 
% 16
    b'8 [ b16 b16 ] b'8 [ b16 b16 ] | 
% 17
    b'8 [ b16 b16 ] b'8 [ b16 b16 ] | 
% 18
    c''8 [ b'8 ] a'8 [ f'8 ] | 
% 19
    e'4 b'8 [ a'8 ] | 
\barNumberCheck #20
    <b b'>4 r4 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 2/4 
    \clef "treble"
    \key c \major
    \tempo  4 = 90
    \transposition c
    \set Staff.midiInstrument = "shamisen"
    \shamisenOne
>>

\layout  { }
\midi  { }
}
