\version "2.16.1"
% $Revision: 1.2 $

\header {
     title = "28 melodische Übungsstücke"
     subtitle = "22."
     composer = "Anton Diabelli"
     opus = "Op 149"

     mutopiatitle = "28 melodische Übungsstücke (No. 22)"
     mutopiacomposer = "DiabelliA"
     mutopiaopus = "Op. 149"
     mutopiainstrument = "Piano Duet"
     source = "Unknown"
     style = "Classical"
     copyright = "Creative Commons Attribution-ShareAlike 3.0"
     maintainer = "Alberto Simões"
     maintainerEmail = "ambs@cpan.org"
     maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-555"
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
     s2\p s2 s2 s2 s8\< s4 s8\! s2\f s2 s2
     s2\p s2 s2 s2 s8 \once\crescTextCresc s4\< s8 s2 s2\f s2 s2
     s2\f s2 s2 s2 s2 s2 s2 s2
}

primoUp =  {
     \time 2/4
     \clef treble
     \key a \major
     \relative c''' {
         \override Score.OttavaBracket   #'padding = #2
	\ottava #1
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    a8[(-1 cis-3 e-5 d]-4	    cis4 b)
	    a8[( cis-3 e-5 d]	    cis4 b)
	    a8[(-1 b cis e]-5 b[-2 e cis-3 e] b[ e cis e] b[-2 e-5 d-4 b])
	}
	\repeat volta 2 {
	    cis8([-3 a b cis]  e4-5 d~-> d8) a[-1-. a-. b]-.
	    d4(-4 cis~-> cis8[) b(-2 cis b] e4)-5 e
	    e8\([ cis-3 \acciaccatura e8-5 d8-4 b]\)
	}
	\alternative{
	    { a2 }
	    { a4 r }
	}
	b8([-2 e-5 d-4 b)]   a2-1
	b8([-2 e-5 d-4 b)]   a[-1-. cis-3-. e-5-. cis]-.
	a[-. cis-. e-. cis]-.    a4  r   cis-3   r    a2-1\fermata \bar"|."
     }
}

primoDown =  {
     \time 2/4
     \clef treble
     \key a \major
     \relative c'' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    r2 a8([-5 cis-3 e-1 d]-2  cis4 b)
             a8([-5 cis-3 e-1 d] cis[-3 b a cis])
             e4-1 <cis-3 e-1> <b-4 e-1> <cis e> <b e> r
	}
	\repeat volta 2 {
	    cis8([-3 a b cis]  e4-1 d~-> d8) a[-5-. a-. b]-.
	    d4(-2 cis~-> cis8[) b(-4 cis b] e4)-1 e
	    e8\([ cis-3 \acciaccatura e8-1  d8-2 b\)]
	}
	\alternative {
	    { a2 }
	    { a8([-5 e'-1 cis-3 e)] }
	}
	<b-4 d e>4 r
	a8[(-5 e'-1 cis-3 e])
	<b-4 d e>4 r
	a8[-5-. cis-3-. e-1-. cis]-.
	a8[-. cis-. e-. cis]-.
	a4 r <cis-3 e-1> r <a-5 cis-3>2 \fermata \bar "|."
     }
}

secondoDynamics =  {
  \override DynamicTextSpanner #'style = #'none
     s2\p s2 s2 s2 s8\< s4 s8\! s2\f s2 s2
     s2\p s2 s2 s2 \once\crescTextCresc s2\< s2 s2\f s2
     s2 s2\f s2 s2 s2 s2 s2 s2 s2
}

secondoUp =  {
     \time 2/4
     \clef bass
     \key a \major
     \relative c' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <a-1 cis-3>8[( e' <gis,-1 b-2> e'])
	    <a,-1 cis-3>8[( e' <gis,-1 d'-4> e'])
	    <a, cis>8[( e' <gis, d'-4> e'])
	    <a, cis>8[( e' <gis, d'-4> e'])
	    <a, cis-3>[( e'-5 cis a])
	    r8 <gis-1 b-2 e-5> r <a-1 cis-3 e-5>
	    r8 <gis b e> r <a cis e>
	    <gis b e>4 r
	}
         \repeat volta 2 {
	    g'8([-5 a, g' a,)]
	    fis'([-4 a, fis' a,)]
	    f'([-5 a, f' a,)]
	    e'([-4 a, e' a,)]
	    <dis-3 fis-5>([ a <dis fis> a)]
	    <b-2 d-4 e-5>([ gis <b d e> gis)]
	    <a-1 cis-3 e-5>8 r <gis b d e> r
	}
	\alternative {
	    { <cis-3 e-5>([ a-1 <cis e> a)] }
	    { r8 <a-1 cis-3>[-. <cis e>-. <a cis>]-. }
	}
	r8 <gis d'-4 e-5>[ <gis d' e> <gis d' e>]
         r8 <a cis>[-. <cis e>-. <a cis>]-.
	r8 <gis d' e>[ <gis d' e> <gis d' e>]
         <a-1 cis-3>[-. e'-. <a, cis>-. e']-.
         <a, cis>[-. e'-. <a, cis>-. e']-.
         <a, cis>4 r <a-1 cis-3 e-5> r <e a cis>2 \fermata \bar"|."
     }
}

secondoDown =  {
     \time 2/4
     \clef bass
     \key a \major
     \relative c {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <a-3 e'>2 <a e'> <a e'> <a e'> <a e'>
	    <e e'>8 r <a e'> r	    <e e'>8 r <a e'> r
	    <e e'>4 r
	}
	\repeat volta 2 {
	    a4-3 r a-2 r a-3 r a-2 r <a, a'>2 <a a'> <a a'>8 r <e' e'> r
	}
	\alternative {
	    {<a e'>2}
	    {a8-2 r r4}
	}
	<e e'>2    a8 r8 r4
	<e e'>2->
	a4-2 r8 \times 2/3 { e16(-5 fis gis) }
	a4-2 r8 \times 2/3 { e16(-5 fis gis) }
	a4 r <a, a'> r <a a'>2 \fermata \bar "|."
     }
}


\score{
     \context PianoStaff  <<
	\set PianoStaff.instrumentName = "Secondo     "
	\context Staff = "up"   \secondoUp
	\context Dynamics = "dynamics" \secondoDynamics
	\context Staff = "down" \secondoDown
      >>
     \layout { }
     \header { piece = "Allegretto." }
}


\score{
     \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo     "
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
      >>
     \layout {}
     \header { piece = "Allegretto."}
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
