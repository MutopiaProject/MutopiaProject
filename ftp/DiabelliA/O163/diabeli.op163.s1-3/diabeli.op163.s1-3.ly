\version "2.10.10"
% $Revision: 1.3 $

\header {
    mutopiatitle = "Jugendfreuden - Sechs Sonatinen"
    mutopiacomposer = "DiabelliA"
    mutopiaopus = "Opus 163-1"
    mutopiainstrument = "Piano Duet"
    source = "Unknown"
    style = "Classical"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
    lastupdated = "2008/05/04"

 footer = "Mutopia-2008/10/09-1566"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

primoDynamics =  {
    % line 1
    s4\p s2-\markup{\italic{dolce}} s4 s1 s1\sf s1 s1-\markup{\italic{cresc.}}
	% line 2
	s4. s8\< s4 s8 s8\! s1\f s4\> s4 s4\! s4 s4\p s4-\markup{\italic{dolce}} s2 s1
	% line 3
	s1\sf s1 s1-\markup{\italic{cresc.}} s4. s8\< s4. s8\! s1\f s4\> s4 s4\! s4
    % line 4
	s1\p s1 s1-\markup{\italic{cresc. poco a poco}} s1 s1
	% line 5
	s1 s1\f s1 s1\p s1 s1
	% line 6
	s1 s1 s2 s2\pp s1 s1
}

primoUp =  {
    \time 2/2
    \clef treble
    \key c \major
    \relative c''' {
        \override Score.OttavaBracket   #'padding = #2
   	    #(set-octavation 1)
	    #(set-accidental-style 'modern)
	    \set fingeringOrientations = #'(left)

		% line 1
		e2(-5 a,4)-1 a
		b4.(-2 c8 b4) r
		\grace{b16[( c]} d2-4 c8.[( d16 b8. c16])
		a4.(-1 c16[ b]) a4 r
		c2-3 c4 c

		% line 2
		c4. cis8(-3 e4-5 d)
		\grace{c16[(-3 d]-4} e4)(-5 d8[ c]) c[(-3 b a b])
		d2(-4 c4) r
		e2(-5 a,4)-1 a
		b4.(-2 c8 b4) r

		% line 3
		\grace{b16[( c]} d2)-4 c8.[( d16 b8. c16])
		a4.(-1 c16[ b]) a4 r
		c2-3 c4 c
		c4. cis8(-3 e4-5 d)
		\grace{c16[(-3 d]-4} e4)(-5 d8[ c]) c[(-3 b a b])
		d2(-4 c4) r

	\bar "||"

		% line 4
		c2-3 c4 c
		d4.( c8 a2)
		d2-4 d4 d
		e4.( d8 b2)
		e2-5 e4 e
        
		% line 5
		d4(-4 c) c(-3 bes)
		a2(-1 c4 b)
		a2 r
		b(-2 d4. c8)
		a2 r
		b-2 \grace{b16[( c]} d4)(-> c8[ b])

		% line 6
		a4 r \grace{b16[( c]} d4)(-4-> c8[ b])
		a4 r \grace{b16[( c]} d4)(-4-> c8[ b])
		a4 r c-3 r
		a-1 r c r
		a1\fermata

		\bar "|."
   }
}

primoDown =  {
    \time 2/2
    \clef treble
    \key c \major
    \relative c'' {
	    #(set-accidental-style 'modern)
	    \set fingeringOrientations = #'(left)

		% line 1
		e2(-1 a,4)-5 a
		b4.(-4 c8 b4) r
		\grace{b16[( c]} d2-2 c8.[( d16 b8. c16])
		a4.(-5 c16[ b]) a4 r
		c2-3 c4 c

		% line 2
		c4. cis8(-3 e4-1 d)
		\grace{c16[(-3 d]-2} e4)(-1 d8[ c]) c[(-3 b a b])
		d2(-2 c4) r
		e2(-1 a,4)-5 a
		b4.(-4 c8 b4) r

		% line 3
		\grace{b16[( c]} d2)-2 c8.[( d16 b8. c16])
		a4.(-5 c16[ b]) a4 r
		c2-3 c4 c
		c4. cis8(-3 e4-1 d)
		\grace{c16[(-3 d]-2} e4)(-1 d8[ c]) c[(-3 b a b])
		d2(-2 c4) r

	\bar "||"

		% line 4
		c2-3 c4 c
		d4.( c8 a2)
		d2-2 d4 d
		e4.( d8 b2)
		e2-1 e4 e

		% line 5
		d4(-2 c) c(-3 bes)
		a2(-5 c4 b)
		a2 r
		b(-4 d4. c8)
		a2 r
		b-4 \grace{b16[( c]} d4)(-> c8[ b])

		% line 6
		a4 r \grace{b16[( c]} d4)(-2-> c8[ b])
		a4 r \grace{b16[( c]} d4)(-2-> c8[ b])
		a4 r <a-5 c-3 e-1> r
		<a c> r <a c e> r
		<a c>1\fermata

		\bar "|."
    }
}

secondoDynamics =  {
	% line 1
    s1\p s1 s1 s1 s1-\markup{\italic{cresc.}}
	% line 2
	s2 s8\< s4 s8\! s1\f s4\> s4 s4\! s4 s1\p s1
	% line 3
	s1 s1 s1-\markup{\italic{cresc.}} s4 s4\< s4 s4\! s1\f s4\> s4 s4\! s4
    % line 4
	s1\p s1 s1-\markup{\italic{cresc. poco a poco}} s1 s1	% line 5
	s1 s1\f s8\p s8\< s8 s8\! s8\> s8 s8 s8\! s1\p s8\< s4 s8\! s8\> s4 s8\!	% line 6
	s1 s2 s2\sf s2 s2\sf s1\pp s1 s1

}

secondoUp =  {
    \time 2/2
    \clef bass
    \key c \major
    \relative c {
	   #(set-accidental-style 'modern)
	   \set fingeringOrientations = #'(left)

		% line 1
		e8[(-1 a-3 c-5 a] e[ a c a])
        e[( b'-4 d-5 b] e,[ b' d b])
        e,[( gis-2 d'-5 gis,] e[ gis d' gis,])
        e[( a-3 c-5 a] e[ a c a])
        e[( bes'-3 c-4 bes] e,[ bes' c bes])

		% line 2
		f[( a-2 c-4 a] f[ a-2 d-5 a])
		e[( g-2 c-5 g] f[ g-2 d'-5 g,])
        f[( g-2 b-4 g] <e c'-5>4) r
		e8[(-1 a-3 c-5 a] e[ a c a])
		e[( b'-4 d-5 b] e,[ b' d b])
     
		% line 3
		e,[( gis-2 d'-5 gis,] e[ gis d' gis,])
        e[( a-3 c-5 a] e[ a c a])
        e[( bes'-3 c-4 bes] e,[ bes' c bes])
		f[( a-2 c-4 a] f[ a-2 d-5 a])
		e[( g-2 c-5 g] f[ g-2 d'-5 g,])
        f[( g-2 b-4 g] <e c'>4)-5 r

		\bar "||"

		% line 4
		g8[(-2 bes-4 c-5 bes] g[ bes c bes])
		f[(-1 a-3 c-5 a] f[ c'-4 a-2 c])
		a[(-2 c-4 d-5 c] a[ c d c])
		g[(-1 b-3 d-5 b] g[ d'-4 b-2 d])
		b[(-2 d-4 e-5 d] b[ d e d])

		% line 5
		a[(-1 e' c-3 a]-2 f[-1 f' d-4 bes])-2
		e,[( a-2 c-4 e] e,[ gis-2 d'-4 e])
		c[(-3 e-5 dis-4 e] c[-3 e a,-1 e'])
		gis,[(-2 e'-5 d e] g,[-2 e' d e])
		c[(-3 e dis-4 e] c[-3 e a, e'])

		% line 6
		gis,[(-2 e' d e] gis,[ e' d e])
		c[(-3 e c a]-1 gis[-2 e'-5 d e])
		c[(-3 e c a]-1 gis[-2 e'-5 d e])
		c[(-3 a-1 e'-5 c]-3 a[-1 e' c e])
		c[( a e' c] a[ e' c e])
		<e, a-2 c-4>1\fermata

		\bar "|."
    }	
}	

secondoDown =  {
    \time 2/2
    \clef bass   
    \key c \major
    \relative c {
	  #(set-accidental-style 'modern)
	  \set fingeringOrientations = #'(left)

	  % line 1
	  a1(-1 	  gis)	  e(-4	  a)-1      g(-2

	  % line 2
	  f2) d
	  g-1 g,
	  c4-3 g c r
	  a'1(-1	gis)

		% line 3
		e1(-4	a)-1	g(-2	f2) d
		g-1 g,
		c4-3 g c r

		\bar "||"
		% line 4
		e2(-2 c		f1)-1
		fis2(-2 d		g1)
		gis2(-2 e		

		%line 5
		a-1 d,
		e) e-5
		a2.(-3 c4)-2
		<e, e'>1(
		a2.)-3 c4-2

		% line 6
		<e, e'>1(
		a4.)-3 c8 <e, e'>2(
		a4.)-3 c8 <e, e'>2(
		a4)-3 r4 <a-4 c-2 e-1> r
		<a, a'>4 r <a'-4 c e> r
		<a, a'>1 \fermata

		\bar "|."
    }
}

\paper {
	printallheaders=##t
}

\score{
    \context PianoStaff  <<
	\set PianoStaff.instrumentName = "Secondo     " 
	\context Staff = "up"   \secondoUp
	\context Dynamics = "dynamics" \secondoDynamics
	\context Staff = "down" \secondoDown
    >>
    \layout {
	\context {
	    \type "Engraver_group"
	    \name Dynamics
	    \consists "Output_property_engraver"
      
	    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
      
	    \consists "Script_engraver"
	    \consists "Dynamic_engraver"
	    \consists "Text_engraver"
	    
	    \override TextScript #'font-size = #2
	    \override TextScript #'font-shape = #'italic
	    \override DynamicText #'extra-offset = #'(0 . 2.0)
	    \override Hairpin #'extra-offset = #'(0 . 2.0)
	    
	    \consists "Skip_event_swallow_translator"
	    
	    \consists "Axis_group_engraver"
	}
	\context {
	    \PianoStaff
	    \accepts Dynamics
	    \override VerticalAlignment #'forced-distance = #7
	}
    }
    \header {
	    title = "JUGENDFREUDEN."
	    subtitle = "Sechs Sonatinen."
	    subsubtitle = "I"
	    composer = "Anton Diabelli"
	    opus = "Op 163"
		piece = "Romanze. Andantino."		
	}
}
  

\score{    
    \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo     " 
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
    >>

    \layout {
	\context {
	    \type "Engraver_group"
	    \name Dynamics
	    \consists "Output_property_engraver"
      
	    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
      
	    \consists "Script_engraver"
	    \consists "Dynamic_engraver"
	    \consists "Text_engraver"
	    
	    \override TextScript #'font-size = #2
	    \override TextScript #'font-shape = #'italic
	    \override DynamicText #'extra-offset = #'(0 . 2.0)
	    \override Hairpin #'extra-offset = #'(0 . 2.0)
	    
	    \consists "Skip_event_swallow_translator"
	    
	    \consists "Axis_group_engraver"
	}
	\context {
	    \PianoStaff
	    \accepts Dynamics
	    \override VerticalAlignment #'forced-distance = #7
	}
    }
    \header {
		breakbefore = ##t
	    title = "JUGENDFREUDEN."
	    subtitle = "Sechs Sonatinen."
	    subsubtitle = "I"
	    composer = "Anton Diabelli"
	    opus = "Op 163"
		piece = "Romanze. Andantino."
	}
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
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }


}


