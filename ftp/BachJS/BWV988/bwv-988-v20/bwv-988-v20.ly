\version "2.18.2"

\paper {
    top-margin = 8\mm
    indent = 6\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #5
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

%#(set-default-paper-size "letter")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "    Variatio 20. a 2 Clav."
        mutopiatitle = "Goldberg Variations - 20"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Harpsichord,Clavichord"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        license = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2014/05/24-1416"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}
%-----------------------definitions
hideTuplet = \override TupletNumber.stencil = ##f
showTuplet = \revert TupletNumber.stencil
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f
adjTieDown = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieUp = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
adjBeamOne = \once \override Beam.positions = #'( 1.3 . -3.8 )
adjBeamTwo = \once \override Beam.positions = #'( 1.3 . 1.3 )
adjBeamTre = \once \override Beam.positions = #'( -1.3 . -1.3 )
adjBeamQtr = \once \override Beam.positions = #'( 0.3 . 0.3 )

global = { \key g \major \time 3/4 }

soprano =   \relative b' {
    \repeat volta 2 { %begin repeated section
        \stemUp r16 b16 r16 g16 r16 d16 r16 b16 r16 \clef "bass" \stemDown g16 fis e \noBreak | % 1
        fis8 [ a \clef "treble" d fis a d ] \noBreak  | % 2
        \stemNeutral r16 g,16 r16 e16 r16 cis16 r16 a16 r16 \clef "bass" g16 fis e | % 3
        d8 [ fis a \clef "treble" d fis a ]  | % 4
        r16 fis16 r16 d16 r16 b16 r16 g16 r16 \clef "bass" f16 e d | % 5
        c8 [ e g c e g ]  | % 6
        r16 fis16 r16 d16 r16 a16 r16 fis16 r16  d16 [ c d ]  | % 7
        g,8 [ b d g fis c' ] \clef "treble" | % 8
        \tuplet 3/2  { b16 [ a b ] }
        \tuplet 3/2  { cis16 [ b cis ] } \hideTuplet
        \tuplet 3/2  { d16 [ cis d ] }
        \tuplet 3/2  { e16 [ d e ] }
        \tuplet 3/2  { fis16 [ e fis ] }
        \tuplet 3/2  { g16 [ fis g ] }| % 9
        \showTuplet \tuplet 3/2  { a16 [ g a ] }
        \hideTuplet \tuplet 3/2  { b16 [ a b ] }
        \tuplet 3/2  { cis16 [ b cis ] } 
        \tuplet 3/2  { d16 [ cis d ] }
        \tuplet 3/2  { e16 [ d e ] }
        \tuplet 3/2  { fis16 [ e fis ] } | % 10
        g8 r8 \clef "bass" e,,4 \prallmordent r8 \clef "treble" b''8 | % 11
		g'8 r8 \clef "bass" cis,,,4 \prallmordent r8 \clef "treble" g'''8 | % 12
        \showTuplet \tuplet 3/2  { fis16 [ a d, ] }
        \hideTuplet \tuplet 3/2  { e16 [ g cis, ] }
        \tuplet 3/2  { d16 [ fis b, ] }
        \tuplet 3/2  { c16 [ e a, ] }
        \tuplet 3/2  { b16 [ d g, ] }
        \tuplet 3/2  { a16_[ c fis, ] } | % 13
        g8 [ \clef "bass" g, fis a fis d'] \clef "treble" | % 14
        \tuplet 3/2  { cis16 [ a b ] }
        \tuplet 3/2  { cis16 [ d e ] }
        \adjTieDown fis8 ~ \tuplet 3/2 { fis16 [ e d] } 
        b'8 [ cis \turn ] | % 15
        \tuplet 3/2  { d16_[ a fis ] } \clef "bass"
        \tuplet 3/2 { d16 [ a fis ] }
        d8 r8 r4 \clef "treble"  | % 16
    } %end of repeated section
	
     \repeat volta 2 { %begin repeated section
        r16  a'''16 r16 fis16  r16 d16 r16 a16 r16 fis16 r16 d16 \clef "bass" | % 17
        r16  b16 r16 g16 r16 d16 r16 b16 r16  g16 [ a b ] | % 18
        c8 [ g' c e a,  \clef "treble" \adjTieUp c'~ ] | % 19 
        \showTuplet \tuplet 3/2  { c16 [ b ais ] }
        \hideTuplet \tuplet 3/2  { b16 [ cis dis ] }
        \tuplet 3/2  { e16 [ dis cis ] }
        \tuplet 3/2  { dis16 [ e fis ] }
        \tuplet 3/2  { g16 [ fis e ] }
        \tuplet 3/2  { fis16 [ g a ] } | % 20
        \showTuplet \tuplet 3/2  { b16 [ a g ] }
        \hideTuplet \tuplet 3/2  { a16 [ b c ] }
        dis,8 [ c'  b \adjTieUp d, ~ ] | % 21
        \tuplet 3/2  { d16 [ cis dis ] }
        \tuplet 3/2  { e16 [ fis g ] }
        ais,8 [ g'  fis  a, ] | % 22
        \stemUp \adjBeamOne g8 [ dis \stemDown \clef "bass" e8  c  dis,  \clef "treble" dis'' ] \stemNeutral | % 23
        e8 [ e, ] 
		\hideTupletBracket \showTuplet \tuplet 3/2 { r16  g16 [ b ] }
        \hideTuplet \tuplet 3/2 { e16 [ g dis ] }
        \tuplet 3/2 { e16 [ b g ] }
        \tuplet 3/2 { r16 gis16 [ f' ] } | % 24
        \tuplet 3/2 { e16 [ c a ] }
        \tuplet 3/2 { r16 d,16 [ b' ]}
		\tuplet 3/2 { r16 c,16 [ a' ]}
		\tuplet 3/2 { r16 b,16 [ g' ]}
		\tuplet 3/2 { r16 c,16 [ a' ]}
		\tuplet 3/2 { r16 fis16^[ es' ]} | % 25
        \tuplet 3/2 { d16^[ b g ] }
        \tuplet 3/2 { r16 c,16 [ a' ]}
		\tuplet 3/2 { r16 b,16 [ g' ]}
		\tuplet 3/2 { r16 a,16 [ fis' ]}
		\tuplet 3/2 { r16 b,16 [ g' ]}
		\tuplet 3/2 { r16 e16 [ d' ]} | % 26
        \tuplet 3/2 { c16 [ a e } c8-. ] c8-. [c-. c-. c'] | % 27 
        \tuplet 3/2 { c16 [ a fis } c8-. ] c8-. [c-. c-. c'-.] | % 28 
        \tuplet 3/2 { b16 [ g d'] }
        \tuplet 3/2 { c16 [ a e' ] }
        \stemDown \adjBeamTre d8 [ \stemUp b, g \stemDown  f''] | % 29
        \stemNeutral \tuplet 3/2 { e16 [ g c,] }
        \tuplet 3/2 { d16 [ f b, ] }
        \tuplet 3/2 { c16 [ e a, ] }
        \tuplet 3/2 { b16^[ d g, ] }
        \tuplet 3/2 { a16 [ c fis,! ] }
        \tuplet 3/2 { g16 [ b e, ] } | % 30
        \tuplet 3/2 { fis16 [ d e ] }
        \tuplet 3/2 { fis16 [ g a ] }
        b,8 ~ \tuplet 3/2 { b16 [ a g ] }
        e'8 [ fis \turn] | % 31
        \tuplet 3/2 { g16 [ d b ] }
		\clef "bass" 
        \tuplet 3/2 { g16 [  d b ] }
        g8 r8 r4 

    } %end repeated section
}

%%
%% Bass Clef
%% 

bass = \relative g {
	\repeat volta 2 { %begin repeated section
        \clef "treble" g8 [ b d g b cis ] | % 1
        r16 d16 r16 a16 r16 fis16 r16 d16 r16 \clef "bass" a16 [ g fis ] | % 2
        e8 [ g a cis e g ]  | % 3
        r16 fis16 r16 d16 r16 a16 r16 fis16 r16 e [ d c]  | % 4
        b8 [ d  g  b  d  f ] | % 5
        r16 e16 r16 c16 r16 g16 r16 e16 r16 c16 [ b a] | % 6
        d8 fis a \clef "treble" d  fis a ] | % 7
        r16 b16 r16 g16 r16 d16 r16 b16 r16 a16 [ g fis]  | % 8
        g8 r8 b''4 \prallmordent r8  e,,8 | % 9
        fis,8 r8 a''4 r8 d,,8 | % 10
		\tuplet 3/2  { b'16 [ c b ] }
        \hideTuplet \tuplet 3/2  { a16 [ b a ] }
        \tuplet 3/2  { g16 [ a g ] }
        \tuplet 3/2  { fis16 [ g fis] }
        \tuplet 3/2  { e16 [ fis e ] }
        \tuplet 3/2  { d16 [ e d ] } \clef "bass" | % 11
	\showTuplet \tuplet 3/2  { cis16 [ d cis ] }
        \hideTuplet \tuplet 3/2  { b16 [ cis b ] }
        \tuplet 3/2  { a16 [ b a ] }
        \tuplet 3/2  { g16 [ a g ] }
        \tuplet 3/2  { fis16 [ g fis ] }
        \tuplet 3/2  { e16 [ fis e ] } % 12
        d8 [ a' fis' a, d, c' ] \clef "treble" | % 13
		\tuplet 3/2  { b16 [ g d' ] }
        \tuplet 3/2  { cis16 [ a e' ] }
        \tuplet 3/2  { d16 [ b fis' ] }
        \tuplet 3/2  { e16 [ cis! g' ] }
        \tuplet 3/2  { fis16 [ d a' ] }
        \tuplet 3/2  { g16 [ e b' ] } | % 14
		a8 ~ \tuplet 3/2  {a16 [ b cis ] }  
		\hideTupletBracket \tuplet 3/2  { d16  [ cis b  } \adjTieDown a8 ] ~  
		\tuplet 3/2  {a16 [g fis ] } 
		\tuplet 3/2  {e16  [fis g ] } | % 15
		fis8 r8 
		\tuplet 3/2  {r16 fis16 [a] } 
		\tuplet 3/2  {d16 [fis a] } 
		d8 r8 \clef "bass" | % 16
    } %end of repeated section

	\repeat volta 2 { %begin repeated section
        d,,,8 [ d, fis a d fis ] | % 17
		g8 [ \clef "treble" b d g ] \adjTieUp b4 \prallmordent ~ | % 18
		\showTuplet \tuplet 3/2  { b16 [ e, dis ] }
        \hideTuplet \tuplet 3/2  { e16 [ fis g ] }
        \tuplet 3/2  { a16 [ g fis ] }
        \tuplet 3/2  { g16 [ a b ] }
        \tuplet 3/2  { c16^[ b a ] }
        \tuplet 3/2  { g16 [ fis e ] } | % 19
		dis8 ~ [ \showTuplet \tuplet 3/2  { dis16  e fis  ] }
        \hideTuplet \tuplet 3/2  { g16 [ fis e ] }
        \tuplet 3/2  { fis16 [ g a ] }
        \clef "bass" b,8 [ a ] | % 20
        \showTuplet \tuplet 3/2  { g16 [ fis e ~ ] }
        \hideTuplet \tuplet 3/2  { e16 [ dis e ] }
        \tuplet 3/2  { f16 [ e f ] }
        \tuplet 3/2  { fis16 [ e fis ] }
        \tuplet 3/2  { g16 [ fis g ] }
        \tuplet 3/2  {gis16 [ fis gis ] } | % 21
        a8 ~ \tuplet 3/2  { a16 [  ais b ] }
        \tuplet 3/2  { c16 [ b c ] }
        \tuplet 3/2  { cis16 [ b cis ] }
        \tuplet 3/2  { d16 [ cis d ] }
        \tuplet 3/2  { dis16 [ cis dis ] }
        \clef "treble" | % 22
		\tuplet 3/2  { e16 [ dis e ] }
        \tuplet 3/2  { fis16 [ e fis ] }
        \tuplet 3/2  { g16 [ fis g ] }
        \tuplet 3/2  { a16 [ g a ] }
        \tuplet 3/2  { b16 [ a b ] }
        \tuplet 3/2  {c16^[ b a ] } | % 23
        \tuplet 3/2  { g16 [ fis g ] }
        \tuplet 3/2  { a16 [ g fis ] } 
        e4. \clef "bass" d,8 | % 24
        \adjBeamTwo \stemUp c8 [ \stemDown e'-. e-. e-. e-. \stemUp c, ] | % 25
        \adjBeamTwo b8 [ \stemDown d'-. d-. d-. d-. \stemUp b, ] | % 26
	\stemNeutral	a8
        \tuplet 3/2 { r16 b'16 [ g' ]}
		\tuplet 3/2 { r16 a,16 [ fis' ]}
		\tuplet 3/2 { r16 g,16 [ e' ]}
		\tuplet 3/2 { r16 fis,16 [ d' ]}
		\tuplet 3/2 { r16 g,16 [ e' ]} | % 27
		d,8
        \tuplet 3/2 { r16 \clef "treble" a'16 [ fis' ]}
		\tuplet 3/2 { r16 b,16 [ g' ]}
		\tuplet 3/2 { r16 c,16 [ a' ]}
		\tuplet 3/2 { r16 b,16 [ g' ]}
		\tuplet 3/2 { r16 a,16 [ fis' ]} | % 28
		g,8  [ \adjTieDown  g' ~ ] 
        \tuplet 3/2 { g16 [ b e, ]}
		\tuplet 3/2 { f16 [ a d, ]}
		\tuplet 3/2 { e16 [ g c, ]}
		\tuplet 3/2 { d16 [ f b, ]} | % 29
        \tuplet 3/2 { c16 [ g e' ]}
		\tuplet 3/2 { d16 [ b f' ]}
		\stemUp \adjBeamQtr e8 \stemDown g' c e, \stemNeutral | % 30
		\adjTieUp d8 ~  \tuplet 3/2 { d16 [ e fis] }
		\tuplet 3/2 { g16 [fis e } \adjTieUp d8 ~ ]
		\tuplet 3/2 { d16 [ c b ]} 
		\tuplet 3/2 { a16 [b c ]} | % 31
		b8 r8 
        \tuplet 3/2 { r16 b,16 [ d ]}
		\tuplet 3/2 { g16^[ b d ] }
		g8 r8  | % 32

  
    } %end repeated section

}


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble  \global \soprano }
        \new Staff = "lower" { \clef bass \global \bass }
    >>
    \layout{  }
    \midi { }

}
