\header {
	title = "Martyn"
	composer = "Simeon B. Marsh (1798-1875), 1834"
	mutopiatitle = "Martyn (hymntune)"
	mutopiacomposer = "MarshSB"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1834"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1259"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 6/4  { \key f \major a'2 a'4 a'2 f'4 g'2 g'4 g'2. a'2 a'4 c''2 bes'4 a'2. g' f'1. a'2 a'4 a'2 f'4 g'2 g'4 g'2. a'2 a'4 c''2 bes'4 a'2. g' f'1. c''2 c''4 c''2 c''4 d''2. d'' c''1. c''2 c''4 c''2 c''4 d''2. d'' c''1. a'2 a'4 a'2 f'4 g'2 g'4 g'2. a'2 a'4 c''2 bes'4 a'2. g' f'1.  \bar "|." } }
Alto = { { \key f \major f'2 f'4 f'2 f'4 e'2 e'4 e'2. f'2 f'4 f'2 g'4 f'2. e' f'1. f'2 f'4 f'2 f'4 e'2 e'4 e'2. f'2 f'4 f'2 g'4 f'2. e' f'1. f'2 e'4 f'2 f'4 f'2. f' f'1. f'2 e'4 f'2 f'4 f'2. f' e'1. f'2 f'4 f'2 f'4 e'2 e'4 e'2. f'2 f'4 f'2 f'4 f'2. f'2 e'4 f'1.  \bar "|." } }
Tenor = { { \key f \major c'2 c'4 c'2 a4 c'2 c'4 c'2. c'2 c'4 c'2 d'4 c'2. bes a1. c'2 c'4 c'2 a4 c'2 c'4 c'2. c'2 c'4 c'2 d'4 c'2. bes a1. a2 bes4 c'2 a4 bes2. bes a1. a2 bes4 c'2 a4 a2. b c'1. c'2 c'4 c'2 b4 c'2 c'4 c'2. c'2 c'4 ees'2 d'4 c'2. bes a1.  \bar "|." } }
Bass = { { \key f \major f2 f4 f2 f4 c2 c4 c2. f2 f4 a,2 bes,4 c2. c f1. f2 f4 f2 f4 c2 c4 c2. f2 f4 a,2 bes,4 c2. c f1. f2 g4 a2 f4 bes,2. bes,2 d4 f1. f2 g4 a2 f4 d2. g c1. f2 f4 f2 d4 c2 c4 c2. f2 f4 a2 bes4 c'2. c f1.  \bar "|." } }


  \score {
    \context GrandStaff <<
      \context Staff = upper <<
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        {   #(set-accidental-style 'modern-cautionary) \Soprano }
        { \Alto}
      >>  
      \context Staff = lower <<
        \set Staff.printPartCombineTexts = ##f
        \clef bass
        \partcombine	{  #(set-accidental-style 'modern-cautionary) \Tenor }
        { \Bass }
      >>  
    >>
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 60 4 ) } }
\layout {
  between-system-space = 1\mm
  \context {
    \Score
    % defaults
    % (shortest-duration-space . 2.0)
    % (spacing-increment . 1.2)
    % (base-shortest-duration . ,(ly:make-moment 1 8))
    % tighter spacing
    \override SpacingSpanner #'shortest-duration-space = #2.8
    \override SpacingSpanner #'spacing-increment = #0.6
    \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
    \remove "Bar_number_engraver"
  }
  \context { \Staff 
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
  }
  }
}
\paper {  first-page-number = 2
  print-first-page-number = ##t }
% -- ABC Source file follows --
%X:1
%T:Martyn
%M:6/4
%L:1/4
%C:Simeon B. Marsh (1798-1875), 1834
%Q:1/4=60
%F:martyn.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:F
%I:Chalice=542 Celebration=710 Title=Jesus, Lover of My Soul
%V:1
%A4A2A4F2G4G2G6A4A2c4B2A6G6F12A4A2A4F2G4G2G6A4A2c4B2A6G6F12c4c2c4c2d6d6c12c4c2c4c2d6d6c12A4A2A4F2G4G2G6A4A2c4B2A6G6F12
%V:2
%F4F2F4F2E4E2E6F4F2F4G2F6E6F12F4F2F4F2E4E2E6F4F2F4G2F6E6F12F4E2F4F2F6F6F12F4E2F4F2F6F6E12F4F2F4F2E4E2E6F4F2F4F2F6F4E2F12
%V:3
%C4C2C4A,2C4C2C6C4C2C4D2C6B,6A,12C4C2C4A,2C4C2C6C4C2C4D2C6B,6A,12A,4B,2C4A,2B,6B,6A,12A,4B,2C4A,2A,6=B,6C12C4C2C4=B,2C4C2C6C4C2_E4D2C6B,6A,12
%V:4
%F,4F,2F,4F,2C,4C,2C,6F,4F,2A,,4B,,2C,6C,6F,12F,4F,2F,4F,2C,4C,2C,6F,4F,2A,,4B,,2C,6C,6F,12F,4G,2A,4F,2B,,6B,,4D,2F,12F,4G,2A,4F,2D,6G,6C,12F,4F,2F,4D,2C,4C,2C,6F,4F,2A,4_B,2C6C,6F,12
%F,4F,2F,4F,2C,4C,2C,6F,4F,2A,,4B,,2C,6C,6F,12F,4F,2F,4F,2C,4C,2C,6F,4F,2A,,4B,,2C,6C,6F,12F,4G,2A,4F,2B,,6B,,4D,2F,12F,4G,2A,4F,2D,6G,6C,12F,4F,2F,4D,2C,4C,2C,6F,4F,2A,4_B,2C6C,6F,12
