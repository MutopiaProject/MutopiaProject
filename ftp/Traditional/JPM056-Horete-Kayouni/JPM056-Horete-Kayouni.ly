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

title = "Horete-Kayouni"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1976"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

kotoOne =  {
%    \clef "treble" \key c \major \time 4/4 | 
% 1
    b'4  e'4 <b b'>4. b'8 | 
%    b'4 -\markup{ \bold {Allegro moderato} } \f e'4 <b b'>4. b'8 | 
% 2
    e'4 b'4 b'8 [ c''8 a'8 f'8 ] | 
% 3
    a'8 [ b'8 ] <c' c''>4. c''8 b'4 | 
% 4
    r8  c''8 b'8 [ a'8 ] b'4 r8 a'8 | 
% 5
    b'4 \< b'8 [ e'8 ] d''4 \! \f e''4 | 
% 6
    f''4. a''8 f''4 e''8 [ e''8 ] | 
% 7
    r8 c''8 [ b'8 ] r8 e''8. [ c''16 ] c''8 [ e''8 ] | 
% 8
    c''8 [ b'8 ] a'4 a'4 r4 | 
% 9
    a'4  e'4. f''8 e''8 [ d''8 ] | 
\barNumberCheck #10
    b'8 [ d''8 a'8 ] r8 f'8 [ f'8 \< a'8 b'8 ] | 
% 11
    a'8 [ f'8 ] e'8 r8 e''8 \!  [ r8 c''8 ] r8 | 
% 12
    b'8 [ b'8 c''8 a'8 ] b'8 [ r8 e'8 ] r8 | 
% 13
    b4. r16 a'16 <b b'>4 d'4 | 
% 14
    e'4.. e'16 e'8 r8 f'8 [ f'8 ] | 
% 15
    e'8 r8 c'4 r4 c'8 [ c'8 ] | 
% 16
    c'8 [ r8 e'8 e'8 ] c'8 [ e'8 c'8 b8 ] | 
% 17
    a'8 [ e'8 a'8 b'8 ] c''8 [ r8 e'8 ] r8 | 
% 18
    c'8 [ r8 b'8 c''8 ] a'8 [ r8 f'8 ] r8 | 
% 19
    e'4 a'8 [ e'8 ] a'8 [ r8 b'8 ] r8 | 
\barNumberCheck #20
    e'8 r8 <c' c''>2 <e' e''>4 ~ ~ | 
% 21
    <e' e''>4 <c' c''>2 e''8 [ e''8 ] | 
% 22
    c''8 [ e''8 c''8 b'8 ] a'8 [ c''8 b'8 a'8 ] | 
% 23
    f'4 e'4. a'8 f'4 | 
% 24
    r8 a'8 b'4 r8 c''8 [ a'8 b'8 ] | 
% 25
    e'4 d''8 [ e''8 ] f''4 r4 | 
% 26
    e''4  r4 c''8 [ c''8 ] e''8 [ c''8 ] | 
% 27
    b'8 [ r8 g'8 ] r8 a'4.. ( f'16 ) | 
% 28
    e'4 ( d'4 ) e'4 r4 | 
% 29
    e'8 [ r8 e''8 ] r8 c''8 [ r8 b'8 ] r8 | 
\barNumberCheck #30
    a'8. [ f'16 ] f'8 [ a'8 ] b'8 [ c''16 b'16 ] e'8 [ b'8 ] | 
% 31
    b'4 b'8 [ e'8 ] d''8 [ e''8 f''8 f''8 ] | 
% 32
    e''16 [ e''16 e''16 c''16 ] b'8 [ c''8 ] b16 [ b16 b16 b16 ] a''8 [
    f''8 ] | 
% 33
    <e' e''>4 r4 a''8 [ r8 f''8 ] r8 | 
% 34
    e''4 c''8 [ e''8 ] r8 f''8 [ e''8 c''8 ] | 
% 35
    b'8. [ a'16 ] b'8 [ c''8 ] e''8 [ r8 c''8 b'8 ] | 
% 36
    a'8 [ b'8 c''8 ] r8 c''8 [ b'8 a'8 f'8 ] | 
% 37
    e'4. c''8 b'8 [ r8 e'8 ] r8 | 
% 38
    <b b'>4 e''8 [ c''8 ] b'8 [ r8 e'8 ] r8 | 
% 39
    <b b'>2 r2 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 4/4 
    \clef "treble"
    \key c \major
    \tempo "Allegro moderato"  4 = 120
    \set Staff.midiInstrument = "koto"
    \kotoOne
>>

\layout  { }
\midi  { }
}

