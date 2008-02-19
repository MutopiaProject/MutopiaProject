\header {
	title = "Wellesley"
	composer = "Lizzie E. Tourjee, (1858-1913), 1878"
	mutopiatitle = "Wellesley (hymntune)"
	mutopiacomposer = "TourjeeLE"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1878"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1303"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  \transpose g f { \key c \major g'4 c''8 d'' c''4 b' g' d''8 e'' d''4 c'' a' g' f' e' d' fis' g'2 g'4 a'8 g' g'4 e''8 c'' g'4 a'8 g' g'4 c'' c'' c'' c''8 e'' c'' a' g'4 d'' c''2  \bar "|." } }
Alto = { \transpose g f { \key c \major e'4 e' f' f' f' f' e' e' c' c' b8 d' c' cis' d'4 c' b2 f'4 f' e' e' f' f' e' e' e' f' e' e'8 f' d'4 f' e'2  \bar "|." } }
Tenor = { \transpose g f { \key c \major g4 g g g g g g g f g g g fis a g2 b4 b c' g g b c' g c' c' c'8 b a c' c' b a b c'2  \bar "|." } }
Bass = { \transpose g f { \key c \major c4 c d g, b, g, c c f e d8 b, c a, d4 d g,2 g4 g c c b, g, c c a gis g8 gis a f g g g,4 c2  \bar "|." } }


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
%T:Wellesley
%M:4/4
%L:1/8
%C:Lizzie E. Tourjee, (1858-1913), 1878
%Q:1/4=115
%F:wellesly.abc
%N:Public domain
%G:87.87
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:C
%I:Chalice=73 Transpose=-2 Title=There's a Wideness In God's Mercy
%V:1
%G4c2d2c4B4G4d2e2d4c4A4G4F4E4D4^F4G8G4A2G2G4e2c2G4A2G2G4c4c4c4c2e2c2A2G4d4c8
%V:2
%E4E4F4F4F4F4E4E4C4C4B,2D2C2^C2D4=C4B,8=F4F4E4E4F4F4E4E4E4F4E4E2F2D4F4E8
%V:3
%G,4G,4G,4G,4G,4G,4G,4G,4F,4G,4G,4G,4^F,4A,4G,8B,4B,4C4G,4G,4B,4C4G,4C4C4C2B,2A,2C2C2B,2A,2B,2C8
%V:4
%C,4C,4D,4G,,4B,,4G,,4C,4C,4F,4E,4D,2B,,2C,2A,,2D,4D,4G,,8G,4G,4C,4C,4B,,4G,,4C,4C,4A,4^G,4=G,2^G,2A,2=F,2=G,2-G,2G,,4C,8
%C,4C,4D,4G,,4B,,4G,,4C,4C,4F,4E,4D,2B,,2C,2A,,2D,4D,4G,,8G,4G,4C,4C,4B,,4G,,4C,4C,4A,4^G,4=G,2^G,2A,2=F,2=G,2-G,2G,,4C,8
