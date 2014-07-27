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
mutopiainstrument = "Shakuhachi"
date = ""    %  optional - date piece composed
source = "Nagai, Iwai and Obata, Kenhachiro, \"Seiyo gakufu Nihon zokkyokushu\", pub. Miki Shoten, Osaka, 1895.  English title, \"A Collection of Japanese Popular Music.\" "
style = "Folk"
license = "Public Domain"
maintainer = "patrick stanistreet"
maintainerEmail = "haematopus@gmail.com"
maintainerWeb = "http://www.daisyfield.com/music/"
moreInfo = "Typeset by Tom Potter, 2007."  

title = "Kappore"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1968"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

shakuhachiOne =  {
%    \clef "treble" \key g \major \time 2/4 \repeat volta 2 {
% 1
  \repeat volta 2  {
    a'8  [ a'8 ] e''8 [ d''8 ] | 
%    a'8 -\markup{ \bold {Allegro} } \ff [ a'8 ] e''8 [ d''8 ] | 
% 2
    e''4 e''8. [ e''16 ] | 
% 3
    e''8 [ b''16 b''16 ] b''8 [ fis''8 ] | 
% 4
    a''4 r4  |  %  moved bar check to here  
  }  %  end repeat
%    | 
% 5
    r8 g'8  a'4 ~ | 
% 6
    a'8 [ b'8 ] a'4 | 
% 7
    e'4 e'4 | 
% 8
    r8 g'8 a'4 | 
% 9
    g'8 [ a'8 ] b'4 ~ | 
\barNumberCheck #10
    b'4 a'4 | 
% 11
    e'4 e'4 | 
% 12
    r8 g'8 a'4 | 
% 13
    g'8 [ a'8 ] b'4 | 
% 14
    d''4 e''8. [ d''16 ] | 
% 15
    b'8 [ d''8 ] e''4 | 
% 16
    | % 16
    a'8  [ e''8 ] e''4 | 
% 17
    a'8 [ e''8 ] e''4 | 
% 18
    fis''4  e''8 [ d''8 ] | 
% 19
    b'8 [ a'8 ] b'4 | 
\barNumberCheck #20
    b'8 [ d''8 ] e''4 | 
% 21
    e''4 a'4 | 
% 22
    r4 b'8  [ d''8 ] | 
% 23
    b'8 [ d''8 ] e''4 | 
% 24
    r8 e''8 fis''4 ~ | 
% 25
    fis''4 e''4 ~ | 
% 26
    e''4 d''4 ~ | 
% 27
    d''4 b'8 [ d''8 ] | 
% 28
    b'8 [ d''8 ] e''4 | 
% 29
    r4 e''8  [ d''8 ] | 
\barNumberCheck #30
    b'8 [ d''8 ] a'4 ~ | 
% 31
    a'8 [ fis'8 ] e'4 | 
% 32
    a'8 [ e'8 ] e'4 | 
% 33
    e'4 e'4 | 
% 34
    r8 g'8 a'4 | 
% 35
    g'8 [ a'8 ] b'4 | 
% 36
    d''4 b'4 | 
% 37
    a'8 [ g'8 ] a'4 | 
% 38
    e'8 [ a'8 ] a'4 | 
% 39
    r8 a'8  a'4 ~ | 
\barNumberCheck #40
    a'8 [ e'8 ] d'4 | 
% 41
    e'4 r8 g'8 | 
% 42
    a'4 g'8 [ a'8 ] | 
% 43
    b'4 d''4 | 
% 44
    e''8 [ d''8 ] b'8 [ d''8 ] | 
% 45
    e''4 a'8 [ e''8 ] | 
% 46
    e''4 a'8 [ e''8 ] | 
% 47
    e''4 fis''4 | 
% 48
    e''8 [ d''8 ] b'8 [ a'8 ] | 
% 49
    b'4 b'8 [ d''8 ] | 
\barNumberCheck #50
    e''4  e''4 | 
% 51
    a'4 r4 | 
% 52
    b'8 [ d''8 ] b'8 [ d''8 ] | 
% 53
    e''4 r8 e''8 | 
% 54
    fis''2 | 
% 55
    e''2 | 
% 56
    d''2 | 
% 57
    b'8  [ d''8 ] b'8 [ d''8 ] | 
% 58
    e''4 r4 | 
% 59
    e''8 [ d''8 ] b'8 [ d''8 ] | 
\barNumberCheck #60
    a'4.  fis'8 | 
% 61
    e'4 a'8 [ e'8 ] | 
% 62
    e'4 e'4 | 
% 63
    e'4 r8 g'8 | 
% 64
    a'4 g'8 [ a'8 ] | 
% 65
    b'4 d''4 | 
% 66
    b'4 a'8 [ g'8 ] | 
% 67
    a'4 e'8 [ a'8 ] | 
% 68
    a'4 ^\fermata r4 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 2/4
    \clef "treble"
    \key g \major
    \tempo  "Allegro"  4 = 90
    \set Staff.midiInstrument="shakuhachi" 
    \shakuhachiOne
>>

\layout  { }
\midi  { }
}
