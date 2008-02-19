\header {
	title = "Terra Beata"
	composer = "Traditional; English melody arr. Franklin Lawrence Shepphard (1852-1930)"
	mutopiatitle = "Terra Beata (hymntune)"
	mutopiacomposer = "Traditional"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = ""
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1297"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  { \key ees \major ees'8 f' g'4 bes' g' f' ees'2. f'8 g' aes'4 c'' bes' g' f'2. c''4 bes' g' g' f'8 ees' g'4 f' ees' bes ees'8 f' g'4 bes' f'8 g' ees'2. bes'4 ees'' bes' c'' d'' ees''2. ees''8 d'' c''4 ees'' d'' c'' bes'2. c''8 c'' bes'4 g' g' f'8 ees' g'4 f' ees' bes ees'8 f' g' g' bes'4 f'8 g' ees'2. s4  \bar "|." } }
Alto = { { \key ees \major ees'8 f' ees'4 ees' d' d' ees'2. ees'4 ees' ees' ees' ees' d'2. d'4 ees' ees' d' d'8 ees' d'4 d' ees' bes ees'8 f' ees'4 d' d' ees'2. d'4 ees' g' aes' aes' g'2. ees'4 ees' ees' ees' ees' ees'2. d'8 d' ees'4 ees' d' d'8 ees' d'4 d' ees' bes ees'8 f' ees' ees' d'4 d'8 d' ees'2. s4  \bar "|." } }
Tenor = { { \key ees \major g8 aes bes4 g bes aes g2. aes8 bes c'4 aes g bes bes2. aes4 g bes bes aes8 g bes4 bes g g g8 aes bes4 bes aes g2. bes8 aes g4 bes aes bes bes2. bes4 aes c' bes aes g2. aes8 aes g4 bes bes aes8 g bes4 aes g bes g8 aes bes bes bes4 aes8 aes g2. s4  \bar "|." } }
Bass = { { \key ees \major ees4 ees ees bes, bes, ees2. ees4 ees ees ees ees bes,2. bes,4 ees ees bes, bes, bes, bes, ees ees ees ees bes, bes, ees2. f4 ees ees aes f ees2. g4 aes aes aes aes ees2. bes,8 bes, ees4 ees bes, bes,8 bes, bes,4 bes, ees bes, ees ees8 ees bes,4 bes,8 bes, ees2. s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 115 4 ) } }
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
%T:Terra Beata
%M:4/4
%L:1/8
%C:Traditional; English melody arr. Franklin Lawrence Shepphard (1852-1930)
%Q:1/4=115
%F:terra_beata.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Eb
%I:Chalice=59 Partial=4 Title=This Is My Father's World
%V:1
%E2F2G4B4G4F4E12F2G2A4c4B4G4F12c4B4G4G4F2E2G4F4E4B,4E2F2G4B4F2G2E11B4e4B4c4d4e12e2d2c4e4d4c4B12c2c2B4G4G4F2E2G4F4E4B,4E2F2G2G2B4F2G2E12
%V:2
%E2F2E4E4D4D4E12E4E4E4E4E4D12D4E4E4D4D2E2D4D4E4B,4E2F2E4D4D4E11D4E4G4A4A4G12E4E4E4E4E4E12D2D2E4E4D4D2E2D4D4E4B,4E2F2E2E2D4D2D2E12
%V:3
%G,2A,2B,4G,4B,4A,4G,12A,2B,2C4A,4G,4B,4B,12A,4G,4B,4B,4A,2G,2B,4B,4G,4G,4G,2A,2B,4B,4A,4G,11B,2A,2G,4B,4A,4B,4B,12B,4A,4C4B,4A,4G,12A,2A,2G,4B,4B,4A,2G,2B,4A,4G,4B,4G,2A,2B,2B,2B,4A,2A,2G,12
%V:4
%E,4E,4E,4B,,4B,,4E,12E,4E,4E,4E,4E,4B,,12B,,4E,4E,4B,,4B,,4B,,4B,,4E,4E,4E,4E,4B,,4B,,4E,11F,4E,4E,4A,4F,4E,12G,4A,4A,4A,4A,4E,12B,,2B,,2E,4E,4B,,4B,,2B,,2B,,4B,,4E,4B,,4E,4E,2E,2B,,4B,,2B,,2E,12
%E,4E,4E,4B,,4B,,4E,12E,4E,4E,4E,4E,4B,,12B,,4E,4E,4B,,4B,,4B,,4B,,4E,4E,4E,4E,4B,,4B,,4E,11F,4E,4E,4A,4F,4E,12G,4A,4A,4A,4A,4E,12B,,2B,,2E,4E,4B,,4B,,2B,,2B,,4B,,4E,4B,,4E,4E,2E,2B,,4B,,2B,,2E,12
