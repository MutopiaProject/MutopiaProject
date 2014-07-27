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

title = "K Honen"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1970"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

kotoOne =  {
%    \clef "treble" \key g \major \time 2/4 \repeat volta 2 {
        | 
% 1
  \repeat volta 2  {
    a'8  [ a'8 ] e''8 [ d''8 ] | 
%    a'8 -\markup{ \bold {Allegro} } \ff [ a'8 ] e''8 [ d''8 ] | 
% 2
    e''4 e''8. [ e''16 ] | 
% 3
    e''8 [ b''16 b''16 ] b''8 [ fis''8 ] | 
% 4
    a''4 r4  |  
  }  %  end repeat
%    | 
% 5
    b'4  b'8 [ d''8 ] | 
% 6
    e''4 r4 | 
% 7
    fis''8 [ e''8 ] d''8 [ b'8 ] | 
% 8
    a'4 r4 | 
% 9
    r8 b'8 b'8 [ b'8 ] | 
\barNumberCheck #10
    e''4 e''8 [ e''8 ] | 
% 11
    fis''8 [ e''8 ] d''8 [ b'8 ] | 
% 12
    a'4 r4 | 
% 13
    b'4 b'8 [ d''8 ] | 
% 14
    r8 e''8 e''8 [ e''8 ] | 
% 15
    fis''8 [ e''8 ] d''8 [ b'8 ] | 
% 16
    a'4 r4 | 
% 17
    d''4  r4 | 
% 18
    e''8 [ d''8 ] b'8 [ a'8 ] | 
% 19
    d''4 e''4 | 
\barNumberCheck #20
    e''4 r4 | 
% 21
    fis''4  e''4 | 
% 22
    d''4 b'4 | 
% 23
    a'4 r8 g'8 | 
% 24
    a'4 b'4 | 
% 25
    r8 d''8 b'8 [ d''8 ] | 
% 26
    a'4 fis'4 | 
% 27
    r8 fis''8 fis''4 ~ | 
% 28
    fis''4 d''8 [ e''8 ] | 
% 29
    a'8 [ e''8 ] e''4 | 
\barNumberCheck #30
    r4 b'8  [ d''8 ] | 
% 31
    b'8 [ a'8 ] b'8 [ d''8 ] | 
% 32
    b'8 [ a'8 ] r8 d''8 | 
% 33
    b'8 [ d''8 ] a'4 ~ | 
% 34
    a'8 [ fis'8 ] e'8 [ d'8 ] | 
% 35
    e'8 [ fis'8 ] a'4 | 
% 36
    e'8 [ a'8 ] a'4 ~ | 
% 37
    a'4 r4  |  %  moved bar check to here 
  \repeat volta 2 {
%        | 
% 38
    b'8  [ b'8 ] b'8 [ d''8 ] | 
% 39
    r8 e''8 e''8 [ e''8 ] | 
\barNumberCheck #40
    fis''8 [ e''8 ] d''8 [ b'8 ] | 
% 41
    a'4 r4 | 
% 42
    b'8 [ b'8 ] b'8 [ d''8 ] | 
% 43
    e''8 [ e''8 ] e''8 [ e''8 ] | 
% 44
    fis''8 [ e''8 ] d''8 [ b'8 ] | 
% 45
    a'4 r4  |  %  moved bar check to here
  }  %  end repeat
%    | 
% 46
    d''4  r4 | 
% 47
    e''8 [ d''8 ] b'8 [ a'8 ] | 
% 48
    d''4 e''4 | 
% 49
    e''4 r4 | 
\barNumberCheck #50
    fis''4 e''4 | 
% 51
    d''4 b'4 | 
% 52
    a'4 r8 g'8 | 
% 53
    a'4 b'4 | 
% 54
    r8 d''8 b'8 [ d''8 ] | 
% 55
    a'4 fis'4 | 
% 56
    r8 fis''8 fis''4 | 
% 57
    r8 fis''8 d''8 [ e''8 ] | 
% 58
    a'8 [ e''8 ] e''4 ~ | 
% 59
    e''4 r4 | 
\barNumberCheck #60
    b'8  [ d''8 ] b'8 [ a'8 ] | 
% 61
    b'8 [ d''8 ] b'8 [ a'8 ] | 
% 62
    b'8 [ d''8 ] e''8 [ d''8 ] | 
% 63
    b'4 d''8 [ b'8 ] | 
% 64
    a'4. fis'8 | 
% 65
    e'8 [ d'8 ] e'8 [ fis'8 ] | 
% 66
    a'4 e'8 [ a'8 ] | 
% 67
    a'4 r4 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 2/4
    \clef "treble"
    \key g \major
    \tempo  "Allegro"  4 = 90
    \set Staff.midiInstrument = "koto"
    \kotoOne
>>

\layout  { }
\midi  { }
}

