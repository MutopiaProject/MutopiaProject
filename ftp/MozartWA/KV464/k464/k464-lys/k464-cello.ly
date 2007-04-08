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



\include "cello-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"cello"
	\property Staff.instrument = "Cello."

	\time 3/4
	\partial 4

	\celloFirstMov
	\context Voice=markings { \markingsI }
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}

\include "cello-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"cello"
	\property Staff.instrument = "Cello."

	\time 3/4

	\celloSecondMov
	\context Voice=markings { \markingsII }
	\context Voice=markingsBis { \markingsIIbis }
    >

    \midi {
       \tempo 4 = 130
    }

    \paper { }
}

celloThirdMov = \notes \relative d {
    \key d \major
    \clef bass

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(make-moment 1 8)

    \repeat volta 2 {
	r4
	| d8-\p r d r
	| e r r4
	| r8 [g,( fis )cis']
	| d4 r
	| r [a'8( gis]
	| [fis )e] cis4(-\sf
	| )d8 r [e-\p e]
	| [a, a']
    }

    \repeat volta 2 {
	r4
	| r8 [a,( b )c]

% 10
	| [dis,( )e] r cis'!
	| r d r g,
	| a4 r
	| r [b'8(-\f a]
	| [gis )a] r4
	| r r8 a(_#'(columns (dynamic "p") (italic " cresc.")) \noBreak
	| [ais b gis )g]
	| [fis-\f g] [a a,]
	| d r
    }

    \repeat volta 2 {
        r4
	| d4(-\p )fis

% 20
	| e( )b
	| a( )cis
	| d r
	| r [a'8( gis]
	| [fis )gis] cis,4(-\f
	| )d [e8 e]
	| [a, a']
    }

    \repeat volta 2 {
        r4
	| c,(-\f )b-\p
	| < { e( } \context Voice=x { s8 s8_\cresc } > )cis!4
	| d( )g,

% 30
	| a-\f r
	| r [b'8(-\p a]
	| [gis )a] [g(-\f a]
	| )g r [a(-\p )a-.]
	| d, r g4(-\f
	| )fis16 r g-\p r [a8 a,]
	| d r
    }

    \repeat volta 2 {
        r4
        | d8-\p r d r
	| d4 ~ [d16 cis32( d] [)e16 d-.]
	| cis8 r a r

% 40
	| d4 r8 d'-\fp ~
	| [d( )cis] [a, a'-\fp] ~
	| [a( )gis] [a,(-\f )b]
	| [cis( )d] [e e,]



        | a8 r
}

    \repeat volta 2 {
        r4
	| b8-\p r dis r


	| [e8.( )d!16] cis8 r
	| d r g, r
	| a r r d'-\fp ~
	| [d( )cis] [g, g'-\fp] ~
	| [g( )fis] [g(-\f )a]
	| g r r a,(-\p
	| [ais )b] [gis(-\f )g]
	| [fis( )g a-. a-.]


        | d,8 r
    }

    \repeat volta 2 {
        r4
	| r d'(-\p


	| )e8 r r4
	| r cis(
	| )d8 r [b( a]
	| [gis )a] a'4( ~

% 60
	| [a8 )gis] cis,4-\p
	| [d8(_\cresc )dis] [e-\fp e,]
	| a r
    }

    \repeat volta 2 {
        r4
	| r8 [c(-\p b )dis]
	| e r [a( )g]
	| [fis-. fis,(] [g8. gis16]
	| )a8 r r4
	| R2
	| r4 [e''8( d]
	| [cis )d] [a(_\cresc ais] ~

% 70
	| [ais )b] [a!( g]
	| [fis )gis] [a-\fp a,]
	| d r
    }

    \key d \minor

    \repeat volta 2 {
        r4
	| \times 2/3 { [d16(-\p cis d] [f a f] } )d8 r
	| \times 2/3 { [g,16( fis g] [bes d bes] } )g8 r \noTupletNum
	| \times 2/3 { [a16( gis a] [cis e cis] } )a8 r
	| \times 2/3 { [d16( cis d] [f a f] } )d8 r
	| r4 [a8 a'(] ~
	| [a )gis] \times 2/3 { r16 [a(-\f gis] [a c )a] }
	| \times 2/3 { r16 [f( e] [f a )f] [d( c )d] [e( d )e] }

% 80
	| a,8 r \tupletNum
    }

    \repeat volta 2 {
        r4
	| a8-\p r a r
	| a r a r
	| a r a r
	| \times 2/3 { r16 [a-\f cis] [e cis e] [a cis a] [e cis e] }
	| a,8 r a r
	| a r a r
	| b2(
	| )a8 r r4
	| r [d8-\p d'] ~

% 90
	| [d( )cis] \times 2/3 { r16 \LowerDynamics [d(-\f cis] [d f
          )d] }
	| \times 2/3 { r16 [bes( a] [bes d )bes] \noTupletNum [g( f
          )g] [a( g )a] }
	| bes8 r \times 2/3 { r16 \lowerDynamics [bes,(-\p a] [bes d
          )bes] }
	| \times 2/3 { r16 [gis( fis] [gis b )gis] [a( gis )a] [a( gis
          )a] } \tupletNum
	| d,8 r
    }

    \key d \major

    \repeat volta 2 {
        r4
	| R2
	| r8 \lowerDynamics [e(-\p fis )g]
	| a r r4
	| r8 [d,( e )fis]
	| [g( e fis )g]

% 100
	| [a( fis g )a]
	| b2(
	| )a8 r r4
	| r [b8(-\f )dis]
	| e r r4
	| r [a,8( )c]
	| d!8 r r4
	| r [g8( )fis]
	| e( a4 )g8
	| [fis( e16. )d32] [e8 e]

% 110
	| [a, a'] r4
	| r8 [b,(-\p cis )dis]
	| e4 r
	| r8 [a,( b )cis]
	| d!4 r
	| gis,2
	| a4.( )cis8
	| [d g a a,]

	% The (f) is mine, not Breitkopf's
	| d4 r8 \parentShift a'_\parentF ~
	| [a16.( )b32 g16.( )a32] [fis8-. dis-.]

% 120
	| [e e'] ~ [e16.( )fis32 d16.( )e32]
	| [cis16.( )d32 b16.( )cis32] [a8-. cis,-.]
	| d r [d(-\p )cis]
	| [b( )e] ~ [e16.( )fis32 d16.( )e32]
	| [cis8( )d a cis]
	| [d g a a,]
	| d r
    }

    \repeat volta 2 {
        [d16-.-\p a-. d-. a-.]
	| [d a32 a] [a16 a] [d-. a-. fis'-. a,-.]
	| [e' a,32 a] [a16 a] [e'-. a,-. d-. a-.]
	| [cis-. a-. d-. a-.] [e'-. a,-. cis-. a-.]

% 130
	| [d a32 a] [a16 a] [g'-. a,-. fis'-. a,-.]
	| [eis'-. a,-. fis'-. a,-.] [d-. a-. cis-. a-.]
	| [bis-. a-. cis-. a-.] [d-. a-. gis'-. a,-.]
	| [a'-. a,-. dis-. a-.] [e'-. a,-. d-. a-.]
	| [cis a32 a] [a16 a]
    }

    \repeat volta 2 {
        [a'-. a,-. g'!-. a,-.]
	| [fis'-. a,-. e'-. a,-.] [dis-. a-. fis'-. a,-.]
	| [e'-. a,-. d!-. a-.] [cis-. a-. e'-. a,-.]
	| [d-. a-. fis'-. a,-.] [g'-. a,-. gis'-. a,-.]
	| [a' a,32 a] [a16 a] [g'!-. a,-. fis'-. a,-.]
	| [eis'-. a,-. fis'-. a,-.] [e'-. a,-. d-. a-.]

% 140
	| [cis-. a-. dis-. a-.] [e'-. a,32-. a-.] [cis16-. a-.]
	| [d! a32 a] [gis'16-. a,-.] [a'-. a,-. g'-. a,-.]
	| [fis'-.-\f a,-. f'-. a,-.] [e' a,32 a] [cis16-. a-.]
	| [d a32 a] [gis'16 a,] [a' a,32 a] [a16 a]
    }

    \alternative {
        { [d a32 a] [a16 a] }
	{ d8 r }
    }

    \cadenzaOn \bar "||" r4 \cadenzaOff \bar "|"
    | \property Score.currentBarNumber = #145 d'2-\p ~
    | d4 r
    | a2-\f ~
    | a4( )d8 r
    | d2-\p ~

% 150
    | d8 r d r
    | [d-. d-. cis-. d-.]
    | e4 r8 g(
    | )f4 r8 f(
    | )e4 r8 e(
    | )d4 r8 d(
    | [)cis a,(] )a'4 ~
    | [a8 a,(_\cresc] )a'4 ~
    | [a16 a,( )a'8.] [a,16( )a'8] ~
    | [a16 a,( )a'8.] [a,16( )a'8]

% 160
    | a,4-\f ~ a8 r
    | R2
    | r8 \lowerDynamics [g(-\p e d]
    | )cis r r4
    | d'4( )dis
    | e r
    | r8 [g,( fis )cis]
    | d4 r
    | r [b''8(-\f a]
    | [gis )a] r4

% 170
    | r r8 a(_#'(columns (dynamic "p") (italic " cresc.")) \noBreak
    | [ais b gis )g]
    | [fis-.-\f g-. a-. a,-.]
    | d r r4
    | gis,2-\p
    | a4.( )cis8
    | [d g a a,]
    | [d16-\f a32 a] [d16-. a-.] [e'-. a,-. fis'-. a,-.]
    | [g' a,32 a] [e'16-. a,-.]  [fis'-. a,-. g'-. a,-.]
    | [a' a,32 a] [g16-. g'-.] [fis-. fis,-. e-. e'-.]

% 180
    | [d,-. d'-. g,-. g'-.] [a-. g-. a-. a,-.]
    | [d d,32-\p d] [d16 d] [fis-. d-. a'-. d,-.]
    | [d' d,32 d] [d16 d] [fis-. d-. a'-. d,-.]
    | [d' d,32 d] [d16 d] [fis-. d-. a'-. d,-.]
    | [d' d,32 d] [d16 d] [fis-. d-. a'-. d,-.]
    | d'8 r d, r
    | d4 r \bar "|."
}




\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"cello"
	\property Staff.instrument = "Cello."

	\time 2/4
	\partial 4

	\celloThirdMov
	\context Voice=markings { \markingsIII }
    >

    \midi {
       \tempo 4 = 44
    }

    \paper { }
}

celloFourthMov = \notes \relative b {
    \key a \major
    \clef bass

    \noTupletBracket

    R1
    \repeat volta 2 {
	R1*2
	| r4 b(-\p cis d
	| )e r r2
	| R1*2
	| r4 cis,4.( [d8 b )cis]
	| a4 r r2

% 10
	| r4 e'4.( [fis8 d )e]
	| cis4 r r2
	| r4 cis'4.( [d8 b )cis]
	| a4 r r2
	| R1
	| r4 e( gis )a
	| e r r2
	| R1*2
	| r4 fis,(-\f gis ais

% 20
	| b cis d )dis
	| e r r2
	| R1
	| r4 e,( fis )gis
	| a( b )cis2
	| \raiseSlur d4( b cis )d
	| e2 b'
	| fis b,4( cis
	| d b cis )a
	| e e'4.( [fis8 d )e]

% 30
	| cis4( fis4. [gis8 e )fis]
	| d4.( e8 cis4. )d8
	| b2 cis4 dis
	| e ais, b2-\sf
	| b-\sf b-\sf
	| b-\sf b-\sf
	| b4 r c2-\sf
	| b-\p c-\sf
	| b4 r b'-.-\f c-.
	| b b,4.( [ais8 b )a]

% 40
	| gis4 r r2
	| [e8-\p e e e] e2:8
	| e1:8
	| e1:8
	| e1:8
	| [e8 e' e e] e2:8
	| e1:8
	| e1:8
	| e1:8
	| e1:8

% 50
	| e4 r r2
	| R1*4
	| r4 a4.(-\f [b8 gis a]
	| )fis4 a4.( [b8 gis a]
	| )fis4 a4.( [b8 gis )a]
	| fis2( )gis
	| a4r r2

% 60
	| R1*2
	| \lowerDynamics b,2(-\p )cis
	| a( )b
	| gis4-\f r cis' r
	| a r b r
	| [e,8 e e e] e2:8-\p
	| e1:8
	| e1:8
	| e1:8

% 70
	| e2:8 [e8 e, e e]
	| e1:8
	| e1:8
	| e1:8
	| e1:8
	| e1:8
	| e2:8 e4 r
	| r gis'-. b-. r
	| \clef tenor e2( fis4 )g
	| gis! r r2 \clef bass

% 80
	| e,2( fis4 )gis
	| a r r2
    }

    \repeat volta 2 {
        | a2(-\f gis4 )g
	| [fis8 fis d b] [fis' fis d b]
	| fis'4 r r2^\fermata
	| [g,8-\p g g g] g2:8
	| g1:8
	| g1:8
	| g1:8
	| g1:8

% 90
	| [g8 g' g g] g2:8
	| g1:8
	| g1:8
	| g1:8
	| g1:8
	| \lowerDynamics g,2(-\f fis4 )f
	| e r r2
	| a2( gis!4 )g
	| fis!4 r r2
	| b'2( ais4 )a

% 100
	| gis! e dis gis
	| cis, r r2
	| r4 dis cis fis
	| b, r r2
	| r8 [e e e] [fis e gis e]
	| a4 r r2
	| b2( ais4 )a
	| gis( a b )bis
	| cis2( bis4 )b
	| [a8 a, a' a] [b b bis bis]

% 110
	| cis2( bis4 )b
	| [a8 a, a' a] [b b bis bis]
	| [cis cis a fis] [cis' cis a fis]
	| cis'4 r r2
	| d,1(-\p
	|  )b
	| a2( )gis!
	| g1
	| fis2( )e
	| ais( )b

% 120
	| g( )gis
	| a1
	| d(
	| )b
	| a2( )g
	| fis1
	| e( )c'
	| b2( )a
	| gis1

% 130
	| fis(
	| )b
	| e,(
	| )a
	| d_\cresc ~
	| d2( )dis
	| e4-\f r r2
	| R1
	| [gis8 b gis e] [d e d b]
	| [c e a e] [c e c a]

% 140
	|  e4 e' r2
	| r4 e-\p r2
	| r4 e r2
	| \parentShift e'4-\parentF r e r
	| e r r2
	| R1*3
	| r8 [b,8-\p b b] [cis b d b]
	| e4 r r2

% 150
	| R1*2
	| r8 [a,-\p a a] [b a cis a]
	| d4 r r2
	| r8 [b b b] [cis b d b]
	| e4 r r2
	| r8 [cis cis cis] [d cis e cis]
	| fis4 r r2
	| r4 d' cis fis
	| [b,8 e, e e] [gis e a e]

% 160
	| e'4 r r2
	| R1
	| cis2(-\f bis4 )b
	| ais \slurStemToHead fis,( gis ais
	| b cis d )dis
	| e r r2
	| b'2( ais4 )a
	| gis e,( fis gis
	| a b )cis2
	| \raiseSlur d4( b cis )d

% 170
	| e2( )b'
	| fis b,4( cis
	| d b cis )a
	| e e'4.( [fis8 d )e]
	| cis4( fis4. [gis8 e )fis]
	| d4.( )e8 cis4.( )d8
	| b2 cis4 dis
	| e2-\sf e-\sf
	| e-\sf e-\sf
	| e,1 ~

% 180
	| e4 r f2-\sf
	| e-\p f-\sf
	| e4 r e'-.-\f f-.
	| e e,4.( [dis8 e )d]
	| cis4 r r2
	| [a'8-\p a a a] a2:8
	| a1:8
	| a1:8
	| a1:8
	| [a8 a' a a] a2:8

% 190
	| a1:8
	| a1:8
	| a1:8
	| a1:8
	| a4 r r2
	| R1*4
	| r4 d4.(-\f [e8 cis d]

% 200
	| )b4 d4.( [e8 cis d]
	| )b4 d4.( [e8 cis )d]
	| b2( cis
	| )d4 r r2
	| R1*2
	| e,2(-\p )fis
	| d( )e
	| \lowerDynamics fis,2.(-\fp e4
	| )d r r2

% 210
	| R1*2
	| e2( )fis
	| d( )e
	| cis'4-\f r fis r
	| b, r e r
	| [a,8 a' a a] a2:8-\p
	| a1:8
	| a1:8
	| a1:8

% 220
	| a2:8 [a8 a, a a]
	| a1:8
	| a1:8
	| a1:8
	| a1:8
	| a1:8
	| a2:8 a4 r
	| r4 a cis-. r % The a is not staccato
	| a'2( b4 bis

        | )cis4 r r2
    }

    | fis2(-\p eis4 )e

    | d r r dis
    | [e8( fis gis fis] e4 )d
    | cis1(
    | )fis,4 r r dis'(
    | )e r r e(
    | )a, r r2
    | R1
    | fis'2( eis4 )e
    | [d8 b b b] [cis b d b]

% 240
    | e4 r r2
    | r8 [cis cis cis] [dis cis eis cis]
    | fis4 r r dis(
    | [)e8 e e e] [fis e gis e]
    | a2(-\f gis4 )g
    | fis( b ais )a
    | gis( e' dis )d
    | cis-. cis-. b-. a-.
    | gis-. r r2
    | r r4 eis'(-\p

% 250
    | )fis r d r
    | e!1(
    | )a,4 r r2
    | r r4 eis(
    | )fis r dis r
    | e! r e, r
    | a  r r2
    | R1*2
    | r8 [e e e] [fis e gis e]

% 260
    | a4 r r2
    | e'1(-\pp
    | )a,4 r r2 \bar "|."
}


\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"cello"
	\property Staff.instrument = "Cello."

	\celloFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 160
    }

    \paper { }
}
