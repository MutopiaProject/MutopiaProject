\version "2.18.2"

\bookpart {
    \header { copyright = ##f }
    \paper {
        print-page-number = ##f
        line-width = 15\cm
	tocTitleMarkup = \markup \fontsize #6 \column {
	    \null
	    \null
	    \fill-line { \null \bold "Table of Contents" \null }
	    \null
	    \null
	    \null
	}
	tocItemMarkup = \markup \fontsize #3 \fill-with-pattern #1 #RIGHT . 
	    \fromproperty #'toc:text \fromproperty #'toc:page
	
    }

    \markuplist \table-of-contents
}


