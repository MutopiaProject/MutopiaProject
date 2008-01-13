\header {
	title = "More Love to Thee"
	composer = "William H. Doane (1832-1915), 1870"
	mutopiatitle = "More Love to Thee (hymntune)"
	mutopiacomposer = "DoaneWH"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1870"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1263"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key aes \major ees'2 f'4 ees' aes'4. bes'8 c''2 c'' bes'4 aes' bes'1 ees'2 f'4 ees' aes'4. bes'8 c''2 bes' aes'4 g' aes'1 des''2 des''4 des'' des''4. c''8 c''2 bes' bes'4 bes' bes'4. aes'8 aes'2 f' f'4 f' aes'1 bes'2 aes'4 g' aes'1  \bar "|." } }
Alto = { { \key aes \major c'2 des'4 c' ees'4. ees'8 ees'2 ees' ees'4 d' ees'1 c'2 des'4 c' ees'4. ees'8 ees'2 f' ees'4 ees' ees'1 f'2 aes'4 f' aes'4. aes'8 aes'2 g' ees'4 g' ees'4. ees'8 ees'2 des' des'4 des' ees'1 f'2 ees'4 ees' ees'1  \bar "|." } }
Tenor = { { \key aes \major aes2 aes4 aes aes4. g8 aes2 aes bes4 bes g1 aes2 aes4 aes aes4. g8 aes2 des' c'4 bes c'1 aes2 des'4 des' f'4. ees'8 ees'2 ees' bes4 ees' des'4. c'8 c'2 aes aes4 aes aes1 des'2 c'4 bes c'1  \bar "|." } }
Bass = { { \key aes \major aes,2 des4 aes, c4. ees8 aes2 aes g4 f ees1 aes,2 des4 aes, c4. ees8 aes2 des ees4 ees aes1 des2 f4 des aes4. aes8 aes2 ees g4 ees aes,4. aes,8 aes,2 des des4 des c1 bes,2 ees4 ees aes,1  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 57 4 ) } }
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
%T:More Love to Thee
%M:4/4
%L:1/4
%C:William H. Doane (1832-1915), 1870
%Q:1/4=57
%F:more_love_to_Thee_o_Christ.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Ab
%I:Chalice=527 Title=More Love to Thee
%V:1
%E4F2E2A3B1c4c4B2A2B8E4F2E2A3B1c4B4A2G2A8d4d2d2d3c1c4B4B2B2B3A1A4F4F2F2A8B4A2G2A8
%V:2
%C4D2C2E3E1E4E4E2=D2E8C4_D2C2E3E1E4F4E2E2E8F4A2F2A3A1A4G4E2G2E3E1E4D4D2D2E8F4E2E2E8
%V:3
%A,4A,2A,2A,3G,1A,4A,4B,2B,2G,8A,4A,2A,2A,3G,1A,4D4C2B,2C8A,4D2D2F3E1E4E4B,2E2D3C1C4A,4A,2A,2A,8D4C2B,2C8
%V:4
%A,,4D,2A,,2C,3E,1A,4A,4G,2F,2E,8A,,4D,2A,,2C,3E,1A,4D,4E,2E,2A,8D,4F,2D,2A,3A,1A,4E,4G,2E,2A,,3A,,1A,,4D,4D,2D,2C,8B,,4E,2E,2A,,8
%A,,4D,2A,,2C,3E,1A,4A,4G,2F,2E,8A,,4D,2A,,2C,3E,1A,4D,4E,2E,2A,8D,4F,2D,2A,3A,1A,4E,4G,2E,2A,,3A,,1A,,4D,4D,2D,2C,8B,,4E,2E,2A,,8
