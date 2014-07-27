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

title = "O-Edo-Nihonbashi"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1963"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


shamisenOne =  {
\repeat volta 2 {
% 1
    c''8  [ b'8 \< ] c''16 ( [ b'16 )  b16 b'16 ] | 
%        c''8 -\markup{ \bold {Andante} } \p [ b'8 \< ] c''16 ( [ b'16 )
% 2
    c''8 [ b'8 ] c''16 ( [ b'16 ) b16 b'16 ] | 
% 3
    c''8 [ b'8 ] c''8 \!  [ b'8 ] | 
% 4
    c''8 [ b'8 ] c''8 [ e''8 ] | 
% 5
    c''8 [ b'8 ] e'8 [ b'8 ] | 
% 6
    e''8 [ c''8 ] b'4 ~ | 
% 7
    b'4 b'8 [ b'8 ] | 
% 8
    fis'8 [ a'8 ] b'4 ~ | 
% 9
    b'8 r8 b'4 | 
\barNumberCheck #10
    b'8 [ a'8 ] b'8 [ b'8 ] | 
% 11
    e''8 [ c''8 ] b'16 [ b'16 c''16 c''16 ] | 
% 12
    g'8 [ g'8 ] fis'4 | 
% 13
    g'8 [ fis'8 ] e'8 [ e'8 ] | 
% 14
    c'8 [ b8 ] e'8 [ e'8 ] | 
% 15
    fis'8 [ fis'8 ] r8 c''8 ( | 
% 16
    b'8 [ g'8 ) ] fis'8 [ e'8 ] | 
% 17
    fis'8 [ a'8 ] b'4 | 
% 18
    c''8 [ c''8 ] b'4 | 
% 19
    e''8 [ c''8 ] b'4 ~ | 
\barNumberCheck #20
    b'4. r8 }
}

% The score definition
\score  {
\new Staff <<
    \time 2/4 
    \clef "treble"
    \key g \major
    \tempo "Andante"  4 = 60
    \transposition c
    \set Staff.midiInstrument = "shamisen"
    \shamisenOne
>>

\layout  { }
\midi  { }
}

