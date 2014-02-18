\version "2.16.1"

inlineScoreStaccatissimo = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        }
        { \relative c''{
        	\clef treble
        	\cadenzaOn
        	 c4\staccatissimo e\staccatissimo g,\staccatissimo \bar "|"
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreStaccato = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        }
        { \relative c''{
        	\clef treble
        	\cadenzaOn
        	 c4\staccato e\staccato g,\staccato \bar "|"
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreTiedStaccato = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        }
        { \relative c''{
        	\clef treble
        	\cadenzaOn
        	 c4(\staccato e\staccato g,)^\staccato \bar "|"
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreTiedNotes = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        }
        { \relative c''{
        	\clef treble
        	\cadenzaOn
        	 c4( e g,) \bar "|"
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreArpeggioSign = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \override StaffSymbol #'stencil = ##f %	\remove Staff_symbol_engraver         %  <----- THIS LINE IS CAUSING "VERTICAL ALIGNMENT" ERROR
        \remove Clef_engraver
        }
        { \relative c''{
        	\hideNotes <g b d g>16\arpeggio
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        }
}
inlineScoreArpeggio = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with { \remove Time_signature_engraver }
        { \relative c'' {
        	\clef treble
        	\cadenzaOn
        	<g b d g>4\arpeggio \bar "|"
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        }
    } " "
}
inlineScoreBaroqueArpeggioSlash = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Collision_engraver

        }
        { \relative c''{
        	\clef treble
        	\cadenzaOn
        	<<{
        		\override NoteHead #'stencil = #(ly:make-stencil(list 'draw-line 0.15 -0.5 -0.4 2 0.4) '(-0.1 . 0.1) '(0.1 . 1))
        		\override Stem #'stencil = ##f
        		\override Flag #'stencil = ##f
        		b4 s d s
        	}\\{
        		<g, c e> s <g c e g> s
        	}>>	
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreBaroqueArpeggioSlashEquiv = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \consists Span_arpeggio_engraver
        }
        { \relative c''{
        	\set Staff.connectArpeggios = ##t
        	\clef treble
        	\cadenzaOn
        	<<{
        		<c e>4\arpeggio s <d e g>\arpeggio s
        	}\\{
        		<g, b>\arpeggio s <g c>\arpeggio s
        	}>>	
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreCrescendo = \markup { " " \general-align #Y #-1
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Staff_symbol_engraver
        \remove Clef_engraver
        %fontSize = #-5
        \override DynamicLineSpanner #'staff-padding = #0
 %       \override StaffSymbol #'staff-space = #(magstep -10)
        }
        { \relative c''{
        	
        	\clef treble
        	\cadenzaOn
        	\dynamicDown
        	\hideNotes 
        	b4\< b b\!
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreDecrescendo = \markup { " " \general-align #Y #-1
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Staff_symbol_engraver
        \remove Clef_engraver
        %fontSize = #-5
        \override DynamicLineSpanner #'staff-padding = #0
 %       \override StaffSymbol #'staff-space = #(magstep -10)
        }
        { \relative c''{
        	
        	\clef treble
        	\cadenzaOn
        	\dynamicDown
        	\hideNotes 
        	b4\> b b\!
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreCrescDecrescendo = \markup { " " \general-align #Y #-1
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Staff_symbol_engraver
        \remove Clef_engraver
        %fontSize = #-5
        \override DynamicLineSpanner #'staff-padding = #0
 %       \override StaffSymbol #'staff-space = #(magstep -10)
        }
        { \relative c''{
        	
        	\clef treble
        	\cadenzaOn
        	\dynamicDown
        	\hideNotes 
        	b4\< b b\!\> b b\!
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreExampleArpeggioOne = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = "Ex:"
		    	    \clef treble
		    	    \cadenzaOn
		    	    <g c e>1_\markup{\italic "Arp:"} \bar "|" 
		    	    <<{
		    	    	\override NoteHead #'rotation = #'(-30 0 0)
		    	    	\override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    	\override NoteHead #'X-offset =  #-0.1
		    	    	\override NoteColumn #'force-hshift = #-0.95
				d'2 f
			    }\\{
			    	\override NoteHead #'rotation = #'(-30 0 0)
		    	    	\override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    	\override NoteHead #'X-offset =  #-1.36
			    	<b, g><d g,>
			    }>> \bar "|" \noBreak
		    	    <g, c e>1 \bar "||" \stopStaff \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.55)
		    	    \hideNotes c2-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2 \unHideNotes
		    	    \startStaff
		    	    \sameSizeClef \forceClef
		    	    \repeat unfold 2{g8[ c e c]} \bar "|" \noBreak
		    	    g[ b d b] g[ d' f d]\bar "|" \noBreak
		    	    \repeat percent 2{ g,[ c e c]} \bar "||" \noBreak
		    	    \stopStaff
		    	    \override TextScript #'extra-offset = #'(1 . 4.55)
		    	    \hideNotes f2_\markup{\whiteout \pad-markup #0.2 \small "  or"}_\markup{\whiteout \pad-markup #0.2 \small "thus"} f2 \unHideNotes \noBreak
		    	    \startStaff
		    	    \sameSizeClef \forceClef
		    	    \repeat percent 2{e8[ c g c]} \bar "|" \noBreak
		    	    d[ b g b] f'[ d g,d'] \bar "|" \noBreak
		    	    \repeat percent 2{e[ c g c]} \bar "||"
		     }
	  \layout {
	      indent = 0\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreExampleArpeggioOneCont = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = "or"
		    	    \clef treble
		    	    \cadenzaOn
		    	    \stemDown
		    	    \repeat percent 2 {c8[e g,e']} \bar "|" \noBreak
		    	    b[ d g,d'] d[f g,f'] \bar "|" \noBreak
		    	    \repeat percent 2 {c[e g,e']} \bar "||" \stopStaff \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 5.55)
		    	    \hideNotes c64-\markup{\whiteout \pad-markup #0.4 \small " or"} b16 \unHideNotes
		    	    \startStaff
		    	    \sameSizeClef \forceClef
		    	    \repeat percent 2{e8[ g,c g]} \bar "|" \noBreak
		    	    d'[g,b g] f'[g,d'g,]\bar "|" \noBreak
		    	    \repeat percent 2{e'[g, c g]} \bar "||" \noBreak
		    	    \stopStaff
		    	    \override TextScript #'extra-offset = #'(1 . 5.95)
		    	    \hideNotes f2_\markup{\whiteout \pad-markup #0.2 \small "  or"}_\markup{\whiteout \pad-markup #0.2 \small "thus"} f2 \unHideNotes \noBreak
		    	    \startStaff
		    	    \sameSizeClef \forceClef
		    	    \repeat percent 2{g8[ e' c e]} \bar "|" \noBreak
		    	    g,[d'b d] g,[f'd f]\bar "|" \noBreak
		    	    \repeat percent 2{g,[ e'c e]} \bar "||"
		     }
	  \layout {
	      indent = 0\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreAppoggiaturaOne = \markup { \general-align #Y #CENTER
 	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \clef treble
		    	    \cadenzaOn
		    	    %------------------------- LINE 1
		    	    \grace d2 c1
		    	    \override TextScript #'extra-offset = #'(1 . 4.8)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 "or"} b2 \unHideNotes
		    	    \grace d4 c1 \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 6.5)
		    	    \hideNotes b8-\markup{\whiteout \pad-markup #0.3 \small "to be play-"}_\markup{\whiteout \pad-markup #0.3 \small "-ed thus"} b1 b1 \unHideNotes
		    	    \override NoteHead #'rotation = #'(-35 0 0)
		    	    \override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    \override NoteHead #'X-offset =  #-1.36
		    	    \revert TextScript #'extra-offset
		    	    d2_\markup{\halign #-2.4 \musicglyph #"scripts.sforzato"}\( c\)
		    	    \bar "||" \noBreak
		    	    \revert  NoteHead #'rotation
		    	    \revert  NoteHead #'text
		    	    \revert  NoteHead #'X-offset
		    	    \hideNotes b64 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    \grace b2 c1
		    	    \override TextScript #'extra-offset = #'(1 . 5.0)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 "or"} b2 \unHideNotes
		    	    \grace b4 c1 \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 5.5)
		    	    \hideNotes b8-\markup{\whiteout \pad-markup #0.4 "played thus"} b1 b2 \unHideNotes
		    	    \override NoteHead #'rotation = #'(-35 0 0)
		    	    \override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    \override NoteHead #'X-offset =  #-1.36
		    	    \revert TextScript #'extra-offset
		    	    b2_\markup{\halign #-2.4 \musicglyph #"scripts.sforzato"}\( c\)
		    	    \bar "||" \break
		    	    \revert  NoteHead #'rotation
		    	    \revert  NoteHead #'text
		    	    \revert  NoteHead #'X-offset
		    	    %------------------------- LINE 2
		    	    \grace e4 
		    	    \override NoteHead #'rotation = #'(-35 0 0)
		    	    \override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    \override NoteHead #'X-offset =  #-1.36
		    	    d2
		    	    \revert  NoteHead #'rotation
		    	    \revert  NoteHead #'text
		    	    \revert  NoteHead #'X-offset
		    	    \override TextScript #'extra-offset = #'(1 . 5.0)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 " or"} b2 \unHideNotes
		    	    \grace e8
		    	    \override NoteHead #'rotation = #'(-35 0 0)
		    	    \override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    \override NoteHead #'X-offset =  #-1.36
		    	    d2
		    	    \revert  NoteHead #'rotation
		    	    \revert  NoteHead #'text
		    	    \revert  NoteHead #'X-offset
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 5.5)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 "thus"} b2 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    e4(_\markup{\halign #-2.4 \musicglyph #"scripts.sforzato"} d) \bar "||" \noBreak
		    	    \hideNotes b64 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    \grace e8 d4 \grace c8 b4 \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 5.5)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 "thus"} b4 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    e8[(_\markup{\halign #-2.4 \musicglyph #"scripts.sforzato"} d])
		    	    c_\markup{\halign #-2.4 \musicglyph #"scripts.sforzato"}[( b])
		    	    \bar "||" \noBreak
		    	    \hideNotes b64 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    \grace e8 d4 \grace c16 b8[ \grace a16 \stemDown g8] \bar "|" \noBreak
		    	    \stemNeutral
		    	    \override TextScript #'extra-offset = #'(1 . 5.5)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 "thus"} b2 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    \stemDown e8_\markup{\halign #-2.4 \musicglyph #"scripts.sforzato"}([ d)]
		    	    c16_\markup{\halign #-2.4 \musicglyph #"scripts.sforzato"}([ b) a_\markup{\halign #-2.4 \musicglyph #"scripts.sforzato"}( g)]
		    	    \bar "||" \break
		    	    %------------------------- LINE 3
		    	    \grace a'16 g[ f \grace f e d] \grace d c[ b \grace b a g] \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 5.5)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 "thus"} b2 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    a'32[(_\markup{with spirit} g) f16]\staccatissimo f32[( e) d16]\staccatissimo
		    	    d32([ c) b16]\staccatissimo b32[( a) g16]\staccatissimo
		    	    \bar "||" \noBreak
		    	    \stemNeutral
		    	    \hideNotes b64 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    \hideNotes b64 \unHideNotes
		    	    \grace e4
		    	    \override NoteHead #'rotation = #'(-35 0 0)
		    	    \override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    \override NoteHead #'X-offset =  #-1.36
		    	    d2.
		    	    \bar "|" \noBreak
		    	    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
		    	    \once \override Score.RehearsalMark #'direction = #DOWN
		    	    %\once \override Score.RehearsalMark #'outside-staff-priority = #5000
		    	    \override RehearsalMark #'outside-staff-priority = ##f
		    	    \override TextScript #'outside-staff-priority = ##f
		    	    \mark \markup{\column{\left-align \small "as taste best directs in the passage."}}
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 4.2)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 "thus"} b2 b2 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override NoteHead #'rotation = #'(-35 0 0)
		    	    \override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    \override NoteHead #'X-offset =  #-1.36
		    	    e2(_\markup{\halign #-2 \pad-markup #0.1 \musicglyph #"scripts.sforzato"}
		    	    \revert  NoteHead #'rotation
		    	    \revert  NoteHead #'text
		    	    \revert  NoteHead #'X-offset
		    	    d4)
		    	    \override TextScript #'extra-offset = #'(1 . 4.2)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 "or thus"} b2 b2 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    e4(_\markup{\halign #-2.4 \pad-markup #0.1 \musicglyph #"scripts.sforzato"}
		    	    \override NoteHead #'rotation = #'(-35 0 0)
		    	    \override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    \override NoteHead #'X-offset =  #-1.36
		    	    d2)
		    	    \revert  NoteHead #'rotation
		    	    \revert  NoteHead #'text
		    	    \revert  NoteHead #'X-offset
		    	    \bar "||"
		    	    
		     }
	  \layout {
	      indent = 0\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreAppoggiaturaTwo = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = "Sometimes"
		    	    \clef treble
		    	    \cadenzaOn
		    	    \grace e8 d4 \grace c8 b4 \grace a8 g4
		    	    \bar "|"
		    	    \override TextScript #'extra-offset = #'(1 . 6)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 "played thus"} b2 b2 b2 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    \once \override Slur #'control-points = #'( ( 1.1955 . 2.49) ( 2.4906 . 2.988) ( 3.3873 . 2.889) ( 4.6824 . 2.092) )
		    	    e8([_\markup{\halign #-2.4 \musicglyph #"scripts.sforzato"} d16)]\staccatissimo r
		    	    \once \override Slur #'control-points = #'( ( 1.3947 . 1.594) ( 2.5902 . 1.892) ( 3.8854 . 1.793) ( 4.782 . 0.996) )
		    	    c8[(_\markup{\halign #-2.4 \musicglyph #"scripts.sforzato"} b16)]\staccatissimo r
		    	    \override Slur #'control-points = #'( ( 1.6936 . -1.3947) ( 2.6899 . -1.8929) ( 3.7858 . -1.9925) ( 4.5828 . -1.8929) )
		    	    a8([_\markup{\halign #-2.4 \musicglyph #"scripts.sforzato"} g16])\staccatissimo r
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreAppoggiaturaThree = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = "Example"
		    	    \clef treble
		    	    \cadenzaOn
		    	    \grace g16 b4 \grace a16 c4 \grace b16 d4 \grace g,16 g'4
		    	    \bar "|"
		    	    \override TextScript #'extra-offset = #'(1 . 4.3)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 "played thus"} b2 b2 b2 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    \stemDown
		    	    g,32([ b8..)] 
		    	    a32[( c8..)]
		    	    b32[( d8..)]
		    	    g,32([ g'8..])
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.5\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreAppoggiaturaFour = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = "Ex:"
		    	    \clef treble
		    	    \cadenzaOn
		    	    c4
		    	    \hideNotes b64 \unHideNotes \bar "|" \noBreak
		    	    \grace c16
		    	    		    	    \revert TextScript #'extra-offset
		    	    \override NoteHead #'rotation = #'(-40 0 0)
		    	    \override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    \override NoteHead #'X-offset =  #-1.36
		    	    e2(_\markup{\halign #-2 \pad-markup #0.1 \musicglyph #"scripts.sforzato"}
		    	    \revert  NoteHead #'rotation
		    	    \revert  NoteHead #'text
		    	    \revert  NoteHead #'X-offset
		    	    d4)
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 6.9)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 \small "played"}_\markup{\whiteout \pad-markup #0.4 \small "thus  "}
		    	    b2 b2 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    \stemDown
		    	    c4 \bar "|" \noBreak
		    	    \hideNotes b64 \unHideNotes
		    	    c16 e4..(\> d4)\!
		    	    \bar "||" \noBreak
		    	    \stemNeutral
		    	    \hideNotes b64 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    \cadenzaOff
		    	    \time 4/4
		    	    \grace b16 c4 \grace fis,16 g4 \grace cis16 d4 \grace fis,!16 g4 \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 5.8)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 "th:"} b8 \unHideNotes
		    	    b32[ c8..] fis,!32[ g8..] cis!32[ d8..] fis,!32[ g8..]
		    	    \cadenzaOn
		    	    \bar "||"
		    	    %--------------------------LINE 2
		    	    \override TextScript #'extra-offset = #'(1 . 4.4)
		    	    \grace {c16[ d]} e4 \grace {g,32[ c e]} g4 \bar "|" \noBreak
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 "thus"} b2 \unHideNotes
		    	    c,32[ d e8.] 
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 0.3486 . 2.092) ( 1.6936 . 3.188) ( 2.9389 . 3.586) ( 4.4832 . 3.287) )
			    \override TupletNumber #'extra-offset = #'( 0.4 . 7 )
		    	    \times 2/3 {g,32[ c e} g8.] \bar "||" \noBreak
		    	    \hideNotes b64 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.6)
		    	    \hideNotes
		    	    b32-\markup{\whiteout \pad-markup #0.1 \small "but   "}_\markup{\whiteout \pad-markup #0.1 \small "some-"}_\markup{\whiteout \pad-markup #0.1 \small "times"} 
		    	    b4 b4 \unHideNotes
		    	    \grace {c,16[d]} e4(d8) r8 \bar "|" \noBreak
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 7.2)
		    	    \hideNotes
		    	    b32-\markup{\whiteout \pad-markup #0.3 \small "expressively"}_\markup{\whiteout \pad-markup #0.3 \small "thus      "} 
		    	    b1 b2 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    c8.[( d32 e]) d8\staccatissimo r \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreAppoggiaturaFive = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \clef treble
		    	    \cadenzaOn
		    	    <<{ s8 \grace {e8} d4}
		    	    \\{s8 \grace {c8_\markup{"Ex: in double notes"}} b4}>>
		    	    \hideNotes
		    	    \stemDown
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . -3.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2 
		    	    \unHideNotes
		    	    <<{ e8[(d])}\\{ c8([ b])}>>
		    	    \bar "||" \noBreak
		    	    \hideNotes b64 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    <<{ \grace e8 d4}\\{ b4 }>>
		    	         \hideNotes
		    	         \stemDown
		    	    	 \override TextScript #'extra-offset = #'(1 . -3.2)
		    	    	 b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2
		    	    	 \unHideNotes
		    	    <<{ e8([d]) }\\{b4 }>>
		    	    \bar "||"  \noBreak
		    	    \hideNotes b64 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    <<{ \grace {cis16[ e]} d4}\\{ b4 }>>
		    	         \hideNotes
		    	         \stemDown
		    	    	 \override TextScript #'extra-offset = #'(1 . -3.2)
		    	    	 b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2
		    	    	 \unHideNotes
		    	    <<{ cis!32[ e d8.] }\\{b4 }>>
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##f
	    }
	    }
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneStyleGracesOne = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph{
    	    The best general rule, is to keep down the keys of the instrument, the \caps "full length" of very note;
    	    for when the contrary is required, the notes are marked either thus: \inlineScoreStaccatissimo " " called in 
    	    \caps "Italian, staccato;" denoting \caps "distinctness," and \caps shortness of sound; which is produced 
    	    by lifting the finger up, as soon as it has struck the key: or they are marked thus \inlineScoreStaccato which, 
    	    when composers are \caps exact in their writing, means \caps less staccato than the preceding mark; the finger, 
    	    therefore, is kept down somewhat longer: or thus \inlineScoreTiedStaccato which means \caps "still less" 
    	    staccato: the nice degrees of \caps more and \caps less, however, depend on the \caps character, and 
    	    \caps passion of the piece; the \caps style of which must be \caps "well observed" by the performer.  The 
    	    notes marked thus \inlineScoreTiedNotes called \caps legato in Italian, must be played in a \caps smooth and 
    	    \caps close manner; which is done by keeping down the first key, 'till the next is struck; by which means, the 
    	    strings \caps "vibrate sweetly" into one another.
    }
    \paragraph{" "}
    \paragraph{
    	    N.B. When the composer leaves the \caps legato, and \caps staccato to the performer's taste; the best 
    	    rule is, to adhere chiefly to the \caps legato; reserving the \caps staccato to give \caps spirit 
    	    occasionally to certain passages, and to set off the \caps "higher beauties" of the \caps legato.
    }
    \paragraph{" "}
    %}
    \paragraph{ 
    	    This mark \inlineScoreArpeggioSign prefixed to a chord 
    	    \inlineScoreArpeggio signifies, that the notes must be played 
    	    \caps successively, from the lowest; with more or less velocity, as the sentiment may require; keeping each note 
    	    \caps down 'till the time of the chord be filled up.
    }
    \paragraph{" "}
    \paragraph{
    	    Chords marked thus \inlineScoreBaroqueArpeggioSlash are played as the preceding chords, with the addition of a note \caps where the oblique line is put, 
    	    as if written thus \inlineScoreBaroqueArpeggioSlashEquiv but the additional note is not to be kept down.
    }
    \paragraph{" "}
    \paragraph{
    	    \italic \bold Dolce or \italic \bold dol: means \caps sweet, with \caps taste; now and then \caps swelling some notes.
    }
    \paragraph{
    	    \italic \bold Piano or \italic \bold Pia: "or " \dynamic p, \caps soft.
    }
    \paragraph{
    	    \italic \bold Mezzo, or \italic \bold mez: or \italic \bold "mezzo-piano," or \italic \bold poco \dynamic p, or \italic \bold "poc:P," \caps "rather soft."
    }
    \paragraph{
    	    \italic \bold Pianissimo, or \bold P \super \bold mo or \dynamic pp, \caps "very soft."
    }
    \paragraph{
    	    \italic \bold Fortissimo, or  \bold F \bold \super mo or \dynamic ff, \caps "very loud."
    }
    \paragraph{
    	    \italic \bold Forte, or \italic \bold For: or \musicglyph #"f", \caps "loud."
    }
    \paragraph{
    	    \italic \bold "Mezzo " \musicglyph #"f", or \italic \bold "Mez:" \musicglyph #"f", \caps "rather loud."
    }
  }
}
partOneStyleGracesTwo = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{
    	    \italic \bold "Forzando," or \italic \bold "sforzando" \dynamic fz, or \dynamic "sf", 
    	    to \caps "force," or give emphasis to, \caps one note.
    }
    \paragraph{
    	    \italic \bold "Rinforzando, " or \italic \bold rinf: to \caps swell 2, 3, or 4 notes.
    }
    \paragraph{
    	    \italic \bold "Crescendo, " or \italic \bold cres: marked sometimes thus \inlineScoreCrescendo means \caps "gradually louder."
    }
    \paragraph{
    	    \italic \bold "Decrescendo, " or \italic \bold decres: \caps "gradually softer;" the same as the following; viz:
    }
    \paragraph{
    	    \italic \bold Diminuendo, or \italic \bold dim: thus \inlineScoreDecrescendo \caps "gradually softer. "  N.B. this last mark 
    	    \inlineScoreDecrescendo often denotes an \caps emphasis, where it is \caps widest, and then \caps diminishing.
    }
    \paragraph{
    	    This mark \inlineScoreCrescDecrescendo means to \caps swell and \caps diminish.	    
    }
    \paragraph{" "}
    \paragraph{
    	    \caps Arpeggio, or \caps Arpeggiato, requires that the notes of a \caps chord shall be played successively; which 
	    may be done in various ways.	    
    }
    \paragraph{" "}
    \paragraph{\inlineScoreExampleArpeggioOne}
    \paragraph{\inlineScoreExampleArpeggioOneCont}
    \paragraph{
    	    \caps Ottava, All'8 \super va , 8 \super va alta, set over a passage, means that the notes are to be played an octave
    	    higher: and \caps loco, that the notes are to be played again as they are written.
    }
    \paragraph{" "}
    \paragraph{
    	    The \caps Appoggiatura is a \caps grace prefixed to a note, which is always played 
    	    \caps legato, and with more or less \caps emphasis; being derived from the \caps Italian 
    	    verb \caps approggiare, to lean upon; and it is written in a \caps small note. Its \caps length 
    	    is borrowed from the following \caps large note; and in \caps general, it is half of its 
    	    duration; \caps more or \caps less, however, according to the \caps expression of the passage.
    }
    \paragraph{" "}
    \paragraph{" "}
    \paragraph{
    	    \huge \caps "Appoggiaturas," \large " and other " \huge \caps "Graces" \large " in small notes explained."
    }
    \paragraph{ \inlineScoreAppoggiaturaOne}
    \paragraph{ \inlineScoreAppoggiaturaTwo}
    \paragraph{ Sometimes the little notes are added to give \caps emphasis:}
    \paragraph{ \inlineScoreAppoggiaturaThree}
    \paragraph{ N.B. the finger or thumb must be taken off immediately from the \caps lower notes.}
    \paragraph{ \inlineScoreAppoggiaturaFour}
    \paragraph{ \inlineScoreAppoggiaturaFive}
    \paragraph{" "}
  }
}
