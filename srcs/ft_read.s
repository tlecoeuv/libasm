; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_read.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tlecoeuv <tlecoeuv@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2020/02/11 20:47:33 by tlecoeuv          #+#    #+#              ;
;    Updated: 2020/09/21 16:39:38 by user42           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

			global		ft_read
			extern 		__errno_location
			section		.text

ft_read:
			mov			rax, 0
			syscall
			cmp			rax, 0
			jl			error
			ret

error:
			neg			rax
			mov			rdx, rax
			call		__errno_location
			mov     [rax], rdx
			mov			rax, -1
			ret
