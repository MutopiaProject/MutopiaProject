\header {
	title = "Boylston"
	composer = "Lowell Mason (1792-1872), 1832"
	mutopiatitle = "Boylston (hymntune)"
	mutopiacomposer = "MasonL"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1832"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1226"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/4 \partial 4  { \key c \major g'4 e'8 f' g'4 a' g'2 c''4 c''8 b' a'4 a' g'2 g'4 e'8 f' g'4 g' a'8 b' c''4 b' c''8 a' g'4 g' g'2 s4  \bar "|." } }
Alto = { { \key c \major e'4 c'8 d' e'4 f' e'2 e'4 fis'8 d' e'4 d' d'2 e'4 c'8 c' c'4 e' f'8 f' e'4 d' c'8 f' d'4 f' e'2 s4  \bar "|." } }
Tenor = { { \key c \major g4 g8 g g c' c'4 c'2 c'4 a8 g g4 fis8 c' b2 c'4 g8 g g4 c' c'8 g g4 g g8 c' c'4 b c'2 s4  \bar "|." } }
Bass = { { \key c \major c4 c8 c c4 f c2 c4 d8 g c4 d g2 c4 c8 d e4 c f8 d c4 g e8 f g4 g, c2 s4  \bar "|." } }


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
%T:Boylston
%M:3/4
%L:1/8
%C:Lowell Mason (1792-1872), 1832
%Q:1/4=115
%F:boylston.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:C
%I:Chalice=404 Partial=4 Title=A Hymn of Joy We Sing
%V:1
%G4E2F2G4A4G8c4c2B2A4A4G8G4E2=F2G4G4A2B2c4B4c2A2G4G4G8
%V:2
%E4C2D2E4F4E8E4^F2D2E4D4D8E4C2C2C4E4F2F2E4D4C2F2D4F4E8
%V:3
%G,4G,2G,2G,2C2C4C8C4A,2G,2G,4^F,2C2B,8C4G,2G,2G,4C4C2G,2G,4G,4G,2C2C4B,4C8
%V:4
%C,4C,2C,2C,4F,4C,8C,4D,2G,2C,4D,4G,8C,4C,2D,2E,4C,4=F,2D,2C,4G,4E,2F,2G,4G,,4C,8
%C,4C,2C,2C,4F,4C,8C,4D,2G,2C,4D,4G,8C,4C,2D,2E,4C,4=F,2D,2C,4G,4E,2F,2G,4G,,4C,8
