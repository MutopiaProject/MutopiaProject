
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
mutopiainstrument = "Koto"    %  
date = ""    %  optional - date piece composed
source = "Nagai, Iwai and Obata, Kenhachiro, \"Seiyo gakufu Nihon zokkyokushu\", pub. Miki Shoten, Osaka, 1895.  English title, \"A Collection of Japanese Popular Music.\" "
style = "Folk"    %  
copyright = "Public Domain"    %  
maintainer = "patrick stanistreet"    %  
maintainerEmail = "haematopus@gmail.com"     %  
maintainerWeb = "http://www.daisyfield.com/music/"
moreInfo = "Typeset by Tom Potter, 2007."  

title = "Doteo-Toruwa"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"
}

kotoOne =  {
%    \clef "treble" \key c \major \time 4/4 
% 1
    b'4  a'4 b'4. a'8  | 
%    b'4 -\markup{ \bold {Moderato} } \f a'4 b'4. a'8 \p | 
% 2
    b'4 b'2 a'8 [ b'8 ] | 
% 3
    b4 r4 e'4 b8 [ d'8 ] | 
% 4
    e'4 a'4 ( f'4 e'4 | 
% 5
    c'4 ) e'4 c'4 b4 | 
% 6
    a'4 b'4 c''4 e''4 | 
% 7
    c''4 b'8 [ c''8 ] a'4 f'4 | 
% 8
    e'2 b4.  d'8 | 
% 9
    e'8 r8 f'8 [ f'8 ] r8 a'8 [ f'8 e'8 ] | 
\barNumberCheck #10
    a'8 [ b'8 c''8 ] r8 d''8 [ e''8 f''8 ] r8 | 
% 11
    e'8 [ e''8 r8 c''8 ] b'4 a'8 [ e'8 ] | 
% 12
    e''4 e''4  e''2 | 
% 13
    e''2 r4 f''8 [ e''8 ] | 
% 14
    d''8 [ e''8 ] f''4 <e' e''>4 r4 | 
% 15
    f''2 e''8 [ e''8 r8 e''8 ] | 
% 16
    a'8 r8 b'8 r8 e'8 r8 f''8 r8 | 
% 17
    e''8 e''4 c''8 b'4 b'8 [ c''8 ] | 
% 18
    e''4 c''4 b'4 ( a'4 ) | 
% 19
    f'4 e'2 c''8 [ b'8 ] | 
\barNumberCheck #20
    a'8 [ b'8 a'8 f'8 ] e'4 a'8 [ f'8 ] | 
% 21
    f'4 f'4 f'4 _> f'4 | 
% 22
    f'4 f'8 [ a'8 ] b'4 c''8 [ a'8 ] | 
% 23
    r8 f'4 a'8 b'8. [ a'16 ] f'4 | 
% 24
    e'2 e''4 c''4 | 
% 25
    b'4 ( a'4 f'4 ) a'4 ( | 
% 26
    b'8 ) [ c''8 ] b'4 b'4 b'4 | 
% 27
    b'2 e'4. _> d'8 | 
% 28
    e'4. c'8 e'8 [ f'8 e'8 c'8 ] | 
% 29
    b4 a''4  f''4 a''4 | 
\barNumberCheck #30
    f''4 e''4 c''4 e''4 | 
% 31
    c''8 r8 c''8 [ b'8 ] a'8 [ f'8 a'8 b'8 ] | 
% 32
    c''8 [ b'8 ] r8 a'8 b'4. c''8 | 
% 33
    b'4 a'4 <b b'>4 ^\fermata r4 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 4/4 
    \clef "treble"
    \key c \major 
    \tempo  4 = 110
    \set Staff.midiInstrument = "koto"
    \kotoOne
>>

\layout  { }
\midi  { }
}

