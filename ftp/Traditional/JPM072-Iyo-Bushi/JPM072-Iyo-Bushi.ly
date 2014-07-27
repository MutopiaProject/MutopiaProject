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

title = "Iyo-Bushi"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1980"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

kotoOne =  {
%    \clef "treble" \key c \major \time 4/4 
\partial 8 c''8  | 
%\partial 8 c''8 -\markup{ \bold {Moderato} } \f | 
% 1
    b4 a'4 b'8 [ a'8 b'8 b'8 ] | 
% 2
    b4 a'4  b'4 b'8 [ b'8 ] | 
% 3
    b4 a'4 b'4 r4 | 
% 4
    a'4 ( f'8 [ e'8 ) ] a'4. a'8 | 
% 5
    b'4 ( a'8 [ b'8 ) ] b4 r4 | 
% 6
    c''4 c''4 ( b'4 a'4 ) | 
% 7
    f'4 ( e'4 ) a'4 ( f'8 [ a'8 ) ] | 
% 8
    e'4 ( c'4 b4 ) f''8  [ e''8 ] | 
% 9
    d''4 bes'4 a'4 a'8 [ a'8 ] | 
\barNumberCheck #10
    e'4 g'4  a'2 | 
% 11
    r4 a'2 r4 | 
% 12
    a'4 ( f'8 [ e'8 ) ] a'4 r8 a'8 | 
% 13
    b'4 ( a'4 b'4 ) c''4 | 
% 14
    e''4 ( c''4 ) b'4 e'8 [ b'8 ] | 
% 15
    c''8 [ c''8 b'8 a'8 ] b'4 a''4  | 
% 16
    f''4 e''4 f''8 [ e''8 d''8 e''8 ] | 
% 17
    f''4 e''4  f''2 | 
% 18
    e'4 f''2 c''8 [ b'8 ] | 
% 19
    a'4 ( f'4 ) f'2 | 
\barNumberCheck #20
    f''4 ( e''4 ) d''4 r4 | 
% 21
    e''4. ( d''8 ) e''4 ( f''4 ) | 
% 22
    a''2 a''4 ( f''4 ) | 
% 23
    e''4. ( c''8 ) e''4 f''4 | 
% 24
    e''8 r8 c''8 [ e'8 ] fis'8 [ e'8 c'8 b8 ] | 
% 25
    e'8 [ c''8 b'8 a'8 ] f'2 | 
% 26
    a'4 ( f'8 [ e'8 ) ] a'8 [ a'8 b'8 a'8 ] | 
% 27
    b'4 ( a'4 b'4. ) c''8 | 
% 28
    e''4 c''4 e''8 [ b'8 b'8 a'8 ] | 
% 29
    f'4 e'4 e'8 [ d''8 ] b'8 \rest d''8 | 
\barNumberCheck #30
    e''8 [ e''8 d''8 e''8 ] e'8 [ e''8 ] r8 f''8 | 
% 31
    <e' e''>4. fis''8 c''4 c''8 [ e''8 ] | 
% 32
    fis''4 b'8 [ g'8 ] f'4 b8 [ e'8 ] | 
% 33
    fis'4 fis'8 [ g'8 ] b'4 g'8 [ fis'8 ] | 
% 34
    e'8 [ g'8 fis'8 e'8 ] c'4 b4 | 
% 35
    e'8 [ e''8 c'8 c''8 ] e'8 [ e''8 c''8 b'8 ] | 
% 36
    a'8 [ c''8 b'8 a'8 ] f'8 r8 c'8 [ b8 ] | 
% 37
    r8 c''4 a'8 b'4 c''8 [ b'8 ] | 
% 38
    b4 a'4 b'4 r8 b'8 | 
% 39
    b4 a'4 <b b'>4 ^\fermata r4 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 4/4 
    \clef "treble"
    \key c \major
    \tempo "Moderato"  4 = 110
    \set Staff.midiInstrument = "koto"
    \kotoOne
>>

\layout  { }
\midi  { }
}

