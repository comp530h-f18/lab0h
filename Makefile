
all: task_store

task_store: task_store.c store_test.c
	gcc task_store.c store_test.c -g -o task_store

handin: clean
	@if [ `git status --porcelain| wc -l` != 0 ] ; then echo "\n\n\n\n\t\tWARNING: YOU HAVE UNCOMMITTED CHANGES\n\n    Consider committing any pending changes and rerunning make handin.\n\n\n\n"; fi
	git tag -f -a handin -m "Lab 0H Handin"
	git push --tags handin


clean:
	rm task_store *.o
