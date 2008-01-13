\header {
	title = "Mendelssohn"
	composer = "Felix Mendelssohn-Bartholdy (1809-1847)"
	mutopiatitle = "Mendelssohn (hymntune)"
	mutopiacomposer = "Mendelssohn-BartholdyF"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = ""
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1261"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key f \major c'4 f' f'4. e'8 f'4 a' a' g' c'' c'' c''4. bes'8 a'4 g' a'2 c'4 f' f'4. e'8 f'4 a' a' g' c'' g' g'4. e'8 e'4 d' c'2 c''4 c'' c'' f' bes' a' a' g' c'' c'' c'' f' bes' a' a' g' d'' d'' d'' c'' bes' a' bes'2 g'4 a'8 bes' c''4. f'8 f'4 g' a'2 d''4. d''8 d''4 c'' bes' a' bes'2 g'4 a'8 bes' c''4. f'8 f'4 g' f'2  \bar "|." } }
Alto = { { \key f \major c'4 c' c'4. c'8 c'4 f' f' e' f' e' d' g'8 g' f'4 e' f'2 c'4 c' c'4. c'8 a4 f' f'2 e'4 d' e'4. c'8 c'4 b c'2 c'4 c' c' f' g' f' f' e' c' c' c' f' g' f' f' e' bes' bes' bes' a' g' ges' g'2 e'4 e' f'4. c'8 c'4 e' f'2 bes'4. bes'8 bes'4 a' g' ges' g'2 c'4 e' f'4. c'8 c'4 e' c'2  \bar "|." } }
Tenor = { { \key f \major a4 a a4. g8 f4 c' c'2 c'4 c' d' d' c' c' c'2 a4 a a4. g8 f4 c' d'2 a4 g g <<e g >><<f a >>f e2 c'4 c' c' c' c' c' c'2 c'4 c' c' c' c' c' c'2 d'4 d' d' d' d' d' d'2 c'4 c' c'4. a8 a4 bes a2 d'4 d' d' c' <<g bes >><<ges a >>bes2 c'4 c' c'4. a8 a4 bes a2  \bar "|." } }
Bass = { { \key f \major f4 f f c8 c a,4 f, c2 a,4 a, bes, bes, c c f,2 f4 f f c8 c d4 c b,2 a,4 b, c e, f, g, c2 c'4 c' c' a e f c2 c'4 c' c' a e f c2 bes,4 bes, bes, bes, bes, d g2 bes4 ( bes ) a f8 f c4 c f,2 <<bes4 bes, >><<bes bes, >><<bes bes, >><<a bes, >>bes, d g f e bes bes f8 f c4 c f2  \bar "|." } }


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
%T:Mendelssohn
%M:4/4
%L:1/8
%C:Felix Mendelssohn-Bartholdy (1809-1847)
%Q:1/4=115
%F:mendelssohn.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:F
%I:Title=Hark! the Herald Angles Sing
%V:1
%C4F4F6E2F4A4A4G4c4c4c6B2A4G4A7C4F4F6E2F4A4A4G4c4G4G6E2E4D4C7c4c4c4F4B4A4A4G4c4c4c4F4B4A4A4G4d4d4d4c4B4A4B8G4A2B2c6F2F4G4A7d6d2d4c4B4A4B8G4A2B2c6F2F4G4F8
%V:2
%C4C4C6C2C4F4F4E4F4E4D4G2G2F4E4F7C4C4C6C2A,4F4F8E4D4E6C2C4=B,4C7C4C4C4F4G4F4F4E4C4C4C4F4G4F4F4E4B4B4B4A4G4_G4=G8E4E4F6C2C4E4F7B6B2B4A4G4_G4=G8C4E4F6C2C4E4C8
%V:3
%A,4A,4A,6G,2F,4C4C8C4C4D4D4C4C4C7A,4A,4A,6G,2F,4C4D8A,4G,4G,4 [E,4G,4]  [F,4A,4] F,4E,7C4C4C4C4C4C4C8C4C4C4C4C4C4C7D4D4D4D4D4D4D8C4C4C6A,2A,4B,4A,7D4D4D4C4 [G,4B,4]  [_G,4A,4] B,8C4C4C6A,2A,4B,4A,8
%V:4
%F,4F,4F,4C,2C,2A,,4F,,4C,8A,,4A,,4B,,4B,,4C,4C,4F,,7F,4F,4F,4C,2C,2D,4C,4=B,,8A,,4=B,,4C,4E,,4F,,4G,,4C,7C4C4C4A,4E,4F,4C,8C4C4C4A,4E,4F,4C,7_B,,4B,,4B,,4B,,4B,,4D,4G,8_B,4-B,4A,4F,2F,2C,4C,4F,,7 [B,4B,,4]  [B,4B,,4]  [B,4B,,4]  [A,4B,,4] B,,4D,4=G,4F,4E,4B,4B,4F,2F,2C,4C,4F,8
%F,4F,4F,4C,2C,2A,,4F,,4C,8A,,4A,,4B,,4B,,4C,4C,4F,,7F,4F,4F,4C,2C,2D,4C,4=B,,8A,,4=B,,4C,4E,,4F,,4G,,4C,7C4C4C4A,4E,4F,4C,8C4C4C4A,4E,4F,4C,7_B,,4B,,4B,,4B,,4B,,4D,4G,8_B,4-B,4A,4F,2F,2C,4C,4F,,7 [B,4B,,4]  [B,4B,,4]  [B,4B,,4]  [A,4B,,4] B,,4D,4=G,4F,4E,4B,4B,4F,2F,2C,4C,4F,8
