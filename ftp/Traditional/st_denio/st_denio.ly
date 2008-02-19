\header {
	title = "St. Denio"
	composer = "Traditional; Welsh melody arr. John Roberts (1822-1877), 1839"
	mutopiatitle = "St. Denio (hymntune)"
	mutopiacomposer = "Traditional"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1839"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1291"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/4 \partial 4  \transpose ees d { \key aes \major aes'4 f' des' bes' g' ees' aes' c'' c'' bes' aes'2 aes'4 f' des' bes' g' ees' aes' c'' c'' bes' aes'2 aes'4 c'' c'' ees'' c'' aes' aes' c'' c'' ees'' bes'2 c''4 aes' f' bes' g' ees' aes' c'' c'' bes' aes'2 s4  \bar "|." } }
Alto = { \transpose ees d { \key aes \major ees'4 des' des' f' ees' ees' c' ees' ees' ees'8 des' c'2 ees'4 des' des' f' ees' ees' c' ees' ees' ees'8 des' c'2 ees'4 aes' aes' bes' ees' ees' ees' ees' f' ees' ees'2 ees'4 f' des' f' ees' ees' c' ees' aes' g' aes'2 s4  \bar "|." } }
Tenor = { \transpose ees d { \key aes \major c'4 aes f des' bes g aes aes aes g aes2 c'4 aes f des' bes g aes aes aes g aes2 c'4 ees' ees' bes c' c' ees'8 des' c'4 aes aes g2 aes4 aes aes des' bes g aes aes ees' ees'8 des' c'2 s4  \bar "|." } }
Bass = { \transpose ees d { \key aes \major aes,4 des des bes, ees ees f ees ees ees aes,2 aes,4 des des bes, ees ees f ees ees ees aes,2 aes,4 aes aes g aes aes c'8 bes aes4 f c8 des ees2 aes,4 des des bes, ees ees f ees ees ees aes,2 s4  \bar "|." } }


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
%T:St. Denio
%M:3/4
%L:1/8
%C:Traditional; Welsh melody arr. John Roberts (1822-1877), 1839
%Q:1/4=115
%F:st_denio.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Ab
%I:Chalice=66 Partial=4 Transpose=-1 Title=Immortal Invisible
%V:1
%A4F4D4B4G4E4A4c4c4B4A8A4F4D4B4G4E4A4c4c4B4A7A4c4c4e4c4A4A4c4c4e4B8c4A4F4B4G4E4A4c4c4B4A8
%V:2
%E4D4D4F4E4E4C4E4E4E2D2C8E4D4D4F4E4E4C4E4E4E2D2C7E4A4A4B4E4E4E4E4F4E4E8E4F4D4F4E4E4C4E4A4G4A8
%V:3
%C4A,4F,4D4B,4G,4A,4A,4A,4G,4A,8C4A,4F,4D4B,4G,4A,4A,4A,4G,4A,7C4E4E4B,4C4C4E2D2C4A,4A,4G,8A,4A,4A,4D4B,4G,4A,4A,4E4E2D2C8
%V:4
%A,,4D,4D,4B,,4E,4E,4F,4E,4E,4E,4A,,8A,,4D,4D,4B,,4E,4E,4F,4E,4E,4E,4A,,7A,,4A,4A,4G,4A,4A,4C2B,2A,4F,4C,2D,2E,8A,,4D,4D,4B,,4E,4E,4F,4E,4E,4E,4A,,8
%A,,4D,4D,4B,,4E,4E,4F,4E,4E,4E,4A,,8A,,4D,4D,4B,,4E,4E,4F,4E,4E,4E,4A,,7A,,4A,4A,4G,4A,4A,4C2B,2A,4F,4C,2D,2E,8A,,4D,4D,4B,,4E,4E,4F,4E,4E,4E,4A,,8
