\version "1.5.66"

flauto = \notes \relative c''' {
	\time 6/8
	\key bes \major
	\clef treble

	r2. | 
	r | 
	r | 
	r | 
	r |

	d4.\p ~ d4( )cis8 |
	d r r r4 r8 |
	ees4\f c16.( )a32 bes8 r r |
	r2. |
	r | 
	r |

	r | 
	r | 
	r | 
	r |
	r4 r8 bes,16( c d ees f )g |
% 2
	aes4_#'( bold ( italic (Large "mfp"))) ( )b,8 r4 r8 |
	r4 r8 c16\p( d e f g )a |
	bes4_#'( bold ( italic (Large "mfp"))) ( )cis,8 r4 r8 |
	r2. |
	r8 r16 d'16( c bes )a8 r r |

	r2. |
	r4 d8( ees c a |
	)fis4 r8 r4 r8 |
	r2. | 
	r |

	g4._"cresc."( )aes\f |
	g8 r r r4 r8 |
	r2. | 
	r | 
	r |
% 3
	r | 
	r | 
	r | 
	r | 
	r |
	
	r2.^\fermata |
	r |
	r8 r16 d'_"cresc."( f ees8 cis16 ees d8 )a16\f |
	c( bes8 fis16 a )g bes16\p( aes8 g )fis16 |
	g8-. r bes-. g8 r r 
	\bar "|."
}