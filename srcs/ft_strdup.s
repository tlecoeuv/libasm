; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: user42 <user42@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2020/09/21 11:50:54 by user42            #+#    #+#              ;
;    Updated: 2020/09/21 15:27:06 by user42           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

    global    ft_strdup
    extern    ft_strlen
    extern    ft_strcpy
    extern    malloc
    section   .text

ft_strdup:
    push      rdi
    call      ft_strlen
    inc       rax
    mov       rdi, rax
    
    call      malloc
    test      rax, rax
    pop       rsi
    jz        .end

    mov       rdi, rax
    call      ft_strcpy

.end:
    ret
