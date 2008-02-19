\header {
	title = "Ville de Havre"
	composer = "Philip Paul Bliss (1838-1876), 1876"
	mutopiatitle = "Ville de Havre (hymntune)"
	mutopiacomposer = "BlissPP"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1876"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1301"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  \transpose ees d { \key des \major aes'4 aes'2 ges'4 f' f'2 ees'4 f' ( ges' bes' ) aes' ges' f'2. aes'4 des''2 c''4 bes' bes'2 aes'4 g' aes'2. aes'4 des''2 des''4 c'' bes'2 bes'4 bes' ees''2 ees''4 des'' c''2 bes'4 aes' des''2 des''4 des'' des''2 c''4 des'' des''2\fermata  aes'4 aes' aes'1 ( aes'2 ) aes'4 aes' aes'1 ( aes'2 ) f'4 aes' bes'2 bes'4 des'' des''2 c''4 des'' des''2. s4  \bar "|." } }
Alto = { \transpose ees d { \key des \major f'4 f'2 ees'4 des' des'2 c'4 des' c'2 c'4 ees' des'2. f'4 f'2 ees'4 des' f'2 ees'4 ees' ees'2. ges'4 f'2 f'4 aes' ges'2 bes'4 aes' ges'2 ges'4 g' aes'2 aes'4 aes' aes'2 des'4 ees' f'2 ees'4 f' f'2 r r f'4 f' ees'2 r r ees'4 ges' f'2 des'4 f' ges'2 ges'4 ges' f'2 ees'4 f' f'2. s4  \bar "|." } }
Tenor = { \transpose ees d { \key des \major aes4 aes2 aes4 aes aes2 aes4 aes aes2 aes4 aes aes2. aes4 bes2 a4 bes des'2 c'4 bes c'2. c'4 des'2 des'4 des' des'2 des'4 d' ees'2 ees'4 ees' ees'2 des'4 c' des'2 aes4 bes aes2 aes4 aes aes2 r r aes4 des' c'2 r r c'4 ees' des'2 aes4 des' des'2 des'4 bes aes2 aes4 aes aes2. s4  \bar "|." } }
Bass = { \transpose ees d { \key des \major des4 des2 des4 des8 f aes2 ges4 f ees2 aes,4 aes, des2. des4 bes,2 c4 des des2 ees4 ees aes,2. aes4 des2 des4 f ges2 ges4 f ees2 ees4 ees aes2 aes4 aes8 ges f2 f4 ges aes2 aes,4 aes, des2\fermata  r r des4 f aes2 r r aes,4 aes, des2 des4 des ges2 ges4 ges aes2 aes,4 aes, des2. s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 60 4 ) } }
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
%T:Ville de Havre
%M:4/4
%L:1/4
%C:Philip Paul Bliss (1838-1876), 1876
%Q:1/4=60
%F:villeduh.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Db
%I:Partial=4 Chalice=561 Transpose=-1 Celebration=705 Title=It Is Well With My Soul
%V:1
%A2A4G2F2F4E2F2-G2-B2A2G2F6A2d4c2B2B4A2=G2A6A2d4d2c2B4B2B2e4e2d2c4B2A2d4d2d2d4c2d2Hd4A2A2A8-A4A2A2A8-A4F2A2B4B2d2d4c2d2d6
%V:2
%F2F4E2D2D4C2D2C4C2E2D6F2F4E2D2F4E2E2E6_G2F4F2A2G4B2A2G4G2=G2A4A2A2A4D2E2F4E2F2F4z4z4F2F2E4z4z4E2_G2F4D2F2G4G2G2F4E2F2F6
%V:3
%A,2A,4A,2A,2A,4A,2A,2A,4A,2A,2A,6A,2B,4=A,2B,2D4C2B,2C6C2D4D2D2D4D2=D2E4E2E2E4_D2C2D4A,2B,2A,4A,2A,2A,4z4z4A,2D2C4z4z4C2E2D4A,2D2D4D2B,2A,4A,2A,2A,6
%V:4
%D,2D,4D,2D,1F,1A,4G,2F,2E,4A,,2A,,2D,6D,2B,,4C,2D,2D,4E,2E,2A,,6_A,2D,4D,2F,2G,4G,2F,2E,4E,2E,2A,4A,2A,1G,1F,4F,2G,2A,4A,,2A,,2HD,4z4z4D,2F,2A,4z4z4A,,2A,,2D,4D,2D,2G,4G,2G,2A,4A,,2A,,2D,6
%D,2D,4D,2D,1F,1A,4G,2F,2E,4A,,2A,,2D,6D,2B,,4C,2D,2D,4E,2E,2A,,6_A,2D,4D,2F,2G,4G,2F,2E,4E,2E,2A,4A,2A,1G,1F,4F,2G,2A,4A,,2A,,2HD,4z4z4D,2F,2A,4z4z4A,,2A,,2D,4D,2D,2G,4G,2G,2A,4A,,2A,,2D,6
