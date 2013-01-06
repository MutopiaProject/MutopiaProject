\version "2.16.1"
% $Revision: 1.3 $

\header {
    title = "28 melodische Übungsstücke"
    subtitle = "20."
    composer = "Anton Diabelli"
    opus = "Op 149"

    mutopiatitle = "28 melodische Übungsstücke (No. 20)"
    mutopiacomposer = "DiabelliA"
    mutopiaopus = "Op. 149"
    mutopiainstrument = "Piano Duet"
    source = "Unknown"
    style = "Classical"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-541"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
  % add space between composer and the first staff
  markup-system-spacing #'padding = #5
}
\layout {
  \context {
    \Score
    % add space between staves in piano staff
    \override StaffGrouper #'staff-staff-spacing #'padding = #5
    \override StaffGrouper #'staff-staff-spacing #'basic-distance = #16
    \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 16)
  }
}

primoDynamics =  {
    s2\f s2 s2 s2 s2
    s2 s2 s2 s2\f s8\p s8\> s8 s8\! s4\f
    s8\p s8\> s8 s8\! s2\f s8\> s4 s8\! s2 s2
}

primoUp =  {
    \time 2/4
    \clef treble
    \key f \major
    \relative c''' {
        \override Score.OttavaBracket   #'padding = #2
	\ottava #1
	\accidentalStyle "modern"
	\repeat volta 2 {
	    d8-1 d4-> d8
	    \grace{g16(-4 } f16)-.-3 e-2-. d8-1-.  \grace{g16( } f16)-. e-. d8-.
	    e8-2 a4->-5 a8
	    e8 a4-> g16(-4 e)-2
	    d8-1 d4-> d8

	    \grace{g16(-4 } f16)-.-3 e-2-. d8-1-.  \grace{g16( } f16)-. e-. d8-.
	    e8-2-. e16( f g8-4 a16 g
	    f8[)-3 \grace{g16(} f16)-. e16]-. f8-. r
	}
	\repeat volta 2 {
	    e16-2-. f-. g4-> g8-4
	    e16-2-. f-. g-. f-. e-. f-. g-. f-.
	    f16-3-. g-. a4-> a8

	    f16-3-. g-. a-. g-. f-. g-. a-. g-.
	    g-4-. a-. f-3-. g-. e-2-. f-. g-. e-.
	    f-3-. g-. e-2-. f-. d-1-. e-. f-. d-.
	    e8-2 \grace{f16(} e16)( d e8 f16 e
	    d8)-1 r r4
	}
    }
}

primoDown =  {
    \time 2/4
    \clef treble
    \key f \major
    \relative c'' {
	\accidentalStyle "modern"
	\repeat volta 2 {
	    <d-5 f-3 a-1>4 <d f a>
	    <d f a> <d f a>
	    e8-4 a4->-1 a8
	    e8 a4-> g16(-2 e)-4
	    d4-5 <d-5 f-3 a-1>

	    <d f a> <d f a>
	    e8-4-. e16( f g8-2 a16 g
	    f8[)-3 \grace{g16(} f16)-. e16]-. f8-. r
	}
	\repeat volta 2 {
	    e16-4-. f-. g4-> g8-2
	    <e-4 g-2>8 r8 <e g> r
	    f16-3-. g-. a4-> a8

	    <f-3 a-1>8 r <f a> r
	    g8-2-. f-. e-. r8
	    f-3-. e-4-. d-5-. r8

	    e8-4 \grace{f16(} e16)( d e8 f16 e
	    d8)-5 r r4
	}
    }
}

secondoDynamics =  {
    s2\f s2 s2 s2 s2 s2 s2 s2
    s2\f s8\p s8\> s8 s8\! s2\f s8\p s8\> s8 s8\! s2\f s8\> s4 s8\! s2 s2
}

secondoUp =  {
    \time 2/4
    \clef treble
    \key f \major
    \relative c' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    r8 <a d-2 f-4>4 <a d f>8
	    r8 <a d f>4 <a d f>8
	    r8 <a e'-3 g-5>4 <a e' g>8
	    r8 <a e' g>4 <a e' g>8
	    r8 <a d-2 f-4>4 <a d f>8
	    r8 <a d f>4 <a d f>8
	    r8 <bes e-3 g-5>4 <bes e g>8
	    <a-1 f'-5>8[ <a c f> <a c f>] r8
	}
	\repeat volta 2 {
	    bes16(-1 e-4 c-2 e-4 bes e c e
	    bes8) <bes c e>4 <bes c e>8
	    a16(-1 f'-5 c-2 f-5 a, f' c f
	    a,8) <a c f>4 <a c f>8
	    r8 <a e'-4 g-5>4 <a e' g>8
	    r8 <a d-3 f-5>4 <a d f>8
	    r8 <bes-2 d-3 e-4> r <a cis-2 e-4 g-5>
	    <a d-3 f-5>8 \grace{e'16(-4} d16[)(-3 cis])-2 d8-3-. r
	}
    }
}

secondoDown =  {
    \time 2/4
    \clef bass
    \key f \major
    \relative c, {
	\accidentalStyle "modern"
	\repeat volta 2 {
	    <d d'>8 r <d d'> r
	    <d d'>8 r <d d'> r
	    <cis cis'> r <a a'> r
	    <cis cis'> r <a a'> r
	    <d d'>8 r <d d'> r
	    <d d'>8 r <d d'> r
	    <c c'> r <c c'> r
	    <f f'>[ <f f'> <f f'>] r
	}
        \repeat volta 2 {
	    c8 r c' r
	    c, <c c'>4 <c c'>8
	    f r f' r
	    f, <f f'>4 <f f'>8
	    cis'-2 r a r
	    d r f,-4 r
	    g r a r
	    d,-. <d f a d>-. <d f a d> r
	}
    }
}

\score{
    \context PianoStaff  <<
	\set PianoStaff.instrumentName = "Secondo "
	\context Staff = "up"   \secondoUp
	\context Dynamics = "dynamics" \secondoDynamics
	\context Staff = "down" \secondoDown
    >>
    \layout {}
    \header { piece = "Hongroise." }
}


\score{
    \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo "
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
    >>

    \layout {}
    \header { piece = "Hongroise."}
}



\score{
    \context PianoStaff  <<
	\context Staff = "up"   <<
	    \applyMusic #unfold-repeats \primoUp
	    \applyMusic #unfold-repeats \secondoUp
	>>
	\context Staff = "down" <<
	    \applyMusic #unfold-repeats \primoDown
	    \applyMusic #unfold-repeats \secondoDown
	>>
    >>
  \midi {
    \tempo 4 = 70
    }

}
