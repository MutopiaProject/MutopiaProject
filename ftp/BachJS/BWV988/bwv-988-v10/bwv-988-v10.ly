\version "2.10.33"

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
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 10. Fughetta. a 1 Clav."
        mutopiatitle = "Goldberg Variations - 10"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz@gmail.com"
	
 footer = "Mutopia-2008/04/21-1387"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% staffUpper = {\change Staff = upper \stemDown}
% staffLower = {\change Staff = lower \stemUp}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoOne =   \relative c'' {
    \repeat volta 2 { %begin repeated section
    \stemUp
        r1 | % 1
        r1 | % 2
        r1 | % 3
        r1 | % 4
        r1 | % 5
        r1 | % 6
        r1 | % 7
        r1 | % 8
        g'2 ^\mordent g4. ^\prall fis16 [ g ] | % 9
        a4 fis d fis | % 10
        b,4 e e, d' | % 11
        cis4 ^\prall b8 [ cis ] a [ b cis a ]| % 12
        d4 d, d'2 ~ | % 13
        d4 d, d'2 ~| % 14
        d2 cis | % 15
        d1 | % 16
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        fis2 ^\mordent fis4. ^\prall e16 [ fis ] | % 17
        g4 d b d | % 18
        c4 f f, e' | % 19
        dis4 ^\prall cis8 [ dis ] b [ cis dis b ] | % 20
        e4 e, e'2 ~ | % 21
        e4 e, e'2 ~ | % 22
        e2 dis | % 23
        e2 ~ e8 [ d cis b ] | % 24
        a4 g'2 f8 [ e ] | % 25
        f2. e8 [ d ]|  % 26
        e2. fis8 [ g ] | % 27
        a8 [ b g a ] fis4 a ~ | % 28
        a4 g8 [ fis ] g4 b, ~ | % 29
        b4 a8 [ b ] c2 ~ | % 30
        c4 b a2 | % 31
        g1  % 32
    } %end repeated section
}

sopranoTwo =   \relative c'' {
    \repeat volta 2 { %begin repeated section
    \stemDown
        r1 | % 1
        r1 | % 2
        r1 | % 3
        r1 | % 4
        r1 | % 5
        r1 | % 6
        r1 | % 7
        r1 | % 8
        r1 | % 9
        r1 | % 10
        r1 | % 11
        r1 | % 12
        a2 a4. _\prall g16 [ a ] | % 13
        b4 g e g | % 14
        e4 a a, g' | % 15
        fis4 _\prall e8 [ fis ] d2 | % 16
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        r1 | % 17
        r1 | % 18
        r1 | % 19
        r1 | % 20
        b'2 b4. _\prall a16 [ b ]| % 21
        c4 a fis a | % 22
        fis4 b b, a'| % 23
        g4 fis8 [ g ] e2 ~| % 24
        e4 r4 a2 ~| % 25
        a4 d b g | % 26
        g4 c8 [ b ] c2 (| % 27
        c2. ) c4| % 28
        b2 r4 g4| % 29
        e2. a8 [ g ] | % 30
        fis4 g ~ g fis | % 31
        g8 [ d c d ] b2| % 32
    } %end repeated section
}


soprano = << \sopranoOne \\ \sopranoTwo>>


%%
%% Bass Clef
%% 

bassOne =   \relative d' {
    \repeat volta 2 { %begin repeated section
    \stemUp \clef "bass" 
        r1 | % 1
        r1 | % 2
        r1 | % 3
        r1 | % 4
		d2 ^\mordent d4. ^\prall c16 [ d ] | % 5
        e4 c a c | % 6
        a4 d d, c' | % 7
        b4 ^\prall a8 [ b ] g [ b a c ] | % 8
        b8 [ a ] b4 e2 ~ | % 9
        e4 a, d2 ~ | % 10
        d4 b e2 | % 11
        e4 d cis e | % 12
        a,8 [ b a g ] fis2 | % 13
        g2 r2 | % 14
        r4 e4 a2 ~ | % 15
        a8 [ a g a ] fis2 | % 16	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        r1 | % 17
        r1 | % 18
        r1 | % 19
        r1 | % 20
        r1 | % 21
        r1 | % 22
        r1 | % 23
        r1 | % 24
        r1 | % 25
        r1 | % 26
        r1 | % 27
        r1 | % 28
        d'2 d4. ^\prall c16 [ d ] | % 29
        e4 c a c | % 30
        a4 d d, c' | % 31
        b4 ^\prall a8 [ b ] g2 | % 32 
    } %end repeated section
}

bassTwo =   \relative c'' {
    \repeat volta 2 { %begin repeated section
    \stemDown
        g,2 ^\mordent g4. ^\prall fis16 [ g ] | % 1
        a4 fis4 d fis | % 2
        e4 a a, g' | % 3
        fis4 ^\prall e8 [ fis ] d [ e c d ] | % 4
        b8 [ d e fis ] g4 b, | % 5
        c2 r4 a4 | % 6
        fis2 r4 d4 | % 7
        g4 d' b d | % 8
        g2 r4 e4 | % 9
        fis2 r4 d4 | % 10
        g2 r4 e4 | % 11
        a2 r4 g4 | % 12
        fis2 r4 d4 | % 13
        g,4 b g e | % 14
        a2 r4 a4 | % 15
        d1 	| % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d8 [ e fis g ] a4 c, | % 17
        b8 [ d e fis ] g [ a ] b4 ~ | % 18
        b4 a8 [ gis8 ] a2 ~ | % 19
        a4 fis b a | % 20
        g8 [ a b a ] g [ fis g e ] | % 21
        a8 [ b c b ] a [ g a fis ] | % 22
        b8 [ a g a ] b [ a b b, ] | % 23
        e8 [ b a b ] g [ fis g e ] | % 24
        cis'2 cis4. _\prall b16 [ cis ] | % 25
        d4 b g b | % 26
        c4 e a, g' | % 27
        fis4 e8 [ fis ] d [ e fis d ] | % 28
        g4 a b g | % 29
        c,2 r4 a'4 | % 30
        d,2 r4 d4 | % 31
        g2 g, | % 32
    } %end repeated section
}


bass = << \bassOne \\ \bassTwo>>


%% Merge score - Piano staff in key of G Major, 12/8 time.

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef "treble" \key g \major \time 4/4 \soprano  }
        \context Staff = "lower"  { \clef "bass" \key g \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { }

}
