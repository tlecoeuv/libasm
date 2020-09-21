; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tlecoeuv <tlecoeuv@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2020/02/06 23:37:57 by tlecoeuv          #+#    #+#              ;
;    Updated: 2020/09/17 15:35:09 by user42           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

			global		ft_strcmp
			section		.text

ft_strcmp:
				xor		rcx, rcx

comp_loop:
				mov		al, byte[rdi + rcx]
				cmp		al, byte[rsi + rcx]
				jne		do_diff
				cmp		byte[rdi + rcx], 0
				je		no_diff
				inc		rdi
				inc		rsi
				jmp		comp_loop

no_diff:
				mov		rax, 0
				jmp		done

do_diff:
				movzx	rax, byte[rdi + rcx]
				movzx	rbx, byte[rsi + rcx]
				sub		rax, rbx
				jmp		done

done:
				ret
