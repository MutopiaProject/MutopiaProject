\header {
	title = "Llanfair"
	composer = "Robert Williams (1782-1818), 1817"
	mutopiatitle = "Llanfair (hymntune)"
	mutopiacomposer = "WilliamsR"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1817"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1255"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key f \major f'4 f' a' a' c'' bes'8 a' g'2 c''4. bes'8 a'4 bes'8 a' g'2 f' f'4 f' a' a' c'' bes'8 a' g'2 c''4. bes'8 a'4 bes'8 a' g'2 f' a'4 a' c'' c'' d''8 c'' bes' a' g'2 a'4. g'8 a'4 b' c''2 c'' f'4 f' a' a' c'' bes'8 a' g'2 c''4. bes'8 a'4 bes'8 a' g'2 f'  \bar "|." } }
Alto = { { \key f \major c'4 c' f' f' f' g'8 f' e'2 c'4 d'8 e' f'4 f' f' e' f'2 c'4 c' f' f' f' g'8 f' e'2 c'4 d'8 e' f'4 f' f' e' f'2 f'4 f' ees' ees' d' d' e'4. ( e'8 ) f'4. g'8 f'4 f' e'4. f'8 e'2 f'4 c' c' f' f' g'8 f' e'2 c'4 d'8 e' f'4 c' d' c' c'2  \bar "|." } }
Tenor = { { \key f \major a4 a f f c' d' g2 a4. bes8 c'4 bes8 c' d'4 c' a2 a4 a f f c' d' g2 a4. bes8 c'4 bes8 c' d'4 c' a2 f4 f g a bes bes c'2 c'2. f4 g4. a8 c'2 c'4 c'8 bes a4 f c' d' g2 f4. g8 a4 f f <<e g >><<f2 a >> \bar "|." } }
Bass = { { \key f \major f4 f d d a, bes, c2 a4. g8 f4 d8 c bes,4 c f2 f4 f d d a, bes, c2 a4. g8 f4 d8 c bes,4 c f2 d4 d c c bes, g, c2 f4. e8 f4 d c2 c'4 ( bes ) a a8 g f4 d a, bes, c2 a,4. g,8 f,4 g,8 a, bes,4 c f,2  \bar "|." } }


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
%T:Llanfair
%M:4/4
%L:1/8
%C:Robert Williams (1782-1818), 1817
%Q:1/4=120
%F:llanfair.abc
%N:Public domain
%G:77.77 alleluias
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:F
%I:Chalice=21 Title=Let the Whole Creation Cry
%V:1
%F4F4A4A4c4B2A2G8c6B2A4B2A2G8F8F4F4A4A4c4B2A2G8c6B2A4B2A2G8F8A4A4c4c4d2c2B2A2G8A6G2A4=B4c8c8F4F4A4A4c4_B2A2G8c6B2A4B2A2G8F8
%V:2
%C4C4F4F4F4G2F2E8C4D2E2F4F4F4E4F8C4C4F4F4F4G2F2E8C4D2E2F4F4F4E4F8F4F4_E4_E4D4D4=E6-E2F6G2F4F4E6F2E8F4C4C4F4F4G2F2E8C4D2E2F4C4D4C4C8
%V:3
%A,4A,4F,4F,4C4D4G,8A,6B,2C4B,2C2D4C4A,8A,4A,4F,4F,4C4D4G,8A,6B,2C4B,2C2D4C4A,8F,4F,4G,4A,4B,4B,4C8C12F,4G,6A,2C8C4C2B,2A,4F,4C4D4G,8F,6G,2A,4F,4F,4 [E,4G,4]  [F,8-A,8-] 
%V:4
%F,4F,4D,4D,4A,,4B,,4C,8A,6G,2F,4D,2C,2B,,4C,4F,8F,4F,4D,4D,4A,,4B,,4C,8A,6G,2F,4D,2C,2B,,4C,4F,8D,4D,4C,4C,4B,,4G,,4C,8F,6E,2F,4D,4C,8C4-B,4A,4A,2G,2F,4D,4A,,4B,,4C,8A,,6G,,2F,,4G,,2A,,2B,,4C,4F,,8
%F,4F,4D,4D,4A,,4B,,4C,8A,6G,2F,4D,2C,2B,,4C,4F,8F,4F,4D,4D,4A,,4B,,4C,8A,6G,2F,4D,2C,2B,,4C,4F,8D,4D,4C,4C,4B,,4G,,4C,8F,6E,2F,4D,4C,8C4-B,4A,4A,2G,2F,4D,4A,,4B,,4C,8A,,6G,,2F,,4G,,2A,,2B,,4C,4F,,8
