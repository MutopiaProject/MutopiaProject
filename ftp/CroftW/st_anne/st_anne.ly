\header {
	title = "St. Anne"
	composer = "William Croft (1678-1727), 1708"
	mutopiatitle = "St. Anne (hymntune)"
	mutopiacomposer = "CroftW"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1708"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1290"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key c \major g'4 e' a' g' c'' c'' b' c'' g' c'' g' a' fis' g'2. b'4 c'' a' d'' b' c'' a' b' g' a' c'' d'' b' c''2.  \bar "|." } }
Alto = { { \key c \major c'4 c' c' c' e' d' d' e' e' e' e' e' d' d'2. d'4 e' c' f' d' c' d' d' c' c' c' f' d' e'2.  \bar "|." } }
Tenor = { { \key c \major e4 g f c' c' a g g c' c' b c' a b2. g4 g f a g g a g g f g a g g2.  \bar "|." } }
Bass = { { \key c \major c4 c f e a f g c c a, e c d g,2. g4 c f d g e fis g e f e d g c2.  \bar "|." } }


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
%T:St. Anne
%M:4/4
%L:1/8
%C:William Croft (1678-1727), 1708
%Q:1/4=112
%F:st_anne.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:C
%I:Chalice=67 Title=O God Our Help in Ages Past
%V:1
%G4E4A4G4c4c4B4c4G4c4G4A4^F4G11B4c4A4d4B4c4A4B4G4A4c4d4B4c12
%V:2
%C4C4C4C4E4D4D4E4E4E4E4E4D4D11D4E4C4=F4D4C4D4D4C4C4C4F4D4E12
%V:3
%E,4G,4F,4C4C4A,4G,4G,4C4C4B,4C4A,4B,11G,4G,4F,4A,4G,4G,4A,4G,4G,4=F,4G,4A,4G,4G,12
%V:4
%C,4C,4F,4E,4A,4F,4G,4C,4C,4A,,4E,4C,4D,4G,,11G,4C,4F,4D,4G,4E,4^F,4G,4E,4=F,4E,4D,4G,4C,12
%C,4C,4F,4E,4A,4F,4G,4C,4C,4A,,4E,4C,4D,4G,,11G,4C,4F,4D,4G,4E,4^F,4G,4E,4=F,4E,4D,4G,4C,12
