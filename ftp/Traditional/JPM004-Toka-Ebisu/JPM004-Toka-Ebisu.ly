
\version "2.19"

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
mutopiatitle = ""    %  if not set taken from title field
mutopiacomposer = "Traditional"    %
mutopiapoet = ""    %  
mutopiaopus = ""    %  
mutopiainstrument = "Shamisen"    %  
date = ""    %  optional - date piece composed
source = "Nagai, Iwai and Obata, Kenhachiro, \"Seiyo gakufu Nihon zokkyokushu\", pub. Miki Shoten, Osaka, 1895.  English title, \"A Collection of Japanese Popular Music.\" "
style = "Folk"    %  
copyright = "Public Domain"    %  
maintainer = "patrick stanistreet"    %  
maintainerEmail = "haematopus@gmail.com"    %  
maintainerWeb = "http://www.daisyfield.com/music/"
moreInfo = "Typeset by Tom Potter, 2007."  

title = "Toka-Ebisu"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"
}


shamisenOne =  {
% 1
    d'4.  f'8 | 
%    d'4. ^\markup{ \bold {Allegro} } \mf f'8 | 
% 2
    g'8 [ g'8 ] f'8 [ g'8 ] | 
% 3
    c''8 [ as'8 ] g'8 [ e'8 ] | 
% 4
    d'4 es''8 [ es''8 ] | 
% 5
    d''8 [ c''8 ] as'8 [ g'8 ] | 
% 6
    f'8 [ g'8 ] as'8 [ c''8 ] | 
% 7
    g'8. [ g'16 ] g'8 [ es'8 ] | 
% 8
    d'4 c'8 [ d'8 ] | 
% 9
    f'8 [ g'8 ] f'8 [ g'8 ] | 
\barNumberCheck #10
    as'8. [ c''16 ] d''8 [ c''8 ] | 
% 11
    g'8 [ es''8 ] r8 es''8 | 
% 12
    <d' d''>4. r8 | 
% 13
    d''8 [ d''8 ] bes'8 [ bes'8 ] | 
% 14
    a'4 a'8 [ g'8 ] | 
% 15
    r8 a'8 r8 a'8 | 
% 16
    d'8 [ c''8 ] as'8 [ g'8 ] | 
% 17
    f'8 [ f'8 ] f'8 [ g'8 ] | 
% 18
    as'8 [ as'8 ] g'8 [ c''8 ] | 
% 19
    es''8 [ d''8 ] c''8 [ as'8 ] | 
\barNumberCheck #20
    g'2 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 2/4 
    \clef "treble"
    \key f \major
    \tempo "Allegro"  4 = 80
    \transposition  c
    \set Staff.midiInstrument = "shamisen"
    \shamisenOne
>>

\layout  { }
\midi  { }
}

