spec:=python-django-clacks.spec

srpm:
	@set -e; rpmbuild -bs --define "_disable_source_fetch 0" $(spec)
ifdef outdir
	cp `rpmbuild --eval "%{_topdir}"`/SRPMS/* $(outdir)
endif
