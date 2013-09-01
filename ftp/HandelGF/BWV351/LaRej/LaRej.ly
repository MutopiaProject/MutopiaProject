%=============================================
%   created by MuseScore Version: 1.3
%          20 août 2013
%=============================================

\version "2.16.1"

\header {
  title = "La Réjouissance"
  subtitle = "des Feux d'Artifice Royaux"
  subsubtitle = "Trompette & Orgue"
  composer = "Haëndel"

  source = "IMSLP"
  copyright = "Public Domain"
  mutopiatitle = "La Réjouissance des Feux d'Artifice Royaux (Royal Fireworks)"
  mutopiaopus = "HWV 351"
  mutopiacomposer = "HandelGF"
  mutopiainstrument = "Trumpet, Organ/Piano"
  mutopiastyle = "Baroque"
  mutopiamaintainer = "Cyprien Lecourt"

 footer = "Mutopia-2013/09/01-1864"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}




trompette = \relative c'{
    \clef treble
    \key d \major
    \time 4/4 
    r8 r4 r2 a'8      | % 1
    d d d d d16 e fis e d8 d16 e      | % 2
    fis8 fis fis fis fis16 g a g fis8 fis16 g      | % 3
    a8 a a a a4. d8      | % 4
    a fis r8 d' a fis r8 a      | % 5
    a b16 a g8 fis e4. a8      | % 6
    a b16 a g8 fis e8. fis16 e8. fis16      | % 7
    e fis e fis e fis e fis e4. e8     | % 8
    fis16 gis a b gis8. a16 a4. r8      \bar ":|" % 9


     r2 r4 r8 e8      | % 10
    e8 fis16 g a8 fis e4. d16 fis      | % 11
    e4. d16 fis e4 e8 a      | % 12
    a~ b16~ cis~ d8 b a4. g16~ b      | % 13
    a4. g16~ b a4. a8      | % 14
    b b8. a16 g~ b a8 a8.~ g16 fis~ a      | % 15
    g8 g8.~ fis16 e~ g fis8 fis8. e16 d~ fis~      | % 16
    e8 e8. fis16 g~ e fis8~ d d e16 fis      | % 17
    g8 e e fis16~ g a8 fis fis g16~ a      | % 18
    b8.~ g16 a8.~ fis16 g8 fis16~ e a8 g      | % 19
    fis~ fis16~ e e8.~ d16 d4.~ r8 \bar "|."  % 20
}





orgueUP = \relative c'{
    \clef treble
    \key d \major
    \time 4/4 
    r8 r4 r2 a'8      | % 1
    d d d d d16 e fis e d8 d16 e      | % 2
    <d fis>8 <d fis> <d fis> <d fis> <d fis>16 <e g> <fis a> <e g> <d fis>8 <d fis>16 <e g>      | % 3
    <d fis a>8 <d fis a> <d fis a> <d fis a> <d fis a>4. <a' d>8      | % 4
    <fis a> <d fis> r8 <a' d> <fis a> <d fis> r8 <fis a>      | % 5
    <fis a> <g b>16 <fis a> <e g>8 <d fis> <a cis e>4. <cis a'>8      | % 6
    <fis a> <g b>16 <fis a> <e g>8 <d fis> <e a>8. <fis a>16 <e a>8 e16 <fis>      | % 7
    <cis e> <d fis> <cis e> <d fis> <cis e> <cis fis> <cis e> <d fis> <cis e>4. <cis e>8     | % 8
    <d fis>16 <d gis> <fis a> <fis b> <e gis>8. <e a>16 <cis e a>4. r8      \bar ":|" % 9



     r2 r4 r8 <cis e>8      | % 10
    <cis e>8 <d fis>16 <e g> <fis a>8 <d fis> <cis e>4. <a d>16 <d fis>      | % 11
    <cis e>4. <a d>16 <d fis> <cis e>8.~ <d e>16 <e>8 <cis a'>      | % 12
    <fis a>~ <fis b>16~ <fis cis'>~ <fis d'>8 <g b>16~ <e b'> <fis a>4. <e g>16~ <g b>      | % 13
    <fis a>4. <e g>16~ <g b> <fis a>4. <fis a>8      | % 14
    <g b> <g b>8. <fis a>16 <e g>~ <g b> <fis a>8 <fis a>8.~ <e g>16 <d fis>~ <fis a>      | % 15
    <e g>8 <e g>8.~ <d fis>16 <cis e>~ <e g> <d fis>8~ <a fis'>~ <d fis>16~ <d e> <d>~ <d fis>~      | % 16
    <d e>8 <cis e>16~ <b e> <cis e>~ <d fis> <e g>~ <cis e> <a fis'>8~ <a d> <a d> <d e>16 <d fis>      | % 17
    <e g>8 <cis e> <cis e> <d fis>16~ <e g> <fis a>8 <d fis> <d fis> <e g>16~ <fis a>      | % 18
    <g b>8. <e g>16 <fis a>8. <d fis>16 <cis g'>8 <d fis>16~ <d e> <e a>8 <cis e g>      | % 19
    <d fis>~ <b fis'>16~ <b e> <cis e>8.~ <a d>16 <fis a d>4.~ r8 \bar "|."  % 20
}


orgueDOWN = \relative c {
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    r1     | % 1
    r4 r8 <d fis a>8 <d fis a>4 r4     | % 2
    r4 r8 <d fis a>8 <d fis a>4 r4       | % 3
    r8 d fis a d a fis d      | % 4
    d' a fis d d' a fis d      | % 5
    d' d, cis d a' a16 b cis8 a      | % 6
    d, d' cis d a8. d,16 a'8. d,16      | % 7
    a'8 a, cis e a8 e cis a      | % 8
    d8 b e e, a4. r8      | % 9


    r2 r4 r8 a8     | % 10
    a'4 fis8 d a'8. b16 cis8 d16 d      | % 11
    a8 a,16 b cis8 d8 a'8. b16 cis8 a      | % 12
    d8 d, b g d'4 b8 g8      | % 13
    d'8 d, b g d'8. e16 fis8 d      | % 14
	g8 d b cis d fis a8 d      | % 15
    e,8 fis16 g a8 a,8 d4. fis8      | % 16
    a8 a, a' cis d fis,4 b8      | % 17
    e,8 a a g fis a d d      | % 18
    g8 g, d' fis e d' cis a      | % 19
    d,8 g a a, d d4 r8 \bar "|."  % 20
}



% <(\S+)\b[^>]*>




\score { 
	
	<<

	\new Staff
	{
		\set Staff.midiInstrument = #"trumpet"
		\set Staff.instrumentName = #"Trpt Bb"
		\transpose d c \trompette
		%\transpose d bes, \trompette 
		%\trompette
		%\stopStaff 
	}
    \new PianoStaff << 
		\set PianoStaff.instrumentName = #"Orgue"
		\set PianoStaff.midiInstrument = #"church organ"
        \new Staff {
			\transpose d bes, \orgueUP
			%\orgueUP
		}
		\new Staff {
 			\transpose d bes,  \orgueDOWN
			%\orgueDOWN
		}
  		>>
	>>
	\midi {
		\tempo 4=100
	}
	\layout {
		\tempo 4=100
	}
}


