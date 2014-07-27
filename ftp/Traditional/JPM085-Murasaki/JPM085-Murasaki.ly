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

title = "Murasaki"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1983"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

kotoOne =  {
%    \clef "treble" \key c \major \time 4/4 | 
% 1
    e'4.  b8 b4 e'8 [ b8 ] | 
%    e'4. -\markup{ \bold {Moderato} } \f b8 b4 e'8 [ b8 ] | 
% 2
    <e e'>4 r8 d'8  e'2 | 
% 3
    e'4 d'8 [ e'8 ] e4 f'8 [ a'8 ] | 
% 4
    b'8. [ a'16 ] f'8 [ a'8 ] e'4 e''4 | 
% 5
    c''4 b'4 a'4 r8 a'8 | 
% 6
    b'4 a'4 b'4 e8 [ d'8 ] | 
% 7
    e'4 f'4 a'8 [ f'8 ] e'8. [ c'16 ] | 
% 8
    b8 b4 a'8 b'4 e''4 | 
% 9
    c''4.  a'8 b'8. [ a'16 ] f'8 [ e'8 ] | 
\barNumberCheck #10
    r8 f'16 [ a'16 ] b'8 [ c''8 ] e8 [ e'16 e'16 ] e'8 [ e'8 ] | 
% 11
    b4  e'4 f'2 | 
% 12
    r4 f'4 f'2 | 
% 13
    a'4 f'4 f'2 | 
% 14
    e'4 d'8 [ e'8 ] e'4 f'8 [ a'8 ] | 
% 15
    b'4 c''4 e4 e'4 | 
% 16
    r8 e'8 c'4 b4 e''4  | 
% 17
    c''4 b'4 a'4 r8 a'8  | 
% 18
    b'4 a'4 b'4 c''4 | 
% 19
    e''4 c''4 b'4 a'4 | 
\barNumberCheck #20
    f'4 a'4 b'2 | 
% 21
    a''4 b''4 c'''2 | 
% 22
    b''4 a''4 f''4 e''4 | 
% 23
    c''4 e''4 c''2 | 
% 24
    b'4 c''4 e'4. c'8 | 
% 25
    b2 f'4.  a'8 | 
% 26
    b'4. a'8 b'8 [ b'8 e'8 b'8 ] | 
% 27
    b'4 d''4 e''8 [ e''8 b8 e'8 ] | 
% 28
    e''4 r4 e''4 c''4 | 
% 29
    b'4 e''8 [ e''8 ] c''8 [ e''8 c''8 b'8 ] | 
\barNumberCheck #30
    e'8 [ a'8 b'8 c''8 ] b'8 [ a'8 f'8 e'8 ] | 
% 31
    r8 c'8 [ r8 b8 ] r8 d'8 [ e'8 f'8 ] | 
% 32
    e'4 b4 b4 a'8 [ f'8 ] | 
% 33
    e'4 b4 <e e'>4 r4 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 4/4 
    \clef "treble"
    \key c \major
    \tempo "Moderato" 4 = 110
    \set Staff.midiInstrument = "koto"
    \kotoOne
>>

\layout  { }
\midi  { }
}
