# update older templates automatically, from the latest template

LATEST = template_md_3.0.xml

all: \
	template_md_2.0.xml \
	template_md_2.4.xml

template_md_2.0.xml: $(LATEST)
	zabbix-template-converter \
		$(LATEST) -o 2.0.0 \
		> template_md_2.0.xml

template_md_2.4.xml: $(LATEST)
	zabbix-template-converter \
		$(LATEST) -o 2.4.0 \
		> template_md_2.4.xml

clean:
	rm -vf \
		template_md_2.0.xml \
		template_md_2.4.xml

.PHONY: all clean