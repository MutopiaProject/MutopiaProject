\version "2.14.2"

\paper {
  top-margin = 2 \cm
  bottom-margin = 2 \cm
%  oddFooterMarkup = \tsfooter  
}

\header {
mutopiatitle = "Amazing Grace"
mutopiacomposer = "Traditional"
%mutopiapoet = ""
%mutopiaopus = ""
mutopiainstrument = "Scottish Bagpipes"
%date = "" 
% source = ""
style = "Hymn"
copyright = "Creative Commons Attribution-ShareAlike 3.0"  
maintainer = "Breizh Partitions"
maintainerEmail = "contact (at) breizh-partitions (dot) fr"
maintainerWeb = "http://www.breizh-partitions.fr/"
moreInfo = "Typeset by Breizh Partitions, 2012."  

title = "Amazing Grace"
meter = "Hymn"
% subtitle = "Christian hymn"
arranger = "Trad. / Arr.: Breizh Partitions"

 mutopiasource = "New arrangement"
 footer = "Mutopia-2012/02/12-1832"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

bagpipeOne = {
% 1
	\partial 4.
	% \grace{\stemDown \small aes''16} % BUG
	bes'4 ees''8
	| 
% 2
	\grace{\stemDown \small aes''16 [ees''16 d''16]} ees''2. \grace{\stemDown \small aes''16} g''8. f''16 ees''8  | 
% 3
	\grace{\stemDown \small aes''16 [g''16 aes''16]} g''2. \grace{\stemDown \small aes''16} g''4 f''8 | % 
% 4
	\grace{\stemDown \small aes'16 [ees''16 aes'16 d''16]} ees''2. \grace{\stemDown \small aes''16 [c''16 ees''16]} c''4. | 
% 5
    \grace{\stemDown \small aes'16 [c''16 aes'16]} bes'2. \grace{\stemDown \small aes''16} bes'4 ees''8 | 
% 6
	\grace{\stemDown \small aes''16 [ees''16 d''16]} ees''2. \grace{\stemDown \small aes''16} g''8. f''16 ees''8  | 
% 7
	\grace{\stemDown \small aes''16 [g''16 aes''16]} g''2. \grace{\stemDown \small aes''16 [g''16]}  f''4 g''8 |
% 8
	\grace{\stemDown \small bes''16 [aes''16]} {\stemUp bes''2.} \grace{\stemDown \small aes''16}  {\stemUp bes''4.}  | 
% 9
	\grace{\stemDown \small aes'16 [ees''16 aes'16]} {\stemUp bes''2.} g''4 {\stemUp bes''8}  | 
% 10
	\grace{\stemDown \small bes''16 [aes''16]} {\stemUp bes''2.} g''8. f''16 ees''8 | 
% 11
	\grace{\stemDown \small aes''16 [g''16 aes''16]} g''2. \grace{\stemDown \small aes''16} g''4 f''8 | % 
% 12
	\grace{\stemDown \small aes'16 [ees''16 aes'16 d''16]} ees''2. \grace{\stemDown \small aes''16 [c''16 ees''16]} c''4. | 
% 13
    \grace{\stemDown \small aes'16 [c''16 aes'16]} bes'2. \grace{\stemDown \small aes''16} bes'4 ees''8 | 
% 14
	\grace{\stemDown \small aes''16 [ees''16 d''16]} ees''2. \grace{\stemDown \small aes''16} g''8. f''16 ees''8  | 
% 15
	\grace{\stemDown \small aes''16 [g''16 aes''16]} g''2. \grace{\stemDown \small aes''16 [g''16]}  f''4. |
    \grace{\stemDown \small aes'16 [ees''16 aes'16 d''16]} ees''2. \grace{\stemDown \small d''16} ees''4. | 
% 16
	\partial 2.
    \grace{\stemDown \small aes''16 [ees''16 d''16]} ees''2.  | 

\barNumberCheck #16
\bar "|."
}




% The score definition
\score  {
\new Staff  <<
    \time 9/8  
    \clef "G^8"
    \key ees \major  
    \transposition c  
%     \tempo "Moderato" 4 = 100 
    \set Staff.midiInstrument = "bagpipe"
    \bagpipeOne
>>

\layout  { }
\midi  { }
}
