\version "2.11.57"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Praeludium C-Dur"
        subtitle = "\"Fünf kleine Präludien\""
        piece = "Bwv 943"
        mutopiatitle = "Praeludium C-Dur"
        composer = "Johann Sebastian Bach (165-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 943"
        date = "1703-1707"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition Band 36 / Ernst Naumann 1890"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
 footer = "Mutopia-2008/09/28-1533"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
	}

     sopranoOne =   \relative c'' {
		 r8 c8 [b a g f] | % 1
		 e8 [ f g c, b f'] | % 2
		 e4. d8 [ e f ] | % 3
		 g4 e f8 [ g16 a] | % 4
		 g8 [ g' f e d c ] | % 5
		 b8 [ c d g, fis c'] | % 6
		 b4. a8 [ b c ] | % 7
		 d4 b c8 [ d16 e ] | % 8
		 d2. ~ | % 9
		 d8 [ d c b a b ] | % 10
		 c4. e8 [ d c ] | % 11
		 b2. ~ | % 12
		 b8 [ b a b c g] | % 13
		 fis2 g4 ~ | % 14
		 g2 fis4 | % 15
		 g8 [ a b cis d e ] | % 16
		 f2. ~ | % 17
		 f8 [ f e f g d ] | % 18
		 cis4 d8 [ e ] a,4 | % 19
		 d2 cis4 | % 20
		 d2. ~| % 21
		 d8 [ d c b a g ] | % 22
		 fis8 [ g ] a2 ~ | % 23
		 a8 [ c b a g fis ] | % 24
		 e4. g8 c4 ~ | % 25
		 c4 r8 e8 [ d c ] | % 26
		 b8 [ c b a b c ] | % 27
		 b8[ g a b c d] | % 28
		 e8 [ d c a' bes g ] | % 29
		 a2. ~ | % 30
		 a4 g8 [ f e f ] | % 31
		 g2. ~ | % 32
		 g4 f8 [ e d e ] | % 33
		 f2. ~ | % 34
		 f2.~ | % 35
		 f4 e d ~ | % 36
		 d4 r8 g8 c,4 | % 37
		 r8 c8 f2~  | % 38
		 f4 e8 [ d c bes] | % 39
		 a4 b8 [ c d b ] | % 40
		 g4. g8 [ c bes ] | % 41
		 a8 [ g ] f2 ~ | % 42
		 f8 [ f e d ] e4 ~ | % 43
		 e8 [ e d e f c]  | % 44
		 b4 c2 ~ | % 45
		 c4 b2 | % 46
		 c4 r4 r4 | % 47
		 r1*3/4 | % 48
		 r8 g'8 [ a b c d ] | % 49
		 e8 [ d c g' a f] | % 50
		 b4. c8 f,4 ~ | % 51
		 f8 [ g] d4. c8 | % 52
		 c8 [ b a g f e] | % 53
		 d8 [ e f c b f'] | % 54
		 e2. | % 55
		 d8 [ e <d f> <e g> <f a> b ] | % 56
		 c2 r8 g8 | % 57
		 r8 e8 g8 b8 <e, g c>4 \fermata \bar "|." | % 58

	 }

	 sopranoTwo =   \relative c'' {
		 s2. | % 1
		 s2. | % 2
		 s2. | % 3
		 s2. | % 4
		 s2. | % 5
		 s2. | % 6
		 s2. | % 7
		 s2. | % 8
		 r8 c8 [ b a g f ] | % 9
		 e2 a4 ~ | % 10
		 a8 [ g ] fis2  | % 11
		 r8 a8 [ g f e d ] | % 12
		 e2. ~ | % 13
		 e8 [ e d c b c ] | % 14
		 d8 [ e a, b c d ] | % 15
		 b4 r8 a'8 [ b cis] | % 16
		 d4. c8 [ bes a ] | % 17
		 g2.~ | % 18
		 g2 f8 [g] | % 19
		 a8 [ bes e, f g a ] | % 20
		 fis2 g4  | % 21
		 a4 r4 r4 | % 22
		 r4 r8 d,8 [ c e ] | % 23
		 d2. ~ | % 24
		 d8 [ d c b a g'] | % 25
		 fis8 [g a fis g a ] | % 26
		 g2 fis4 | % 27
		 g4 r4 r4 | % 28
		 r2. | % 29
		 r4 c4 f | % 30
		 d2. ~ | % 31
		 d4 c8 [ b a b] | % 32
		 c2. ~ | % 33
		 c8 [ e d c b a ] | % 34
		 b2 a4 | % 35
		 g4 c2 ~ | % 36
		 c8 [ a ] b4 ~ b8 [ b ] | % 37
		 a4 r8a8 [ d c ] | % 38
		 b8 [ a ] g2 ~ | % 39
		 g4 f2 ~ | % 40
		 f4 e2 ~ | % 41
		 e4 ~ e8 [ e d c ] | % 42
		 b4 r8 g8 [ c bes ] | % 43
		 a2. | % 44
		 g4. f8 [ g a ] | % 45
		 d,8 [ e f a g f ] | % 46
		 e8 [ g a b c d ] | % 47
		 e8 [ d c g' a f ] | % 48
		 g2. ~ | % 49
		 g4 c2 | % 50
		 f4. e8 d4 ~ | % 51
		 d8 [ e ] b2 | % 52
		 r4 f,4 a | % 53
		 f4 ~ <d f>2 | % 54
		 r8 d'8 [ c bes a g ] | % 55
		 f8 [ g a e d as' ]  | % 56
		 f'8 [ f e d ] e4] | % 57
		 c2 ~ c4 \bar "|." | % 58
		 
	 }

  soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bass = \relative c' {
		 r1*3/4 | % 1
		 r1*3/4 | % 2
		 r8 c8 [ b a g f ]| % 3
		 e8 [ f g c, b f'] | % 4
		 c4 c' fis, | % 5
		 g4 b d  | % 6
		 g,8 [ g' fis e d c ] | % 7
		 b8 [ c d g, fis c' ] | % 8
		 b4 g b | % 9
		 c8 [ b a g fis e ] | % 10
		 d8 [ e d c b a ] | % 11
		 g4 r8 g'8 [ a b ] | % 12
		 c8 [ d c b] a4  | % 13
		 d4 d, e  | % 14
		 c4 d d, | % 15
		 g4 r8 g'8 [ f e ] | % 16
		 d8 [ d, e f g a ] | % 17
		 bes8 [ c bes a g bes] | % 18
		 a8 [ a' b cis d e ] | % 19
		 f8 [ g,] a4 a, | % 20
		 d8 [ d' c b a g ] | % 21
		 fis8 [ g a d, c e] | % 22
		 a,8 [ d c b a g ] | % 23
		 fis4 g8 [ a ] b4 | % 24
		 c8 [ b' a g fis e ] | % 25
		 d8 [ e fis c b d ] | % 26
		 g,8 [ c ] d4 d, | % 27
		 g4 r8 g'8 [ a b ] | % 28
		 c8 [ d e f g e ] | % 29
		 f8 [ g f e d c ] | % 30
		 b8 [ c b a g f ]  | % 31
		 e8 [ f e d c b ] | % 32
		 a8 [ bes a g f e ] | % 33
		 d4 e f | % 34
		 g8 [ g' a b c d ] \clef treble  | % 35
		 e8 [ d c g' a fis ] | % 36
		 g4. f8 [ e g ] | % 37
		 f8 [ e d c b a ] | % 38
		 g4 c8 [ d e c ]  | % 39
		 f8 [ e d e d c ] \clef bass | % 40
		 b8 [ g c bes a g ]  | % 41
		 f8 [ e ] d4 f | % 42
		 g8 [ g, c bes a g ]  | % 43
		 f2. ~ | % 44
		 f8 [ f e d e f ] | % 45
		 g2. | % 46
		 c,2 r4 | % 47
		 r8 g'8 [ a b c d ]  | % 48
		 e8 [ d c g' a f ] | % 49
		 g8 [ f ] e4 e' | % 50
		 d8 [ d, c b a g ] | % 51
		 c4 g' g, | % 52
		 c2. ~ | % 53
		 c2.  | % 54
		 c2. ~ | % 55
		 c2. ~ | % 56
		 <c g'>2. ~ | % 57
		 <c g'>2 c,4 \fermata \bar "|." % 58

}


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key c \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key c \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { }

}
