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




\include "viola-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola."

	\time 3/4
	\partial 4

	\violaFirstMov
	\context Voice=markings { \markingsI }
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}

\include "viola-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola."

	\time 3/4

	\violaSecondMov
	\context Voice=markings { \markingsII }
	\context Voice=markingsBis { \markingsIIbis }
    >

    \midi {
       \tempo 4 = 130
    }

    \paper { }
}

violaThirdMov = \notes \relative fis {
    \key d \major
    \clef alto

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(make-moment 1 8)

    \repeat volta 2 {
	r4
	| fis8-\p r a r
	| a r r4
	| r8 [e( fis )a]
	| [cis( )d] [d( cis]
	| [b )cis] [cis( b]
	| [a )gis] [a(-\sf ais]
	| )b r [e8.(-\p )gis16]
	| a8 r
    }

    \repeat volta 2 {
	r4
	| r8 [a,( g! )fis]

% 10
	| [c'( )b] r a
	| r a r g
	| [fis( )e] [d'( cis!]
	| [b )cis] [d(-\f cis]
	| [b )cis] [g'(-\p fis]
	| )g r r \LowerText g(_\cresc \noBreak
	| [cis, )d] [e8.^\trill d32 e]
	| \times 2/3 { \lowerDynamics [fis16(-\f )d a'-.] [g( )e b'-.]
          } [a8. cis,16]
	| d8 r
    }

    \repeat volta 2 {
	r4
	| r8 [fis,(-\p a )d]

% 20
	| r [g,( b )d]
	| r [cis( e )a]
	| r [a,( d cis]
	| [b )cis] [cis( b]
	| [a )b] [cis(-\f )e]
	| fis4 [e8.( )d16]
	| cis8 r
    }

    \repeat volta 2 {
	r4
	| r8 [e,(-\f \LowerDynamics fis-\p )dis']
	| r [e,( \LowerText a_\cresc )g']
	| r [a,( e' )g-\f]

% 30
	| r \lowerDynamics [a,(-\p d cis]
	| [b )cis] [d( cis]
	| [b )cis] [g'(-\f fis]
	| )g r [fis(-\p )a]
	| [cis( )d16] r a4-\f ~
	| a16 r d,-\p r [a'8.( )g16]
	| fis8 r
    }

    \repeat volta 2 {
        r4
	| R2
	| r8 \raiseSlur \lowerDynamics [<e,(-.-\p g> <e-. g> <)e-. g>]
	| <e4 g> r

% 40
	| r8 d fis'4-\fp
	| [gis16( )e e8] [cis, cis'-\fp]
	| [dis16( b gis' )e] [cis16.(-\f )e32] [d16.( )b32]
	| [e,16. e'32] [d16.( )b32] [e8 gis^\trill]


        | a8 r
    }

    \repeat volta 2 {
        r4


	| \property Score.currentBarNumber = #45 \lowerDynamics
          fis,8(-\p a4 )b8
	| [c16( )b b8] r cis!
	| r d r g,
	| r a fis'4-\fp
	| [gis16( )e e8] [b b'-\fp]

% 50
	| [cis16( )a a8] [g!16.( )b,32 c16.( )fis32]
	| [g8 g,(-\p] )a r
	| r4 [d'16.(-\f )b32 a16.( )cis32]
	| [d16.( )a32 g16.( )e32] [a8 cis^\trill]

        | d8 r
    }

    \repeat volta 2 {
        r4


	| \property Score.currentBarNumber = #55 r8 d-\p ~ [d16 cis32
          b] [b( )a g fis]
	| [a8( )g16] r r4
	| r8 e' ~ [e16 d32( )cis] [b( )a b( )g]
	| [eis8( )fis16] r r4
	| r [fis8( e!]

% 60
	| [dis )e] \lowerDynamics [a,(-\p ais]
	| \lowerText [b_\cresc )c] [cis8.( e32 )d]
	| cis8 r
    }

    \repeat volta 2 {
        r4
	| r8 e-\p ~ [e16( dis c' )b]
	| [a8( )g16] r r4
	| r8 a ~ [a16( )b] [a32( )g fis( )e]
	| [d8( )cis16] r r8 d'( ~
	| [d )cis] r b( ~
	| [b )a] [g( fis]
	| [e )fis] [a(_\cresc )g]
	| [e()d] [dis( e]
	| [e )f] [a8.(-\fp )cis,16]
	| d8 r
    }
    
    \key d \minor

    \repeat volta 2 {
        \raiseSlur \lowerDynamics [f,8(-. )f-.]
	| f4. ~ \times 2/3 { [f16( g )a] }
	| bes4. e,8(
	| g4. )e8
	| [cis'( )d] r d ~
	| [d( )c!] [c, c'(] ~
	| [c )b] \times 2/3 { r16 [c( b] [c e )c] }
	| \times 2/3 { r [a( gis] [a c )a] } [b8-. e-.]

% 80
	| e r
    }

    \repeat volta 2 {
        r4 \noTupletNum
	| r4 \times 2/3 { r16 [e(-\p cis] [e cis )a] }
	| d8 r \times 2/3 { r16 [f( d] [f d )a] }
	| g'4 [f8.(^\trill e32 )d]
	| cis8 r r4
	| r \times 2/3 { r16 [e(-\f cis] [e cis )a] }
	| d8 r \times 2/3 { r16 [f( d] [f d )a] }
	| d8 r \times 2/3 { r16 [cis( d] [f e )d] }
	| cis8 r [g-\p g'] ~
	| [g( )f] [f, f'] ~

% 90
	| [f( )e] \times 2/3 { r16 [f(-\f e] [f a )f] }
	| \times 2/3 { r16 [d( cis] [d f )d] } [e8-. e-.]
	| d r \times 2/3 { r16 \lowerDynamics [d,(-\p cis] [d f )d] }
	| \times 2/3 { r16 [b'( a] [b d )f,] } [e8-. e-.]
	| d r \tupletNum
    }

    \key d \major

    \repeat volta 2 {
        r4
	| R2*2
	| r8 \lowerDynamics [a'(-\p b cis]
	| [)d fis,( g )a]
	| [b( g a )b]

% 100
	| [cis( a b )cis]
	| [d( fis] )e4
	| e8 r [a,(-\f )cis]
	| d r r4
	| r [e,8( )gis]
	| a8 r r4
	| r [d8( )c]
	| b( e4 )d8 ~
	| [d16.( )b32 cis!16.( )d32] e4
	| [fis16.( )a,32 b16.( )cis32] [b8.(^\trill a32 )b]

% 110
	| a8 r [fis'(-\p )e]
	| dis8( g4 )fis8( ~
	| [fis )e] ~ [e16.( )f32 d!16.( )e32]
	| cis8 (fis!4 )e8 ~
	| [e( d16. )cis32] d8 r
	| R2
	| [g,8( fis e )a] ~
	| [a g'(] [)fis e16.( )cis32]
	| [d8 a'-\f] ~ [a16.( )b32 g16.( )a32]
	| [fis16.( )g32 e16.( )fis32] [dis8-. fis-.]

% 120
	| e8 r r4
	| r8 a ~ [a16.( )b32 g16.( )a32]
	| [fis16.( )g32 e16.( )fis32] d8 r
	| r4 [g8(-\p fis]
	| [e )a] ~ [a16.( )b32 g16.( )a32]
	| [fis8-. b-. a-. g-.]
	| fis r
    }

    \repeat volta 2 {
        r4 d4.(-\p )a8
	| g'4.( )fis8
	| [e( d cis )e]

% 130
	| [e( )d16] r [cis8( d] ~
	| [d )a] r4
	| r8 a'4( )b8
	| [a( )fis] [b,( )e]
	| [e( )cis16] r
    }

    \repeat volta 2 {
        \RaiseSlur [cis8(-. )cis-.]
	| [dis( e fis )b,]
	| [cis( d! e )a,]
	| a4 r8 e'
	| [gis( )a16] r [cis,8( d] ~
	| [d )a] r4

% 140
	| r8 [c'( b bes]
	| [a )b!] a4 ~
	| [a8-\f a,( b )e]
	| [fis( )b] [e,( a16 )g]
    }

    \alternative {
        { fis8 r }
	{ [fis16 d,32 d] [d16 d] }
    }

    \cadenzaOn \bar "||" [fis,16-. d-. fis-. d-.] \cadenzaOff \bar "|"
    | \property Score.currentBarNumber = #145 [fis16-\p d32 d] [d16 d]
      [fis-. d-. fis-. d-.]
    | [g d32 d] [d16 d] [g-. d-. g-. d-.]
    | [e d32 d] [d16 d] [g-. d-. e-. d-.]
    | [fis d32 d] [d16 d] [fis-. d-. fis-. d-.]
    | [a' d,32 d] [d16 d] [a'-. d,-. a'-. d,-.]

% 150
    | [g d32 d] [d16 d] [fis d32 d] [d16 d]
    | [b'-. d,-. a'-. d,-.] [g-. d-. fis-. d-.]
    | a'4 r8 a'
    | a4 r8 a
    | a4 r8 g(
    | )f4 r8 f(
    | )e4 r8 cis(
    | < { )d4. } \context Voice=x { s8 \LowerText s8_\cresc } > d8(
    | [)e8. e16(] [)d8. fis16(]
    | [)g8. g16(] [)fis8. d16]

% 160
    | cis4-\f ~ cis8 r
    | R2
    | r8 \lowerDynamics [e,(-\p cis d]
    | )e r r4
    | fis4( )b
    | b r
    | r8 [e,( fis )g]
    | [cis( )d] [d( cis]
    | [b )cis] [d(-\f cis]
    | [b )cis] [g'(-\p fis]

% 170
    | )g r r \LowerText g_\cresc \noBreak
    | [cis,( )d] [e8.^\trill d32 e]
    | \times 2/3 { \LowerDynamics [fis16(-\f )d a'-.] [g( )e b'-.] }
      [a8.( )cis,16]
    | d8 r r4
    | \lowerDynamics e,4.(-\p )fis8
    | [g( fis )e] a' ~
    | [a g fis] [e16.( )cis32]
    | [d8 \lowerDynamics fis,(-\f g a]
    | [)b g( a )b]
    | [a cis(] [d )a'] ~

% 180
    | [a g a a]
    | a4 r
    | fis4.(-\p )e8
    | d4 r
    | a4.( )g8
    | fis r fis r
    | fis4 r \bar "|."
}


\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola."

	\time 2/4
	\partial 4

	\violaThirdMov
	\context Voice=markings { \markingsIII }
    >

    \midi {
       \tempo 4 = 44
    }

    \paper { }
}

\include "viola-iv.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola."

	\violaFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 160
    }

    \paper { }
}
