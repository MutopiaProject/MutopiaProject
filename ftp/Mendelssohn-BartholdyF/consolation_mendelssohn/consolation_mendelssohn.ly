\header {
	title = "Consolation (Mendelssohn)"
	composer = "Felix Mendelssohn-Bartholdy (1809-1847)"
	mutopiatitle = "Consolation (Mendelssohn) (hymntune)"
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
 footer = "Mutopia-2008/01/13-1232"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  \transpose ees d { \key ees \major g'2 f'4. ees'8 bes'4 aes'2 g'4 f' ees' d'4. ees'8 g'2 f' f' f'4. g'8 aes'2. f'4 c' d' g'4. f'8 ees'1 g'2 f'4. ees'8 ees''2. d''4 c'' bes' aes'4. g'8 c''2 f' f' f'4. g'8 aes'2. f'4 c' d' g'4. f'8 ees'1  \bar "|." } }
Alto = { \transpose ees d { \key ees \major bes2 bes4. bes8 ees'2. ees'4 a a a4. ees'8 ees'2 d' des' c'4. e'8 f'2. c'4 c' bes d'4. d'8 ees'1 bes2 bes4. ees'8 ees'2. ees'4 ees' ees' e'4. e'8 e'2 f' des' c'4. e'8 f'2. c'4 c' bes d'4. d'8 ees'1  \bar "|." } }
Tenor = { \transpose ees d { \key ees \major bes2 aes4. g8 ees2. ees4 ees ees f4. a8 bes2 bes bes c'4. bes8 c'2. aes4 aes aes aes4. aes8 g1 bes2 aes4. g8 g2. g4 c' c' c'4. c'8 c'2 c' bes c'4. bes8 c'2. aes4 aes f bes4. aes8 g1  \bar "|." } }
Bass = { \transpose ees d { \key ees \major ees2 ees4. ees8 c2. c4 c c c4. c8 bes,2 bes, bes aes4. g8 f2. f4 bes, bes, bes,4. bes,8 ees1 ees2 ees4. ees8 c2. c4 c' c' bes4. bes8 aes2 aes bes aes4. g8 f2. f4 bes, bes, bes,4. bes,8 ees1  \bar "|." } }


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
%T:Consolation (Mendelssohn)
%M:4/4
%L:1/4
%C:Felix Mendelssohn-Bartholdy (1809-1847)
%Q:1/4=60
%F:consolation_mendelssohn.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Eb
%I:Chalice=416 Transpose=-1 Title=Here, O My Lord, I See Thee Face to Face
%V:1
%G4F3E1B2A4G2F2E2D3E1G4F4F4F3G1A6F2C2=D2G3F1_E8G4F3E1e6d2c2B2A3G1c4F4F4F3G1A6F2C2=D2G3F1_E8
%V:2
%B,4B,3B,1E6E2=A,2=A,2=A,3E1E4D4_D4C3=E1F6C2C2B,2D3D1_E8B,4B,3E1E6E2E2E2=E3=E1=E4F4_D4C3=E1F6C2C2B,2D3D1_E8
%V:3
%B,4_A,3G,1E,6E,2E,2E,2F,3=A,1B,4B,4B,4C3B,1C6A,2A,2A,2A,3A,1G,8B,4A,3G,1G,6G,2C2C2C3C1C4C4B,4C3B,1C6A,2A,2F,2B,3A,1G,8
%V:4
%E,4E,3E,1C,6C,2C,2C,2C,3C,1B,,4B,,4B,4_A,3G,1F,6F,2B,,2B,,2B,,3B,,1E,8E,4E,3E,1C,6C,2C2C2B,3B,1A,4A,4B,4A,3G,1F,6F,2B,,2B,,2B,,3B,,1E,8
%E,4E,3E,1C,6C,2C,2C,2C,3C,1B,,4B,,4B,4_A,3G,1F,6F,2B,,2B,,2B,,3B,,1E,8E,4E,3E,1C,6C,2C2C2B,3B,1A,4A,4B,4A,3G,1F,6F,2B,,2B,,2B,,3B,,1E,8
