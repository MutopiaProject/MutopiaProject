\header {
	title = "Von Himmel Hoch"
	composer = "Anonymous; Geistliche Lieder (Leipzig, Germany): 1539"
	mutopiatitle = "Von Himmel Hoch (hymntune)"
	mutopiacomposer = "Anonymous"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1539"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1302"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  { \key c \major c''4 b' a' b'8 a' g'4 a' b' c'' c'' c'' g' g' e'8 f' g'4 f' e' e' a' a' g'8 a' b'4 c''8 b' a'4 g' c'' b' a' g' a'8 g' f' e' d'4 c' s4  \bar "|." } }
Alto = { { \key c \major g'4 g'8 fis' e'4 d' e'8 d' c'4 d' e' e'8 f' g' f' e'4 d' c' c' d' c' c'8 d' e'4 d' d'8 fis' g'4 g' g'8 fis' g'4 e'8 d' d' e' e' d' d' c' c'4 c'8 a b4 c' s4  \bar "|." } }
Tenor = { { \key c \major e'4 d' c'8 c' b4 c'8 b a g f4 g g c' c' b ais8 a g4 g g g g fis g8 c' b a g b e' d' b4 a g8 e g f f e a b c'4 g8 f e4 s4  \bar "|." } }
Bass = { { \key c \major c4 g4. fis8 g f e4 f8 e d4 c c8 d e4 e8 f g4 g8 f e d c b, c4 c cis d8 c b, a, g,4 d8 c c d g4 g8 fis g e c d b, c f g a f g g, c4 s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 110 4 ) } }
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
%T:Von Himmel Hoch
%M:4/4
%L:1/8
%C:Anonymous; Geistliche Lieder (Leipzig, Germany): 1539
%Q:1/4=110
%F:von_himmel_hoch.abc
%N:Public domain
%G:LM
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:C
%I:Partial=4
%V:1
%c4B4A4B2A2G4A4B4c4c4c4G4G4E2F2G4F4E4E4A4A4G2A2B4c2B2A4G4c4B4A4G4A2G2=F2E2D4C4
%V:2
%G4G2^F2E4D4E2D2C4D4E4E2=F2-G2F2E4D4C4C4D4C4C2D2E4D4D2^F2G4G4G2^F2G4E2D2D2E2E2D2D2C2C4C2A,2B,4C4
%V:3
%E4D4C2C2B,4C2B,2A,2G,2F,4G,4G,4C4C4B,4^A,2=A,2G,4G,4G,4G,4G,4^F,4G,2C2B,2A,2G,2B,2E2D2B,4A,4G,2E,2G,2=F,2F,2E,2A,2B,2C4G,2F,2E,4
%V:4
%C,4G,6^F,2G,2=F,2-E,4F,2E,2D,4C,4C,2D,2E,4E,2F,2G,4G,2F,2E,2D,2C,2B,,2C,4C,4^C,4D,2=C,2-B,,2A,,2G,,4D,2C,2C,2D,2G,4G,2^F,2G,2E,2C,2D,2B,,2C,2F,2G,2A,2F,2G,2G,,2C,4
%C,4G,6^F,2G,2=F,2-E,4F,2E,2D,4C,4C,2D,2E,4E,2F,2G,4G,2F,2E,2D,2C,2B,,2C,4C,4^C,4D,2=C,2-B,,2A,,2G,,4D,2C,2C,2D,2G,4G,2^F,2G,2E,2C,2D,2B,,2C,2F,2G,2A,2F,2G,2G,,2C,4
