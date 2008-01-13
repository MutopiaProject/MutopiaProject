\header {
	title = "Bread of Life"
	composer = "William F. Sherwin (1826-1888),1877"
	mutopiatitle = "Bread of Life (hymntune)"
	mutopiacomposer = "SherwinWF"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1877"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1228"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  \transpose ees d { \key ees \major g'2 ees'4 g' bes' c'' bes'2 g' ees'4 g' f'2. r4 g'2 ees'4 g' bes' c'' bes' c'' d''2 c'' bes'2. r4 f'2 g'4 aes' c'' bes' g'2 bes' c''4 c'' d''1 ees''2 bes'4 g' f' aes' c'' aes' f'2 bes' ees'1  \bar "|." } }
Alto = { \transpose ees d { \key ees \major ees'2 ees'4 ees' ees' ees' ees'2 ees' bes4 ees' d'2. r4 ees'2 ees'4 ees' ees' ees' ees' ees' f'2 ees' d'2. r4 d'2 ees'4 f' aes' g' ees'2 f' f'4 f' f'2 aes' g' g'4 ees' ees' ees' ees' ees' ees'2 d' ees'1  \bar "|." } }
Tenor = { \transpose ees d { \key ees \major bes2 bes4 bes g g g2 bes g4 bes bes2. r4 bes2 bes4 bes g aes g bes bes2 a bes2. r4 bes2 bes4 c' ees' ees' bes2 bes a4 a bes1 bes2 ees'4 bes c' c' aes c' bes2 aes g1  \bar "|." } }
Bass = { \transpose ees d { \key ees \major ees2 g4 ees ees ees ees2 ees ees4 ees bes,2. r4 ees2 g4 ees ees aes, ees g f2 f bes,2. r4 aes2 g4 f ees ees ees2 d c4 c bes,1 ees2 ees4 ees aes, aes, aes, aes, bes,2 bes, ees1  \bar "|." } }


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
%T:Bread of Life
%M:4/4
%L:1/8
%C:William F. Sherwin (1826-1888),1877
%Q:1/4=86
%F:bread_of_life.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Eb
%I:Chalice=321 Transpose=-1 Title=Bread of Life
%V:1
%G8E4G4B4c4B8G8E4G4F12z4 G8E4G4B4c4B4c4d8c8B12z4F8G4A4c4B4G8B8c4c4d16e8B4G4F4A4c4A4F8B8E16
%V:2
%E8E4E4E4E4E8E8B,4E4D12z4E8E4E4E4E4E4E4F8E8D12z4D8E4F4A4G4E8F8F4F4F8A8G8G4E4E4E4E4E4E8D8E16
%V:3
%B,8B,4B,4G,4G,4 G,8 B,8G,4B,4B,12z4B,8B,4B,4G,4A,4G,4B,4B,8=A,8B,12z4B,8B,4C4E4E4B,8B,8=A,4=A,4B,16B,8E4B,4C4C4_A,4C4B,8A,8G,16
%V:4
%E,8G,4E,4E,4E,4E,8E,8E,4E,4B,,12z4E,8G,4E,4E,4A,,4E,4G,4F,8F,8B,,12z4_A,8G,4F,4E,4E,4E,8D,8C,4C,4B,,16E,8E,4E,4A,,4A,,4A,,4A,,4B,,8B,,8E,16
%E,8G,4E,4E,4E,4E,8E,8E,4E,4B,,12z4E,8G,4E,4E,4A,,4E,4G,4F,8F,8B,,12z4_A,8G,4F,4E,4E,4E,8D,8C,4C,4B,,16E,8E,4E,4A,,4A,,4A,,4A,,4B,,8B,,8E,16
