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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic24f-lcd-usb-curiosity-pwm-rgb-led.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic24f-lcd-usb-curiosity-pwm-rgb-led.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=application/demo.c bsp/buttons.c bsp/led3_blue.c bsp/led3_green.c bsp/led3_red.c bsp/rgb_led3.c bsp/timer_1ms.c mcc_generated_files/traps.c mcc_generated_files/pin_manager.c mcc_generated_files/mccp6_compare.c mcc_generated_files/adc1.c mcc_generated_files/mccp5_compare.c mcc_generated_files/tmr3.c mcc_generated_files/mccp4_compare.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/mcc.c mcc_generated_files/interrupt_manager.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/application/demo.o ${OBJECTDIR}/bsp/buttons.o ${OBJECTDIR}/bsp/led3_blue.o ${OBJECTDIR}/bsp/led3_green.o ${OBJECTDIR}/bsp/led3_red.o ${OBJECTDIR}/bsp/rgb_led3.o ${OBJECTDIR}/bsp/timer_1ms.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/mccp6_compare.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/mccp5_compare.o ${OBJECTDIR}/mcc_generated_files/tmr3.o ${OBJECTDIR}/mcc_generated_files/mccp4_compare.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/application/demo.o.d ${OBJECTDIR}/bsp/buttons.o.d ${OBJECTDIR}/bsp/led3_blue.o.d ${OBJECTDIR}/bsp/led3_green.o.d ${OBJECTDIR}/bsp/led3_red.o.d ${OBJECTDIR}/bsp/rgb_led3.o.d ${OBJECTDIR}/bsp/timer_1ms.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/mccp6_compare.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/mccp5_compare.o.d ${OBJECTDIR}/mcc_generated_files/tmr3.o.d ${OBJECTDIR}/mcc_generated_files/mccp4_compare.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/application/demo.o ${OBJECTDIR}/bsp/buttons.o ${OBJECTDIR}/bsp/led3_blue.o ${OBJECTDIR}/bsp/led3_green.o ${OBJECTDIR}/bsp/led3_red.o ${OBJECTDIR}/bsp/rgb_led3.o ${OBJECTDIR}/bsp/timer_1ms.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/mccp6_compare.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/mccp5_compare.o ${OBJECTDIR}/mcc_generated_files/tmr3.o ${OBJECTDIR}/mcc_generated_files/mccp4_compare.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=application/demo.c bsp/buttons.c bsp/led3_blue.c bsp/led3_green.c bsp/led3_red.c bsp/rgb_led3.c bsp/timer_1ms.c mcc_generated_files/traps.c mcc_generated_files/pin_manager.c mcc_generated_files/mccp6_compare.c mcc_generated_files/adc1.c mcc_generated_files/mccp5_compare.c mcc_generated_files/tmr3.c mcc_generated_files/mccp4_compare.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/mcc.c mcc_generated_files/interrupt_manager.c main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic24f-lcd-usb-curiosity-pwm-rgb-led.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ512GU410
MP_LINKER_FILE_OPTION=,--script=p24FJ512GU410.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/application/demo.o: application/demo.c  .generated_files/flags/default/4e0d9f79403ef3ae1a796d20ba26f1ef5d4da93d .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/application" 
	@${RM} ${OBJECTDIR}/application/demo.o.d 
	@${RM} ${OBJECTDIR}/application/demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  application/demo.c  -o ${OBJECTDIR}/application/demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/application/demo.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/bsp/buttons.o: bsp/buttons.c  .generated_files/flags/default/a177569c317a19aecab7bafafb25d70ed0b28162 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/bsp" 
	@${RM} ${OBJECTDIR}/bsp/buttons.o.d 
	@${RM} ${OBJECTDIR}/bsp/buttons.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bsp/buttons.c  -o ${OBJECTDIR}/bsp/buttons.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bsp/buttons.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/bsp/led3_blue.o: bsp/led3_blue.c  .generated_files/flags/default/b42b4728ed2220515e7a49393487ff396d2f182c .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/bsp" 
	@${RM} ${OBJECTDIR}/bsp/led3_blue.o.d 
	@${RM} ${OBJECTDIR}/bsp/led3_blue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bsp/led3_blue.c  -o ${OBJECTDIR}/bsp/led3_blue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bsp/led3_blue.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/bsp/led3_green.o: bsp/led3_green.c  .generated_files/flags/default/c2ff8ccbcf0ea3c23ac3312288d03de4e480809b .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/bsp" 
	@${RM} ${OBJECTDIR}/bsp/led3_green.o.d 
	@${RM} ${OBJECTDIR}/bsp/led3_green.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bsp/led3_green.c  -o ${OBJECTDIR}/bsp/led3_green.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bsp/led3_green.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/bsp/led3_red.o: bsp/led3_red.c  .generated_files/flags/default/f8fd3dabce34f9665f35f4dd6c7b68c53271f2bf .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/bsp" 
	@${RM} ${OBJECTDIR}/bsp/led3_red.o.d 
	@${RM} ${OBJECTDIR}/bsp/led3_red.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bsp/led3_red.c  -o ${OBJECTDIR}/bsp/led3_red.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bsp/led3_red.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/bsp/rgb_led3.o: bsp/rgb_led3.c  .generated_files/flags/default/a427cca85da50c3d4538ad764b2b025efefbe17e .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/bsp" 
	@${RM} ${OBJECTDIR}/bsp/rgb_led3.o.d 
	@${RM} ${OBJECTDIR}/bsp/rgb_led3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bsp/rgb_led3.c  -o ${OBJECTDIR}/bsp/rgb_led3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bsp/rgb_led3.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/bsp/timer_1ms.o: bsp/timer_1ms.c  .generated_files/flags/default/bb9692e165b0f8b4f66fc887a873f2c4d2ec34da .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/bsp" 
	@${RM} ${OBJECTDIR}/bsp/timer_1ms.o.d 
	@${RM} ${OBJECTDIR}/bsp/timer_1ms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bsp/timer_1ms.c  -o ${OBJECTDIR}/bsp/timer_1ms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bsp/timer_1ms.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/6f3b3d32f2101d8f290fb3ac10ccbb5db7386ab9 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/371de22bd8084f83dbdef4da06192797e3d2dd4b .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mccp6_compare.o: mcc_generated_files/mccp6_compare.c  .generated_files/flags/default/5afadca8fee988b47c86cb040a4df616c84f6be5 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp6_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp6_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mccp6_compare.c  -o ${OBJECTDIR}/mcc_generated_files/mccp6_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mccp6_compare.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/199ccd501d250f286a323e8dc27757d0bee7a48a .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mccp5_compare.o: mcc_generated_files/mccp5_compare.c  .generated_files/flags/default/b1944a7f00baf116d1dcead919012e81499334a4 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp5_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp5_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mccp5_compare.c  -o ${OBJECTDIR}/mcc_generated_files/mccp5_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mccp5_compare.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/flags/default/4e2f3b8d8370cd6fb018b2050b58d5f356dd9c39 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr3.c  -o ${OBJECTDIR}/mcc_generated_files/tmr3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mccp4_compare.o: mcc_generated_files/mccp4_compare.c  .generated_files/flags/default/c196c03112bdf8e99f9377e53273858fe265a57a .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp4_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp4_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mccp4_compare.c  -o ${OBJECTDIR}/mcc_generated_files/mccp4_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mccp4_compare.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/a6bfd6541f4a4621d1e5effde45f850d4680826f .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/1bcf597e102764d6dd793b8059b1bc73876e4e4c .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/90f2b689030e7f7c517ac239acbe5f61a2dd93cb .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/88d2abcf66506a0948119bea759b13e524d5d0bf .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/6a06e4d29771db8f2cd95ae1ee72a8f67ba621e1 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
else
${OBJECTDIR}/application/demo.o: application/demo.c  .generated_files/flags/default/89385c0d2a4787ed6f19cbfeb039e66cd17fd911 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/application" 
	@${RM} ${OBJECTDIR}/application/demo.o.d 
	@${RM} ${OBJECTDIR}/application/demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  application/demo.c  -o ${OBJECTDIR}/application/demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/application/demo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/bsp/buttons.o: bsp/buttons.c  .generated_files/flags/default/86d3ab10281667c41ee3486ae6dd5866fd711049 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/bsp" 
	@${RM} ${OBJECTDIR}/bsp/buttons.o.d 
	@${RM} ${OBJECTDIR}/bsp/buttons.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bsp/buttons.c  -o ${OBJECTDIR}/bsp/buttons.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bsp/buttons.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/bsp/led3_blue.o: bsp/led3_blue.c  .generated_files/flags/default/759dadafc47bf8adca3a8c5981f236d4125f2ff4 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/bsp" 
	@${RM} ${OBJECTDIR}/bsp/led3_blue.o.d 
	@${RM} ${OBJECTDIR}/bsp/led3_blue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bsp/led3_blue.c  -o ${OBJECTDIR}/bsp/led3_blue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bsp/led3_blue.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/bsp/led3_green.o: bsp/led3_green.c  .generated_files/flags/default/58d27d7a6b365f6dd4f014f2a9cbcede6dd8c2 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/bsp" 
	@${RM} ${OBJECTDIR}/bsp/led3_green.o.d 
	@${RM} ${OBJECTDIR}/bsp/led3_green.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bsp/led3_green.c  -o ${OBJECTDIR}/bsp/led3_green.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bsp/led3_green.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/bsp/led3_red.o: bsp/led3_red.c  .generated_files/flags/default/190b6a2058bd448e88373116c9056d3ed302f1d5 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/bsp" 
	@${RM} ${OBJECTDIR}/bsp/led3_red.o.d 
	@${RM} ${OBJECTDIR}/bsp/led3_red.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bsp/led3_red.c  -o ${OBJECTDIR}/bsp/led3_red.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bsp/led3_red.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/bsp/rgb_led3.o: bsp/rgb_led3.c  .generated_files/flags/default/142eee12f6a293ecec793a6c765877469d9f1a80 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/bsp" 
	@${RM} ${OBJECTDIR}/bsp/rgb_led3.o.d 
	@${RM} ${OBJECTDIR}/bsp/rgb_led3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bsp/rgb_led3.c  -o ${OBJECTDIR}/bsp/rgb_led3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bsp/rgb_led3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/bsp/timer_1ms.o: bsp/timer_1ms.c  .generated_files/flags/default/53e4de02358997fff22a28434b0b0685ad291652 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/bsp" 
	@${RM} ${OBJECTDIR}/bsp/timer_1ms.o.d 
	@${RM} ${OBJECTDIR}/bsp/timer_1ms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bsp/timer_1ms.c  -o ${OBJECTDIR}/bsp/timer_1ms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bsp/timer_1ms.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/7f7c132e8f5cecd37c22c8a8c51fea2a80bc66e3 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/7af28c4727624fc46b8caae0ab9796b51422096e .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mccp6_compare.o: mcc_generated_files/mccp6_compare.c  .generated_files/flags/default/ac41ef167de1d9c39eca106e73d363d4fd3b511a .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp6_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp6_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mccp6_compare.c  -o ${OBJECTDIR}/mcc_generated_files/mccp6_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mccp6_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/971923883f45a417ab069e21eecd94b268c5c20f .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mccp5_compare.o: mcc_generated_files/mccp5_compare.c  .generated_files/flags/default/f78a554499d99d88076beb5914e629298413a971 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp5_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp5_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mccp5_compare.c  -o ${OBJECTDIR}/mcc_generated_files/mccp5_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mccp5_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/flags/default/be8945bb908f8c2cc9d12b613b8a67483160dfa0 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr3.c  -o ${OBJECTDIR}/mcc_generated_files/tmr3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mccp4_compare.o: mcc_generated_files/mccp4_compare.c  .generated_files/flags/default/ae3a08386dbe18f2e8d801a50685ef3b78e68f41 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp4_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp4_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mccp4_compare.c  -o ${OBJECTDIR}/mcc_generated_files/mccp4_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mccp4_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/1b7d2a556021d002621b38ef6ac0a3908f52231a .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/19a12aedf62bcdf8d298012c33b9493430da554c .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/dbeea215459191a49a4c39242d324a4363672f4c .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/71b2f8f772339587104b80b89dbc6209377607e1 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/e7e6c2c6704f51c71c922458286c9b201aa8e1b .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"." -I"bsp" -DSYSTEM_PERIPHERAL_CLOCK=16000000 -msmart-io=1 -Wall -msfr-warn=off   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic24f-lcd-usb-curiosity-pwm-rgb-led.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic24f-lcd-usb-curiosity-pwm-rgb-led.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic24f-lcd-usb-curiosity-pwm-rgb-led.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic24f-lcd-usb-curiosity-pwm-rgb-led.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/pic24f-lcd-usb-curiosity-pwm-rgb-led.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default
