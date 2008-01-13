\header {
	title = "Bremen"
	composer = "George Neumark, 1657"
	mutopiatitle = "Bremen (hymntune)"
	mutopiacomposer = "NeumarkG"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1657"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1229"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/4  { \key c \major e'4 a' b' c'' b' a' b'8 a' gis'4 g' g' f' e' a' a' gis' a' e' a' b' c'' b' a' b'8 a' gis'4 g' g' f' e' a' a' gis' a' b' c'' d'' e'' e'' d'' d'' c'' e'' d'' c'' b' a'8 b' c''4 b'8 b' a'4 ( a'2. )  \bar "|." } }
Alto = { { \key c \major c'8 d' e'4 e' e' e'8 d' c'4 f' e' e' e' d' c' c' f' e' e' c'8 d' e'4 e' e' e'8 d' c'4 f' e' e' e' d' c' c' f' e' e' e' e' g' g' g' a' g' e' e' e' e' f'8 e' e' d' e'4. d'8 cis'4 ( cis'2. )  \bar "|." } }
Tenor = { { \key c \major a8 b c'4 b a gis a d'8 c' b4 b c' g g a b8 c' d'4 c' a8 b c'4 b a gis a d'8 c' b4 b c' g g a b8 c' d'4 c' gis a b c' c' c' b c' g gis a a8 gis a4 a gis a ( a2. )  \bar "|." } }
Bass = { { \key c \major a,4 a gis a e f8 e d4 e e a, b, c f8 e d4 e a, a, a gis a e f8 e d4 e e a, b, c f8 e d4 e a, e a g8 f e d c4 f g c c b, a, d8 e f4 e8 d e4 a, ( a,2. )  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 108 4 ) } }
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
%T:Bremen
%M:3/4
%L:1/8
%C:George Neumark, 1657
%Q:1/4=108
%F:bremen.abc
%N:Public domain
%G:98.98.8
%S:Based on work done by the Cyber Hymnal, www.cyberhymnal.org
%K:C
%I:Chalice=N Title=If You But Trust in God to Guide You
%V:1
%E4A4B4c4B4A4B2A2^G4=G4G4F4E4A4A4^G4A4E4A4B4c4B4A4B2A2^G4=G4G4F4E4A4A4^G4A4B4c4d4e4e4d4d4c4e4d4c4B4A2B2c4B2B2A4-A12
%V:2
%C2D2E4E4E4E2D2C4F4E4E4E4D4C4C4F4E4E4C2D2E4E4E4E2D2C4F4E4E4E4D4C4C4F4E4E4E4E4=G4G4G4A4G4E4E4E4E4F2E2E2D2E6D2^C4-^C12
%V:3
%A,2B,2=C4B,4A,4^G,4A,4D2C2B,4B,4C4=G,4G,4A,4B,2C2D4C4A,2B,2C4B,4A,4^G,4A,4D2C2B,4B,4C4=G,4G,4A,4B,2C2D4C4^G,4A,4B,4C4C4C4B,4C4G,4^G,4A,4A,2^G,2A,4A,4^G,4A,4-A,12
%V:4
%A,,4A,4^G,4A,4E,4F,2E,2D,4E,4E,4A,,4B,,4C,4F,2E,2D,4E,4A,,4A,,4A,4^G,4A,4E,4F,2E,2D,4E,4E,4A,,4B,,4C,4F,2E,2D,4E,4A,,4E,4A,4=G,2F,2E,2D,2C,4F,4G,4C,4C,4B,,4A,,4D,2E,2F,4E,2D,2E,4A,,4-A,,12
%A,,4A,4^G,4A,4E,4F,2E,2D,4E,4E,4A,,4B,,4C,4F,2E,2D,4E,4A,,4A,,4A,4^G,4A,4E,4F,2E,2D,4E,4E,4A,,4B,,4C,4F,2E,2D,4E,4A,,4E,4A,4=G,2F,2E,2D,2C,4F,4G,4C,4C,4B,,4A,,4D,2E,2F,4E,2D,2E,4A,,4-A,,12
