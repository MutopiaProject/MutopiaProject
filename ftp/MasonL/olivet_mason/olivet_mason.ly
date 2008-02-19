\header {
	title = "Olivet (Mason)"
	composer = "Lowell Mason (1792-1872), 1830"
	mutopiatitle = "Olivet (Mason) (hymntune)"
	mutopiacomposer = "MasonL"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1830"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1286"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  \transpose ees d { \key ees \major ees'2 g'4 bes' bes'4. aes'8 g'2 f' f'4 aes' aes'4. g'8 f'2 g' f'4 c'' bes'1 bes'2 g'4 aes' bes'4. c''8 bes'2 bes' g'4 aes' bes'4. c''8 bes'2 ees'' d''4 c'' bes'4. aes'8 g'4 ees' f'2 bes' ees'1  \bar "|." } }
Alto = { \transpose ees d { \key ees \major ees'2 ees'4 g' f'4. f'8 ees'2 d' d'4 f' f'4. ees'8 d'2 ees' d'4 ees' d'1 g'2 ees'4 ees' ees'4. ees'8 ees'2 g' ees'4 d' ees'4. ees'8 ees'2 g' g'4 ees' ees'4. ees'8 ees'4 ees' ees'2 d' ees'1  \bar "|." } }
Tenor = { \transpose ees d { \key ees \major g2 bes4 bes bes4. bes8 bes2 bes bes4 bes bes4. bes8 bes2 bes bes4 a bes1 bes2 bes4 c' g4. aes8 g2 bes bes4 aes g4. aes8 g2 c' bes4 aes g4. c'8 bes4 bes c'2 bes g1  \bar "|." } }
Bass = { \transpose ees d { \key ees \major ees2 ees4 ees d4. d8 ees2 bes, bes,4 bes, d4. ees8 bes,2 ees f4 f bes,1 ees2 ees4 ees ees4. ees8 ees2 ees g4 f ees4. ees8 ees2 c g4 aes ees4. ees8 ees4 g, aes,2 bes, ees1  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 54 4 ) } }
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
%T:Olivet (Mason)
%M:4/4
%L:1/4
%C:Lowell Mason (1792-1872), 1830
%Q:1/4=54
%F:olivet_mason.abc
%N:Public domain
%G:66.46.66.4
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Eb
%I:Chalice=576 Celebration=539 Transpose=-1 Title=My Faith Looks Up to Thee
%V:1
%E4G2B2B3A1G4F4F2A2A3G1F4G4F2c2B8B4G2A2B3c1B4B4G2A2B3c1B4e4d2c2B3A1G2E2F4B4E8
%V:2
%E4E2G2F3F1E4D4D2F2F3E1D4E4D2E2D8G4E2E2E3E1E4G4E2D2E3E1E4G4G2E2E3E1E2E2E4D4E8
%V:3
%G,4B,2B,2B,3B,1B,4B,4B,2B,2B,3B,1B,4B,4B,2=A,2B,8B,4B,2C2G,3_A,1G,4B,4B,2A,2G,3A,1G,4C4B,2A,2G,3C1B,2B,2C4B,4G,8
%V:4
%E,4E,2E,2D,3D,1E,4B,,4B,,2B,,2D,3E,1B,,4E,4F,2F,2B,,8E,4E,2E,2E,3E,1E,4E,4G,2F,2E,3E,1E,4C,4G,2A,2E,3E,1E,2G,,2A,,4B,,4E,8
%E,4E,2E,2D,3D,1E,4B,,4B,,2B,,2D,3E,1B,,4E,4F,2F,2B,,8E,4E,2E,2E,3E,1E,4E,4G,2F,2E,3E,1E,4C,4G,2A,2E,3E,1E,2G,,2A,,4B,,4E,8
