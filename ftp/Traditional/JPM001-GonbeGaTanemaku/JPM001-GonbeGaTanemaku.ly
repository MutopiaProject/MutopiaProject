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

title = "Gonbe ga Tanemaku"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1961"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


shamisenOne =  {
%    \clef "treble" \key c \major \time 2/4 | 
% 1
    e'8 f''8 e''8 [ c''8 ] | 
%    e'8 -\markup{ \bold {Moderato} } \f f''8 e''8 [ c''8 ] | 
% 2
    b'8 [ b'8 ] a'8 [ b'8 ] | 
% 3
    e'8 [ f''8 ] e''8 [ c''8 ] | 
% 4
    b'8 [ b'8 ] a'8 [ b'8 ] | 
% 5
    e'8 [ f''8 ] e''8 [ c''8 ] | 
% 6
    b'8 [ b'8 ] a'8 [ b'8 ] | 
% 7
    e'8 [ f''8 ] e''8 [ c''8 ] | 
% 8
    b'8 [ b'8 ] a'8 [ b'8 ] | 
% 9
    a'8  [ b'16 b'16 ] a'8 [ b'16 b'16 ] | 
\barNumberCheck #10
    a'8 [ b'16 b'16 ] e'8 [ g'8 ] | 
% 11
    g'16 [ g'16 g'16 e'16 ] c'8 [ b8 ^\fermata ] | 
% 12
    e'8  f''8 e''8 [ c''8 ] | 
% 13
    b'8 [ b'8 ] a'8 [ b'8 ] | 
% 14
    e'8 [ f''8 ] e''8 [ c''8 ] | 
% 15
    b'8 [ b'8 ] a'8 [ b'8 ] | 
% 16
    e'8 [ f''8 ] e''8 [ c''8 ] | 
% 17
    b'8 [ b'8 ] a'8 [ b'8 ] | 
% 18
    e'8 [ f''8 ] e''8 [ c''8 ] | 
% 19
    b'8 [ b'8 ] a'8 [ b'8 ] | 
\barNumberCheck #20
    e'8 [ f''8 ] e''8 [ c''8 ] | 
% 21
    b'8 [ b'8 ] a'8 [ b'8 ] | 
% 22
    e'8 [ f''8 ] e''8 [ c''8 ] | 
% 23
    b'8 [ b'8 ] a'8 [ b'8 ] | 
% 24
    a'8  [ b'16 b'16 ] a'8 [ b'16 b'16 ] | 
% 25
    a'8 [ b'16 b'16 ] e'8 [ g'8 ] | 
% 26
    g'16 [ g'16 g'16 e'16 ] c'8 [ b8 ^\fermata ] 
%\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 2/4 
    \clef "treble"
    \key c \major
    \tempo "Moderato"  4 = 70
    \transposition c
    \set Staff.midiInstrument = "shamisen"
    \shamisenOne
>>

\layout  { }
\midi  { }
}
