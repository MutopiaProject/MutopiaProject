\header {
	title = "Azmon"
	composer = "Carl Gotthelf Glaser (1784-1829), arranged by Lowell Mason (1792-1872)"
	mutopiatitle = "Azmon (hymntune)"
	mutopiacomposer = "GlaserCG"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = ""
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1224"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/2 \partial 2  { \key g \major d'2 g'4 g' a'2 a' b'4 a' g'2 a' b'4 b' c''2 b' a'1 d''2 d''4 b' b'2 g' g'4 e' e'2 g'4 e' d' g' g'2 a' g'1 s2  \bar "|." } }
Alto = { { \key g \major d'2 d'4 b d'2 d' d'4 c' b2 d' d'4 d' d'2 d' d'1 fis'2 g'4 d' d'2 d' e'4 c' c'2 e'4 ( c' ) b b b2 c' b1 s2  \bar "|." } }
Tenor = { { \key g \major d2 d4 g fis2 fis g4 fis g2 fis g4 g a2 g fis1 a2 b4 g g2 g g4 g g2 g g4 g g2 fis g1 s2  \bar "|." } }
Bass = { { \key g \major d2 b,4 g, d2 d g4 d e2 d g4 g fis2 g d1 d2 g4 g g2 b, c4 c c2 c d4 d d2 d g,1 s2  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 100 4 ) } }
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
%T:Azmon
%M:3/2
%L:1/4
%C:Carl Gotthelf Glaser (1784-1829), arranged by Lowell Mason (1792-1872)
%Q:1/4=100
%F:azmon.abc
%N:Public domain
%G:CM
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Partial=2 Chalice=5 Title=O For a Thousand Tongues
%V:1
%D4G2G2A4A4B2A2G4A4B2B2c4B4A8d4d2B2B4G4G2E2E4G2E2D2G2G4A4G8
%V:2
%D4D2B,2D4D4D2C2B,4D4D2D2D4D4D8F4G2D2D4D4E2C2C4E2-C2B,2B,2B,4C4B,8
%V:3
%D,4D,2G,2F,4F,4G,2F,2G,4F,4G,2G,2A,4G,4F,8A,4B,2G,2G,4G,4G,2G,2G,4G,4G,2G,2G,4F,4G,8
%V:4
%D,4B,,2G,,2D,4D,4G,2D,2E,4D,4G,2G,2F,4G,4D,8D,4G,2G,2G,4B,,4C,2C,2C,4C,4D,2D,2D,4D,4G,,8
%D,4B,,2G,,2D,4D,4G,2D,2E,4D,4G,2G,2F,4G,4D,8D,4G,2G,2G,4B,,4C,2C,2C,4C,4D,2D,2D,4D,4G,,8
