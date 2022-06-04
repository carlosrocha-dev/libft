/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_bzero.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: caalbert <caalbert@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/03 18:47:38 by caalbert          #+#    #+#             */
/*   Updated: 2022/06/03 20:15:49 by caalbert         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void ft_bzero(void *void_data, size_t length)
{
    char *fill;            

    fill = void_data;
    while (length != 0)
    {
        *fill++ = 0;
        length--;
    }
}