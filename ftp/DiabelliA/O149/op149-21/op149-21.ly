\version "2.16.1"
% $Revision: 1.1 $

\header {
     title = "28 melodische Übungsstücke"
     subtitle = "21."
     composer = "Anton Diabelli"
     opus = "Op 149"

     mutopiatitle = "28 melodische Übungsstücke (No. 21)"
     mutopiacomposer = "DiabelliA"
     mutopiaopus = "Op. 149"
     mutopiainstrument = "Piano Duet"
     source = "Unknown"
     style = "Classical"
     copyright = "Creative Commons Attribution-ShareAlike 3.0"
     maintainer = "Alberto Simões"
     maintainerEmail = "ambs@cpan.org"
     maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-554"
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
  }
}

primoDynamics =  {
  \override DynamicTextSpanner #'style = #'none
     s4\f s4\p s4 s4  s4\> s4\! s2 s4\> s4\! s2 s1
     s4\f s4\p s2 s1 s2 s8\< s4 s8\!   s2\f s8\> s4 s8\! s2\f s8 s8\> s8 s8\!
     s4\f s4\p s8 s8\< s8 s8\! s2 s8 s8\< s8 s8\! s4\f s4\p s8 s8\< s8 s8\! s1
     \once\crescTextCresc s1\< s2 s8 s8\p\< s8 s8\! s1 s1\f
     s2\p s2-\markup\italic{dolce} s1 s1 s1\pp s4 s8 s16 s16\ff s2
}

primoUp =  {
     \time 4/4
     \clef treble
     \key a \major
     \relative c''' {
         \override Score.OttavaBracket   #'padding = #2
	\ottava #1
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <cis-3 e-5>4.( <b d>8 <a cis>) <a cis> <a cis> <a cis>
	    <cis e>4( <b d>) r b8.(-2 d16)-4
	    <b d>4( <a cis>) r a8.( cis16)
	    b4.(-2 d16 cis b8) r r4

	    <cis-3 e-5>4.( <b d>8 <a cis>) <a cis> <a cis> <a cis>
	    <cis-3 e-5>4( <b d>2 <a-1 cis-3>4
             b4.)-2 b8 b( cis16 b) a8. b16
	}
	\alternative {
	    { cis2 e8(-5 d b-2 e) }
	    { cis2~cis8 cis-.( cis-. cis-.)}
	}
	\repeat volta 2 {
	    d4.-4 d16( cis) b8 <b-2 d-4 e-5>(-. <b d e>-. <b d e>)-.
	    <cis-3 e-5>4.-> <b d>16( <a cis>) <a cis>8 a(-.-1 b-. cis)-.
	    d4.-4 d16( cis) b8 <b-2 d-4 e-5>(-. <b d e>-. <b d e>)-.
	    <cis-3 e-5>4.-> <b d>16( <a cis>) <a cis>8 r <a-1 cis-3>-. <b d>-.

	    <cis e>4( <b d>8. <a cis>16) <a cis>8 <a cis> <b d> <cis e>
	    <cis e>4(-> <b d>4) r8 b-2 cis d
	    d4(-4-> cis8[) r16 cis] e8.(-5-> d16 cis16-3 d b-2 cis)
	}
	\alternative {
	    { a2-1 r8 a8(-. b-. cis)-. }
	    { a2   r8 <b-2 d-4>( <cis e> <b d>) }
	}
	<a cis>2 r8 b(-2 cis-3 b)-2
	a-1-. b(-> cis b) a-. b(-> cis b)
	a8 r cis8.(-3-> a16)-1 a8 r8 cis8.(-> a16)
	a4 r8. a16-1 a2\fermata \bar"|."
     }
}

primoDown =  {
     \time 4/4
     \clef treble
     \key a \major
     \relative c'' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <cis-1 e-3>4.( <b d>8 <a cis>) <a cis> <a cis> <a cis>
	    <cis e>4( <b d>) r b8.(-4 d16)-2
	    <b d>4( <a cis>) r a8.( cis16)
	    b4.(-4 d16 cis b8) r r4

	    <cis-1 e-3>4.( <b d>8 <a cis>) <a cis> <a cis> <a cis>
	    <cis-1 e-3>4( <b d>2 <a-3 cis-5>4
             b4.)-4 b8 b( cis16 b) a8. b16
	}
	\alternative {
	    { cis2 e8(-1 d b-4 e) }
	    { cis2~cis8 cis-.( cis-. cis-.)}
	}
	\repeat volta 2 {
	    d4.-2 d16( cis) b8 <b-4 d-2 e-1>(-. <b d e>-. <b d e>)-.
	    <cis-3 e-1>4.-> <b d>16( <a cis>) <a cis>8 a(-.-5 b-. cis)-.
	    d4.-2 d16( cis) b8 <b-4 d-2 e-1>(-. <b d e>-. <b d e>)-.
	    <cis-3 e-1>4.-> <b d>16( <a cis>) <a cis>8 r <a-5 cis-2>-. <b d>-.

	    <cis e>4( <b d>8. <a cis>16) <a cis>8 <a cis> <b d> <cis e>
	    <cis e>4(-> <b d>4) r8 b-4 cis d
	    d4(-2-> cis8[) r16 cis] e8.(-1-> d16 cis16-3 d b-4 cis)
	}
	\alternative {
	    { a2-5 r8 a8(-. b-. cis)-. }
	    { a2   r8 <b-4 d-2>( <cis e> <b d>) }
	}
	<a cis>2 r8 b(-2 cis-1 b)-2
	a-3-. b(-> cis b) a-. b(-> cis b)
	a8 r <cis-3 e-1>8.(-> <a-5 cis-3>16) <a cis>8 r8 <cis e>8.(-> <a cis>16)
	<a cis>4 r8. <a cis e>16-1 <a cis e>2\fermata \bar"|."
     }
}

secondoDynamics =  {
  \override DynamicTextSpanner #'style = #'none
     s8\f s8\p s4 s2 s1 s1
     s2 s8\< s4 s8\! s8\f s8\p s4 s2 s8\< s4 s8\! s8\> s4 s8\!
     s8\f s8\p s4 s4 s16\< s8 s16\! s16\> s8 s16\! s4 s16\< s8 s8 s8 s16\!
     s8\f s8\p s4 s4 s16\< s8 s16\!
     s8\f s8\p s4 s4 s16\< s8 s16\! s16\> s8 s16\! s4 s16\< s8 s8 s8 s16\!
     s8\f s8\p s4 s4 s16\< s8 s16\!
     s16\> s8 s16\! s4 s4 s4 \once\crescTextCresc s1\< s2 s4 s16\p\< s8 s16\!
     s1 s1\f s1\p s1 s8 s8\sf s4 s8 s8\sf s4 s1\pp s4 s8 s16 s16\ff s2
}

secondoUp =  {
     \time 4/4
     \clef bass
     \key a \major
     \relative c' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    a16(-1 cis-3 e-5 cis) a( cis e cis) a( cis e cis) a( cis e cis)
	    ais(-2 cis-3 e-5 cis) b(-1 d-4 e-5 d) b( d e d) gis,(-2 d'-4 e-4 d)
	    b(-1 d-4 e-5 d) a(-1 cis-3 e-5 cis) a( cis e cis) a( cis e cis)

	    gis(-2 b-3 e-5 b) gis(-2 e' a,-1 e')
	    gis,(-2 e' <gis,-2 b-3> e' <a,-1 cis-3> e' <gis,-2 d'-4> e')
	    a,(-1 cis-3 e-5 cis) a( cis e cis) a( cis e cis) a( cis e cis)
	    ais(-2 cis-3 e-5 cis) b(-2 d-4 b d) b( d b d) a(-1 cis-3 a cis)

	    a(-1 b-2 fis'-5 b,) a( b fis' b,) a( b fis' b,) fis(-1 fis' fis, fis')
	}
	\alternative {
	    { gis,(-1 cis-3 eis-5 cis) gis( cis eis cis) gis( d'-3 e-4 d) gis,( d' e d) }
	    { gis,( cis-3 eis-5 cis)  gis( cis eis cis) <gis cis eis>8 r r4}
	}
	\repeat volta 2 {
	    fis16(-1 b-2 d-4 b) fis( b d b) gis(-1 b-2 e-5 b) gis( b e b)
	    a(-1 cis-3 e-5 cis) a( cis e cis) a( e' cis-3 e b-2 e a,-1 e')
	    fis,( b-2 d-3 fis-5) fis,( b d fis) gis,(-1 b-2 d-3 e)-4 gis,( b d e)

	    a,(-1 cis-2 e-4 cis) a( cis e cis) a( cis e cis) a( cis e cis)
	    a( e'-3 g-5 e) a,( e' g e) a,( e' g e) a,( e' g e)
	    ais,(-1-> e'-3 g-5 e) b( d-2 fis-4 d) b( fis'-4 d-2 fis cis-2 fis b,-1 fis')

	    fis4(->-3 e8[) r16 e] gis8.(-4-> fis16 e fis d e)-4
	}
	\alternative {
	    { cis(-2 a-1 e'-4 cis)-2 a8 r8 r2}
	    { cis16(-2 a-1 e'-5 cis-4 a-2 e a cis) e( e, e' e, e' e, e' e,)}
	}
	cis'16(-4 a-2 e'-5 cis-4 a-2 e a cis) e( e, e' e, e' e, e' e,)
	a(-2 e' e, e' e, e' e, e') a,(-2 e' e, e' e, e' e, e')
	a,(-2 cis-4 e-5 cis) a( cis e cis) a(-1 cis-3 e-5 cis) a( cis e cis)
	a4 r8. <a cis e>16 <a cis e>2\fermata\bar"|."
     }
}

secondoDown =  {
     \time 4/4
     \clef bass
     \key a \major
     \relative c {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    a8-5 r cis-3 r e-1 r r4
	    e,8 r e'4-> r e,8 r8
	    a,8 r a'4-> r cis-2

	    e4 e, e'8(-1 <d-2 e> <cis-3 e> <b-4 e>)
	    a8-5 r cis r e r r4
	    e,8 r <e e'>4 <eis eis'> <fis fis'>

	    <d d'>8 <d'-3 fis-2>[(-. <d fis>-. <d fis>])-. <d fis> r <d, d'> <d d'>
	}
         \alternative {
	    { <cis cis'>2 <b b'>8 r <e e'> r }
	    { <cis cis'>8 r cis' r cis, r r4 }
	}
         \repeat volta 2 {
	    d8 r d' r e,-2 r r4
	    a8-5 r cis-3 r e r r4
	    b,8 r b' r e, r r4

	    a8-5 r cis-3 r e r r4
	    a,,8 r a' r a r a r
	    d,8 r d' r d, r r4

	    r8 e8 e' e <e, b' e>2
	}
         \alternative{
	    { a4-3 r16 a(-1 e-2 cis-3 a8) r8 r4}
	    { a'8-3 r r4 r4 e4->-5 }
	}
	a4-2 r r  e
         a8 r e4 a8 r e4
         a8 r r4 a8 r r4
         a4 r8. <a, a'>16 <a a'>2\fermata\bar"|."
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
     \header { piece = "Andante amoroso." }
}


\score{
     \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo "
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
      >>
     \layout {}
     \header { piece = "Andante amoroso."}
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
