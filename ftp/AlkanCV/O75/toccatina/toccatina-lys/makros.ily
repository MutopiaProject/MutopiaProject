bp =
	#(define-music-function
    	 (parser location padding)
    	 (pair?)
   	#{
    	 \once \override Beam.positions = #padding
   	#})

knee = {\override Beam.knee = ##f}
ch_rh = {\change Staff = "up"}
ch_lh = {\change Staff = "down"}
coll = {
	\once \override NoteCollision.positioning-done = ##t
	\once \override NoteColumn.ignore-collision = ##t
	}

up = {
	\ch_rh \stemDown
	}
down = {
	\ch_lh \stemUp
	}
rf = #(make-dynamic-script "rf")

n_ottava = {
	\set Staff.ottavation = \markup \column{" " 8}
}

%%%%%%%%%%%%%%%%%%% definition of barline

#(define-bar-line ":.|" ":.|" ":.|" " .|")
#(define-bar-line ":|.-.|" ":|." ".|" ".|")
#(define-bar-line ".." ".." ".." "..")
#(define-bar-line ".|:-.." ".." ".|:" ".| ")
#(define-bar-line "..:" "..:" "..:" ".. ")
