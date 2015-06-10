#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/umote-co2-d1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/umote-co2-d1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=adc/averaged_adc.c co2-d1/co2-d1.c sht/sht.c xbee/digi_api.c xbee/digi_hw.c xbee/digi_send.c xbee/digi_serial.c xbee/digi_transmit_request.c xbee/payload.c xbee/digi_join.c xbee/digi_at_request.c main.c sensor_proxy.c interrupts.c pragmas.c network_proxy.c bsp.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/adc/averaged_adc.p1 ${OBJECTDIR}/co2-d1/co2-d1.p1 ${OBJECTDIR}/sht/sht.p1 ${OBJECTDIR}/xbee/digi_api.p1 ${OBJECTDIR}/xbee/digi_hw.p1 ${OBJECTDIR}/xbee/digi_send.p1 ${OBJECTDIR}/xbee/digi_serial.p1 ${OBJECTDIR}/xbee/digi_transmit_request.p1 ${OBJECTDIR}/xbee/payload.p1 ${OBJECTDIR}/xbee/digi_join.p1 ${OBJECTDIR}/xbee/digi_at_request.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/sensor_proxy.p1 ${OBJECTDIR}/interrupts.p1 ${OBJECTDIR}/pragmas.p1 ${OBJECTDIR}/network_proxy.p1 ${OBJECTDIR}/bsp.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/adc/averaged_adc.p1.d ${OBJECTDIR}/co2-d1/co2-d1.p1.d ${OBJECTDIR}/sht/sht.p1.d ${OBJECTDIR}/xbee/digi_api.p1.d ${OBJECTDIR}/xbee/digi_hw.p1.d ${OBJECTDIR}/xbee/digi_send.p1.d ${OBJECTDIR}/xbee/digi_serial.p1.d ${OBJECTDIR}/xbee/digi_transmit_request.p1.d ${OBJECTDIR}/xbee/payload.p1.d ${OBJECTDIR}/xbee/digi_join.p1.d ${OBJECTDIR}/xbee/digi_at_request.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/sensor_proxy.p1.d ${OBJECTDIR}/interrupts.p1.d ${OBJECTDIR}/pragmas.p1.d ${OBJECTDIR}/network_proxy.p1.d ${OBJECTDIR}/bsp.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/adc/averaged_adc.p1 ${OBJECTDIR}/co2-d1/co2-d1.p1 ${OBJECTDIR}/sht/sht.p1 ${OBJECTDIR}/xbee/digi_api.p1 ${OBJECTDIR}/xbee/digi_hw.p1 ${OBJECTDIR}/xbee/digi_send.p1 ${OBJECTDIR}/xbee/digi_serial.p1 ${OBJECTDIR}/xbee/digi_transmit_request.p1 ${OBJECTDIR}/xbee/payload.p1 ${OBJECTDIR}/xbee/digi_join.p1 ${OBJECTDIR}/xbee/digi_at_request.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/sensor_proxy.p1 ${OBJECTDIR}/interrupts.p1 ${OBJECTDIR}/pragmas.p1 ${OBJECTDIR}/network_proxy.p1 ${OBJECTDIR}/bsp.p1

# Source Files
SOURCEFILES=adc/averaged_adc.c co2-d1/co2-d1.c sht/sht.c xbee/digi_api.c xbee/digi_hw.c xbee/digi_send.c xbee/digi_serial.c xbee/digi_transmit_request.c xbee/payload.c xbee/digi_join.c xbee/digi_at_request.c main.c sensor_proxy.c interrupts.c pragmas.c network_proxy.c bsp.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/umote-co2-d1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F26J50
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/adc/averaged_adc.p1: adc/averaged_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/adc" 
	@${RM} ${OBJECTDIR}/adc/averaged_adc.p1.d 
	@${RM} ${OBJECTDIR}/adc/averaged_adc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adc/averaged_adc.p1  adc/averaged_adc.c 
	@-${MV} ${OBJECTDIR}/adc/averaged_adc.d ${OBJECTDIR}/adc/averaged_adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adc/averaged_adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/co2-d1/co2-d1.p1: co2-d1/co2-d1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/co2-d1" 
	@${RM} ${OBJECTDIR}/co2-d1/co2-d1.p1.d 
	@${RM} ${OBJECTDIR}/co2-d1/co2-d1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/co2-d1/co2-d1.p1  co2-d1/co2-d1.c 
	@-${MV} ${OBJECTDIR}/co2-d1/co2-d1.d ${OBJECTDIR}/co2-d1/co2-d1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/co2-d1/co2-d1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/sht/sht.p1: sht/sht.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sht" 
	@${RM} ${OBJECTDIR}/sht/sht.p1.d 
	@${RM} ${OBJECTDIR}/sht/sht.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/sht/sht.p1  sht/sht.c 
	@-${MV} ${OBJECTDIR}/sht/sht.d ${OBJECTDIR}/sht/sht.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/sht/sht.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/digi_api.p1: xbee/digi_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/digi_api.p1.d 
	@${RM} ${OBJECTDIR}/xbee/digi_api.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/digi_api.p1  xbee/digi_api.c 
	@-${MV} ${OBJECTDIR}/xbee/digi_api.d ${OBJECTDIR}/xbee/digi_api.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/digi_api.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/digi_hw.p1: xbee/digi_hw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/digi_hw.p1.d 
	@${RM} ${OBJECTDIR}/xbee/digi_hw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/digi_hw.p1  xbee/digi_hw.c 
	@-${MV} ${OBJECTDIR}/xbee/digi_hw.d ${OBJECTDIR}/xbee/digi_hw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/digi_hw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/digi_send.p1: xbee/digi_send.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/digi_send.p1.d 
	@${RM} ${OBJECTDIR}/xbee/digi_send.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/digi_send.p1  xbee/digi_send.c 
	@-${MV} ${OBJECTDIR}/xbee/digi_send.d ${OBJECTDIR}/xbee/digi_send.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/digi_send.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/digi_serial.p1: xbee/digi_serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/digi_serial.p1.d 
	@${RM} ${OBJECTDIR}/xbee/digi_serial.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/digi_serial.p1  xbee/digi_serial.c 
	@-${MV} ${OBJECTDIR}/xbee/digi_serial.d ${OBJECTDIR}/xbee/digi_serial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/digi_serial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/digi_transmit_request.p1: xbee/digi_transmit_request.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/digi_transmit_request.p1.d 
	@${RM} ${OBJECTDIR}/xbee/digi_transmit_request.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/digi_transmit_request.p1  xbee/digi_transmit_request.c 
	@-${MV} ${OBJECTDIR}/xbee/digi_transmit_request.d ${OBJECTDIR}/xbee/digi_transmit_request.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/digi_transmit_request.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/payload.p1: xbee/payload.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/payload.p1.d 
	@${RM} ${OBJECTDIR}/xbee/payload.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/payload.p1  xbee/payload.c 
	@-${MV} ${OBJECTDIR}/xbee/payload.d ${OBJECTDIR}/xbee/payload.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/payload.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/digi_join.p1: xbee/digi_join.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/digi_join.p1.d 
	@${RM} ${OBJECTDIR}/xbee/digi_join.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/digi_join.p1  xbee/digi_join.c 
	@-${MV} ${OBJECTDIR}/xbee/digi_join.d ${OBJECTDIR}/xbee/digi_join.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/digi_join.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/digi_at_request.p1: xbee/digi_at_request.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/digi_at_request.p1.d 
	@${RM} ${OBJECTDIR}/xbee/digi_at_request.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/digi_at_request.p1  xbee/digi_at_request.c 
	@-${MV} ${OBJECTDIR}/xbee/digi_at_request.d ${OBJECTDIR}/xbee/digi_at_request.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/digi_at_request.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/sensor_proxy.p1: sensor_proxy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sensor_proxy.p1.d 
	@${RM} ${OBJECTDIR}/sensor_proxy.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/sensor_proxy.p1  sensor_proxy.c 
	@-${MV} ${OBJECTDIR}/sensor_proxy.d ${OBJECTDIR}/sensor_proxy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/sensor_proxy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interrupts.p1: interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrupts.p1.d 
	@${RM} ${OBJECTDIR}/interrupts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/interrupts.p1  interrupts.c 
	@-${MV} ${OBJECTDIR}/interrupts.d ${OBJECTDIR}/interrupts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interrupts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pragmas.p1: pragmas.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pragmas.p1.d 
	@${RM} ${OBJECTDIR}/pragmas.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/pragmas.p1  pragmas.c 
	@-${MV} ${OBJECTDIR}/pragmas.d ${OBJECTDIR}/pragmas.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pragmas.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/network_proxy.p1: network_proxy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/network_proxy.p1.d 
	@${RM} ${OBJECTDIR}/network_proxy.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/network_proxy.p1  network_proxy.c 
	@-${MV} ${OBJECTDIR}/network_proxy.d ${OBJECTDIR}/network_proxy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/network_proxy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsp.p1: bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bsp.p1.d 
	@${RM} ${OBJECTDIR}/bsp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/bsp.p1  bsp.c 
	@-${MV} ${OBJECTDIR}/bsp.d ${OBJECTDIR}/bsp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/adc/averaged_adc.p1: adc/averaged_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/adc" 
	@${RM} ${OBJECTDIR}/adc/averaged_adc.p1.d 
	@${RM} ${OBJECTDIR}/adc/averaged_adc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adc/averaged_adc.p1  adc/averaged_adc.c 
	@-${MV} ${OBJECTDIR}/adc/averaged_adc.d ${OBJECTDIR}/adc/averaged_adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adc/averaged_adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/co2-d1/co2-d1.p1: co2-d1/co2-d1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/co2-d1" 
	@${RM} ${OBJECTDIR}/co2-d1/co2-d1.p1.d 
	@${RM} ${OBJECTDIR}/co2-d1/co2-d1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/co2-d1/co2-d1.p1  co2-d1/co2-d1.c 
	@-${MV} ${OBJECTDIR}/co2-d1/co2-d1.d ${OBJECTDIR}/co2-d1/co2-d1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/co2-d1/co2-d1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/sht/sht.p1: sht/sht.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sht" 
	@${RM} ${OBJECTDIR}/sht/sht.p1.d 
	@${RM} ${OBJECTDIR}/sht/sht.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/sht/sht.p1  sht/sht.c 
	@-${MV} ${OBJECTDIR}/sht/sht.d ${OBJECTDIR}/sht/sht.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/sht/sht.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/digi_api.p1: xbee/digi_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/digi_api.p1.d 
	@${RM} ${OBJECTDIR}/xbee/digi_api.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/digi_api.p1  xbee/digi_api.c 
	@-${MV} ${OBJECTDIR}/xbee/digi_api.d ${OBJECTDIR}/xbee/digi_api.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/digi_api.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/digi_hw.p1: xbee/digi_hw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/digi_hw.p1.d 
	@${RM} ${OBJECTDIR}/xbee/digi_hw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/digi_hw.p1  xbee/digi_hw.c 
	@-${MV} ${OBJECTDIR}/xbee/digi_hw.d ${OBJECTDIR}/xbee/digi_hw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/digi_hw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/digi_send.p1: xbee/digi_send.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/digi_send.p1.d 
	@${RM} ${OBJECTDIR}/xbee/digi_send.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/digi_send.p1  xbee/digi_send.c 
	@-${MV} ${OBJECTDIR}/xbee/digi_send.d ${OBJECTDIR}/xbee/digi_send.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/digi_send.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/digi_serial.p1: xbee/digi_serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/digi_serial.p1.d 
	@${RM} ${OBJECTDIR}/xbee/digi_serial.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/digi_serial.p1  xbee/digi_serial.c 
	@-${MV} ${OBJECTDIR}/xbee/digi_serial.d ${OBJECTDIR}/xbee/digi_serial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/digi_serial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/digi_transmit_request.p1: xbee/digi_transmit_request.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/digi_transmit_request.p1.d 
	@${RM} ${OBJECTDIR}/xbee/digi_transmit_request.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/digi_transmit_request.p1  xbee/digi_transmit_request.c 
	@-${MV} ${OBJECTDIR}/xbee/digi_transmit_request.d ${OBJECTDIR}/xbee/digi_transmit_request.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/digi_transmit_request.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/payload.p1: xbee/payload.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/payload.p1.d 
	@${RM} ${OBJECTDIR}/xbee/payload.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/payload.p1  xbee/payload.c 
	@-${MV} ${OBJECTDIR}/xbee/payload.d ${OBJECTDIR}/xbee/payload.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/payload.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/digi_join.p1: xbee/digi_join.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/digi_join.p1.d 
	@${RM} ${OBJECTDIR}/xbee/digi_join.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/digi_join.p1  xbee/digi_join.c 
	@-${MV} ${OBJECTDIR}/xbee/digi_join.d ${OBJECTDIR}/xbee/digi_join.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/digi_join.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/xbee/digi_at_request.p1: xbee/digi_at_request.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/xbee" 
	@${RM} ${OBJECTDIR}/xbee/digi_at_request.p1.d 
	@${RM} ${OBJECTDIR}/xbee/digi_at_request.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/xbee/digi_at_request.p1  xbee/digi_at_request.c 
	@-${MV} ${OBJECTDIR}/xbee/digi_at_request.d ${OBJECTDIR}/xbee/digi_at_request.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/xbee/digi_at_request.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/sensor_proxy.p1: sensor_proxy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sensor_proxy.p1.d 
	@${RM} ${OBJECTDIR}/sensor_proxy.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/sensor_proxy.p1  sensor_proxy.c 
	@-${MV} ${OBJECTDIR}/sensor_proxy.d ${OBJECTDIR}/sensor_proxy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/sensor_proxy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interrupts.p1: interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrupts.p1.d 
	@${RM} ${OBJECTDIR}/interrupts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/interrupts.p1  interrupts.c 
	@-${MV} ${OBJECTDIR}/interrupts.d ${OBJECTDIR}/interrupts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interrupts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pragmas.p1: pragmas.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pragmas.p1.d 
	@${RM} ${OBJECTDIR}/pragmas.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/pragmas.p1  pragmas.c 
	@-${MV} ${OBJECTDIR}/pragmas.d ${OBJECTDIR}/pragmas.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pragmas.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/network_proxy.p1: network_proxy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/network_proxy.p1.d 
	@${RM} ${OBJECTDIR}/network_proxy.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/network_proxy.p1  network_proxy.c 
	@-${MV} ${OBJECTDIR}/network_proxy.d ${OBJECTDIR}/network_proxy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/network_proxy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsp.p1: bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bsp.p1.d 
	@${RM} ${OBJECTDIR}/bsp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/bsp.p1  bsp.c 
	@-${MV} ${OBJECTDIR}/bsp.d ${OBJECTDIR}/bsp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/umote-co2-d1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/umote-co2-d1.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"       --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/umote-co2-d1.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/umote-co2-d1.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/umote-co2-d1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/umote-co2-d1.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"sht/include" -I"adc/include" -I"xbee/include" -I"co2-d1/include" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/umote-co2-d1.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
