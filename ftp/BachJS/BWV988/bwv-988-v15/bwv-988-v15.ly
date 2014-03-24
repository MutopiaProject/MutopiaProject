\version "2.18.0"

\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #5
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 15. Canone alla Quinta (in moto contrario). a 1 Clav."
        mutopiatitle = "Goldberg Variations - 15"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Harpsichord,Clavichord,Piano"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        license = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2014/03/24-1389"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%-------------------definitions
tempoMark = #(define-music-function (parser location markp) (string?)
     #{
       \once \override Score.RehearsalMark.self-alignment-X = #left
       \once \override Score.RehearsalMark.extra-spacing-width = #'(+inf.0 . -inf.0)
       \mark \markup { \bold $markp }
     #})

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

adjBeamOne = \once \override Beam.positions = #'( -5.2 . -6.0 )
adjBeamTwo = \once \override Beam.positions = #'( 5.8 . 7.3 )
adjBeamTre = \once \override Beam.positions = #'( -2.4 . -1.4 )
adjBeamQtr = \once \override Beam.positions = #'( 4.0 . 4.5 )
adjBeamCin = \once \override Beam.positions = #'( 7.7 . 5.2 )
adjBeamSix = \once \override Beam.positions = #'( 1.3 . 1.5 )
adjBeamSev = \once \once \override Beam.damping = #6
adjBeamOct = \once \override Beam.positions = #'( -4.3 . -5.3 )
adjBeamNov = \once \override Beam.positions = #'( 5.0 . 5.3 )
adjBeamTen = \once \override Beam.positions = #'( -2.0 . -1.8 )
adjBeamOnc = \once \override Beam.positions = #'( -5.3 . -5.1 )

adjTieOne = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieTwo = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
adjTieTre = \shape #'((0 . -1.2) (0.0 . -1.4) ( 0.0 . -1.4) (0 . -1.2)) Tie
adjTieQtr = \shape #'((0.6 . -1.0) (2.2 . -2.6) ( -2.2 . -2.6) (-0.5 . -1.4)) Tie
adjTieCin = \shape #'((0 . 0.9) (0.5 . 2.1) (-0.5 . 2.1) (0 . 0.9)) Tie
adjSlurOne = \shape #'((0 . 0.0) (0 . 0.3) (0 . 0.5) (0 . 0.3)) Slur
adjSlurOne = \shape #'((0 . 0.8) (0 . 0.5) (-0.3 . 0.1) (-0.3 . -0.3)) Slur

lengthenStemOne = \once \override Stem.length-fraction = #(magstep +2)
pushNoteColRight = \once \override NoteColumn #'force-hshift = #0.3
allowScriptInStaff = \once \override Script.staff-padding = #'()

sopranoOne =   \relative d'' {
    \repeat volta 2 { %begin repeated section
    \stemUp
	\tempoMark #"Andante"
       R1*1/2 | % 1
        r16 d16 [ d ( e ) ] e ( [ fis ) fis ( g ) ] \noBreak | % 2
        \adjTieTwo g4 ~ \adjBeamTwo g16 [ a bes c ] | % 3
        d16 [ a a32 gis a16 ] \adjTieTwo d,4 ~ | % 4
        d8 [ es16 ( f ) ] es ( [ d ) d ( c ) ] | % 5
        bes8 d8\rest d8\rest c8 | % 6
        g'32 [ a fis16 g a ] bes [ c d c ] | % 7
        \adjBeamCin bes16 [ \grace a16 g16 \adjTieTwo d8 ~ ] \adjBeamQtr d8  [ es ] | % 8
        d8 r8 f16\rest es16 [ d ( c ) ] | % 9
        bes16 ( [ c ) c ( d ) ] d ( [ es ) es ( d ) ] | % 10
        d8 r8 r8 a'8 | % 11
        bes8 [ d,16 \adjTieTwo e ~ ] e [ f8 g16 ] | % 12
        \stemDown \adjBeamSix a8 [ \stemUp bes, ] c [ a' ] | % 13
        r8 g32 [ a g16 ~ ] g [ g8 g16 ~ ] | % 14
        g16 [ f32 g32 a16 bes ] a [ f cis8 ] | % 15
        r8 g'8 ~ g16 [ fis32 e fis8 ] | % 16 
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        R1*1/2 | % 17
        d8\rest es8 [ d  c ] | % 18
        g'16 [ g,8 as16 ~ ] as  [ bes8 c16 ] | % 19
        bes8 [ f' ] g [ d ] | % 20
        es16 [ d c8 ] e'16\rest bes,8 [ c16 ] | % 21
        d16 [ bes f d ] es [ f g as ] | % 22
        \adjTieCin bes2 ~ | % 23
        bes16 [ c32 d es d c16 ] d [ es32 f es f g16 ] | % 24
        f8 r8 r4 | % 25
        r16 c16 [ c ( d ) ] es [ e g, e' ] | % 26
        fis4 ~ fis16 [ g a bes ] | % 27
        c16 [ bes a g ] fis [ g fis8 ~ ] | % 28
        fis16 [ a g8 ] f8\rest c8 | % 29
        g8. [ a16 ] bes [ c d e ] | % 30
        fis16 [ g a fis ] \stemNeutral g [ fis e32 d c'16 ~ ] | % 31
        c16 [ fis, g a ] bes [ c d8 ] | % 32
    } %end repeated section
}

sopranoTwo =   \relative g' {
    \repeat volta 2 { %begin repeated section
    \stemDown
        b16\rest g16 [ g ( f ) ] f ( [ es ) es ( d ) ] | % 1
        d4 ( \adjBeamOne  d16 ) [ \stemUp \staffDown c bes a ] | % 2
        g16 [ cis cis32 d cis16 ] \stemDown \staffUp g'4 ( | % 3
        g8 ) [ fis16 e ] fis [( g) g( a ]) | % 4
        bes8 r8 r8 a8 | % 5
        d,32 [ c es16 d c ] \staffDown \stemUp bes [ a g a ] | % 6
        bes16 [ d \staffUp \stemDown \adjTieTre g8 ~ ] g [ \allowScriptInStaff fis ^\prallprall ] | % 7
        g8 r8 r16 fis16 [ g a ] | % 8
        bes16 ( [ a ) a ( g ) ] g ( [ fis ) fis ( g ) ] | % 9
        g8 r8 r8 c,8 | % 10
        bes8 [ g'16 \adjTieOne f ~ 
		] f [ e8 d16 ] | % 11
        cis8 [ bes' ] a [ cis, ] | % 12
        g'8\rest d32 [ cis d16 ~ ] d [ d8 d16 ] ~ | % 13
        d16 [ e32 d cis16 b ] cis [ e a8 ] | % 14
        r8 d, ~ d16 [ e32 f e d e16 ] | % 15
        \stemUp d4 g4\rest  | % 16
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        g8\rest fis8_[ g a ] | % 17
        \stemDown d,16 [ d'8 c16 ~ ] c [ bes8 a16 ] | % 18
        bes8 [ es, ] d [ g ] | % 19
        f16 [ g as8 ] b16\rest bes8 [ as16 ] | % 20
        g16 [ bes es g ] f [ es d c ] | % 21
        \adjTieQtr bes2 ~ | % 22
        bes16 [ as32 g f g as16 ] g [ f32 es f es d16 ] | % 23
        es8 r8 r4 | % 24
        r16 as16 [ as ( g ) ] fis [ f d' f, ] | % 25
        es4 ~ \adjBeamOct es16 [ d \staffDown \stemUp c bes ] | % 26
        \adjBeamNov a16 [ bes \staffUp \stemDown c d ] es [ d es8 ~ ] | % 27
        es16 [ c d8 ] g8\rest a8 | % 28
        d8. [ c16 ] bes [ a g f ] | % 29
        es16 [ d c es ] \adjBeamOnc d [ e fis32 g \staffDown \stemUp a,16^~ ] | % 30
        \adjBeamNov a16 [ \staffUp \stemDown es'! d \staffDown \stemUp c ] bes [ a g fis ] | % 31
        g4 a4\rest | % 32
    } %end repeated section
}


soprano = << \sopranoOne \\ \sopranoTwo>>


%%
%% Bass Clef
%% 

bass =   \relative g {
    \repeat volta 2 { %begin repeated section
       g8 [ g, ] r8 \adjTieTwo g' ~ | % 1
        g16 [ fis32 e fis8 ] r8 d8 | % 2
        es8 [ e ] r8 es'! | % 3
        d16 [ cis d8 ] r16 c16 [ bes a ] | % 4
        g32 ( [ fis g16 ) c, g' ] c ( [ fis, ) fis ( g ) ] | % 5
        g16 [ fis g a ] d,8 [ es ] | % 6
        bes8 [ bes'16 c ] d8 [ d ] | % 7
        g,8^[ bes,32 c d bes ] g8 r8 | % 8
        r16 fis'16 [ g a ] bes8 [ a ] | % 9
        g16 [ fis8 e16 ] fis32 [ a g8 fis16 ] | % 10
        \adjBeamTen g16 [ a bes a ] g32 [ a g16 f32 g f16 ] | % 11
        e16 [ f g e ] cis_[ d e cis ] | % 12
        f32 [ e d16 ] g4 fis8 | % 13
        bes8 [ e, ] a [ cis, ] | % 14
        d8 [ f16 e ] f8 [ a ] | % 15
        \stemDown \staffUp \adjBeamSev d16 [ \staffDown c32 bes a g a16 ] d,4 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
       \adjSlurOne d16 [ ( es' ) es ( d ) ] d [ ( c)  c ( bes ) ] | % 17
        bes16 [ ( fis ) fis ( g ) ] g [ ( d ) \adjTieOne d8_~ ] | % 18
        d16^[ c32 bes c16 f, ] f'^[ bes, es8_~ ] | % 19
        \stemUp es16 [ d32 c d c bes16 ] es [ g, as bes ] | % 20
        c,16 [ g' c bes ] as [ g \adjTieOne as8_~ ] \stemNeutral | % 21
        as16 [ as' bes as ] g [ f es f ] | % 22
        g16 [ as bes8 ] bes,8. [ as'16 ] | % 23
        g16 ( [ f ) f ( es ) ] f ( [ g ) \adjSlurOne g ( as ) ] | % 24
        c,8 [ b ] r16 a16 [ b g ] | % 25
        c8 [ c' ] r8 \stemDown c,8_~ | % 26
        c16 [ \staffUp \shiftOn d' es \staffDown bes ] a [ bes c g ] | % 27
        g8 [ ( fis16)  g ] a [ bes32 c d es c16 ] | % 28
        bes32 [ d c16 bes32 c a16 ] g32 [ a f16 es32 f d16 ] | % 29
        c16 [ es32 d es16 fis, ] \stemUp g8 \stemDown  r16 c16  | % 30
        d8 r16 es16 c8 [ d ] | % 31
        g16 [ d32 c bes c a16 ] g4 | % 32 
    } %end repeated section
}


%% Merge score - Piano staff in key of G Major, 12/8 time.

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef "treble" \key bes \major \time 2/4 \soprano  }
        \context Staff = "lower"  { \clef "bass" \key bes \major \time 2/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 8 = 66 }

}
