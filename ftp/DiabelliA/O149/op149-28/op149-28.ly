\version "2.16.1"
% $Revision: 1.1 $

\header {
    title = "28 melodische Übungsstücke"
    subtitle = "28."
    composer = "Anton Diabelli"
    opus = "Op 149"

    mutopiatitle = "28 melodische Übungsstücke (No. 28)"
    mutopiacomposer = "DiabelliA"
    mutopiaopus = "Op. 149"
    mutopiainstrument = "Piano Duet"
    source = "Unknown"
    style = "Classical"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-564"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
  % add space between composer and the first staff
  markup-system-spacing #'padding = #4
  ragged-bottom = ##t
}
\layout {
  \context {
    \Score
    % add space between staves in piano staff
    \override StaffGrouper #'staff-staff-spacing #'padding = #6
    \override StaffGrouper #'staff-staff-spacing #'basic-distance = #16
  }
}

primoDynamics =  {
  \override DynamicTextSpanner #'style = #'none
    s1\p s8\< s4 s4 s8\! s4 s1\p s8\< s4 s4 s8\! s4
    s4 \once\crescTextCresc s4\< s2 s1 s1\ff s1
    s1\p s1 s4 \once\crescTextCresc s4\< s2 s8\< s4 s4 s4 s8\!
    s1\f s1 s1\ff s1
}

primoUp =  {
    \time 4/4
    \clef treble
    \key g \major
    \relative c'' {
        \override Score.OttavaBracket   #'padding = #2
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    e8[-1-. b'-5-. g-3-. fis]-. e4 r
	    e8[-1-. fis-. g-. a]-. b4-5 r
	    fis8[-2 b-5-. a-. g]-. fis4 r
	    fis8[-2 g-. a-. fis]-. b4 r

	    g8[-3-. e16( fis] g8[)-. fis16(-2 g] a8)-. fis-. b4->-5
	    g8[-3-. e16( fis] g8[)-. fis16(-2 g] a8)-. fis-. b4->-5
	    g4-3 e8.-1 fis16 g4-^ e-^
	    b'2.-- r4
	}
	\repeat volta 2 {
	    a8[-.-4 b-. g-3-. a]-. fis4-2 r
	    g8[-.-3 a-. fis-2-. g]-. e4-1 r
	    a8[-. fis-. g-3-. e]-. a[-4-. fis-. g-.-3 e]-.
	    fis8[(-2 b)-5 b-. b]-. b[-.-5 a-. g-. fis]-2-.

	    g8[-3-. e16(-1 fis] g8[)-. fis16(-2 g] a8)-. fis-. b4->-5
	    g8[-3-. e16( fis] g8[)-. fis16(-2 g] a8)-. fis-. b4->-5
	    g4-3 e8.-1 g16-3 b4-5 b16( a g fis)
	    e4-.-1 g-3-. e-. r
	}
    }
}

primoDown =  {
    \time 4/4
    \clef treble
    \key g \major
    \relative c' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <e-5 g-3 b-1>4 r e8[-.-5 b'-1-. g-3-. fis]-.
	    e4 r e8[-5-. fis-. g-. a]-.
	    b4-1 r fis8[-.-4 b-.-1 a-. g]-.
	    fis4 r fis8[-.-4 g-. a-. fis]-.

	    g8-3 r r fis16(-4 g a8)-. fis-. b4-1->
	    g8-3 r r fis16(-4 g a8)-. fis-. b4-1->
	    g4-3 e8.-5 fis16 g4-^ e-^
	    b'2.-- r4
	}
	\repeat volta 2 {
	    <fis-4 a-2 b-1>4 r fis8[-.-4 g-. a-. fis]-.
	    g4-3 r e8[-5-. fis-. g-. e]-.
	    fis[-4-. b-. g-.-3 b]-. fis[-4-. b-. g-.-3 b]-.
	    fis[(-4 b)-1 b-. b]-. b[-.-1 a-. g-. fis]-.-4

	    g8[-3-. e16(-5 fis] g8[)-. fis16(-4 g] a8)-. fis-. b4->-1
	    g8[-3-. e16( fis] g8[)-. fis16(-4 g] a8)-. fis-. b4->-1
	    g4-3 e8.-5 g16-3 b4-1 b16( a g fis)
	    e4-.-5 <e-5 g-3 b-1>-. <e g b>-. r
	}
    }
}

secondoDynamics =  {
  \override DynamicTextSpanner #'style = #'none
  s1\p s8\< s4 s4 s4 s8\! s1\p s8\< s4 s4 s4 s8\!
  \once\crescTextCresc s1\<
  s1 s1\ff s1 s1\p s1 \once\crescTextCresc s1\<
  s8\< s4 s4 s4 s8\! s1\f s1 s1\ff s1
}

secondoUp =  {
    \time 4/4
    \clef bass
    \key g \major
    \relative c {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <e-1 g-3 b-5>8(-. <e g b>-. <e g b>-. <e g b>-. <e g b>-. <e g b>-. <e g b>-. <e g b>)-.
	    <e g b>(-. <e g b>-. <e g b>-. <e g b>-. <e g b>-. <e g b>-. <e g b>-. <e g b>)-.
	    <fis-2 a-4 b-5>(-. <fis a b>-. <fis a b>-. <fis a b>-.
                   <fis a b>-. <fis a b>-. <fis a b>-. <fis a b>)-.
	    <fis a b>(-. <fis a b>-. <fis a b>-. <fis a b>-.
            <fis a b>-. <fis a b>-. <fis a b>-. <fis a b>)-.
	    <e-1 g-3 b-5>(-. <e g b>-. <e g b>-. <e g b>)-.
            <fis-2 a-4 b-5>(-. <fis a b>-. <fis a b>-. <fis a b>)-.

	    <e-1 g-3 b-5>(-. <e g b>-. <e g b>-. <e g b>)-.
            <fis-2 a-4 b-5>(-. <fis a b>-. <fis a b>-. <fis a b>)-.
	    <e-1 g-3 b-5>4 e8.-1 fis16 g4 e
	    b'8-5-. fis-3-. dis-2-. fis-3-. b,4-1 r
	}
	\repeat volta 2 {
	    <fis'-2 a-4 b-5>8(-. <fis a b>-. <fis a b>-. <fis a b>-.
	    <fis a b>-. <fis a b>-. <fis a b>-. <fis a b>)-.
	    <e-1 g-3 b-5>(-. <e g b>-. <e g b>-. <e g b>-.
	    <e g b>-. <e g b>-. <e g b>-. <e g b>)-.
	    r8 <fis a b> r <e g b> r <fis a b> r <e g b>

	    <dis-2 fis-3 b-5> b'-5 b b b <a b>-^ <g b>-^ <fis b>-^
	    <e-1 g-3 b-5>(-. <e g b>-. <e g b>-. <e g b>)-.
	    <fis-2 a-4 b-5>(-. <fis a b>-. <fis a b>-. <fis a b>)-.
	    <e g b>(-. <e g b>-. <e g b>-. <e g b>)-.
	    <fis a b>(-. <fis a b>-. <fis a b>-. <fis a b>)-.
	    <e-1 g-3 b-5>4 e8. g16-3 b4-5 b16(-5 a g fis)
	    e4-1 <e-1 g-3 b-5> <e g b> r
	}
    }
    \pageBreak
}

secondoDown =  {
    \time 4/4
    \clef bass
    \key g \major
    \relative c, {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    e4-2 r r2
	    e4-2 b e r
	    dis-3 r r2
	    dis4-3 b dis r
	    e-2-. b-. dis-3-. b-.

	    e4-. b-. dis-. b-.
	    e4-2 e8.-4 fis16 g4 e
	    b'8-1-. fis-2-. dis-3-. fis-2-.
	    b,4-5 r
	}
	\repeat volta 2 {
	    dis4-3 r dis-. b-.
	    e-2 r e-. b-.
	    dis8-3 r e-2 r dis r e r

	    b8 b' b b b-1 <a-2 b>-^ <g-3 b>-^ <fis-4 b>-^
	    e4-2-. b-. dis-.-3 b-.
	    e-. b-. dis-. b-.
	    e4-2 e8.-4 g16-2 b4-1 b16(-1 a g fis)
	    e4-5 <e-5 g-3 b-1> <e g b> r
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
    \layout { }
    \header { piece = "Allegro." }
}


\score{
    \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo     "
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
    >>
    \layout {}
    \header { piece = "Allegro."}
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
      \tempo 4 = 90
    }
}
