
\version "2.12.0"

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
  oddFooterMarkup = \tsfooter  
}

\header {
mutopiatitle = "Chidori Meimei"
mutopiacomposer = "Traditional"
%mutopiapoet = ""
%mutopiaopus = ""
mutopiainstrument = "Shamisen"
%date = ""
source = "Nagai, Iwai and Obata, Kenhachiro, \"Seiyo gakufu Nihon zokkyokushu\", pub. Miki Shoten, Osaka, 1895.  English title, \"A Collection of Japanese Popular Music.\" "
style = "Folk"
copyright = "Public Domain"
maintainer = "Anonymous"
%maintainerEmail = ""
maintainerWeb = "http://www.daisyfield.com/music/"
moreInfo = "Typeset by Tom Potter, 2007."  

encodingdate = "2008-06-05"
title = "Chidori Meimei"
%subtitle = "Seabird Song"
arranger = "Arr. Y. Nagai, K. Obata"
 footer = "Mutopia-2010/04/04-1765"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

shamisenOne =  {
% 1
    a4 g'4 | 
% 2
    a'8 [ a'8 ] b'8 [ a'8 ] | 
% 3
    a4 g'4 | 
% 4
    a'8 [ a'8 ] b'8 [ a'8 ] | 
% 5
    a4 g'4 | 
% 6
    a'4 r8 g'8 | 
% 7
    a'4 a'4 | 
% 8
    r8 a'8 b'8 [ a'8 ] | 
% 9
    g'4 a'4 | 
\barNumberCheck #10
    g'8 [ a'8 ] b'8 [ b'8 ] | 
% 11
    a'8 [ g'8 ] e'4 | 
% 12
    d'4 e'8 [ e'8 ] | 
% 13
    d'8 [ e'8 ] d'8 [ b8 ] | 
% 14
    a4. b8 | 
% 15
    d'4 e'4 | 
% 16
    r8 e'8 g'8 [ e'8 ] | 
% 17
    g'8 [ a'8 ] b'4 ~ | 
% 18
    b'8 [ d''8 ] a'8 [ g'8 ] | 
% 19
    e'8 [ g'8 ] e'8 [ g'8 ] | 
\barNumberCheck #20
    a'4 e''8 [ e''8 ] | 
% 21
    d''8 [ e''8 ] d''8 [ b'8 ] | 
% 22
    a'4 d''8 [ d''8 ] | 
% 23
    d''4 e''8 [ g''8 ] | 
% 24
    e''4. g''8 | 
% 25
    d''8 [ c''8 ] a'8 [ g'8 ] | 
% 26
    e'4 r8 e'8 | 
% 27
    g'8 [ e'8 ] g'8 [ a'8 ] | 
% 28
    b'4. d''8 | 
% 29
    a'8 [ g'8 ] e'8 [ g'8 ] | 
\barNumberCheck #30
    e'8 [ g'8 ] a'4 | 
% 31
    e''8 [ e''8 ] d''4 | 
% 32
    e''8 [ e''8 ] d''8 [ e''8 ] | 
% 33
    d''8 [ b'8 ] a'8 [ a'8 ] | 
% 34
    b'8 [ a'8 ] a4 | 
% 35
    g'4 a'8 [ a'8 ] | 
% 36
    b'8 [ a'8 ] a4 | 
% 37
    g'4 a'4 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
    \time 2/4 
    \clef "treble"
    \key c \major 
    \tempo  4 = 140
    \transposition c
    \set Staff.midiInstrument = "shamisen"
    \shamisenOne
>>

\layout  { }
\midi  { }
}

