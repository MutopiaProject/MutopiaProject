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

title = "Riukiu-Bushi"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1965"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

shamisenOne =  {
\repeat volta 2 {
% 1
    g8  [ f'8 ] g'8 [ g'16 g'16 ] | 
%    g8 -\markup{ \bold {Andante} } \f [ f'8 ] g'8 [ g'16 g'16 ] | 
% 2
    g8 [ f'8 ] g'8 [ g'16 g'16 ] | 
% 3
    g8 [ f'8 ] g'8 [ g'16 g'16 ] | 
% 4
    g'8 [ a'8 ] c''8 [ d''16 c''16 ] | 
% 5
    d'8 [ a'8 ] g'8 [ a'8 ] | 
% 6
    f'8 [ d'8 ] f'8 [ g'8 ] | 
% 7
    c''8 [ a'8 ] a'8 [ g'8 ] | 
% 8
    f'8 [ g'8 ] d'8. [ c'16 ] | 
% 9
    d'8 [ f'8 ] g'8 [ g'16 f'16 ] | 
\barNumberCheck #10
    g'8 [ a'8 ] c'8 [ c''16 c''16 ] | 
% 11
    c''8 [ d''16 d''16 ] c''8 [ a'8 ] | 
% 12
    g'8 [ g'8 ] r8 a'8  | 
% 13
    r8 c''8 r8 d''8 | 
% 14
    r8 a'8 c''8 [ c''8 ] | 
% 15
    c'8 [ d''16  d''16 ] d''8 [ d''8 ] | 
% 16
    c''8 [ a'8 ] g'8 [ a'8 ] | 
% 17
    c''8 [ a'8 ] g'16 [ g'16 a'16 g'16 ] | 
% 18
    g8 [ f'8 ] g'8 [ g'16 g'16 ] | 
% 19
    g8 [ f'8 ] g'8 [ a'16 g'16 ] | 
\barNumberCheck #20
    g8 [ f'8 ] g'8 [ <c' c''>16 <c' c''>16 ] | 
% 21
    <c' c''>8 [ a'8 ] g'16 [ g'16 a'16 g'16 ]  | 
}  %  end repeat
% 22
    g8 [ f'8 ] g'4 ^\fermata 
\bar "|."
}  %  end shamisenOne


% The score definition
\score  {
\new Staff <<
    \time 2/4 
    \clef "treble"
    \key c \major 
    \tempo "Andante"  4 = 70
    \transposition c      %  guitar
    \set Staff.midiInstrument = "shamisen"
    \shamisenOne
>>

\layout {  }
\midi  {  }
}

