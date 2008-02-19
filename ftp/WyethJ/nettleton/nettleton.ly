\header {
	title = "Netteton"
	composer = "John Wyeth (1770-1858), 1813"
	mutopiatitle = "Netteton (hymntune)"
	mutopiacomposer = "WyethJ"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1813"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1282"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/4 \partial 4  \transpose ees d { \key ees \major g'8 f' ees'4 ees' g'8 bes' f'4 f' g'8 bes' c''4 bes' g'8 f' ees'2 g'8 f' ees'4 ees' g'8 bes' f'4 f' g'8 bes' c''4 bes' g'8 f' ees'2 bes'8 c''16 d'' ees''4 d'' c''8 bes' c'' bes' g'4 bes'8 c''16 d'' ees''4 d'' c''8 bes' ees''2 g'8 f' ees'4 ees' g'8 bes' f'4 f' g'8 bes' c''4 bes' g'8 f' ees'2 s4  \bar "|." } }
Alto = { \transpose ees d { \key ees \major ees'8 d' ees'4 ees' ees'8 ees' d'4 d' ees'8 ees' ees'4 ees' ees'8 d' ees'2 ees'8 d' ees'4 ees' ees'8 ees' d'4 d' ees'8 ees' ees'4 ees' ees'8 d' ees'2 ees'8 aes' g'4 bes' aes'8 g' ees'4 ees' ees'8 aes' g'4 bes' aes'8 f' g'2 ees'8 d' ees'4 ees' ees'8 ees' d'4 d' ees'8 ees' ees'4 ees' ees'8 d' ees'2 s4  \bar "|." } }
Tenor = { \transpose ees d { \key ees \major bes8 aes g4 g bes8 bes bes4 bes bes8 bes aes4 g bes8 aes g2 bes8 aes g4 g bes8 bes bes4 bes bes8 bes aes4 g bes8 aes g2 bes8 aes bes4 bes ees'8 ees' aes g bes4 bes8 aes bes4 bes ees'8 d' bes2 bes8 aes g4 g bes8 bes bes4 bes bes8 bes aes4 g bes8 aes g2 s4  \bar "|." } }
Bass = { \transpose ees d { \key ees \major ees8 bes, ees4 ees ees8 g, bes,4 bes, ees8 g aes4 ees bes,8 bes, ees2 ees8 bes, ees4 ees ees8 g, bes,4 bes, ees8 g aes4 ees bes,8 bes, ees2 g8 f ees4 g aes8 aes ees4 ees g8 f ees4 g aes8 bes ees2 ees8 bes, ees4 ees ees8 g, bes,4 bes, ees8 g aes4 ees bes,8 bes, ees2 s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 103 4 ) } }
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
%T:Netteton
%M:3/4
%L:1/8
%C:John Wyeth (1770-1858), 1813
%Q:1/4=103
%F:nettleton.abc
%N:Public domain
%G:87.87 D
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Eb
%I:Chalice=16 Transpose=-1 Partial=4 Title=Come Thou Fount of Every Blessing
%V:1
%G2F2E4E4G2B2F4F4G2B2c4B4G2F2E7G2F2E4E4G2B2F4F4G2B2c4B4G2F2E7B2c1d1e4d4c2B2c2B2G4B2c1d1e4d4c2B2e7G2F2E4E4G2B2F4F4G2B2c4B4G2F2E8
%V:2
%E2D2E4E4E2E2D4D4E2E2E4E4E2D2E7E2D2E4E4E2E2D4D4E2E2E4E4E2D2E7E2A2G4B4A2G2E4E4E2A2G4B4A2F2G7E2D2E4E4E2E2D4D4E2E2E4E4E2D2E8
%V:3
%B,2A,2G,4G,4B,2B,2B,4B,4B,2B,2A,4G,4B,2A,2G,7B,2A,2G,4G,4B,2B,2B,4B,4B,2B,2A,4G,4B,2A,2G,7B,2A,2B,4B,4E2E2A,2G,2B,4B,2A,2B,4B,4E2D2B,7B,2A,2G,4G,4B,2B,2B,4B,4B,2B,2A,4G,4B,2A,2G,8
%V:4
%E,2B,,2E,4E,4E,2G,,2B,,4B,,4E,2G,2A,4E,4B,,2B,,2E,7E,2B,,2E,4E,4E,2G,,2B,,4B,,4E,2G,2A,4E,4B,,2B,,2E,7G,2F,2E,4G,4A,2A,2E,4E,4G,2F,2E,4G,4A,2B,2E,7E,2B,,2E,4E,4E,2G,,2B,,4B,,4E,2G,2A,4E,4B,,2B,,2E,8
%E,2B,,2E,4E,4E,2G,,2B,,4B,,4E,2G,2A,4E,4B,,2B,,2E,7E,2B,,2E,4E,4E,2G,,2B,,4B,,4E,2G,2A,4E,4B,,2B,,2E,7G,2F,2E,4G,4A,2A,2E,4E,4G,2F,2E,4G,4A,2B,2E,7E,2B,,2E,4E,4E,2G,,2B,,4B,,4E,2G,2A,4E,4B,,2B,,2E,8
