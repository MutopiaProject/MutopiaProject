%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicHornIVMvtIII = \relative c' {
	\clef treble
	\key a \minor
	\transposition d
% Bars 1 to 5
	\mark \markup {\abs-fontsize #16 "in D"} \cueDuring #"cueVoiceHrnIVmIII" #DOWN {
		\ni R2
		R \no
	}
	R2*18
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	\cueDuring #"cueVoiceHrnIVmIII" #UP {
		\ni R2
		R
		R
		R \no
	}
	ees2\p~
% Bars 26 to 30
	ees~
	ees~
	ees
	\tempo "poco rit." R2*4
% Bars 31 to 35
	
	
	\tempo "in tempo" R2*2
	
	\cueDuring #"cueVoiceHrnIVmIII" #UP {
		\ni R2
% Bars 36 to 40
		R
		R
		R \mark \default \no
	}
	d'2\ff-\tweak X-offset #1.5 ^\tutti
	g,,8-. g-. r g-.
% Bars 41 to 45
	r g-. r g-.
	g-. g'-. r g-.
	r g-. r g-.
	bes-. bes-. r bes-. 
	r bes-. r bes-.
% Bars 46 to 50
	bes4( g~
	g c,)
	r8 d'-. d-. d-.
	g,,-. r^\solo r4
	R2
% Bars 51 to 55
	R2*3^\tutti
	
	
	r4 r^\solo
	R2*6
% Bars 56 to 60
	
% Bars 61 to 65
	\cueDuring #"cueVoiceHrnIVmIII" #UP {
		\ni R2
		R
		R
		R \no
	}
	c'8\f^\tutti c4 c8~
% Bars 66 to 70
	c c4 c8\p~
	c c r4
	R2
	r4 r^\solo
	R2*7
% Bars 71 to 75
	
% Bars 76 to 80
	\cueDuring #"cueVoiceHrnIVmIII" #UP {
		\ni R2
		R
		r4 \no } b(
	c) r
% Bars 81 to 85
	R2*4 %bes8 d) g(-. f-.)
	%ees( c) g(-. b-.)
	%c( ees) g4(~
	\bar "||" %g g,) \bar "||"
	\time 3/4 R2.*2
% Bars 86 to 90
	\bar "||"
	\time 4/4 R1*2
	\bar "||"
	\time 2/4 R2*12
% Bars 91 to 95
	
% Bars 96 to 100
	
	
	
	
	\mark \default
% Bars 101 to 105
	R2*4
	
	
	
	\cueDuring #"cueVoiceHrnIVmIII" #UP {
		\ni R2
% Bars 106 to 110
		R
		R
		R
		R-\tweak X-offset #0 ^\solo
		R \no
	}
% Bars 111 to 115
	g,8-\tweak X-offset #-3.5 -\tweak Y-offset #-2.5 \pp-. r g-. r
	r4 g8-. r 
	r4 g8_\dimmarkup-. r
	R2
	r4 g8-. r
% Bars 116 to 120
	r4^\tutti g8-. r 
	r4 g8-. r
	\cueDuring #"cueVoiceHrnIVmIII" #UP {
		\ni R2 \bar "||"
		R
		R
% Bars 121 to 125
		R \no
	}
	R2*12
% Bars 126 to 130
	
% Bars 131 to 135
	
	
	
	\cueDuring #"cueVoiceHrnIVmIII" #UP {
		\ni R2
		R
% Bars 136 to 140
		r4 r8. \no } ees''16\ff
	ees8-. r  r8. ees16
	ees8-. r r8. ees16
	ees4 g,
	R2*2^\solo
% Bars 141 to 145
	
	r8.^\tutti d'16-. d8-.[ r16 d-.]
	d8 r r8. c16
	c8 r r8. bes16
	c4 g
% Bars 146 to 150
	\MmrLength #10 R2*2^\solo
	\mark \default
	\MmrLength #12 R2*26
% Bars 151 to 155
	
% Bars 156 to 160
	
% Bars 161 to 165
	
% Bars 166 to 170
	
% Bars 171 to 175
	
	
	
	\cueDuring #"cueVoiceHrnIVmIII" #UP {
		\ni \MmrPos #-10 R2
		R
% Bars 176 to 180
		R
		R
		\MmrPos #-6 R
		R \mark \default
		\MmrPos #-10 R \no
	}
% Bars 181 to 185
	c,2\pp(
	g4) r
	c2(
	g4) r
	R2*2 %c2(
% Bars 186 to 190
	%f4) r
	d''2(
	g,4) r
	c,2(
	e4) r
% Bars 191 to 195
	des'( c
	e,) r
	R2*3
	
	
% Bars 196 to 200
	r4 r8.^\tutti g16\ff
	g4.. ees'16
	ees4.. ees16
	\tuplet 3/2 4 {ees4( d8) c( d ees)}
	\tuplet 3/2 4 {ees4( des8) ces( des ees)}
% Bars 201 to 205
	bes4 b
	r8. g16-. ees8-.[ r16 c-.]
	c'4 d
	bes c,
	g c,
% Bars 206 to 210
	c'4..\sf c16
	c4..\sf c16
	c4-> c->
	c8-.^\solo r r4
	g'4..\sf^\tutti g16
% Bars 211 to 215
	g4..\sf g16
	g4-> g->
	g,8-. r^\solo r8. d''16
	d2\fp~^\tutti
	d_\dimmarkup~
% Bars 216 to 220
	d~
	d \bar "||" \mark \default
	g,,8-.-\tweak X-offset #-2 -\tweak Y-offset #-2.5 \p-\tweak X-offset #1.5 ^\solo r r4
	R2*9
% Bars 221 to 225
	
% Bars 226 to 230
	
	
	\cueDuring #"cueVoiceHrnIVmIII" #UP {
		\ni R2
		R
		r4 r8 \no } d''-.\p
% Bars 231 to 235
	g,-. r r4
	r r8 f'-.
	bes,-. r r4
	R2*4
% Bars 236 to 240
	
	\mark \default
	R2*2
	
	\cueDuring #"cueVoiceHrnIVmIII" #UP {
		\ni R2
% Bars 241 to 245
		R \no
	}
	ees,2\p~
	ees
	R2*2
	
% Bars 246 to 250
	\tempo "poco rit." \MmrLength #11 R2*4
	
	
	
	\tempo "in tempo" \MmrLength #11 R2*4
% Bars 251 to 255
	
	
	
	\cueDuring #"cueVoiceHrnIVmIII" #UP {
		\ni \MmrPos #-6 R2
		R
% Bars 256 to 260
		R
		\clef "bass" R \clef treble \no
	}
	g,8\f-.^\tutti g-. r g-.
	r g-. r g-.
	g-. g'-. r g-.
% Bars 261 to 265
	r g-. r g-.
	bes-. bes-. r bes-.
	r bes-. r bes-.
	bes4( g~
	g c,)
% Bars 266 to 270
	g'8-. bes-. d-. d-.
	bes-. bes-. bes-. bes-.
	ees,-. r^\solo r4
	R2
	R2*3^\tutti
% Bars 271 to 275
	
	
	r4 r^\solo \bar "||"
	R2*7
% Bars 276 to 280
	
% Bars 281 to 285
	\cueDuring #"cueVoiceHrnIVmIII" #UP {
		\ni R2
		R
		R
		R
		R \no
	}
% Bars 286 to 290
	R2*3
	
	\bar "||"
	\time 3/4 R2.*2
	\bar "||"
% Bars 291 to 295
	\time 4/4 \cueDuring #"cueVoiceHrnIVmIII" #UP {
		\ni R1
		R \bar "||"
		\time 2/4 R2 \no
	}
	R2*3
	
% Bars 296 to 300
	\bar "||"
	\tempo "Poco meno Allegro" \cueDuring #"cueVoiceHrnIVmIII" #DOWN {
		\ni R2
		r4 r8 \no } g,\pp~
	g2~
	g~
% Bars 301 to 305
	g4. c8~
	c2~
	c~
	c
	c^\one
% Bars 306 to 310
	c^\two
	c^\three
	c^\four
	c2_\crescmarkup^\five
	c^\six
% Bars 311 to 315
	c^\seven
	c_\dimmarkup^\eight
	g8\p r r4
	R2*6
% Bars 316 to 320
	
	
	
	
	g2\sf\>
% Bars 321 to 325
	g4\p r
	g4.\pp\> r8
	g4.\> r8\! \bar "||"
	\tempo "Tempo primo" g4\f-. g\fp~
	g2~
% Bars 326 to 330
	g8 g\f-. g-. g'-.
	\tuplet 3/2 4 {g8( d'-.) d-. e( d-.) d-.}
	g,8-.\p r r4
	R2*7
% Bars 331 to 335
	
% Bars 336 to 340
	g,8-.\f r r4
	R2
	g'8-. r r4
	g8-. r r4
	g,2\fermata \bar "|."
}

