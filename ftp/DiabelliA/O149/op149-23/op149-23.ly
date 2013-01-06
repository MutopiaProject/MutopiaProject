\version "2.16.1"
% $Revision: 1.2 $

\header {
     title = "28 melodische Übungsstücke"
     subtitle = "23."
     composer = "Anton Diabelli"
     opus = "Op 149"

     mutopiatitle = "28 melodische Übungsstücke (No. 23)"
     mutopiacomposer = "DiabelliA"
     mutopiaopus = "Op. 149"
     mutopiainstrument = "Piano Duet"
     source = "Unknown"
     style = "Classical"
     copyright = "Creative Commons Attribution-ShareAlike 3.0"
     maintainer = "Alberto Simões"
     maintainerEmail = "ambs@cpan.org"
     maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-556"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
  % add space between composer and the first staff
  markup-system-spacing #'padding = #4
}
\layout {
  \context {
    \Score
    % add space between staves in piano staff
    \override StaffGrouper #'staff-staff-spacing #'padding = #5
    \override StaffGrouper #'staff-staff-spacing #'basic-distance = #14
  }
}

primoDynamics =  {
  \override DynamicTextSpanner #'style = #'none
     s2.\p s2. s2. s4 s8\> s4 s8\! s2.\f
     s2. s2. s2. s2.\p s2. s2. s2.
     s4. \once\crescTextCresc s4.\< s2. s2. s2.\f s2.\p s2.
     s2. s4 s8\> s4 s8\! s2.\f s2. s2. s2.
}

primoUp =  {
     \time 3/4
     \clef treble
     \key a \major
     \relative c''' {
         \override Score.OttavaBracket   #'padding = #2
	\ottava #1
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    a8-1-. a4->-1 cis16(-3 b a b cis d)
	    e8-5-. cis-3-. e4.(-5-> cis8)
	    \acciaccatura e8 d-4-. b-2-. d4.(-4-> b8)
	    \acciaccatura d8 cis8-3-. a-1-. cis2-3
	    a8-1-. a4-> cis16(-3 b a b cis d)-4

	    e8-5-. cis-3-. e4.(-> cis8)
	    b8-2-. b4-> d16(-4 cis) b8-. cis16(-3 b)
	    a8(-1-. cis16-3 b) b4(-2-> a8) r
	}
	\repeat volta 2 {
	    cis8-3 cis4-> cis8[ d cis]
	    cis4( b) r
	    b8-2 b4-> b8[ cis b]
	    b4( a) r

	    b8-2 b4-> b8[ cis cis]
	    e(-5 d) d4.(-> cis8
	    b8)-2 b4-> b8[ cis b]
	    b4. e8[(-5-> d-4 b])-2
	    a8-1-. a4-> cis16(-3 b a-1 b cis d)
	    e8-5-. cis-3-. e4.(->-5 cis8)

	    \acciaccatura e8 d-4-. b-2-. d4.(-> b8)
	    \acciaccatura d8 cis-3-. a-. cis2
	    a8-1-. a4-> cis16(-3 b a-1 b cis d)
	    e8-.-5 cis-. e4.(-> cis8)
	    b8-2-. b4-> d16(-4 cis) b8-. cis16(-3 b)
	    a8-1-. cis16(-3 b) b4(-> a8) r
	}
     }
}

primoDown =  {
     \time 3/4
     \clef treble
     \key a \major
     \relative c'' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <a-5 cis-3>8( e'-1 <a, cis> e' <a, cis> e')
	    <a, cis>8( e' <a, cis> e' <a, cis> e')
	    <b-4 d-2>( e <b d> e <b d> e)
	    <a,-5 cis-3>8( e' <a, cis> e' <a, cis> e')
	    a,8-5-. a4-> cis16(-3 b a-5 b cis d)

	    e8-1-. cis-3-. e4.(-> cis8)
	    b8-4-. b4-> d16(-2 cis) b8-. cis16(-3 b)
	    a8(-5-. cis16-3 b) b4(-4-> a8) r
	}
	\repeat volta 2 {
	    cis8-3 cis4-> cis8[ d cis]
	    cis4( b) r
	    b8-4 b4-> b8[ cis b]
	    b4( a) r

	    b8-4 b4-> b8[ cis cis]
	    e(-1 d) d4.(-> cis8
	    b8)-4 b4-> b8[ cis b]
	    b4. e8[(-1-> d-2 b])-4
	    <a-5 cis-3>( e' <a, cis> e' <a, cis> e')
	    <a, cis>( e' <a, cis> e' <a, cis> e')

	    <b-4 d-2>( e <b d> e <b d> e)
	    <a,-5 cis-3>( e' <a, cis> e' <a, cis> e')
	    a,8-5-. a4-> cis16(-3 b a-5 b cis d)
	    e8-.-1 cis-. e4.(-> cis8)
	    b8-4-. b4-> d16(-2 cis) b8-. cis16(-3 b)
	    a8-5-. cis16(-3 b) b4(-> a8) r
	}
     }
}

secondoDynamics =  {
  \override DynamicTextSpanner #'style = #'none
     s2.\p s2. s2. s2. s2.\f s2.
     s2. s4 s8\> s8\! s4   s2.\p s2. s2. s2.
     s2. \once\crescTextCresc s2.\< s2. s2.\f s2.\p s2.
     s2. s2. s2.\f s2. s2. s4 s8\> s8\! s4
}

secondoUp =  {
     \time 3/4
     \clef bass
     \key a \major
     \relative c' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\set doubleSlurs = ##t
	\repeat volta 2 {
	    r8 <a-1 cis-3 e-5>16 <a cis e> <a cis e>8 <a cis e> r <a cis e>
	    r8 <a cis e>16 <a cis e> <a cis e>8 <a cis e> r <a cis e>
	    r8 <gis-2 d'-4 e-5>16 <gis d' e> <gis d' e>8 <gis d' e> r <gis d' e>
	    r8 <a-1 cis-3 e-5>16 <a cis e> <a cis e>8 <a cis e> r <a cis e>
	    r8 <a-1 cis-3 e-5>16 <a cis e> <a cis e>8 <a cis e> <a cis e> <a cis e>
	    r8 <a-1 cis-3 e-5>16 <a cis e> <a cis e>8 <a cis e> <a cis e> <a cis e>

	    r8 <a-1 b-2 fis'-5>16 <a b fis'> <a b fis'>8 <a b fis'> r <gis-1 b-2 d-4 e-5>
	    <a cis-3 e-5> <gis d'-4 e-5> <gis d' e>4( <a-1 cis-3>8) r
	}
	\repeat volta 2 {
	    r8 <a cis-2 fis-4>[ r <a cis fis> r <a cis fis>]
   	    r8 <b cis-2 gis'-5>[ r <b cis gis'> r <b cis gis'>]
             r8 <b cis-2 eis-4>[ r <b cis eis> r <b cis eis>]
             r8 <a cis-2 fis-4>[ r <a cis fis> r <a cis fis>]

             r8 <fis b-2 fis'-5>[ r <fis b fis'> r <ais-2 e'-4 fis-5>]
             r8 <b d-3 fis-5>[ r <b d fis> r <a cis-3 fis-5>]
             r8 <a b-2 fis'-5>[ r <a b fis'> r <a b fis'>]
             <gis b e-5>8. <gis b e>16 <gis b e>8 r8 r4
             r8 <a cis-3 e-5>16 <a cis e> <a cis e>8 <a cis e> r <a cis e>
             r8 <a cis-3 e-5>16 <a cis e> <a cis e>8 <a cis e> r <a cis e>

             r8 <gis-2 d'-4 e-5>16 <gis d' e> <gis d' e>8 <gis d' e> r <gis d' e>
             r8 <a cis-3 e-5>16 <a cis e> <a cis e>8 <a cis e> r <a cis e>
             r8 <a cis e>16 <a cis e> <a cis e>8 <a cis e> <a cis e> <a cis e>
             r8 <a cis e>16 <a cis e> <a cis e>8 <a cis e> <a cis e> <a cis e>
             r8 <a b-2 fis'-5>16 <a b fis'> <a b fis'>8 <a b fis'> r <gis b d-4 e-5>
             <a cis e> <gis d' e> <gis d' e>4( <a-1 cis-3>8) r
	}
     }	
}	

secondoDown =  {
     \time 3/4
     \clef bass
     \key a \major
     \relative c {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\set doubleSlurs = ##t
	\repeat volta 2 {
	    a8-2 r r4 a8 r a r r4 a8 r
	    <e e'>8 r r4 <e e'>8 r
	    a-2 r r4 a8-1 r
	    a,4 a' a a, a'-1 a-2

	    <d, d'>4 r <e e'>
	    <a-3 e'>8 <e e'> <e e'>4( <a e'>8) r
	}
	\repeat volta 2 {
	    <fis fis'>8[ r <fis fis'> r <fis fis'>] r
	    <eis eis'>8[ r <eis eis'> r <eis eis'>] r
             <cis cis'>8[ r <cis cis'> r <cis cis'>] r
             <fis fis'>8[ r <fis fis'> r <fis fis'>] r

             <d d'>8[ r <d d'> r <cis cis'>] r
             <b b'>8[ r <b b'> r <cis cis'>] r
             <d d'>8[ r <d d'> r <dis dis'>] r
             <e e'>8. <e e'>16 <e e'>8 r r4
             a8-2 r r4 a8 r
             a8 r r4 a8 r

             <e e'>8 r r4 <e e'>8 r
             a8-2 r r4 a8-1 r
             a,4 a' a
             a, a'-1 a-2
             <d, d'>4 r <e e'>
             <a-3 e'>8 <e e'> <e e'>4( <a e'>8) r
	}
     }
}

\paper{
     bottom-margin = 1\cm
     foot-separation = 2\cm
}

\score{
     \context PianoStaff  <<
	\set PianoStaff.instrumentName = "Secondo "
	\context Staff = "up"   \secondoUp
	\context Dynamics = "dynamics" \secondoDynamics
	\context Staff = "down" \secondoDown
      >>
     \layout {}
     \header { piece = "Polonaise." }
}


\score{
     \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo "
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
      >>
     \layout {}
     \header { piece = "Polonaise."}
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
       \tempo 4 = 80
     }
}
