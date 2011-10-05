% Created on Sun Aug 28 18:32:17 NZST 2011
\version "2.12.2"

\header {
	title = "Toccata and Fugue in D Minor" 
	subtitle = "BWV 565" 
 	composer = "J. S. Bach"
 	mutopiatitle = "Toccata and Fugue in D Minor"
 	mutopiaopus = "BWV 565"
 	mutopiacomposer = "BachJS"
 	mutopiainstrument = "Organ"
 	style = "Baroque"
 	source = "Bach-Gesellschaft Ausgabe, 1867"
 	maintainer = "Anonymous"
 	copyright = "Public Domain"

 footer = "Mutopia-2011/09/11-1780"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}



staffChurchOrgan = <<
	\new PianoStaff {
		\set PianoStaff.midiInstrument = #"church organ"
		\set PianoStaff.instrumentName = #"Manual"
		\set Score.connectArpeggios = ##t
		<<
			\time 4/4
			\context Staff = "RH" {  % Right hand 
				\clef treble
				\key d \minor
				<< {
						\relative c''' {
				\override Accidental #'hide-tied-accidental-after-break = ##t
					%1
					\tempo Adagio
					a8 \fermata \prall b,32 \rest g'64 f e d cis32 d16 b \rest b8 \rest \fermata 
					a \fermata \prall b32 \rest e, f cis d16 b' \rest b8 \rest \fermata \noBreak
					%2
					s2. <bes, cis e>4 ~ \arpeggio \break
					%3
					<bes cis e>4 d b'4 \rest b8 \rest b16 \rest cis,16 \noBreak
					%4
					\tempo Prestissimo
					\scaleDurations #'(2 . 3) {
					d16[ e cis] d[ e cis] d[ e cis] } d[ e] 
					\scaleDurations #'(2 . 3) {
					f[ g e] f[ g e] f[ g e] } f[ g] \noBreak
					%5
					\scaleDurations #'(2 . 3) {
					a[ bes g] a[ bes g] a[ bes g] } a b \rest \fermata b4 \rest 
					b8 \rest b16 \rest cis \break
					%6
					\scaleDurations #'(2 . 3) {
					d[ e cis] d[ e cis] d[ e cis] } d[ e]
					\scaleDurations #'(2 . 3) {
					f[ g e] f[ g e] f[ g e] } f[ g] \noBreak
					%7
					\stemDown
					\scaleDurations #'(2 . 3) {
					a[ bes g] a[ bes g] a[ bes g] } a b, \rest \fermata b4 \rest b8 \rest b16 \rest a' \break
					%8
					\scaleDurations #'(2 . 3) {
					g[ bes e,] g[ bes e,] f[ a d,] f[ a d,] e[ g c,] e[ g c,] d[ f bes,] d[ f bes,] \noBreak
					%9
					\stemDown
					c[ e a,] c[ e a,] bes[ d g,] bes[ d g,] 
					\stemUp a[ c f,] a[ c f,] g[ bes e,] g[ bes e,] \pageBreak
					%10
					\tieDown
					f[ a d,] f[ a d,] e[ g cis,] e[ g cis,] } b'4 \rest 
					\stemDown <cis, e g> ~ \noBreak
					%11
					<cis e g> s2. \noBreak
					%12
					\stemUp
					f4 \fermata b8 \rest b16 \rest a
					\stemDown
					d e f d e f g e \break
					%13
					f g a f g a bes g a f g e f d e cis \noBreak
					%14
					\stemUp
					d a bes g a f g e f d g e f d e cis \noBreak
					%15
					\clef bass
					\stemDown
					d a bes g a f g e f d g e f d e cis \break
					%16
					d8
					\stemUp
					\clef treble
					s32 f' bes f s e a e s d g d s16 e32 a s16 <f bes> s <e a> s <d g> \noBreak
					%17
					<e a>8 s32 f bes f s e a e s d g d s16 e32 a s16 <bes f> s <a e> s <g d> \break
					%18
					<e a>4 ~ a32[ g f e]
					\stemDown
					d[ cis b cis] a[ b cis d]
					\stemUp
					e[ f g a g f e f]
					\stemDown
					d[ f]
					\stemUp
					a[ cis] \noBreak
					%19
					d \noBeam
					\stemDown
					a[ b cis] d \noBeam
					\stemUp
					e[ f64 g a32 bes8] s16 <bes f> s <a e> s <g d> <a e cis>8 s32 f bes f \break
					%20
					s e a e s d g d s16 e32 a s16 <bes f> s <a e> s <g d> <cis, e a>8 <f, b> \noBreak
					%21
					cis'8. b16
					\stemDown
					a[ cis]
					\stemUp
					e32[ g bes16]
					\stemDown
					a32[ g f e f e d cis] d[ c bes a]
					\stemUp
					g[ f e d] \pageBreak
					%22
					<cis' e>2 ~ 
					\scaleDurations #'(2 . 3) { \tempo Prestissimo
					cis16[ e cis] bes[ cis bes] cis[ e cis] bes[ cis bes] \noBreak
					%23
					cis[ e cis] bes[ cis bes] cis[ e cis] bes[ cis bes] g[ bes g] e[ g e] g[ bes g] e[ g bes] \break
					%24
					g[ bes g] e[ g e] g[ bes g] e[ g e] cis[ e cis] bes[ cis bes] cis[ e cis] bes[ cis bes] \noBreak
					%25
					cis[ e cis] bes[ cis bes] cis[ e cis] bes[ cis bes] cis[ e cis] e[ g e] cis[ e cis] e[ g e] \break
					%26
					cis[ e cis] e[ g e] cis[ e cis] e[ g e] g[ bes g] bes[ g bes] g[ bes g] bes[ g bes] \noBreak
					%27
					cis[ bes cis] e[ cis e] cis[ e cis] e[ cis e] } <a, cis e a>4 <a d f a> \break
					%28
					<bes d g> b \rest <a cis e g> bes \rest \noBreak
					%29
					bes \rest bes8 \rest bes16 \rest <a cis> <f a d>8 f e4 \noBreak
					%30
					d2 b' \rest \break
					%31
					R1 \noBreak
					%32
					b2 \rest b16 \rest d c d bes d a d \noBreak
					%33
					g, d' fis, d' g, d' a d bes d d, d' e, d' fis, d' \break
					%34
					g, d' fis, d' g, d' a d bes8-. d-. bes-. d-. \noBreak
					%35
					ees g, ees' g, c a c a \noBreak
					%36
					d f, d' f, bes g bes g \pageBreak
					%37
					cis e, cis' e, a f a f \noBreak
					%38
					g cis, g' cis, f d f d \noBreak
					%39
					e bes e bes b'16 \rest
					\stemDown
					a' g a f a e a \break
					%40
					d, a' cis, a' d, a' e a f a a, a' b, a' cis, a' \noBreak
					%41
					d, a' cis, a' d, a' e a f a e a d, a' c, a' \noBreak
					%42
					bes, a' c, a' d, g bes, g' e g d g c, g' bes, g' \break
					%43
					a, g' bes, g' c, f a, f' d f c f bes, f' a, f' \noBreak
					%44
					g, f' a, f' bes, e g, e' cis e bes e a, e' g, e' \noBreak
					%45
					\stemUp
					f, e' g, e' a, d f, d' e, e' e, e' f, d' f, d' \break
					%46
					bes cis bes cis a d f, d' e, e' e, e' f, d' f, d' \noBreak
					%47
					b16 \rest d cis d b d cis b cis4 r \noBreak
					%48
					r16 d cis d f d cis b cis4 e ~ \break
					%49
					e8[ d] ~ d[ cis] c4 bes \noBreak
					%50
					a a g g \noBreak
					%51
					fis8 a4 ees'8 d4 r8 g ~ \pageBreak
					%52
					g fis g4 bes,8 d d d \noBreak
					%53
					d d d d d d d d \noBreak
					%54
					d16 g f g e f d e c a' g a f g e f \break
					%55
					d bes' a bes g a f g e c' bes c a bes g a \noBreak
					%56
					f ees d c d c bes a bes d bes a g bes g f \noBreak
					%57
					e f g a bes d c bes a4 c8 bes \break
					%58
					a g a bes c e, f g \noBreak
					%59
					a g a bes c16 bes a g f \noBeam
					\stemDown
					ees[ d c] \noBreak
					%60
					\stemUp
					d' c bes a g \noBeam
					\stemDown
					f[ e d]
					\stemUp
					e' d c bes a \noBeam
					\stemDown
					g[ f e] \break
					%61
					\stemUp
					f' e d c bes \noBeam
					\stemDown
					a[ g f]
					\stemUp
					g' f e d c \noBeam
					\stemDown
					bes[ a g] \noBreak
					%62
					\stemUp
					a' f e f c f e f a f e f c f e f \noBreak
					%63
					g e d e c e d e g e d e c e d e \break
					%64
					a f e f c f e f a f e f c f e f \noBreak
					%65
					g e d e c e d e g e d e c e d e \noBreak
					%66
					f g f e d \noBeam 
					\stemDown
					c[ b a] b g b d
					\stemUp
					f a f d \pageBreak
					%67
					\stemDown
					b g b d
					\stemUp
					f a f d
					\stemDown
					bes g bes c
					\stemUp
					e g e c \noBreak
					%68
					\stemDown
					bes g bes c
					\stemUp
					e g e c
					\stemDown
					a f a c
					\stemUp
					d f d bes \noBreak
					%69
					\stemDown
					a f a c
					\stemUp
					d f d bes
					\stemDown
					g e g bes
					\stemUp
					cis e cis bes \break
					%70
					\stemDown
					g e g bes
					\stemUp
					cis e cis bes r a' g a f a e a \noBreak
					%71
					d, a' cis, a' d, a' e a f a a, a' b, a' cis, a' \noBreak
					%72
					d, a' cis, a' d,8[ e] d[ c] bes[ a] \break
					%73
					bes16 a g f e d cis b s2 |
					%74
					s1*11
					%85
					s4 b'16 \rest f16 e d a' s8. b16 \rest 
					\stemDown
					e d cis |
					%86
					d ees32 d c bes a g
					\stemUp
					fis8[ a] ~ a g c b |
					%87
					\stemDown
					ees d ees b c b c d |
					%88
					ees d ees f g2 \startTrillSpan ~ |
					%89
					g1 ~ |
					%90
					g2 ~ g16 \stopTrillSpan g f g ees f d ees |
					%91
					c f ees f d ees c d bes ees d ees c d bes c |
					%92
					a d c d bes c a bes
					\stemUp
					g bes a bes c bes a g |
					%93
					fis8 a d16 g, c fis, bes g d' a bes g a fis |
					%94
					g d' fis, d' g, d' a d bes g d' a bes g c a |
					%95
					\stemDown
					d c bes a
					\stemUp
					bes a bes g
					\stemDown
					a bes c d ees d c d |
					%96
					\stemUp
					bes c a bes g8 b
					\stemDown
					c16 ees f g aes g f g |
					%97
					ees f d ees c8[ bes]
					\stemUp
					a[ bes] ~ bes[ a] ~ |
					%98
					a[ g] ~ g[ fis] f[ ees] ~ ees[ d16 bes'] |
					%99
					a16 bes a g
					\stemDown
					fis ees' d c bes a' g fis g8. f16 |
					%100
					\stemUp
					ees f d ees cis4 d c |
					%101
					bes a8[ cis] d[ e] f4 |
					%102
					e2 d4. f8 |
					%103
					g d cis d e d cis d |
					%104
					e d cis d e g f d |
					%105
					bes e d d cis4 d8 e |
					%106
					\stemDown
					f e f cis d cis d e |
					%107
					f e f g a16 bes g a f g e f |
					%108
					d a cis a d a e' a, f' a, e' a, f' a, g' a, |
					%109
					a' a, e' a, f' a, g' a, a'4 b, \rest |
					%110
					s4.. s32 b1*17/32 \rest |
					%111
					b2 \rest b16 \rest e d cis d8 b16 \rest f' |
					%112
					e f g a bes a g a f8 e d16 e f ees |
					%113
					d c bes a
					\stemUp
					g a bes c a4 b8 \rest
					\stemDown
					c ~ |
					%114
					c bes b \rest g' ees16 f d ees
					\stemUp
					c bes a g |
					%115
					a4 s2. |
					%116
					s1 |
					%117
					s4 c,16 ees c bes s4 c16 ees c bes |
					%118
					s4 g'16 bes g d s4 g16 bes g d |
					%119
					s4 fis16 a fis ees s4 fis16 a fis ees |
					%120
					d8 b' \rest d c bes4 c8 d |
					%121
					ees4 f8 g a4 f8 ees |
					%122
					d16 ees d c bes c bes a g c bes a g a g fis |
					%123
					g f e d cis8 e f16 g a b
					\stemDown
					cis d e f |
					%124
					g8 f16 e d8 cis d e f g |
					%125
					a cis, d e f e f d |
					%126
					\stemUp
					e d d cis d f e4 |
					%127
					<bes d>2 \fermata b32*1/2 \rest s64^\markup { \bold "Recitativo"}
					f'32[ g a] bes s8 c,32[ d ees] f s16. |
					%128
					s32 a,[ bes c] d s8 g,32[ a bes] c s8 f,32[ g a] bes s8 c,32[ d ees] f s16. \break \noPageBreak
					%129
					\change Staff = "LH" s32 a,[ bes c] d s8 
					\change Staff = "RH" bes32[ c d] ees s8 c32[ d e] fis s8 fis32 g a 
					<< { \stemDown bes8 \noBeam } \\ { \stemUp s32 c d g, } >> \noBreak
					%130
					\tieUp
					\stemUp
					<bes e>2^\markup { \bold "Adagissimo" } ~ <bes e>4 <a d> ~ \noBreak
					%131
					<b d>2 b2 \rest \break \noPageBreak
					%132
					b4 \rest b8 \rest <b d> << { a4. g16 f } \\ { \stemUp c'2 ~ } >> \noBreak
					%133
					c2 \fermata b32*1/2 \rest s64^\markup { \bold "Presto"}
					g32[ f g] e s8 a32[ g a] f s16. \break \noPageBreak
					%134
					s32 b[ a b] g s8 c32[ b c] s d c d s e d e s f e f s g[ f g] e s16. \break
					%135
					s32 d[ c d] b s8 c32[ b c] a s8 b32[ a b] s a g a s gis[ fis gis] e s16. \break
					%136
					s32 d c b s e d c s f e d s g f e s a g f s g a b c4^\markup { \bold "Adagio Vivave" } |
					%137
					cis8 s cis cis d s d d |
					%138
					b s b b c s c c |
					%139
					a s a a bes s bes bes |
					%140
					bes s bes bes a s a a ~ |
					%141
					a4^\markup { \bold "Molto Adagio" }  g2 f4 |
					%142
					e2 d ~ |
					%143
					d1 \fermata |
				} } \\ { \relative c'' {
				\override Accidental #'hide-tied-accidental-after-break = ##t
				\shiftOn
					%1
					a8 \fermata \prall s32 g64 f e d cis32 d16 s8. s2 |
					%2
					s1
					%3
					s4 a s2 |
					%4
					s1*6
					%10
					\stemUp
					\tieUp
					s2. bes'4  ~ |
					%11
					bes ~ bes32[ a g f e] d[ cis b] cis16[ a cis] e32[ g] f8.^\trill e16 |
					%12
					\stemDown
					d4 s2. |
					%13
					s1*5
					%18
					cis4 s2. |
					%19
					s4 s8 d'16 s a s bes s e,8 \noBeam d'32 s16. |
					%20
					c32 s16. bes32 s16. a32 cis s16 d16 s a s bes s e,8
					\change Staff = "LH"
					<b d> |
					%21
					\change Staff = "RH"
					a'4 s2. bes2 s2 |
					%22
					s1*4
					%26
					s2 <cis, e>4 <d f> |
					%27
					<d g> s <cis e> s |
					%28
					\tieDown
					s4.. e16 d8[ d] ~ d[ cis] |
					%29
					s1*17
					%47
					\stemDown
					s2 r16 a' g a e g f e |
					%48
					f4 d a16 a' g a cis, g' f e |
					%49
					f4 e d8[ a'] ~ a[ g] ~ |
					%50
					g4 fis f ees ~ |
					%51
					ees8 d fis c' ~ c bes16 a bes8 bes |
					%52
					a4 d8 c bes a bes fis |
					%53
					g fis g a bes a bes fis |
					%54
					g16 bes a bes g a f g e c' bes c a bes g a |
					%55
					f d' c d bes c a bes g e' d e c d bes c |
					%56
					a8 f bes16 a g f g bes g f e g e d |
					%57
					c d e f g8 e f4 s4 |
					%58
					s1*2
					%60
					bes,8 s4. c8 s4. |
					%61
					d8 s4. e8 s4. |
					%62
					f8 s c' s f, s c' s |
					%63
					e, s c' s e, s c' s |
					%64
					f, s c' s f, s c' s |
					%65
					e, s c' s e, s c' s |
					%66
					d, s8 s2. |
					%67
					s1*5
					%72
					s2 d'8 a g fis |
					%73
					g s2.. |
					%74
					s1*26
					%100
					r4 r16 bes a g a4 fis |
					%101
					g16 f ees d cis8[ e] f[ g] s \stemUp d' ~ |
					%102
					\stemDown
					d4 cis a16 bes g a f8[ a] |
					%103
					g a g f g f e a |
					%104
					bes a g f a e' d a |
					%105
					g g a f s2 |
					%106
					s1*14
					%120
					s4 g8 fis g4 g8 b |
					%121
					c4 c8 e f4 bes,8 a |
					%122
					bes8 s4. s2 |
					%123
					s1*3
					%126
					s8 a bes a a d d c |
					%127
					f,2 s8 s32 a[ bes c] d s8 f,32[ g a] |
					%128
					bes s8 a32[ g f] ees s8 g32[ f ees] d s8
					\change Staff = "LH" a32[ bes c] d s8 f,32[ g a] |
					%129
					bes s8 c32[ bes a] g s8 d'32[ c bes] a s8
					\change Staff = "RH" ees'32[ d c] bes s8.. |
					%130
					\stemDown
					<e g>2 ~ <e g>4 f |
					%131
					<d f>2 s2 |
					%132
					s4. <e gis>8 \stemDown e2 |
					%133
					e s8 s32 e[ d e] c s8 f32[ e f] |
					%134
					d32 s8 g32[ f g] e s16. a32 s16. b32 s16. c32 s16. d32 s8 c32[ b c] |
					%135
					a32 s8 gis32[ fis gis] e s8 f32[ e f] d s16. c32 s16. b32 s8
					\change Staff = "LH"
					c32 b a |
					%136
					gis32 s16. a32 s16. b32 s16. c32 s16.
					\change Staff = "RH" d32 s16. e32 s16. e8 \rest <c e g> |
					%137
					<e a>8 \change Staff = "LH"
					a,32[ \change Staff= "RH" cis e] \stemUp a e8 \rest \stemDown <e a>
					<f a>8 \change Staff = "LH"
					a,32[ \change Staff= "RH" d f] \stemUp a e8 \rest \stemDown <f a> |
					%138
					<d g>8 \change Staff = "LH"
					g,32[ b \change Staff= "RH" d] \stemUp g e8 \rest \stemDown <d g>
					<e g>8 \change Staff = "LH"
					g,32[ \change Staff= "RH" c e] \stemUp g e8 \rest \stemDown <e g> |
					%139
					<c f>8 \change Staff = "LH"
					f,32[ a \change Staff= "RH" c] \stemUp f e8 \rest \stemDown <c f>
					<d f>8 \change Staff = "LH"
					f,32[ bes \change Staff= "RH" d] \stemUp f e8 \rest \stemDown <d f> |
					%140
					<e g>8 \change Staff = "LH"
					e,32[ g bes] \change Staff= "RH" \stemUp cis e8 \rest \stemDown <cis e g>
					<d fis>8 \change Staff = "LH"
					d,32[ a' \change Staff= "RH" d] \stemUp fis e8 \rest \stemDown <d fis> |
					%141
					<bes d>2 <cis e>4 d ~ |
					%142
					d c ~ c bes |
					%143
					a1 \bar "|."
					
				} } >>
			}
			\context Staff = "LH" {  % Left hand 			
				\clef bass
				\key d \minor
				<< {
				\relative c' {
				\override Accidental #'hide-tied-accidental-after-break = ##t
					%1
					\stemDown
					s2 a8 \fermata \prall d,32 \rest e f cis d16 d \rest d8 \rest \fermata |
					%2
					\stemUp
					a'8 \fermata \prall d,32 \rest g64 f e d cis32 d16 d16 \rest d8 \rest \fermata d4 \rest <cis e g>4 ~ \arpeggio |
					%3
					<cis e g> ~ g'16 e fis8 d4 \rest d8 \rest d16 \rest cis |
					%4
					\stemDown
					\scaleDurations #'(2 . 3) {
					d16[ e cis] d[ e cis] d[ e cis] } d[ e] 
					\scaleDurations #'(2 . 3) {
					f[ g e] f[ g e] f[ g e] } f[ g] |
					%5
					\scaleDurations #'(2 . 3) {
					a[ bes g] a[ bes g] a[ bes g] } a d, \rest \fermata d4 \rest d8 \rest d16 \rest
					\clef treble \stemUp
					cis' |
					%6
					\scaleDurations #'(2 . 3) {
					d[ e cis] d[ e cis] d[ e cis] } d[ e]
					\scaleDurations #'(2 . 3) {
					f[ g e] f[ g e] f[ g e] } f[ g] |
					%7
					\scaleDurations #'(2 . 3) {
					a[ bes g] a[ bes g] a[ bes g] } a b \rest \fermata b4 \rest b8 \rest b16 \rest a |
					%8
					\scaleDurations #'(2 . 3) {
					g[ bes e,] g[ bes e,] f[ a d,] f[ a d,] e[ g c,] e[ g c,] d[ f bes,] d[ f bes,]
					\clef bass |
					%9
					\stemDown
					c[ e a,] c[ e a,] bes[ d g,] bes[ d g,] a[ c f,] a[ c f,] g[ bes e,] g[ bes e,] |
					%10
					\tieDown
					f[ a d,] f[ a d,] e[ g cis,] e[ g cis,] } d4 \rest <cis e> ~ |
					%11
					<cis e> d4 \rest d2 \rest |
					%12
					d4 d \rest
					\clef treble
					b''32 \rest a16[ a a a] a[ a a a32] |
					%13
					b32 \rest a16[ a a a] a[ a a a] a[ a a a] a[ a a a32] |
					%14
					b32 \rest a16[ a a a] a[ a a a] a[ a a a] a[ a a a32] |
					%15
					b32 \rest a16[ a a a] a[ a a a] a[ a a a] a[ a a a32] |
					\clef bass
					%16
					d,,8 \rest 
					\change Staff = "RH"
					d'32 s16. c32 s16. 
					\change Staff = "LH"
					bes32 s16. a32 
					\change Staff = "RH"
					cis s16 d s
					\change Staff = "LH"
					a s bes s |
					%17
					\change Staff = "RH"
					cis8 \noBeam
					d32 s16. c32 s16.
					\change Staff = "LH"
					bes32 s16. a32
					\change Staff = "RH"
					cis s16 d s
					\change Staff = "LH"
					a s bes s |
					%18
					e,4 s2. |
					%19
					s1*2
					%21
					\stemUp
					e'4 s2. |
					%22
					\clef treble
					<e g>2 ~ 
					\scaleDurations #'(2 . 3) {
					e16[ g e] cis[ e cis] e[ g e] cis[ e cis] |
					%23
					e[ g e] cis[ e cis] e[ g e] cis[ e cis]
					\clef bass
					\stemDown
					bes[ cis bes] g[ bes g] bes[ cis bes] g[ bes g] |
					%24
					bes[ cis bes] g[ bes g] bes[ cis bes] g[ bes g] e[ g e] cis[ e cis] e[ g e] cis[ e cis] |
					%25
					e[ g e] cis[ e cis] e[ g e] cis[ e cis] e[ g e] g[ bes g] e[ g e] g[ bes g] |
					%26
					e[ g e] g[ bes g] e[ g e] g[ bes g] e[ g e] g[ e g] bes[ cis bes] cis[ bes cis] |
					%27
					e[ cis e] cis[ e cis] e[ cis e] cis[ e cis] } a4 a |
					%28
					s1 |
					%29
					\tieUp
					d,4 \rest d8 \rest d16 \rest a'16 a8[ a] ~ a8.[ g16] ~ |
					%30
					\stemUp
					<< { g8[ f16 e] f4 } \\ { d2 } \\ { a'2 } >>
					\clef treble
					b'16 \rest a g a f a e a |
					%31
					d, a' cis, a' d, a' e a f a a, a' b, a' cis, a' |
					%32
					d, a' cis, a' d, a' e a f8 fis g c, |
					%33
					\clef bass
					\stemDown
					bes a bes c d fis, g a |
					%34
					bes a bes fis g16 g' g, g' d g d g |
					%35
					c, ees c ees c ees c ees c f c f c f c f |
					%36
					bes, d bes d bes d bes d bes e bes e bes e bes e |
					%37
					a, cis a cis a cis a cis f, d' f, d' f, d' f, d' |
					%38
					e, bes' e, bes' e, bes' e, bes' d, a' d, a' d, a' d, a' |
					%39
					e g e g e g e g f8 e d g |
					%40
					f e f cis d cis d e |
					%41
					f e f cis d4 f |
					%42
					g d \rest c e |
					%43
					f d \rest bes d |
					%44
					e d \rest a cis |
					%45
					d d8 \rest f bes bes a a |
					%46
					g4 d8 \rest a' bes bes a a |
					%47
					gis4 d \rest d2 \rest |
					%48
					R1 |
					%49
					d16 \rest d' cis d a a g a fis d' cis d g, f' ees d |
					%50
					cis e a, cis d, ees' d c b d g, b c, d' c bes |
					%51
					a c fis, a d, c' bes a
					\clef treble
					\stemUp
					bes a' g fis g bes, a g |
					%52
					d'4 b'8 \rest d, d d d c |
					%53
					bes d d c bes d d c |
					%54
					bes4 b' \rest b2 \rest |
					%55
					s1*2
					%57
					b2 \rest
					\clef bass
					\stemDown
					d,,16 \rest c' bes c a c g c |
					%58
					f, c' e, c' f, c' g c a c c, c' d, c' e, c' |
					%59
					f, c' e, c' f, c' g c a4 s |
					%60
					s1*10
					%70
					\clef treble
					\stemUp
					s2 a'8 cis d g, |
					%71
					f a b cis d cis d e |
					%72
					f e f cis b16 \rest fis e fis
					\clef bass
					\stemDown
					d, \rest d' c d |
					%73
					bes c bes a g f e d cis a cis e
					\stemUp
					g bes g e \noBreak
					%74
					\stemDown
					cis a cis e
					\stemUp
					g bes g e
					\stemDown
					d a d f
					\stemUp
					a d a f \noBreak
					%75
					\stemDown
					d a d f
					\stemUp
					a d a f
					\stemDown
					cis a cis e
					\stemUp
					g bes g e \break
					%76
					\stemDown
					cis a cis e
					\stemUp
					g bes g e
					\stemDown
					d a d f
					\stemUp
					a d a f \noBreak
					%77
					\stemDown
					d a d f
					\stemUp
					a d a f
					\stemDown
					e cis e g
					\stemUp
					bes cis bes g \noBreak
					%78
					\stemDown
					e cis e g
					\stemUp
					bes cis bes g
					\stemDown
					f d f a
					\stemUp
					\change Staff = "RH" d f d \change Staff = "LH" a \break
					%79
					\stemDown
					f d f a
					\stemUp
					\change Staff = "RH" d f d \change Staff = "LH" a
					\stemDown
					e cis e g
					\stemUp
					bes cis bes g \noBreak
					%80
					\stemDown
					e cis e g
					\stemUp
					bes cis bes g
					\stemDown
					f d f a
					\stemUp
					\change Staff = "RH" d f d \change Staff = "LH" a \noBreak
					%81
					\stemDown
					f d f a
					\stemUp
					\change Staff = "RH" d f d \change Staff = "LH" a
					\stemDown
					g e g bes
					\stemUp
					\change Staff = "RH" cis e cis bes \pageBreak
					%82
					\change Staff = "LH"
					\stemDown
					g e g bes
					\change Staff = "RH"
					\stemUp
					cis e cis bes
					\change Staff = "LH"
					\stemDown
					a f a cis
					\change Staff = "RH"
					\stemUp
					d[ f d]
					\change Staff = "LH"
					\stemDown
					a \noBreak
					%83
					bes \noBeam
					\change Staff = "RH"
					\stemUp
					d[ bes]
					\change Staff = "LH"
					\stemDown
					g[ f]
					\stemUp
					a[ f]
					\stemDown
					d[ a]
					\stemUp
					d[ a]
					\stemDown
					f[ d]
					\stemUp
					d'[ cis b] \noBreak
					%84
					s bes' a g s g f e s bes' a g s g f e \break
					%85
					\stemDown
					d e32 f g a b cis d16 s8.
					\clef treble
					\stemUp
					a16 b32 cis d e f g a16 g f e \noBreak
					%86
					f8 b \rest b16 \rest ees, d c bes8 b c g' \break
					%87
					g1 \startTrillSpan ~ \noBreak
					%88
					g2 ~ g16 \stopTrillSpan g f g ees g d g \noBreak
					%89
					c, g' b, g' c, g' d g ees g g, g' a, g' b, g' \break
					%90
					c, g' b, g' c, g' d d ees8 d g16 aes f g \noBreak
					%91
					ees8 c f16 g ees f d8 bes ees16 f d ees \noBreak
					%92
					c8 fis g16 a f g ees g fis g a g fis e \break
					%93
					\clef bass
					\stemDown
					d, \rest d' c d bes d a d g, d' fis, d' g, d' a d \noBreak
					%94
					bes d d, d' e, d' fis, d' g, d' fis, d' g, d' a d \noBreak
					%95
					bes8 a g2 fis4 \pageBreak
					%96
					g8 a bes16 a g f ees8 ees' d4 \noBreak
					%97
					c8 d ees16 f d ees c ees d f g f ees f \noBreak
					%98
					d bes ees d cis a d c b g c bes a f bes d \break
					%99
					c d c bes a c bes a g c bes a bes c bes a \noBreak
					%100
					g a f g e4
					\stemUp
					e'16 \rest ees d c d c bes a \break
					%101
					g4
					\stemDown
					a16 bes a g f g e a
					\change Staff = "RH"
					a' g a f \noBreak
					%102
					\change Staff = "LH"
					\clef treble
					g a g a bes a g a f g e f \clef bass d c bes a \break
					%103
					bes a g f e f e d cis a d a e' a, f' a, \noBreak
					%104
					g' a, f' a, e' a, d a cis a' a, a' d, a' f d' \noBreak
					%105
					f, d' e, cis' f, d' d, d'
					\clef treble
					\stemUp
					e a g a f a e a \break
					%106
					d, a' cis, a' d, a' e a f a a, a' b, a' cis, a' \noBreak
					%107
					d, a' cis, a' d, a' e a f8 e d g \noBreak
					%108
					f e f cis d cis d b \pageBreak
					%109
					cis g' f d cis4 b' \rest \noBreak
					%110
					s4.. s32 b1*17/32 \rest \noBreak
					%111
					b2 \rest b16 \rest g16 f e f cis d8 ~ \break
					%112
					d4 cis d16 a' b cis
					\stemDown
					d8 c \noBreak
					%113
					\stemUp
					f,4. \clef bass
					\stemDown
					ees8 ~ ees16 c a f a c ees c \noBreak
					%114
					d bes g d g bes d g c, d bes c a g fis e \break
					%115
					fis d fis g
					\stemUp
					a d a g
					\stemDown
					fis d fis g
					\stemUp
					a d a fis \noBreak
					%116
					\stemDown
					g d g a
					\stemUp
					bes d bes a
					\stemDown
					g d g a
					\stemUp
					bes d c bes \noBreak
					%117
					\stemDown
					a fis a bes s4 a16 fis a bes s4 \break
					%118
					a16 bes d fis s4 bes,16 g bes d s4 \noBreak
					%119
					c16 a c ees s4 c16 a c ees s4 \noBreak
					%120
					fis,8 d \rest g a bes4 ees8 b \break
					%121
					g4 c8 bes a4 bes8 c \noBreak
					%122
					d16 g f ees d ees d c bes ees d c bes c bes a \noBreak
					%123
					bes a g f e8 g a16 b cis d \clef treble
					\stemUp
					e f g a \pageBreak
					%124
					bes8 a16 g f a e a d, a' cis, a' d, a' e a \noBreak
					%125
					f a a, a' b, a' cis, a' d, a' cis, a' d, a' b, a' \noBreak
					%126
					cis,8 d g e f a bes a \break \noPageBreak
					%127
					\clef bass
					<bes, d>2 \fermata s2 \noBreak
					%128
					s1*2
					%130
					\stemDown
					cis2 ~ cis4 d |
					%131
					b2 d, \rest |
					%132
					d4 \rest d8 \rest \stemUp <gis b> <a c>2 ~ |
					%133
					<g c> \fermata s2 |
					%134
					s1*2
					%136
					s2. d8 \rest
					\stemDown g |
					%137
					a s d, \rest a' a s d, \rest a' |
					%138
					b s d, \rest g g s d \rest g |
					%139
					a s d, \rest f f s d \rest f |
					%140
					e s d \rest e fis s d \rest fis |
					%141
					g2 bes 4 a |
					%142
					a2 f4 g |
					%143
					f1 \fermata |
					
				} } \\ { \relative c {
				\override Accidental #'hide-tied-accidental-after-break = ##t
					%1
					s1
					%2
					a8 \fermata \prall s32 g64 f e d cis32 d16 s8. s2 |
					%3
					s4 d'4 s2 |
					%4
					s1*6
					%10
					\stemUp
					\tieUp
					s2. <g bes>4 ~ |
					%11
					<g bes> s2. |
					%12
					s1*5
					%17
					\stemDown
					e8 s8 s4 s2 |
					%18
					s1*3
					%21
					a4 d, \rest d2 \rest |
					%22
					cis'2 s2 |
					%23
					s1*16
					%39
					\stemUp
					s2 a8 a a a |
					%40
					a a a a a a a a |
					%41
					a a a a a4 d |
					%42
					d s c c |
					%43
					c s bes bes |
					%44
					bes s a a |
					%45
					a s8 d cis cis d d |
					%46
					e4 s8 d cis cis d d |
					%47
					e4 s2. |
					%48
					s1*24 |
					%72
					\stemDown
					s4 r16 a g a s2  |
					%73
					s1*11
					%84
					cis,,16 s8. f16 s8. d16 s8. f16 s8. |
					%85
					s1*15
					%100
					s2 fis4 d |
					%101
					g s2 d4 |
					%102
					s1*3
					%105
					s2 a'2 ~ |
					%106
					a1 ~ |
					%107
					a1 ~ |
					%108
					a1 ~ |
					%109
					a2 ~ a4 s4 |
					%110
					s1*17
					%127
					\stemDown f2 s |
					%128
					s1*4
					%132
					\stemDown
					s4. e8 e2 ~ |
					%133
					e2 s |
					%134
					s1*10
				} } >>
			}
		>>
	}
	\new Staff {  % Pedal 		
		\set Staff.instrumentName = #"Pedal"
		\set Staff.midiInstrument = #"church organ"
		\clef bass
		\key d \minor
		\relative c, {
			%1
			R1 |
			%2
			r2  d ~ |
			%3
			d r2 |
			%4
			R1*6
			%10
			r2 d2 ~ |
			%11
			d4 r4 r2 |
			%12
			d4 \fermata r4 r2
			%13
			R1*3
			%16
			r2 r8 d' c bes |
			%17
			a r r4 r8 d c bes |
			%18
			a4 r r2 |
			%19
			r4 r8 d c[ bes a] r |
			%20
			r4 r8 d c[ bes a gis] |
			%21
			g4 r4 r2 |
			%22
			g' r2 |
			%23
			R1*4
			%27
			r2 g4 f |
			%28
			bes4. a16 g a8. e16 f d e cis |
			%29
			d b cis a bes gis a g' f8 d a4 |
			%30
			d,2 r |
			%31
			R1*21
			%52
			r16 d' c d bes d a d g, d' fis, d' g, d' a d |
			%53
			bes d d, d' e, d' fis, d' g, d' fis, d' g, d' a d |
			%54
			bes4 r8 b c4 r8 cis8 |
			%55
			d4 r8 d8 e4 r8 e8 |
			%56
			f a, bes d g,4 r8 bes ~ |
			%57
			bes a g c f,4 r |
			%58
			R1*28
			%86
			r2 r16 g' f g ees g d g |
			%87
			c, g' b, g' c, g' d g ees g g, g' a, g' b, g' |
			%88
			c, g' b, g' c, g' d g ees8 d c b |
			%89
			c d ees f g b, c d |
			%90
			ees d ees f g b, c d |
			%91
			ees a, bes c d g, a bes |
			%92
			c d g d ees bes a c |
			%93
			d1 ~ d ~ |
			%95
			d4 r8 g, c a d d, |
			%96
			g4 r8 g c4. b8 |
			%97
			c4 r r2 |
			%98
			R1*11
			%109
			r2 r16 a' g a f a e a |
			%110
			d, a' cis, a' d, a' e a f a a, a' b, a' cis, a' |
			%111
			d, a' cis, a' d, a' e a f4 r8 f |
			%112
			g e a a, d4 r8 a |
			%113
			bes g c c, f4 r8 a |
			%114
			bes4 r8 bes c4 r8 a |
			%115
			\unfoldRepeats {
			\repeat volta 5 {
			d4 r d r } } |
			%120
			r16 d c d bes d a d g, g' f g ees g d g |
			%121
			c, c bes c a c g c f, f' ees f d f c f |
			%122
			bes,8 ees f f, g c d d, |
			%123
			g4 r16 a g a f8 d a'4 |
			%124
			d,1 ~ |
			%125
			d2 r4 r8 d' |
			%126
			a f g a f d g a |
			%127
			bes2 \fermata r2 |
			%128
			R1*2
			%130
			cis2 f4. d8 |
			%131
			gis,2 r16 gis' b f gis d f b, |
			%132
			d gis, a8 e2. ~ |
			%133
			e2 \fermata r2 |
			%134
			R1*2
			%136
			r2 r4 r8 e' |
			%137
			g r r g f r r f |
			%138
			f r r f e r r e |
			%139
			e r r e d r r d |
			%140
			cis r r cis c r r c |
			%141
			g4 bes e, f |
			%142
			a2 bes4 g |
			%143
			<d d'>1 \fermata |
		}
	}
>>



\score {
	<<
		\staffChurchOrgan
	>>
	
	\midi {
	}

  \layout {
  }
}

\paper {
}


