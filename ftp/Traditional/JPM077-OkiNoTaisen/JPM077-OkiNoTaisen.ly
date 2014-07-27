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

title = "Oki No Taisen"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1981"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

kotoOne =  {
%    \clef "treble" \key c \major \time 4/4 | 
% 1
    g'8  [ es'8 d'8 c'8 ] d'8 [ f'8 g'8 g'8 ] | 
%    g'8 -\markup{ \bold {Moderato} } \f [ es'8 d'8 c'8 ] d'8 [ f'8 g'8 g'8 ] | 
% 2
    g8 [ g'8 ] g'4 g'8 [ f'8 ] g4 | 
% 3
    r8 a'8 a'4 a'8 [ f'8 ] g'4 | 
% 4
    c''4 a'4. c''16 [ c''16 ] d''4 | 
% 5
    r8 e''8 [ d''8 c''8 ] a'8 [ g'8 f'8 g'8 ] | 
% 6
    a'8 [ a'8 g'8 a'8 ] e'8 [ d'8 ] c'4 | 
% 7
    r4 c'4 r8 c'8 d'8. [ c'16 ] | 
% 8
    d'8 [ f'8 g'8 d'8 ] r8 d'8 g4 | 
% 9
    c''4 a'4 ~ a'8 [ f'8 ] g'4 | 
\barNumberCheck #10
    d'8 [ c''16 c''16 ] d''4 r8 c''8 a'4 ~ | 
% 11
    a'8 [ f'8 ] g'4 c''4 a'8 [ a'16 a'16 ] | 
% 12
    g'8 [ f'8 ] g'8 [ a'16 a'16 ] g'8 [ e'8 ] d'4 ~ | 
% 13
    d'4 a4 c'4 d'8. [ c'16 ] | 
% 14
    d'8 [ d'8 f'8 g'8 ] a'8 [ bes8 ] a4 | 
% 15
    r4 a'4 c''4 a'8 [ a'16 a'16 ] | 
% 16
    g'8 [ f'8 ] g'8 [ a'16 a'16 ] g'8 [ e'8 d'8 c'8 ] | 
% 17
%    | % 17
    d'8 \< [ f'8 g'8 g'8 ] g8 [ g'8 ] g'4 | 
% 18
    g'8 [ f'8 g'8 f'8 ] g4 \!  g'8. [ f'16 ] | 
% 19
    g'8 [ a'8 c''8 a'8 ] c''8 [ d''8 c''8 a'8 ] | 
\barNumberCheck #20
    g'4 r8 a'8 g'4 d'4 | 
% 21
    g'2 ^\fermata r2 
\bar "|."
}

% The score definition
\score  {
\new Staff <<
    \time 4/4 
    \clef "treble"
    \key c \major
    \tempo  "Moderato"  4 = 110
    \set Staff.midiInstrument = "koto"
    \kotoOne
>>

\layout  { }
\midi  { }
}
