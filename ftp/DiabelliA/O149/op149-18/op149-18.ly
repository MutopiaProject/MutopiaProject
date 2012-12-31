\version "2.16.1"
% $Revision: 1.1 $

\header {
    title = "28 melodische Übungsstücke"
    subtitle = "18."
    composer = "Anton Diabelli"
    opus = "Op 149"

    mutopiatitle = "28 melodische Übungsstücke"
    mutopiacomposer = "DiabelliA"
    mutopiaopus = "Opus 149-18"
    mutopiainstrument = "Piano, Piano"
    source = "Unknown"
    style = "Classical"
    copyright = "Creative Commons 2.0"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
    lastupdated = "2012/12/31"

    footer = "Mutopia-2005/02/08-531"
tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright "+ \maintainer + " 2004.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.0/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
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
    s16\p s16_\markup\italic{dolce} s8 s4 s2 s1 s1 s1 s4\< s2 s2 s4 s4\! s4
    s1\p s2 s2\sf s1 s1\p s1
    s1 s1 s4\< s2 s4\! s1\sf s2\f s8\> s4 s8\! s1\p
    s1\p s1 s1 s2 s2\pp s1
}

primoUp =  {
    \time 4/4
    \clef treble
    \key f \major
    \relative c''' {
        \override Score.OttavaBracket   #'padding = #2
	\ottava #1
	\accidentalStyle "modern"
	\repeat volta 2 {
	    d2(-1 f4.-3 e8)-2
	    d4.(-1 f16 e d4) r
	    e4.-2 e8( g[-4 f e d])
	    e4.(-2 g16 f e4) r
            f2-3 f4 f4

	    f4.( g8 f4) r
	    f8( g16 f e8 f) a4.(-5 g8)
	}
	\alternative {
	    {f4 r a4.( g16-4 e)-2 }
	    {f4 r r2}
	}
	\repeat volta 2 {
	    e2(-2 g4.-> f8)
	    e4.( f8 e4) r

	    a4.(->-5 g8) g(-4 f e d)
	    e2 r
	    d(-1 f4.-3 e8)
	    d4.( e8 d4) r
	    a'2-5~a8 g-. f-. e-.
	}
	\alternative {
	    { d2-1 r }
	    { d4 r e8(-2-> g-4 f e) }
	}
	d4.(-1 f8) e(-2-> g-4 f e)
	d4 e8.(-2-> f16) d4 e8.(-> f16)
	d4 r d-1 d
	d1\fermata\bar"|."
    }
}

primoDown =  {
    \time 4/4
    \clef treble
    \key f \major
    \relative c'' {
	\accidentalStyle "modern"
	\repeat volta 2 {
	    d2(-5 f4.-3 e8)-4
	    d4.(-5 f16 e d4) r
	    e4.-4 e8( g[-2 f e d])
	    e4.(-4 g16 f e4) r
            f2-3 f4 f4

	    f4.( g8 f4) r
	    f8( g16 f e8 f) a4.(-1 g8)
	}
	\alternative {
	    {f4 r a4.( g16-2 e)-4 }
	    {f4 r r2}
	}
	\repeat volta 2 {
	    e2(-4 g4.-> f8)
	    e4.( f8 e4) r

	    a4.(->-1 g8) g(-2 f e d)
	    e2 r
	    d(-5 f4.-3 e8)
	    d4.( e8 d4) r
	    a'2-1~a8 g-. f-. e-.
	}
	\alternative {
	    { d2-5 r }
	    { d4 r e8(-4-> g-2 f e) }
	}
	d4.(-5 f8) e(-4-> g-2 f e)
	d4 e8.(-4-> f16) d4 e8.(-> f16)
	d4 r <d-5 f-3> <d f>
	<d f>1\fermata\bar"|."
    }
}

secondoDynamics =  {
    s1\p s1 s1 s1 s2 s8\< s4 s8 s2 s4 s8 s8\! s1\p s2 s2\sf s8\< s4 s4 s4 s8\! s1\p s1
    s1 s8\< s4 s8\! s8\> s4 s8\! s4\< s2 s4 s2 s4 s4\! s2\f s8\> s4 s4\!
    s1\p s1\p s1 s1 s1\pp s1
}

secondoUp =  {
    \time 4/4
    \clef bass
    \key f \major
    \relative c {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    f8(-1 a-2 d-5 a) g(-1 a-2 cis-4 a)
	    f8(-1 a-2 d-5 a) f( a d a)
	    g8(-1 a-2 e'-5 a,) f(-1 a-2 d-5 a)
	    e8(-1 a-2 cis-4 a) e( a cis a)
	    f8(-1 a-2 d-5 a) f(-1 a-2 ees'-5 a,)

	    f8( bes-3 d-5 bes) f( aes-2 d-5 aes)
	    f( a-2 c-4 a) e( bes'-3 c-4 bes)
	}
	\alternative {
	    { f8( a-2 c-4 a) g(-1 a-2 cis-4 a) }
	    { f8( a-2 c-4 a) <g-1 cis-4>( a)-2 <f-1 d'-5>( a)-2 }
	}
	\repeat volta 2 {
	    g( a-2 e'-5 a,) f( a-2 d a)
	    e( a-2 cis-4 a) e( a cis a)

	    g( a-2 e'-5 a,) f( a-2 d-4 a)
	    e( a-2 cis-4 a e'-5 cis-4 a-2 g)-1
	    f(-2 a-3 d-5 a)-2 g(-1 a-2 cis-4 a)
	    f( gis-2 d' gis,) <f d'>( a)-2 <f d'>( b)-3
	    f( a-2 d-5 a) g( a-2 cis-4 a)
	}
	\alternative {
	    { <f-1 a-2 d-5>1 }
	    { f8(-1 a-2 d-5 a) g(-1-> bes-3 cis-4 bes) }
	}
	f8(-1 a-2 d-5 a) g(-1-> bes-3 cis-4 bes)
	<f-1 d'-5>( a)-2 <g-1 cis-4>(-> bes)-3	<f d'>( a) <g cis>(-> bes)
	f(-1 a-2 d-5 a) f( a d a)
	<f a d>1\fermata\bar".|"
    }
}

secondoDown =  {
    \time 4/4
    \clef bass
    \key f \major
    \relative c {
	\accidentalStyle "modern"
	\repeat volta 2 {
	    d4-1 r a-2 r
	    d-1-. a-2-. f-.-1 d-2-.
	    cis-3 a d-3 f-2
	    a-1 e-1 cis-3 a
	    d d' c, c'
	    bes,-4 bes'
	    b,-5 b'
	    c, c' c, c'
	}
	\alternative {
	    { f,-3 r e-4-. a-.-2 }
	    { f-2 r e-1 d }
	}
	\repeat volta 2 {
	    cis-3-. a-. d-3-. f-.-2
	    a-1 e-2 cis-3 a

	    cis-3 a d-3 f-2
	    a2 r
	    d4-1 r a-3 r
	    bes2-2 a4 gis
	    a2-1 a,
	}
	\alternative {
	    { d8( a' gis-2 a f-3 a d,-5 a') }
	    { <d,-5 a'-1>2 <d-5 bes'-2>-> }
	}
	<d a'>2 <d bes'>2->
	<d a'>4 <d bes'>-> <d a'> <d bes'>->
	<d-5 a'-1>2 a'4-1 f-3
	d1-5\fermata\bar"|."
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
    \header { piece = "Andante cantabile." }
}


\score{
    \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo "
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
    >>
    \layout {}
    \header { piece = "Andante cantabile."}
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
