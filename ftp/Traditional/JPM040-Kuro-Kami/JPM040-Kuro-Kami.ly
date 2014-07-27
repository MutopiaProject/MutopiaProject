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

title = "Kuro-Kami"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1972"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

kotoOne =  {
%    \clef "treble" \key c \major \time 4/4 | 
% 1
    <b b'>4 \f r4 b'2  | 
%    <b b'>4 -\markup{ \bold {Moderato} } \f r4 b'2 \p | 
% 2
    c''4 ( b'4 ) a'4 ( f'4 ) | 
% 3
    e'2 d'4 e'4 | 
% 4
    f'2. f'4 ( ~ | 
% 5
    f'4 a'4 ) b'4 ( a'4 | 
% 6
    f'2 ) e'4 d'4 | 
% 7
    e'4 f'4 ( a'4 ) f'4 | 
% 8
    e'4. c'8 b4 ( a'4 ) | 
% 9
    b'4 b'4 b'2 | 
\barNumberCheck #10
    f'4.  a'8 b'4 c''8 [ b'8 ] | 
% 11
    a'4  b'4 c''2 | 
% 12
    e'4 c''4 c''4 r4 | 
% 13
    e''4 c''4 b'2 | 
% 14
    b'4 a'8 [ b'8 ] b4 c''4 | 
% 15
    e''4 ( c''4 b'4 ) e''8 ( [ c''8 ) ] | 
% 16
    b'8. ( [ a'16 ) ] f'4 e'2 | 
% 17
    d'4 e'4 f'4. a'8 | 
% 18
    b'4 a'4 f'4 e'4 ( | 
% 19
    d'4 ) r4 e'4 e'8 ( [ f'8 ) ] | 
\barNumberCheck #20
    a'4 f'4 e'4 b8 [ d'8 ] | 
% 21
    e'2 e'4 r4 | 
% 22
    d''8 \f [ d''8 d''8 d''8 ] e''4 c''4 | 
% 23
    b'4 r4 \grace { b''16 ( [ a''16 ( ] } f''2 | 
% 24
    e''2 e''4 r4 | 
% 25
    f''4.  a''8 f''4 ( e''4 | 
% 26
    d''8 [ e''8 ) ] f''4 e''8 e''4 ( c''8 ) | 
% 27
    b'4 c''8 [ b'8 ] a'4 f'4 | 
% 28
    f'2 a'4 f'4 | 
% 29
    a'4 b'4 b'8 ( [ c''8 ) ] e''4 | 
\barNumberCheck #30
    b'4 c''8 [ a'8 ] b'4 b'4 | 
% 31
    b'2 a'4 b'4 | 
% 32
    c''4. b'8 e'4 c''4 ~ | 
% 33
    c''4 f''4 ( e''4 c''4 ) | 
% 34
    c''4. e''8 c''4 b'4 | 
% 35
    a'4 f'4 a'4 b'4 | 
% 36
    c''4 ( b'4 ) a'4 ( f'4 ) | 
% 37
    e'2 e'4 f'4 | 
% 38
    e'4. c'8 b4 f'8 [ e'8 ] | 
% 39
    d'4 r4 d'4 ( e'4 ) | 
\barNumberCheck #40
    f'2 b'8. ( [ a'16 ) ] f'4 | 
% 41
    e'2 d''4 e''4 | 
% 42
    f''2 e''4. ( c''8 ) | 
% 43
    b'4 ( a'4 ) b'4 b'4 | 
% 44
    b'4 ^\fermata c'4  b4 a'8 [ b'8 ] | 
% 45
    b4 r8 a''8 b''4 a''4 | 
% 46
    f''2 e''4 d''8 [ e''8 ] | 
% 47
    f''4 e''4 f''4 r4 | 
% 48
    d''4 ( e''4 ) f''2 | 
% 49
    r4 f''4 f''2 | 
\barNumberCheck #50
    b''8. [ a''16 ] f''4 f''2 | 
% 51
    e''4 ( b'4 ) d''4 e''4 | 
% 52
    f''2 e''8 [ c''8 b'8 a'8 ] | 
% 53
    f'4 e'4 f4 r4 | 
% 54
    e'4 c''8 [ b'8 ] a'4 a''8 [ a''8 ] | 
% 55
    <b' b''>4 r8 a'8 b'4 b'8 ( [ e'8 ) ] | 
% 56
    d''4 ( e''4 ) f''4 ( e''4 ) | 
% 57
    f'4 ( a'4 b'4 ) e''4 | 
% 58
    c''4 ( b'4 ) a'4 f'4 ( | 
% 59
    e'2 ) f'4 a'4 | 
\barNumberCheck #60
    b'4. a'8 f'2 | 
% 61
    b'4 f'4 e'4 d'4 | 
% 62
    e'2 b2 | 
% 63
    b'4 e'4 <b b'>4 r4 | 
% 64
    b'2 e''4 ( c''4 ) | 
% 65
    b'8. ( [ a'16 ) ] f'2 \grace { b'8 } e'4 | 
% 66
    d'2 e'2 | 
% 67
    e'2. r4 
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

