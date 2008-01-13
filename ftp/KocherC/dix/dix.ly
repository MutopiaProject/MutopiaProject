\header {
	title = "Dix"
	composer = "Conrad Kocher (1786-1872), 1838"
	mutopiatitle = "Dix (hymntune)"
	mutopiacomposer = "KocherC"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1838"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1235"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key g \major g'4 fis'8 g' a'4 g' c'' c'' b'2 e'4 fis' g' e' d' d' d'2 g'4 fis'8 g' a'4 g' c'' c'' b'2 e'4 fis' g' e' d' d' d'2 b'4 a' g' b' d''4. c''8 b'2 e'4 fis' g' c'' b' a' g'2  \bar "|." } }
Alto = { { \key g \major d'4 d' d' d' c' d' d'2 e'4 d' d' c' b a b2 d'4 d' d' d' c' d' d'2 e'4 d' d' c' b a b2 d'4 d' d' d' d'2 d' e'4 d' d' c' d'4. c'8 b2  \bar "|." } }
Tenor = { { \key g \major b4 c'8 b a4 b g a g2 g4 a g g g fis g2 b4 c'8 b a4 b g a g2 g4 a g g g fis g2 g4 d'8 c' b4 g a fis g2 g4 a g g g fis g2  \bar "|." } }
Bass = { { \key g \major g4 a8 g fis4 g e fis g2 c4 c b, c d d g,2 g4 a8 g fis4 g e fis g2 c4 c b, c d d g,2 g4 fis g g fis d g2 c4 c b, e d d g,2  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 113 4 ) } }
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
%T:Dix
%M:4/4
%L:1/8
%C:Conrad Kocher (1786-1872), 1838
%Q:1/4=113
%F:dix.abc
%N:Public domain
%G:77.77.77
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Chalice=56 Title=For the Beauty of the Earth
%V:1
%G4F2G2A4G4c4c4B8E4F4G4E4D4D4D8G4F2G2A4G4c4c4B8E4F4G4E4D4D4D8B4A4G4B4d6c2B8E4F4G4c4B4A4G8
%V:2
%D4D4D4D4C4D4D8E4D4D4C4B,4A,4B,8D4D4D4D4C4D4D8E4D4D4C4B,4A,4B,8D4D4D4D4D8D8E4D4D4C4D6C2B,8
%V:3
%B,4C2B,2A,4B,4G,4A,4G,8G,4A,4G,4G,4G,4F,4G,8B,4C2B,2A,4B,4G,4A,4G,8G,4A,4G,4G,4G,4F,4G,8G,4D2C2B,4G,4A,4F,4G,8G,4A,4G,4G,4G,4F,4G,8
%V:4
%G,4A,2G,2F,4G,4E,4F,4G,8C,4C,4B,,4C,4D,4D,4G,,8G,4A,2G,2F,4G,4E,4F,4G,8C,4C,4B,,4C,4D,4D,4G,,8G,4F,4G,4G,4F,4D,4G,8C,4C,4B,,4E,4D,4D,4G,,8
%G,4A,2G,2F,4G,4E,4F,4G,8C,4C,4B,,4C,4D,4D,4G,,8G,4A,2G,2F,4G,4E,4F,4G,8C,4C,4B,,4C,4D,4D,4G,,8G,4F,4G,4G,4F,4D,4G,8C,4C,4B,,4E,4D,4D,4G,,8
