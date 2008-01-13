\header {
	title = "Ermuntre Dich"
	composer = "Johann Schop, 1641"
	mutopiatitle = "Ermuntre Dich (hymntune)"
	mutopiacomposer = "SchopJ"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1641"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1239"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  { \key ees \major ees'4 ees' f' g'8 a' bes'4 bes' a' bes' g' aes' g' f' g' f'2 ees'2 ees'4 ees' f' g'8 a' bes'4 bes' a' bes' g' aes' g' f' g' f'2 ees'2 f'4 f' g' aes' aes' g' g' f' g' g' g' aes'8 bes' c''4 c'' b' c'' d'' ees'' g' aes' g' f'2 f'2 bes'8 bes' c''4 bes' aes' g'8 aes' f'2 ees' ( ees'2 ) s4  \bar "|." } }
Alto = { { \key ees \major bes4 c' d' bes8 c' d'4 c'8 d' ees'4 d' d' c' bes8 c' d'4 ees' ees' d' bes2 bes4 c' d' bes8 c' d'4 c'8 d' ees'4 d' d' c' bes8 c' d'4 ees' ees' d' bes2 d'8 ees' f'4 g'8 e' f' e' f'4 f' e' c' c'8 b c'4 c' c'8 d' ees' d' d' ees' f'4 ees' f' ees'8 f' g'4 g'8 f' f' ees' ees'2 d'2 ees'8 d' c'4 d' ees'8 f' bes bes c'4 bes g2 ( g2 ) s4  \bar "|." } }
Tenor = { { \key ees \major g4 g8 aes bes, bes g f f4 f f f g8 f ees f g aes bes4 bes bes4. aes8 g2 g4 g8 aes aes bes g f f4 f f f g8 f ees f g aes aes g bes4 bes8 bes4 aes8 g2 bes8 c' d' c' bes4 c' d' g c'8 bes aes4 ees8 f g aes bes c' aes4 a g g g bes bes ees' ees8 f g4 c'8 bes c' a bes2 bes4 bes8 aes aes g g f ees4 ees8 d16 c d4 ees2 ( ees2 ) s4  \bar "|." } }
Bass = { { \key ees \major ees8 d c4 bes, ees d8 ees f4 f, bes, b, c8 d ees aes, aes g f ees bes4 ( bes,8 bes, ) ees2 ees8 d c4 bes, ees d8 ees f4 f, bes, b, c8 d ees aes, aes g f ees bes bes, bes, aes ees2 bes,4 bes8 aes g4 f b, c c f, c8 d ees4 e f fis g g, c bes8 aes g f ees d c d ees d a, g, a, f, bes,4. ( bes,8 ) g,4 aes,8 aes, bes,4 c8 d ees4 aes,8. c16 bes,4 ees,2 ( ees,2 ) s4  \bar "|." } }


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
%T:Ermuntre Dich
%M:4/4
%L:1/8
%C:Johann Schop, 1641
%Q:1/4=115
%F:ermuntre_dich.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Eb
%I:Partial=4 Title=Break Forth, O Beauteous Heavenly Light
%V:1
%E4E4F4G2=A2B4B4=A4B4G4_A4G4F4G4F8E7E4E4F4G2=A2B4B4=A4B4G4_A4G4F4G4F8E7F4F4G4A4A4G4G4F4G4G4G4A2B2c4c4=B4c4d4e4G4A4G4F8F7_B2-B2c4B4A4G2A2F8E8-E7
%V:2
%B,4C4D4B,2C2D4C2D2E4D4D4C4B,2C2D4E4E4D4B,7B,4C4D4B,2C2D4C2D2E4D4D4C4B,2C2D4E4E4D4B,7D2E2F4G2-=E2F2=E2F4F4=E4C4C2=B,2C4C4C2D2_E2D2D2E2F4E4F4E2F2G4G2F2F2E2E8D7E2D2C4D4E2F2_B,2-B,2C4B,4G,8-G,7
%V:3
%G,4G,2A,2B,,2-B,2G,2F,2F,4F,4F,4F,4G,2F,2E,2F,2G,2A,2B,4B,4B,6A,2G,7G,4G,2A,2A,2B,2G,2F,2F,4F,4F,4F,4G,2F,2E,2F,2G,2A,2A,2G,2B,4B,2B,4A,2G,7B,2C2D2C2B,4C4D4G,4C2B,2A,4E,2F,2G,2A,2B,2C2A,4=A,4=G,4G,4G,4B,4B,4E4E,2F,2G,4C2B,2C2=A,2B,7B,4B,2_A,2-A,2G,2G,2F,2E,4E,2D,1C,1D,4E,8-E,7
%V:4
%E,2D,2C,4B,,4E,4D,2E,2F,4F,,4B,,4=B,,4C,2D,2E,2A,,2A,2G,2F,2E,2B,4-_B,,2-B,,2E,7E,2D,2C,4B,,4E,4D,2E,2F,4F,,4B,,4=B,,4C,2D,2E,2A,,2A,2G,2F,2E,2B,2_B,,2-B,,2A,2E,7B,,4B,2A,2G,4F,4=B,,4C,4C,4F,,4C,2D,2E,4=E,4F,4^F,4=G,4G,,4C,4B,2-_A,2G,2F,2_E,2D,2C,2D,2E,2D,2=A,,2G,,2=A,,2F,,2_B,,6-B,,2G,,4_A,,2-A,,2B,,4C,2D,2E,4A,,3C,1B,,4E,,8-E,,7
%E,2D,2C,4B,,4E,4D,2E,2F,4F,,4B,,4=B,,4C,2D,2E,2A,,2A,2G,2F,2E,2B,4-_B,,2-B,,2E,7E,2D,2C,4B,,4E,4D,2E,2F,4F,,4B,,4=B,,4C,2D,2E,2A,,2A,2G,2F,2E,2B,2_B,,2-B,,2A,2E,7B,,4B,2A,2G,4F,4=B,,4C,4C,4F,,4C,2D,2E,4=E,4F,4^F,4=G,4G,,4C,4B,2-_A,2G,2F,2_E,2D,2C,2D,2E,2D,2=A,,2G,,2=A,,2F,,2_B,,6-B,,2G,,4_A,,2-A,,2B,,4C,2D,2E,4A,,3C,1B,,4E,,8-E,,7
