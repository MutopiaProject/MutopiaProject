\header {
	title = "Regent Square"
	composer = "Henry Thomas Smart (1813-1879), 1867"
	mutopiatitle = "Regent Square (hymntune)"
	mutopiacomposer = "SmartHT"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1867"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1288"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key bes \major f'4 d' bes' f' d''4. c''8 bes'4 f' g' g' f' bes' f' ees' d'2 f'4 d' bes' f' d''4. c''8 bes'4 a' bes' a' g' a'8 bes' a'4 g' f'2 c''4. c''8 a'4 f' d''4. c''8 bes'4 g' ees'' d'' c'' bes' bes' a' bes'2  \bar "|." } }
Alto = { { \key bes \major d'4 bes f' d' f'4. f'8 f'4 f' bes bes bes bes c' a bes2 d'4 bes f' f'8 ees' d'4. ees'8 d'4 d' d' d' d' d' f' e' f'2 f'4. f'8 f'4 f' f'4. d'8 ees'4 ees' g' f' ees' d'8 ees' f'4 f'8 ees' d'2  \bar "|." } }
Tenor = { { \key bes \major bes4 f f bes bes4. a8 bes4 bes g bes f g f f f2 bes4 bes f f bes4. a8 g4 ges g ges d' c'8 bes c'4 bes a2 a4. a8 c'4 a bes4. aes8 g4 bes c' f g8 a bes4 c' c' bes2  \bar "|." } }
Bass = { { \key bes \major bes,4 bes, d bes, f4. ees8 d4 d ees ees d g, a, f, bes,2 bes4 f d d8 c bes,4. c8 d4 d g d bes, g, c c f,2 f4. f8 f4 f bes,4. bes,8 ees4 ees c d ees8 f g4 f f, bes,2  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 117 4 ) } }
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
%T:Regent Square
%M:4/4
%L:1/8
%C:Henry Thomas Smart (1813-1879), 1867
%Q:1/4=117
%F:regent_square.abc
%N:Public domain
%G:87.87.87
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Bb
%I:0,0
%V:1
%F4D4B4F4d6c2B4F4G4G4F4B4F4E4D7F4D4B4F4d6c2B4A4B4A4G4A2B2A4G4F7c6c2A4F4d6c2B4G4e4d4c4B4B4A4B8
%V:2
%D4B,4F4D4F6F2F4F4B,4B,4B,4B,4C4A,4B,7D4B,4F4F2E2D6E2D4D4D4D4D4D4F4=E4F7F6F2F4F4F6D2_E4E4G4F4E4D2E2F4F2E2D8
%V:3
%B,4F,4F,4B,4B,6A,2B,4B,4G,4B,4F,4G,4F,4F,4F,7B,4B,4F,4F,4B,6A,2G,4_G,4=G,4_G,4D4C2B,2C4B,4A,7A,6A,2C4A,4B,6_A,2=G,4B,4C4F,4G,2=A,2B,4C4C4B,8
%V:4
%B,,4B,,4D,4B,,4F,6E,2D,4D,4E,4E,4D,4G,,4A,,4F,,4B,,7B,4F,4D,4D,2C,2B,,6C,2D,4D,4=G,4D,4B,,4G,,4C,4C,4F,,7F,6F,2F,4F,4B,,6B,,2E,4E,4C,4D,4E,2F,2G,4F,4F,,4B,,8
%B,,4B,,4D,4B,,4F,6E,2D,4D,4E,4E,4D,4G,,4A,,4F,,4B,,7B,4F,4D,4D,2C,2B,,6C,2D,4D,4=G,4D,4B,,4G,,4C,4C,4F,,7F,6F,2F,4F,4B,,6B,,2E,4E,4C,4D,4E,2F,2G,4F,4F,,4B,,8
