\version "2.18.2"

\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #5
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
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
        piece = "Variatio 21. Canone alla Settima."
        mutopiatitle = "Goldberg Variations - 21"
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
	
 footer = "Mutopia-2014/07/27-1403"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%%-----------definitions
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"
posPrall = { \once \override Script.staff-padding = #'() }

sopranoOne =   \relative a' {
    \repeat volta 2 { %begin repeated section
    \stemUp
        b2\rest b16\rest a16 [ bes c ] d [ c bes a ] | % 1
        g8 [ d' g, c ~ ] c16 [ fis, g a ] bes [ a g fis ] | % 2
        g8 b8\rest b8\rest g8 as [ g as a ] | % 3
        bes16 [ c d c ] bes [ a g fis!] es'8  d\rest d\rest c8 ~  | % 4
        c16 [ c bes a ] bes [ c d e ] f!8 [ e ] f16 [ g a8 ~ ] | % 5
        a16 [ g f a ] g [ f e d ] cis8. \downprall [ b16 ] cis [ d e8 ] | % 6
        d8 r8 r8 d8 ees! [ d8 es e ] | % 7
        f8 [ g a g ~ ] g8 [ fis16 e ] d [ cis d8 ]	| % 8
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        r2 r16 as'16 [ g16 f! ] e [ f g e ] | % 9
        c8 [ d16 es! ] f8 [ bes,8 ] r16 f'16 [ es d ] c [ es d f ] | % 10
        es8 [ f ] g4 ~ g16 [ f g as ] d, [ c d f ] | % 11
        bes,16 [ c d bes ] es8 [ as, ~ ] as [ g16 f ] g8 [ es'8 ~ ] | % 12
        es8 [ d16 c ] d8 r8 r16 e,16 [ f! g ] f [ e d c ] | % 13
        c'16 [ bes c8 ] fis,8 r8 r8 d'16 [ c ] bes [ a g f ] | % 14
        es8  b'8\rest b8\rest c8 ~ c [ bes!] a [ bes16 c ] | % 15
        d8 [ f,! ] es [ c' ~ ] c16 [ bes32 a g a fis16 ] g4 | % 16
    } %end repeated section
}

sopranoTwo =   \relative bes {
    \repeat volta 2 { %begin repeated section
    \stemUp \tieUp \staffDown
       b16\rest bes16 [ c d ] es [ d c bes ] a8 [ es' a, d ~ ] | % 1
        d16 [ g, a bes ] c [ bes a g ] a8  a\rest a\rest a8  | % 2
        bes8 [ a bes b ] c16 [ d es d ] c [ bes a g ] | % 3
        \staffUp \stemDown \tieDown fis'8 e\rest e\rest d8 ~  d16 [ d c  bes ] c [ d e fis ] | % 4
        g8 [ fis ] g16 [ a bes8~ ] bes16 [ a g bes ] a [ g f e ] | % 5
        \posPrall d8.^\downprall [ cis16 ] d [ e f8 ] e  r8 r8 e8 | % 6
        f8 [ e f fis ] g [ a bes a ~ ] | % 7
        a8 [ g16 f ] e [ d e8 ] \staffDown \stemUp d4 \staffUp \stemDown r4 | % 8
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        r16 bes'16 [ a g ] fis [ g a fis ] d8 [ e16 f ] g8 [ c, ] | % 9
        r16 g'16 [ f es! ] d [ f es g ] f8 g as4 ~  | % 10
        as16 [ g as bes ] es, [ d es g ] c, [ d es c ] f8 [ \staffDown \stemUp \tieUp bes, ~ ] | % 11
        bes8 [ as16 g ] as8  [ \staffUp \stemDown \tieDown f'8 ~ ] f [ es16 d ] es8 r8 | % 12
        \staffDown \stemUp a,16\rest fis16 [ g a ] g [ fis e d ] d' [ c d8 ] g, a\rest | % 13
        \staffUp \stemDown r8 es'!16 [ d ] \staffDown \stemUp \tieUp c [ bes a g ] fis8  a8\rest a8\rest d8 ~ | % 14
        d8 [ c ] b [ \staffUp \stemDown c16 d ] es8 [ \staffDown \stemUp g,] fis[ d' ~ ] | % 15
        d16 [ c32 bes a bes g16 ] as [ g8 fis16 ] g4 d'4\rest | % 16
    } %end repeated section
}


soprano = << \sopranoOne \\ \sopranoTwo>>


%%
%% Bass Clef
%% 

bass =   \relative g, {
    \repeat volta 2 { %begin repeated section
       \stemDown
       g4 g' fis f | % 1
        e4 es d16 [ a bes c ] d8 [ d, ] | % 2
        g16 [ d' e fis ] g [ f es d ] c8 [ b c cis ] | % 3
        \stemNeutral d8 [ bes c d ] g4 ~ g16 [ fis g a ] | % 4
        bes16 [ c d8 ] g, [ g' ] d4. c8 | % 5
        bes8 [ a bes g ] a16 [ e f g ] a [ b cis a ] | % 6
        d16 [ f, g a ] d, [ c' bes a ] g [ bes, c d ] g,_[ g'8 cis,16 ] | % 7
        d16 [ a' d8 ~ ] d8. [ cis16 ] d [ bes a g ] fis [ a fis d ] | % 8
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d8 d'4 c8 b bes4 a!16 [ g ] | % 9
        a8 as4 g8 d [ es f bes, ] | % 10
        es8  r8 r8 es8  as4. g16 [ f ] | % 11
        \tieDown g4 ~ g16 [ f es d ] es [ g, as bes ] es, [ g a b ] | % 12
        \stemDown c4 r8 c8 bes!4 r8 bes8 | % 13
        a16 [ g a bes ] a [ g fis e ] d [ c' d es! ] d [ c bes a ] | % 14
        g16 [ f' g as ] g [ f es d ] c [ b c cis ] d16 [ es d c ] | % 15
        bes16 [ a bes b ] c8 [ d ] g,16 [ d' bes d ] g [ d bes g ] | % 16
    } %end repeated section
}

%% Merge score - Piano staff in key of G Major, 12/8 time.

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key bes \major \time 4/4 \soprano }  
		\new Staff = "lower" {\clef "bass" \key bes \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 4 = 34 }

}
