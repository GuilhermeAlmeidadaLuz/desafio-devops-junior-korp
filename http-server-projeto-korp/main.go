package main

import (
	"github.com/gin-gonic/gin"
	"time"
)

func main() {
	router := gin.Default()

	router.GET("/projeto-korp", func (context *gin.Context) {
		context.JSON(200, gin.H{
			"nome": "Projeto Korp",
			"horario": time.Now().UTC(),
		})
	})

	router.Run(":8080")
}