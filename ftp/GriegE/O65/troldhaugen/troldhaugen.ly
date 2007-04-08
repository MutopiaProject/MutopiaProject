 \version "2.8.4"
mbreak = { \break }

\header {
	title = "Hochzeitstag auf Troldhaugen."
	subtitle = "(Bryllupsdag på Troldhaugen.)"
	subsubtitle = "Wedding-day at Troldhaugen."
	composer = "Edvard Grieg"
	opus = "Op. 65, No. 6."
	poet = \markup \italic "Edited by Louis Oesterle"
	
	
	mutopiatitle = "Wedding-day at Troldhaugen"
	mutopiacomposer = "GriegE"
	mutopiaopus = "O 65"
	mutopiainstrument = "Piano"
	mutopiaarranger = "Louis Oesterle (1854 - 1932)"
	date = "1896"
	source = "Schirmer, 1903"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "David Whipple"
	maintainerEmail = "cubbieco@gmail.com"
	lastupdated = "2006/Jun/18"

 footer = "Mutopia-2006/06/17-781"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

	upperrepeated = \relative c'' {
	\clef bass < d,, a' >8_2_5 < d a'> < d a'>4-.-> r4 |   
		r4 <d a'>8 <d a'> <d a'>4-.-> r8 \clef treble 
			\times 2/3 { a''16_2 b a } |  		
		<< { fis8(  a^2) d^4  fis e^5(  d) fis, a^1^2 } \\
        {  fis4  fis8 fis fis4 fis8 fis }   >>   |    
		\mbreak
		<fis a b>4-.-> <fis a b>8[ r16 <fis a b>16] <fis a b>4-.
			<d^1 fis^2>8-. <d fis gis>-. |
		<< { a'8( b) fis^.^1^2 gis^. a8( b) fis^. gis^. } \\
        {  <d fis>4 <d fis>8 <d fis> <d fis>4 <d fis>8 <d fis> }  >>      |
		<d e a^1^3^5>4-.-> <cis^2 a'^5>8[ r16 <cis a'>16] <cis a'>4 
			\stemNeutral r8 \times 2/3 {cis'16^2 d cis} |
		\mbreak
        << { b8( d^2) g^4^. b^. a^5( g) b,^.^1^2 d^.^3 } \\
        { b4 b8 b b4 <g b>8 <g b>  } >> |
		<g b d fis>4-.-> <g b d fis>8[ r16 <g b d fis>16]
			<g b d fis>4-. <g^1 b^2>8-. <g b cis>-. |
		<< { d'8( e) b^. cis^. d( e) b^. cis^.^3 } \\
         {  <g b>4 <g b>8 <g b> <g b>4 <g b>8 <g b>  } >>        |
		\mbreak
		<< { <g a d^1^3^5>4-.-> <fis^2 d'^5>8[  s16 <fis d'>16] <fis d'>4^. r4 } \\
        {  s4 s8 << {g''16\rest } \\ { a,16\rest } >> s16 s2 } >>       |
		r4 <d,,^2 a'^5>8 <d a'> <d a'>4-.-> r4 |
		r4 <d a'>8 <d a'> <d a'>4-.-> r8 \times 2/3 { a''16^2 b a } |
		\mbreak
		<< { fis8( a^2) d^.^4 fis^. e^5( d) fis,^. a^.^2 } \\
        { fis4 fis8 fis8 fis4 fis8 fis  } >>|
		<fis a b^3>4-.-> <fis a b>8[ r16 <fis a b>16] <fis a b>4-.
			<d^1 fis^2>8-. <d fis gis>-. |
		<< { a'8( b) fis^. gis^. a( b) fis^. gis^. } \\
        { <d fis>4 <d fis>8 <d fis> <d fis>4 <d fis>8 <d fis>  } >>|
		%end of page 1
        <d e a>4^.^>_3_1 <cis a'>8^2^5[ r16 <cis a'>16] <cis a'>4^. 
			r8 \times 2/3 { cis'16^2 d cis } |
        << { b8( d^2) g^.^4 b^. a^5( g) b,^.^2 d^.^3 } \\
			{ b4 b8 b b4 g8 <g b> } >> |
        <g b d fis>4-.-> <g b d fis>8[ r16 <g b d fis>16] 
			<g b d fis>4-. <g b>8-.-1-2 <g b cis>-. | 
        \mbreak

        << { d'8( e) b-. cis-. d( e) b-. cis-.-3 } \\
			{ <g b>4 <g b>8 <g b> <g b>4 <g b>8 <g b> } >> |
        <g a d>4_3_1^.^>^5 <fis d'>8-2-5[ r16 <fis d'>16] <fis d'>4-. r4 |
        r1
        \mbreak
	\overrideProperty
#"Score.NonMusicalPaperColumn"
#'line-break-system-details
#'((fixed-alignment-extra-space . 05))
        << { e,4^>^2^4 fis^>^3^5 e^> fis^> } \\ 
		{ cis16 b cis a d8 b cis16 b cis a d8 b }    >>
        r8 \stemUp \times 2/3 { fis''16^1^4^([ gis fis]) } <cis e>8^.^2^3
			<cis e>^.^2^4 <cis e>2^> |
        <c, e>4^1^2 <c' e>8^3^5 <c e> <c e>4 \stemNeutral << { e8^.^1^2 f }
			\\ { c8 <c e> } >> |

        \mbreak
        << { g'8^>^( a) e^. f^. g^>^4^( a e^.^5) d^.^4 } \\
			{ <c e>4 <c e>8 <c e> <b f'>4 <g b>8 <g b> } >> |
        << { \appoggiatura {d'16^4[ e] } d8^>^( c^3) c^.^5 c^. c4 r4 } \\
			{ e,4 e8 e e4 s4 } >>  |
        \mbreak
        << { g4^>^2^4 a^>^3^5 g^> a^> } \\
			{ e16 d e c f8 d e16 d e c f8 d } >> |
        \stemUp
		r8 \times 2/3 { a''16^2^4^([ b a]) } 
			<e g>8^.^1^3 <e g>^.^2^4 <e g>2^>
         <ees, g>4^2^4 <ees' g>8^3^5 <ees g> <ees g>4
			<< { g8^.^1^2 aes^. } \\ { ees <ees g> } >> |
        \stemNeutral
		\mbreak
	\overrideProperty
#"Score.NonMusicalPaperColumn"
#'line-break-system-details
#'((fixed-alignment-extra-space . 05))


        % end of page 2
		<< { bes'8^>^( c) g^. aes^. bes^>^4^( c) g^.^5 f } \\
			{<ees g>4 <ees g>8 <ees g> <d aes'>4 <bes d>8 <bes d> } >> |
		<< { \appoggiatura {fis'16^4[ g] } fis8^>^( ees) ees^.^4 ees ^.
			ees4 } \\ { g,4 g8 g g4 } >>
			r16 <g, des'>16^1^2[ r16 <g des' ees> |
		r16 <g des' f> r16 <g des' g>] r16 <g des'>^1^2[ r16 <g des' ees>
			r16 <g des' f> r16 <g des' g>] r16 <g des'>^1^2[ r16 
			<g des' ees> | 
		\mbreak
		r16 <g des' f> r16 aes'] r16 <g, des' g>^5[ r16 <g des' ees>^3 
			r16 <g des' f>^4 r16 <g des'>^1^2] r16 <aes ees'>^1^2[
			r16 <aes ees' f> |
		r16 <aes ees' g> r16 <aes ees' aes>] r16 <aes ees'>^1^2[ r16
			<aes ees' f> r16 <aes ees' g> r16 <aes ees' aes>] r16
			<aes ees'>^1^2[ r16 <aes ees' f> |
		\mbreak
		r16 <aes ees' g> r16 bes'] r16 <aes, ees' aes>[ r16 
			<aes ees' f>^3 r16 <aes ees' g> r16 <aes ees'>^1^2] r16
			<c ges'>^1^2[ r16 <c ges' aes> |
		r16 <c ges' bes>^> r16 <c ges' c>] r16 <c ges'>^1^2[ r16
			<c ges' aes> r16 <c ges' bes>^> r16 <c ges' c>] r16
			<c ges'>^1^2[ r16 <c ges'aes> |
		\mbreak
		r16 <c ges' bes>^> r16 des'] r16 <c, ges' c>^5[ r16 <c ges' aes>^3
			r16 <c ges' bes>^4 r16 <c ges'>] r16 <des aes'>^1^2[ r16
			<des aes' bes> |
		r16 <des aes' c>^> r16 <des aes' des>] r16 <des aes'>[ r16
			<des aes' bes> r16 <des aes' c>^> r16 <des aes' des>] r16
			<des aes'>[ r16 <des aes' bes> |
		\mbreak
		r16 <des aes' c>^> r16 ees'] r16 <des, aes' des>^5[ r16
			<des aes' bes>^3 r16 <des aes' c>^4 r16 <des aes'>]
			r16 <d aes'>^1^2[ r16 <d aes' bes> |
		r16 <d aes' c>^> r16 ees'] r16 <d, aes' d>^5[ r16 <d aes' bes>
			r16 <d aes' c>^> r16 aes'] r16 
			\once \override Voice.Beam #'positions = #'(-4 . -4)
		<aes c d>^3[ r16 <aes c ees> |
		\mbreak
		% end of page 3
		r16 <aes c f>^>^5 r16 aes'] r16 <aes, c g'>^5[ r16 <aes c ees> 
			r16 <aes c f>^>^4 r16 d^3] r16 f^1[ r16 g] |
		r16 aes[ r16 c r16 aes r16 f^1] r16 aes^4[ r16 f^2 r16 d r16 f^4] |
		r16 d^2[ r16 bes^1 r16 d^4 r16 bes] r16 g[ r bes^4 r g^2 r ees] |
		\mbreak
	\overrideProperty
#"Score.NonMusicalPaperColumn"
#'line-break-system-details
#'((fixed-alignment-extra-space . 18))
		r g^4[ r ees r c r ees^4] r c^2[ r aes r c^5 r aes^3] |
		<< { r4 <aes c ees aes> <aes' c ees aes> 
			<< { <aes' c ees aes> } \\ { <aes, c ees>_1_2_4 } >> } \\
			{ g,1->-2 } >> |  
		<< { r4 <aes c ees aes> <aes' c ees aes> 
				<< { <aes' c ees aes> } \\ { <aes, c ees> } >> } \\
			{ ges,1->-2 } >> |
		<< {r4 <aes ces ees aes> <aes' ces ees aes>
			<< { <aes' ces ees aes> } \\ { <aes, ces ees> } >> } \\
			{ f,1->-2 } >> |
		\mbreak
	\overrideProperty
#"Score.NonMusicalPaperColumn"
#'line-break-system-details
#'((fixed-alignment-extra-space . 18))
		<< { r4 <g a cis g' a>4_1_1 <g' a cis g' a> \stemDown 
			<g' a cis g' a>8[
			\times 2/3 {a16^2 b a]} \stemNeutral } \\
			{e,,1->-2 } >> | 
		<< { fis''8->^( a^2) d^4 fis e^5^>^( d) fis,^1^2 a } \\
			{ fis4 <fis a>8 <fis a> <fis a>4 <d fis>8 <d fis> } >> |
		<d fis a b>4-.-> <d fis a b>8[ r16 <d fis a b>16] 
			<d fis a b>4-. <d fis>8^1^2 <d fis gis> |
		\mbreak
		<< { a'^>^( b) fis gis a^>^( b) fis gis^3 } \\
			{ <d fis>4 <d fis>8 <d fis> <d fis>4 <d fis>8 <d fis> } >> |
		<a d e a>4-.-> <a cis e a>8[ r16 <a cis e a>16] <a cis e a>4^.
			r8 \times 2/3 { cis'16^2 d cis } |
		<< { b8^>^( d^2) g^4 b a^5^>^( g) b,^1^2 d^3 } \\
			{ b4 <b d>8 <b d> <b d>4 <g b>8 <g b> } >> |
		\mbreak
		<g b d fis>4^.^> <g b d fis>8[ r16 <g b d fis>16] 
			<g b d fis>4^. <g b>8^1^2 <g b cis> |
		<< { d'^>^( e) b cis d^>^( e) b cis^3 } \\
			{ <g b>4 <g b>8 <g b> <g b>4 <g b>8 <g b> } >> |
		<d g a d>4^.^> <d fis a d>8[ r16 <d fis a d>16] <d fis a d>4
	}
	
	
     upper = \relative c'' {
       \clef treble
       \key d \major
       \time 4/4
     	
	\once \override TextScript #'padding = #2.2
       	r4^\markup{ Tempo di Marcia un poco vivace. }
	
	\upperrepeated
	
			r4 \bar "||" 
	\key g \major \time 2/4 
	\once \override Score.MetronomeMark #'transparent = ##t
	\tempo 4=90
		\mbreak
		%
		%
		% end first part and 4th page
		%
		%
		\once \override TextScript #'padding = #2.2
		r2^\markup{ Poco tranquillo. }
		r2
		<< { \once \override TextScript #'padding = #2.8
			b8^\markup{ \italic cantando } a4^5 g8^4 }
			\\ { <b, d>2 } >> |
		< b d fis>^1^2^3 |
		<< { a'8 g4^5 fis8^4 } \\ <a, c>2 >> |
		<a c e>^1^2^3 |
		\mbreak
		<< {g'8 fis4^5 e8^4 } \\ <g, b>2 >> |
		<< g'2^>^3^5 \\ <g, d'> >> |
		<< { fis'8^2^5 e4^4 fis8 } \\ <g, cis>2 >> |
		<fis d'>^3 |
		<< { e''8^2^5 d4 c8^3 } \\ <e, b'>2 >>
		<< b'2^1^2^4 \\ <e, g> >>
		\mbreak
		<<  { d'8^2^5 c4 b8^3 } \\  <d, a'>2 >> |
		<< a'^1^2^4 \\ <d, fis> >> |
		<< { c'8^2^5 b4 a8^3 } \\ <c, g'>2 >> |
		<< { fis'4^>^4 ~ fis16 a \times 2/3 { g16_4 e_3 c_2 } } \\
			<g c>2 >> |
		<< { b8^2^5 a4 b8 } \\ <c, fis>2 >> |
		<< g'2^2^5 \\ { c,8( b4.) } >> |
		\bar "||"
		\mbreak
		%
		%  start of repeat
		%
		\bar "|:"
		\repeat volta 2 {
		<< { b''8\arpeggio ais4 gis8 } \\ < b, dis>2\arpeggio >> |
		< b dis ais' >^1^2^5\arpeggio |
		<< { ais'8\arpeggio gis4^4 fis8 } \\ <b, dis>2\arpeggio >> |
		<< gis'\arpeggio \\ <b, dis>\arpeggio >> |
		<< { gis'8^5 g4^4 fis8 } \\ bis,2_1 >>
		<< { eis4^4 e^3 } \\ {cis8_2 c4_1 b8_1 } >>
		\mbreak
		<< { dis8^4 cis4 dis8^5 } \\ ais2_2 >> |
		<fis b>2^1^3 |
		<< { g'8\arpeggio fis4 e8 } \\ <g, b>2\arpeggio >> |
		<< fis'2^5\arpeggio \\ <g, b>\arpeggio >> |
		<< { fis'8^5\arpeggio e4 d8 } \\ <g, b>2\arpeggio >> |
		<< e'^5\arpeggio \\ <g, b>\arpeggio >> |
		<< { e'8^5 dis4^4 d8 } \\ gis,2_1 >> 
		\mbreak
		%end of page 5
		<< { cis4^2^4 c^3 } \\ { a8 gis4_1 g8_1 } >> |
		<< {b8^2^5 a4 fis8 } \\ fis2 >> |
		d2 |
		<< { b'8 a4^5 g8 } \\ <b, d>2 >> |
		<< { fis'2^1^2^3 } \\ <b, d> >> |
		<< { a'8 g4^5 fis8 } \\ <a, c>2 >> |
		<< e'2^1^2^3 \\ <a, c> >> |
		\mbreak
		<< { g'8 fis4^5 e8^4 } \\ <g, b>2 >> |
		<< g'2^>^3^5 \\ <g, d'> >> |
		<< { fis'8^2^5 e4 fis8 } \\ <g, cis>2 >> |
		< fis d'>^3 |
		<< {e''8^2^5 d4 c8^3 } \\ <e, b'>2 >> |
		<< b'2^1^2^4 \\ <e, g> >> |
		\mbreak
		<< { d'8^2^5 c4 b8^3 } \\ <d, a'>2 >> |
		<< a'2^1^2^4 \\ <d, fis> >> |
		<< { c'8^2^5 b4^4 a8^3 } \\ <c, g'>2 >> |
		<< { fis'4^>^4 ~ fis16 a \times 2/3 { g16_4 e_3 c_2 } } \\
			<g c>2 >> |		
		<< {b8^2^5 a4 b8 } \\ <c, fis>2 >>
		<< { g'4^2^5 ~ g8 r8 } \\ {c,8( b4) r8 } >>
		% 
		% end of repeat
		% 
		}
		\key d \major
		\time 4/4
		%
		%
		%
		% end of center section
		%
		%
		%
		\once \override Score.MetronomeMark #'transparent = ##t
		\tempo 4=120
	
	\once \override TextScript #'padding = #2.2
       	r4^\markup{ Tempo I. }
	
	\upperrepeated

	r8 \times 2/3  { d''16^3 e d } |

	% last page
	
	r16 <fis, c'>^1^2[ r <fis c' e>^4 r <fis c' d> r <fis c' fis>]
	r <fis c'>[ r <fis c' e> r <fis c' d> r <fis c' fis>] |
	<a b d>4^.^>^2^3^5 <g b d>8[ r16 <g b d>16] <g b d>4-. r8
		\times 2/3 { a16^3 b a } |
	r16 <cis, g'>^1^2[ r <cis g' b>^4 r <cis g' a>^3 r <cis g' cis>]
	r <cis g'>[ r <cis g' b>^4 r <cis g' a> r <cis g' cis>]  |
	\mbreak
	<e fis a>4^.^>^2^3^5 <d fis a>8[ r16 <d fis a>16] <d fis a>4-. 
		r8 \times 2/3 { d16^3 e d } |
	r16 <fis, c'>^1^2[ r <fis c' e>^4 r <fis c' d> r <fis c' fis>]
	r <fis c'>[ r <fis c' e> r <fis c' d> r <fis c' fis>] |
	\mbreak
	<a b d>4^.^>^2^3^5 <g b d>8[ r16 <g b d>16] <g b d>4-. 
		r8 \times 2/3 { a16_3 b a } |
	r16 <cis, g'>[ r <cis g' b>^4 r <cis g' a>^3 r <cis g' cis>]
	r <cis g'>^1^2[ r <cis g' b> r <cis g' a> r <cis g' cis>] |
	\mbreak
	<e fis a>4_._>^2^3^5 <d fis a>8[ r16 <d fis a>] <d fis a>4-. r4 |
	\clef bass
	<a b d>^.^>^2^3^5 <g b d>8[ r16 <g b d>] <g b d>4-. r4 |
	r4 <e fis a>_2^. r <d fis a>-. |
	r <a b d>_._2 r <g b d>-. |
	\mbreak
	r <g d'>_.^2^5 r <g' d'>^.^2^5 |
	r \clef treble <g' d'>^.^2^5 r <g' d'>-. |
	r <g d'>-. r <g, d'>-. |
	r <g, d'>-. r \clef bass <g, d'>-. |
	r2 <g, d'>4-. r4 |
	\clef treble <d'''' fis a d>-. r4 r2 \bar "|."
	


     }

	lowerrepeated = \relative c {
	
	       <d, a'^2>4-.-> r4 r4 <d a'>8 <d a'> |
		<d a'>4-.-> r4 r4 <d a'>8 <d a'> |
		<d a'>4-.-> <d' a'>8_4 <d a'> <d a'>4-.->  <d, a'>8 <d a'> |
		%\mbreak
		<d a'>4-. <d' a'>8_4[ r16 <d a'>16] <d a'>4-. r4 |
		<b, fis'^2>4 <b' fis'>8_4 <b fis'> <e, b'^2>4 <e' b'>8_4 <e b'> |
		<a,, e'>4 <a'' e'>8_4[ r16 <a e'>16] <a e'>4-. r4 |
		%\mbreak
		<g, d'>4^2 <g' d'>8_4 <g d'> <g d'>4 r4 |
		<e, b'>^2 <e' b'>8_4[ r16 <e b'>16] <e b'>4-. r4 |
		<a, e'>^2 <a' e'>8_4 <a e'> <a e'>4-. r4 |
		%\mbreak
		<d,, a'>^. \change Staff = "upper" \stemDown <d'' a'>8_1_4[ s16 <d a'>16] 
			<d a'>4-. \change Staff = "lower" <d, a'>8^2\unaCorda <d a'> |
		<d a'>4-.-> r4 r4 <d a'>8 <d a'> |
		<d a'>4-.-> r4 r4 <d a'>8 <d a'> |
		%\mbreak
		<d a'>4 <d' a'>8_4 <d a'> <d a'>4 <d, a'>8 <d a'> |
		<d a'>4-.->^2 <d' a'>8_4[ r16 <d a'>16] <d a'>4-. r4 |
		<b, fis'>4^2 <b' fis'>8_4 <b fis'> <e, b'>4^2
			\clef treble <e' b'>8 <e b'> |
		% end of page 1
        %\mbreak
		<a, e'>4-. <a' e'>8_4[ r16 <a e'>16] <a e'>4-. r4 | %16
        <g, d'>^2 <g' d'>8_4 <g d'> <g d'>4 r4 |
        <e, b'>^2-.-> <e' b'>8_4[ r16 <e b'>16] <e b'>4 r4|
        %\mbreak
        <a, e'>^2 <a' e'>8_4 <a e'> <a e'>4 r4 | %19
        <d, a'>^2_._> <d' a'>8_4[ r16 <d a'>16] <d a'>4-. r4  |
        \clef bass
        \bar "||"
        \stemUp
        <a,, e'>_>^2 <a e'>8-. <a e'>-. <a e'>4_> <a e'>8-. <a e'>-. |
        %\mbreak
        <a e'>4 <a e'>8 <a e'> <a e'>4 <a e'>8 <a e'> | %22
        r8 \change Staff = "upper" \stemDown 
			<gis'' d'>8_3_\markup { \fontsize #-2 \italic "l.h." }
            a_._2[ a_._2] a2_._> |
        \change Staff = "lower" \stemNeutral 
			aes,4 \change Staff = "upper" \stemDown
            aes'8_2 aes_2 aes4_2 \stemNeutral 
			\change Staff = "lower" r4 |
        %\mbreak
        <g,, e'>16^2( g' c-2 e) r4 <g,, d'>16^2( g' b-3 f') r4 |
        <c,, g'>4^2 <c' g'>8-._4 <c g'>-. <c g'>4 <c g'>8-. <c g'>-.\treCorde |
        %\mbreak
        <c g'>4 <c g'>8 <c g'> <c g'>4 <c g'>8 <c g'>8 |
        r8 \change Staff = "upper" \stemDown  
			<b'' f'>8_3 c_._2[ c_._2] c2_._> |
        \change Staff = "lower" \stemNeutral 
			b,4 \change Staff = "upper" \stemDown
            b'8_2 b_2 b4 \change Staff = "lower" \stemNeutral r4\unaCorda |
        %\mbreak
        % end of page 2
		<bes,, g'>16-2-( aes' ees'^3 g) r4 
			<bes,, f'>16^2( bes' d^3 aes') r4 |
		<ees,, bes'>4^2 <ees' bes'>8-._3 <ees bes'> <ees bes'>4
			<bes ees>16[ r16 ees, r |
		<bes' ees> r ees,] r <bes' ees>[ r ees, r <bes' ees> r ees,] r
			\once \override Voice.Beam #'positions = #'(3.8 . 3.8)
			<bes' ees>[ r ees, r |
		%\mbreak
		<bes' ees> r ees,] r <bes' ees>[ r ees, r <bes' ees> r ees,] r
			<c' ees>[ r ees, r |
		<c' ees> r ees,] r <c' ees>[ r ees, r <c' ees> r ees,] r 
			\once \override Voice.Beam #'positions = #'(3.8 . 3.8)
			<c' ees>[ r ees, r |
		%\mbreak
		<c' ees> r ees,] r <c' ees>[ r ees, r <c' ees> r ees,] r
			<aes ges'>_3[ r ees r |
		<aes ges'> r ees] r <aes ges'>[ r ees r <aes ges'> r ees] r
			\once \override Voice.Beam #'positions = #'(4.6 . 4.6)
			<aes ges'>[ r ees r |
		%\mbreak
		<aes ges'> r ees] r <aes ges'>[ r ees r <aes ges'> r ees] r
			<aes f'>_3[ r ees r |
		<aes f'>_3 r ees] r <aes f'>[ r ees r <aes f'> r ees] r
			\once \override Voice.Beam #'positions = #'(4.2 . 4.2)
			<aes f'>[ r ees r |
		%\mbreak
		<aes f'> r ees] r <aes f'>[ r ees r <aes f'> r ees] r 
			<ees bes' f'>8 <ees bes' f'> |
		<ees bes' f'>4-> <ees' bes' f'>8 <ees bes' f'>
			<ees bes' f'>4-> <ees, bes' f'>8 <ees bes' f'> |
		% end of page 3
		<ees bis' f'>4-> <ees' bes' f'>8 <ees bes' f'> <ees bes' f'>4
			<f f'>8-. <g g'>-. |  
		<aes aes'>8^.^> <c c'>-. <aes aes'>-. <f f'>-. <aes aes'>-.
			<f f'>-. <d d'>-. <f f'>-. |
  		<d d'>-. <bes bes'>-. <d d'>-. <bes bes'>-. <g g'>-. 
			<bes bes'>-. <g g'>-. <ees ees'>-. |
		%\mbreak
		<g g'>-. <ees ees'>-. <c c'>-. <ees ees'>-. 
			<c c'>-. <aes aes'>-. <c c'>-. <aes aes'>-. |
		<< { r4 <aes' c ees>4_4 <aes' c ees>_4 \change Staff = "upper"			s4 } \\ { <g,, g'>1 }	 >> | % doesn't look right 
									% changing it to uppser staff
		<< { r4 <aes' c ees> <aes' c ees> s4 } \\
			{ <ges,, ges'>1 } >> |
		<< { r4 <aes' ces ees> <aes' ces ees> s4 } \\
			{ <f,, f'>1 } >> |
		%\mbreak
		<< { r4 <e' a cis> <e' a cis> \clef treble <e' a cis>8 r8 
			\clef bass } \\ <e,,, e'>1 >> |
		<d' a'>16^2 d' fis-3 a 
			\times 4/5 { d16 a fis d-1 a-3  }
			\times 4/5 { d,[ a' d_1 fis_3 a] }
			d8 r8 |
		<d,, a' d>8 <fis' a d>4_4 <a d fis>_2_3_5 <d fis a>8 r4|
		%\mbreak
		\stemUp
		\times 2/3 { b,,16[ fis'_2 b] }
		\times 2/3 { d_4[ fis b] } \stemDown d8-2 \stemUp r
		\times 4/5 { e,,16[ b'_2 e gis_3 d'_1] } \stemNeutral fis8-2 r |
		<a,,, e' a>8 <e'' a cis>4 <a cis e>_2_3_5 <cis e a>8 r4 |
		<g, d'>16^2^> g' b-4 d \times 4/5 
			{ g16 d b g-1 d-2 } \times 4/5 { g,[ d' g b-4 d] } g8 r8 |
		%\mbreak
		<e,, b' e>8 <g' b d fis>4_1_2_3_5 <b d fis g>_1_2_4_5
			<d fis g b>8 r4 | 
		\times 4/5 { a,16[ e'-2 a d-4 g] } b8 r8
			\times 4/5 { a,,16[ e'-2 a cis g'] } b8 r8 |
		<d,,, a' d>8 <a'' d fis>4 \clef treble <d fis a>_2_3_5
			<fis a d>8 r4 \clef bass |
		%\mbreak

	}
     
     lower = \relative c {
       \clef bass
       \key d \major
       \time 4/4
     
     
	\lowerrepeated
	\bar "||" 
	\key g \major \time 2/4 
 		%
		%
		% end first part and 4th page
		%
		%
		\time 2/4 <g d'>2-2 | <g d'> | <g d'> | 
		<< { b'8 a4-1 g8-1 } \\ { <g, d'>2-2-5 } >>
		<< { fis'2 } \\ { <g, d'> } >>
		<< { a'8 g4-1 fis8-1 } \\ { <g, d'>2 } >>
		%\mbreak
		<< { e'2^1 } \\ { <g, d'> } >> |
		<< { g'8 fis4_1 e8_1 } \\ { e,2_> } >> |
		<a, a'> |
		<d a'>8_3 <d' d'>4 <cis cis'>8 |
		<c g' c>2 |
		<< { g'2 } \\ { <e e'>8_2_4 <d d'>4_1_5 
			<c c'>8_1_5 } >>
		%\mbreak
		<b fis' b>2 |
		<< { fis' } \\ { <d d'>8_2_4 <c c'>4 <b b'> 8 } >> |
		<a e' a>2 |
		 << { 
        c'8\arpeggio b4 a8 } \\
			{a,,2\arpeggio } >> |
		< d d'> |
		<g d'>_3 \clef treble | \bar "||"
		%\mbreak
		%
		%  start of repeat
		%
		\bar "|:"
		\repeat volta 2 {
		<< { s2 | b''8 ais4^1 gis8^2 | ais2^1 | 
			ais8^1 gis4^2 fis8^3 | } \\
			{ <fis, dis' fis>2\arpeggio ~ <fis dis' fis> ~
			<fis dis' fis> ~ <fis dis' fis> } >> |
		< dis' fis >2^2^3 |
		< cis gis'> | \clef bass |
		%\mbreak
		<fis, e'>2 |
		<< { e'8( dis8.) } \\ { b2_1_3 } >>
		<< { s2 | g'8 fis4^1 e8^2 | fis2^1 |
			fis8^1 e4^2 d8^3 | } \\
			{ <d, b' d>2\arpeggio ~ <d b' d> ~ <d b' d>
			~ <d b' d> } >> |
		<b' d>2_2_4 |
		%\mbreak
		<a e'>2_\markup { \finger "5-3" } |
		<d, c'>^1 |
		b'8-1 a4-2 fis8-3 |
		<g, d'>4^2 \clef treble d'''-2 \clef bass |
		<< { b,8 a4_1 g8_1 } \\ { <g, d>2 } >> |
		<g d' fis>4^1 \clef treble d'''-2 \clef bass |
		<< { a,8 g4_1 fis8_1 } \\ { <g, d'>2 } >> |
		%\mbreak
		<g d'^1 e>4 \clef treble d'''-2 \clef bass |
		<< { g,,8 fis4_1 e8_1 } \\ { e,2 } >> |
		<a, a'>4 \clef treble a'''-2 \clef bass |
		<d,,, a'>8_2 <d' d'>4 <cis cis'>8 |
		<c g' c>4 \clef treble g'''-2 \clef bass |
		<< g,,2 \\ { <e e'>8 <d d'>4_1_5 <c c'>8 } >> | 
		%\mbreak
		<b fis' b>4 \clef treble fis''' \clef bass |
		<< { fis,,2 } \\ { <d d'>8_2_4 <c c'>4_1_5
			<b b'>8 } >>
		< a e' a >4 \clef treble e'''^2 \clef bass |
		<< { c,8\arpeggio b4 a8 } \\ { a,,2\arpeggio } >> |
		<d d'>4 \clef treble d'''-2 \clef bass <g,,, d'>4^2 
			~ <g d'>8 r8 |	
		% 
		% end of repeat
		% 
		}
	\key d \major
	\time 4/4
	\lowerrepeated

	% last page
	<d a'>8^1^3_. <a a'>_. <d a'>_. <a a'>_. 
		\once \override TextScript #'padding = #2.2
		<d a'>_\markup { \italic \fontsize #-2 "staccato sempre" }
		 <a a'> <d a'> <a a'> |
	<d a'> <a a'> <d a'> <a a'> <d a'> <a a'> <d a'> <a a'> |
	<d a'> <a a'> <d a'> <a a'> <d a'> <a a'> <d a'> <a a'> |
	%\mbreak
	<d a'> a <d a'> a <d a'> a <d a'> a |
	<d a'> a <d a'> a <d a'> a <d a'> a |
	%\mbreak
	<d a'> a <d a'> a <d a'> a <d a'> a |
	<d a'> a <d a'> a <d a'> a <d a'> a |
	%\mbreak
	<d a'> a <d a'> a <d a'> a <d a'> a |
	<d a'> a <d a'> a <d a'> a <d a'> a |
	<d a'>4_. a_. <d a'>_. a_. |
	<d a'>_. a_. <d a'>_. a_. |
	%\mbreak
	<d a'>-.^3^1 r4 <d' a'>^5^2-. r |
	\clef treble
	<d' a'>-.^5^2 r <d' a'>-. r |
	<d' a'>-. r <d, a'>-. r |
	<d, a'>-. r \clef bass <d, a'>-. r |
	<d, a'>-. r r2\treCorde  |
	<d, a' d>4-. r4 r2 | 
	\bar "|."
	
	
     }
     
     dynamicsrepeated = {
        s1\p s1*8 s2 s4 s4\pp s1*5 % end of page 1
       s1 s4^\markup { \fontsize #-2 "sempre" \dynamic "pp" }
       s2. s1*3
       s1\f
       s1*2
       s2^\markup { \fontsize #-2 "dim." } 
        s8 s8\pp s4^\markup {  \fontsize #-2 "dolce" } |
       s1 s2. s4\f s1*2 s2.^\markup { \fontsize #-2 "dim." } s4\pp
       % end of page 2
		s1 

		s2
		s4^\markup { \dynamic "pp" \fontsize #-2 "sempre" } s4 |
		\setTextCresc
		\set crescendoText = \markup { \italic \pad-markup #-0.8 "cresc.        poco    a     poco" }

		s1*3 s2. s8 s8^\< |
		s4 s2.

		s1*2 s2 s4\!
		\setTextCresc
		\set crescendoText = \markup { \italic \pad-markup #-0.8 "piú cresc." }
		s4\< |
		s1
		% end of page 3


		s2 s4\! s4\f s1*2
		s4 s4\< s4 s4\!
		s4^\markup { \fontsize #-2 "marc." } s2.
		s1 s4^\markup { \fontsize #-2 "piú" \dynamic "f"  } s2.
		s4^\markup {\fontsize #-2 "poco rit." } s2
		s4^\markup {\fontsize #-2 "a tempo" }  |
		s8 s2..\fff | s1*2^\markup { \dynamic "fz" }
		s1*2^\markup { \dynamic "fz" }
		s1*2^\markup { \dynamic "fz" }
		s1^\markup { \dynamic "fz" } 
		% end of page 4 
	}
	
     dynamics = {
	\dynamicsrepeated
 
	% center section
	s2\p s2*2 s2^\markup {\fontsize #-2 "cantando" } s2*5
	s4.\< s16 s16\! | s2\f s2*5 s2\> s2\! 
	%start repeat
	\repeat volta 2 {
	s2^\markup {  \dynamic "pp" \fontsize #-2 "dolce" }
	s2*3
	s4\< s8 s16 s16\! | s2
	s4.\> s16 s16\! | s2
	s2^\markup {  \dynamic "pp" \fontsize #-2 "dolce" }
	s2*3
	s4\< s8 s16 s16\! | 
	%end of page 5
	s2
	s4. s8\> | s4. s8\! |
	s2\p
	s2*6
	s4\< s8 s16 s16\! | 
	s2\f
	s2*5
	s4. s8\> | s4 s4\! |
	}
	
	\dynamicsrepeated

	% start of last page
	s1*4 s1*4\p 
	s1*3^\markup { \italic \fontsize #-2 "dim." }
	s1*3\pp
	s2.\> s8 s8\!
	s8 s8\ppp s2.
	s1\fff

     }
     
	pedalrepeated = { 
      	s1\sustainDown | 
	s2 s4 s8 s16 s16\sustainUp  | 
	s1\sustainDown  | %3
	s2 s4 s4\sustainUp |
	s4\sustainDown s8 s8\sustainUp s4\sustainDown s8 s8\sustainUp |
	s2.\sustainDown s4\sustainUp |%6
	s2.\sustainDown s4\sustainUp |
	s2.\sustainDown s4\sustainUp |
	s2.\sustainDown s4\sustainUp |
	s2.\sustainDown s4\sustainUp |
	s1\sustainDown | 
	s2. s4\sustainUp |
	s1\sustainDown |
	s2. s4\sustainUp |
	s4.\sustainDown s8\sustainUp
	s4.\sustainDown s8\sustainUp |
	%end of page 1
    s2.\sustainDown s8 s8\sustainUp |
    s2.\sustainDown s8 s8\sustainUp |
    s2.\sustainDown s8 s8\sustainUp |
    s2.\sustainDown s8 s8\sustainUp |
    s2.\sustainDown s8 s8\sustainUp |
    s4.\sustainDown s8\sustainUp s4.\sustainDown s8\sustainUp |
    s4\sustainDown s4\sustainUp s4\sustainDown s4\sustainUp |
    s2 s2\sustainDown |
    s2\sustainDown s4\sustainUp s4\unaCorda |
    s4\sustainDown s4\sustainUp s4\sustainDown s4\sustainUp |
    s2.\sustainDown s4\sustainUp  |
    s4\sustainDown s4\sustainUp s4\sustainDown s4\sustainUp |
    s2 s4.\sustainDown s8\sustainUp |
	s2.\sustainDown s4\sustainUp
	%end of page 2
	s4\sustainDown s4\sustainUp s4\sustainDown s4\sustainUp |
	s2\sustainDown s4\sustainUp s4\sustainDown  |
	s1
	s2. s4\sustainDown |
	s1
	s2. s8\sustainDown s8\treCorde |
	s1
	s2. s4\sustainDown
	s1
	s2. s4\sustainDown
	s2. s4\sustainDown |
	%end of page 3
	s2. s4\sustainUp
	s8\sustainDown s8\sustainUp s2.
	s1*2
	s2.\sustainDown s4\sustainUp
	s2.\sustainDown s4\sustainUp
	s2.\sustainDown s4\sustainUp
	s2.\sustainDown s8 s8\sustainUp
	s1\sustainDown
	s2. s8 s8\sustainUp |
	s4.\sustainDown s8\sustainUp
	s4.\sustainDown s8\sustainUp |
	s2.\sustainDown s8 s8\sustainUp
	s2.\sustainDown s8 s8\sustainUp |
	s2.\sustainDown s8 s8\sustainUp |
	s4.\sustainDown s8\sustainUp s4.\sustainDown s8\sustainUp
	s2.\sustainDown s4\sustainUp
	% end of page 4
	
	}
	
	pedal = {
	
	\pedalrepeated
	s2*3\sustainDown
	s2\sustainUp
	s2\sustainDown
	s2\sustainUp
	s2
	s2\sustainDown
	s2\sustainUp
	s4\sustainDown s4\sustainUp
	s2\sustainDown
	s2\sustainUp
	s2\sustainDown
	s2\sustainUp
	s4\sustainDown s4\sustainUp
	s2\sustainDown
	s2\sustainUp
	s2
	\repeat volta 2 {
	s2*4\sustainDown
	s2*3\sustainUp
	s4 s4\sustainDown
	s2*3\sustainDown
	s4. s16 s16\sustainUp |
	s2
	%end of page 5
	s2
	s4 s4\sustainDown
	s4 s4\sustainUp
	s2\sustainDown
	s2\sustainUp
	s2\sustainDown
	s2\sustainUp
	s4.\sustainDown s8\sustainUp
	s4.\sustainDown s8\sustainUp
	s4.\sustainDown s8\sustainUp
	s4\sustainDown s4\sustainUp
	s2\sustainDown
	s2\sustainUp
	s2\sustainDown
	s2\sustainUp
	s4.\sustainDown s8\sustainUp
	s4.\sustainDown s8\sustainUp
	s2\sustainDown
	s2\sustainUp
	}
	
	\pedalrepeated

	% last page
	s2.\sustainDown s8. s16\sustainUp |
	s2.\sustainDown s8. s16\sustainUp |
	s2.\sustainDown s8. s16\sustainUp |
	s2.\sustainDown s8. s16\sustainUp |
	s1
	s2.\sustainDown s8. s16\sustainUp |
	s1
	s2.\sustainDown s8. s16\sustainUp |
	s2.\sustainDown s8. s16\sustainUp |
	s4 s2\sustainDown s4\sustainUp
	s4 s2\sustainDown s4\sustainUp
	s2.\unaCorda\sustainDown s8 s8\sustainUp
	s2.\sustainDown s8 s8\sustainUp
	s2.\sustainDown s8 s8\sustainUp
	s2.\sustainDown s8 s8\sustainUp
	s2.\sustainDown s8 s8\sustainUp
	%\once \override TextScript #'padding = #2.2
	%s4\treCorde\sustainDown  s2.\sustainUp |
	s2.\sustainDown s8 s8\sustainUp


     }
     
     \score {
       \new PianoStaff <<
		 \set PianoStaff.instrument = "Piano."
		 \set Score.allowBeamBreak = ##t
		 \set PianoStaff.connectArpeggios = ##t

        \new Staff = "upper" \upper
         \new Dynamics = "dynamics" \dynamics
        \new Staff = "lower" <<
           \clef bass
           \lower
         >>
         \new Dynamics = "pedal" \pedal
       >>

       \layout {
         \context {
           \type "Engraver_group"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
           pedalSustainStrings = #'("Ped." "*Ped." "*")
           pedalUnaCordaStrings = #'("una corda" "" "tre corde")
     
           \consists "Piano_pedal_engraver"
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
     
           \override TextScript #'font-size = #2
           \override TextScript #'font-shape = #'italic
           \override DynamicText #'extra-offset = #'(0 . 2.5)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
	\override DynamicTextSpanner #'dash-period = #-1.0

    
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
		\unfoldRepeats
       \new PianoStaff <<
         \new Staff = "upper" << \upper \dynamics >>
         \new Staff = "lower" << \lower \dynamics >>
         \new Dynamics = "pedal" \pedal

       >>
       \midi {
        \tempo 4=120 
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
	between-system-padding = 1
	ragged-bottom=##f
	ragged-last-bottom=##f
}
