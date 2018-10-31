TARGET = [target exe]
INCLUDES = [all .o that you need]
.DEFAULT_GOAL := $(TARGET)
CFLAGS += -Wall -Wextra -Wpedantic -Wfloat-equal -Wwrite-strings


$(TARGET): $(INCLUDES)

.PHONY:clean debug


%.debug:CFLAGS += -g
%.debug: %
	@#

debug: CFLAGS += -g
debug: $(TARGET)

clean:
	$(RM) *.o $(TARGET)

