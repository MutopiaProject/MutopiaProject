% -*- LilyPond -*-

\version "1.6.6"

#(set! point-and-click line-column-location)

\header {
    title = "String Quartet KV. 464 (nr. 18)"
    subtitle = "for 2 violins, viola and cello"
    composer = "W. A. Mozart (1756-1791)"
        
    mutopiatitle = "String Quartet KV. 464 (nr. 18)"
    mutopiacomposer = "W. A. Mozart (1756-1791)"
    mutopiaopus = "KV. 464"
    mutopiainstrument = "String Quartet"
    date = "10th January 1785 (Wien)"
    source = "Breitkopf und H\"artel (1882)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"
    lastupdated = "2002/Dec/29"

    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
    footer = "Mutopia-2002/12/29-278"
}

% Some useful macros

cue = \once \property Voice.Stem \override #'stroke-style = #'()

raiseDynamics = \once \property Voice.DynamicText
    \override #'extra-offset = #'(0 . 1.0)

RaiseDynamics = \once \property Voice.DynamicText
    \override #'extra-offset = #'(0 . 1.5)

lowerDynamics = \once \property Voice.DynamicText
    \override #'extra-offset = #'(0 . -1.0)

LowerDynamics = \once \property Voice.DynamicText
    \override #'extra-offset = #'(0 . -1.5)

cresc = #'(italic "cresc.")
decresc = #'(italic "decresc.")
staccato = #'(italic "staccato")
legato = #'(italic "legato")

raiseSlur = \once \property Voice.Slur
    \override #'attachment-offset = #'((0 . 0.5) 0 . 0.5)

lowerSlur = \once \property Voice.Slur
    \override #'attachment-offset = #'((0 . -0.5) 0 . -0.5)

RaiseSlur = \once \property Voice.Slur
    \override #'attachment-offset = #'((0 . 1.2) 0 . 1.2)

LowerSlur = \once \property Voice.Slur
    \override #'attachment-offset = #'((0 . -1.2) 0 . -1.2)

slurStemToStem = \once \property Voice.Slur
    \override #'attachment = #'(stem . stem)

slurHeadToHead = \once \property Voice.Slur
    \override #'attachment = #'(head . head)

slurHeadToStem = \once \property Voice.Slur
    \override #'attachment = #'(head . stem)

slurStemToHead = \once \property Voice.Slur
    \override #'attachment = #'(stem . head)

RaiseText = \once \property Voice.TextScript
    \override #'extra-offset = #'(0 . 3)

raiseText = \once \property Voice.TextScript
    \override #'extra-offset = #'(0 . 1)

lowerText = \once \property Voice.TextScript
    \override #'extra-offset = #'(0 . -1)

LowerText = \once \property Voice.TextScript
    \override #'extra-offset = #'(0 . -2)

raiseBeam = \once \property Voice.Stem
    \override #'beamed-lengths = #'(4)

tupletNum = \property Voice.TupletBracket
    \set #'number-visibility = ##t

noTupletNum = \property Voice.TupletBracket
    \set #'number-visibility = ##f 

tupletBracket = \property Voice.TupletBracket
    \set #'bracket-visibility = ##t

noTupletBracket = \property Voice.TupletBracket
    \set #'bracket-visibility = ##f 

raiseScript = \once \property Voice.Script
    \override #'extra-offset = #'(0.0 . 1.0)

RaiseScript = \once \property Voice.Script
    \override #'extra-offset = #'(0.0 . 1.5)

stemOff = \property Voice.Stem \override #'transparent = ##t
stemOn = \property Voice.Stem \override #'transparent = ##f

blankNotes = {
    \property Voice.NoteHead \override #'transparent = ##t
    \property Voice.Stem \override #'transparent = ##t
}

visibleNotes = {
    \property Voice.NoteHead \override #'transparent = ##f
    \property Voice.Stem \override #'transparent = ##f
}

setTrillWave = {
    \property Voice.TextSpanner \set #'type = #'trill
    \property Voice.TextSpanner \set #'edge-height = #'(0 . 0)
    \property Voice.TextSpanner \set #'padding = #1.0
    \property Voice.TextSpanner \set #'minimum-space = #5.0
    \property Voice.TextSpanner \set #'edge-text = #'((line
    (music "scripts-trill") " ") . "")
}

parentP = #'(columns (large "(") (dynamic "p") (large ")"))
parentF = #'(columns (large "(") (dynamic "f") (large ")"))
parentPP = #'(columns (large "(") (dynamic "pp") (large ")"))
parentFF = #'(columns (large "(") (dynamic "ff") (large ")"))
parentMP = #'(columns (large "(") (dynamic "mp") (large ")"))
parentMF = #'(columns (large "(") (dynamic "mf") (large ")"))
parentFP = #'(columns (large "(") (dynamic "fp") (large ")"))
parentCresc = #'(columns (upright "(") (italic "cresc.") (upright ")"))
parentDecresc = #'(columns (upright "(") (italic "decresc.") (upright ")"))

parentShift = \once \property Voice.TextScript
    \override #'extra-offset = #'(-1.0 . 0.0)

ParentShift = \once \property Voice.TextScript
    \override #'extra-offset = #'(-1.5 . 0.0)

% General markings and annotations for each movement


markingsI = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s4^#'((Large upright) "Allegro.") s2
    \skip2.*269
    \bar "|."
}


markingsII = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s4^#'((Large upright) "Minuetto.") s2
    \skip2.*71

    \once \property Voice.TextScript \override #'extra-offset = #'(0 . 3)
    s4^#'((Large upright) "Trio.") s2
}

markingsIIbis = \notes {
    \skip2.*103
    s2
    \once \property Voice.TextScript \override #'extra-offset = #'(-6 . -4)
    s4_#'((Large upright) "M.D.C.")
    \bar "|."
}

markingsIII = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s4^#'((Large upright) "Andante.")
}


markingsIV = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s2^#'((Large upright) "Allegro.") s2
}

rbcOne = \property Voice.stemRightBeamCount = #1
rbcTwo = \property Voice.stemRightBeamCount = #2



\include "violin1-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino I."

	\time 3/4
	\partial 4

	\violinIFirstMov
	\context Voice=markings { \markingsI }
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}

\include "violin1-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino I."

	\time 3/4

	\violinISecondMov
	\context Voice=markings { \markingsII }
	\context Voice=markingsBis { \markingsIIbis }
    >

    \midi {
       \tempo 4 = 130
    }

    \paper { }
}

violinIThirdMov = \notes \relative a' {
    \key d \major
    \clef violin

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(make-moment 1 4)

    \repeat volta 2 {
	[a16.(-\p )fis32 g16.( )e32]
	| d8( fis4 )a8 ~
	| [a( )g] [a16( g fis )e]
	| [d8( cis d )a']
	| [g( )fis] [b( a]
	| [gis )a] [fis'( e]
	| [dis )e] e4-\sf ~
	| [e16( fis] \grace { \cue e32 } [d16 cis32 )b] [a8.(-\p cis32 )b]
	| a8 r
    }

    \repeat volta 2 {
	[a16( gis a )e]
	| e4.( )dis8

% 10
	| [a'( )gis] [g16( b8 )a16]
	| [fis( a8 )g16] [e( g8 )fis16]
	| [d8( )cis] [b'( a]
	| [gis )a] [g'!(-\f fis]
	| [eis )fis] e4-\p ~
	| [e16( b'] \grace { \cue a32 } [g16 fis32 )e] [d8( )e_\cresc]
          \noBreak
	| [g( )fis] [b( )cis]
	| \times 2/3 { [d16( )a fis-.] } \times 2/3 { [e( )g b-.] }
          [d,8.( fis32 )e]
	| d8 r
    }

    \repeat volta 2 {
	\lowerDynamics [gis,32(-\p a b a] [g fis g )e]
	| [d( )fis a d fis8] ~ [fis32( e d cis] [e d cis )b]

% 20
	| [a8( )g16] r [g32( a b a] [g fis e )d]
	| [cis( )a' cis e g8] ~ \stemDown [g32( e cis d] [e )cis e, a]
          \stemBoth
	| [g8( )fis16] r r [b8( )a16] ~
	| [a( gis8 )a16] r32 [fis'( gis )fis] r [e( fis )e]
	| r [dis( e )dis] r [e( fis )e] [a(-\f )cis b a] [gis( )fis e d]
	| [cis( )b cis d] [e( fis e d] [cis d dis e] [d cis d )b]
	| a8 r
    }

    \repeat volta 2 {
	[a32(-\p b c b] [a gis a )f]
	| [e(-\f )a c e a8] ~ [a32(-\p fis! dis e] [fis )dis fis, b]
	| [a8( )g16] r [e'32( )g fis \lowerText e_\cresc] [d!( )cis! b
          a]
	| [g( )fis g a] [b( cis e )d] [cis( b a g] [fis e g )b,]

% 30
	| \lowerDynamics [d8(-\f )cis16] r r [b'8-\p a16] ~
	| [a( gis8 )a16] r32 [g'!( a )g] r [fis( g )fis]
	| r [eis( fis )eis] r [fis( g )fis] [e(-\f g fis e] [dis fis e
          dis]
	| [)e b'(-\p ais a] [gis g fis )e] [d-. a'( b a] [e a b )a]
	| [g8( )fis16] r [e32(-\f fis g a] [b cis d e]
	| [)fis cis(-\p )d ais(] [)b fis( )g e(] [d fis a gis] [g fis
          g )e]
	| d8 r
    }

    \repeat volta 2 {
        [a8-\p a]
	| a( d4 )fis8
	| [\times 2/3 { fis16( a )g } g8] [a, a]
	| a( cis4 )e8

% 40
	| [\times 2/3 { e16( g )fis } fis8] [b,16( cis d )b]
	| [e8.(-\fp d64 cis b )a] [fis'16( gis a )fis]
	| [b8.(-\fp a64 gis fis )e] [cis'16.(-\f )a32 gis16.( )b32]
	| [a16.( )cis,32 b16.( )fis'32] [a,8 b^\trill]


        | a8 r
    }

    \repeat volta 2 {
        [a8 a]


	| \property Score.currentBarNumber = #45 \slurStemToHead a8(
          c'4 )b8
	| [\times 2/3 { a16( fis )g } g8] [g16( e'8 )g,16]
	| [fis( d'8 )fis,16] [e16( b'8 )b,16]
	| [d8( )cis] [b16( cis d )b]
	| [e8.(-\fp d64 cis b )a] [e'16( fis g )e]

% 50
	| [a8.(-\fp g64 fis e )d] [b'16.(-\f )e,32 dis16.( )c'32]
	| [b8.(-\fp a64 g fis )e] [d!8( )cis]
	| [g'( )fis] [b16.(-\f )e,32 cis'16.( )a32]
	| [d16.( )fis,32 e16.( )b'32] [d,8 e^\trill]

        | d8 r
    }

    \repeat volta 2 {
        \lowerDynamics [fis,16.(-\p )d32 g16.( )e32]

	| \property Score.currentBarNumber = #55 a8 r r4
	| r4 [e16.( )cis32 fis16.( )d32]
	| g8 r r4
	| R2*2

% 60
	| r4 [g'!8(-\p fis]
	| [eis_\cresc )fis] [a,8.(-\fp cis32 )b]
	| a8 r
    }

    \repeat volta 2 {
        [e16.( )c32 a'16.( )e32]
	| c'8 r r4
	| r [e16.( )cis!32] [g'( e g )e]
	| a8 r r4
	| r4 [b8( a]
	| [gis )a] r d ~
	| [d( )cis] r [b16.( )a32]
	| [a8.( )b16] \lowerText [d,8(_\cresc )cis]

% 70
	| [g'( )fis] [c'( b]
	| [ais )b] [d,8.(-\fp fis32 )e]
	| d8 r
    }

    \key d \minor

    \repeat volta 2 {
        \raiseSlur \lowerDynamics [d,8(-.-\p )d-.]
	| d4 ~ \times 2/3 { [d16( f d] } \times 2/3 { [a' g )f] }
	| e4 ~ \times 2/3 { [e16( g e] } \times 2/3 { [bes' g )e] }
	| [d8( )cis] ~ \noTupletNum \times 2/3 { [cis16( e gis] [a e )a] }
	| [g!8( )f] \times 2/3 { r16 \stemDown [bes( a] [bes d )bes]
          \stemBoth }
	| \times 2/3 { [gis( b gis] [a c )a] } \times 2/3 { r16 [f'(
          e] [f a )f] }
	| \times 2/3 { [dis( fis dis] [e gis )e] } \tupletNum
          [c'8. \rbcOne r32 c,]
	| [a'8. \rbcOne r32 a,] [f'8-. gis,-.]

% 80
	| a8 r
    }

    \repeat volta 2 {
        \raiseSlur [a8(-.-\p )a-.]
	| a4.( )a'8
	| \grace { \cue g8 } f4. [e16 d]
	| cis4 [d8.(^\trill cis32 )d]
	| e8 r [a,-.-\f a-.]
	| a bes'4 [a16( )g]
	| \grace { \cue g8 } f4. [e16 d]
	| f'4( )gis,
	| a8 r \times 2/3 { r16 \LowerDynamics [es(-\p d] } \times 2/3
          { [es g )es] }
	| \times 2/3 { [cis( e! cis] } \times 2/3 { [d f )d] }
          \noTupletNum \times 2/3 { r16 [bes'( a] [bes d )bes] }
	| \times 2/3 { [gis( b gis] [a cis )a] } \tupletNum
          [f'8.-\f \rbcOne r32 f,]
	| [d'8. \rbcOne r32 d,] [bes'8-. g-.]
	| f r [f8.-\p \rbcOne r32 f,]
	| [d'8. \rbcOne r32 d,] [a'8-. a-.]
	| d, r
    }

    \key d \major

    [a'8(-\p )g]
    | fis( b4 )a8 ~
    | [a( )g] ~ [g16.( )a32 fis16.( )g32]
    | e8( a4 )g8 ~
    | [g( )fis] ~ [fis16.( )g32 e16.( )fis32]
    | [d8( )g] ~ [g16.( )a32 fis16.( )g32]

% 100
    | [e8( )a] ~ [a16.( )b32 g16.( )a32]
    | [fis8( )b] [a( gis16^\trill fis32 )gis]
    | a8 r [a(-\f )g!]
    | fis( b4 )a8 ~
    | [a( g16. fis32] [g16. a32 fis16. )g32]
    | e8( a4 )g8 ~
    | [g( fis16. e32] [fis16. g32 e16. )fis32]
    | g8 r r4
    | r4 [cis8( )b]
    | [a( )e'] ~ [e16.( )fis32 d16.( )e32]

% 110
    | cis8 r r c(-\p ~
    | [c )b] r4
    | r8 [g'( a bes] ~
    | [bes )a] r4
    | r [d,8( )cis]
    | [b( )e] ~ [e16.( )fis32 d16.( )e32]
    | [cis8 a'] ~ [a16.( )b32 g16.( )a32]
    | [fis16.( )g32 e16.( )fis32] [d16.( )e32 cis16.( )e32]
    | d8 r r4
    | r8 b'-\f ~ [b16.( )c32 a16.( )b32]

% 120
    | [g16.( )a32 fis16.( )g32] e8 r
    | r4 r8 a ~
    | [a16.( )b32 g16.( )a32] fis8 r
    | R2
    | [g8(-\p fis e )a] ~
    | [a16.( )b32 g16.( )a32] [fis16.( )g32 e16.( )fis32]
    | d8 r

    \repeat volta 2 {
        r4
	| a4.(-\p )d8
	| cis4.( )d8
	| [e( fis g )a]

% 130
	| [g( )fis16] r r4
	| r4 [fis8( )e]
	| dis( e4 d8
	| [cis )c] \stemDown [b16( \grace { \cue cis32 } b32 a]
          \stemBoth [b16 )e]
	| [e8( )a,16] r
    }

    \repeat volta 2 {
        \raiseSlur [a8(-. )a-.]
	| [a( c b )a]
	| [g!( bes a )g]
	| [fis( a b! )e]
	| [d( )cis16] r r4
	| r4 [g'8( fis]

% 140
	| eis fis4 )e8 ~
	| e d4( )cis8
	| a'4(-\f [gis8 g]
	| [fis )f] \raiseText [e8.(^#'(columns ((music script (raise
          . 0.7)) "accidentals-1") ((music (kern . 1.2))
          "scripts-trill")) d32 )e]

        | d8 r
    }

    r4

    | \property Score.currentBarNumber = #145 c2(-\p
    | )b4 r
    | g'4(-\f [e8 )cis]
    | [a'8.( )fis16] d8 r
    | c'2(-\p

% 150
    | )b8 r a r
    | [g-. fis-. e-. d-.]
    | cis4 r8 e(
    | )f4 r8 d(
    | )cis4 r8 cis'(
    | )d4 r8 gis,(
    | \stemDown [)a16 a,32 a] [a16 a] [a'-. a,-. a'-. a,-.]
    | [b'16 a,32 a] [a16 a] [b' a, b' a,]
    | [cis'16 a,32 a] [a16 a] [d'16 a,32 a] [a16 a]
    | [e''16 a,,32 a] [a16 a] [fis''16 a,,32 a] [a16 a] \stemBoth

% 160
    | g''4_#'(columns (dynamic "f") (italic " calando")) ~ [g16( e cis a]
    | [g e cis a] [g e cis )a]
    | \lowerDynamics bes2(-\p
    | )a8 r [a'16.( )fis32 g16.( )e32]
    | \slurStemToHead d8( fis4 )b8
    | [a( )g] [a16( g fis )e]
    | [d8( cis d )a']
    | [g( )fis] [b( a]
    | [gis )a] [g'!(-\f fis]
    | [eis )fis] e!4-\p ~

% 170
    | [e16( b'] \grace { \cue a32 } [g16 fis32 )e] [d8( e_\cresc] \noBreak
    | [g )fis] [b( )cis]
    | \times 2/3 { [d16( )a fis-.] } \times 2/3 { [e( )g b-.] } [d,8.(
      fis32 )e]
    | d8 r [d(-\p cis]
    | [b )e] ~ [e16.( )fis32 d16.( )e32]
    | [cis8( )a'] ~ [a16.( )b32 g16.( )a32]
    | [fis16.( )g32 e16.( )fis32] [d16.( )e32 cis16.( )e32]
    | d8 d4(-\f )cis8
    | [b( )e] ~ [e16.( )fis32 d16.( )e32]
    | [cis8( )a'] ~ [a16.( )b32 g16.( )a32]

% 180
    | [fis16.( )g32 e16.( )fis32] [d16.( )e32 cis16.( )e32]
    | d4 r
    | a'4.(-\p )cis8
    | d4 r
    | a4.( )cis,8
    | d r d, r
    | d4 r \bar "|."
}


\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino I."

	\time 2/4
	\partial 4

	\violinIThirdMov
	\context Voice=markings { \markingsIII }
    >

    \midi {
       \tempo 4 = 44
    }

    \paper { }
}

violinIFourthMov = \notes \relative e'' {
    \key a \major
    \clef violin

    \noTupletBracket

    e2(-\p dis4 )d

    \repeat volta 2 {
	cis r r eis(
	| )fis fis4.( [g8 e! )fis]
	| d4 r r2
	| d2( cis4 )c
	| b r r dis(
	| )e e4.( [fis8 d! )e]
	| cis4 r r2
	| r4 cis4.( [d8 b )cis]

% 10
	| a4 r r2
	| r4 e'4.( [fis8 d )e]
	| cis4 r r2
	| r4 a'4.( [b8 gis )a]
	| fis4 fis4.( [g8 e )fis]
	| d4 d4.( [e8 cis )d]
	| b4 r r2
	| e2(-\f dis4 )d
	| cis4 r r eis(
	| )fis fis4.( [g8 e! )fis]

% 20
	| d4 r r2
	| d2( cis4 )c
	| b r r dis(
	| )e e4.( [fis8 d! )e]
	| cis4 r r2
	| r4 d4.( [e8 cis )d]
	| b4( e4. [fis8 d )e]
	| cis4( fis4. )g8 e4 ~
	| e8 fis( d4. [e8 cis )d]
	| b4 r r2

% 30
	| R1*2
	| r4 b'4.( [cis8 a )b]
	| gis4( cis4. dis8 )b4 ~
	| [b8 cis(] )a4. b8( )gis4 ~
	| [gis8 a(] fis4. [gis8 e )fis]
	| dis4 a'4.(-\sf [g8-\p fis )e]
	| dis4 a'4.(-\sf [g8-\p fis )e]
	| dis4 a'4.( [gis!8 a ais]
	| )b4 r r2

% 40
	| b,2(-\p ais4 a
	| )gis r r2
	| R1
	| a'2( gis4 )g
	| fis4( b4. [cis8 a )b]
	| gis!4 r r2
	| R1*2
	| a2( gis4 )g
	| fis4( b4. [cis8 a b]

% 50
	| )gis!4 a4.( [b8 gis a]
	| )fis4 gis4.( [a8 fis gis]
	| )e4 cis'4.( [d8 b cis]
	| )a4 b4.( [cis8 a b]
	| )gis4 b(_\cresc a )gis
	| fis4-\f fis2( )gis4
	| a fis,2( )gis4
	| a fis'2( )gis4
	| b( a2 )gis4 ~
	| [gis8( fis cis'_\decresc a] [gis fis a )fis]

% 60
	| [d( cis fis cis] [b a cis )a]
	| [gis( fis eis fis] [gis fis a )fis]
	| b2(-\p )e,!
	| cis'( )dis,
	| r8 [b'(-\f )b' b-.] r [e,( )gis gis-.]
	| r [e( )cis' cis-.] r [fis,,( )dis' dis-.]
	| e4 r r [gis,8(-\p b]
	| [e b gis b] )e4 b'
	| a2( )gis4 [gis,8( b]
	| [e b gis b] )e4 b'

% 70
	| dis,2( )e4 r
	| r b' b b
	| b4.( [cis16 b] )e4 r
	| r b b b
	| b4.( [a16 fis] )e4 b
	| \slurHeadToStem b4.( [a16 fis] )e4 gis
	| \slurHeadToStem b4.( [a16 fis] )e4 b'-.
	| d!-. r r b'-.
	| d-. r r2
	| fis,2( e4 )dis

% 80
	| d! r r2
	| e2( dis4 )d
    }

    \repeat volta 2 {
        cis4(-\f )c b4.( [cis16 )b]
	| ais4-. d-. cis-. d'-.
	| cis-. r r2^\fermata
	| R1*3
	| c,2(-\p b4 )bes
	| a( d4. [e8 c )d]

% 90
	| b!4 r r2
	| R1*2
	| c'2( b4 )bes
	| a( d4. [e8 c )d]
	| b!4 r r2
	| r8 [e,-\f e e] [fis e gis! e]
	| a4 r r2
	| r8 [fis fis fis] [gis fis ais fis]
	| b4 r r2

% 100
	| R1
	| cis2( bis4 )b
	| ais4 r r2
	| b2( ais4 )a
	| gis4 r r2
	| a2( gis4 )g
	| fis( eis e )dis
	| [d!8 d cis cis] [b b a a]
	| [gis! gis'! gis gis] [gis gis gis gis]
	| cis2( b4 )a

% 110
	| [gis8 gis, gis' gis] [gis gis gis gis]
	| cis2( b4 )a
	| gis-. a-. gis-. a-.
	| gis r r2
	| \lowerDynamics fis,1(-\p
	| )g
	| fis2( )e
	| a1( ~
	| a2 gis!
	| g )fis

% 120
	| b( )e,
	| e1
	| fis'(
	| )g
	| fis2( )e
	| a1
	| g(
	| )a
	| g2( )fis
	| b1(

% 130
	| ais
	| a!
	| gis!
	| )g
	| fis2(_\cresc e
	| d )cis
	| b4-\f r b r
	| c r c r
	| d r b' r
	| c r c, r

% 140
	| b r [gis8(-\p e a fis]
	| )b4 r [b8( gis cis! a]
	| )d4 r \parentShift [d8(_\parentF )b gis'-. gis-.]
	| [gis( )e b'-. b-.] [b( )gis d'-. d-.]
	| d4 r r2
	| e,2(-\p dis4 )d
	| cis4 r r eis(
	| )fis fis4.( [g8 e )fis]
	| d4 r r2
	| d2( cis4 )c

% 150
	| b r r dis(
	| )e e4.( [fis8 d! )e]
	| cis4 r r2
	| r8 [a a a] [b a cis a]
	| d4 r r2
	| r8 [b b b] [cis b dis b]
	| e4 r r2
	| r4 a4.( [b8 g a]
	| )fis4 fis4.( [g8 e fis]
	| )d4 d4.( [e8 cis )d]

% 160
	| b4 r r2    % NOT )b4!
	| e2(-\f dis4 )d
	| cis r r eis(
	| )fis fis4.( [g8 e )fis]
	| d4 r r2
	| d2( cis4 )c
	| b r r dis(
	| )e e4.( [fis8 d! )e]
	| cis4 r r2
	| r4 d4.( [e8 cis )d]

% 170
	| b4( e4. [fis8 d )e]
	| cis4 fis4.( g8 )e4 ~
	| [e8 fis(] d4. [e8 cis )d]
	| b4 r r2
	| R1*2
	| r4 b'4.( [cis8 a )b]
	| gis4.( )a8 fis4.( )gis8
	| e4.( )fis8 d4.( )e8
	| cis4.( )e8 a4.( )dis,8

% 180
	| [e8-. b-.] d4.(-\sf [c8-\p b a]
	| )gis4 d'4.(-\sf [c8-\p b a]
	| )gis4 d'4.(-\sf [cis!8-\p d dis]
	| )e4 r r2
	| \lowerDynamics e,2(-\p dis4 d
	| )cis r r2
	| R1
	| d'2( cis4 )c
	| b( e4. [fis8 d )e]
	| cis!4 r r2

% 190
	| R1*2
	| d'2( cis4 )c
	| b( e4. [dis8 e )d]
	| [cis a a a] [a a a a]
	| a1:8
	| [a8( )a, a' a] a2:8
	| a1:8
	| a4_\cresc e'( d )cis
	| b-\f b2( )cis4

% 200
	| d b,2( )cis4
	| d b'2( )cis4
	| e4( d2 )cis4 ~
	| [cis8( b fis' d] [cis_\decresc b d )b]
	| [g( fis b fis] [e d fis )d]
	| [cis( b ais b] [cis b d )b]
	| e2(-\p )a,!
	| fis'( )gis,
	| ais1-\sfp ~
	| [ais8( b fis' d] [cis b d )b]

% 210
	| [g( fis b fis] [e d fis )d]
	| [cis( b ais b] [cis b d )b]
	| e2( )a,!
	| fis'( )gis,
	| r8 [e'(-\f )e' e-.] r [cis( )a' a-.]
	| r [fis( )d' d-.] r [b,( )gis' gis-.]
	| a4 r r [cis,8(-\p e]
	| [a e cis e] )a4 e'
	| d2( )cis4 [cis,8( e]
	| [a e cis e] )a4 e'

% 220
	| gis,2( )a4 r
	| r e e e
	| \raiseScript gis4.(^\trill [fis16 gis] )a4 r
	| r e( )e' e
	| e4.( [d16 b] )a4 e
	| e4.( [d16 b] )a4 cis,
	| e4.( [d16 b] )a4 cis'-.
	| e-. r r cis'-.
	| e-. r r2

        | e,2(-\p dis4 )d
    }

% 230
    | cis4 r r cis


    | [d8( e fis e] d4 )cis
    | b r r2
    | cis2( bis4 b
    | a d cis c
    | b e dis d
    | [)cis8 e e e] [fis e gis e]
    | a4 r r2
    | R1*2

% 240
    | r8 [gis gis gis] [a gis b gis]
    | cis2( bis4 b
    | a d cis c
    | b e dis d
    | \stemDown [)cis8-\f a, a a] \stemBoth [b a cis a]
    | [d fis d b] [cis b dis b]
    | [e b' gis e] [fis e gis e]
    | [a e a e] [b' e, cis' e,]
    | d'4-. r r2
    | e,2(-\p dis4 )d

% 250
    | cis r r2
    | r8 [e' e e] [e d cis b]
    | a4 r r2
    | e,2( dis4 )d
    | cis4 r r2
    | r8 [e' e e] [e d cis b]
    | a4 r r2
    | e'2( dis4 )d
    | cis4 r r2
    | cis2( c4 )b

% 260
    | a4 r r2
    | r8 [e'-\pp e e] [fis e gis e]
    | a4 r r2 \bar "|."
}


\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino I."

	\violinIFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 160
    }

    \paper { }
}
