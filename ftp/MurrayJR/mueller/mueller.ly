\header {
	title = "Mueller"
	composer = "James Ramsey Murray (1841-1905)"
	mutopiatitle = "Mueller (hymntune)"
	mutopiacomposer = "MurrayJR"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = ""
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1264"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key f \major c''4 c''4. bes'8 a'4 a' g' f' f' e' d' c'2 c'4 c'4. d'8 c'4 c' g' e' d' c' f' a'2 c''4 c''4. bes'8 a'4 a' g' f' f' e' d' c'2 c'4 bes'4. a'8 g'4 a' g' f' g' d' e' f'2  \bar "|." } }
Alto = { { \key f \major f'4 f'4. g'8 f'4 f' c' c' d' c' bes a2 a4 bes4. bes8 bes4 bes bes bes bes a c' f'2 f'4 f'4. g'8 f'4 f' c' c' d' c' bes a2 c'4 e'4. f'8 e'4 f' c' c' d' bes c' c'2  \bar "|." } }
Tenor = { { \key f \major a4 a4. d'8 c'4 c' bes a bes f f f2 f4 e4. e8 e4 e e g f f a c'2 a4 a4. d'8 c'4 c' bes a bes f f f2 f4 g4. c'8 c'4 c' bes a g g bes a2  \bar "|." } }
Bass = { { \key f \major f4 f4. f8 f4 f f f bes, bes, bes, f,2 f,4 c4. c8 c4 c c c f f f f2 f4 f4. f8 f4 f f f bes, bes, bes, f,2 a,4 c4. c8 c4 f f f bes, g, c f2  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 115 4 ) } }
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
%T:Mueller
%M:4/4
%L:1/8
%C:James Ramsey Murray (1841-1905)
%Q:1/4=115
%F:mueller.abc
%N:Public domain
%G:11.11.11.11
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:F
%I:Title=Away in a Manger
%V:1
%c4c6B2A4A4G4F4F4E4D4C7C4C6D2C4C4G4E4D4C4F4A7c4c6B2A4A4G4F4F4E4D4C7C4B6A2G4A4G4F4G4D4E4F8
%V:2
%F4F6G2F4F4C4C4D4C4B,4A,7A,4B,6B,2B,4B,4B,4B,4B,4A,4C4F7F4F6G2F4F4C4C4D4C4B,4A,7C4E6F2E4F4C4C4D4B,4C4C8
%V:3
%A,4A,6D2C4C4B,4A,4B,4F,4F,4F,7F,4E,6E,2E,4E,4E,4G,4F,4F,4A,4C7A,4A,6D2C4C4B,4A,4B,4F,4F,4F,7F,4G,6C2C4C4B,4A,4G,4G,4B,4A,8
%V:4
%F,4F,6F,2F,4F,4F,4F,4B,,4B,,4B,,4F,,7F,,4C,6C,2C,4C,4C,4C,4F,4F,4F,4F,7F,4F,6F,2F,4F,4F,4F,4B,,4B,,4B,,4F,,7A,,4C,6C,2C,4F,4F,4F,4B,,4G,,4C,4F,8
%F,4F,6F,2F,4F,4F,4F,4B,,4B,,4B,,4F,,7F,,4C,6C,2C,4C,4C,4C,4F,4F,4F,4F,7F,4F,6F,2F,4F,4F,4F,4B,,4B,,4B,,4F,,7A,,4C,6C,2C,4F,4F,4F,4B,,4G,,4C,4F,8
