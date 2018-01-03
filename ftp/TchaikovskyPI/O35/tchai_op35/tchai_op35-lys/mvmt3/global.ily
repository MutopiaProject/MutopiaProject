\version "2.18.2"

spacing =  {
	s2*6	\break		% STARTS AT 1
	s2*7	\break		% 7
	s2*9	\break		% 14
	s2*10	\break		% 23
	s2*10	\break		% 33
	s2*10	\break		% 43
	s2*6	\break		% 53
	s2*6	\break		% 59
	s2*6	\break		% 65
	s2*6	\break		% 71
	s2*6	\break		% 77
	s2*7	\break		% 83
	s2*6	\break		% 89
	s2*5	\break		% 96
	s2*6	\break		% 101
	s2*6	\break		% 107
	s2*6	\break		% 113
	s2*6	\break		% 119
	s2*8	\break		% 125
	s2*7	\break		% 133
	s2*5	\break		% 140
	s2*10	\break		% 145
	s2*9	\break		% 155
	s2*7	\break		% 164
	s2*7	\break		% 171
	s2*6	\break		% 178
	s2*5	\break		% 184
	s2*7	\break		% 189
	s2*7	\break		% 196
	s2*7	\break		% 203
	s2*7	\break		% 210
	s2*7	\break		% 217
	s2*7	\break		% 224
	s2*7	\break		% 231
	s2*5	\break		% 238
	s2*7	\break		% 243
	s2*7	\break		% 250
	s2*6	\break		% 257
	s2*6	\break		% 263
	s2*6	\break		% 269
	s2*7	\break		% 275
	s2*5	\break		% 282
	s2*5	\break		% 287
	s2*5	\break		% 292
	s2*5	\break		% 297
	s2*6	\break		% 302
	s2*5	\break		% 308
	s2*5	\break		% 313
	s2*5	\break		% 318
	s2*5	\break		% 323
	s2*6	\break		% 328
	s2*5	\break		% 334
	s2*5	\break		% 339
	s2*5	\break		% 344
	s2*10	\break		% 349
	s2*8	\break		% 359
	s2*6	\break		% 367
	s2*7	\break		% 373
	s2*7	\break		% 380
	s2*5	\break		% 387
	s2*8	\break		% 392
	s2*7	\break		% 400
	s2*7	\break		% 407
	s2*7	\break		% 414
	s2*7	\break		% 421
	s2*7	\break		% 428
	s2*8	\break		% 435
	s2*7	\break		% 443
	s2*5	\break		% 450
	s2*5	\break		% 455
	s2*7	\break		% 460
	s2*7	\break		% 467
	s2*6	\break		% 474
	s2*6	\break		% 480
	s2*7	\break		% 486
	s2*7	\break		% 493
	s2*7	\break		% 500
	s2*7	\break		% 507
	s2*6	\break		% 514
	s2*6	\break		% 520
	s2*6	\break		% 526
	s2*7	\break		% 532
	s2*7	\break		% 539
	s2*5	\break		% 546
	s2*5	\break		% 551
	s2*5	\break		% 556
	s2*6	\break		% 561
	s2*7	\break		% 567
	s2*6	\break		% 574
	s2*7	\break		% 580
	s2*8	\break		% 587
	s2*6	\break		% 595
	s2*6	\break		% 601
	s2*5	\break		% 607
	s2*5	\break		% 612
	s2*5	\break		% 617
	s2*7	\break		% 622
	s2*5	\break		% 629
	s2*6	\break		% 634; end @ 639
}

barlines =  {
	\set Score.tempoHideNote = ##t
	\set Score.skipBars = ##t
	\override Score.TupletBracket.bracket-visibility = ##f
	
	\time 2/4
	\tempo "Allegro vivacissimo."

	s2*15
	\tempo 4 = 150
	s2*34
	\tempo 4 = 130
	s2*2
	\tempo 4 = 155
	s2*93
	\bar "||"
	\key a \major
	\tempo "Poco meno mosso." 4 = 95
	s2*19
	\tempo "Tempo I." 4 = 155
	s2*32
	\bar "||"
	\tempo "Molto meno mosso." 4 = 95
	s2*21
	\tempo "Poco a poco rallentando" 4 = 75
	s2*14
	\tempo "Quasi andante." 4 = 100
	s2*4
	\tempo "Poco a poco string." 4 = 120
	s2*4
	\tempo 4 = 140
	s2*4
	\tempo "Tempo I." 4 = 155
	\bar "||"
	\key d \major
	s2*106
	\tempo "Poco meno mosso." 4 = 95
	\bar "||"
	\key g \major
	s2*19
	\tempo "Tempo I." 4 = 155
	s2*32
	\tempo "Molto meno mosso." 4 = 95
	\bar "||"
	s2*17
	\tempo "Poco a poco rallentando" 4 = 75
	s2*19
	\tempo "Quasi andante." 4 = 100
	s2*14
	\tempo "Poco a poco stringendo." 4 = 120
	s2*10
	\tempo "Tempo I." 4 = 155
	\bar "||"
	\key d \major
	s2*80
	\tempo 4 = 165
	s2*100
	\bar "|."
}
