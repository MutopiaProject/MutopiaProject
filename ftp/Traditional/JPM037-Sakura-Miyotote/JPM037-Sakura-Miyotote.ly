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

title = "Sakura-Miyotote"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1971"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

kotoOne =  {
%    \clef "treble" \key c \major \time 4/4 
% 0
\partial 8 c''8 \f | 
%\partial 8 c''8 -\markup{ \bold {Allegro moderato} } \f | 
% 1
    <b b'>4 a'4 <b b'>4. a'8  | 
% 2
    b'4 b'2 a'8 [ b'8 ] | 
% 3
    b4 c''4 a'4 ( f'4 ) | 
% 4
    f'2 e'4 ( c''4 ) | 
% 5
    b'4 a'8 [ b'8 ] b4 f'4 | 
% 6
    e'4 a'8 [ a'8 ] b'4 c'8 [ c'8 ] | 
% 7
    b4 a'8 [ a'8 ] b'4 r4 | 
% 8
    e''4 b'4 b'8. [ a'16 ] f'4 | 
% 9
    e'2 a'4 f'4 | 
\barNumberCheck #10
    a'4 e'4 d'4 e'8 [ d'8 ] | 
% 11
    e'4 f'4 a'8 [ a'8 e'8 a'8 ] | 
% 12
    b'4 a'4 b'4 b'8 [ e'8 ] | 
% 13
    d''4 e''4 e'4 f''4 | 
% 14
    e''8 e''4 c''8 b'4 b'8 [ c''8 ] | 
% 15
    e''4 c''4 b'4 a'4 | 
% 16
    b4 f'4 e'4. d'8 | 
% 17
    e'4 b4 d'4 e'4 | 
% 18
    f'8 [ e'8 b8 d'8 ] e'2 | 
% 19
    f''4 r4 e''4 r4 | 
\barNumberCheck #20
    c''4 ( b'4 ) c''4 ( e''4 ) | 
% 21
    c''4 b'4 a'4 b'4 | 
% 22
    c''4 e'4 c'4 b8 [ c''8 ] | 
% 23
    a'4 f'4 e'2 | 
% 24
    b8 b4 a'8 b'4 b'8 [ b'8 ] | 
% 25
    c'8 [ c'8 e'8 c'8 ] b4 c''8 [ b'8 ] | 
% 26
    e'8 [ a'8 a'8 a'8 ] b'4 c''8 [ c''8 ] | 
% 27
    r8 e''8 [ c''8 c''8 ] b'8 [ c''8 a'8 f'8 ] | 
% 28
    a'4 b'4 c''8 [ b'8 e'8 a'8 ] | 
% 29
    b'4 b'4 b'4. c''8 | 
\barNumberCheck #30
    b'4 e'4 <b b'>4 r4 ^\fermata 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 4/4 
    \clef "treble"
    \key c \major
    \tempo "Allegro moderato"  4 = 120
    \set Staff.midiInstrument = "koto"
    \kotoOne
>>

\layout  { }
\midi  { }
}

