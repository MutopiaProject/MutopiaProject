\version "2.16.1"

\paper {
    markup-system-spacing #'basic-distance = #12
    system-system-spacing #'basic-distance = #22
    ragged-bottom = ##f
}

% #(set-default-paper-size "letter")

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
        mutopiainstrument = "Harpsichord,Clavichord"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2013/02/17-1387"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
 staffUpper = {\change Staff = upper \stemDown}
 staffLower = {\change Staff = lower \stemUp}

 indentRests = \override Voice.Rest #'extra-offset = #'(5.5 . 0.0 )
 noIndentRests = \revert Voice.Rest #'extra-offset
 ignoreClashNote = \once \override NoteColumn #'ignore-collision = ##t

 nb = \noBreak

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = { \key g \major   \time 2/2 }

sopranoOne =   \relative c'' {
    \repeat volta 2 { %begin repeated section
    \stemUp
    \indentRests
        d1\rest | % 1
        d1\rest | % 2
        d1\rest | % 3
        d1\rest | % 4
        d1\rest | % 5
        d1\rest | % 6
        d1\rest | % 7
        d1\rest | % 8
     \noIndentRests
        g2 ^\mordent g4. ^\prallprall fis16 [ g ] | % 9
        a4 fis d fis | % 10
        b,4 e e, d' | % 11
        cis4 ^\prall b8 [ cis ] a [ b cis a ]| % 12
        d4 d, d'2 ~ | % 13
        d4 d, d'2 ~| % 14
        d2 cis | % 15
        d1 | % 16
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        fis2 ^\downmordent fis4. ^\prallprall e16 [ fis ] | % 17
        g4 d b d | % 18
        c4 f f, e' | % 19
        dis4 ^\prall cis8 [ dis ] b [ cis dis b ] | % 20
        e4 e, e'2 ~ | % 21
        e4 e, e'2 ~ | % 22
        e2 dis | % 23
        e2 ~ e8 [ d cis b ] | % 24
        a4 g'2 f8 [ e ] | % 25
        f2. e8 [ d ]|  % 26
        e2. fis!8 [ g ] | % 27
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
    \indentRests
        g1\rest | % 1
        g1\rest | % 2
        g1\rest | % 3
        g1\rest | % 4
        g1\rest | % 5
        g1\rest | % 6
        g1\rest | % 7
        g1\rest | % 8
        e1\rest | % 9
        e1\rest | % 10
        a,1\rest | % 11
        c1\rest | % 12
     \noIndentRests
        a'2 a4. _\prallprall g16 [ a ] | % 13
        b4 g e g | % 14
        e4 a \staffLower \stemDown a, \staffUpper g' | % 15
        fis4 _\prall e8 [ fis ] d2 | % 16
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
    	\indentRests
        r1 | % 17
        r1 | % 18
        r1 | % 19
        r1 | % 20
        \noIndentRests
        b'2 b4. _\prallprall a16 [ b ]| % 21
        c4 a fis a | % 22
        fis4 b b, a'| % 23
        g4_\prall fis8 [ g ] e2 ~| % 24
        e4 r4 a2 ~| % 25
        a4 d b g | % 26
        g4 c8 [ b ] c2 (| % 27
        c2. ) c4| % 28
        \ignoreClashNote b2 a4\rest g4| % 29
        <e>2. a8 [ g ] | % 30
        fis4 g ~ g fis | % 31
        g8 [ d c d ] b2| % 32
    } %end repeated section
}
systemBreaks = {
	s1 \repeat unfold 5 {\nb s1}  %System1
	s1 \repeat unfold 6 {\nb s1}  %System2
	s1 \repeat unfold 6 {\nb s1}  %System3
	s1 \repeat unfold 5 {\nb s1}  %System4
	s1 \repeat unfold 5 {\nb s1}  %System5
}

soprano = << \sopranoOne \\ \sopranoTwo \\ \systemBreaks >>


%%
%% Bass Clef
%% 

bassOne =   \relative d' {
    \repeat volta 2 { %begin repeated section
    \stemUp \clef "bass"
    \indentRests
        e1\rest | % 1
        e1\rest | % 2
        e1\rest | % 3
        e1\rest | % 4
     \noIndentRests
	d2 ^\mordent d4. ^\prallprall c16 [ d ] | % 5
        e4 c a c | % 6
        a4 d d, c' | % 7
        b4 ^\prall a8 [ b ] g [ b a c ] | % 8
        b8 [ a ] b4 e2 ~ | % 9
        e4 a, d2 ~ | % 10
        d4 b \staffUpper e2_~ | % 11
        e4 \staffLower d cis \staffUpper e | % 12
        \staffLower a,8 [ b a g ] fis2 | % 13
        g2 r2 | % 14
        r4 e4 \stemUp a2 ~ | % 15
        a8 [ a g a ] fis2 | % 16	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        \indentRests
    	d'1\rest | % 17
        d1\rest | % 18
        d1\rest | % 19
        d1\rest | % 20
        d1\rest | % 21
        d1\rest | % 22
        d1\rest | % 23
        d1\rest | % 24
        \override Voice.Rest #'extra-offset = #'(2.8 . 0.0 )
        d1\rest | % 25
        \indentRests
        d1\rest | % 26
        d1\rest | % 27
        d1\rest | % 28
        \noIndentRests \staffUpper
        d2 d4. _\prallprall c16 [ d ] | % 29
        \staffLower <e>4 c a c | % 30
        a4 d d, c' | % 31
        b4 ^\prall a8 [ b ] g2 | % 32 
    } %end repeated section
}

bassTwo =   \relative c'' {
    \repeat volta 2 { %begin repeated section
    \stemDown
        g,2^\mordent g4. ^\prallprall fis16 [ g ] | % 1
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
        b8 [ d e fis ] g [ a ] b4 ^~ | % 18
        b4 a8 [ gis8 ] a2 ^~ | % 19
        a4 fis b a | % 20
        g8 [ a b a ] g [ fis g e ] | % 21
        a8 [ b c b ] a [ g a fis ] | % 22
        b8 [ a g a ] b [ a b b, ] | % 23
        e8 ^[ b a b ] g ^[ fis g e ] | % 24
        \stemUp cis'2 cis4.^\prallprall b16 [ cis ] | % 25
        d4 b g b | % 26
        c4 e a, \stemDown g' | % 27
        fis4 e8 [ fis ] d [ e fis d ] | % 28
        g4 a b g | % 29
        c,2 r4 a'4 | % 30
        d,2 r4 d4 | % 31
        g2 g, | % 32
    } %end repeated section
}


bass = << \bassOne \\ \bassTwo>>


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef "treble" \global \soprano  }
        \context Staff = "lower"  { \clef "bass" \global \bass }
    >>
    \layout{ }
    \midi { }
}
