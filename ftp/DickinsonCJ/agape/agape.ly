\header {
	title = "Agape"
	composer = "Charles J. Dickinson (1822-1883)"
	mutopiatitle = "Agape (hymntune)"
	mutopiacomposer = "DickinsonCJ"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = ""
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1221"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/4  \transpose g f { \key g \major d'4 e' fis' g'2 b'4 b' a' e' g'2 fis'4 g' fis' e' d'2 g'4 a'2 b'4 a'2. a'4 b' c'' d''2 d''4 e''2 e''4 d''2 b'4 d'' c'' b' b' a' e' g'2 a'4 g'2.  \bar "|." } }
Alto = { \transpose g f { \key g \major b4 c' d' d'2 d'4 cis'2 cis'4 d'2 d'4 d'2 c'4 b2 d'4 a'2 g'4 fis'2. fis'4 g' a' b'2 g'4 g'2 g'4 fis'2 g'4 d' fis' g' e'2 a4 b d' fis' g'2.  \bar "|." } }
Tenor = { \transpose g f { \key g \major g4 g c' b2 d'4 g2 g4 b2 a4 g2 g4 g2 b4 d'2 d'4 d'2. d'4 d' d' d'2 b4 c'2 c'4 a2 g4 g a b d' c' g g b c' b2.  \bar "|." } }
Bass = { \transpose g f { \key g \major g,4 c a, g,2 g4 e2 e4 d2 d4 b,2 c4 g,2 g4 fis2 g4 d2. c'4 b a g2 g4 c2 c4 d2 e4 b, a, g, c2 cis4 d2 d4 g2.  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 86 4 ) } }
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
%T:Agape
%M:3/4
%L:1/8
%C:Charles J. Dickinson (1822-1883)
%Q:1/4=86
%F:agape.abc
%N:Public domain
%G:87.87
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Chalice=411 Transpose=-2 Title=For the Bread, Which You Have Broken
%V:1
%D4E4F4G8B4B4A4E4G8F4G4F4E4D8G4A8B4A12A4B4c4d8d4e8e4d8B4d4c4B4B4A4E4G8A4G12
%V:2
%B,4C4D4D8D4^C8^C4D8D4D8=C4B,8D4A8G4F12F4G4A4B8G4G8G4F8G4D4F4G4E8A,4B,4D4F4G12
%V:4
%G,4G,4C4B,8D4G,8G,4B,8A,4G,8G,4G,8B,4D8D4D12D4D4D4D8B,4C8C4A,8G,4G,4A,4B,4D4C4G,4G,4B,4C4B,12
%V:4
%G,,4C,4A,,4G,,8G,4E,8E,4D,8D,4B,,8C,4G,,8G,4F,8G,4D,12C4B,4A,4G,8G,4C,8C,4D,8E,4B,,4A,,4G,,4C,8^C,4D,8D,4G,12
%G,,4C,4A,,4G,,8G,4E,8E,4D,8D,4B,,8C,4G,,8G,4F,8G,4D,12C4B,4A,4G,8G,4C,8C,4D,8E,4B,,4A,,4G,,4C,8^C,4D,8D,4G,12
