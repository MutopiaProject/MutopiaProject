\header {
	title = "Lobe den Herren"
	composer = "Anonymous; Stralsund Gesangbuch, 1665, arr. William S. Bennett (1816-1875), 1864"
	mutopiatitle = "Lobe den Herren (hymntune)"
	mutopiacomposer = "Anonymous"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1665"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1256"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/4  \transpose g f { \key g \major g'4 g' d'' b'4. a'8 g'4 fis' e' d' e' fis' g' a'2. g' g'4 g' d'' b'4. a'8 g'4 fis' e' d' e' fis' g' a'2. g' d''4 d'' d'' e''2. ( b'4 ) c'' d'' d''4. c''8 b'4 a'2. d'4 e' fis' g' a' b' a'2. g'  \bar "|." } }
Alto = { \transpose g f { \key g \major d'4 e' d' d'4. fis'8 e'4 d' c' b c' c' b e' d' c' b2. d'4 e' d' d'4. fis'8 e'4 d' c' b c' c' b e' d' c' b2. d'4 fis' g' g'2. g'4 g' d'' g'8 fis' e' e' d'4 d'2. d'4 c' c' b d' d' e' d' c' b2.  \bar "|." } }
Tenor = { \transpose g f { \key g \major b4 b a d'4. c'8 b4 b8 a g4 g g a g g fis2 g2. b4 b a d'4. c'8 b4 b8 a g4 g g a g g fis2 g2. b4 c' d' c'2. d'4 c' a g g g fis2. g4 g a g fis g g fis2 g2.  \bar "|." } }
Bass = { \transpose g f { \key g \major g4 e fis g4. d8 e4 b, c g, c a, e c d2 g,2. g4 e fis g4. d8 e4 b, c g, c a, e c d2 g,2. g4 a b c'2. g4 e d b, c g, d2. b,4 c a, e d b, c d2 g,2.  \bar "|." } }


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
%T:Lobe den Herren
%M:3/4
%L:1/8
%C:Anonymous; Stralsund Gesangbuch, 1665, arr. William S. Bennett (1816-1875), 1864
%Q:1/4=120
%F:lobe_den_Herren.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Chalice=25 Transpose=-2  Title=Praise to the Lord, the Almighty
%V:1
%G4G4d4B6A2G4F4E4D4E4F4G4A12G12G4G4d4B6A2G4F4E4D4E4F4G4A12G12d4d4d4e12-B4c4d4d6c2B4A12D4E4F4G4A4B4A12G12
%V:2
%D4E4D4D6F2E4D4C4B,4C4C4B,4E4D4C4B,12D4E4D4D6F2E4D4C4B,4C4C4B,4E4D4C4B,12D4F4G4G12G4G4d4G2F2E2E2D4D12D4C4C4B,4D4D4E4D4C4B,12
%V:3
%B,4B,4A,4D6C2B,4B,2A,2G,4G,4G,4A,4G,4G,4F,8G,12B,4B,4A,4D6C2B,4B,2A,2G,4G,4G,4A,4G,4G,4F,8G,12B,4C4D4C12D4C4A,4G,4G,4G,4F,12G,4G,4A,4G,4F,4G,4G,4F,8G,12
%V:4
%G,4E,4F,4G,6D,2E,4B,,4C,4G,,4C,4A,,4E,4C,4D,8G,,12G,4E,4F,4G,6D,2E,4B,,4C,4G,,4C,4A,,4E,4C,4D,8G,,12G,4A,4B,4C12G,4E,4D,4B,,4C,4G,,4D,12B,,4C,4A,,4E,4D,4B,,4C,4D,8G,,12
%G,4E,4F,4G,6D,2E,4B,,4C,4G,,4C,4A,,4E,4C,4D,8G,,12G,4E,4F,4G,6D,2E,4B,,4C,4G,,4C,4A,,4E,4C,4D,8G,,12G,4A,4B,4C12G,4E,4D,4B,,4C,4G,,4D,12B,,4C,4A,,4E,4D,4B,,4C,4D,8G,,12
