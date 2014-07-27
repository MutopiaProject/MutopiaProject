\version "2.18.2"

\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #6
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 26. a 2 Clav."
        mutopiatitle = "Goldberg Variations - 26"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Harpsichord,Clavichord"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        license = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
	comment = "With the help of Neil Puttock"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2014/07/27-1446"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%%---------- definitions

%---------Pavel's snippet from LSR to change clef at beginning of staff
% Append markup in the text property to the grob
#(define (append-markup grob old-stencil)
  (ly:stencil-combine-at-edge
    old-stencil X RIGHT (ly:text-interface::print grob)))

trebleToBass = {
  \clef bass
  % Fake staff clef appearance
  \once \override Staff.Clef.glyph-name = #"clefs.G"
  \once \override Staff.Clef.Y-offset = #-1
  % Append change clef to the time signature
  \once \override Staff.TimeSignature.text = \markup {
    \hspace #1.2
    \raise #1
    \musicglyph #"clefs.F_change"
  }
  \once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (append-markup grob (ly:time-signature::print grob)))
}

bassToTreble = {
  \clef treble
  % Fake staff clef appearance
  \once \override Staff.Clef.glyph-name = #"clefs.F"
  \once \override Staff.Clef.Y-offset = #1
  % Append change clef to the time signature
  \once \override Staff.TimeSignature.text = \markup {
    \hspace #1.2
    \raise #-1
    \musicglyph #"clefs.G_change"
  }
  \once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (append-markup grob (ly:time-signature::print grob)))
}
hideEndTimeSig = \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
hidePP = \tweak #'stencil ##f \pp
hideMP = \tweak #'stencil ##f \mp

sopranoOne =   \relative g {
	    \repeat volta 1 { %begin repeated section
          \trebleToBass \hideEndTimeSig
		      \scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4)   
				  \oneVoice
			    g16-\hidePP [ a g  d  e fis ] g16 [ fis g  a  g a ] b16 [ a b  c  b cis ] 
			    \clef "treble" | % 1
				
			    d16 [ e d a b cis ] d16 [ cis d e d e ] fis16 [ e fis g e fis ] | % 2
			    g16 [ a g b, e fis ] g16 [ fis g a g a ] b16 [ a b cis b cis ] | % 3
			    d16 [ e d a b cis ]  d16 [ cis d e d e ]  fis16 [ e fis g e fis ] | % 4
			    g16 [ fis g d c! d ]  b16 [ g fis! g b d ]  f16 [ e f d b d ] | % 5
			    e16 [ d e c b c ]  g16 [ e d e g c ]  e16 [ d e c a c ] | % 6
			    d16 [ c d a g a ]  fis16 [ d cis d fis a ]  c!16 [ b c a fis a ] | % 7
			    b16 [ a b g fis g ] d16 [ b a b d g ]  b16 [ g fis g b d ] | % 8
		    }
        \voiceOne
		    \time 3/4 
		    g8.-\hideMP [ fis32 e32 ] d4 r8 b'8 | % 9
		    a4 a4 r8 a8 | % 10
		    a4 g4 r8 g8 | % 11
		    g8. [ e16 ] a,4 r8 g'8 | % 12
		    g8. [ e16 ] fis4 r8 a8 | % 13
		    b8. [ fis16 ] g4 r8 g8 | % 14
		    g4 cis,4 r8 a8 | % 15
		    a8. [ e16 ] fis4 r4 \bar ":..:" % 16
	    } %end of repeated section
	    \oneVoice
	    \repeat volta 2 { %begin repeated section
		    \scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4)      
			    a'16-\hidePP [ g a d c b ] a16 [ b a g a g ]  fis16 [ g fis e fis e ] | % 17
			    d16 [ c d g fis e ] d16 [ e d c d c ]  b16 [ c b a b a ] | % 18
			    g16 [ fis g b a g ] fis16 [ g fis e fis e ] dis16 [ e dis cis dis cis ]  | % 19 
			    \clef "bass"
			    b16 [ ais b e dis cis ] b16 [ c b a b a ] g16 [ a g fis g fis ] | % 20
			    e16 [ dis e b' a b ] g16 [ fis g \clef "treble" b e fis ] g16 [ fis g e dis e ] | % 21
				c16 [ b c e d e ] a,16 [ gis  a c f a ] c16  [ b c a f a ] | % 22
				dis,16 [ cis dis fis! e fis ] b,16 [ ais b dis fis g ] a!16 [ g a fis dis fis ] | % 23
				g16 [ fis g b a b ] e,16 [ dis e g b dis ] e16 [ c b a g fis ] | % 24
		    }
		 \time 3/4 
		 e8-\hideMP \voiceOne r8 r8 r16 g'16 fis8. [ e16 ] | % 25
		 d4 ~ d8. [ f16 ] e8. [ d16 ] | % 26	
		 c2 ~ c8. [ c16 ] | % 27
     \voiceTwo
		\scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4) 
				fis,16-\hidePP [ g fis cis d e ] \oneVoice fis16 [ e fis g fis g ] a16 [ g a  b g a ] | % 28		
				b16 [ c b  fis  g a ] b16^[ a b c b c ]  \voiceOne d16 [ c d  e c d ] | % 29
				e16 [ f e  b c d ] \oneVoice e16 [ d e  fis e fis ] g16 [ fis g a  fis g ]| % 30
				a16 [ b a  fis g a ] b16 [ a b d c b ]  a16 [ g fis e  d c ] | % 31
				b16 [ a g fis g d ] b8 r8 r8 r4. \bar ":|." % 32
        
        % Place a fermata over the final barline
        \override Staff.RehearsalMark.break-visibility = #begin-of-line-invisible
        \mark \markup \musicglyph #"scripts.ufermata"
		}
    } %end repeated section

}

sopranoTwo =   \relative b' {
	\repeat volta 1 { %begin repeated section
		\stemDown
		\clef "bass" 		    
		\scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4)      
			    s1*18/16 
			    \clef "treble" | % 1
			    s1*18/16 | % 2
			    s1*18/16 | % 3
			    s1*18/16 | % 4
			    s1*18/16 | % 5
			    s1*18/16 | % 6
			    s1*18/16 | % 7
			    s1*18/16 | % 8
		}
		\time 3/4 
		b4-\hideMP b4 r8 g'8 | % 9
		g8. [ e16 ] fis4 r8 c8 | % 10
		b8. [ dis16 ] e4 r8 e8 | % 11
		a,8. [ cis16 ] e,4 r8 cis'8 | % 12
		cis4 d4 r8 d8 | % 13
		d4 e4 r8 e8 | % 14
		a,8. [ g32 fis32 ] e4 r8 a,8 | % 15
		d4 d4 r4 | % 16
    } %end of repeated section
    
       \repeat volta 2 { %begin repeated section
         \scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4)  
				s1*18/16 | % 17
				s1*18/16 | % 18	
				s1*18/16 | % 19		
				s1*18/16 | % 20
				s1*18/16 | % 21
				s1*18/16 | % 22
				s1*18/16 | % 23
				s1*18/16 | % 24
		 }
		\time 3/4  
        r8  r16 gis16-\hideMP a8. [ b16 ] c4 ~ | % 25
        c8. [ fis,16 ] g8. [ a16 ] b4 ~  | % 26
		b8. [ e,16 ] fis8. [ g16 ] a8. [ g16 ] | % 27
		\scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4) 
				\voiceOne c8-\hideMP s1*10/16 \voiceTwo fis,8 s1*4/16 | % 28
				g8 s1*10/16 b8 s1*4/16 | % 29
				c8 s1*16/16  | % 30
				s1*18/16 | % 31
				s1*18/16 | % 32
		}
    } %end repeated section
}

soprano = << \sopranoOne \\ \sopranoTwo>>


%%
%% Bass Clef
%% 

bassOne = \relative b' {
  \hideEndTimeSig
	    \repeat volta 1 { %begin repeated section
		    \bassToTreble	
		    \time 3/4 
		    b4-\hideMP b4 r8 b8 | % 1
		    a4 a4 r8 d8 | % 2
		    d4 cis4 \prallprall r8 g8 | % 3
		    g8. [ e16 ] fis4 r8 a8 | % 4
		    d,8. [ e16 ] f4 r8 
		    \clef "bass" g8 | % 5
		    g8. [ e16 ] c4 r8 e8 | % 6
		    a,8. [ b16 ] c4 r8 d8 | % 7
		    d8. [ b16 ] g4 r4  | % 8
        \oneVoice
		    \scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4)
			    g,16-\hidePP [ a g  d e fis ] g16 [ fis g  a g a ]  b16 [ a b c b cis ] | % 9
			    d16 [ e d  a b cis ] d16 [ cis d e d e ] fis16 [ e fis g e fis ]| % 10
			    g16 [ a g  b, e fis ] g16 [ fis g a g a ]  b16 [ a b cis a b ] | % 11
			    cis16 [ d cis  e, a b ]
			    \clef "treble" 
			    cis16 [ b cis  d  cis d ] e16 [ d e fis d e ] | % 12
			    fis16 [ e fis  a g a ] d,16 [ cis d fis a b ] c!16 [ b c a fis a ] | % 13
			    g16 [ fis g b a b ] e,16 [ dis e g b cis ]  d!16 [ cis d  b g b ] | % 14
			    cis16 [ b cis  e d e ] a,16 [ gis a cis e fis ]  g!16 [ fis g e cis e ] | % 15
			    fis16 [ e fis a g a ] d,16 [ cis d fis a cis ] d4. \prallmordent \bar ":..:" % 16
		    }
	    } %end of repeated section
	    \voiceOne
		\repeat volta 2 { %begin repeated section
			\time 3/4  
			fis,,8.-\hideMP [ e16 ] fis4 r8 d8 | % 17
			g8. [ a16 ] b4 r8 g'8 | % 18
			e8. [ b'16 ] a4 r8 a8 | % 19 
			a8. [ fis16 ] dis4 r8 fis8 | % 20
			g8. [ fis16 ] e4 r8 g8 | % 21
			g4 f4 r8 a8 | % 22
			a8. [ fis16 ] dis4 r8 fis8 | % 23
			fis8. [ dis16 ] e4
      \oneVoice
			\scaleDurations #'(4 . 6) {
        \set Timing.measureLength = #(ly:make-moment 3/4)
        
        % Fix ugly space in upper stave, two options
        % 1. The more complicated method, but with best spacing
        \once \override Staff.Clef.extra-spacing-width = #'(+inf.0 . -inf.0)
        \once \override Staff.Clef.stencil = #ly:text-interface::print
        \once \override Staff.Clef.text = \markup \override #'(baseline-skip . 0) {
          \musicglyph #"clefs.F_change" \lower #1 \with-dimensions #'(0 . 3.5) #'(0 . 0) \number \column  { 18 16 }
        }
        \once \override Staff.TimeSignature.stencil = ##f
        % 2. A bit more elegant, but places time signature too close to rest (difficult to fix easily)
        %\once \override Staff.TimeSignature.extra-spacing-width = #'(+inf.0 . -inf.0)
        %\once \override Staff.Clef.space-alist.time-signature = #'(extra-space . 0.5)
        
          \clef "bass" \time 18/16 s1*6/16 | % 24
					c,16 [ b c f e d ] c16 [ d c  b c b ] a16 [ b a g a fis! ] | % 25
					b16 [ a b e d c ] b16 [ c b a b a ] g16 [ a g fis! g e ] | % 26
					a16 [ g a d c b ]  a16 [ b a g a g ] fis16 [ g fis e fis e ] | % 27
					d16 [ cis d g fis e ] d16^[ e d c d c ] b16 [ c b a b a ] | % 28
					g16 [ fis g c b a ] g16 [ a g f g f ] e16 [ f e d e d ] | % 29
					c8. [ g'16 a b ] c16 [ b c d c d] e16 [ d c b a g ] | % 30
					fis16 [ e fis d e fis ] g16 [ fis g a b c ] d16 [ cis d e fis d ] | % 31
					g8 r8 r8 r16 a16 [ g fis g d ] g,4.
          
          % Place a fermata under the final barline
          \override Staff.RehearsalMark.break-visibility = #begin-of-line-invisible
          \override Staff.RehearsalMark.direction = #DOWN
          \mark \markup \musicglyph #"scripts.dfermata"

          \bar ":|." % 32
			}
    } %end repeated section

}
	
bassTwo = \relative g' {
		\repeat volta 1 { %begin repeated section
				    
			\clef "treble"  
			\time 3/4 
			g4-\hideMP d4 r8 g8 | % 1
			g8. [ e16 ] fis4 r8 a8 | % 2
			b8. [ g16 ] e4 r8 a,8 | % 3
			d4 d4 r8 c!8 | % 4
			b8. [ c16 ] d4 r8 \clef "bass" g,8  | % 5
			c4 e,4 r8 g8 | % 6
			fis8. [ g16 ] a4 r8 d,8 | % 7
			g4 g,4 r4 | % 8
			\scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4)	    
			    s1*18/16 | % 9	
			    s1*18/16 | % 10		
			    s1*18/16 | % 11		
			    s1*6/16 
			    \clef "treble"
			    s1*12/16| % 12
			    s1*18/16 | % 13
			    s1*18/16 | % 14
			    s1*18/16 | % 15
			    s1*18/16 | % 16
			}		 
		} %end of repeated section
		
		\repeat volta 2 { %begin repeated section
			\time 3/4  
			d''4-\hideMP c4 r8 c8 | % 17
			b8. [ d16 ] g4 r8 d'8 | % 18
			cis4 dis4 r8 e8 | % 19
			dis4 fis,4 r8 dis'8 | % 20
			e4 b4 r8 b8 | % 21
			a8. [ b16 ] c4 r8 c8 | % 22
			b4 a4 r8 a8 | % 23
			a8. [ fis16 ] g4 
      \oneVoice
			\scaleDurations #'(4 . 6) {
				    \time 18/16
					\set Timing.measureLength = #(ly:make-moment 3/4) 
					\clef "bass" 
					r16 e,16-\hidePP [ fis g  a b ] | % 24
					s1*18/16 | % 25
					s1*18/16 | % 26
					s1*18/16 | % 27
					s1*18/16 | % 28
					s1*18/16 | % 29
					s1*18/16 | % 30
					s1*18/16 | % 31
					s1*18/16 | % 32
			}
    } %end repeated section
	
}

bass = << \bassOne \\ \bassTwo>>

\score {
 \new PianoStaff <<
 \new Staff = "upper" { \key g \major \soprano }
 \new Staff = "lower" { \key g \major \bass }
 >>
 \layout {
   \context {
     \Score
     \remove "Timing_translator"
     \remove "Default_bar_line_engraver"
     % removed from Score context to allow rehearsal marks (in this case, fermatas)
     % on each stave
     \remove "Mark_engraver"

   }
   \context {
     \Staff
     \consists "Timing_translator"
     \consists "Default_bar_line_engraver"
     \consists "Mark_engraver"
     
   }
 }
  \midi { \tempo 4 = 85 }
}
