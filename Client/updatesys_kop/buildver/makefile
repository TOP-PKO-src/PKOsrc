################################################################
# modified by claude fan for making on FreeBSD at 2004-8-17
#
################################################################

EXECUTABLE := buildver
LIBS := z

CC := gcc
CXX := g++
CFLAGS := -I. -I../src_common -I../src_common/md5 -I../src_common/zlib
#-ggdb3
CXXFLAGS := $(CFLAGS) -O
#LDFLAGS  = -L. -lzstream
#AR       = ar cr


RM-F := rm -f 

SOURCE := $(wildcard *.c) $(wildcard *.cpp)
SOURCE += $(wildcard ../src_common/*.c) $(wildcard ../src_common/*.cpp) 
SOURCE += $(wildcard ../src_common/md5/*.c) $(wildcard ../src_common/md5/*.cpp)
SOURCE += $(wildcard ../src_common/zlib/*.c) $(wildcard ../src_common/zlib/*.cpp)
OBJS := $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCE))) 
DEPS := $(patsubst %.o,%.d,$(OBJS)) 
MISSING_DEPS := $(filter-out $(wildcard $(DEPS)),$(DEPS)) 
MISSING_DEPS_SOURCES := $(wildcard $(patsubst %.d,%.c,$(MISSING_DEPS))) $(patsubst %.d,%.cpp,$(MISSING_DEPS))

.PHONY : everything deps objs clean veryclean rebuild 

everything : $(EXECUTABLE)

deps : $(DEPS) 

objs : $(OBJS) 

clean : 
	@$(RM-F) *.o 
	@$(RM-F) *.d 	

veryclean : clean 
	@$(RM-F) $(EXECUTABLE) 

rebuild : veryclean everything 

dest : rebuild
	cp -f $(EXECUTABLE) ../bin_server/

ifneq ($(MISSING_DEPS),) 
$(MISSING_DEPS) : 
	@$(RM-F) $(patsubst %.d,%.o,$@) 
endif 

-include $(DEPS) 


$(EXECUTABLE) : $(OBJS)
	$(CXX) -o $(EXECUTABLE) $(OBJS) $(addprefix -l,$(LIBS))
#$(LDFLAGS)

#zstream : libzstream.a

#libzstream.a :
#	${AR} libzstream.a zstream.o
