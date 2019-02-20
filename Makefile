# update older templates automatically, from the latest template

LATEST = template_md_3.0.xml

all: \
	dist/zabbix_template_md_2.0.zip \
	dist/zabbix_template_md_2.4.zip \
	dist/zabbix_template_md_3.0.zip \
	dist/zabbix_template_md_4.0.zip

template_md_2.0.xml: $(LATEST)
	zabbix-template-converter \
		$(LATEST) -o 2.0.0 \
		> template_md_2.0.xml

template_md_2.4.xml: $(LATEST)
	zabbix-template-converter \
		$(LATEST) -o 2.4.0 \
		> template_md_2.4.xml

dist:
	mkdir dist

dist/zabbix_template_md_2.0.zip: template_md_2.0.xml dist
	zip -r dist/zabbix_template_md_2.0.zip LICENSE README.md template_md_2.0.xml userparameter_md.conf

dist/zabbix_template_md_2.4.zip: template_md_2.4.xml dist
	zip -r dist/zabbix_template_md_2.4.zip LICENSE README.md template_md_2.4.xml userparameter_md.conf

dist/zabbix_template_md_3.0.zip: dist
	zip -r dist/zabbix_template_md_3.0.zip LICENSE README.md template_md_3.0.xml userparameter_md.conf

dist/zabbix_template_md_4.0.zip: dist
	zip -r dist/zabbix_template_md_4.0.zip LICENSE README.md template_md_4.0.xml userparameter_md.conf

clean:
	rm -vfr \
		template_md_2.0.xml \
		template_md_2.4.xml \
		dist

.PHONY: all clean
