extends Node


var hair_collection = {
    "01" : preload("res://assets/clothing/hair/chloe_blueHair.png.png"),
	"02" : preload("res://assets/clothing/hair/chloe_greyHair.png.png"),
}

var shirt_collection = {
    "01" : preload("res://assets/clothing/shirt/chloe_greenShirt.png"),
	"02" : preload("res://assets/clothing/shirt/chloe_pinkShirt.png"),
	"03" : preload("res://assets/clothing/shirt/chloe_purpleShirt.png"),
}

var pants_collection = {
	"01" : preload("res://assets/clothing/pants/chloe_blackSkirt.png"),
	"02" : preload("res://assets/clothing/pants/chloe_bluePants.png"),
	"03" : preload("res://assets/clothing/pants/chloe_blueSkirt.png"),
	"04" : preload("res://assets/clothing/pants/chloe_pinkSkirt.png"),
	"05" : preload("res://assets/clothing/pants/chloe_redSkirt.png"),
}

var shoes_collection = {
	"01" : preload("res://assets/clothing/shoes/chloe_blackShoes.png"),
	"02" : preload("res://assets/clothing/shoes/chloe_brownShoes.png"),
	"03" : preload("res://assets/clothing/shoes/chloe_whiteShoes.png"),
}

var selected_hair = ""
var selected_shirt = ""
var selected_pants = ""
var selected_shoes = ""



var current_hair_index = 0
var current_shirt_index = 0
var current_pants_index = 0
var current_shoes_index = 0
