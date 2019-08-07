library(ggplot2)

estatistica <- function() {
    # Circulo ----------------------------------------
    raio <- 1
    theta <- seq(0, 2 * pi, length = 200)

    y <- raio * sin(theta)
    y <- rep(y, 5)

    x <- raio * cos(theta)
    x <- rep(x, 5)

    # random
    r <- rnorm(length(y), sd = 0.05)
    x <- x + r

    circulo <- data.frame(x = x, y = y)

    ggplot(circulo, aes(x = x, y = y)) +
        geom_point() +
        xlim(-1.1, 1.1) +
        ylim(-1.1, 1.1)


    # Somatorio --------------------------------------
    x <- seq(-0.5, 0.5, length.out = 250)
    y <- 0.5 + rnorm(length(x), sd = 0.03)
    somatorio1 <- data.frame(x = x, y = y)

    x <- seq(-0.5, 0, length.out = 250)
    y <- -0.9 * x + rnorm(length(x), sd = 0.05)
    somatorio2 <- data.frame(x = x, y = y)

    x <- seq(-0.5, 0, length.out = 250)
    y <- 0.9 * x + rnorm(length(x), sd = 0.05)
    somatorio3 <- data.frame(x = x, y = y)

    x <- seq(-0.5, 0.5, length.out = 250)
    y <- -0.5 + rnorm(length(x), sd = 0.03)
    somatorio4 <- data.frame(x = x, y = y)

    somatorio <- dplyr::bind_rows(somatorio1, somatorio2, somatorio3, somatorio4)

    ggplot(somatorio, aes(x = x, y = y)) +
        geom_point() +
        xlim(-1, 1) +
        ylim(-1, 1)


    # Integral ---------------------------------------
    raio <- 0.25
    theta <- seq(0.5, pi, length = 200)
    y <- 0.5 + raio * sin(theta)
    x <- 0.35 + raio * cos(theta)
    r <- rnorm(length(y), sd = 0.05)
    x <- x + r

    integral1 <- data.frame(x = x, y = y)


    y <- seq(-0.6, 0.6, length.out = 250)
    x <- seq(-0.1, 0.1, length.out = length(y)) + rnorm(length(y), sd = 0.03)
    integral2 <- data.frame(x = x, y = y)

    raio <- 0.25
    theta <- seq(-0.75, -pi, length = 200)
    y <- -0.5 + raio * sin(theta)
    x <- -0.35 - raio * cos(theta)
    r <- rnorm(length(y), sd = 0.05)
    x <- x + r

    integral3 <- data.frame(x = x, y = y)

    integral <- dplyr::bind_rows(integral1, integral2, integral3)

    ggplot(integral, aes(x = x, y = y)) +
        geom_point() +
        xlim(-1.1, 1.1) +
        ylim(-1.1, 1.1)


    # Simbolo final ----------------------------------

    df <- dplyr::bind_rows(circulo, somatorio, integral)

    df$color <- df$x * df$y
    return(df)
}


df <- estatistica()

ggplot(df, aes(x = x, y = y, color = color)) +
    geom_point() +
    xlim(-1.1, 1.1) +
    ylim(-1.1, 1.1) +
    theme_minimal() +
    labs(x = "", y = "") +
    theme(legend.position = "none", 
          panel.background = element_rect(fill = "transparent"), # bg of the panel
          plot.background = element_rect(fill = "transparent", color = NA), # bg of the plot
          panel.grid.major = element_blank(), # get rid of major grid
          panel.grid.minor = element_blank(), # get rid of minor grid
          legend.background = element_rect(fill = "transparent"), # get rid of legend bgm
          legend.box.background = element_rect(fill = "transparent"), # get rid of legend panel bg
          axis.title.x=element_blank(),
          axis.text.x=element_blank(),
          axis.ticks.x=element_blank(),
          axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank(),
          axis.line = element_blank(),
          ) +
    # So trocar as cores aqui
    # use ou o scale_color_gradient2 ou o scale_color_gradient
    # A diferença entre eles é que o 2 tem a cor do meio (mid).
    # Site bom pra pegar cor https://www.w3schools.com/colors/colors_gradient.asp
    # scale_color_gradient2(low = "#ffcc99", mid = "red", high = "#ff9933")
    scale_color_gradient(low = "#ffcc99", high = "#ff9933")


## Salva com fundo transparente
## scale controla o tamanho da foto,.. se quiser maior so aumentar
## dpi é a qualidade.. quanto maior mais pesada a imagem e demora 
ggsave(filename = "logo.png",  bg = "transparent", scale = 1, dpi = 500)
