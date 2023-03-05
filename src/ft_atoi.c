/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: caalbert <caalbert@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/20 22:23:19 by caalbert          #+#    #+#             */
/*   Updated: 2023/02/02 10:12:54 by caalbert         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

int ft_atoi(const char* nptr) {
    if (nptr == NULL) {
        // Tratar o caso de ponteiro nulo
        return 0;
    }
    while (isspace(*nptr)) {
        nptr++; // Ignorar espaços em branco no início da string
    }
    int sign = 1;
    if (*nptr == '-') {
        sign = -1; // Definir sinal negativo se houver um sinal de menos
        nptr++;
    } else if (*nptr == '+') {
        nptr++; // Ignorar sinal de positivo, se houver
    }
    int result = 0;
    while (*nptr != '\0') {
        if (*nptr < '0' || *nptr > '9') {
            // Tratar o caso de caracteres não numéricos
            return 0;
        }
        int digit = *nptr - '0';
        if (result > INT_MAX / 10 || (result == INT_MAX / 10 && digit > INT_MAX % 10)) {
            // Tratar o caso de estouro de inteiro
            return (sign == -1 ? INT_MIN : INT_MAX);
        }
        result = result * 10 + digit;
        nptr++;
    }
    return result * sign;
}
