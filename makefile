LATEX = pdflatex

LATEX_OBJ = Report.tex
LATEX_OUT = Report.pdf
LATEX_JOB = Report
LATEX_FOLDER = ReportFiles
LATEX_FLAGS = -halt-on-error -output-directory=$(LATEX_FOLDER) -jobname=$(LATEX_JOB)

pdf: $(LATEX_OBJ)
	$(LATEX) $(LATEX_FLAGS) $(LATEX_OBJ) && mv $(LATEX_FOLDER)/$(LATEX_OUT) $(LATEX_OUT)

clean:
	rm Report.*