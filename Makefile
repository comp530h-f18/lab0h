
all: task_store

task_store: task_store.c store_test.c
	gcc task_store.c store_test.c -g -o task_store

clean:
	rm task_store *.o
