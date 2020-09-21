; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: user42 <user42@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2020/09/17 13:42:48 by user42            #+#    #+#              ;
;    Updated: 2020/09/17 15:24:50 by user42           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

            global      ft_strlen
			      section     .text
ft_strlen:
			      xor			    rax, rax
			      cmp			    rdi, 0
			      jz			    done
			      jmp			    check

increm:
			      inc			    rax

check:
			      cmp			    byte[rdi + rax], 0
			      jne			    increm

done:
			      ret
