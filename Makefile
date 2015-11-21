



all: MPhys_Report_S1.tex
	mv generated_files/* .
	pdflatex MPhys_Report_S1
	mv *.log *.aux generated_files/

clean:
	mv *.log *.aux generated_files/