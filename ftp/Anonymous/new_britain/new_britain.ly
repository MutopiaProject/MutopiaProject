\header {
	title = "New Britain"
	composer = "Anonymous; Virginia Harmony, 1831"
	mutopiatitle = "New Britain (hymntune)"
	mutopiacomposer = "Anonymous"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1831"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1283"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/4 \partial 4  { \key g \major d'4 g'2 b'8 g' b'2 a'4 g'2 e'4 d'2 d'4 g'2 b'8 g' b'2 a'4 d''2. b'4 d''4. b'8 d'' b' g'2 d'4 e'4. g'8 g' e' d'2 d'4 g'2 b'8 g' b'2 a'4 g'2 ( g' ) s4  \bar "|." } }
Alto = { { \key g \major b4 b2 d'4 d'2 c'4 b2 c'4 b2 b4 b2 b4 d'2 d'4 d'2. d'4 d'2 d''8 b' d'2 d'4 c'4. d'8 c'4 b2 d'4 b2 d'4 d'2 c'4 b2 ( b ) s4  \bar "|." } }
Tenor = { { \key g \major g4 d2 g4 g2 fis4 g2 g4 g2 g4 d2 g4 g2 fis4 g2. g4 b2 b4 g2 g4 g2 e8 g g2 g4 g2 g8 b g2 fis4 g2 ( g ) s4  \bar "|." } }
Bass = { { \key g \major g,4 g,2 g,8 b, d2 d4 e2 c4 g,2 g,4 g,2 g,8 b, d2 c4 b,2. g,4 g2 g4 b,2 b,4 c4. b,8 c4 g,2 b,4 e2 d4 d2 d4 g,2 ( g, ) s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 50 4 ) } }
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
%T:New Britain
%M:3/4
%L:1/4
%C:Anonymous; Virginia Harmony, 1831
%Q:1/4=50
%F:new_britain.abc
%N:Public domain
%N:Virginia Harmony, 1831; Harmization: Edwin Othello Excell (1851-1921), 1900
%G:CM
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Chalice=546 Partial=4 Celebration=343 Title=Amazing Grace
%V:1
%D2G4B1G1B4A2G4E2D4D2G4B1G1B4A2d6B2d3B1d1B1G4D2E3G1G1E1D4D2G4B1G1B4A2G4-G4
%V:2
%B,2B,4D2D4C2B,4C2B,4B,2B,4B,2D4D2D6D2D4d1B1D4D2C3D1C2B,4D2B,4D2D4C2B,4-B,4
%V:3
%G,2D,4G,2G,4F,2G,4G,2G,4G,2D,4G,2G,4F,2G,6G,2B,4B,2G,4G,2G,4E,1G,1G,4G,2G,4G,1B,1G,4F,2G,4-G,4
%V:4
%G,,2G,,4G,,1B,,1D,4D,2E,4C,2G,,4G,,2G,,4G,,1B,,1D,4C,2B,,6G,,2G,4G,2B,,4B,,2C,3B,,1C,2G,,4B,,2E,4D,2D,4D,2G,,4-G,,4
%G,,2G,,4G,,1B,,1D,4D,2E,4C,2G,,4G,,2G,,4G,,1B,,1D,4C,2B,,6G,,2G,4G,2B,,4B,,2C,3B,,1C,2G,,4B,,2E,4D,2D,4D,2G,,4-G,,4
