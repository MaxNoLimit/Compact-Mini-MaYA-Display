#include "check_display_input.h"
#include "ili9341_stm32_driver.h"
#include "ili9341_touch.h"
#include "simpleDisplay.h"
#include <stdint.h>
#include <stdlib.h>
#include "uart_message.h"
#include "simpleDisplay.h"

uint16_t x, y;
int pageRoute = 0;
bool showState = false;


void calibrateDisplay(){
	int npoints = 0;
	while(npoints < 10000) {
		uint16_t x, y;
		if(ILI9341_TouchGetCoordinates(&x, &y)) {
			message("Pressed!");
			x = 240-x;
//			ILI9341_DrawPixel(x, 320-y, WHITE);
			sendDebugMessage("x: %d, y: %d\r\n", x, y);
			npoints++;
			HAL_Delay(500);
	        }
		clearMessage();
		}
}

void displayInputCheck(){
	if(ILI9341_TouchGetCoordinates(&x, &y)){
		x = 240 - x; // optional honestly, just to swap the pixel position
//		debug function
//		sendDebugMessage("x: %d, y: %d\r\n", x, y);
		switch (pageRoute) {
			case MENU_PAGE:
				if (x > 10 && x < 230 && y > 80 - 1 && y < 120 + 1){
					pageRoute = PLAYING_PAGE;
					playingPage();
					sendDebugMessage("PlayTheShow\n");
				}
				else if (x > 10 && x < 230 && y > 150 - 1 && y < 170 + 1){
					pageRoute = CALIBRATE_PAGE;
					calibratePage();
				}
				else if (x > 10 && x < 230 && y > 180 - 1 && y < 220 + 1){
					pageRoute = SETTINGS_PAGE;
					settingsPage();
				}
				break;
			case PLAYING_PAGE:
				if (x > 0 && x < 46 && y > 0 && y < 36){
					// Go back widget, will pause the show
					pageRoute = MENU_PAGE;
					menuPage();
					sendDebugMessage("PauseTheShow\n");
				} else if (x > 10 && x < 230 && y > 80 - 1 && y < 120 + 1) {
					clearMessage();
					message("Aborting...");
					sendDebugMessage("AbortTheShow\n");
					HAL_Delay(2000);
					clearMessage();
					message("Aborted!");
					HAL_Delay(500);
					clearMessage();
					pageRoute = MENU_PAGE;
					menuPage();
				}
				break;
			case CALIBRATE_PAGE:
				if (x > 0 && x < 46 && y > 0 && y < 36){
					pageRoute = MENU_PAGE;
					menuPage();
				} else if (x > 10 && x < 230 && y > 80 - 1 && y < 120 + 1){
					message("Please wait");
					messageDetail("V-Slot Linear");
					sendDebugMessage("VSlotCalibrate\n");
					HAL_Delay(2000);
					clearMessage();
					message("Done!");
					HAL_Delay(500);
					clearMessage();

				} else if (x > 10 && x < 230 && y > 130 - 1 && y < 170 + 1){
					message("Please wait");
					messageDetail("Wayang's Hand");
					sendDebugMessage("WayangsHandCalibrate\n");
					HAL_Delay(2000);
					clearMessage();
					message("Done!");
					HAL_Delay(500);
					clearMessage();
				}
				break;
			case SETTINGS_PAGE:
				if (x > 0 && x < 46 && y > 0 && y < 36){
					pageRoute = MENU_PAGE;
					menuPage();

				}
				break;
			default:
				break;
		}

	}
}

void waitUntilTapAnywhere(){
	while(!ILI9341_TouchGetCoordinates(&x, &y)) {
		// do nothing, press the screen to break the while loop
	}
}

bool isPlaying(){
	if (!showState) return true;
	if (showState) return false;
}

void setPlayingStatus(){
	showState = !showState;
	HAL_Delay(1);
}
