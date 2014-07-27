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
mutopiainstrument = "Koto"
date = ""    %  optional - date piece composed
source = "Nagai, Iwai and Obata, Kenhachiro, \"Seiyo gakufu Nihon zokkyokushu\", pub. Miki Shoten, Osaka, 1895.  English title, \"A Collection of Japanese Popular Music.\" "
style = "Folk"
license = "Public Domain"
maintainer = "patrick stanistreet"
maintainerEmail = "haematopus@gmail.com"
maintainerWeb = "http://www.daisyfield.com/music/"
moreInfo = "Typeset by Tom Potter, 2007."  

title = "Gosho no Oniwa"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1982"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

kotoOne =  {
%    \clef "treble" \key c \major \time 2/4 | 
% 1
    e'4  a'8 [ a'8 ] | 
%    e'4 -\markup{ \bold {Moderato} } \f a'8 [ a'8 ] | 
% 2
    b'8 [ b'8 c''8 b'8 ] | 
% 3
    a'8 [ a'8 e'8 f'8 ] | 
% 4
    e'8 r8 f'8 r8 | 
% 5
    b8  r8 a'8 [ a'8 ] | 
% 6
    a'8 r8 a'8 r8 | 
% 7
    b'8 [ a'8 f'8 a'8 ] | 
% 8
    b'4 b'8 [ b'8 ] | 
% 9
    b4 a'4 | 
\barNumberCheck #10
    b'4 b'8 [ b'8 ] | 
% 11
    b4 a'4  | 
% 12
    b'4 r4 | 
% 13
    a'4 ( f'8 [ e'8 ) ] | 
% 14
    a'4 ( b'4 ) | 
% 15
    b4 c''4 ( | 
% 16
    b'4 a'4 ) | 
% 17
    f'4 ( a'4 ) | 
% 18
    f'4 ( e'4 ) | 
% 19
    e'8 r8 c''8 [ c''8 ] | 
\barNumberCheck #20
    c''4 b'4 | 
% 21
    a'8 [ c''8 b'8 a'8 ] | 
% 22
    f'4 e'4 | 
% 23
    f'8 a'4 a'8 | 
% 24
    a'4 a'4 | 
% 25
    f'8 [ f'8 ] r8 a'8 | 
% 26
    f'4 e'4 | 
% 27
    r8 b'8 r8 b'8 | 
% 28
    b'4 d'4 | 
% 29
    e''8 [ e''8 ] e'8 [ e''8 ] | 
\barNumberCheck #30
    f''4 e''4 | 
% 31
    b8 r8 a'8  [ a'8 ] | 
% 32
    b'8 [ b'8 c''8 b'8 ] | 
% 33
    a'8 [ a'8 e'8 f'8 ] | 
% 34
    e'8 r8 f'8 r8 | 
% 35
    b8 r8 a'8 [ a'8 ] | 
% 36
    a'8 r8 a'8 r8 | 
% 37
    b'8 [ a'8 f'8 a'8 ] | 
% 38
    b'4 b'8 [ b'8 ] | 
% 39
    b4 a'4 | 
\barNumberCheck #40
    b'4 b'8 [ b'8 ] | 
% 41
    b4 a'4 | 
% 42
    b'4 r4 | 
% 43
    a'4 ( f'8 [ e'8 ) ] | 
% 44
    a'4 b'4 | 
% 45
    b4 c''4 ( | 
% 46
    b'4 a'4 ) | 
% 47
    f'4 r8 d'8 | 
% 48
    e'4 f'4 | 
% 49
    a'8 [ c''8 b'8 a'8 ] | 
\barNumberCheck #50
    f'4 a'8 [ b'8 ] | 
% 51
    e'8 e'4 c'8 | 
% 52
    b4 e'8 [ e'8 ] | 
% 53
    r8 b'8 r8 b'8 | 
% 54
    b'4 d''4 | 
% 55
    e''8 [ e''8 ] e'8 [ e''8 ] | 
% 56
    f''4 e''4 | 
% 57
    e'4  a'8 [ a'8 ] | 
% 58
    b'8 [ b'8 c''8 b'8 ] | 
% 59
    a'8 [ a'8 e'8 f'8 ] | 
\barNumberCheck #60
    e'4 r4 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 2/4 
    \clef "treble"
    \key c \major
    \tempo "Moderato" 4 = 110
    \set Staff.midiInstrument = "koto"
    \kotoOne
>>

\layout  { }
\midi  { }
}
