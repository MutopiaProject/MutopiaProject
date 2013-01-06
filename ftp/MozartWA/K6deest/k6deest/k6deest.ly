\version "2.16.1"

%#(set-global-staff-size 16)

\header {
    title = "Sonata in C major"
    subtitle = "(fragment)"
    composer = "W. A. Mozart (1756-1791)"
    opus = \markup {K \super 6 deest}
        
    mutopiatitle = "Sonata in C major (fragment)"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "K6 deest"
    mutopiainstrument = "Piano"
    date = "1771?"
    source = "Autograph"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"

    moreInfo = "<p>Some interesting information about this fragment was revealed by Dennis Pajot. Thanks to him for allowing us to quote it here.</p><blockquote><p>The fragment you post on is not in Koechel, but it is printed in the Neue Mozart Ausgabe (NMA). It is in the 2nd volume of Piano Sonatas, as Anhang II Nr.1 (page 173).</p><p>Briefly stated this 25 measure movement in C stands on the first page of the autograph with the later composed final chorus of the Grabmusik K42/35a, however the piano movement is crossed out--apparently by Mozart himself. According to Wolfgang Plath its probable origin time is 1771 in Salzburg. In a 1986 article Wolfgang Rehm states the fragment is in connection with the 4 Piano Sonatas known only by their incipits (K.Anh 199-202/K6 = K33d-g).</p></blockquote>"

 footer = "Mutopia-2013/01/06-241"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

rightHand =  \relative g' \context Voice = rightHand {
    <g c e g>4\arpeggio  f'16[( e d  c)]  c'8[ b]
    | a4.\trill  g16[ a] g4
    | r16  d[ f d] r  c[ e c] r  b[ d b]
    | r  c[ b a]  g[ a g f]  e[ f e d]
    | c8 r  f'16[( e d  c)]  c'8[ b]
    | a4.\trill  g16[ a] g4
    | r16  d[ f d] r  c[ e c] r  b[ d b]
    | r  c[ b a]  g[ a g f]  e[ f e d]
    | c4 r \grace {c'16[ d]} e8.[ d32 c]
    | b4 <g b d f>2\arpeggio
    | e'4 r \grace {c16[ d]} e8.[ d32 c]
    | b4 <g b d f>2\arpeggio
    | e'4 r16  g,[ c e]  g[ e d c]
    | d4 r16  g,[ b d]  g[ d b g]
    | c4 r16  a[ c fis]  a[ fis d c]
    |  b[ g g' a]  f[ g e f]  d[ e c d] % These are "f", not "fis"!
    |  b[ d g, a]  f[ g e f]  d[ e c d]
    | b4 <g' b d g>4\arpeggio r
    | d'4 \grace e16 d8[ c16 b]  g'8[ g]
    |  g[(  e)] e4 r
    | a4 \grace b16 a8[ g16 fis]  d'8[ d]
    |  d[(  b)] b4 r
    | d,4 \grace e16 d8[ c16 b]  g'8[ f!]
    | r16  g,[ e' g,] r  g[ e' g,] r  g[ e' g,]
    | r  e'[ c' e,] r  e[ c' e,] r  e[ c' e,] \bar ""
}


leftHand =  \relative c' \context Voice = leftHand {
    <c e>8[ <c e> <c e> <c e> <c e> <c e>]
    | <c f>[ <c f> <c f> <c f>] <c e>[ <c e>]
    | f r g r g, r
    | c r r4 r
    | r8 <c e>[ <c e> <c e> <c e> <c e>]
    | <c f>[ <c f> <c f> <c f>] <c e>[ <c e>]
    | f r g r g, r
    | c r r4 r \clef bass
    |  c,16[ g' e g]  c,[ g' e g]  c,[ g' e g]
    |  d[ g f g]  b,[ g' d g]  b,[ g' d g]
    |  c,[ g' e g]  c,[ g' e g]  c,[ g' e g]
    |  d[ g f g]  b,[ g' d g]  b,[ g' d g]
    | r  c,[ e g] c4 r
    | r16  b,[ d g] b4 r
    | r16  a,[ c fis] a4 r
    |  g8[ e' d c b a]
    |  g[ e d c b a]
    | g4 r r
    | <g' b>8[ <g b> <g b> <g b> <g b> <g b>]
    | <g c>[ <g c> <g c> <g c> <g c> <g c>]
    | <fis d'>[ <fis d'> <fis d'> <fis d'> <fis d'> <fis c'>]
    | <g b>[ <g b> <g b> <g b> <g b> <g b>]
    | <g b>[ <g b> <g b> <g b> <g b> <g b>]
    | c4 <c, c'> <b b'>
    | <a a'> \change Staff = "up" \stemUp fis''' \change Staff
      = "down" \stemNeutral <a,,, a'> \bar ""
}


\score {
    \context PianoStaff  <<
        \context Staff = "up" <<
	    \set Staff.midiInstrument = #"acoustic grand"
	    \time 3/4 \key c\major
	    \clef violin
	    
	    \rightHand
	>>

	\context Staff = "down" <<
	    \set Staff.midiInstrument = #"acoustic grand"

	    \time 3/4 \key c\major
	    \clef violin
	    
	    \leftHand
	>>
    >>

    
  \midi {
    \tempo 4 = 120
    }


    \layout { }
}
