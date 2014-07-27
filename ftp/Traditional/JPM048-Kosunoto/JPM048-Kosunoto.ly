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

title = "Kosunoto"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1974"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

kotoOne =  {
%    \clef "treble" \key c \major \time 4/4 
\partial 4 b''8. \f [ a''16 ]  | 
%\partial 4 b''8. -\markup{ \bold {Moderato} } \f [ a''16 ] | 
% 1
    f''4 e''4  f''2 | 
% 2
    r4 f''4 ( f''2 ) | 
% 3
    f''4 a''4 b''4. ( a''8 ) | 
% 4
    f''4 ( e''4 d''4 ) f''8 [ e''8 ] | 
% 5
    d''8 [ d''8 a'8 b'8 ] d''4 d''4 ~ | 
% 6
    d''4 ( e''4 f''2 ) | 
% 7
    e''4 ( b'4 c''4 a'4 ) | 
% 8
    b'4.. a'16 ( f'2 | 
% 9
    e'4 ) a''4 ( b''8. [ a''16 ] f''4 ) | 
\barNumberCheck #10
    e''4 ( e''4 e''4. )  c'8 | 
% 11
    b4 b2 e''4 | 
% 12
    b'4. a'8 f'2 | 
% 13
    e'4 c''4  a'4 ( f'4 ) | 
% 14
    f'2. f'4 ~ | 
% 15
    f'4 a'4 f'2 | 
% 16
    e'4 b4 d'4 d'4 | 
% 17
    d'4 e'4 f'2 ( | 
% 18
    f'4 e'2 f'4 ) | 
% 19
    f'2 ( a'4 b'8. [ a'16 ) ] | 
\barNumberCheck #20
    b'4 b'4 e'4. d''8 | 
% 21
    e''4 e''4 e''2 | 
% 22
    e''4.  c''8 b'2 | 
% 23
    b'4 e'4 d'8 [ d'8 ] e'8. [ c'16 ] | 
% 24
    b4 a'4 a''4 f''4 | 
% 25
    e''8 e''4 c''8 b'4 a'4 | 
% 26
    b'4 c''4. e''8 b'4 | 
% 27
    b4 a'4 b'4.  a'8 ( | 
% 28
    f'2 ) e'2 | 
% 29
    e'4 e''4 c''2 | 
\barNumberCheck #30
    b'4 \f e''4 c''4 b'8 [ a'8 ] | 
% 31
    f'4 a'8 [ c''8 ] b'8 [ a'8 ] b'8. [ a'16 ] | 
% 32
    f'2 e'4 d''8 [ a'8 ] | 
% 33
    a'4 b'8 [ a'8 ] b4 b'8. [ d'16 ] | 
% 34
    e'4 e''4 b'4 a''8 [ c'''8 ] | 
% 35
    b''8. [ a''16 ] f''4 e''4 e''4 | 
% 36
    e''4. r16 d''16  e''4 a'8 [ f'8 ] | 
% 37
    e'4 b4 <e' e''>4 f''4 | 
% 38
    f''4 ( b'4 ) b'8. [ a'16 ] f'4 | 
% 39
    r4 b''8. [ a''16 ] f''4 ( e''4 | 
\barNumberCheck #40
    d''4 ) r4 d''4  e''4 | 
% 41
    f''2 e''2 | 
% 42
    c''4 c''2 e''4 | 
% 43
    b'4. ( a'8 ) f'4 ( e'4 | 
% 44
    f'2 ) f'4 ( c''4 ) | 
% 45
    a'4 ( f'4 ) f'2 | 
% 46
    e'4 ( e''4 ) c''2 | 
% 47
    b'4 ( a'4 ) r4 f'4 | 
% 48
    r4 a'4 b'4. ( a'8 ) | 
% 49
    f'2 ( e'4 ) f''4 | 
\barNumberCheck #50
    e''4. ( c''8 ) b'2 | 
% 51
    c''4 e''4 f''4 ( e''4 ) | 
% 52
    c''4 ( b'4 ) a'8 [ b'8 ] <c' c''>4 | 
% 53
    r4 a'4 a'4. ( c''8 ) | 
% 54
    b'4 ( a'8 [ b'8 ) ] b2 | 
% 55
    b'4 e''4 f''2 ( | 
% 56
    e''2 ) e''4 ( b'4 ) | 
% 57
    c''4 ( a'4 ) b'2 | 
% 58
    a'2 b'2 | 
% 59
    <b b'>2 r4 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 4/4 
    \clef "treble"
    \key c \major
    \tempo  "Moderato" 4 = 120
    \set Staff.midiInstrument = "koto"
    \kotoOne
>>

\layout  { }
\midi  { }
}
