import sys
import liquidcrystal_i2c
import time

cols = 20
rows = 4

lcd = liquidcrystal_i2c.LiquidCrystal_I2C(0x27, 1, numlines=rows)

lcd.clear()
lcd.printline(0, sys.argv[1])
lcd.printline(1, sys.argv[2])
lcd.printline(2, sys.argv[3])
lcd.printline(3, sys.argv[4])
lcd.backlight()
time.sleep(10)
lcd.noBacklight()

