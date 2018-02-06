k_image = open("코알라.jpg", "rb")
k_image_2 = open("코알라2.jpg", "wb")
k_image_2.write(k_image.read())

k_image.close()
k_image_2.close()
