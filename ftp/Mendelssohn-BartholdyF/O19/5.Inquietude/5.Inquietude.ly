\version "2.10.25"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")

\header {
	title = "Lieder ohne Worte"
	subtitle = "5. Inquiétude"
	composer = "Felix Mendelssohn-Bartholdy"
	opus = "Op. 19, No. 5"
	% Mutopia headers
	mutopiatitle = "Inquiétude"
	mutopiacomposer = "Mendelssohn-BartholdyF"
	mutopiainstrument = "Piano"
	source = "Novello, Ewer & Co., ca 1880"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Neil Puttock"
	maintainerEmail = "n.puttock@gmail.com"
 footer = "Mutopia-2007/06/19-989"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%Macros

manualBeam = #(define-music-function (parser location beg end)(number? number?)
#{ \once \override Beam #'positions = #(cons $beg $end) #})

dynaShift = #(define-music-function (parser location x y) (number? number?)
#{ \once \override DynamicText #'extra-offset = #(cons $x $y) #})

dynShiftY = #(define-music-function (parser location padding) (number?)
#{
	\once \override DynamicLineSpanner #'padding = #$padding)
#})

textShift = #(define-music-function (parser location x y) (number? number?)
#{ \once \override TextScript #'extra-offset = #(cons $x $y) #})

tieShift = #(define-music-function (parser location position) (number?)
#{ \once \override Tie #'staff-position = #$position #})

dotShift = #(define-music-function (parser location x y) (number? number?)
#{ \once \override Dots #'extra-offset = #(cons $x $y) #})

noteShift = \once \override NoteColumn #'force-hshift = #1
staffUp = \change Staff = upper
staffDown = \change Staff = lower
stemExtend = \once \override Stem #'length = #22
noStem = \once \override Stem #'length = #0
noFlag = \once \override Stem #'flag-style = #'no-flag
wipeNote = {
	\once \override NoteHead #'transparent = ##t
    	\once \override Stem #'transparent = ##t
}
crescTxt = \markup { \halign #-0.9 cresc. }
dimTxt = \markup { \halign #-0.8 dim. }

%Callback used for rotating second half of phrasing slur after line break
#(define (my-callback grob)
  (let* (
         ; have we been split?
         (orig (ly:grob-original grob))

         ; if yes, get the split pieces (our siblings)
         (siblings (if (ly:grob? orig)
                     (ly:spanner-broken-into orig) '() )))

   (if (and (>= (length siblings) 2)
             (eq? (car (last-pair siblings)) grob))
     (ly:grob-set-property! grob 'rotation '(-15 0.5 0)))))


upper = \relative c' {
	\override Staff.NoteCollision #'merge-differently-headed = ##t %Set to ##f if you prefer the melodic line & accompaniment to be split
	#(override-auto-beam-setting '(end * * * *) 6 8 'Score)
	
	\clef treble \key fis \minor \time 6/4 \partial 4
	\repeat volta 1 {
		<< { \textShift #-4 #1 cis4^\markup { \bold "Piano agitato" } } \\ { cis8 a } >>
		
		%Bars 1-5
		<<
		\context Voice="1" { \voiceOne
			cis2 fis4 fis2 a4 | d2( cis4 bis2) bis4 |
			cis2( b!4) \acciaccatura { b8 }a4-. gis-. a-. |
			<a cis>->( b) a-. a( gis) cis, |
			cis2 fis4 fis2 a4 |

			%6-10
			d2( cis4 bis2) bis4 | cis2 ais4( b) r ais( |
			b) a!-. gis-. fis( eis) ais( | b) r ais( b) r ais\( |
			b\) a!-. gis-. fis( eis) ais( |

			%11-15
			b) r cis( d dis e | fis g gis a cis b) | 
			b( ais) g g( fis) e | e( dis d) d( cis! c) |
			b d( c b) \once \override PhrasingSlur #'rotation = #'(-19 0 0)
			\override PhrasingSlur #'after-line-breaking = #my-callback %Performs rotation on second half of slur
			e\( c \break |

			%16-20
			b\) d( c b) e( c | <gis b>8) e8( dis e gis e b' gis fisis gis b gis |
			\stemDown \manualBeam #-2.5 #-1.5 d' b f' d gis f \manualBeam #-0.5 #-0.5 b gis d' b a gis) |
			\oneVoice
		}
		\context Voice="2" { \voiceTwo
			cis,,8 gis a fis fis' cis fis bis, cis a a' fis |
			d' gis, a fis cis' a bis gis a fis bis a |
			cis gis cis, dis eis cis fis cis eis cis fis cis |
			fis d! gis d fis d fis cis eis b cis a |
			cis gis a fis fis' cis fis bis, cis a a' fis |
			d' gis, a fis cis' a bis gis a fis bis a |
			cis gis cis, d e! cis d fis e d cis e |
			d fis cis e b d a cis gis b cis e |
			d fis e d cis e d fis e d cis e |
			d fis cis e b d a cis gis b cis e! |
			d fis e d ais' fis b fis c' fis, b gis |
			dis' a e' b e b e cis e cis e cis |
			e cis e cis d b cis ais cis ais cis g |
			cis fis, c' ais b f b e, a gis a fis |
			\repeat unfold 4 { gis e b' e, a e } s1. |
			\oneVoice
		}
		>>
		
		%Second Subject
		
		e''8( d cis b a gis a fis dis b a fis) |
		<gis d'!>^( b gis e d b \stemUp \manualBeam #2.5 #0 g' e \staffDown cis a gis g) |
		
		%21-25
		\stemNeutral \noBreak \staffUp \clef bass fis( ais b fis cis' fis, d' gis, e gis d gis) |
		cis,( e a! b cis e cis b a e_ ~ <e e'>4) | \clef treble <a a'>2. ~ <a a'>4 <gis gis'>^( <a a'> |
		<b b'>2. <cis cis'>) | <e cis' e>4( <d b' d> <cis a' cis>  <b gis' b> <cis cis'> <b b'>) |
		
		%26-30
		<a a'>2 <a' a'>4( <b b'>2 <cis cis'>4) | <e cis' e>( <d b' d> <cis a' cis> <b gis' b> <cis cis'> <b b'>) |
		<a a'>( <e' gis> <d fis> <cis e> <c dis> <b d>) | 
		\stemUp	<a cis!>8 r <a d>-.( r <a cis>-. r <fis a b>-.) r r4 \stemNeutral <gis e'>8 r |
		<a a'>4^( <e' gis> <d fis> <cis e> <c dis> <b d>) |

		%31-35
		r8
		%The following tweak is for A4 size only. If using Letter size, comment out.
		\once \override Slur #'control-points = #'((0.5 . 1.3) (3 . 3) (64 . 19.5) (84.3 . -2.8)) %Tames wayward slur
		%If using Letter size, uncomment the next line.
		%\once \override Slur #'control-points = #'((0.5 . 1.3) (3 . 3) (64 . 20) (87.2 . -2.8))
		cis!( d e fis d e fis gis e fis gis | a cis d e fis d e fis gis e fis gis |
		\manualBeam #0 #-2.5 a e cis a e cis a[ e cis a)
	}
	
	%Development
	
	\staffDown e c] | \change Staff =upper \clef bass
	<<
	\context Voice="1" { \voiceOne
		e2 a4 a2 c4 | f2( e4 dis2) dis4 |
		\oneVoice
	}
	\context Voice="2" { \voiceTwo
		e,8 b c a a' e a dis, e c c' a |
		f' b, c a e' c dis b c a dis c |
		\oneVoice
	}
	>>
	
	%36-40
	e4 r8 e,8( b' dis e4) \clef treble \stemDown r8 e\( b' dis |
	\stemNeutral e4\) r8 e'( cis ais g e cis ais fis d) |
	<<
	\context Voice="1" { \voiceOne
		fis2 b4 b2 d4 | g2( fis4 eis2) eis4 |
		\oneVoice
	}
	\context Voice="2" { \voiceTwo
		fis,8 cis d b b' fis b eis, fis d d' b |
		g' cis, d b fis' d eis cis d b eis d | 
		\oneVoice
	}
	>>
	
	%41-45
	<cis fis>4 r8 fis,( cis' eis fis4) r8 fis( cis' eis |
	fis4) r8 dis( bis a! \stemDown fis dis bis a fis dis) |
	\stemNeutral cis4 r8 cis8( gis' b! ais4) r8 cis\( fis ais |
	\override Script #'extra-offset = #'(0.2 . -1.3)
	cis_\espressivo b\) r b,,( fis' a! gis4) r8 b( e gis |
	b_\espressivo a) r8 a,,( e' gis fisis4) r8 ais( dis fisis |
	a!_\espressivo gis) r8 gis,,( dis' fis eis4) r8 gis\( cis eis |
	\revert Script #'extra-offset
	
	%46-50
	\once \override TextScript #'font-size = #1 \textShift #-2.8 #0 
	gis^\markup { \bold "Agitato" } fis\) r fis,( b e! d4->) r8 \stemDown a( gis cis |
	\stemNeutral gis' fis) r fis,( b e! d4->) r8 a( gis cis |
	\stemUp b4) r8 b,( e ais b4) \stemNeutral r8 b,\( \override Script #'extra-offset = #'(0.2 . 1.8) e-> ais |
	b\) b,( e_> ais b) b,( e_> ais b) b,( e_> ais) | 
	\revert Script #'extra-offset
	
	%51-55
	<<
	\context Voice="1" { \voiceOne
		\dynShiftY #-0.5 bis2.^\sf( cis4) fis\rest fis\rest | bis,2.( cis4) fis\rest fis\rest |
		\dynShiftY #-0.5 c2.^\sf ~ c | b( d | \dotShift #-2.2 #0 cis! e) | d( \dotShift #-2.2 #0 cis) |
		
		%56-60
		bis( b | \dotShift #-2.2 #0 ais \dotShift #-2.2 #0 a) |
		\oneVoice
	}
	\context Voice="2" { \voiceTwo
		fis8 eis fis gis! a! gis \repeat unfold 4 { fis eis fis gis a gis } 
		fis eis fis g a fis | a g fis g a g gis fis gis a b gis |
		\noteShift b a gis a b a ais gis ais b cis ais | cis b ais b cis b \noteShift b a gis a b a |
		a gis fisis gis a gis a gis fisis gis a gis | \noteShift gis fis! eis fis gis fis \noteShift gis fis eis fis gis fis |
		\oneVoice
	}
	>>
	eis( cis gis cis eis gis eis cis gis cis eis gis) |
	fis( cis a cis fis a fis dis bis dis fis a) |
	gis( eis cis eis gis cis gis eis cis eis gis cis) |
	
	%61-65
	a( fis cis fis a cis a fis dis fis a bis) |
	cis( gis eis gis cis eis gis eis b'! gis fis eis |
	
	%Recapitulation
	
	\bar "||" \key fis \major
	cis' b ais gis fis eis \stemDown fis dis bis gis fis dis) | 
	\stemNeutral <eis b'!>( gis eis cis bis b ais cis e e' cis ais) |
	fisis( dis gis dis ais' dis, b' eis, cis eis b eis) |
	
	%66-70
	ais,( cis fis ais fis cis ais gis) r4
	<<
	\context Voice = "1" { \voiceOne
		cis | fis2. ~ fis4 eis( fis | <b,! eis gis>2. <ais e' ais>) |
		<ais' cis>4( <gis b> <fis ais> gis ais gis) |
		\oneVoice
	}
	\context Voice="2" { \voiceTwo
		cis, ~ | cis( dis cis bis2.) | s1. | dis2. eis |
		\oneVoice
	}
	>>
	fis4 r <fis fis'>( <gis eis' gis>2 <ais e' ais>4) |
	
	%71-75
	<< { \stemDown <cis ais' cis>( <b gis' b> <fis' ais> \stemUp gis ais gis) | } \\ { s2. eis! } >>
	fis4 r <fis, ais fis'>( <gis b gis'>2 <ais cis ais'>4) |
	<cis fis cis'>( <b b'> <ais ais'>) <ais dis ais'>( <gis gis'> <fis fis'>) |
	<fis fis'>( <eis eis'> <dis dis'>) <cis cis'> <cis cis'> <cis cis'> |
	<< { <cis ais' cis>^( <gis' b> <fis ais>) cis'^( b gis) | } \\ { s2. dis } >> |
	
	%76-80
	fis2. eis | <fis fis'>4( <cis' eis> <b dis> <ais cis> <a bis> <gis b>) |
	<fis ais>8-. r <fis b>-.( r <fis ais>-. r <fis gis>-.) r r4 eis8 r |
	<fis fis'>4( <cis' eis> <b dis> <ais cis> <a bis> <gis b>) |
	ais!8( eis fis gis ais b cis bis cis dis e eis) |
	
	%81-86
	fis( eis fis gis ais b cis bis cis dis e eis) |	fis( cis ais gis ais fis cis' ais fis eis fis cis) |
	ais'\( fis cis bis cis ais fis' cis ais gis ais fis | cis' ais fis cis\) r4 r8 ais'( cis fis ais cis |
	fis) r r4 r <ais,,, fis' ais> r r | <ais' fis'> r r r2.\fermata \bar "|."
}

lower = \relative c {
	#(override-auto-beam-setting '(end * * * *) 6 8 'Score)
	\clef bass \key fis \minor \time 6/4 \partial 4
	r4 |
	
	%Bars 1-5
	<fis,, fis'>2 b'4\rest <fis fis'>2 r4 |
	<<
	\context Voice="1" { \voiceOne d''2( cis4 bis2) \oneVoice }
	\context Voice="2" { \voiceTwo <fis a>2. ~ <fis a>2 \oneVoice }
	>>
	<fis a>4( | <eis gis>) r <cis, cis'> <fis fis'> r r |
	<b, b'> r r <cis cis'> r r | <fis, fis'>2 b'4\rest <fis fis'>2 r4 |
	
	%6-10
	<<
	\context Voice="1" { \voiceOne d''2( cis4 bis2) \oneVoice }
	\context Voice="2" { \voiceTwo <fis a>2. ~ <fis a>2 \oneVoice }
	>>
	<fis a>4\( | <eis gis>\) r <fis, fis'>^~ \stemUp <b fis'> \stemNeutral r <fis fis'> |
	b2. cis2 <fis, fis'>4^~ | \stemUp <b fis'> r <fis fis'>^~ <b fis'> r <fis fis'> |
	b2. cis2 <fis, fis'>4^~ |
	
	%11-15
	<b fis'> \stemNeutral r cis'( b a gis |
	fis e d! cis a g) | fis2. ~ fis2 ais4( |
	b2) gis4( a!2) dis,4 | e <gis e'>^>( a e) <gis e'>^>\( a |
	
	%16-20
	e\) <gis e'>^>( a e) <gis e'>^>( a | e) r r r2. | r r4 r4 e |
	<<
	\context Voice="1" { \voiceOne
		a2.^~ a4 gis^( a | b2. cis) |
		
		%21-25
		e4^( d cis b cis b) | \tieShift #-2 a2.^~ a2
		\oneVoice
	}
	\context Voice="2" { \voiceTwo
		cis,2 b4\rest fis'2 b,4\rest | e2 b4\rest a'2 b,4\rest |
		d2 b4\rest e2 b4\rest |	a'2. s2
		\oneVoice
	}
	>> cis8 a |
	fis( a b cis b a dis fis, gis a gis fis) |
	\stemUp	e( d'! e fis e d \stemNeutral <g a,> e cis a g e) |
	d( fis gis! a b cis <d e,> cis d b e d) |
	
	%26-30
	<cis a>( e d cis b a gis a g a fis ais) |
	\manualBeam #1 #2.5 d,( fis gis! a! b cis d e, e' e, d' e,) |
	
	<<
	\context Voice="1" { \voiceOne
		a8([ cis d e fis d] <a e'>[ fis' gis e fis gis]) |
		\oneVoice a r fis' r e r dis r r4 d8 r \clef treble |
		\voiceOne
		a8([ cis d e fis d] <a e'>[ fis' gis e fis gis]) |
		
		%31-35
		a2. ~ a8 s8*5 |
		\oneVoice
	}
	\context Voice="2" { \voiceTwo
		\once \override Tie #'staff-position = #-4.5 a,,2. ~ \noFlag \once \override Stem #'length = #0 a8 s8*5 |
		s1. |
		a'2. ~ \noFlag \once \override Stem #'length = #0 a8 s8*5 |
		a'4( <e gis> <d fis> <cis e> <c dis> <b d>  |
		<a cis!>)
		\oneVoice
	}
	>>
	\clef bass <e gis>( <d fis> <cis e> <c dis> <b d> | <a cis!>2.) r4 r
	
	%Development
	
	cis,\rest | a2 r4 <a a'>2 r4 |
	<<
	\context Voice="1" { \voiceOne f''2( e4 dis2) \oneVoice }
	\context Voice="2" { \voiceTwo <a c>2. ~ <a c>2 \oneVoice }
	>>
	<a c>4 |
	
	%36-40
	r8 gis,( b') r r4 r8 g( b') r r4 | r8 fis( g') r r4 r2. |
	<b,,, b'>2 r4 <b' b'>2 r4 | \clef treble
	<<
	\context Voice="1" { \voiceOne g''2( fis4 eis) \oneVoice }
	\context Voice="2" { \voiceTwo <b d>2. ~ <b d>4 \oneVoice }
	>>
	r <b d> \clef bass | r8 ais,( cis') r r4 \clef treble r8 a!( cis') r8 r4 |
	
	%41-45
	r8 gis( a') r r4 r2. | \clef bass r8 eis,,,( gis') r r4 r8 e!( fis') r r4 |
	r8 dis,,( fis') r r4 r8 d!( e') r r4 | r8 cis,,( e') r r4 r8 cis( dis') r r4 |
	r8 bis,,( dis') r r4 r8 b!( cis') r r4 |
	
	%Agitato
	%46-50
	r8 a( cis) r gis4 r8 fis( cis') r eis,4 | r8 a( cis) r gis4 r8 fis( cis') r eis,4 |
	r8 d( fis) r <cis g'>4 r8 d( fis) r <cis g'>4\( | <d fis>8\) r <cis g'>4( <d fis>8) r <cis g'>4( <d fis>8) r <cis g'>4( |
	<d fis>2.)( <cis fis a!>4) r r |
	
	%51-55
	<d fis a>2.^~ <cis fis a>4 r r | d'2. ~ d | g,( e | a, fis) | b,( cis) |
	
	%56-60
	dis( eis | fis bis,) |
	<<
	\context Voice="1" { \voiceOne
		cis eis4( gis b!) | \acciaccatura { \slurDown b8 } a4^( gis fis) a_( gis fis) |
		cis'2. d4_( cis b) |
		
		%61-65
		\acciaccatura { \slurDown b8 } a4_( gis fis) a_( gis fis) |
		\oneVoice <cis gis'>2. ~ <cis gis'>4 r cis' | \voiceOne
		%Second subject recap
		\key fis \major fis2. ~ fis4 eis\( fis |
		gis2. ais\) | cis4^( b ais gis ais gis) |
		\oneVoice
	}
	\context Voice="2" { \voiceTwo
		s1. | cis,,2 gis4\rest s2. | cis2 b4\rest s2. |
		s1.*2 | ais'2 gis4\rest dis'2 gis,4\rest |
		cis2 gis4\rest fis'2 gis,4\rest | b2 gis4\rest cis2 gis4\rest |
		\oneVoice
	}
	>>
	
	%66-70
	fis'2. ~ fis8 r fis( cis ais fis) |
	\stemDown dis dis' fis ais fis dis dis, dis' fis gis fis dis |
	\stemNeutral cis, dis' cis b ais gis fis cis' e fis e cis |
	b dis gis dis ais' dis, b' cis, cis' cis, b' cis, |
	\stemDown fis, fis' ais fis ais fis \stemNeutral b fis b fis cis' fis, |
	
	%71-75
	<< { fisis dis gis dis ais' dis, } \\ { b2. } >>
	b'8 cis, cis' cis, b' cis, |
	r fis eis fis ais fis eis fis eis fis e fis |
	dis fis b fis cis fis bis, fis' gis fis bis, fis' |
	cis gis' b! gis <dis b'> gis <eis b'> gis <dis b'> gis <eis b'> gis |
	ais fis b fis cis' fis, b, dis gis b gis dis |
	
	%76-80
	<<
	\context Voice="1" { \voiceOne
		ais' \staffUp \stemDown cis bis cis dis cis \staffDown \stemUp b! gis eis cis b gis |
		fis( eis fis gis ais b cis bis cis dis e eis) | fis r dis' r cis r bis r r4 b8 r |
		\oneVoice
	}
	\context Voice="2" { \voiceTwo
		cis,2. gis\rest | s1. | fis'2. cis |
		\oneVoice
	}
	>>
	<fis ais>8( eis fis gis ais b cis bis cis dis e eis) |
	fis4\( <cis eis> <b dis> <ais cis> <a bis> <gis b> |
	
	%81-86
	<fis ais!>\) \stemUp <cis eis>( <b dis> <ais cis> <a bis> <gis b>) |
	\stemNeutral <fis ais>1._~ | <fis ais cis> ~ |
	<fis ais cis>4 r ais'8( fis cis) r r4 r | r2. <fis, cis'>4 r r |
	<fis' cis'> r r r2.\fermata \bar "|."
}

dynamics = {
	\partial 4 s4 |
	
	%1-5
	s2. \dynShiftY #1.5 s\< | s1.\sf |
	\dynShiftY #2 s\p | s1. |
	s2. \dynShiftY #1.5 s\< |
	
	%6-10
	s1.\sf | s2 \dynShiftY #2 s4\p s2. |
	s1. | s |
	s2. s2 \dynShiftY #3.5 s4\p |
	
	%11-15
	s2 s4^\crescTxt s2. | s2. s4. s\f |
	s2. s^\dimTxt | s s2 s4\p |
	s s2\sf s2. |
	
	%16-20
	s1. | \dynaShift #1 #2.5 s2.\mf s^\crescTxt |
	s s^\markup { cantabile } | s1. |
	s4 s8*5\< s8\! s2 |
	
	%21-25
	s8*5\> s8\! s2. | s1.\pp |
	s^\crescTxt | s8*5\< s8\! s2. |
	s8\< s\! s\> s\! s4 s2. |
	
	%26-30
	s2. s8*5\< s8\! | s1.\sf |
	s4 s2^\dimTxt s2. | s4 s2\p s2. |
	s1. |
	
	%31-35
	s | s4. s^\dimTxt s2. |
	s16 s\pp s8*5 s2 s4 | s2.\p s8*5\< s8\! |
	s1.\sf |
	
	%36-40
	s16 s\pp s8*5 s2. | s4. s16 s\pp s4 s2. |
	s2. s8*5\< s8\! | s1.\sf |
	s\p |
	
	%41-45
	s | s2.^\crescTxt s |
	s1. | s4. s^\crescTxt s2. |
	s1. |
	
	%46-50
	s2. s^\markup { \halign #-0.9 sempre cresc. } | s1. |
	s2.\f s^\crescTxt | s1. |
	\dynaShift #0.5 #2.5 s\ff |
	
	%51-55
	s\sf | s8\ff s\> s2 s4. s\p |
	s2.^\markup { tranquillo } s | s1. |
	s\pp |
	
	%56-60
	s | s |
	\textShift #-0.7 #-2.5 s2.^\markup { \dynamic "p " cantabile } s2. | s1. |
	s |
	
	%61-65
	s1. | s2. s4 s2^\markup { \halign #-0.9 dolce } |
	s1. | s2. s8*5\< s8\! |
	s16 \once \override Hairpin #'extra-offset = #'(-1.5 . 2) s\> s8 s2\! s2. |
	
	%66-70
	s1. | \textShift #-0.3 #-1.6 s^\markup { cresc. } |
	s1.*2 |
	s2. s8*5\< s8\! |
	
	%71-75
	s1.\sf | s2.\f s8*5\< s8\! |
	s2.\sf \once \override Hairpin #'extra-offset = #'(1.6 . 2) s8*4\> s8\! s | s1. |
	s2 s4^\markup { dim. } s2. |
	
	%76-80
	s1. | \dynaShift #0.3 #2 s\p |
	s | \dynaShift #0.3 #2 s\p |
	s1. |
	
	%81-86
	s^\markup { dim. } | s16 s\pp s8*5 s2. |
	s1.*4 |
}

pedal = {}


\score {
	\context PianoStaff <<
	\context Staff = upper \upper
        \context Dynamics = dynamics \dynamics
        \context Staff = lower <<
        \lower
        >>
        \context Dynamics = pedal \pedal
       >>
       \layout {
	       \context { \Score \remove Bar_number_engraver }
	       \context {
		       \type "Engraver_group"
		       \name Dynamics
		       \alias Voice %So that \cresc works, for example.
           	       \consists "Output_property_engraver"
           	       \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
           	       pedalSustainStrings = #'("Ped." "*Ped." "*")
           	       pedalUnaCordaStrings = #'("una corda" "" "tre corde")
     		       \consists "Piano_pedal_engraver"
           	       \consists "Script_engraver"
           	       \consists "Dynamic_engraver"
          	       \consists "Text_engraver"

		       \override TextScript #'font-size = #1
           	       \override TextScript #'font-shape = #'italic
	   	       \override TextScript #'extra-offset = #'(0 . -1.2)
           	       \override DynamicText #'extra-offset = #'(0 . 2.5)
           	       \override Hairpin #'extra-offset = #'(0 . 2)
           	       \consists "Skip_event_swallow_translator"
     		       \consists "Axis_group_engraver"
	       }
 	       \context {
		       \PianoStaff
           	       \accepts Dynamics
           	       \override VerticalAlignment #'forced-distance = #7
         }
       }
     }
     \score {
	     \context PianoStaff <<
	     \context Staff = upper << \upper \dynamics >>
	     \context Staff = lower << \lower \dynamics >>
	     \context Dynamics = pedal \pedal
      	     >>
	     \midi {
		     \context {
			     \type "Performer_group"
			     \name Dynamics
			     \consists "Piano_pedal_performer"
         }
         \context {
		 \PianoStaff
		 \accepts Dynamics
         }
       }
     }
     
\paper {
	between-system-padding = #1
	ragged-last-bottom = ##f
}
