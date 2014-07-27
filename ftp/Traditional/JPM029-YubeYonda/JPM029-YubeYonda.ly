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

title = "Yube-Yonda"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1969"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

kotoOne =  {
%    \clef "treble" \key c \major \time 2/4 
\partial 8 f'8  (  |
%-\markup{  \bold {Allegretto} } ( \p | 
% 1
    g'4 ) g'4 | 
% 2
    r8 g'8 ( a'8 [ g'8 ] | 
% 3
    f'4 ) g'4 | 
% 4
    r8 a'8 c''8. [ a'16 ] | 
% 5
    g'4 ~ g'8 [ a'8 ] | 
% 6
    c''4. c''8  | 
% 7
    d''8 [ d''8 ] d'8 [ c''8 ] | 
% 8
    d''4 r8 c''8 (  | 
% 9
    d''4. ) d''8 | 
\barNumberCheck #10
    f''4 g''4 ( | 
% 11
    d''4 ) d''8 [ a'8 ] | 
% 12
    c''8 [ c''8 ] d''8 [ d''8 ] | 
% 13
    c''8 [ c''8 ] a'8 [ g'8 ] | 
% 14
    f'4 r8 d'8 | 
% 15
    f'4 c'4 | 
% 16
    r8 d'8 f'8 [ d'8 ] | 
% 17
    f'4 g'4 | 
% 18
    r8 a'8 c''8. [ a'16 ] | 
% 19
    g'4 a'8 [ f'8 ] | 
\barNumberCheck #20
    g'4 a'8 [ f'8 ] | 
% 21
    f'8 [ f'8 ] d'8 [ c'8 ] | 
% 22
    f'8 [ f'8 ] g'8 [ f'8 ( ] | 
% 23
    g'4 ) c''8. [ a'16 ] | 
% 24
    g'4 ( a'8 ) [ f'8 ] | 
% 25
    g'4 d''8  [ d''8 ] | 
% 26
    d''8 [ d''8 ] d''8 [ f'8 ] | 
% 27
    g'8 [ g'8 ] a'8 [ g'8 ] | 
% 28
    g4 f'4 | 
% 29
    g'4 c''8 [ a'8 ] | 
\barNumberCheck #30
    g'4 c'4 | 
% 31
    <g g'>4 r4   |
%    <g g'>4 r8   |
\bar "|."
}

% The score definition
\score  {
\new Staff <<
    \time 2/4 
    \clef "treble"
    \key c \major
    \tempo "Allegretto"  4 = 70
    \set Staff.midiInstrument = "koto"
    \kotoOne
>>

\layout  { }
\midi  { }
}

