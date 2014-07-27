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

title = "Suiryo-Bushi"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1964"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


shamisenOne =  {
\partial 4 e''8  [ e''8 ] | 
%\partial 4 e''8 -\markup{\bold {Allegro} } \f [ e''8 ] | 
% 1
    d''4 c''4 | 
% 2
    d''4 d''4 ~ | 
% 3
    d''4 r8 c''8  | 
% 4
    d''4 c''4 | 
% 5
    a'4 g'4 | 
% 6
    a'8 [ c''8 ] d''4 ~ | 
% 7
    d''4 e''8  [ e''8 ] | 
% 8
    d''4 c''4 | 
% 9
    d''4 d''4 ~ | 
\barNumberCheck #10
    d''4 c''8  [ d''8 ] | 
% 11
    e''4 d''8 [ c''8 ] | 
% 12
    a'4 d''8 [ c''8 ] | 
% 13
    a'4 c''8 [ d''8 ] | 
% 14
    g'8 g'4 e'8 | 
% 15
    d'4 r8 c''8  | 
% 16
    e''8 [ e''8 ] d''8 [ c''8 ] | 
% 17
    a'8 [ c''8 ] d''4 ~ | 
% 18
    d''4 r8 e'8  | 
% 19
    g'4 e'8 [ g'8 ] | 
\barNumberCheck #20
    a'4 e''8 [ c''8 ] | 
% 21
    d''8 r8 c''8 \< [ d''8 ] | 
% 22
    e''4 d''8 [ c''8 ] | 
% 23
    a'4 d''8 [ c''8 ] | 
% 24
    a'4 \! c''8 \> [ d''8 ] | 
% 25
    g'4 g'8 [ e'8 ] | 
% 26
    d'4 r4 | 
% 27
    d'4. \! f'8 \< | 
% 28
    g'2 | 
% 29
    a'4. f'8 | 
\barNumberCheck #30
%    | \barNumberCheck #30
    g'4 \! ^\fermata c''8  [ a'8 ] | 
% 31
    c''8 [ d''8 ] e''4 | 
% 32
    d''8 [ c''8 ] a'4 | 
% 33
    r8 a'4 c''8 | 
% 34
    d''2 ~ | 
% 35
    d''4 e''8 [ c''8 ] | 
% 36
    d''4 e''8 [ e''8 ] | 
% 37
    d''4 c''4 | 
% 38
    d''4 d''4 ~ | 
% 39
    d''4 r4 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 2/4 
    \clef "treble"
    \key c \major
    \tempo "Allegro"  4 = 120
    \transposition c      %  guitar
    \set Staff.midiInstrument = "shamisen"
    \shamisenOne
>>

\layout  { }
\midi  { }
}

