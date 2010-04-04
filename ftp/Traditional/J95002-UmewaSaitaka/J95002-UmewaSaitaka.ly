
\version "2.12.0"
% automatically converted from J95002-UmewaSaitaka.xml

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
mutopiatitle = "Umewa Saitaka"
mutopiacomposer = "Traditional"
%mutopiapoet = ""
%mutopiaopus = ""
mutopiainstrument = "Shamisen"
%date = ""
source = "Nagai, Iwai and Obata, Kenhachiro, \"Seiyo gakufu Nihon zokkyokushu\", pub. Miki Shoten, Osaka, 1895.  English title, \"A Collection of Japanese Popular Music.\" "
style = "Folk"
copyright = "Public Domain"
maintainer = "Anonymous"
maintainerEmail = ""
maintainerWeb = "http://www.daisyfield.com/music/"
moreInfo = "Typeset by Tom Potter, 2007."  

title = "Umewa Saitaka"
%subtitle = "Are Plum Trees Blooming Now?"
%subtitle = "Are Palm Trees Blooming Now?"  % probably an error
arranger = "Arr. Y. Nagai, K. Obata"
 footer = "Mutopia-2010/04/04-1762"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

shamisenOne =  {
    e'4 e'8 [ a'8 ] b'4 b'8 [ c''8 ] | 
% 2
    e''8 [ c''8 e''8 c''8 ] b'4 b'8 [ b'8 ] | 
% 3
    e'4 e'8 [ a'8 ] b'4 r8 a'8 | 
% 4
    b'4 b'2 r8 b'8 | 
% 5
    c''8 [ b'8 ] a'4 f'2 | 
% 6
    a'8 [ c''8 b'8 a'8 ] f'8 [ a'8 f'8 e'8 ] | 
% 7
    d'4. d'8 e'4 f'4 | 
% 8
    r8 a'8 b'4 f'4 e'4 | 
% 9
    r8 a'8 f'4 e'4 c'4 | 
\barNumberCheck #10
    b'4 r4 a''8 [ a''8 f''8 e''8 ] | 
% 11
    a''8 [ a''8 b''8 a''8 ] d''8 f''4 f''8 | 
% 12
    e''8 e''4 e''8 e''4 c''4 | 
% 13
    a''8 [ f''8 ] b'4 b'4 e'4  | 
\bar "|."
}


% The score definition
\score  {
\new Staff <<
%    \time 4/4
    \numericTimeSignature \time 4/4
    \clef "treble"
    \key c \major
    \tempo  4 = 100 
    \transposition c 
    \set Staff.midiInstrument = "shamisen"
    \shamisenOne
>>

\layout  { }
\midi  { }
}
