\version "2.16.1"
% $Revision: 1.2 $

\header {
     title = "28 melodische Übungsstücke"
     subtitle = "27."
     composer = "Anton Diabelli"
     opus = "Op 149"

     mutopiatitle = "28 melodische Übungsstücke (No. 27)"
     mutopiacomposer = "DiabelliA"
     mutopiaopus = "Op. 149"
     mutopiainstrument = "Piano Duet"
     source = "Unknown"
     style = "Classical"
     copyright = "Creative Commons Attribution-ShareAlike 3.0"
     maintainer = "Alberto Simões"
     maintainerEmail = "ambs@cpan.org"
     maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-560"
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
     s8\p s8-\markup\italic{dolce} s4 s2 s1 s1 s1
     s4..\f s16\p s2 s1 s8\< s4 s4 s4 s8\! s8\> s4 s4 s8\! s4
     s1\p s1\f s1 s1
     s4..\f s16\p s2 s1 s8\< s4 s4 s4 s8\! s8\> s4 s4 s8\! s4
}

primoUp =  {
     \time 4/4
     \clef treble
     \key e \major
     \relative c''' {
         \override Score.OttavaBracket   #'padding = #2
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    b4..(-5-> gis16-3 e4)-1 r8. gis16
	    b4..(-> a16-4 fis4)-2 r8. fis16
	    gis4-3 gis( b4-> a8[) r16 gis]
	    fis4.(-2 a16-4 gis fis4) r

	    \acciaccatura{ gis16[-3 a]-5} b4..(->-5 gis16-3 e4) r8. gis16
             b4(~->-5 b16 a gis a fis4)-2 r8. fis16
	    gis8(-3-> b16) r fis8(-2-> a16) r e8(->-1 gis16) r fis8(-2-> b16)-5 r
	    b2( e,4) r
	}
	\repeat volta 2 {
	    fis4..-2-> fis16( a4)-4 r8. a16
	    gis4..(-3-> fis16 e4) r8. e16-1
	    fis4(-2 gis8.) gis16 b8(-5 a gis fis)
	    e4(-1 gis8.-3 b16)-5 fis4-2 r

	    \acciaccatura{ gis16[-3 a]-5} b4..(->-5 gis16-3 e4) r8. gis16
             b4(~->-5 b16 a gis a fis4)-2 r8. fis16
	    gis8(-3-> b16) r fis8(-2-> a16) r e8(->-1 gis16) r fis8(-2-> b16)-5 r
	    b2( e,4) r
	}
     }
}

primoDown =  {
     \time 4/4
     \clef treble
     \key e \major
     \relative c'' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <gis-3 b-1>2 r8 <gis b>8(-. <gis b>-. <gis b>)-.
	    <a-2 b-1>2 r8 <a b>8(-. <a b>-. <a b>)-.
	    gis4-3 gis( b-> a8[) r16 gis]
	    fis4.(-4 a16-2 gis fis4) r

	    <gis-3 b-1>2 r8 <gis b>(-. <gis b> <gis b>)-.
	    <a-2 b-1>2 r8 <a b>(-. <a b>-. <a b>)-.
	    gis8(-3-> b16) r fis8(-4-> a16) r e8(->-5 gis16) r fis8(-4-> b16)-1 r
	    r8 <a-2 b-1>(-. <a b>-. <a b>)-. <gis-3 b-1>4 r
	}
	\repeat volta 2 {
	    fis4..->-4 fis16( a4)-2 r8. a16
	    gis4..(->-3 fis16 e4) r8. e16-5
	    fis4( gis8.) gis16 b8(-1 a gis fis)
	    e4(-5 gis8.-3 b16)-1 fis4-4 r


	    <gis-3 b-1>2 r8 <gis b>(-. <gis b> <gis b>)-.
	    <a-2 b-1>2 r8 <a b>(-. <a b>-. <a b>)-.
	    gis8(-3-> b16) r fis8(-4-> a16) r e8(->-5 gis16) r fis8(-4-> b16)-1 r
	    r8 <a-2 b-1>(-. <a b>-. <a b>)-. <gis-3 b-1>4 r
	}
     }
}

secondoDynamics =  {
     s1\p s1
     s1 s1 s16\f s16\p s8 s4 s2
     s1 s8\< s4 s4 s4 s8\! s8\> s4 s4 s8\! s4

     s1\p s1\f
     s1 s1 s16\f s16\p s8 s4 s2
     s1 s8\< s4 s4 s4 s8\! s8\> s4 s4 s4 s8\!
}

secondoUp =  {
     \time 4/4
     \clef bass
     \key e \major
     \relative c' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    r16 gis(-2 b-3 e-5 b-3 gis b e) r gis,( b e b gis b e)
	    r16 a,(-1 b-2 fis'-5 b,-2 a b fis') r a,( b fis' b, a b fis')

	    r16 e(-5 b-3 gis-2 e-1 b' gis e) r cis(-2 fis-4 a-5 fis-4 cis fis a)
	    r16 dis,(-2 fis-3 b-5 fis-3 dis fis b) r dis,( fis b a-4 gis fis b)
	    r16 gis(-2 b-3 e-5 b-3 gis b e) r gis,( b e b gis b e)

	    r16 a,(-1 b-2 fis'-5 b,-2 a b fis') r a,( b fis' b, a b fis')
	    r16 e(-5 b-3 gis)-3 r cis(-5 a-3 fis)-2 r gis(-3 e-1 b')-5 r a(-2 fis-1 dis')-5
	    r16 a(-1 b-2 dis-4 b-2 a b dis) <gis,-1 b-2 e-5>4 r
	}
	\repeat volta 2 {
	    r16 fis(-1 b-3 dis-5 b-3 fis b dis,) r fis(-1 a-2 cis-4 a-2 fis a cis)
	    r16 dis,(-1 gis-3 bis-5 gis-3 dis gis bis) r e,(-1 gis-2 cis-5 gis-2 e gis cis)

	    r16 fis,(-2 a-3 cis-5 eis,-2 b'-4 cis b) r fis(-2 a-3 cis-5 a-3 fis a cis)
	    r16 gis(-3 b-5 gis e-1 gis-3 b gis) r (dis-2 fis-3 b-5 a-4 gis fis b)-5
	    r16 gis(-2 b-3 e-5 b-3 gis b e) r gis,( b e b gis b e)

	    r16 a,(-1 b-2 fis'-5 b,-2 a b fis') r a,( b fis' b, a b fis')
	    r16 e(-5 b-3 gis-2) r cis(-5 a-3 fis)-2 r gis(-3 e b')-5 r a(-2 fis dis')-5
	    r16 a(-1 b-2 dis-4 b-2 a b dis) <gis,-1 b-2 e-5>4 r
	}
     }	
}	

secondoDown =  {
     \time 4/4
     \clef bass
     \key e \major
     \relative c, {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <e e'>4 r e8 r e' r
	    <dis,-4 dis'>4 r dis8 r dis' r

	    <e, e'>4 r <a, a'> r
	    <b b'> r <b b'> r
	    <e e'> r e8 r e' r

	    <dis,-4 dis'>4 r dis8 r dis' r
	    <e, e'>8 r a-3 r b-2 r b-1 r
	    b,4 b' <e,-5 b'-2 e-1> r
	}
	\repeat volta 2 {
	    b'4-1 r  fis-2 r
	    <gis, gis'>2 <cis cis'>4 r

	    a'4-2-> gis-> fis-> a-2->
	    b(-1 b, b') r
	    <e, e'>4 r e8 r e'8 r

	    <dis,-4 dis'>4 r dis8 r dis' r
	    <e, e'>8 r a-3 r b-2 r b-1 r
	    << { b,4 b' } \\ {b,2 } >> <e-4 b'-2 e-1>4 r
	}
     }
}

\score{
     \context PianoStaff  <<
	\set PianoStaff.instrumentName = "Secondo     "
	\context Staff = "up"   \secondoUp
	\context Dynamics = "dynamics" \secondoDynamics
	\context Staff = "down" \secondoDown
      >>
     \layout {}
     \header { piece = "Andante." }
}


\score{
     \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo     "
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
      >>

     \layout {}
     \header { piece = "Andante."}
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


