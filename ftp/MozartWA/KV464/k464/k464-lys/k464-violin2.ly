% -*- LilyPond -*-

\version "1.6.6"

#(set! point-and-click line-column-location)

\header {
    title = "String Quartet KV. 464 (nr. 18)"
    subtitle = "for 2 violins, viola and cello"
    composer = "W. A. Mozart (1756-1791)"
        
    mutopiatitle = "String Quartet KV. 464 (nr. 18)"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV. 464"
    mutopiainstrument = "String Quartet"
    date = "10th January 1785 (Wien)"
    source = "Breitkopf und Härtel (1882)"
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



\include "violin2-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino II."

	\time 3/4
	\partial 4

	\violinIIFirstMov
	\context Voice=markings { \markingsI }
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}

\include "violin2-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino II."

	\time 3/4

	\violinIISecondMov
	\context Voice=markings { \markingsII }
	\context Voice=markingsBis { \markingsIIbis }
    >

    \midi {
       \tempo 4 = 130
    }

    \paper { }
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

        | d8 r
    }

    r4


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


\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino II."

	\time 2/4
	\partial 4

	\violinIIThirdMov
	\context Voice=markings { \markingsIII }
    >

    \midi {
       \tempo 4 = 44
    }

    \paper { }
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


        | e4 r r2
    }

% 230
    | a,2(-\p gis4 )g


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


\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino II."

	\violinIIFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 160
    }

    \paper { }
}
