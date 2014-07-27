\version "2.19.7"

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
mutopiacomposer = "Traditional"
mutopiapoet = ""    %  
mutopiaopus = ""    %  
mutopiainstrument = "Shamisen"
date = ""    %  optional - date piece composed
source = "Nagai, Iwai and Obata, Kenhachiro, \"Seiyo gakufu Nihon zokkyokushu\", pub. Miki Shoten, Osaka, 1895.  English title, \"A Collection of Japanese Popular Music.\" "
style = "Folk"
license = "Public Domain"
maintainer = "patrick stanistreet"
maintainerEmail = "haematopus@gmail.com"
maintainerWeb = "http://www.daisyfield.com/music/"
moreInfo = "Typeset by Tom Potter, 2007."  

title = "Sedo no Danbatake"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1966"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

shamisenOne =  {
% 1
    f'4.  g'8 c''4 a'4 | 
%    f'4. -\markup{ \bold {Moderato} } \f g'8 c''4 a'4 | 
% 2
    c'4 d''8 [ d''8 ] <c' c''>4 r4 | 
% 3
    g'4.  a'8 c''4 a'4 | 
% 4
    c'4 d''8 [ d''8 ] <c' c''>4 r4 | 
% 5
    d''4 d''4 ^> c'4 a'4 | 
% 6
    g'4 f'4 g'4 d''4 ~ ^>  |  % bar check used the one after repeat volta ?

\repeat volta 3 {
%        | 
% 7
        d''4 d''4 ^> c''4 c''4 | 
% 8
        a'4 c''4 c'4 d''8 [ d''8 ] | 
% 9
        d''4 d''4 c''8 [ c''8 ] r8 a'8 | 
\barNumberCheck #10
        g'4 f'4 d'4 f'4 | 
% 11
        d'4 f'4 g'4 a'8 [ a'8 ] | 
% 12
        a'4 g'4 c'4 a'8 [ a'8 ] | 
% 13
        a'4 g'4 a'4 c''8 [ c''8 ] | 
% 14
        g'4 f'4 ^\markup{ \italic {(3 times)} }  g'4  d''4^>  ~  | 
%        g'4 f'4 g'4 d''4 ~ ^> }  | 
}  %  end repeat

% 15
%   the markup should be on measure 14 where the repeat ends
    d''4 d''4 ^> c''4 c''4 | 
%    d''4 -\markup{ \italic {(3 times)} } d''4 ^> c''4 c''4 | 
% 16
    a'4 c''4 c'4 d''8 [ d''8 ] | 
% 17
    d''4 d''4 c''8 [ c''8 c''8 a'8 ] | 
% 18
    g'4 f'4 g'4 a'8 [ a'8 ] | 
% 19
    a'4 g'4 a'4 c''8 [ c''8 ] | 
\barNumberCheck #20
    g'4 f'4 g'4 d''4 ~ ^> | 
% 21
    d''4 d''4 ^> c''4 c''4 | 
% 22
    a'4 c''4 c'4 d''8 [ d''8 ] | 
% 23
    d''4 d''4 c''8 [ c''8 c''8 a'8 ] | 
% 24
    g'4 f'4 d'4 r4 | 
% 25
    f'4 d'4 f'4 g'4 | 
% 26
    d'4 c'4 f'4 r4 | 
% 27
    f'4 d'4 f'4 r4 | 
% 28
    d''4 d''4 c''4 r4 | 
% 29
    g'4 f'4 d'4 f'4 | 
\barNumberCheck #30
    d'4 f'4 g'2 | 
% 31
    g'4  r8 a'8 c''4 a'4 | 
% 32
    c'4 d''8 [ d''8 ] <c' c''>4 r4 | 
% 33
    g'4.  a'8 c''4 a'4 | 
% 34
    c'4 d''8 [ d''8 ] <c' c''>4 r4 | 
% 35
    g'4.  a'8 c''4 a'4 | 
% 36
    c'4 d''8 [ d''8 ] <c' c''>4 r4 | 
% 37
    g'4.  a'8 c''4 a'4 | 
% 38
    c'4 d''8 [ d''8 ] <c' c''>4 r4 | 
% 39
    r4 f''4  d''4 a'4 | 
\barNumberCheck #40
    c''4 r4 g'4 r4 | 
% 41
    g'4 r4 g'4 c'4 | 
% 42
    | 
% 42
    g'4 \> g'4 g'2 \!  | 
% 43
    g'2 g'2 ^\fermata 
%\bar "|."
}

% The score definition
\score  {
\new Staff <<
    \time 4/4  
    \clef "treble"
    \key c \major
    \tempo  "Moderato"  4 = 120
    \transposition c   
    \set Staff.midiInstrument = "shamisen"
    \shamisenOne
>>

\layout  { }
\midi  { }
}

