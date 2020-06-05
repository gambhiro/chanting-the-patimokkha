all: learning chanting

learning:
	cd src && lualatex -interaction=nonstopmode -halt-on-error -output-directory=../charts/ patimokkha-learning-chart.tex

# convert requires:
# <policy domain="coder" rights="read" pattern="PDF" />
# in the file:
# /etc/ImageMagick-6/policy.xml
chanting:
	cd src && lualatex -interaction=nonstopmode -halt-on-error -output-directory=../charts/ patimokkha-chanting-chart.tex && convert -density 600 ../charts/patimokkha-chanting-chart.pdf -flatten -compress jpeg -quality 90 -filter Lanczos -resize x600 ../charts/patimokkha-chanting-chart.jpg
