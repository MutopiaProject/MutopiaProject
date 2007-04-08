% -*- LilyPond -*-

\version "1.6.6"

\include "paper16.ly"

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
\include "violin2-i.ly"
\include "viola-i.ly"
\include "cello-i.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = strings <

	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"

		\time 3/4
		\partial 4

		\violinIFirstMov
		\context Voice=markings { \markingsI }
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\time 3/4
		\partial 4

		\violinIIFirstMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\time 3/4
		\partial 4

		\violaFirstMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."

		\time 3/4
		\partial 4

		\celloFirstMov
	    >
	>
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}


\include "violin1-ii.ly"
\include "violin2-ii.ly"
\include "viola-ii.ly"
\include "cello-ii.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = strings <
	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"

		\time 3/4

		\violinISecondMov
		\context Voice=markings { \markingsII }
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\time 3/4

		\violinIISecondMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\time 3/4

		\violaSecondMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."

		\time 3/4

		\celloSecondMov
		\context Voice=markingsBis { \markingsIIbis }
	    >
	>
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


    }

    \alternative {
        { \cadenzaOn a8 r \cadenzaOff }
	{ \cadenzaOn a8 r \cadenzaOff }
    }

    \repeat volta 2 {
        \cadenzaOn [a8 a] \cadenzaOff \bar "|"


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

    }

    \alternative {
        { d8 r }
	{ d8 r }
    }

    \repeat volta 2 {
        \cadenzaOn \lowerDynamics [fis,16.(-\p )d32 g16.( )e32]
          \cadenzaOff \bar "|"

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

    }

    \alternative {
        { \cadenzaOn d8 r \cadenzaOff }
	{ \cadenzaOn d8 r \cadenzaOff }
    }

    \cadenzaOn r4 \cadenzaOff \bar "||"

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

violinIIThirdMov = \notes \relative a {
    \key d \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	r4
	| a8-\p r d r
	| cis r r4
	| r8 a4( )e'8
	| [e( )d] [fis( e]
	| [d )e] [fis( e]
	| [dis )e] g!4(-\sf
	| )fis8 r [cis8.(-\p e32 )d]
	| cis8 r
    }

    \repeat volta 2 {
	r4
	| r8 [c( b )a]

% 10
	| [fis'( )e] r e
	| r d r b
	| a4 [fis'8( e]
	| [d )e] [g(-\f fis]
	| [eis )fis] [b(-\p ais]
	| )b r r cis_\cresc \noBreak
	| e( )d4 a'8 ~
	| \times 2/3 { [a16(-\f )fis d-.] } \times 2/3 { [b( )g e-.] }
          [fis8.( a32 )g]
	| fis8 r
    }

    \repeat volta 2 {
        r4
	| r8 [a,(-\p d )fis]

% 20
	| r [b,( d )g]
	| r [e( a )g']
	| r [d,( fis e]
	| [d )e] [fis( e]
	| )dis e4 a8-\f ~
	| [a( )b] [a32( b bis cis] [b a b )gis]
	| a8 r
    }

    \repeat volta 2 {
        r4
	| r8 [a,(-\f \LowerDynamics dis-\p )a']
	| r [b,( \LowerText g'_\cresc )e']
	| r [fis,( g )b-\f]

% 30
	| r \lowerDynamics [e,(-\p fis e]
	| [d )e] [g( fis]
	| [eis )fis] [b(-\f c]
	| )b r [a(-\p )cis!]
	| [e( )d16] r
	  <
	    { \once \property Voice.Stem \override #'length = #11 e,4( |
	      \once \property Voice.Stem \override #'length = #15 )d16 }
	    \context Voice=x
	    { \stemOff \stemUp \slurUp cis'4( | )d16 }
	  > r16 b'-\p r [fis16.( eis32] [e d e )cis]
	| d8 r
    }

    \repeat volta 2 {
        \lowerDynamics [d32(-\p fis a fis] [d a d )a]
	| [d( fis a fis] [d a d )a] [d( fis a fis] [d a d )a]
	| [e'( g a g] [e a, e' )a,] [e'( g a g] [e a, e' )a,]
	| [e'( g a g] [e a, e' )a,] [cis( e a e] [cis a cis )a]

% 40
	| [d( fis a fis] [d a d )a] [d( fis b fis] [d b d )b]
	| \lowerDynamics [e(-\fp gis b gis] [a e a )e] [a( cis fis
          cis] [a fis a )fis]
	| [b(-\fp dis fis dis] [e b e )b] [a(-\f cis e )cis] [e( d b
          )gis]
	| [e( a cis )a] [fis( a fis )d] [cis( e cis a] [d e d )b]
    }

    \alternative {
        { \cadenzaOn [cis( e a gis] [g fis g )e] \cadenzaOff }
	{ \cadenzaOn [cis( e fis gis] [a gis b )a] \cadenzaOff }
    }

    \repeat volta 2 {
        \cadenzaOn [c'32(-\p d c b] [a g! fis )e] \cadenzaOff \bar "|"
	| \property Score.currentBarNumber = #45 [dis( fis a fis] [dis
          b dis )b] [fis'( a c a] [fis b, fis' )b,]
	| [e( g b g] [e b e )b] [e( g a g] [e a, e' )a,]
	| [d( fis a g] [fis e d )cis] [b( g' b a] [g fis e )d]
	| [fis( a fis )d] [e( a e )cis] [d( fis b fis] [d b d )b]
	| [e(-\fp gis b gis] [a e a )e] [g( b e b] [g e g )e]

% 50
	| [a(-\fp cis e cis] [d a d )a] [e(-\f g b g] [fis a fis )dis]
	| [e( b e g] [b-\p g b )g] [fis( a fis d] [g a g )e]
	| [cis( d e cis] [d e fis )d] [e(-\f gis b d] [e, a cis )e]
	| [a,( d fis d] [b d b )g!] [fis( a fis d] [g a g )e]
    }

    \alternative {
        { \cadenzaOn [fis( e d e] [fis g a )b] \cadenzaOff}
	{ \cadenzaOn fis8 r \cadenzaOff }
    }

    \repeat volta 2 {
        \cadenzaOn [d16.(-\p )a32 e'16.( )cis32] \cadenzaOff
	| \property Score.currentBarNumber = #55 fis8 r r4
	| r [cis16.( )a32 d16.( )b32]
	| e8 r r4
	| R2*2

% 60
	| r4 \lowerDynamics [g!8(-\p fis]
	| \LowerText [eis_\cresc )fis] \lowerDynamics [e8.(-\fp )gis16]
	| a8 r
    }

    \repeat volta 2 {
        [c,16.(-\p )a32 e'16.( )c32]
	| a'8 r r4
	| r4 [cis16.( )a32] [e'32( cis e )cis]
	| fis8 r r4
	| r4 r8 fis(
	| [f )e] [g( fis]
	| [eis )fis] r g( ~
	| [g )fis] \LowerText [fis,(_\cresc )e]

% 70
	| [cis'( )d] [c( b]
	| [ais )b] [fis8.(-\fp a32 )g]
	| fis8 r
    }

    \key d \minor

    \repeat volta 2 {
        \raiseSlur \lowerDynamics [a,8(-.-\p )a-.]
	| a4.( )d8
	| d4.( )g,8
	| e'4.( )cis8
	| [e( )d] r f( ~
	| [f )e] \times 2/3 { r16 [f( e] } \times 2/3 { [f a )f] }
	| \times 2/3 { [dis( fis dis] } \times 2/3 { [e gis )e] }
          [e'8.-\f \rbcOne r32 e,]
	| [c'8. \rbcOne r32 c,] [a'8-. b,-.]

% 80
	| a r
    }

    \repeat volta 2 {
        r4
	| \noTupletNum \times 2/3 { r16 \lowerDynamics [a(-\p cis] [e
          cis e] } )a8 r
	| \times 2/3 { r16 [a,( d] [f d f] } )a8 r
	| \times 2/3 { r16 [e( g] [a g )e] r [d( f] [a f )d] }
	| a8 r r4
	| \times 2/3 { r16 \lowerDynamics [a(-\f cis] [e cis e] } )g8 r
	| \times 2/3 { r16 [a,( d] [f d f] } )a8 r
	| \times 2/3 { r16 [cis,( d] [f cis d] } )f8 r
	| r4 [bes,8-\p bes'] ~
	| [bes( )a] \times 2/3 { r16 [bes( a] [bes d )bes] }

% 90
	| \times 2/3 { [gis( b gis] [a cis )a] } \tupletNum [a'8.-\f
          \rbcOne r32 a,]
	| [f'8. \rbcOne r32 f,] [d'8-. cis-.]
	| d r [gis,8.-\p \rbcOne r32 gis,32]
	| [f'8. \rbcOne r32 b,] [d8-. cis-.]
	| d r
    }

    \key d \major

    r4
    | r \lowerDynamics [d8(-\p )cis]
    | b( e4 )d8 ~
    | [d cis( d )e]
    | [a, d] ~ [d16.( )e32 cis16.( )d32]
    | [b8( )e] ~ [e16.( )fis32 d16.( )e32]

% 100
    | [cis8( )fis] ~ [fis16.( )g32 e16.( )fis32]
    | d4 ~ [d16( cis32 d] [e16 )d]
    | cis8 r r4
    | r4 \lowerDynamics [d8(-\f )c]

    % The Breitkopf score has b( cis4 )d8, but the cis is ambiguous
    % (there is no cautionary accidental although the previous and
    % the next bar both contain a natural c).  I prefer this solution,
    % which is the same adopted by Quartetto Italiano in the Philips
    % recording (8/1966) of this quartet: the interval between b and
    % e is the same as the interval between fis and b in bar #95
    % (violin I).
    | b( e4 )d8 ~

    | [d( c16. b32] [c16. d32 b16. )c32]
    | a8( d4 )a'8
    | [b cis16.(^\trill )b32] [cis8( )d]
    | [e16.( d32 cis16. )b32] [a8( )cis,]
    | [d16.( )a'32 gis16.( )fis32] [gis8.(^\trill fis32 )gis]
    
% 110
    | a8 r [a(-\p )g!]
    | fis( b4 )a8( ~
    | [a )g] ~ [g16.( )a32 f16.( )g32]
    | e8( a4 )g8 ~
    | [g( fis!16. )e32] fis8 r
    | [d( cis b )e] ~
    | [e16.( )fis32 d16.( )e32] [cis8( )e]
    | [d b'( a )g]
    | fis r r4
    | r r8 b-\f ~

% 120
    | [b16.( )c32 a16.( )b32] [g8 e'] ~
    | [e16.( )fis32 d16.( )e32] [cis!8 e]
    | [a, cis16(^\trill b32 cis] )d8 r
    | [d8(-\p cis b )e] ~
    | [e16.( )fis32 d16.( )e32] [cis16.( )d32 e8]
    | [d8-. e-. d-. cis-.]
    | d r

    \repeat volta 2 {
        r4
	| fis,4.(-\p )a8
	| a2 ~
	| a ~

% 130
	| a8 r [b( a]
	| [gis )a gis( )a] ~
	| [a( g! fis )f]
	| e( a4 )gis8
	| [a( )e16] r
    }

    \repeat volta 2 {
        \raiseSlur [e8(-. )e-.]
	| [fis( g a )dis,]
	| [e( f g )cis,]
	| d4.( )b'8
	| [b( )a16] r [b8( a]
	| [gis )a] [cis( )d]

% 140
	| a4( [gis8 g]
	| [fis )f] e4
	| r8 [dis'(-\f e )bes]
	| a d4( )cis8

    }

    \alternative {
        { d8 r }
	{ d8 r }
    }

    \cadenzaOn r4 \cadenzaOff \bar "||"


    | \property Score.currentBarNumber = #145 a2(-\p
    | )g4 r
    | \lowerDynamics cis,(-\f [e8 )g]
    | [fis8.( )d16] a'8 r
    | \lowerDynamics fis2(-\p

% 150
    | )g8 r a r
    | [d-. d-.] [a-. a-.]
    | [a16 a,32 a] [a16 a] [cis-. a-. cis-. a-.]
    | [d a32 a] [a16 a] [d-. a-. d-. a-.]
    | [a' a,32 a] [a16 a] [a'-. a,-. a'-. a,-.]
    | [a' a,32 a] [a16 a] [a'-. a,-. a'-. a,-.]
    | a'4 r8 a(
    | < { )gis4. } \context Voice=x { s8 \LowerText s8_\cresc } > gis(
    | [)g!8. g16(] [)fis8. d'16(]
    | [)cis8. cis16(] [)d8. fis,16]

% 160
    | e4-\f ~ e8 r
    | R2
    | r8 g,4-\p g8
    | g r r4
    | a4( )fis'
    | [fis8( )e] r4
    | r8 a,4( )e'8
    | [e( )d] [fis( e]
    | [d )e] [g(-\f fis]
    | [eis )fis] [b(-\p ais]

% 170
    | )b r r cis(_\cresc \noBreak
    | e d4 )a'8 ~
    | \times 2/3 { [a16( )fis d-.] } \times 2/3 { [b( )g e-.] }
      [fis8.( a32 )g]
    | fis8 r r4
    | \lowerDynamics [d8(-\p cis )b] r
    | [e16.( )fis32 d16.( )e32] [cis8 e'(]
    | [)d b] [a g]
    | fis \lowerDynamics d4(-\f )cis8
    | [b e] ~ [e16.( )fis32 d16.( )e32]
    | [cis8 e( a )cis]

% 180
    | [d b] [fis16.( )g32 e16.( )g32]
    | fis4 r
    | a4.(-\p )g8
    | fis4 r
    | fis4.( )e8
    | d r a r
    | a4 r \bar "|."
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


    }

    \alternative {
        { a8 r }
        { a8 r }
    }

    \repeat volta 2 {
        \cadenzaOn r4 \cadenzaOff \bar "|"


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

    }

    \alternative {
        { d8 r }
        { d8 r }
    }

    \repeat volta 2 {
        \cadenzaOn r4 \cadenzaOff \bar "|"


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



    }

    \alternative {
        { a8 r }
        { a8 r }
    }

    \repeat volta 2 {
        \cadenzaOn r4 \cadenzaOff \bar "|"
	| \property Score.currentBarNumber = #45 b'8-\p r dis r


	| [e8.( )d!16] cis8 r
	| d r g, r
	| a r r d'-\fp ~
	| [d( )cis] [g, g'-\fp] ~
	| [g( )fis] [g(-\f )a]
	| g r r a,(-\p
	| [ais )b] [gis(-\f )g]
	| [fis( )g a-. a-.]


    }

    \alternative {
        { d,8 r }
        { d,8 r }
    }

    \repeat volta 2 {
        \cadenzaOn r4 \cadenzaOff \bar "|"
	| \property Score.currentBarNumber = #55 r d(-\p


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
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = strings <
	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"

		\time 2/4
		\partial 4

		\violinIThirdMov
		\context Voice=markings { \markingsIII }
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\time 2/4
		\partial 4

		\violinIIThirdMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\time 2/4
		\partial 4

		\violaThirdMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."

		\time 2/4
		\partial 4

		\celloThirdMov
	    >
	>
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

    }

    \alternative {
        { e,2( dis4 )d }
	{ e,2(-\p dis4 )d }
    }

% 230
    | cis,4 r r cis


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

violinIIFourthMov = \notes \relative a' {
    \key a \major
    \clef violin

    \noTupletBracket

    R1

    \repeat volta 2 {
	| r4 a(-\p cis b
	| ais fis gis )ais
	| b d4.( [e8 cis )d]
	| b4 r r2
	| r4 gis( b a
	| gis e fis gis
	| )a r r2
	| r4 e4.([ fis8 d )e]

% 10
	| cis4 r r2
	| r4 cis'4.( [d8 b )cis]
	| a4 r r2
	| r4 a( b )cis
	| d d4.( [e8 cis )d]
	| b4 b4.( [cis8 a )b]
	| [gis-. a-. gis-. fis-.] [e-. d-. cis-. b-.]
	| cis4 r r2
	| \lowerDynamics e2(-\f dis4 )d
	| cis ais'( b )cis

% 20
	| [d8( e  cis d] [b cis a! )b]
	| gis4 r r2
	| d2( cis4 )c
	| b gis'( a )b
	| [cis8( d b cis] [a b gis )a]
	| fis4( )gis e( a ~
	| [a8 b gis )a] \slurStemToHead fis4( b ~
	| [b8 cis a )b] g4.( )a8
	| fis4.( )gis!8 e2
	| e4 r r2

% 30
	| R1
	| r2 r4 e'( ~
	| [e8 fis d )e] cis4( fis ~
	| [fis8 gis e )fis] dis4.( )e8
	| cis4.( )dis8 b4.( )cis8
	| a4.( )b8 gis4( )ais
	| b r r a!(-\sf ~
	| [a8 g-\p fis e] )dis4 r
	| r fis'2-\f e4-.
	| dis-. b,4.( [ais8 b )a]

% 40
	| gis4 r r2
	| R1
	| e''2(-\p dis4 )d
	| cis2 b ~
	| b1 ~
	| b2( ais4 )a
	| gis r r2
	| e'2( dis4 d
	| cis c b )e ~
	| e( [dis8 cis] )dis2

% 50
	| [e8 e e e] [e e e e]
	| e1:8
	| e1:8
	| e1:8
	| [e8( b gis'_\cresc b,] [fis' b, e )b]
	| dis4-\f dis2( )e4
	| fis dis,2( )e4
	| fis dis'2( )e4
	| dis2( )eis ~
	| [eis8( )fis] r4 r2

% 60
	| R1*2
	| \lowerDynamics dis,2(-\p )e
	| e( )a,
	| r8 [b'8(-\f )gis' gis-.] r [cis,( )e e-.]
	| r [cis( )e e-.] r [a,,( )a' a-.]
	| gis4 r r2
	| r2 r4 b-\p
	| dis2( )e4 r
	| r2 r4 b

% 70
	| a2( )gis4 [gis,8( b]
	| [e b gis b] )e4 b'
	| a2( )gis4 [gis,8( b]
	| [e b gis b] )e4 b'
	| dis,2( )e4 gis
	| dis2( )e4 e
	| a,2( )gis4 gis'-.
	| b-. r r gis'-.
	| b-. r r2
	| d,2( cis4 )c

% 80
	| b r r2
	| R1
    }

    \repeat volta 2 {
        | \lowerDynamics e,2.(-\f )eis4
	| fis4-. b-. ais-. b'-.
	| ais-. r r2^\fermata
	| R1*2
	| \lowerDynamics g,2(-\p fis4 )f
	| e2( )d ~
	| d1

% 90
	| d2( cis4 )c
	| b r r2
	| g''2( fis4 f
	| e es )d g ~
	| g( [fis8 e] )fis2
	| [g8 d-\f d d] [d c b a]
	| gis4 r r2
	| r8 [e' e e] [e d c b]
	| ais4 r r2
	| R1

% 100
	| gis'2( fisis4 )fis
	| [eis8 cis cis cis] [dis cis eis cis]
	| fis2( eis4 )e
	| [dis8 b b b] [cis b dis b]
	| e2( dis4 )d
	| cis( c b )ais
	| \slurHeadToStem b( gis g )fis
	| [e8 e fis fis] [gis gis fis fis]
	| [eis eis' eis eis] [fis fis eis eis]
	| a2( gis4 )fis

% 110
	| [eis8 eis, eis' eis] [fis fis eis eis]
	| a2( gis4 )fis
	| eis4-. fis-. eis-. fis-.
	| eis r r2
	| d,1-\p ~
	| d ~
	| d
	| cis
	| dis2( d
	| cis )d ~

% 120
	| d d
	| cis1
	| [d8( e fis g] [a b cis )d]
	| [cis( d cis d] [cis d e )d]
	| [cis( d e d] [cis d b )cis]
	| [dis( c b a] [g fis e )dis]
	| [e( fis g a] [b cis! dis )e]
	| [dis( e dis e] [dis e fis )e]
	| [dis( e fis e]  [dis e cis )dis]
	| [eis( d cis b] [a gis fis )eis]

% 130
	| [e!( fis gis! ais] [b cis dis )e]
	| [dis( c b a!] [g fis e )dis]
	| [d!( e fis gis!] [a b cis! )d]
	| [cis( b a g] [f e d )cis]
	| [d_\cresc fis! a d] [cis, e g cis]
	| [b, d fis b] [a, cis fis a]
	| e4-\f r gis r
	| a r a r
	| b r gis' r
	| a r a, r

% 140
	| gis b, r2
	| r4 b-\p r2
	| r4 b r2
	| \parentShift b'4-\parentF r b r
	| b r r2
	| R1
	| r4 a(-\p cis b
	| ais fis gis ais
	| )b d,2( )cis4
	| b r r2

% 150
	| r4 \slurDown gis'( b a
	| gis e fis )gis \slurBoth
	| a cis,2( )b4
	| a a'2( )g4
	| fis d2( )cis4
	| b b'2( )a4
	| gis e2( )d4
	| [cis8 a' a a] [b a cis a]
	| d4 b2( )cis4
	| d4 b4.( [cis8 a )b]

% 160
	| [gis-. a-. gis-. fis-.] [e-. d-. cis-. b-.]
	| cis4 r r2
	| a'2(-\f gis4 )g
	| fis ais( b )cis
	| [d8( e cis d] [b cis a! )b]
	| gis4 r r2
	| gis2( fis4 )f
	| e \slurStemToHead gis( a )b
	| [cis8( d b cis] [a b gis )a]
	| fis!4( )gis e( a ~

% 170
	| [a8 b gis )a] \slurStemToHead fis4( b ~
	| [b8 cis a )b] g4.( )a8
	| fis4.( )gis!8 e2 ~
	| e4 r r2
	| R1
	| r2 r4 e'( ~
	| [e8 fis d )e] cis4 fis ~
	| [fis8 dis(] e4. cis8 )d4 ~
	| [d8 b(] cis4. a8 )b4 ~
	| [b8 gis(] a4. [fis8 b )a]

% 180
	| gis4 r r d(-\sf ~
	| [d8 c-\p b )a] gis4 r
	| r b'2(-\f )a4
	| gis e4.( [dis8 e )d]
	| cis4 r r2
	| R1
	| a'2(-\p gis4 )g
	| fis2 e ~
	| e1
	| e'2( dis4 )d

% 190
	| cis r r2
	| a'2( gis4 )g
	| fis( f e )a ~
	| a( [gis!8 fis!] )gis2
	| a4 d,4.( [e8 cis d]
	| )b4 cis4.( [d8 b cis]
	| )a4 fis'4.( [g8 e fis]
	| )d4 e4.( [fis8 d )e]
	| [cis(_\cresc e cis' e,] [b' e, a )e]
	| gis4-\f gis2( )a4

% 200
	| b gis,2( )a4
	| b gis'2( )a4
	| e2.( )g4
	| fis r r2
	| R1*2
	| gis,2(-\p )a ~
	| a( )d,
	| g(-\sfp )fis ~
	| fis4 r r2

% 210
	| R1*2
	| gis,2( )a ~
	| a( )d
	| r8 [cis(-\f )a' a-.] r [a( )cis cis-.]
	| r [d( )fis fis-.] r [d,( )d' d-.]
	| cis4 r r2
	| r2 r4 e-\p
	| gis2( )a4 r
	| r2 r4 e

% 220
	| d2( )cis4 [cis,8( e]
	| [a e cis e] )a4 e'
	| d2( )cis4 [cis,8( e]
	| [a e cis e] )a4 e'
	| gis,2( )a4 cis
	| gis2( )a4 a,
	| gis2( )a4 r
	| r cis-. e-. r
	| cis'2( d4 )dis


    }

    \alternative {
        { e4 r r2 }
        { e4 r r2 }
    }

% 230
    | a2(-\p gis4 )g


    | fis2 r4 fis
    | [gis!8( a b a] gis4 )fis
    | [eis8 cis cis cis] [dis cis eis cis]
    | [fis a fis d!] [g e! a fis]
    | [a e gis! e] [fis a gis b]
    | a4 r r2
    | e'2( dis4 )d
    | [cis8 a a a] [b a cis a]
    | [d( e fis e] d4 )cis

% 240
    | b r r2
    | cis2( bis4 )b
    | \slurStemToStem a( d cis c
    | b e dis d
    | [)cis8-\f a, a a] [b a cis a]
    | [d fis d b] [cis b dis b]
    | [e b' gis e] [fis e gis e]
    | [a e a e'] [gis e a e]
    | b'4-. r r2
    | r2 r4 b,(-\p

% 250
    | )a r fis' r
    | b,2.( [cis8 )d]
    | cis4 r r2
    | r r4 b,(
    | )a r fis' r
    | b, r e r
    | cis r r2
    | cis'2( c4 )b
    | a r r2
    | e2( dis4 )d

% 260
    | cis r r2
    | \LowerDynamics e2(-\pp dis4 )d
    | cis r r2
    | \bar "|."
}

violaFourthMov = \notes \relative a' {
    \key a \major
    \clef alto

    \noTupletBracket

    R1
    \repeat volta 2 {
	| R1*2
	| r4 b4.(-\p [cis8 a )b]
	| gis4 r r2
	| R1*2
	| r4 e,4.( [fis8 d )e]
	| cis4 r r2

% 10
	| r4 cis'4.( [d8 b )cis]
	| a4 r r2
	| r4 e'4.( [fis8 d )e]
	| cis4 r r2
	| r4 fis( gis )ais
	| b( )gis e2 ~
	| [e8 fis-. e-. d-.] [cis-. b-. a-. gis-.]
	| a4 r r2
	| cis2(-\f c4 )b
	| ais cis! fis2 ~

% 20
	| [fis8( g e fis] [d e cis )d]
	| b4 r r2
	| b2( ais4 )a
	| gis b e2 ~
	| [e8( fis d e] [cis d b )cis]
	| a4( b2 )a4
	| e' r r2
	| R1
	| r2 r4 a,( ~
	| [a8 b gis )a] fis4 b( ~

% 30
	| [b8 cis a )b] gis4( cis ~
	| [cis8 d] )b4. \slurHeadToStem cis8( a4 ~
	| a )gis e' b ~
	| b fis'2( gis4
	| eis fis dis )e
	| cis( dis e )cis
	| b r r2
	| r r4 a'(-\sf ~
	| [a8 g-\p fis )e] dis4-.-\f e-.
	| fis b,4.( [ais8 b )a]

% 40
	| gis4 r r2
	| e'2(-\p dis4 )d
	| cis2( )b
	| a4( )cis e2 ~
	| e4( [dis8 )cis] dis2(
	| )e4 r r2
	| e2( dis4 d
	| cis c b )gis
	| a( dis e )ais,
	| b( a! gis )fis

% 50
	| e cis''4.( [d!8 b cis]
	| )a4 b4.( [cis8 a b]
	| )gis4 a4.( [b8 gis a]
	| )fis4 gis4.( [a8 fis gis]
	| )e4 r r2
	| r8 [b'-\f b b] [b b b b]
	| [b b, b b] [b b b b]
	| [b b' b b] [b b b b]
	| b2.( )d!4
	| cis r r2

% 60
	| R1*2
	| \lowerDynamics a,2(-\p )gis
	| fis1
	| e4-\f r gis' r
	| fis r fis r
	| e r r2
	| r r4 gis-\p
	| fis2( )e4 r
	| r2 r4 gis4

% 70
	| fis2( )e4 r
	| r2 r4 gis4
	| fis2( )e4 r
	| r2 r4 gis,
	| a2( )gis4 b
	| a2( )gis4 b
	| dis,2( )e4 r
	| r b'-. d!-. r
	| gis2( a4 )ais
	| b r r2

% 80
	| e,2( dis4 )d
	| cis r r2
    }

    \repeat volta 2 {
        \lowerDynamics a2(-\f )b
	| cis4-. fis-. fis-. fis-.
	| fis-. r r2^\fermata
	| R1
	| g,2(-\p fis4 )f
	| e2( )d
	| c4( e )g2 ~
	| g4( [fis!8 e] )fis2

% 90
	| g4 r r2
	| g'2( fis4 )f
	| e( es d )b
	| c fis!( )g cis,(
	| )d c( b )a
	| g r r2
	| e'2(-\f dis4 )d
	| c r r2
	| fis2( eis4 )e
	| [d8 fis fis fis] [fis e d cis!]

% 100
	| [bis gis' gis gis] [ais gis bis gis]
	| cis4 a,! gis cis
	| [fis,8 fis' fis fis] [gis fis ais fis]
	| b4 gis, fis b
	| [e,8 gis gis gis] [a! gis b gis]
	| cis4( dis )e2
	| dis4( d cis )c
	| b( cis! d )dis
	| eis2( dis4 )d
	| [cis8 cis, cis' cis] [d d dis dis]

% 110
	| eis2( dis4 )d
	| [cis8 cis, cis' cis] [d d dis dis]
	| eis4 cis cis' cis,
	| cis' r r2
	| \lowerDynamics a,1(-\p
	| )g
	| a2( )b
	| e,1
	| b'
	| e,2( )d ~

% 120
	| d( )b'
	| a1 ~
	| a(
	| )g
	| a ~
	| a4( b c )b
	| b1(
	| )a
	| b ~
	| b4( cis! d )cis

% 130
	| r cis g'( )fis
	| r fis c( )b
	| r b f'( )e
	| r e bes( )a
	| \LowerText a2(_\cresc )ais
	| b!( )fis'!
	| [gis!8-\f b gis e] [d e d b]
	| [c e a e] [c e c a]
	| e'4 r e r
	| e r e r

% 140
	| e gis, r2
	| r4 gis-\p r2
	| r4 gis r2
	| \parentShift gis'4-\parentF r gis r
	| gis r r2
	| R1*2
	| r8 [fis-\p fis fis] [fis e d cis]
	| b4 b2( )a4
	| gis r r2

% 150
	| R1
	| r8 [e' e e] [e d cis b]
	| a4 a2( )gis4
	| fis fis'2( )e4
	| d b2( )a4
	| gis gis'2( )fis4
	| e cis2( )b4
	| a fis' e a
	| [d,8 fis fis fis] [gis! fis ais fis]
	| b4 gis e2 ~

% 160
	| [e8 fis-. e-. d-.] [cis-. b-. a-. gis-.]
	| a4 r r2
	| e'2(-\f dis4 )d
	| cis2 fis ~
	| [fis8( g e fis] [d e cis )d]
	| b4 r r2
	| d2( cis4 )c
	| b2 e ~
	| [e8( fis d e] [cis! d b )cis]
	| a4( b2 )a4

% 170
	| e'4 r r2
	| R1
	| r2 r4 a,( ~
	| [a8 b gis )a] fis4 b( ~
	| [b8 cis a )b] gis4( cis4 ~
	| [cis8 d] )b4. \slurHeadToStem cis8( a4 ~
	| a )gis e' b ~
	| \slurStemToHead b( gis' ais b
	| gis a! fis )gis
	| e( cis dis )fis

% 180
	| b, r r2
	| r r4 \slurHeadToStem d!(-\sf ~
	| [d8 c-\p b a] )gis4-.-\f a-.
	| b e,4.( [dis8 e )d]
	| cis4 r r2
	| a'2(-\p gis4 )g
	| fis2( )e
	| d4( )fis a2 ~
	| a4( [gis!8 fis] )gis2
	| a4 r r2

% 190
	| a'2( gis4 )g
	| fis( f e )cis
	| d( gis! a )dis,
	| e( d! cis )b
	| a fis'4.( [g8 e fis]
	| )d4 e4.( [fis8 d e]
	| )cis4 d4.( [e8 cis d]
	| )b4 cis4.( [d8 b cis]
	| )a4 r r2
	| r8 [e''-\f e e] [e e e e]

% 200
        [e e, e e] [e e e e]
	| [e e' e e] [e e e e]
	| gis,2( )ais ~
	| [ais8( )b] r4 r2
	| R1*2
	| d,2(-\p )cis
	| b1
	| e2(-\sfp d4 )cis
	| d r r2

% 210
	| R1*2
	| d,2( )cis
	| d( )b'
	| a4-\f r cis r
	| b r b' r
	| a r r2
	| r r4 cis-\p
	| b2( )a4 r
	| r2 r4 cis 

% 220
	| b2( )a4 r
	| r2 r4 cis 
	| b2( )a4 r
	| r2 r4 cis,
	| d2( )cis4 e
	| d2( )cis4 e,
	| d2( )cis4 a'-.
	| cis-. r r a'-.
	| cis-. r r2
    }

    \alternative {
        { R1 }
	{ cis,2( c4 )b }
    }

% 230
    | a,4-\p r r ais
    | \slurHeadToStem [b8( cis! d cis] b4 )a!
    | gis r r2
    | gis4 eis( fis gis
    | )a r r2
    | r4 e' e e
    | e2( dis4 )d
    | [cis8 e e e] [fis e gis e]
    | a2( gis4 )g
    | \slurHeadToStem [fis8( e d cis] b4 )a

% 240
    | gis r r2
    | eis'2( fis4 )gis
    | [a8 g fis d] [g e! a fis]
    | gis2( a4 )b
    | [e,8-\f cis cis cis] d4( )e
    | [fis8 d fis d] e4( )fis
    | [gis8 e b' gis] a4( )b
    | cis-. e,-. d-. cis-.
    | e-. r r2
    | r r4 gis(-\p

% 250
    | )a r a r
    | a2( )gis
    | a4 r r2
    | r r4 gis,(
    | )a r a r
    | a r gis r
    | a r r2
    | r8 [e'8 e e] [fis e gis e]
    | a4 r4 r2
    | R1*2

% 261
    | cis,2(-\pp c4 )b
    | a r r2 \bar "|."
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

    }

    \alternative {
        { | )cis4 r r2 }
	{ | cis4 r r2 }
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
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = strings <

	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"

		\violinIFourthMov	
		\context Voice=markings { \markingsIV }
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\violinIIFourthMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\violaFourthMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."

		\celloFourthMov
	    >
	>
    >

    \midi {
       \tempo 4 = 160
    }

    \paper { }
}
