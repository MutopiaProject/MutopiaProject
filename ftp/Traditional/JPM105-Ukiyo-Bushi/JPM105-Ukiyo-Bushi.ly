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

title = "Ukiyo-Bushi"
subtitle = "  "      %
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1988"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


kotoOne =  {
%  The grace note at the beginning of this piece causes a midi problem
%  it defaults to piano unless midiInstrument is here
%    \clef "treble" \key c \major \time 2/4 
  \time 2/4
  \clef "treble"
  \set Staff.midiInstrument = "koto"
\grace b'8 ( \partial 4  c''8 )  [ b'8 ] | 
%\partial 4 \grace { b'8 ( \f } c''8 -\markup{ \bold {Allegro} } [ b'8 ] | 
% 1
    c''8 [ e''16 e''16 ] e''8 [ a'8 ] | 
% 2
    b'4 \grace b'8 (  c''8 ) [ b'8 ] | 
%    b'4 \grace { b'8 ( } c''8 [ b'8 ] | 
% 3
    c''8 [ e''16 e''16 ] e''8 [ a'8 ] | 
% 4
    b'4 \grace b'8 (  c''8 ) [ b'8 ] | 
%    b'4 \grace { b'8 ( } c''8 [ b'8 ] | 
% 5
    c''8 [ e''16 e''16 ] e''8 [ a'8 ] | 
% 6
    b'4 \grace b'8 (  c''8 ) [ b'8 ] | 
%    b'4 \grace { b'8 ( } c''8 [ b'8 ] | 
% 7
    r8 a'8 b'4 | 
% 8
    b'8 [ b'8 ] c''8 ( [ b'8 ) ] | 
% 9
    a'8 [ a'8 ] b'8 [ a'8 ] | 
\barNumberCheck #10
    f'4 ( e'8 ) [ e'8 ] | 
% 11
    r8 d''8 d''8 [ d''8 ] | 
% 12
    e''8 [ e''8 ] d''8 [ e''8 ] | 
% 13
    r8 f''16 [ f''16 ] f''8 [ a''8 ] | 
% 14
    f''8 [ f''8 ] e''4 | 
% 15
    c''4 e''8 [ e''8 ] | 
% 16
    c''8 [ c''8 ] b'4 | 
% 17
    a'8 [ a'8 ] a'8 [ f'8 ] | 
% 18
    a'8 [ a'16 a'16 ] a'8 [ b'8 ] | 
% 19
    c''4 c''8 [ b'8 ] | 
\barNumberCheck #20
    r8 c''8 r8 e''8 | 
% 21
    r8 f''8 r8 a'8 | 
% 22
    b'4 \grace b'8 (  c''8 ) [ b'8 ] |
%    b'4 \grace { b'8 ( } c''8 [ b'8 ] |
% 23
    c''8 [ e''16 e''16 ] e''8 [ a'8 ] | 
% 24
    b'4 r4 ^\fermata 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
%    \time 2/4 
%    \clef "treble"
    \key c \major
    \tempo "Allegro" 4 = 80
%    \set Staff.midiInstrument = "koto"
    \kotoOne
>>

\layout { }
\midi  { }
}
