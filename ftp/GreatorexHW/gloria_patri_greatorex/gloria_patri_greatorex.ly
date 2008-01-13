\header {
	title = "Gloria Patri (Greatorex)"
	composer = "Henry Wellington Greatorex (1816-1853), 1851"
	mutopiatitle = "Gloria Patri (Greatorex) (hymntune)"
	mutopiacomposer = "GreatorexHW"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1851"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1246"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key ees \major ees'4. ees'8 ees'4 ees'8 ees' ees'4 d'2 ees'4 f'2 bes' bes'4 bes' bes' c'' d''2 c'' bes'2. bes'8 bes' bes'4 g' c'' bes' bes' aes'2 aes'4 aes' f' bes' aes' aes' g'2. d''2 d''4 d'' ees''2 ees'4 f' g'2 g'4 f' ees'1  \bar "|." } }
Alto = { { \key ees \major bes4. bes8 bes4 bes8 bes bes4 bes2 bes4 bes2 d' ees'4 g' f' g' f'2 f'4 ees' d'2. d'8 d' ees'4 ees' ees' ees' d' d'2 d'4 d' d' d' f' f' ees'2. f'2 g'4 f' ees'2 bes4 c' bes2 d' ees'1  \bar "|." } }
Tenor = { { \key ees \major g4. g8 g4 g8 g aes4 aes2 g4 f2 f g4 bes bes bes bes2 a bes2. bes8 aes g4 ees aes g f f2 f4 f bes f bes bes bes2. bes2 bes4 bes bes2 ees ees aes g1  \bar "|." } }
Bass = { { \key ees \major ees4. ees8 ees4 ees8 ees f4 f2 ees4 d2 bes, ees4 ees d ees f2 f bes,2. bes,8 bes, ees4 ees ees ees bes, bes,2 bes,4 bes, bes, bes, bes, ees ees2. aes2 aes4 aes g2 g,4 aes, bes,2 bes, ees1  \bar "|." } }


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
%T:Gloria Patri (Greatorex)
%M:4/4
%L:1/8
%C:Henry Wellington Greatorex (1816-1853), 1851
%Q:1/4=110
%F:gloria_patri_greatorex.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Eb
%I:Chalice=35 Title=Glory Be to the Father
%V:1
%E6E2E4E2E2E4D8E4F8B8B4B4B4c4d8c8B11B2B2B4G4c4B4B4A8A4A4F4B4A4A4G12d8d4d4e8E4F4G8G4F4E16
%V:2
%B,6B,2B,4B,2B,2B,4B,8B,4B,8D8E4G4F4G4F8F4E4D11D2D2E4E4E4E4D4D8D4D4D4D4F4F4E12F8G4F4E8B,4C4B,8D8E16
%V:5
%G,6G,2G,4G,2G,2A,4A,8G,4F,8F,8G,4B,4B,4B,4B,8=A,8B,11B,2_A,2G,4E,4A,4G,4F,4F,8F,4F,4B,4F,4B,4B,4B,12B,8B,4B,4B,8E,8E,8A,8G,16
%V:6
%E,6E,2E,4E,2E,2F,4F,8E,4D,8B,,8E,4E,4D,4E,4F,8F,8B,,11B,,2B,,2E,4E,4E,4E,4B,,4B,,8B,,4B,,4B,,4B,,4B,,4E,4E,12A,8A,4A,4G,8G,,4A,,4B,,8B,,8E,16
%E,6E,2E,4E,2E,2F,4F,8E,4D,8B,,8E,4E,4D,4E,4F,8F,8B,,11B,,2B,,2E,4E,4E,4E,4B,,4B,,8B,,4B,,4B,,4B,,4B,,4E,4E,12A,8A,4A,4G,8G,,4A,,4B,,8B,,8E,16
