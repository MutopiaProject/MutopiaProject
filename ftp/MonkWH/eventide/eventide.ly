\header {
	title = "Eventide"
	composer = "William H. Monk (1823-1889), 1861"
	mutopiatitle = "Eventide (hymntune)"
	mutopiacomposer = "MonkWH"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1861"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1241"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  \transpose ees d { \key ees \major g'2 g'4 f' ees'2 bes' c''4 bes' bes' aes' g'1 g'2 aes'4 bes' c''2 bes' aes'4 f' g' a' bes'1 g'2 g'4 f' ees'2 bes' bes'4 aes' aes' g' f'1 f'2 g'4 aes' g' f' ees' aes' g'2 f' ees'1  \bar "|." } }
Alto = { \transpose ees d { \key ees \major ees'2 d'4 d' ees'2 ees' ees'4 d' ees' f' ees'1 ees'2 ees'4 ees' ees'2 ees' ees'4 f' ees' ees' d'1 ees'2 d'4 d' ees'2 ees' ees'4 ees' e' e' f'1 d'2 ees'4 d' ees' d' ees' f' ees'2 d' ees'1  \bar "|." } }
Tenor = { \transpose ees d { \key ees \major bes2 bes4 aes g2 ees ees4 bes bes bes bes1 bes2 aes4 g aes2 g c'4 bes bes ees f1 g4 aes bes aes g2 ees'4 d' c'4. c'8 c'4 bes aes1 bes2 bes4 bes bes aes g c' bes2. aes4 g1  \bar "|." } }
Bass = { \transpose ees d { \key ees \major ees2 bes,4 bes, c2 g, aes,4 bes, c d ees1 ees4 d c bes, aes,2 ees f4 d ees c bes,1 ees2 bes,4 bes, c2 g, aes,4. bes,8 c4 c f1 aes2 g4 f ees bes, c aes, bes,2 bes, ees1  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 56 4 ) } }
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
%T:Eventide
%M:4/4
%L:1/4
%C:William H. Monk (1823-1889), 1861
%Q:1/4=56
%F:eventide.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Eb
%I:Chalice=428 Transpose=-1 Title=Abide with me
%V:1
%G4G2F2E4B4c2B2B2A2G8G4A2B2c4B4A2F2G2=A2B8G4G2F2E4B4B2_A2A2G2F8F4G2A2G2F2E2A2G4F4E8
%V:2
%E4D2D2E4E4E2D2E2F2E8E4E2E2E4E4E2F2E2E2D8E4D2D2E4E4E2E2=E2=E2F8D4_E2D2E2D2E2F2E4D4E8
%V:3
%B,4B,2A,2G,4E,4E,2B,2B,2B,2B,8B,4A,2G,2A,4G,4C2B,2B,2E,2F,8G,2A,2B,2A,2G,4E2D2C3C1C2B,2A,8B,4B,2B,2B,2A,2G,2C2B,6A,2G,8
%V:4
%E,4B,,2B,,2C,4G,,4A,,2B,,2C,2D,2E,8E,2D,2C,2B,,2A,,4E,4F,2D,2E,2C,2B,,8E,4B,,2B,,2C,4G,,4A,,3B,,1C,2C,2F,8A,4G,2F,2E,2B,,2C,2A,,2B,,4B,,4E,8
%E,4B,,2B,,2C,4G,,4A,,2B,,2C,2D,2E,8E,2D,2C,2B,,2A,,4E,4F,2D,2E,2C,2B,,8E,4B,,2B,,2C,4G,,4A,,3B,,1C,2C,2F,8A,4G,2F,2E,2B,,2C,2A,,2B,,4B,,4E,8
