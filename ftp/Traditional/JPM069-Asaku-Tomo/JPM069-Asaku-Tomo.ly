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

title = "Asaku-Tomo"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1979"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

kotoOne =  {
%    \clef "treble" \key c \major \time 4/4 | 
% 1
    c''8  [ d''8 c''8 a'8 ] g'8 [ f'8 ] c'4 | 
%    c''8 -\markup{ \bold {Moderato} } \f [ d''8 c''8 a'8 ] g'8 [ f'8 ] c'4 |
% 2
    c''4 f'4 c''4 r4 | 
% 3
    c''2  a'4. c''8 | 
% 4
    g'8 [ f'8 ] r8 f'8 g4 r8 a'8 | 
% 5
    a'4 a'8. [ c''16 ] g'8 [ f'8 ] r8 g'8 | 
% 6
    c'4 d'8. [ a'16 ] c''4 g'4 | 
% 7
    c''4 r4 c''8 [ c''8 ] c''4 ~ | 
% 8
    c''8 [ c''8 ] c''4 c''4 d''4 | 
% 9
    r8 f''8 [ c''8 c''8 ] b8 [ a'8 ] g'8. [ f'16 ] | 
\barNumberCheck #10
    d'4 f''4 g''8 [ g''8 ] g'8. [ a''16 ] | 
% 11
    g''4 g''4 g''4 r8 f''8 | 
% 12
    g''4. g''8 g'4 g''4 | 
% 13
    g''4. g''8 c''4 e''4 | 
% 14
    e''2 d''4. g'8 | 
% 15
    c''4 d''4 e''4 c''4 | 
% 16
    a'4 d''8 [ c''8 ] d''4 c''4 | 
% 17
    d''8 [ e''8 d''8 d''8 ] d''8 r8 d''8 [ d''8 ] | 
% 18
    d''8 r8 d''8 [ d''8 ] d''4 d''4 | 
% 19
    d''4 c''4. a'8 d''4 ( | 
\barNumberCheck #20
    b'8. ) [ d''16 ] a'4 g'4 f'4 | 
% 21
    r8 f'8 g'4 g'4. a'8 | 
% 22
    c''8 [ g'8 ] f'4 c''8 r8 a'8 r8 | 
% 23
    g'4 g'8. [ d'16 ] d'8 [ f'8 ] g'8 [ a'16 g'16 ] | 
% 24
    g8 [ g'8 ] g'4 r8 g'8 c'4 | 
% 25
    a'8 [ a'8 d'8 a'8 ] d'8 [ a'8 ] g'8 [ g'16 g'16 ] | 
% 26
    g'8 [ g'8 ] c'4 f'8. [ d'16 ] d'8 [ f'8 ] | 
% 27
    b'8 \rest g'8 r8 g'8 c'4 c'8. [ a'16 ] | 
% 28
    c''4 g'4 c''4 r4 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 4/4 
    \clef "treble"
    \key c \major
    \tempo "Moderato"  4 = 120
    \set Staff.midiInstrument = "koto"
    \kotoOne
>>

\layout  { }
\midi  { }
}
