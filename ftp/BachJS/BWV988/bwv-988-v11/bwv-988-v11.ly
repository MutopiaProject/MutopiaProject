\version "2.11.44"

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
        piece = "Variatio 11. a 2 Clav."
        mutopiatitle = "Goldberg Variations - 11"
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
	
 footer = "Mutopia-2008/04/26-1409"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


soprano =   \relative b' {
    \repeat volta 2 { %begin repeated section

        b16 [ a g ] fis [ e d ] cis8. ~ [ cis8 e16 ] | % 1
        a16 [ g fis ] e [ d cis ] b8. ~ [ b8 a'16 ] | % 2
        g16 [ fis e ] d [ cis b ] a8 [ cis16 e8 g16 ] | % 3
        fis16 [ e d ] cis [ b a ]  \clef "bass" g [ fis e ] d [ e c ] | % 4
        b16 [ d g ] b [ d g ] d [ b g ] f [ e d ] | % 5
        cis16 [ e g ] bes [ e g ] e [ bes a ] g [ fis e ] | % 6
        d16 [ g b ]  \clef "treble" d [ g b ] a [ fis d ] c [ b a ] | % 7
        g16 [ b d ] g [ b d ] g8 [ d16 ] b8 [ fis16 ] | % 8
        g8. ~ [ g8 b16 ] e [ d cis ] b [ a g ] | % 9
        fis8. ~ [ fis8 e'16 ] d [ cis b ] a [ g fis ] | % 10
        e8. ~ e16 [ fis g ] cis, [ b' a ] g [ a b ] | % 11
        e,16 [ d' cis ] b [ cis d ] cis [ e fis ] g [ fis e ] | % 12
        d4. ~ \downprall d8 [ fis,16 ] a8 [ d16 ] | % 13
        d4. ~ \upprall d8 [ gis,16 ] b8 [ d16 ] | % 14
        d4. ~ \upprall d16 [ e g ] cis, [ e g ] | % 15
        fis8. ~ fis16 [ d a ] fis [ d fis ] a [ cis d] | % 16
		
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		r4. a'16 [ g fis ] e [ d c ] | % 17
        b16 [ a g ] r8. d''16 [ c b ] a [ g f ] | % 18
        e16 [ d c ] b [ a g ] fis8 [ dis'16 ] e8 [ ais,16 ] | % 19
        b8 [ dis,16 ] fis8 [ a16 ] c [ b a ] g [ a fis ] | % 20
        e16 [ g b ] e [ g b ] g [ e b ] g [ fis e ] | % 21
        f16 [ a c ] f [ a c ] a [ f c ] a [ g fis ] | % 22
        g16 [ b e ] g [ e c' ] b [ a g ] fis [ e dis ] | % 23
        e16 [ g e ] b [ g fis ] g [ e g ] b [ e dis ] | % 24
        e16 [ d c ] b [ a g ] fis8. ~ [ fis8 a16 ] | % 25
        d16 [ c b ] a [ g fis ] e8. ~ [ e8 d'16 ] | % 26
        c16 [ b a ] g [ fis e ] fis [ e d ] cis [ d e ] | % 27
        fis16 [ e d ] \clef "bass" c [ b a ] b [ a g ] fis [ g a ] | % 28
        b16 [ a g ] f [ e d ] e [ d c ] b [ c d ] | % 29
        e16 [ c e ] g [ c e ] c [ a c ] \clef "treble" e [ a c ] | % 30
        fis,16 [ d fis ] a [ d fis ] d [ a d ] fis [ a c ] | % 31
        b16 [ g d ] b [ g fis ] g [ b d ] g8. | % 32

    } %end repeated section
}



%%
%% Bass Clef
%% 

bass = \relative g {
	\repeat volta 2 { %begin repeated section
        g8. ~ [ g8 b16 ] e [ d cis ] b [ a g ] | % 1
        fis8. ~ [ fis8 e'16 ] d [ cis b ] a [ g fis ] | % 2
        e8 [ g16 b8 d16 ] cis [ b a ] g [ fis e ] | % 3
        d16 [ e fis ] g [ a b ] \clef "treble" cis [ d e ] fis [ g a ] | % 4
        g4. ~ \prallprall g8 [ b,16 ] d8 [ g16 ] | % 5
        g4. ~ \upprall g8 [ cis,16 ] e8 [ g16 ] | % 6
        g4. ~ \upprall g16 [ a c ] fis, [ a c ] | % 7
        b8. ~ b16 [ g d ] b [ g b ] d [ g a ] | % 8
        b16 [ a g ] fis [ e d ] cis8. ~ [ cis8 e16 ] | % 9
        a16 [ g fis ] e [ d cis ] b8. ~ [ b8 a'16 ] | % 10
        g16 [ fis e ] d [ cis b ] e [ d cis ]  b [ a g ] \clef "bass" | % 11
        cis16 [ b a ] g [ fis e ] a [ g fis ] e [ fis g ] | % 12
        fis16 [ a d ] \clef "treble"  fis [ a d ] a [ fis d ] c [ b a ] | % 13
        gis16 [ b d ] f [ b d ] b [ f e ] d [ cis b ] | % 14
        a16 [ d fis ] a [ d fis ] e [ cis a ] g [ fis e ] | % 15
        d16 [ \clef "bass" a fis ] d [ a fis ] d [ fis a ] d8. | % 16

    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
         d16 [ e fis ] g [ a b ] c [ d, c' ( ] c ) [ b a ] | % 17
        g16 [ a b ] \clef "treble" c [ d e ] f [ g, f' ~ ] f [ e d ] | % 18
        c8. ~ c16 [ e g ] c [ b a ] g [ fis e ] | % 19 
        dis16 [ cis b ]  \clef "bass" a [ g fis ] e [ dis cis ] b [ c a ] | % 20
        g8. ~ g16 [ b e ] g [ b dis ] e8 [ g,,16 ] | % 21
        a8. ~ a16 [ c f ] a [ c dis ] e8 [ ais,,16 ] | % 22
        b8. ~ b16 [ cis dis ] e [ fis g ] a [ g fis ] | % 23
        g16 [ e g ] b [ e dis ] e [ g e ] b [ g b ] | % 24
        c,8. ~ [ c8 e'16 ] \clef "treble"  a [ g fis ] e [ d c ] | % 25
        b8. ~ [ b8 a'16 ] g [ fis e ] d [ c b ] | % 26
        a8. ~ a16 [ b c ] d [ e fis ] g [ fis e ] | % 27
        d8. ~ d16 [ e fis ] g [ a b ] c [ b a ] | % 28
        g8. ~ g16 [ a b ] c [ d e ] f [ e d ] | % 29
        c8. ~ c16 [ e c ] a [ e c ] a [ c e ] | % 30
        a16 [ c a ] fis [ d a ] \clef "bass" fis [ d fis ] a [ c fis, ] | % 31
        g16 [ b d ] \clef "treble"  g [ b d ] g [ d b ] g8. \clef "bass" | % 32
  
    } %end repeated section
}



%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key g \major \time 12/16 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key g \major \time 12/16 \bass }
    >>
    \layout{  }
    \midi { }

}
