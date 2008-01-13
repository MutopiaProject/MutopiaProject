\header {
	title = "Dundee"
	composer = "Anonymous; Scottish Psalter, 1615"
	mutopiatitle = "Dundee (hymntune)"
	mutopiacomposer = "Anonymous"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1615"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1236"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  { \key ees \major ees'4 g' aes' bes' ees' f' g' aes' g' f' ees' ees' d' ees'2. bes'4 ees'' d'' c'' bes' bes' a' bes' g' f' ees' ees' d' ees'2. s4  \bar "|." } }
Alto = { { \key ees \major bes4 ees' ees' d' ees' d' ees' ees' ees' d' c' c' bes bes2. ees'4 g' f' ees' d' c' c' d' ees' c' bes c' bes bes2. s4  \bar "|." } }
Tenor = { { \key ees \major g4 bes ees f bes aes bes c' bes bes g aes f g2. g4 bes bes g f g f f bes aes g f f g2. s4  \bar "|." } }
Bass = { { \key ees \major ees4 ees c bes, g f ees aes, ees bes, c aes, bes, ees2. ees4 ees bes, c d ees f bes, ees, f, g, aes, bes, ees2. s4  \bar "|." } }


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
%T:Dundee
%M:4/4
%L:1/8
%C:Anonymous; Scottish Psalter, 1615
%Q:1/4=112
%F:dundee.abc
%N:Public domain
%G:CM
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Eb
%I:Chalice=402 Partial=4 Title=According to Thy Gracious Word
%V:1
%E4G4A4B4E4F4G4A4G4F4E4E4D4E11B4e4d4c4B4B4=A4B4G4F4E4E4D4E12
%V:2
%B,4E4E4D4E4D4E4E4E4D4C4C4B,4B,11E4G4F4E4D4C4C4D4E4C4B,4C4B,4B,12
%V:3
%G,4B,4E,4F,4B,4A,4B,4C4B,4B,4G,4A,4F,4G,11G,4B,4B,4G,4F,4G,4F,4F,4B,4A,4G,4F,4F,4G,12
%V:4
%E,4E,4C,4B,,4G,4F,4E,4A,,4E,4B,,4C,4A,,4B,,4E,11E,4E,4B,,4C,4D,4E,4F,4B,,4E,,4F,,4G,,4A,,4B,,4E,12
%E,4E,4C,4B,,4G,4F,4E,4A,,4E,4B,,4C,4A,,4B,,4E,11E,4E,4B,,4C,4D,4E,4F,4B,,4E,,4F,,4G,,4A,,4B,,4E,12
