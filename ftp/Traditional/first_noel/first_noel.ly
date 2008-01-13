\header {
	title = "The First Noel"
	composer = "Traditional; English carol, c. 13th century, arr. first published 1833"
	mutopiatitle = "The First Noel (hymntune)"
	mutopiacomposer = "Traditional"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1833"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1243"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/4  { \key d \major fis'8 e' d'4. e'8 fis' g' a'2 b'8 cis'' d''4 cis'' b' a'2 b'8 cis'' d''4 cis'' b' a' b' cis'' d'' a' g' fis'2 fis'8 e' d'4. e'8 fis' g' a'2 b'8 cis'' d''4 cis'' b' a'2 b'8 cis'' d''4 cis'' b' a' b' cis'' d'' a' g' fis'2 fis'8 e' d'4. e'8 fis' g' a'2 d''8 cis'' b'2 b'4 a'2 a'4 d'' cis'' b' a' b' cis'' d'' a' g' fis'2  \bar "|." } }
Alto = { { \key d \major d'4 a2 d'4 e'2 e'4 a' a' g' fis'2 d'8 e' a'4 fis' g' a' d' g' fis' fis' e' d'2 cis'4 a2 d'8 d' e'2 e'4 a' a' g' fis'2 d'8 e' a'4 fis' g' a' g' g' fis' fis' e' d'2 cis'4 a2 d'4 cis'2 fis'4 g'2 g'4 fis'2 a'4 fis' fis' g' fis'2 g'4 fis'2 e'4 d'2  \bar "|." } }
Tenor = { { \key d \major a8 g fis2 d'4 cis'2 b4 a a b8 cis' d'2 b8 a a4 a cis' d' b g a d' a a2 a8 g fis2 d'8 d' d'4 cis' b a a b8 cis' d'2 b8 a a4 a cis' d' d' e' a d' a a2 a8 g fis2 b4 a2 a4 b4. cis'8 d' e' fis'2 e'4 d' d' d' d'2 g4 a2 ( a4 ) a2  \bar "|." } }
Bass = { { \key d \major d4 d2 b,4 a, a g fis fis g d2 g8 g fis4 d e fis g e fis8 g a4 a d2 a,4 d2 b,8 b, a,4 a g fis fis g d2 g8 g fis4 d e fis g e fis8 g a4 a, d2 a,4 d2 b,4 fis2 d4 g4. a8 b cis' d'2 cis'4 b a g d' ( d ) e fis8 g a4 a, d2  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 107 4 ) } }
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
%T:The First Noel
%M:3/4
%L:1/8
%C:Traditional; English carol, c. 13th century, arr. first published 1833
%Q:1/4=107
%F:first_noel.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:D
%I:Title=The First Noel
%V:1
%F2E2D6E2F2G2A8B2c2d4c4B4A7B2c2d4c4B4A4B4c4d4A4G4F7F2E2D6E2F2G2A8B2c2d4c4B4A7B2c2d4c4B4A4B4c4d4A4G4F7F2E2D6E2F2G2A8d2c2B8B4A8A4d4c4B4A4B4c4d4A4G4F8
%V:2
%D4A,8D4E8E4A4A4G4F7D2E2A4F4G4A4D4G4F4F4E4D7C4A,8D2D2E8E4A4A4G4F7D2E2A4F4G4A4G4G4F4F4E4D7C4A,8D4C8F4G8G4F8A4F4F4G4F8G4F8E4D8
%V:3
%A,2G,2F,8D4C8B,4A,4A,4B,2C2D7B,2A,2A,4A,4C4D4B,4G,4A,4D4A,4A,7A,2G,2F,8D2D2D4C4B,4A,4A,4B,2C2D7B,2A,2A,4A,4C4D4D4E4A,4D4A,4A,7A,2G,2F,8B,4A,8A,4B,6C2D2E2F8E4D4D4D4D8G,4A,8-A,4A,8
%V:4
%D,4D,8B,,4A,,4A,4G,4F,4F,4G,4D,7G,2G,2F,4D,4E,4F,4G,4E,4F,2G,2A,4A,4D,7A,,4D,8B,,2B,,2A,,4A,4G,4F,4F,4G,4D,7G,2G,2F,4D,4E,4F,4G,4E,4F,2G,2A,4A,,4D,7A,,4D,8B,,4F,8D,4G,6A,2B,2C2D8C4B,4A,4G,4D4-D,4E,4F,2G,2A,4A,,4D,8
%D,4D,8B,,4A,,4A,4G,4F,4F,4G,4D,7G,2G,2F,4D,4E,4F,4G,4E,4F,2G,2A,4A,4D,7A,,4D,8B,,2B,,2A,,4A,4G,4F,4F,4G,4D,7G,2G,2F,4D,4E,4F,4G,4E,4F,2G,2A,4A,,4D,7A,,4D,8B,,4F,8D,4G,6A,2B,2C2D8C4B,4A,4G,4D4-D,4E,4F,2G,2A,4A,,4D,8
