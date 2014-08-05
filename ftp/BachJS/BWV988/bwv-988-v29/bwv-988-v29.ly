\version "2.18.2"

\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #6
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
 title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
 subtitle = "\"Goldberg Variationen\""
 piece = "Variatio 29. a 1 ovvero 2 Clav."
 mutopiatitle = "Goldberg Variations - 29"
 composer = "Johann Sebastian Bach (1685-1750)"
 mutopiacomposer = "BachJS"
 opus = "BWV 988"
 date = "1741"
 mutopiainstrument = "Harpsichord,Clavichord"
 style = "Baroque"
 source = "Bach-Gesellschaft Edition 1853 Band 3"
 license = "Creative Commons Attribution-ShareAlike 3.0"
 comment = "Notenverteilung wurde fuer die 2-Systeme optimiert"
 maintainer = "Hajo Dezelski"
 maintainerEmail = "dl1sdz (at) gmail.com"

 footer = "Mutopia-2014/08/05-1421"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%%-------- definitions
hideTupletNum = \temporary \override TupletNumber.transparent = ##t
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f



sopranoOne = \relative a'' {
	\repeat volta 2 { %begin repeated section
		\stemUp
 		r8 r16 g,16 r16 g16 r16 g16 r16 g16 r16 g16 | % 1
		r8 r16 d'16 r16 d16 r16 d16 r16 d16 r16 d16 | % 2
		r8 r16 g16 r16 g16 r16 g16 r16 g16 r16 g16 | % 3
		fis16 s16 s8 s2 | % 4
		g8 s16 g16 r16 g16 r16 g16 r16 g16 r16 f16 | % 5
		s8 s16 e16 r16 e16 r16 e16 r16 e16 r16 e16 | % 6
		s8 s16 d16 r16 d16 r16 d16 r16 d16 r16 c16 | % 7
		b16 b16\rest b8\rest \stemNeutral \hideTupletBracket
		\tuplet 3/2 { b16\rest a16 [ b ] } \hideTupletNum
		\tuplet 3/2 { c16^[ b a ] }
		\tuplet 3/2 { b16 [ a g ] }
		\tuplet 3/2 { e'16 [ d c ] } \undo \hideTupletNum | % 8
		\tuplet 3/2 { d16 b16\rest g16 } \hideTupletNum
		\tuplet 3/2 { fis16 [ c16 ] b'16\rest } \undo \hideTupletNum
		\tuplet 3/2 { b16\rest b16\rest g16 } \hideTupletNum
		\tuplet 3/2 { a16 [ fis16 ] b16\rest }
		\tuplet 3/2 { b16\rest b16\rest b16 }
		\tuplet 3/2 { cis16  [a16 ] b16\rest } | % 9
		\tuplet 3/2 { b16\rest b16\rest d16 }
		\tuplet 3/2 { cis16 [ g16 ] b16\rest }
		\tuplet 3/2 { b16\rest b16\rest d16 }
		\tuplet 3/2 { e16 [ cis!16 ] b16\rest }
		\tuplet 3/2 { b16\rest b16\rest fis'16 }
		\tuplet 3/2 { d16 [ b16 ] b16\rest } | % 10
		\oneVoice
		\tuplet 3/2 { r16 r16 c!16 }
		\tuplet 3/2 { b16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { g16 [ e16 ] r16 }
		\tuplet 3/2 { r16 r16 fis16 }
		\tuplet 3/2 { e16 [ cis16 ] r16 } | % 11
		\tuplet 3/2 { r16 r16 fis16 }
		\tuplet 3/2 { e16 [ cis16 ] r16 }
		\clef "bass" 
		\tuplet 3/2 { r16 r16 d16 }
		\tuplet 3/2 { cis16 [ a16 ] r16 }
		\tuplet 3/2 { r16 r16 b16 }
		\tuplet 3/2 { a16 [ fis16 ] r16 } | % 12
		\tuplet 3/2 { r16 r16 b16 }
		\tuplet 3/2 { a16 [ fis16 ] r16 }
		\tuplet 3/2 { r16 r16 g16 }
		\tuplet 3/2 { fis16 [ d16 ] r16 }
		\tuplet 3/2 { r16 r16 e16 }
		\tuplet 3/2 { d16 [ b16 ] r16 } | % 13
		\tuplet 3/2 { r16 r16 e16 }
		\tuplet 3/2 { d16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 c16 }
		\tuplet 3/2 { b16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { fis16 [ e16 ] r16 } | % 14
		\tuplet 3/2 { r16 g'16 [ a16 ] }
		\tuplet 3/2 { e'16 [ a,16 g16 ] }
		\tuplet 3/2 { r16 fis16 [ a16 ] }
		\tuplet 3/2 { d16 [ a16 fis16 ] }
		\tuplet 3/2 { r16 e16 [ g16 ] }
		\tuplet 3/2 { cis16 [ g16 e16 ] } | % 15
		\voiceOne
		r8 r16 d'16 r16 d16 r16 d16 r4 | % 16
		\clef "treble" 
	} %end of repeated section
 
  	\repeat volta 2 { %begin repeated section
  	    \oneVoice
		\tuplet 3/2 { r16 r16 b''16  }
		\tuplet 3/2 { a16 [ fis16 ] r16 }
		\tuplet 3/2 { r16 r16 g16  }
		\tuplet 3/2 { fis16 [ d16 ] r16 }
		\tuplet 3/2 { r16 r16 e16  }
		\tuplet 3/2 { d16 [ b16 ] r16 } | % 17
		\tuplet 3/2 { r16 r16 e16 }
		\tuplet 3/2 { d16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 c16 }
		\tuplet 3/2 { b16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { g16 [ e16 ] r16 } | % 18
		\tuplet 3/2 { r16 r16 f16 }
		\tuplet 3/2 { e16 [ c16 ] r16 }
		\tuplet 3/2 { r16 r16 \clef "bass" d16 }
		\tuplet 3/2 { c16 [ a16 ] r16 }
		\tuplet 3/2 { r16 r16 b16  }
		\tuplet 3/2 { a16 [ fis16 ] r16 } | % 19
		\tuplet 3/2 { r16 r16 g16 }
		\tuplet 3/2 { fis16 [ dis16 ] r16 }
		\tuplet 3/2 { r16 r16 e16  }
		\tuplet 3/2 { dis16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 c!16 }
		\tuplet 3/2 { b16 [ g16 ] r16 } \clef "treble" | % 20
		\voiceOne
		r8 r16 e'''16 r16 e16 r16 e16 r16 e16 r16 e16 | % 21
		r8 r16 e16 r16 e16 r16 e16 r16 e16 r16 e16 | % 22
		\oneVoice \undo \hideTupletNum \tupletUp
		\tuplet 3/2 { r16 fis16 [ g16 ] } \hideTupletNum
		\tuplet 3/2 { a16 [b16 c16 ~ ] }
		\tuplet 3/2 { c16 [ b16 a16] }
		\tuplet 3/2 { g16 [ fis16 e16 ] }
		\tuplet 3/2 { dis16 [ c16 b16 ] }
		\tuplet 3/2 { a16 [g16 fis16 ] } | % 23
		\voiceOne
		e16 [ e'16 ] r16 e16 r16 c16 r16 c16 r16 g16 r16 g16 \clef "bass" | % 24
		\oneVoice \undo \hideTupletNum \tupletUp
		\tuplet 3/2 { r16 e,16 [ f16 ] }
		\tuplet 3/2 { fis16 [ g16 gis16 ] } \hideTupletNum
		\tuplet 3/2 { r16 b16 [ c16 ] }
		\tuplet 3/2 { d16 c16 b16 ] } \clef "treble"
		\tuplet 3/2 { c16 [ d16 e16 ]  }
		\tuplet 3/2 { fis16[  g16 a16 ] } \clef "bass" | % 25		
		\tuplet 3/2 { r16 d,,16 [ es16 ] }
		\tuplet 3/2 { e16 [ f16 fis16 ] }
		\tuplet 3/2 { r16 a16 [ b16 ] }
		\tuplet 3/2 { c16 [ b16 a16 ] }
		\clef "treble" 
		\tuplet 3/2 { b16 [ c16 d16 ] }
		\tuplet 3/2 { e16 [ fis16 g16 ] } | % 26
		\tuplet 3/2 { c,16 r16 f16 }
		\tuplet 3/2 { e16 [c16 ] r16 }
		\tuplet 3/2 { r16 r16 \clef "bass" d16  }
		\tuplet 3/2 { c16 [ a16 ] r16 }
		\tuplet 3/2 { r16 r16 b16 }
		\tuplet 3/2 { a16 [ fis!16 ] r16 } \clef "treble" | % 27
		\tuplet 3/2 { r16 r16 b'16 }
		\tuplet 3/2 { a16 [ fis16 ] r16 }
		\tuplet 3/2 { r16 r16 g16 }
		\tuplet 3/2 { fis16 [ d16 ] r16 }
		\tuplet 3/2 { r16 r16 e16 }
		\tuplet 3/2 { d16 [ b16 ] r16 } | % 28
		\tuplet 3/2 { r16 r16 e'16 }
		\tuplet 3/2 { d16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 c16 }
		\tuplet 3/2 { b16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { g16 [ e16 ] r16 } | % 29
		\tuplet 3/2 { r16 r16 a'16 }
		\tuplet 3/2 { g16 [ e16 ] r16 }
		\tuplet 3/2 { r16 r16 f16 }
		\tuplet 3/2 { e16 [ c16 ] r16 }
		\tuplet 3/2 { r16 r16 d16 }
		\tuplet 3/2 { c16 [ a16 ] r16 } | % 30
		\tuplet 3/2 { r16 a16 [ b16 ] }
		\tuplet 3/2 { c16 [ d16 e16 ~] }
		\tuplet 3/2 { e16 [ d16 c16 ] }
		\tuplet 3/2 { b16 [ a16 g16 ~] }
		\tuplet 3/2 { g16 [ fis16 g16 ] }
		\tuplet 3/2 { a16 [ b16 c16 ] }| % 31
		\grace c8 b \voiceOne r16 g'16 r16 g16 r16 g16 r4 

 } %end repeated section
}

sopranoTwo = \relative c'' {
  \hideTupletBracket
	\repeat volta 2 { %begin repeated section
		\stemDown
		r8 r16 <b, d>16 r16 <b d>16 r16 <b d>16 r16 <b d>16 r16 <b d>16 | % 1
		r8 r16 <fis' a>16 r16 <fis a>16 r16 <fis a>16 r16 <fis a>16 r16 <fis a>16 | % 2 
		r8 r16 <b e>16 r16 <b e>16 r16 <b e>16 r16 <b e>16 r16 <cis e>16 | % 3
		<a d>16 b16\rest b8\rest \tupletUp 
		\tuplet 3/2 { b16\rest c'16 [ b ] }
		\tuplet 3/2 { c, [ b' a ]} 
		\tuplet 3/2 { b, [ a' g] }
		\tuplet 3/2 { a, [ g' fis ] } | % 4
		<b, d>8 b16\rest <b d>16 r16 <b d>16 r16 <b d>16 r16 <b d>16 r16 <b d>16 | % 5
		b8\rest b16\rest <g c>16 r16 <g c>16 r16 <g c>16 r16 <g c>16 r16 <g c>16 | % 6
		b8\rest b16\rest <fis a>16 r16 <fis a>16 r16 <fis a>16 r16 <fis a>16 r16 <fis a>16 | % 7
		<d g>16 s16 s8 s2 | % 8 
		s1*3/4 | % 9
		s1*3/4 | % 10
		s1*3/4 | % 11
		s1*3/4 \clef "bass" | % 12 fehler
		s1*3/4 | % 13
		s1*3/4 | % 14
		s1*3/4 | % 15
		r8 r16 <fis, a>16 r16 <fis a>16 r16 <fis a>16 r4 \clef "treble" | % 16

 } %end of repeated section
 \repeat volta 2 { %begin repeated section
	 	s1*3/4 | % 17
		s1*3/4 | % 18
		s1*3/4 | % 19
		s1*3/4 \clef "treble"  | % 20
		r8 r16 <g' b>16 r16 <g b>16 r16 <g b>16 r16 <g b>16 r16 <g b>16 | % 21
		r8 s16 <g b>16 r16 <g b>16 r16 <g b>16 r16 <g b>16 r16 <g b>16 | % 22
		s1*3/4 | % 23
		s16 <g b>16 r16 <g b>16 r16 <e g>16 r16 <e g>16 r16 <b e>16 r16 <b e>16 | % 24 
	 	s1*3/4 | % 25
		s1*3/4 | % 26
		s1*3/4 \clef "treble" | % 27
		s1*3/4 | % 28
		s1*3/4 | % 29
		s1*3/4 | % 30
	 	s1*3/4 | % 31		
		s8 r16 <b' d>16 r16 <b d>16 r16 <b d>16 r4 | % 32

 
 } %end repeated section
}

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bassOne = \relative g {
	\repeat volta 2 { %begin repeated section
		\stemUp \hideTupletBracket
		g8 [ g,8 ] \clef "treble" fis''16 r16 fis16 r16 fis16 r16 fis16 r16 \clef "bass" | % 1
		fis,8 [ fis,8 ] \clef "treble" cis'''16 r16 cis16 r16 cis16 r16 cis16 r16 \clef "bass" | % 2
		e,,8 [ e,8 ] \clef "treble" fis'''16 r16 e16 r16 fis16 r16 e16 r16 \clef "bass" | % 3
		\stemDown 
		d,,16\rest d'16 [ a16 fis16 ] d16. [ d'32 e,16. c'32 ] d,16. [ b'32 c,16. a'32 ] 
		\stemUp | % 4
		b,8_[b'8] \clef "treble" fis''16  r16 fis16  r16 fis16 r16 d16 r16 \clef "bass" | % 5
		c,,8_[c'8] \clef "treble" d'16 r16 d16 r16 d16 r16 c16 r16 \clef "bass" | % 6
		d,,8_[ d'8 ] \clef "treble" cis'16 r16 cis16 r16 cis16 r16 a16 r16 \clef "bass" | % 7
		\stemDown 
		d,,16\rest g16 [ d16 b16 ] g16. [ g'32 fis16. d'32 ] g,16. [ e'32 a,16. fis'32 ] 
		\stemNeutral | % 8
		\tuplet 3/2 { b,16 [ d16 ] d,16\rest } \hideTupletNum
		\tuplet 3/2 { d16\rest d16\rest a'16 } \undo \hideTupletNum
		\tuplet 3/2 { b16 [ d16 ] d,16\rest } \hideTupletNum
		\tuplet 3/2 { d16\rest d16\rest  \clef "treble" c'16 }
		\tuplet 3/2 { d16 [ g16 ] b16\rest }
		\tuplet 3/2 { b16\rest b16\rest e,16 } | % 9
		\tuplet 3/2 { fis16 [ a ] b16\rest }
		\tuplet 3/2 { b16\rest b16\rest e,16 }
		\tuplet 3/2 { fis16 [ a16 ] b16\rest }
		\tuplet 3/2 { b16\rest b16\rest g16 }
		\tuplet 3/2 { a16 [ d16 ] b16\rest }
		\tuplet 3/2 { b16\rest b16\rest a16 } | % 10
		\oneVoice
		\tuplet 3/2 { g16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 fis16 }
		\tuplet 3/2 { e16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 d16 }
		\tuplet 3/2 { cis16 [ d16 ] r16 }
		\tuplet 3/2 { r16 r16 \clef "bass" b16 } | % 11
		\tuplet 3/2 { a16 [ cis16 ] r16 }
		\tuplet 3/2 { r16 r16 b16  }
		\tuplet 3/2 { a16 [ cis16 ] r16 }
		\tuplet 3/2 { r16 r16 g16 }
		\tuplet 3/2 { fis16 [ a16 ] r16 }
		\tuplet 3/2 { r16 r16 e16 } | % 12
		\tuplet 3/2 { d16 [ fis16 ] r16 }
		\tuplet 3/2 { r16 r16 e16 }
		\tuplet 3/2 { d16 [ fis16 ] r16 }
		\tuplet 3/2 { r16 r16 c16 }
		\tuplet 3/2 { b16 [ d16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 } | % 13
		\tuplet 3/2 { fis16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { g16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 fis16 }
		\tuplet 3/2 { e16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 d16 } | % 14
		cis8 [ cis'8 ] d8 [ fis,8 ] g8 [ a8 ] | % 15
		\voiceThree
		d,8 [ d'8 ] cis'16  r16 cis16 r16 d,,4 | % 16

 } %end of repeated section
 
 	\repeat volta 2 { %begin repeated section
		\clef "treble"
		\oneVoice
		\tuplet 3/2 { d'''16 [ fis16] r16 }
		\tuplet 3/2 { r16 r16 e16  }
		\tuplet 3/2 { d16 [ fis16]  r16 }
		\tuplet 3/2 { r16 r16 c16  }
		\tuplet 3/2 { b16 [ d16 ] r16 }
		\tuplet 3/2 { r16 r16 a16  } | % 17
		\tuplet 3/2 { g16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { g16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 fis16 }
		\tuplet 3/2 { e16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 d16 } | % 18
		\tuplet 3/2 { c16 [ e16 ] r16 }
		\clef "bass" 
		\tuplet 3/2 { r16 r16 b16  }
		\tuplet 3/2 { a16 [ c16 ] r16 }
		\tuplet 3/2 { r16 r16 g16 }
		\tuplet 3/2 { fis16 [ a16 ] r16 }
		\tuplet 3/2 { r16 r16 e16 } | % 19
		\tuplet 3/2 { dis16 [ fis16 ] r16 }
		\tuplet 3/2 { r16 r16 cis16 }
		\tuplet 3/2 { b16 [ dis16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { g16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 fis16  } | % 20
		\voiceThree
		e8 [ e'8 ] \clef "treble" dis''16 r16 dis16 r16 g,16 r16 dis'16 r16 \clef "bass" | % 21
		c,,8_[ c'8 ] \clef "treble" dis'16 r16 dis16 r16 b16 r16 dis16 r16 \clef "bass" | % 22
		\oneVoice a,8 [ dis,8 e8 a8 b8 b,8 ] | % 23
		\voiceThree
		s8 \clef "treble" dis''16 r16 b16 r16 b16  r16 fis16 r16 fis16 r16 \clef "bass" | % 24
		\oneVoice c,8 [ b'8 a8 gis8 a8 c,8 ] | % 25
		b8 [ a'8 g8 fis8 g8 b,8 ] | % 26
		\tuplet 3/2 { a16 [ a'16 ] r16 }
		\tuplet 3/2 { r16 r16 b16  }
		\tuplet 3/2 { a16 [ c16 ] r16 }
		\tuplet 3/2 { r16 r16 g16 }
		\tuplet 3/2 { fis16 [ a16 ] r16 }
		\tuplet 3/2 { r16 r16 e16 } | % 27
		\tuplet 3/2 { d16 [ d'16 ] r16 }
		\tuplet 3/2 { r16 r16 e16  }
		\tuplet 3/2 { d16 [ fis16 ] r16 }
		\tuplet 3/2 { r16 r16 c16 }
		\tuplet 3/2 { b16 [ d16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 } | % 28
		\tuplet 3/2 { g16 [ g'16 ] r16 } \clef "treble"
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { g16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 f16 }
		\tuplet 3/2 { e16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 d16 } | % 29
		\tuplet 3/2 { c16 [ c'16 ] r16 }
		\tuplet 3/2 { r16 r16 d16 }
		\tuplet 3/2 { c16 [ e16 ] r16 }
		\tuplet 3/2 { r16 r16 b16 }
		\tuplet 3/2 { a16 [ c16 ] r16 }
		\tuplet 3/2 { r16 r16 g16  } | % 30
		fis8 [ \clef "bass" a,8 b8 c8 ] d8 [ d,8 ] | % 31
		g8_[ g,8 ] \clef "treble" \voiceThree fis'''16 r16 fis16 r16 \clef "bass" s4 \clef "treble" | % 32
 } %end repeated section
}

bassTwo = \relative a {
	\repeat volta 2 { %begin repeated section
		\stemDown	 
		s4 \clef "treble" 
		<a c>16 r16 <a c>16  r16 <a c>16  r16 <a c>16 r16 
		\clef "bass" | % 1 
		s4 \clef "treble" 
		<e' g>16 r16 <e g>16  r16 <e g>16  r16 <e g>16 r16 
		\clef "bass" | % 2
		s4 \clef "treble" 
		<a d>16 r16 <g cis>16  r16 <a d>16  r16 <g cis>16 r16 
		\clef "bass" | % 3 
		s1*3/4 | % 4
		s4 \clef "treble" 
		<a c>16 r16 <a c>16  r16 <a c>16  r16 <g b>16 r16 
		\clef "bass" | % 5 
		s4 \clef "treble" 
		<f b>16 r16 <f b>16  r16 <f b>16  r16 <e a>16 r16 
		\clef "bass" | % 6 
		s4 \clef "treble" 
		<e g>16 r16 <e g>16  r16 <e g>16  r16 <d fis>16 r16 
		\clef "bass" | % 7
		s1*3/4 | % 8
		s1*3/4 | % 9
		s1*3/4 | % 10
		s1*3/4 | % 11
		s1*3/4 | % 12
		s1*3/4 | % 13
		s1*3/4 | % 14
		s1*3/4 | % 15
		s4 <e, g>16  r16 <e g>16  r16 s4 | % 16 
 } %end of repeated section
 
 	\repeat volta 2 { %begin repeated section
	 	s1*3/4 | % 17
		s1*3/4 | % 18
		s1*3/4 | % 19
		s1*3/4 | % 20
		s4 \clef "treble" 
		<fis' a>16 r16 <fis a>16 r16 g,16 r16 <fis' a>16 r16 \clef "bass" | % 21
		s4 \clef "treble" 
		<fis a>16 r16 <fis a>16 r16 b,16 r16 <fis' a>16 r16 \clef "bass" | % 22
		s1*3/4 | % 23
		e,8\noBeam \clef "treble" 
		<fis' a>16 r16 <dis fis>16 r16 <dis fis>16 r16 <a dis>16 r16 <a dis>16 r16 \clef "bass" | % 24
	 	s1*3/4 | % 25
		s1*3/4 | % 26
		s1*3/4 | % 27
		s1*3/4 | % 28
		s1*3/4 | % 29
		s1*3/4 | % 30
	 	s1*3/4 | % 31		
		s4  \clef "treble"
		<a' c>16 r16 <a c>16 r16 
		\clef "bass"  g,4 
		\clef "treble" | % 32
 }
}

bass = << \bassOne \\ \bassTwo>>

%% Merge score - Piano staff

\score {
 \context PianoStaff <<
 \set PianoStaff.midiInstrument = "harpsichord"
 \new Staff = "upper" { \clef treble \key g \major \time 3/4 \soprano }
 \new Staff = "lower" { \clef bass \key g \major \time 3/4 \bass }
 >>
 \layout{ }
 \midi { \tempo 4 = 84 }

}
