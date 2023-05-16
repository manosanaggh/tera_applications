#!/usr/bin/env bash

export LIBRARY_PATH=/opt/manosanag/teraheap/allocator/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/manosanag/teraheap/allocator/lib:$LD_LIBRARY_PATH
export PATH=/opt/manosanag/teraheap/allocator/include/:$PATH
#export LIBRARY_PATH=/opt/manosanag/teraheap/tera_malloc/lib:$LIBRARY_PATH
#export LD_LIBRARY_PATH=/opt/manosanag/teraheap/tera_malloc/lib:$LD_LIBRARY_PATH
#export PATH=/opt/carvguest/asplos23_ae/teraheap/tera_malloc/include/:$PATH
export C_INCLUDE_PATH=/opt/manosanag/teraheap/allocator/include/:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/opt/manosanag/teraheap/allocator/include/:$CPLUS_INCLUDE_PATH

"$@"
