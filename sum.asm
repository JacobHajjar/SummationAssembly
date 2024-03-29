;Author information
;  Author name: Jacob Hajjar
;  CPSC240-1
;  Author email: hajjarj@csu.fullerton.edu
;  Program name: Summation

extern scanf

extern printf

extern gettime

extern clock_speed

extern atof

global clock

segment .data

clock_speed_message db "This machine is running at a cpu rated %.2f GHz.", 10, 0
precision_prompt db "Please enter the precision number and press enter: ", 0
invalid_message db "Invalid input detected. Please try again", 10, 0
clock_time_message db "The current clock time is %li tics.", 10, 0
execution_time_message db "The execution time was %li tics which equals %.2f ns", 10, 0
computed_message db "The sum has been computed", 10, 0
sum_message db "The sum is %.6f", 10, 0

segment .bss

precision_num resq 8

segment .text

clock: 

;register backup
mov qword rax, 0

push rbp
mov rbp, rsp
push rbx
push rcx
push rdx
push rdi
push rsi
push r8
push r9
push r10
push r11
push r12
push r13
push r14
push r15
pushf 


;get cpu clock speed
mov rax, 1
call clock_speed   
movsd xmm5, xmm0  

;print cpu speed
mov rax, 1
mov rdi, clock_speed_message
call printf


popf
pop r15
pop r14
pop r13
pop r12
pop r11
pop r10
pop r9
pop r8
pop rsi
pop rdi
pop rdx
pop rcx
pop rbx
pop rbp     

ret

