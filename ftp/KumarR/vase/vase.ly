\version "2.10.20"

\header {
	title="Vase"
	composer="Ramana Kumar"
	dedication="for Emma Walsh"
  subtitle="Embodying the wish of eternal pain for Delia Wang"
	piece = "forget played accidentals"
	mutopiatitle = "Vase"
	mutopiacomposer = "KumarR"
	mutopiainstrument = "Piano"
	date = "2006"
	source = "Original composition"
	style = "Romantic"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Ramana Kumar"
	maintainerEmail = "ramana.kumar@gmail.com"
	lastupdated = "2008/January/13"
 footer = "Mutopia-2008/01/13-1267"
 tagline = ""
}

#(ly:set-option 'point-and-click #f)

md = \change Staff=right
mg = \change Staff=left

extraSpace =
#(define-music-function (parser location number music) (number? ly:music?) #{
	\once \override Score.SeparationItem #'padding = $number
	$music #}
)

\paper {
  blank-last-page-force = 10
}

\score {
	\context PianoStaff <<
		\set PianoStaff.connectArpeggios = ##t
		\override PianoStaff.TimeSignature #'style = #'()
		#(set-accidental-style 'forget 'Score)
		\context Staff=right <<
			\clef treble
			\time 8/4
			{
<< {a'4 c'' bes' aes' \extraSpace #1 f''\arpeggio c'' ees'' des''} \\ {g'2 ges' aes'1\arpeggio} >> |
<e' fis'>4 <d' a'> <ees' g'> <f' bes'> << {aes'2 ees'4 f'} \\ {ees'4 d' c' bes} >> |
<< {<g g'>4 <bes bes'>} \\ {des'2} >> <aes c' aes'>4 <ges bes ees' ges'> << {\extraSpace #1 <ees' ees''>4\arpeggio <bes bes'> <des' des''> <ces' ces''>} \\ {<f aes des' f'>2\arpeggio <ges' aes'>} >> |
<bes f' a' bes'>4 d' <g des' f' g'> <aes c' e' aes'> <g b ees' g'> << {<bes d'>} \\ {\mg ges} >> <a cis'> << {<aes c'>} \\ {\mg <ees ges>} >> |
<f g des' f'>4 <aes ees' aes'> <des' fes' des''> <ees' ges' ees''> <e' aes' e''> << {<g' bes'> <ges' ees''> <a' cis''>} \\ { \mg ees' des' e' } >> |
<< {<a' b'>2 cis''4} \\ {<dis' eis'>4 <e' fis'> ~ <e' gis'>} >> <fis' a' cis''>4 <g' b' cis''> <d' d''> <f' bes'> <fis' b'> |
<e' a' b'>4 <c' g' c''> <ees' a'> <des' bes'> <c' bes'> <ees' aes'> << {f'2} \\ {b4 ees'} >> |
<< {<gis gis'>2} \\ {b,4\rest <cis' dis'>} >> <g a b eis'>4 <fis bis eis' fis'> <b g dis' g'> <bes f' bes'> <ees' ges' bes' ees''> <f' aes' des'' f''> |
<fis' a' cis'' fis''>4 <gis' eis''> <ais' d''>4 <b' dis''> <dis' f' a' cis''> <fis' gis' b'> <cis' gis'> <b g'> |
<a d' gis'>4 <b e' b'> fis' <d' e' gis'> <g d' g'> <ais cis' ais'> <c' f'> <g b des' ees'> |
<c' ges' c''>4 <ees' aes' ees''> <ges' bes' ees'' ges''> <aes' c'' e'' aes''> <f'' aes'' c''' f'''> <c'' g'' bes'' c'''> <ees'' ges'' bes'' ees'''> <des'' f'' a'' des'''> |
<cis'' fis'' ais'' bis''> <ais' dis'' gis'' ais''> <gis' b' c'' e'' gis''> <g' bes' g''> <a' cis'' fis'' a''> <b' c'' f'' b''> ~ <d'' f'' d'''> <e'' a'' e'''> |
<f'' aes'' f'''> \tieNeutral <g'' bes'' ees''' g'''> ~ <e'' bes'' e'''> <f'' c''' f'''> <f'' cis''' f'''> ~ <a'' cis''' a'''>2 ~ <f'' cis''' f'''>4 |
<c'' g'' c'''>4 <cis'' fis'' cis'''> <dis'' eis'' dis'''> <e'' e'''> <gis' cis''>2 <g' e''> |
<bes' d''>2 <a' c''> ~ <a' c'' a''>2. ~ <a' c'' e''>4 |
<g' ees'' g''>2 << {<ges' f''>2 c'' bes'} \\ {c''4. c''8 <e' g'>4 f' e' ees'} >> |
<< {aes'2} \\ {ees'4 d'} >> <d' fis'>4 <cis' eis'> <cis' fis'>2 <a' a''> |
<gis' e'' g''>2 <d'' f''> ~ <d'' f'' d'''>4. ~ <d'' f'' a''>8[ ~ <d'' f'' c'''>] ~ <d'' f'' bes''>4. |
<< {<des'' aes''>4. g'' ges''4} \\ {fes''2 d''\rest} >> <dis'' eis''>4 <cis'' fis''> <b' e''> <a' d''> |
\extraSpace #0.3 <g' d'' b''>4\arpeggio <cis'' fis''> <c'' a''> <b' d'' g''> <bes' f'' ges''> <a' e'' f''> <aes' ees''> <g' d'' g''> |
<bes' f'' bes''>4 <c'' e'' aes''> <b' dis'' gis''> <bes' d'' fis''> <a' cis'' f''> <e' gis' e''> <dis' aes' c'' d''> <g' bes' c''> |
<bes' g'' a''>4 <b' d'' e''> <d'' f'' g''> <c'' ees'' f''> <aes' b' f''> <g' c''> <ges' bes' ees''> <f' a' des''> |
<e' aes' d''>4 <ees' g' a'> <d' ges' c''> <des' f' bes'> <c' e' bes'> des'' c'' bes' |
<g' a'>4 <f' c'' f''> <ges' bes' f''> <aes' c'' ees''> <ges' bes' f''> <f' aes' c''> <ees' ges' b' ees''> <des' f' bes' des''> |
<c' e' a' c''>4 <cis' ais' cis''> <dis' gis' dis''> <e' fis' cis'' e''> <fis' e'' fis''> <a' d'' a''> <g' c'' ees'' g''> <a' c'' ees'' a''> |
\override Score.RehearsalMark #'padding = #2 \mark \markup {\small {\note #"2." #1 = \note #"2" #1 }} \time 12/4 <d'' fis'' a'' d'''>4 <a' des'' f'' a''> <aes' des'' f'' aes''> <des'' ees'' g'' c'''> <b' b''> <bes' des'' ees'' bes''> <c'' e'' bes'' c'''> <g' g''> <ges' ges''> <bes' ees'' bes''> <a' cis'' fis'' a''> <aes' b' ees'' aes''> |
<gis' b' e'' gis''>4. <b' dis'' e'' b''> <b' d'' e'' a''> <g' g''> <e'' gis'' c''' e'''>2 <b' e'' b''>4 <d'' f'' aes'' d'''> ~ <c'' f'' aes'' c'''> <a' des'' f'' a''> |
<g' des'' f'' g''>4 <f' des'' f''> <des' bes' des''> <dis' gis' dis''> <cis' fis' cis''> <a e' a'> <bes ees' bes'>4. <des' ges' des''> <b e' b'> <a d' a'> |
\time 3/4 <fis' a' fis''>2. ~ |
\time 12/4 <fis' a' fis''>2 <cis' ais' cis''>4 <e' b' e''>2 <d' fis' c'' d''>4 <d' g' d''>2 <f' bes' f''>4 <d' aes' c'' d''>2 <bes d' ges' bes'>4 |
<des' ges' bes' des''>2 <fes' bes' fes''>4 <des' a' b' des''>2 <a dis' gis' b'>4 <gis d' fis' gis'>2 <b e' gis' b'>4 <e' a' e''>2 <fis' b' fis''>4 |
<gis' cis'' gis''>2 <dis' gis' dis''>4 << {<fis' b' fis''>2 <e' a' c'' e''>4 <e' e''>2 d''4 c''2 bes'4} \\ {s4 cis'' s <gis' b'> <g' bes'> <fis' a'> <f' aes'> <e' g'> <ees' ges'>} >> |
<< {c''2 g'4 bes'2 aes'4 <bes bes'>2 <des' des''>4 <fis' fis''>2 <b' gis''>4} \\ {<d' f'>4 <cis' e'> <c' ees'> <b d'> <bes des'> <b ees'> e' f' ges' aes' a' <c'' dis''>} >> |
<a' des'' f'' a''>2 <f' a' f''>4 <a'' des''' f''' a'''>2 <f'' aes'' f'''>4 <ais' cis'' e'' gis''>2 <fis' b' fis''>4 <gis'' cis''' e''' gis'''>2 <fis'' gis'' c''' fis'''>4 |
<gis' cis'' dis'' gis''>2 <fis' a' fis''>4 <fis' d'' fis'' gis''>2 <fis'' b'' fis'''>4 <aes' c'' ees'' aes''>2 <a' cis'' eis'' a''>4 <fis' bes' d'' fis''>2 <d' bes' d''>4 |
<fis'' bes'' d''' fis'''>2 <d'' fis'' d'''>4 <fis''' bes''' d'''' fis''''>2 <d''' f''' d''''>4 <bes' des'' f'' g''>2 <aes' ees'' aes''>4 <f'' bes'' des''' f'''>2 <ees'' ges'' aes'' ees'''>4 |
<f'' a'' cis''' f'''>2 <ges'' a'' c''' ees'''>4 <ees' f' b' ees''>2 <fis' dis'' fis''>4 <f' b' d'' f''>2 <fis'' a'' d''' fis'''>4  <ees'' g'' b'' ees'''>2 <fis' b' d'' fis''>4 |
\time 15/4 <ees' a' c'' ees''>2 <b a' b'>4 <cis' a' cis''>2 <e' a' e''>4 <g'' b'' cis'''>8[ <aes'' d'''> <aes'' d'''> <a'' ees'''> <a'' ees'''> <bes'' e'''>] <g'' b'' d'''>2 << {c'''16 d''' c''' bes''} \\ {aes''4} >> a''8[ bes'' c''' d''' ees''' f'''] |
\time 12/4 <g''' a'''>2. g'8[ aes' aes' a' a'8 bes'] <b' g'' a''>2 <d''' e'''>4 <f''' g'''>2 <ees''' f'''>4 |
<g'' b''>2 <bes'' d'''>4 <aes'' c'''>2 <ges'' bes''>4 <a'' ees''' g'''>2 <bes'' d'''>4 <des''' f'''>2 <ces''' ees'''>4 |
<ais' dis''>2 <cis'' fis''>4 <b' e''>2 <a' d''>4 <fis'' b''>2 <cis'' fis''>4 <e'' a''>2 <d'' g''>4 |
<des'' g''>2 <e'' bes''>4 <d'' gis''>2 <c'' fis''>4 <a'' dis'''>2 <e'' bes''>4 <g'' cis'''>2 <f'' b''>4 |
<b' fis'' b''>2 <d'' a'' d'''>4 <c'' g'' c'''>2 <bes' f'' bes''>4 <g'' bes'' d''' g'''>2 <d'' f'' a'' d'''>4 <f'' aes'' c''' f'''>2 <ees'' bes'' ees'''>4 |
<ees'' c''' ees'''>2 <ges'' b'' ges'''>4 <des'' bes'' des'''>2 <ces'' a'' ces'''>4 <d'' gis'' d'''>4. <f'' b'' f'''> <c'' a'' c'''> <bes' g'' bes''> |
\time 8/4 << {<e'' c''' e'''>2 b'' <d'' d'''> <c'' c'''>}  \\ {fis''4 g'' gis'' a'' a'' ais'' bes'' b''} >> |
<c'' g'' a'' c'''>4 <c' f' a' c''> <bes' des'' ges'' bes''> <ees' aes' c''> <f'' bes'' des''' f'''> <c' fis' c''> <dis' gis' dis''> <cis' a' cis''> |
<cis' b' cis''>4 <e' a' e''> <d' gis' d''>  <c' g' c''> <a' d'' a''> <e' c'' e''> <g' bes' g''> <f' aes' f''> |
<f' b' ees'' f''>4 <aes' des'' aes''> <fis' d'' fis''> <e' cis'' e''> <cis'' a'' cis'''> <gis' gis''> <b' g'' b''> <a' fis'' a''> |
<gis' f'' gis''>4 <a' e'' a''> <b' dis'' b''> <c'' d'' c'''> <cis'' e'' gis'' cis'''> <d'' fis'' ais'' d'''> <ees'' g'' b'' ees'''> <f'' a'' cis''' f'''> |
<fis'' a'' d''' fis'''> <e'' gis'' cis'''> <b' d'' fis'' b''> <a' cis'' e'' a''> <fis'' a'' d''' fis'''> <cis'' gis'' cis'''> <e'' g'' b'' e'''> <d'' fis'' ais'' d'''> |
<d' f' a' d''>4 <f' aes' c'' f''> <ees' bes' ees''> <des'' aes'> <b' ees'' bes''> <aes' des'' f''> <aes' ees'' aes''> <bes' e'' ges''> |
<dis' gis' dis''>4 <fis' fis''> <b' gis'' b''> <cis'' fis'' cis'''> <dis'' gis'' dis'''> <ais' fis'' ais''> <cis'' e'' cis'''> <b' dis'' b''> |
<gis' cis'' gis''>4 <b' e'' b''> <a' d'' a''> <g' c'' g''> <a' e'' a''> <e' b' e''> <g' d'' g''> <f' c'' f''> |
<d' bes' d''>4 <f' a' f''> <bes' g'' bes''> <c'' f'' c'''> <d'' g'' d'''> <a' a''> <c'' c'''> <des'' bes''> |
<cis'' dis''>4 <b' fis''> <c'' e''> <bes' d''> <b' b''> <a' fis''> <bes' a''> <aes' g''> |
<< {a'4 c'' bes' aes' dis'' ais' cis'' b'} \\ {g'2 ges' g'4 f' fis' e'} >> |
<c' eis' gis'>4 <ees' b'> <e' a'> <d' g'> <fis' e''> <e' b'> d'' c'' \bar ":|"
			}
		>>
		\context Staff=left <<
			\clef bass
			\time 8/4
			{
<f c'>2 <aes ees'> <des aes>1\arpeggio |
<d a>2 <f c'> <bes, f>1 |
<ees, ees>2 <ges, ges> <ces, ces>2\arpeggio <d, d> |
<< {g,2} \\ {g4 d} >> <c, c>2 <f,, f,> <aes,, aes,> |
<des, aes,>2 <e, b,> <a, e>1 |
<< {fis4 gis a b} \\ {b,2 d} >> <g, d>1 |
<c g bes>2 <ees bes> <aes, ees>2 << {b,2} \\ {fis4 a} >> |
<< {gis,2} \\ {fis4\rest fis} >> dis4 gis, <cis, gis,>2 <e, b,> |
<a, e>1 << {b,1} \\ {fis2 a} >> |
<< {<e, b,>1 e2 f4 ees} \\ {s4 s fis e a,2. r4} >> |
<< {<aes, ees>2} \\ {bes4 aes} >> << {ces2} \\ {ges4 aes} >> \stemDown des,8[ aes, f g] e,[ b, gis ais] |
a,8[ e cis' dis'] c[ g e' fis'] f,[ c a b d' c' a c] |
des,8[ aes, f g bes aes f aes,] a,,8[ e, cis dis fis e cis e,] |
a,[ e cis' dis' fis' e' cis' e] a,[ e cis' dis' fis' e' cis' e] |
c8[ g e' fis' \parenthesize a' g' e' g] f,[ c a b d' c' a c] |
aes,8[ ees c' d' f' ees' c' ees] des,[ aes, f g bes aes f aes,] |
e,8[ b, gis ais cis' b gis b,] g,[ d b cis' e' d' b d] |
bes,8[ f d' e' g' f' d' f] ees[ bes g' a' c'' bes' g' bes] |
\clef treble ges8[ des' bes' c'' ees'' des'' bes' des'] \clef bass b,[ fis dis' a] d[ a fis' c'] |
g,8[ d b f] bes,[ f d' aes] ees,[ bes, g des] ges,[ des bes fes] |
b,,8[ fis, dis a,] d,[ a, fis c] g,[ d b f] bes,[ f d' aes] |
ees,8[ bes, g des] aes,[ ees c' d' f' ees' c' ees] f,[ c a ees] |
bes,,8[ f, f f' \parenthesize ges' bes f f,] ges,[ des bes c' ees'8 des' bes des] |
\stemNeutral <f, c>2 <aes, ees> <des, aes,>1 |
<fis, cis>2 <a, e> <d, a,> << {<f, c>2} \\ {s4 f'} >> | \time 12/4
<< {<bes,, bes,>2. <ees, ees> } \\ {s4 <aes des' f'> <aes des' f'> s <aes des' f'> <g b ees' g'> } >> << {<ges, ges>2. <b,, b,>} \\ {s4 <cis' e' a'> <c' ees' bes'> s <b cis' fis'> <a ees'>} >> |
<< {<e, b, e>2. <g, d f>2 g,4\rest <c, g, c>2. <f, c>2 f,4\rest} \\ {s4 <b dis' gis'> <d' gis' cis''> s <e' a'> << {} \\ {f'} \\ {\md <b' e''>} >> \mg s <e bes> <e' g'> s <ees' a'> f'} >> |
<bes, f bes>4 <aes aes'> bes << {<a cis'>4 gis fis <fis, cis fis>2. <a, e a>} \\ {<cis fis>2 ~ cis4 s <fis d'> <fis d'> s <fis d'> <fis d'>} >> | \time 3/4
<< {<d, d>2.} \\ {s4 <fis d'> <fis d'>} >> | \time 12/4
<< {<d, d>2. <f, f> <bes, f bes>} \\ {s4 <fis d'> <fis d'> s <fis d'> fis s <a f'> <aes d'>} >> <f aes>4 <b, f> <bes, aes> |
<ees, bes,>4 <b, f> <bes, g> <a, fis b> <cis, a,> <b,, gis,> << {<e, b, e>2. <fis, b,>2.} \\ {s4 <d bes> <b, d> s <ees a> <d gis>} >> |
<< {<a, e a>2.} \\ {s4 <f b>  <e ais>} >> << {<c ees a>2 <d aes>4 <c a>2 <f, c>4 <ees c'>2 <aes, ees>4}  \\ {s4 cis' r s <aes ees'> f'\rest s <b fis'> g'\rest} >> |
<< {<aes, f>2. <des, aes,>2 s4 <ges, des ges>2. <c fis a>2 a,4\rest} \\ {s4 <e b> b\rest s2 f4 s <aes c'> <bes> s cis' <bis dis' fis'>} >> |
<< {<des f aes des'>2. <des' f' aes' des''> <e gis ais e'> <e' gis' cis'' e''>} \\ {s4 <aes ees' aes'>2 s4 <aes' ees'' aes''>2 s4 <aes ees' aes'>2 s4 <aes' ees'' aes''>2} >> |
<< {<a, cis dis a>2. <d, a, d> <f, c f> <bes,, f, bes,>} \\ {s4 <aes ees' aes'>2 s4 <a e' a'>2 s4 <a ees' a'>2 s4 <f c' f'>2} >>
<< {\clef treble <bes f' bes'>2. <bes' f'' bes''> \clef bass <des f g des'> \clef treble <des' f' des''> } \\ {s4 <f' c'' f''>2 s4 <f'' c''' f'''>2 s4 <aes ees' aes'>2 s4 <ges' des'' ges''> <aes' c''>} >> |
<< {\clef bass <f a ees' f'>2. <b,, fis, b,> <d, bes, d> <g,, d, g,>} \\ {s4 <c' g' c''> <a' c''> s4 <fis cis' dis'>2 s4 <c' g' c''> <a' c'' ees''> s <d' a' d''>2 } >> |
<< { <g, d g>2. <g, d g>2. \clef treble <a' cis''>} \\ {s4 <d a d'>2 s4 <a e' a'>2 e''4 f'' fis''} >> \clef bass bes,8[ f aes d' f' g'] c''2 bes'4 |
ees,8[ bes, g a c' bes] ees'[ e' e' f' f' ges'] ees[ bes g' a' c'' bes'] \clef treble aes[ ees' c'' d'' ees'' f''] |
\clef bass bes,8[ f aes d' f' g'] \clef treble c''[ d'' ees'' f'' ges'' aes''] \clef bass ees[ bes g' des' c'' bes'] ges[ des' bes' fes' ees'' des''] |
b,8[ fis dis' a gis' fis'] d[ a fis' c' f' ees'] g[ d' b' c'' cis'' d''] bes,[ f d' e' f' fis'] |
ees8[ bes g' a' c'' bes'] ges[ des' bes' e' a' g'] fis'[ b, dis' a gis' fis'] d[ a fis' c' b' a'] |
g,8[ d a f e' d'] bes,[ f c' aes g' f'] ees,[ bes, f aes d' bes'] ees[ bes f' des' c'' bes'] |
aes,8[ ees ges b dis' ais'] b,[ fis a cis' dis' gis'] e,[ b, fis a d' b'] g,[ d f bes f' a'] |
c8[ g bes d' \clef treble b' gis' c'' a'] \clef bass c[ bes e' a' \clef treble d'' e'' f'' fis''] |
\clef bass \stemDown f,8[ c a d] aes,[ ees c' ges] des,[ aes, f ees] e,[ cis gis dis] |
a,8[ e b fis] c[ g f' e'] f,[ c a d] aes,[ ees c' f] |
des,8[ aes, f c'] e,[ b, gis dis'] a,,[ e, cis gis] a,[ e cis' gis'] |
d8[ a fis' c'] f[ c' a' ees'] bes,[ f d' aes] des[ aes f' b] |
ges,8[ des bes e] a,[ e cis' g] d,[ a, fis cis] f,[ c a ees] |
bes,8[ f d' aes] des[ aes f' des'] ges,[ des bes ges] bes,[ ges des' bes] |
b,,8[ fis, dis b,] dis,[ b, fis dis] e,[ b, gis e] gis,[ e b gis] |
a,8[ e cis' g] c[ g e' bes] f,[ c a e] a,[ e c' g] |
bes,8[ f d' a] d[ a f' d'] ees[ bes g' des'] ges[ des' bes' e'] |
b,8[ fis dis' a] d[ a fis' c'] g,[ d b f] bes,[ f d' aes] |
ees,8[ bes, g des'] ges,[ des bes fes'] b,[ fis dis' a] d[ a e' c'] |
g,8[ d b g] b,[ fis d' b] c[ g e' c'] e[ b g' e'] \bar ":|"
			}
		>>
	>>
	\layout {
	}
  \midi {
  }
}
