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

title = "Na No Ha"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1984"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

kotoOne =  {
%    \clef "treble" \key c \major \time 4/4 | 
% 1
    b2  e'4 ( b4 ) | 
%    b2 -\markup{ \bold {Moderato} } \mf e'4 ( b4 ) | 
% 2
    a'2 a'4 b'4 | 
% 3
    c''2 b'2 | 
% 4
    c''4 ( b'4 ) a'2 | 
% 5
    f'2 f'2 | 
% 6
    r4 f'4 f'2 | 
% 7
    e'4 ( d'4 ) e'4 e'4 | 
% 8
    e'2 f'2 | 
% 9
    a'4 f'4 e'4 d'8 ( [ e'8 ] | 
\barNumberCheck #10
    f'4 ) a'8 [ f'8 ] e'4 c'8 [ b8 ] | 
% 11
    a'4  a''4 a''8 [ a''8 ] e''4 | 
% 12
    e''8. [ c''16 ] b'4 b'4. e'8 | 
% 13
    b4 b4 b'4 e'4 | 
% 14
    <b b'>2 b'2  | 
% 15
    c''4 ( b'4 ) a'4 ( f'4 ) | 
% 16
    f'2 f'2 | 
% 17
    b'8. ( [ a'16 ) ] f'4 e'4 d'4 | 
% 18
    e4 e'4 f'2 | 
% 19
    a'4 f'4 e'4 d'8 ( [ e'8 ) ] | 
\barNumberCheck #20
    f'4 a'8 [ f'8 ] e'4 c'8 [ b8 ] | 
% 21
    a'4 a''4  a''8 [ a''8 ] e''4 | 
% 22
    e''8. [ c''16 ] b'4 b'4. e'8 | 
% 23
    b4 b8. [ a'16 ] b'4 e'4 | 
% 24
    <b b'>2 b'2  | 
% 25
    c''4 ( b'4 ) a'4 ( f'4 ) | 
% 26
    f'2 b'8. ( [ a'16 ) ] f'4 | 
% 27
    f'2  f'4 e'4 ( | 
% 28
    f'4 ) d'2 e'4 ( | 
% 29
    f'4 ) r4 f'4 ( e'4 ) | 
\barNumberCheck #30
    f'4 a'4 f'4 e'4 | 
% 31
    r4 f'4 e'4 d'8 ( [ e'8 ] | 
% 32
    f'4 ) e'4 c'4 c'8 [ b8 ] | 
% 33
    a'4 r8 c''8  a'8. [ a'16 ] r8 c''8 | 
% 34
    a'8 [ a'8 ] r8 c''8 a'8 [ b'8 a'8 f'8 ] | 
% 35
    f'4 r8 a'8 f'4 e'4 | 
% 36
    e'8 [ b'8 ] c''4 b'8 [ a'8 f'8 e'8 ] | 
% 37
    d'8 d'4 e'8 f'8 [ f'8 ] r8 f'8 | 
% 38
    r8 f'8 e8 [ d'8 ] d'4. f'8 | 
% 39
    d'8  [ d'8 ] r8 f'8 d'8 [ d'8 ] r8 f'8 | 
\barNumberCheck #40
    d'8 [ e'8 ] f'8. [ a'16 ] b'4 e'4 | 
% 41
    b'4.  a'8 b'4 e''8 [ c''8 ] | 
% 42
    b'8 ( [ a'8 ) ] f'4 f'4 a'4 | 
% 43
    f'8 [ e'8 a'8 b'8 ] c''8 r8 b'8 [ a'8 ] | 
% 44
    f'8 [ f'8 ] \grace { b'8 ( } f'4 e'2 | 
% 45
    f'4 e'4 f'4 e'4 | 
% 46
    a'8 [ f'8 ] e'8. [ c'16 ] b4 e'8. [ c'16 ] | 
% 47
    b4 b2 c''4 | 
% 48
    b'8. ( [ a'16 ) ] f'4 e'2 | 
% 49
    d'2 ^\fermata e'2 
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

