\header {
	title = "Lyons"
	composer = "Johann Michael Haydn (1737-1806) (possibly spurious); arr. William Gardiner (1770-1853), 1815"
	mutopiatitle = "Lyons (hymntune)"
	mutopiacomposer = "HaydnJM"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1815"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1257"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/4 \partial 4  { \key g \major d'4 g' g' a' b'2 g'4 c'' c'' b' a'2 d'8 c' g'4 g' a' b'2 c''4 d''8 c'' b'4 a' g'2 d'4 d' d' e' fis' fis' g' a' a' b' c''2 d'8 c' g'4 g' a' b' b' c'' d''8 c'' b'4 a' g'2 s4  \bar "|." } }
Alto = { { \key g \major b4 d' d' d' d'2 d'4 c' d' d' d'2 d'8 c' b4 d' d' d'2 e'4 d'8 e' d'4 c' b2 d'4 d' d' cis' c' c' b a d' g' fis'2 d'8 c' b4 d' d' d' d' e' d'8 e' d'4 c' b2 s4  \bar "|." } }
Tenor = { { \key g \major g4 b g fis g2 g4 g a g fis2 fis4 g g fis g2 g4 g g fis g2 fis4 fis fis g a a g fis fis g a2 fis4 g g fis g g g g g fis g2 s4  \bar "|." } }
Bass = { { \key g \major g,4 g, b, d g2 b,4 e fis g d2 d4 g, b, d g2 e4 b,8 c d4 d g,2 d4 d d d d d d d d d d2 d4 g, b, d g g e b,8 c d4 d g,2 s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 120 4 ) } }
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
%T:Lyons
%M:3/4
%L:1/8
%C:Johann Michael Haydn (1737-1806) (possibly spurious); arr. William Gardiner (1770-1853), 1815
%Q:1/4=120
%F:lyons.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Chalice=17 Partial=4 Title=O Worship the King
%V:1
%D4G4G4A4B8G4c4c4B4A8D2C2G4G4A4B8c4d2c2B4A4G7D4D4D4E4F4F4G4A4A4B4c8D2C2G4G4A4B4B4c4d2c2B4A4G8
%V:2
%B,4D4D4D4D8D4C4D4D4D8D2C2B,4D4D4D8E4D2E2D4C4B,7D4D4D4^C4=C4C4B,4A,4D4G4F8D2C2B,4D4D4D4D4E4D2E2D4C4B,8
%V:3
%G,4B,4G,4F,4G,8G,4G,4A,4G,4F,8F,4G,4G,4F,4G,8G,4G,4G,4F,4G,7F,4F,4F,4G,4A,4A,4G,4F,4F,4G,4A,8F,4G,4G,4F,4G,4G,4G,4G,4G,4F,4G,8
%V:4
%G,,4G,,4B,,4D,4G,8B,,4E,4F,4G,4D,8D,4G,,4B,,4D,4G,8E,4B,,2C,2D,4D,4G,,7D,4D,4D,4D,4D,4D,4D,4D,4D,4D,4D,8D,4G,,4B,,4D,4G,4G,4E,4B,,2C,2D,4D,4G,,8
%G,,4G,,4B,,4D,4G,8B,,4E,4F,4G,4D,8D,4G,,4B,,4D,4G,8E,4B,,2C,2D,4D,4G,,7D,4D,4D,4D,4D,4D,4D,4D,4D,4D,4D,8D,4G,,4B,,4D,4G,4G,4E,4B,,2C,2D,4D,4G,,8
