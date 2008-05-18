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
        piece = "Variatio 20. a 2 Clav."
        mutopiatitle = "Goldberg Variations - 20"
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
	
 footer = "Mutopia-2008/05/18-1416"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


soprano =   \relative b' {
    \repeat volta 2 { %begin repeated section
        r16 b16 r16 g16 r16 d16 r16 b16 r16 \clef "bass" g16 fis e | % 1
        fis8 [ a \clef "treble" d fis a d ]  | % 2
        r16 g,16 r16 e16 r16 cis16 r16 a16 r16 \clef "bass" g16 fis e | % 3
        d8 [ fis a \clef "treble" d fis a ]  | % 4
        r16 fis16 r16 d16 r16 b16 r16 g16 r16 \clef "bass" f16 e d | % 5
        c8 [ e g c e g ]  | % 6
        r16 fis16 r16 d16 r16 a16 r16 fis16 r16  d16 [ c d ]  | % 7
        g,8 [ b d g fis c' ] \clef "treble" | % 8
        \times 2/3  { b16 [ a b ] }
        \times 2/3  { cis16 [ b cis ] } 
        \times 2/3  { d16 [ cis d ] }
        \times 2/3  { e16 [ d e ] }
        \times 2/3  { fis16 [ e fis ] }
        \times 2/3  { g16 [ fis g ] }| % 9
		\times 2/3  { a16 [ g a ] }
        \times 2/3  { b16 [ a b ] }
        \times 2/3  { cis16 [ b cis ] } 
        \times 2/3  { d16 [ cis d ] }
        \times 2/3  { e16 [ d e ] }
        \times 2/3  { fis16 [ e fis ] } | % 10
        g8 r8 \clef "bass" e,,4 \prallmordent r8 \clef "treble" b''8 | % 11
		g'8 r8 \clef "bass" cis,,,4 \prallmordent r8 \clef "treble" g'''8 | % 12
        \times 2/3  { fis16 [ a d, ] }
        \times 2/3  { e16 [ g cis, ] }
        \times 2/3  { d16 [ fis b, ] }
        \times 2/3  { c16 [ e a, ] }
        \times 2/3  { b16 [ d g, ] }
        \times 2/3  { a16 [ c fis, ] } | % 13
        g8 [ \clef "bass" g, fis a fis d'] \clef "treble" | % 14
        \times 2/3  { cis16 [ a b ] }
        \times 2/3  { cis16 [ d e ] }
        fis8 ~ \times 2/3 { fis16 [ e d] } 
        b'8 [ cis \turn ] | % 15
        \times 2/3  { d16 [a fis ] } \clef "bass"
        \times 2/3 { d16 [ a fis ] }
        d8 r8 r4 \clef "treble"  | % 16
    } %end of repeated section
	
     \repeat volta 2 { %begin repeated section
        r16  a'''16 r16 fis16  r16 d16 r16 a16 r16 fis16 r16 d16 \clef "bass" | % 17
        r16  b16 r16 g16 r16 d16 r16 b16 r16  g16 [ a b ] | % 18
        c8 [ g' c e a,  \clef"treble" c ] | % 19 
        \times 2/3  { c'16 [ b ais ] }
        \times 2/3  { b16 [ cis dis ] }
        \times 2/3  { e16 [ dis cis ] }
        \times 2/3  { dis16 [ e fis ] }
        \times 2/3  { g16 [ fis e ] }
        \times 2/3  { fis16 [ g a ] } | % 20
        \times 2/3  { b16 [ a g ] }
        \times 2/3  { a16 [ b c ] }
        dis,8 [ c'  b  d, ~ ] | % 21
        \times 2/3  { d16 [ cis dis ] }
        \times 2/3  { e16 [ fis g ] }
        ais,8 [ g'  fis  a, ] | % 22
        g8 [ dis \clef "bass" e8  c  dis,  \clef "treble" dis'' ] | % 23
        e8 [ e, ] 
		\times 2/3 { r16  g16 [ b ] }
        \times 2/3 { e16 [ g dis ] }
        \times 2/3 { e16 [ b g ] }
        \times 2/3 { r16 gis16 [ f' ] } | % 24
        \times 2/3 { e16 [ c a ] }
        \times 2/3 { r16 d,16 [ b' ]}
		\times 2/3 { r16 c,16 [ a' ]}
		\times 2/3 { r16 b,16 [ g' ]}
		\times 2/3 { r16 c,16 [ a' ]}
		\times 2/3 { r16 fis16 [ es' ]} | % 25
        \times 2/3 { d16 [ b g ] }
        \times 2/3 { r16 c,16 [ a' ]}
		\times 2/3 { r16 b,16 [ g' ]}
		\times 2/3 { r16 a,16 [ fis' ]}
		\times 2/3 { r16 b,16 [ g' ]}
		\times 2/3 { r16 e16 [ d' ]} | % 26
        \times 2/3 { c16 [ a e } c8-. ] c8-. [c-. c-. c'-.] | % 27 
        \times 2/3 { c16 [ a fis } c8-. ] c8-. [c-. c-. c'-.] | % 28 
        \times 2/3 { b16 [ g d'] }
        \times 2/3 { c16 [ a e' ] }
        d8 [ b, g  f''] | % 29
        \times 2/3 { e16 [ g c,] }
        \times 2/3 { d16 [ f b, ] }
        \times 2/3 { c16 [ e a, ] }
        \times 2/3 { b16 [ d g, ] }
        \times 2/3 { a16 [ c fis, ] }
        \times 2/3 { g16 [ b e, ] } | % 30
        \times 2/3 { fis16 [ d e ] }
        \times 2/3 { fis16 [ g a ] }
        b,8 ~ \times 2/3 { b16 [ a g ] }
        e'8 [ fis \turn] | % 31
        \times 2/3 { g16 [ d b ] }
		\clef "bass" 
        \times 2/3 { g16 [  d b ] }
        g8 r8 r4 \clef "treble"

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
		\times 2/3  { b'16 [ c b ] }
        \times 2/3  { a16 [ b a ] }
        \times 2/3  { g16 [ a g ] }
        \times 2/3  { fis16 [ g fis] }
        \times 2/3  { e16 [ fis e ] }
        \times 2/3  { d16 [ e d ] } \clef "bass" | % 11
		\times 2/3  { cis16 [ d cis ] }
        \times 2/3  { b16 [ cis b ] }
        \times 2/3  { a16 [ b a ] }
        \times 2/3  { g16 [ a g ] }
        \times 2/3  { fis16 [ g fis ] }
        \times 2/3  { e16 [ fis e ] } % 12
        d8 [ a' fis' a, d, c' ] \clef "treble" | % 13
		\times 2/3  { b16 [ g d' ] }
        \times 2/3  { cis16 [ a e' ] }
        \times 2/3  { d16 [ b fis' ] }
        \times 2/3  { e16 [ cis g' ] }
        \times 2/3  { fis16 [ d a' ] }
        \times 2/3  { g16 [ e b' ] } | % 14
		a8 ~ \times 2/3  {a16 [ b cis ] }  
		\times 2/3  { d16  [ cis b  } a8 ] ~  
		\times 2/3  {a16 [g fis ] } 
		\times 2/3  {e16  [fis g ] } | % 15
		fis8 r8 
		\times 2/3  {r16 fis16 [a] } 
		\times 2/3  {d16 [fis a] } 
		d8 r8 \clef "bass" | % 16
    } %end of repeated section

	\repeat volta 2 { %begin repeated section
        d,,,8 [ d, fis a d fis ] | % 17
		g8 [ \clef "treble" b d g ] b4 \prallmordent ~ | % 18
		\times 2/3  { b16 [ e, dis ] }
        \times 2/3  { e16 [ fis g ] }
        \times 2/3  { a16 [ g fis ] }
        \times 2/3  { g16 [ a b ] }
        \times 2/3  { c16 [ b a ] }
        \times 2/3  { g16 [ fis e ] } | % 19
		dis8 ~ [ \times 2/3  { dis16  e fis  ] }
        \times 2/3  { g16 [ fis e ] }
        \times 2/3  { fis16 [ g a ] }
        \clef "bass" b,8 [ a ] | % 20
        \times 2/3  { g16 [ fis e ] }
        \times 2/3  { e16 [ dis e ] }
        \times 2/3  { f16 [ e f ] }
        \times 2/3  { fis16 [ e fis ] }
        \times 2/3  { g16 [ fis g ] }
        \times 2/3  {gis16 [ fis gis ] } | % 21
        a8 ~ [ \times 2/3  { a16  ais b ] }
        \times 2/3  { c16 [ b c ] }
        \times 2/3  { cis16 [ b cis ] }
        \times 2/3  { d16 [ cis d ] }
        \times 2/3  { dis16 [ cis dis ] }
        \clef "treble" | % 22
		\times 2/3  { e16 [ dis e ] }
        \times 2/3  { fis16 [ e fis ] }
        \times 2/3  { g16 [ fis g ] }
        \times 2/3  { a16 [ g a ] }
        \times 2/3  { b16 [ a b ] }
        \times 2/3  {c16 [ b a ] } | % 23
        \times 2/3  { g16 [ fis g ] }
        \times 2/3  { a16 [ g fis ] } 
        e4. \clef "bass" d,8 | % 24
        c8 [ e'-. e-. e-. e-. c, ] | % 25
        b8 [ d'-. d-. d-. d-. b, ] | % 26
		a8
        \times 2/3 { r16 b'16 [ g' ]}
		\times 2/3 { r16 a,16 [ fis' ]}
		\times 2/3 { r16 g,16 [ e' ]}
		\times 2/3 { r16 fis,16 [ d' ]}
		\times 2/3 { r16 g,16 [ e' ]} | % 27
		d,8
        \times 2/3 { r16 \clef "treble" a'16 [ fis' ]}
		\times 2/3 { r16 b,16 [ g' ]}
		\times 2/3 { r16 c,16 [ a' ]}
		\times 2/3 { r16 b,16 [ g' ]}
		\times 2/3 { r16 a,16 [ fis' ]} | % 28
		g,8 [g' ~ ] 
        \times 2/3 { g16 [ b e, ]}
		\times 2/3 { f16 [ a d, ]}
		\times 2/3 { e16 [ g c, ]}
		\times 2/3 { d16 [ fis b, ]} | % 29
        \times 2/3 { a16 [ g e' ]}
		\times 2/3 { d16 [ b f' ]}
		e8 g' c e,  | % 30
		d8 ~  \times 2/3 { d16 [ e fis] }
		\times 2/3 { g16 [fis e } d8 ~ ]
		\times 2/3 { d16 [ c b ]} 
		\times 2/3 { a16 [b c ]} | % 31
		b8 r8 
        \times 2/3 { r16 b,16 [ d ]}
		\times 2/3 { g16 [ b d ] }
		g8 r8 \clef "bass" | % 32

  
    } %end repeated section

}


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { }

}
