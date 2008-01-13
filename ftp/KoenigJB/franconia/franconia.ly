\header {
	title = "Franconia"
	composer = "Johann B. Koenig (1691-1758), 1738, arr. William Henry Havergal (1793-1870), 1840"
	mutopiatitle = "Franconia (hymntune)"
	mutopiacomposer = "KoenigJB"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1738"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1244"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  \transpose ees d { \key ees \major ees'4 f' g' aes' bes' g'2. bes'4 c'' ees'' aes' g' f'2. bes'4 ees'' d'' c'' bes' c'' c'' bes' bes' ees' g' f' f' ees'2. s4  \bar "|." } }
Alto = { \transpose ees d { \key ees \major bes4 d' ees' ees' d' ees'2. ees'4 ees' ees' d' ees' d'2. f'4 ees' f' g' d' f' f'8 ees' d'4 d' ees' ees' ees' d' bes2. s4  \bar "|." } }
Tenor = { \transpose ees d { \key ees \major g4 bes bes aes f g2. g4 aes bes aes bes bes2. d'4 bes bes ees' d' c'8 bes a4 bes bes g bes c' bes8 aes g2. s4  \bar "|." } }
Bass = { \transpose ees d { \key ees \major ees4 bes, ees c bes, ees2. ees4 aes g f ees bes,2. bes4 g bes ees g8 f ees4 f bes, bes, c g, aes, bes, ees2. s4  \bar "|." } }


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
%T:Franconia
%M:4/4
%L:1/8
%C:Johann B. Koenig (1691-1758), 1738, arr. William Henry Havergal (1793-1870), 1840
%Q:1/4=115
%F:franconia.abc
%N:Public domain
%G:SM
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Eb
%I:Partial=4 Chalice=390 Transpose=-1 Title=Lord of Our Highest Love
%V:1
%E4F4G4A4B4G12B4c4e4A4G4F11B4e4d4c4B4c4c4B4B4E4G4F4F4E12
%V:2
%B,4D4E4E4D4E12E4E4E4D4E4D11F4E4F4G4D4F4F2E2D4D4E4E4E4D4B,12
%V:3
%G,4B,4B,4A,4F,4G,12G,4A,4B,4A,4B,4B,11D4B,4B,4E4D4C2B,2=A,4B,4B,4G,4B,4C4B,2_A,2-G,12
%V:4
%E,4B,,4E,4C,4B,,4E,12E,4A,4G,4F,4E,4B,,11B,4G,4B,4E,4G,2F,2E,4F,4B,,4B,,4C,4G,,4A,,4B,,4E,12
%E,4B,,4E,4C,4B,,4E,12E,4A,4G,4F,4E,4B,,11B,4G,4B,4E,4G,2F,2E,4F,4B,,4B,,4C,4G,,4A,,4B,,4E,12
