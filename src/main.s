@;
@;  A simple program to blink the OK/ACT LED on Raspberry Pi 3
@;
@;  0x30D40 = 200000 microseconds = 200 miliseconds
@;  0x1E8480 = 2000000 microseconds = 2 seconds


.section .init                      @; kernel initialization code must be on 0x8000
.global _start                      @; define _start label globally available for the linker
_start:
    mov         sp, #0x8000         @; set up the stack pointer
    b           _main               @; branch to main routine

.section .text
_main:
    loop$:                          @; main loop
        @;Student Number: 47672
      	
	mov r4, #4		@; first digit of student number
	pertama$:        
		@; enable led
        	mov     r0, #1              @; led state 1 = on
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function

        	@; disable led
        	mov     r0, #0              @; led state 0 = off
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function
		
		subs	r4, r4, #1 
		bne	pertama$		@; loop requirement

	ldr     r0, =0x1E8480       @; delay in microseconds (2s)
	bl	delay
      	
	mov r4, #7		@; second digit of student number
	kedua$:        
		@; enable led
        	mov     r0, #1              @; led state 1 = on
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function

        	@; disable led
        	mov     r0, #0              @; led state 0 = off
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function
		
		subs	r4, r4, #1 
		bne	kedua$		@; loop requirement

	ldr     r0, =0x1E8480       @; delay in microseconds (2s)
	bl	delay
	
	mov r4, #6		@; third digit of student number
	ketiga$:        
		@; enable led
        	mov     r0, #1              @; led state 1 = on
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function

        	@; disable led
        	mov     r0, #0              @; led state 0 = off
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function
		
		subs	r4, r4, #1 
		bne	ketiga$		@; loop requirement

	ldr     r0, =0x1E8480       @; delay in microseconds (2s)
	bl	delay	
      	
	mov r4, #7		@; forth digit of student number
	keempat$:        
		@; enable led
        	mov     r0, #1              @; led state 1 = on
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function

        	@; disable led
        	mov     r0, #0              @; led state 0 = off
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function
		
		subs	r4, r4, #1 
		bne	keempat$		@; loop requirement

	ldr     r0, =0x1E8480       @; delay in microseconds (2s)
	bl	delay
  	
	mov r4, #2		@; fifth digit of student number
	kelima$:        
		@; enable led
        	mov     r0, #1              @; led state 1 = on
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function

        	@; disable led
        	mov     r0, #0              @; led state 0 = off
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function
		
		subs	r4, r4, #1 
		bne	kelima$		@; loop requirement

	ldr     r0, =0x1E8480       @; delay in microseconds (2s)
	bl	delay

        b       loop$               @; branch to main loop$
