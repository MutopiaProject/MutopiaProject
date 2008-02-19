\header {
	title = "To God Be the Glory"
	composer = "William Howard Doane (1832-1915), 1875"
	mutopiatitle = "To God Be the Glory (hymntune)"
	mutopiacomposer = "DoaneWH"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1875"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1298"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/4 \partial 4  \transpose ees d { \key aes \major ees'4 ees'2 f'8. g'16 aes'4 ees' aes' bes' ees' bes' c''2 c''4 des'' f' des'' c'' aes' c'' c'' bes' d' bes'2 ees'4 ees'2 f'8. g'16 aes'4 ees' aes' bes' ees' bes' c''2 c''4 ees'' des'' bes' aes' g' aes' c'' c'' bes' aes'2 c''8. des''16 ees''2 c''8. des''16 ees''2 ees''8. c''16 aes'4 bes' c'' bes'2 bes'8. c''16 des''2 bes'8. c''16 des''2 des''8 bes' ees''4 ees'' des'' c''2 ees'4 ees'2 f'8. g'16 aes'4 ees' aes' bes' ees' bes' c''2 c''4 ees'' des'' bes' aes' g' aes' c'' c'' bes' aes'2 s4  \bar "|." } }
Alto = { \transpose ees d { \key aes \major c'4 c' ees' des'8. des'16 c'4 c' ees' ees' ees' ees' ees'2 ees'4 f' des' f' ees' ees' ees' d' <<f' d' >>d' ees'2 des'4 c' ees' des'8. des'16 c'4 c' ees' ees' ees' ees' ees'2 ges'4 f' f' f' ees' ees' ees' ees' ees' des' c'2 ees'8. ees'16 ees'2 aes'8. g'16 aes'2 ees'8. ees'16 ees'4 des' c' ees'2 ees'8. ees'16 des'2 ees'8. ees'16 ees'2 ees'8 ees' ees'4 ees' ees' ees'2 des'4 c' ees' des'8. des'16 c'4 c' ees' ees' ees' ees' ees'2 ges'4 f' f' f' ees' ees' ees' ees' ees' des' c'2 s4  \bar "|." } }
Tenor = { \transpose ees d { \key aes \major aes4 aes2 bes8. bes16 aes4 c' aes g g g aes2 aes4 aes aes aes aes aes aes aes f bes8 aes g2 g4 aes2 bes8. bes16 aes4 c' aes g g g aes2 aes4 aes bes des' c' bes c' aes aes g aes2 aes8. bes16 c'2 aes8. bes16 c'2 c'8. aes16 aes4 g aes g2 g8. aes16 bes2 g8. aes16 bes2 bes8 g aes4 aes g aes2 g4 aes2 bes8. bes16 aes4 c' aes g g g aes2 aes4 aes bes des' c' bes c' aes aes g aes2 s4  \bar "|." } }
Bass = { \transpose ees d { \key aes \major aes,4 aes, c ees8. ees16 aes,4 aes, c ees ees ees aes,2 aes,4 f f f aes, c aes, bes, bes, bes, ees2 ees4 aes, c ees8. ees16 aes,4 aes, c ees ees ees aes,2 aes,4 des des des ees ees ees ees ees ees aes,2 aes8. aes16 aes2 aes8. aes16 aes2 aes8. aes,16 c4 bes, aes, ees2 ees8. ees16 ees2 ees8. ees16 ees2 ees8 des c4 c bes, aes,2 ees4 aes, c ees8. ees16 aes,4 aes, c ees ees ees aes,2 aes,4 des des des ees ees ees ees ees ees aes,2 s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 120 4 ) } }
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
%T:To God Be the Glory
%M:3/4
%L:1/8
%C:William Howard Doane (1832-1915), 1875
%Q:1/4=120
%F:to_God_be_the_glory.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Ab
%I:Chalice=72 Transpose=-1 Partial=4 Title=To God Be the Glory
%V:1
%E4E8F3G1A4E4A4B4E4B4c7c4d4F4d4c4A4c4c4B4=D4B7E4E8F3G1A4E4A4B4E4B4c7c4e4d4B4A4=G4A4c4c4B4A7c3d1e8c3d1e8e3c1A4B4c4B7B3c1d8B3c1d8d2B2e4e4d4c7E4E8F3G1A4E4A4B4E4B4c7c4e4d4B4A4=G4A4c4c4B4A8
%V:2
%C4C4E4D3D1C4C4E4E4E4E4E7E4F4D4F4E4E4E4=D4 [F4=D4] =D4E7_D4C4E4D3D1C4C4E4E4E4E4E7_G4F4F4F4E4E4E4E4E4D4C7E3E1E8A3G1A8E3E1E4D4C4E7E3E1D8E3E1E8E2E2E4E4E4E7D4C4E4D3D1C4C4E4E4E4E4E7_G4F4F4F4E4E4E4E4E4D4C8
%V:3
%A,4A,8B,3B,1A,4C4A,4G,4G,4G,4A,7A,4A,4A,4A,4A,4A,4A,4A,4F,4B,2A,2G,7G,4A,8B,3B,1A,4C4A,4G,4G,4G,4A,7A,4A,4B,4D4C4B,4C4A,4A,4G,4A,7A,3B,1C8A,3B,1C8C3A,1A,4G,4A,4G,7G,3A,1B,8G,3A,1B,8B,2G,2A,4A,4G,4A,7G,4A,8B,3B,1A,4C4A,4G,4G,4G,4A,7A,4A,4B,4D4C4B,4C4A,4A,4G,4A,8
%V:4
%A,,4A,,4C,4E,3E,1A,,4A,,4C,4E,4E,4E,4A,,7A,,4F,4F,4F,4A,,4C,4A,,4B,,4B,,4B,,4E,7E,4A,,4C,4E,3E,1A,,4A,,4C,4E,4E,4E,4A,,7A,,4D,4D,4D,4E,4E,4E,4E,4E,4E,4A,,7A,3A,1A,8A,3A,1A,8A,3A,,1C,4B,,4A,,4E,7E,3E,1E,8E,3E,1E,8E,2D,2C,4C,4B,,4A,,7E,4A,,4C,4E,3E,1A,,4A,,4C,4E,4E,4E,4A,,7A,,4D,4D,4D,4E,4E,4E,4E,4E,4E,4A,,8
%A,,4A,,4C,4E,3E,1A,,4A,,4C,4E,4E,4E,4A,,7A,,4F,4F,4F,4A,,4C,4A,,4B,,4B,,4B,,4E,7E,4A,,4C,4E,3E,1A,,4A,,4C,4E,4E,4E,4A,,7A,,4D,4D,4D,4E,4E,4E,4E,4E,4E,4A,,7A,3A,1A,8A,3A,1A,8A,3A,,1C,4B,,4A,,4E,7E,3E,1E,8E,3E,1E,8E,2D,2C,4C,4B,,4A,,7E,4A,,4C,4E,3E,1A,,4A,,4C,4E,4E,4E,4A,,7A,,4D,4D,4D,4E,4E,4E,4E,4E,4E,4A,,8
