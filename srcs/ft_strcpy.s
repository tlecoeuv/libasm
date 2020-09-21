; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tlecoeuv <tlecoeuv@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2020/02/06 20:29:19 by tlecoeuv          #+#    #+#              ;
;    Updated: 2020/09/17 15:35:00 by user42           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

			global		ft_strcpy
			section		.text

ft_strcpy:
				xor		rcx, rcx		;compteur a 0
				xor		dl, dl			;stock du caractere a 0
				cmp		rsi, 0			; check src null
				jz		done
				jmp		copy

increment:
				inc		rcx				;compteur++

copy:
				mov		dl, byte[rsi + rcx]
				mov		byte[rdi + rcx], dl
				cmp		dl, 0
				jnz		increment

done:
				mov		rax, rdi		;return dest
				ret
