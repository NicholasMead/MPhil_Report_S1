MainFile = Report_Main
Target = MPhys_Semester1_Report.pdf

all: $(MainFile).tex
	make available
	make pdf	

pdf: $(MainFile).tex
	pdflatex $(MainFile).tex
	biber $(MainFile)
	pdflatex $(MainFile).tex
	make rename
	make clean

rename:
	mv $(MainFile).pdf $(Target)

available:
	mv generated_files/* .

clean:
	mv *.log *.aux *.xml *.bcf *.toc *.blg *.bbl generated_files/