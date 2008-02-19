\header {
	title = "Stuttgart"
	composer = "Christian Friedrich Witt (1660-1716)"
	mutopiatitle = "Stuttgart (hymntune)"
	mutopiacomposer = "WittCF"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = ""
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1296"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key g \major d'4 d' g' g' a' a' b' g' d'' d'' e'' c'' a' d'' b'2 b'4 b' a' b' g' a' g' fis' g' e' d' g' g' fis' g'2 ( g'2 )  \bar "|." } }
Alto = { { \key g \major d'4 d' b b e' d' d' d' d' g' g' g' g' fis' g'2 g'4 g' fis' fis' b e' d' d' d' c' b d' d' d' d'2 ( d'2 )  \bar "|." } }
Tenor = { { \key g \major b4 a g g g fis g b g b c' e' d' d' d'2 e'4 b c' b b a a a g g d' b a8 b c'4 b2 ( b2 )  \bar "|." } }
Bass = { { \key g \major g4 fis e d c d g g, b, g, c a, d d g2 e4 e e dis e cis d c b, c g, b,8 c d4 d g,2 ( g,2 )  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 112 4 ) } }
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
%T:Stuttgart
%M:4/4
%L:1/8
%C:Christian Friedrich Witt (1660-1716)
%Q:1/4=112
%F:stuttgart.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:0,0
%V:1
%D4D4G4G4A4A4B4G4d4d4e4c4A4d4B7B4B4A4B4G4A4G4F4G4E4D4G4G4F4G8-G7
%V:2
%D4D4B,4B,4E4D4D4D4D4G4G4G4G4F4G7G4G4F4F4B,4E4D4D4D4C4B,4D4D4D4D8-D7
%V:3
%B,4A,4G,4G,4G,4F,4G,4B,4G,4B,4C4E4D4D4D7E4B,4C4B,4B,4A,4A,4A,4G,4G,4D4B,4A,2B,2C4B,8-B,7
%V:4
%G,4F,4E,4D,4C,4D,4G,4G,,4B,,4G,,4C,4A,,4D,4D,4G,7E,4E,4E,4^D,4E,4^C,4=D,4=C,4B,,4C,4G,,4B,,2C,2D,4D,4G,,8-G,,7
%G,4F,4E,4D,4C,4D,4G,4G,,4B,,4G,,4C,4A,,4D,4D,4G,7E,4E,4E,4^D,4E,4^C,4=D,4=C,4B,,4C,4G,,4B,,2C,2D,4D,4G,,8-G,,7
