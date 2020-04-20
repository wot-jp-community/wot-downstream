#orig = Web\ of\ Things\ \(WoT\)\ Thing\ Description_v0.1.html
orig = Web\ of\ Things\ \(WoT\)\ Thing\ Description_v0.2.html

html = Overview.html
pdf  = Overview.pdf
doc  = Overview.docx

conv:
	cp $(orig) $(html)
	./conv.pl $(html)

tidy:
	tidy -i -m $(html)

html2pdf:
	wkhtmltopdf $(html) $(pdf)

html2doc:
	pandoc $(html) -o $(doc)

