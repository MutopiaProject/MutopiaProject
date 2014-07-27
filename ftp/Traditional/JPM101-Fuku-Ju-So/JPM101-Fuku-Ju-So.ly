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

title = "Fuku-Ju-So"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1987"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

kotoOne =  {
%    \clef "treble" \key c \major \time 4/4 | 
% 1
    <e' e''>2  e'2  | 
%    <e' e''>2 -\markup{ \bold {Andante} } \f e'2 \p | 
% 2
    f'4 ( e'4. c'8 b4 ) | 
% 3
    d'4 e'4 f'4 d'4 ( | 
% 4
    e'2 ) f'4 a'4 | 
% 5
    b'4. ( a'8 ) f'2 | 
% 6
    b'8. ( [ a'16 ] f'4 ) e'4 d'4 | 
% 7
    e'4. c'8 b2 | 
% 8
    c'4 b4 d'4 ( e'4 | 
% 9
    a'4 f'4. ) e'8 f'8 [ f'8 ] | 
\barNumberCheck #10
    f'4 f'4 f'2 | 
% 11
    <b a'>4 <b a'>4 <b b'>4 <b a'>4 | 
% 12
    <b b'>4. b'8 e'4 a'4 | 
% 13
    b'4 r4 e''4 ( c''4 ) | 
% 14
    b'2. b'4 ~ | 
% 15
    b'4.. a'16 f'4 ( e'4 ) | 
% 16
    a'2 b'4 ( a'8 [ b'8 ) ] | 
% 17
    b4 r4 e''4 ( c''4 ) | 
% 18
    b'2 c''4 ( b'4 | 
% 19
    a'2 ) a'4 r4 | 
\barNumberCheck #20
    a'4  a'8 [ a'8 ] f'4 e'4 | 
% 21
    f'2 e'4 r4 | 
% 22
    a'4  a'8 [ a'8 ] f'4 e'4 | 
% 23
    f'2 e'4 r4 
\bar "||"
%    | 
% 24
    f'8  [ d''8 d''8 d''8 ] f'8 [ d''8 d''8 d''8 ] | 
% 25
    f''4 a''4 f''4 a'8 [ b'8 ] | 
% 26
    c''4 b'4 a'4 f'4 | 
% 27
    r8 b'16 [ a'16 ] f'4 e'4. c'8 | 
% 28
    b4 a'4 b'4 e''4 | 
% 29
    c''4 b'4 c''2 | 
\barNumberCheck #30
    r4 c''4 c''4 ( f''4 ) | 
% 31
    e''4 ( c''4 ) c''2 | 
% 32
    c''4 ( b'4 a'4 ) f'4 | 
% 33
    f'4 ( a'8 [ b'8 ) ] c''4 b'4 | 
% 34
    a'4 ( f'2 ) a'8 [ f'8 ] | 
% 35
    f'4 a'4 f'4 f'8 [ a'8 ] | 
% 36
    b'4 c''2 c''4 | 
% 37
    b'4 a'4 b'8. ( [ a'16 ] f'4 ) | 
% 38
    e'4 ( b4 ) b2 | 
% 39
    b2 f'4 ( e'4 ) | 
\barNumberCheck #40
    f'4 ( d'4 ) e'2 | 
% 41
    d'2 ^\fermata <e e'>4 r4 
\bar "|."
}

% The score definition
\score  {
\new Staff <<
    \time 4/4 
    \clef "treble"
    \key c \major
    \tempo "Andante" 4 = 90
    \set Staff.midiInstrument = "koto"
    \kotoOne
>>

\layout  { }
\midi  { }
}

