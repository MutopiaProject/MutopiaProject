\header {
	title = "Ellacombe"
	composer = "Anonymous; Gesangbuch der H. W. K. Hofkapelle, 1784; arr. William Henry Monk (1823-1889), 1868"
	mutopiatitle = "Ellacombe (hymntune)"
	mutopiacomposer = "Anonymous"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1784"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1238"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  \transpose ees d { \key bes \major f'4 bes' a'8 g' f'4 bes' d' ees' f' f' g'8 a' bes'4 c'' c'' d''2. f'4 bes' a'8 g' f'4 bes' d' ees' f' f' g'8 a' bes'4 bes' a' bes'2. bes'8 c'' d''4 c'' d'' ees'' c'' a'8 bes' c''4 bes'8 c'' d''4 c'' d'' ees'' c''2. f'4 bes' a'8 g' f'4 bes' d' ees' f' f' g'8 a' bes'4 bes' a' bes'2.  \bar "|." } }
Alto = { \transpose ees d { \key bes \major f'4 bes' a'8 g' f'4 f' d' c'8 bes c'4 d' ees' f' g' f' f'2. f'4 bes' a'8 g' f'4 f' d' c'8 bes c'4 d' ees' d'8 ees' f'4 f' f'2. d'8 ees' f'4 f' f' g' f'2 f'4 d'8 f' f'4 f' f' g' f'2. f'4 bes' a'8 g' f'4 f' d' c'8 bes c'4 d' ees' d'8 ees' f'4 f' f'2.  \bar "|." } }
Tenor = { \transpose ees d { \key bes \major f4 bes a8 g f4 bes bes2 a4 bes bes bes bes a bes2. f4 bes a8 g f4 bes bes2 a4 bes bes bes bes c' d'2. bes4 bes c' bes bes a f8 g a4 d'8 c' bes4 c' bes bes a2. f4 bes a8 g f4 bes bes2 a4 bes bes bes c' c' d'2.  \bar "|." } }
Bass = { \transpose ees d { \key bes \major f4 bes a8 g f4 d g2 f4 bes, ees d ees f bes,2. f4 bes a8 g f4 d g2 f4 bes, ees g f f bes,2. bes,4 bes a bes ees f2 f4 g8 a bes4 a bes ees f2. f4 bes a8 g f4 d g2 f4 bes, ees g f f bes,2.  \bar "|." } }


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
%T:Ellacombe
%M:4/4
%L:1/8
%C:Anonymous; Gesangbuch der H. W. K. Hofkapelle, 1784; arr. William Henry Monk (1823-1889), 1868
%Q:1/4=115
%F:ellacombe.abc
%N:Public domain
%G:76.76 D
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Bb
%I:Chalice=64 Transpose=-1 Title=We Sing Your Mighty Power, O God
%V:1
%F4B4A2G2F4B4D4E4F4F4G2A2B4c4c4d11F4B4A2G2F4B4D4E4F4F4G2A2B4B4A4B11B2c2d4c4d4e4c4A2B2c4B2c2d4c4d4e4c11F4B4A2G2F4B4D4E4F4F4G2A2B4B4A4B12
%V:2
%F4B4A2G2F4F4D4C2B,2C4D4E4F4G4F4F11F4B4A2G2F4F4D4C2B,2C4D4E4D2E2F4F4F11D2E2F4F4F4G4F8F4D2F2F4F4F4G4F11F4B4A2G2F4F4D4C2B,2C4D4E4D2E2F4F4F12
%V:3
%F,4B,4A,2G,2F,4B,4B,8A,4B,4B,4B,4B,4A,4B,11F,4B,4A,2G,2F,4B,4B,8A,4B,4B,4B,4B,4C4D11B,4B,4C4B,4B,4A,4F,2-G,2A,4D2C2B,4C4B,4B,4A,11F,4B,4A,2G,2F,4B,4B,8A,4B,4B,4B,4C4C4D12
%V:4
%F,4B,4A,2G,2F,4D,4G,8F,4B,,4E,4D,4E,4F,4B,,11F,4B,4A,2G,2F,4D,4G,8F,4B,,4E,4G,4F,4F,4B,,11B,,4B,4A,4B,4E,4F,8F,4G,2A,2B,4A,4B,4E,4F,11F,4B,4A,2G,2F,4D,4G,8F,4B,,4E,4G,4F,4F,4B,,12
%F,4B,4A,2G,2F,4D,4G,8F,4B,,4E,4D,4E,4F,4B,,11F,4B,4A,2G,2F,4D,4G,8F,4B,,4E,4G,4F,4F,4B,,11B,,4B,4A,4B,4E,4F,8F,4G,2A,2B,4A,4B,4E,4F,11F,4B,4A,2G,2F,4D,4G,8F,4B,,4E,4G,4F,4F,4B,,12
