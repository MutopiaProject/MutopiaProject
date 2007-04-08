\version "1.4.7"

%\include "paper16.ly"

\header {
    title = "Sonata in C major"
    subtitle = "(fragment)"
    composer = "W. A. Mozart (1756-1791)"
    opus = "K$^6$ deest"
        
    mutopiatitle = "Sonata in C major (fragment)"
    mutopiacomposer = "W. A. Mozart (1756-1791)"
    mutopiaopus = "K^6 deest"
    mutopiainstrument = "Piano"
    date = "1771?"
    source = "Autograph"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    lastupdated = "2002/May/20"

    tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
    footer = "Mutopia-2002/05/20-241"
}

rightHand = \notes \relative g' \context Voice = rightHand {
    <g4-\arpeggio c e g> [f'16( e d )c] [c'8 b]
    | a4.-\trill [g16 a] g4
    | r16 [d f d] r [c e c] r [b d b]
    | r [c b a] [g a g f] [e f e d]
    | c8 r [f'16( e d )c] [c'8 b]
    | a4.-\trill [g16 a] g4
    | r16 [d f d] r [c e c] r [b d b]
    | r [c b a] [g a g f] [e f e d]
    | c4 r \grace { [c'16 d] } [e8. d32 c]
    | b4 <g2-\arpeggio b d f>
    | e'4 r \grace { [c16 d] } [e8. d32 c]
    | b4 <g2-\arpeggio b d f>
    | e'4 r16 [g, c e] [g e d c]
    | d4 r16 [g, b d] [g d b g]
    | c4 r16 [a c fis] [a fis d c]
    | [b g g' a] [f g e f] [d e c d] % These are "f", not "fis"!
    | [b d g, a] [f g e f] [d e c d]
    | b4 <g'4-\arpeggio b d g> r
    | d'4 \property Grace.Stem \override #'flag-style = #'() \grace
      e16 [d8 c16 b] [g'8 g]
    | [g( )e] e4 r
    | a4 \property Grace.Stem \override #'flag-style = #'() \grace b16
      [a8 g16 fis] [d'8 d]
    | [d( )b] b4 r
    | d,4 \property Grace.Stem \override #'flag-style = #'() \grace
      e16 [d8 c16 b] [g'8 f!]
    | r16 [g, e' g,] r [g e' g,] r [g e' g,]
    | r [e' c' e,] r [e c' e,] r [e c' e,] \bar ""
}


leftHand = \notes \relative c' \context Voice = leftHand {
    [<c8 e> <c e> <c e> <c e> <c e> <c e>]
    | [<c f> <c f> <c f> <c f>] [<c e> <c e>]
    | f r g r g, r
    | c r r4 r
    | r8 [<c e> <c e> <c e> <c e> <c e>]
    | [<c f> <c f> <c f> <c f>] [<c e> <c e>]
    | f r g r g, r
    | c r r4 r \clef bass
    | [c,16 g' e g] [c, g' e g] [c, g' e g]
    | [d g f g] [b, g' d g] [b, g' d g]
    | [c, g' e g] [c, g' e g] [c, g' e g]
    | [d g f g] [b, g' d g] [b, g' d g]
    | r [c, e g] c4 r
    | r16 [b, d g] b4 r
    | r16 [a, c fis] a4 r
    | [g8 e' d c b a]
    | [g e d c b a]
    | g4 r r
    | [<g'8 b> <g b> <g b> <g b> <g b> <g b>]
    | [<g c> <g c> <g c> <g c> <g c> <g c>]
    | [<fis d'> <fis d'> <fis d'> <fis d'> <fis d'> <fis c'>]
    | [<g b> <g b> <g b> <g b> <g b> <g b>]
    | [<g b> <g b> <g b> <g b> <g b> <g b>]
    | c4 <c, c'> <b b'>
    | <a a'> \translator Staff = up \stemUp fis''' \translator Staff
      = down \stemBoth <a,,, a'> \bar ""
}


\score {
    \context PianoStaff \notes <
        \context Staff = up <
	    \property Staff.midiInstrument = #"acoustic grand"
	    \time 3/4 \key c\major
	    \clef violin
	    
	    \rightHand
	>

	\context Staff = down <
	    \property Staff.midiInstrument = #"acoustic grand"

	    \time 3/4 \key c\major
	    \clef violin
	    
	    \leftHand
	>
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}

