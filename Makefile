CFLAGS = -g -O3 \
         -ftree-vectorize -ftree-vectorizer-verbose=0 \
         -msse3 -march=native -mtune=native -finline-functions \
				 -pthread -D_GNU_SOURCE -DBENCHMARK
LDFLAGS = -pthread
LDLIBS = -lpthread
EXEC = faa lcrq fifo

all: $(EXEC)

clean:
	rm -rf $(EXEC) *.o