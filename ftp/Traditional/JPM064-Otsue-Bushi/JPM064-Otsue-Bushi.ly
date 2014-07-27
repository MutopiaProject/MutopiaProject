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

title = "Otsue-Bushi"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1978"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

kotoOne =  {
%    \clef "treble" \key c \major \time 4/4 
\partial 8 c''8  | 
%\partial 8 c''8 -\markup{ \bold {Moderato} } \f | 
% 1
    b'8 [ a'8 f'8 a'8 ] b'4 a'4 | 
% 2
    b'2 b'4.  a'8 | 
% 3
    b'4 d''4 e''4. d''8 | 
% 4
    e''4. f''8 e''2 | 
% 5
    c''4 b'8 [ c''8 ] a'4.. g'16 | 
% 6
    a'4 b'4 a'4 a'8 [ a'8 ] | 
% 7
    a'4 g'4 a'8 [ a'8 ] r8 f'8 | 
% 8
    e'4 e'4. g'8 a'4 | 
% 9
    r8 b'8 a'4 a'4 f'8 [ a'8 ] | 
\barNumberCheck #10
    b'4 a'8 [ b'8 ] e'4 b'4 | 
% 11
    r4 <b b'>4 <b b'>4 d''8 [ d''8 ] | 
% 12
    e''8 [ d''8 b'8 d''8 ] e'4 e''4 | 
% 13
    r4 <e' e''>4 <e' e''>4 f''8 [ e''8 ] | 
% 14
    a'4 b'4 c''4 r4 | 
% 15
    b'4 c''4 a'4 b'8 [ a'8 ] | 
% 16
    f'4 a'8 [ f'8 ] e'4 d'4 | 
% 17
    e'4 g'4 a'4. a'8 | 
% 18
    b'8 [ r8 a'8 ] r8 d''8 r8 e''8 [ d''8 ] | 
% 19
    b'8 r8 d''8 [ e''8 ] a'4 r8 b'8 | 
\barNumberCheck #20
    a'4 f'4 e'4. d'8 | 
% 21
    e'4 f'4 a'4 b'8. [ a'16 ] | 
% 22
    f'4 e'4 a''8 [ a''8 f''8 f''8 ] | 
% 23
    e''4 d''4 bes'8 r8 d''8 [ d''8 ] | 
% 24
    bes'8 [ d''8 bes'8 a'8 ] d'4 d'4 | 
% 25
    e'4 f'4 a'8 [ a'8 a'8 f'8 ] | 
% 26
    e'4 d'4 r4 e'4 | 
% 27
    r4 <e' e''>4 <e' e''>4. a'8 | 
% 28
    g'8 r8 a'8 r8 d'8 r8 bes'8 r8 | 
% 29
    bes'4 d''4 e''8 [ e''8 e'8 e''8 ] | 
\barNumberCheck #30
    f''4 e''4 a''8 [ a''8 ] r8 f''8 | 
% 31
    e''4 d''4 bes'4 r4 | 
% 32
    r4 d''4 b'8 [ a'8 g'8 a'8 ] | 
% 33
    b'8 r8 e''8 [ d''8 ] b'8 r8 d''8 [ e''8 ] | 
% 34
    a'4. g'8 a'4 b'4 | 
% 35
    a'4 a'8 [ a'8 ] a'4 g'4 | 
% 36
    a'8 [ a'8 d'8 a'8 ] b'8 r8 a'8 r8 | 
% 37
    d''8 [ f''8 e''8 d''8 ] b'8 r8 d''8 [ e''8 ] | 
% 38
    a'4 d''8 [ a'8 ] d''4 e''4 | 
% 39
    f''4 f''8 [ f''8 ] e''8 [ e''8 f''8 e''8 ] | 
\barNumberCheck #40
    d''8 [ f''8 e''8 d''8 ] bes'8 [ d''8 bes'8 a'8 ] | 
% 41
    g'8 r8 g'8 r8 a'8 r8 g'8 r8 | 
% 42
    a'8 [ a'8 b'8 a'8 ] d''8 r8 b'8 [ d''8 ] | 
% 43
    a'4 r8 f'8 e'4 d'4 | 
% 44
    e'4. c''8  b'8 [ a'8 f'8 a'8 ] | 
% 45
    <b b'>4 <b a'>4 <b b'>4 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 4/4 
    \clef "treble"
    \key c \major
    \tempo  "Moderato"  4 = 120
    \set Staff.midiInstrument = "koto"
    \kotoOne
>>

\layout  { }
\midi  { }
}
